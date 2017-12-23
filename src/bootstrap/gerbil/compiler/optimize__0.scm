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
     ':init!))
  (define gxc#optimizer-info? (make-struct-predicate gxc#optimizer-info::t))
  (define gxc#make-optimizer-info
    (lambda _$args20818_
      (apply make-struct-instance gxc#optimizer-info::t _$args20818_)))
  (define gxc#optimizer-info-type
    (make-struct-field-accessor gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi
    (make-struct-field-accessor gxc#optimizer-info::t '1))
  (define gxc#optimizer-info-type-set!
    (make-struct-field-mutator gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi-set!
    (make-struct-field-mutator gxc#optimizer-info::t '1))
  (define gxc#optimizer-info:::init!
    (lambda (_self20816_)
      (struct-instance-init!
       _self20816_
       (make-hash-table-eq)
       (make-hash-table-eq))))
  (bind-method! gxc#optimizer-info::t ':init! gxc#optimizer-info:::init! '#f)
  (define gxc#optimizer-info-init!
    (lambda ()
      (if (gxc#current-compile-optimizer-info)
          '#!void
          (gxc#current-compile-optimizer-info
           (let ((__obj20830 (make-object gxc#optimizer-info::t '2)))
             (begin (gxc#optimizer-info:::init! __obj20830) __obj20830))))))
  (define gxc#optimize!
    (lambda (_ctx20810_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#optimizer-load-ssxi-deps _ctx20810_)
           (table-set!
            (##structure-ref
             (gxc#current-compile-optimizer-info)
             '2
             gxc#optimizer-info::t
             '#f)
            (##structure-ref _ctx20810_ '1 gx#expander-context::t '#f)
            '#t)
           (let ((_code20813_
                  (gxc#optimize-source
                   (##structure-ref _ctx20810_ '11 gx#module-context::t '#f))))
             (##structure-set!
              _ctx20810_
              _code20813_
              '11
              gx#module-context::t
              '#f))))
       gxc#current-compile-mutators
       (make-hash-table-eq)
       gxc#current-compile-local-type
       (make-hash-table-eq))))
  (define gxc#optimizer-load-ssxi-deps
    (lambda (_ctx20755_)
      (letrec* ((_deps20757_
                 (let* ((_imports20801_
                         (##structure-ref
                          _ctx20755_
                          '8
                          gx#module-context::t
                          '#f))
                        (_$e20803_
                         (gx#core-context-prelude__opt-lambda11555
                          _ctx20755_)))
                   (if _$e20803_
                       ((lambda (_g2080520807_)
                          (cons _g2080520807_ _imports20801_))
                        _$e20803_)
                       _imports20801_))))
        (let _lp20759_ ((_rest20761_ _deps20757_))
          (let* ((_rest2076220770_ _rest20761_)
                 (_E2076520774_
                  (lambda () (error '"No clause matching" _rest2076220770_)))
                 (_else2076420778_ (lambda () '#!void))
                 (_K2076620789_
                  (lambda (_rest20781_ _hd20782_)
                    (if (##structure-instance-of?
                         _hd20782_
                         'gx#module-context::t)
                        (begin
                          (if (table-ref
                               (##structure-ref
                                (gxc#current-compile-optimizer-info)
                                '2
                                gxc#optimizer-info::t
                                '#f)
                               (##structure-ref
                                _hd20782_
                                '1
                                gx#expander-context::t
                                '#f)
                               '#f)
                              '#!void
                              (begin
                                (let ((_$e20784_
                                       (gx#core-context-prelude__opt-lambda11555
                                        _hd20782_)))
                                  (if _$e20784_
                                      ((lambda (_pre20787_)
                                         (_lp20759_
                                          (cons _pre20787_
                                                (##structure-ref
                                                 _hd20782_
                                                 '8
                                                 gx#module-context::t
                                                 '#f))))
                                       _$e20784_)
                                      (_lp20759_
                                       (##structure-ref
                                        _hd20782_
                                        '8
                                        gx#module-context::t
                                        '#f))))
                                (gxc#optimizer-load-ssxi _hd20782_)))
                          (_lp20759_ _rest20781_))
                        (if (##structure-instance-of?
                             _hd20782_
                             'gx#prelude-context::t)
                            (begin
                              (if (table-ref
                                   (##structure-ref
                                    (gxc#current-compile-optimizer-info)
                                    '2
                                    gxc#optimizer-info::t
                                    '#f)
                                   (##structure-ref
                                    _hd20782_
                                    '1
                                    gx#expander-context::t
                                    '#f)
                                   '#f)
                                  '#!void
                                  (begin
                                    (_lp20759_
                                     (##structure-ref
                                      _hd20782_
                                      '7
                                      gx#prelude-context::t
                                      '#f))
                                    (gxc#optimizer-load-ssxi _hd20782_)))
                              (_lp20759_ _rest20781_))
                            (if (##structure-direct-instance-of?
                                 _hd20782_
                                 'gx#module-import::t)
                                (_lp20759_
                                 (cons (##direct-structure-ref
                                        _hd20782_
                                        '1
                                        gx#module-import::t
                                        '#f)
                                       _rest20781_))
                                (if (##structure-direct-instance-of?
                                     _hd20782_
                                     'gx#module-export::t)
                                    (_lp20759_
                                     (cons (##direct-structure-ref
                                            _hd20782_
                                            '1
                                            gx#module-export::t
                                            '#f)
                                           _rest20781_))
                                    (if (##structure-direct-instance-of?
                                         _hd20782_
                                         'gx#import-set::t)
                                        (_lp20759_
                                         (cons (##direct-structure-ref
                                                _hd20782_
                                                '1
                                                gx#import-set::t
                                                '#f)
                                               _rest20781_))
                                        (error '"Unexpected module import"
                                               _hd20782_)))))))))
            (if (##pair? _rest2076220770_)
                (let ((_hd2076720792_ (##car _rest2076220770_))
                      (_tl2076820794_ (##cdr _rest2076220770_)))
                  (let* ((_hd20797_ _hd2076720792_)
                         (_rest20799_ _tl2076820794_))
                    (_K2076620789_ _rest20799_ _hd20797_)))
                (_else2076420778_)))))))
  (define gxc#optimizer-load-ssxi
    (lambda (_ctx20735_)
      (if (if (##structure-instance-of? _ctx20735_ 'gx#module-context::t)
              (list? (##structure-ref _ctx20735_ '7 gx#module-context::t '#f))
              '#f)
          '#!void
          (let* ((_ht20737_
                  (##structure-ref
                   (gxc#current-compile-optimizer-info)
                   '2
                   gxc#optimizer-info::t
                   '#f))
                 (_id20739_
                  (##structure-ref _ctx20735_ '1 gx#expander-context::t '#f))
                 (_mod20741_ (table-ref _ht20737_ _id20739_ '#f)))
            (let ((_$e20744_ _mod20741_))
              (if _$e20744_
                  _$e20744_
                  (let* ((_mod20747_ (gxc#optimizer-import-ssxi _ctx20735_))
                         (_val20752_
                          (let ((_$e20749_ _mod20747_))
                            (if _$e20749_ _$e20749_ '#!void))))
                    (begin
                      (table-set! _ht20737_ _id20739_ _val20752_)
                      _val20752_))))))))
  (define gxc#optimizer-import-ssxi
    (lambda (_ctx20712_)
      (letrec ((_catch-e20714_
                (lambda (_exn20733_)
                  (begin
                    (if (gxc#current-compile-verbose)
                        (begin
                          (displayln
                           '"Failed to load ssxi module for "
                           (##structure-ref
                            _ctx20712_
                            '1
                            gx#expander-context::t
                            '#f))
                          (display-exception _exn20733_))
                        '#!void)
                    '#f)))
               (_import-e20715_
                (lambda ()
                  (let* ((_str-id20718_
                          (string-append
                           (symbol->string
                            (##structure-ref
                             _ctx20712_
                             '1
                             gx#expander-context::t
                             '#f))
                           '".ssxi"))
                         (_artefact-path20726_
                          (let ((_odir2071920721_
                                 (gxc#current-compile-output-dir)))
                            (if _odir2071920721_
                                (let ((_odir20724_ _odir2071920721_))
                                  (path-expand
                                   (string-append _str-id20718_ '".ss")
                                   _odir20724_))
                                '#f)))
                         (_library-path20728_
                          (string->symbol
                           (string-append '":" _str-id20718_ '".ss")))
                         (_ssxi-path20730_
                          (if (if _artefact-path20726_
                                  (file-exists? _artefact-path20726_)
                                  '#f)
                              _artefact-path20726_
                              _library-path20728_)))
                    (begin
                      (gxc#verbose '"Loading ssxi module " _ssxi-path20730_)
                      (gx#import-module__opt-lambda11590
                       _ssxi-path20730_
                       '#t
                       '#t))))))
        (if (##structure-ref _ctx20712_ '1 gx#expander-context::t '#f)
            (with-exception-catcher _catch-e20714_ _import-e20715_)
            '#f))))
  (define gxc#!type::t (make-struct-type 'gxc#!type::t '#f '1 '!type '() '#f))
  (define gxc#!type? (make-struct-predicate gxc#!type::t))
  (define gxc#make-!type
    (lambda _$args20709_
      (apply make-struct-instance gxc#!type::t _$args20709_)))
  (define gxc#!type-id (make-struct-field-accessor gxc#!type::t '0))
  (define gxc#!type-id-set! (make-struct-field-mutator gxc#!type::t '0))
  (define gxc#!alias::t
    (make-struct-type 'gxc#!alias::t gxc#!type::t '0 '!alias '() '#f))
  (define gxc#!alias? (make-struct-predicate gxc#!alias::t))
  (define gxc#make-!alias
    (lambda _$args20706_
      (apply make-struct-instance gxc#!alias::t _$args20706_)))
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
    (lambda _$args20703_
      (apply make-struct-instance gxc#!struct-type::t _$args20703_)))
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
    (lambda _$args20700_
      (apply make-struct-instance gxc#!procedure::t _$args20700_)))
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
    (lambda _$args20697_
      (apply make-struct-instance gxc#!struct-pred::t _$args20697_)))
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
    (lambda _$args20694_
      (apply make-struct-instance gxc#!struct-cons::t _$args20694_)))
  (define gxc#!struct-getf::t
    (make-struct-type
     'gxc#!struct-getf::t
     gxc#!procedure::t
     '2
     '!struct-getf
     '()
     '#f))
  (define gxc#!struct-getf? (make-struct-predicate gxc#!struct-getf::t))
  (define gxc#make-!struct-getf
    (lambda _$args20691_
      (apply make-struct-instance gxc#!struct-getf::t _$args20691_)))
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
     '#f))
  (define gxc#!struct-setf? (make-struct-predicate gxc#!struct-setf::t))
  (define gxc#make-!struct-setf
    (lambda _$args20688_
      (apply make-struct-instance gxc#!struct-setf::t _$args20688_)))
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
     ':init!))
  (define gxc#!lambda? (make-struct-predicate gxc#!lambda::t))
  (define gxc#make-!lambda
    (lambda _$args20685_
      (apply make-struct-instance gxc#!lambda::t _$args20685_)))
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
    (lambda _$args20682_
      (apply make-struct-instance gxc#!case-lambda::t _$args20682_)))
  (define gxc#!case-lambda-clauses
    (make-struct-field-accessor gxc#!case-lambda::t '0))
  (define gxc#!case-lambda-clauses-set!
    (make-struct-field-mutator gxc#!case-lambda::t '0))
  (define gxc#!struct-type:::init!
    (lambda (_self20674_
             _id20675_
             _super20676_
             _fields20677_
             _xfields20678_
             _ctor20679_
             _plist20680_)
      (struct-instance-init!
       _self20674_
       _id20675_
       _super20676_
       _fields20677_
       _xfields20678_
       _ctor20679_
       _plist20680_
       '#f)))
  (bind-method! gxc#!struct-type::t ':init! gxc#!struct-type:::init! '#f)
  (begin
    (define gxc#!lambda:::init!__opt-lambda20638
      (lambda (_self20640_
               _id20641_
               _arity20642_
               _dispatch20643_
               _inline20644_
               _typedecl20645_)
        (struct-instance-init!
         _self20640_
         _id20641_
         _arity20642_
         _dispatch20643_
         _inline20644_
         _typedecl20645_)))
    (begin
      (define gxc#!lambda:::init!__0
        (lambda (_self20650_ _id20651_ _arity20652_ _dispatch20653_)
          (let* ((_inline20655_ '#f) (_typedecl20657_ '#f))
            (struct-instance-init!
             _self20650_
             _id20651_
             _arity20652_
             _dispatch20653_
             _inline20655_
             _typedecl20657_))))
      (define gxc#!lambda:::init!__1
        (lambda (_self20659_
                 _id20660_
                 _arity20661_
                 _dispatch20662_
                 _inline20663_)
          (let ((_typedecl20665_ '#f))
            (struct-instance-init!
             _self20659_
             _id20660_
             _arity20661_
             _dispatch20662_
             _inline20663_
             _typedecl20665_))))
      (define gxc#!lambda:::init!
        (lambda _g20838_
          (let ((_g20837_ (length _g20838_)))
            (cond ((fx= _g20837_ 4) (apply gxc#!lambda:::init!__0 _g20838_))
                  ((fx= _g20837_ 5) (apply gxc#!lambda:::init!__1 _g20838_))
                  ((fx= _g20837_ 6) (apply struct-instance-init! _g20838_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#!lambda:::init!
                    _g20838_))))))))
  (bind-method! gxc#!lambda::t ':init! gxc#!lambda:::init! '#f)
  (define gxc#!struct-type-vtab
    (lambda (_type20632_)
      (let ((_$e20634_
             (##structure-ref _type20632_ '7 gxc#!struct-type::t '#f)))
        (if _$e20634_
            (values _$e20634_)
            (let ((_vtab20637_ (make-hash-table-eq)))
              (begin
                (##structure-set!
                 _type20632_
                 _vtab20637_
                 '7
                 gxc#!struct-type::t
                 '#f)
                _vtab20637_))))))
  (define gxc#!struct-type-lookup-method
    (lambda (_type20623_ _method20624_)
      (let ((_vtab2062520627_
             (##structure-ref _type20623_ '7 gxc#!struct-type::t '#f)))
        (if _vtab2062520627_
            (let ((_vtab20630_ _vtab2062520627_))
              (table-ref _vtab20630_ _method20624_ '#f))
            '#f))))
  (begin
    (define gxc#optimizer-declare-type!__opt-lambda20605
      (lambda (_sym20607_ _type20608_ _local?20609_)
        (begin
          (if (##structure-instance-of? _type20608_ 'gxc#!type::t)
              '#!void
              (error '"bad declaration: expected !type"
                     _sym20607_
                     _type20608_))
          (gxc#verbose
           '"declare-type "
           _sym20607_
           '" "
           (struct->list _type20608_))
          (table-set!
           (if _local?20609_
               (gxc#current-compile-local-type)
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '1
                gxc#optimizer-info::t
                '#f))
           _sym20607_
           _type20608_))))
    (begin
      (define gxc#optimizer-declare-type!__0
        (lambda (_sym20614_ _type20615_)
          (let ((_local?20617_ '#f))
            (gxc#optimizer-declare-type!__opt-lambda20605
             _sym20614_
             _type20615_
             _local?20617_))))
      (define gxc#optimizer-declare-type!
        (lambda _g20840_
          (let ((_g20839_ (length _g20840_)))
            (cond ((fx= _g20839_ 2)
                   (apply gxc#optimizer-declare-type!__0 _g20840_))
                  ((fx= _g20839_ 3)
                   (apply gxc#optimizer-declare-type!__opt-lambda20605
                          _g20840_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#optimizer-declare-type!
                    _g20840_))))))))
  (begin
    (define gxc#optimizer-declare-method!__opt-lambda20581
      (lambda (_type-t20583_ _method20584_ _sym20585_ _rebind?20586_)
        (let ((_type20588_ (gxc#optimizer-resolve-type _type-t20583_)))
          (if (##structure-instance-of? _type20588_ 'gxc#!struct-type::t)
              (let ((_vtab20590_ (gxc#!struct-type-vtab _type20588_)))
                (if _rebind?20586_
                    (if (hash-key? _vtab20590_ _method20584_)
                        (gxc#verbose
                         '"declare-method: [warning] skip rebind on existing method"
                         _type-t20583_
                         '" "
                         _method20584_)
                        (gxc#verbose
                         '"declare-method: skip rebind method "
                         _type-t20583_
                         '" "
                         _method20584_))
                    (if (hash-key? _vtab20590_ _method20584_)
                        (error '"declare-method: duplicate method declaration")
                        (begin
                          (gxc#verbose
                           '"declare-method "
                           _type-t20583_
                           '" "
                           _method20584_
                           '" => "
                           _sym20585_)
                          (table-set! _vtab20590_ _method20584_ _sym20585_)))))
              (if (not _type20588_)
                  (gxc#verbose '"declare-method: unknown type " _type-t20583_)
                  (error '"declare-method: bad method declaration; no method table"
                         _type-t20583_
                         _type20588_))))))
    (begin
      (define gxc#optimizer-declare-method!__0
        (lambda (_type-t20595_ _method20596_ _sym20597_)
          (let ((_rebind?20599_ '#f))
            (gxc#optimizer-declare-method!__opt-lambda20581
             _type-t20595_
             _method20596_
             _sym20597_
             _rebind?20599_))))
      (define gxc#optimizer-declare-method!
        (lambda _g20842_
          (let ((_g20841_ (length _g20842_)))
            (cond ((fx= _g20841_ 3)
                   (apply gxc#optimizer-declare-method!__0 _g20842_))
                  ((fx= _g20841_ 4)
                   (apply gxc#optimizer-declare-method!__opt-lambda20581
                          _g20842_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#optimizer-declare-method!
                    _g20842_))))))))
  (define gxc#optimizer-lookup-type
    (lambda (_sym20571_)
      (let ((_$e20579_
             (let ((_ht2057220574_ (gxc#current-compile-local-type)))
               (if _ht2057220574_
                   (let ((_ht20577_ _ht2057220574_))
                     (table-ref _ht20577_ _sym20571_ '#f))
                   '#f))))
        (if _$e20579_
            _$e20579_
            (table-ref
             (##structure-ref
              (gxc#current-compile-optimizer-info)
              '1
              gxc#optimizer-info::t
              '#f)
             _sym20571_
             '#f)))))
  (define gxc#optimizer-resolve-type
    (lambda (_sym20563_)
      (let ((_type2056420566_ (gxc#optimizer-lookup-type _sym20563_)))
        (if _type2056420566_
            (let ((_type20569_ _type2056420566_))
              (if (##structure-instance-of? _type20569_ 'gxc#!alias::t)
                  (gxc#optimizer-resolve-type
                   (##structure-ref _type20569_ '1 gxc#!type::t '#f))
                  _type20569_))
            '#f))))
  (define gxc#optimizer-lookup-method
    (lambda (_type-t20558_ _method20559_)
      (let ((_type20561_ (gxc#optimizer-resolve-type _type-t20558_)))
        (if (##structure-instance-of? _type20561_ 'gxc#!struct-type::t)
            (gxc#!struct-type-lookup-method _type20561_ _method20559_)
            '#f))))
  (define gxc#optimize-source
    (lambda (_stx20554_)
      (begin
        (gxc#apply-collect-mutators _stx20554_)
        (let ((_stx20556_ (gxc#apply-lift-top-lambdas _stx20554_)))
          (begin
            (gxc#apply-collect-type-info _stx20556_)
            (gxc#apply-optimize-call _stx20556_))))))
  (define gxc#&identity-expression
    (make-promise
     (lambda ()
       (let ((_tbl20551_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl20551_ '%#begin-annotation gxc#xform-identity)
           (table-set! _tbl20551_ '%#lambda gxc#xform-identity)
           (table-set! _tbl20551_ '%#case-lambda gxc#xform-identity)
           (table-set! _tbl20551_ '%#let-values gxc#xform-identity)
           (table-set! _tbl20551_ '%#letrec-values gxc#xform-identity)
           (table-set! _tbl20551_ '%#letrec*-values gxc#xform-identity)
           (table-set! _tbl20551_ '%#quote gxc#xform-identity)
           (table-set! _tbl20551_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl20551_ '%#call gxc#xform-identity)
           (table-set! _tbl20551_ '%#if gxc#xform-identity)
           (table-set! _tbl20551_ '%#ref gxc#xform-identity)
           (table-set! _tbl20551_ '%#set! gxc#xform-identity)
           (table-set! _tbl20551_ '%#struct-instance? gxc#xform-identity)
           (table-set!
            _tbl20551_
            '%#struct-direct-instance?
            gxc#xform-identity)
           (table-set! _tbl20551_ '%#struct-ref gxc#xform-identity)
           (table-set! _tbl20551_ '%#struct-set! gxc#xform-identity)
           (table-set! _tbl20551_ '%#struct-direct-ref gxc#xform-identity)
           (table-set! _tbl20551_ '%#struct-direct-set! gxc#xform-identity)
           (table-set! _tbl20551_ '%#struct-unchecked-ref gxc#xform-identity)
           (table-set! _tbl20551_ '%#struct-unchecked-set! gxc#xform-identity)
           _tbl20551_)))))
  (define gxc#&identity-special-form
    (make-promise
     (lambda ()
       (let ((_tbl20547_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl20547_ '%#begin gxc#xform-identity)
           (table-set! _tbl20547_ '%#begin-syntax gxc#xform-identity)
           (table-set! _tbl20547_ '%#begin-foreign gxc#xform-identity)
           (table-set! _tbl20547_ '%#module gxc#xform-identity)
           (table-set! _tbl20547_ '%#import gxc#xform-identity)
           (table-set! _tbl20547_ '%#export gxc#xform-identity)
           (table-set! _tbl20547_ '%#provide gxc#xform-identity)
           (table-set! _tbl20547_ '%#extern gxc#xform-identity)
           (table-set! _tbl20547_ '%#define-values gxc#xform-identity)
           (table-set! _tbl20547_ '%#define-syntax gxc#xform-identity)
           (table-set! _tbl20547_ '%#define-alias gxc#xform-identity)
           (table-set! _tbl20547_ '%#declare gxc#xform-identity)
           _tbl20547_)))))
  (define gxc#&identity
    (make-promise
     (lambda ()
       (let ((_tbl20543_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl20543_ (force gxc#&identity-special-form))
           (hash-copy! _tbl20543_ (force gxc#&identity-expression))
           _tbl20543_)))))
  (define gxc#&basic-xform-expression
    (make-promise
     (lambda ()
       (let ((_tbl20539_ (make-hash-table-eq)))
         (begin
           (table-set!
            _tbl20539_
            '%#begin-annotation
            gxc#xform-begin-annotation%)
           (table-set! _tbl20539_ '%#lambda gxc#xform-lambda%)
           (table-set! _tbl20539_ '%#case-lambda gxc#xform-case-lambda%)
           (table-set! _tbl20539_ '%#let-values gxc#xform-let-values%)
           (table-set! _tbl20539_ '%#letrec-values gxc#xform-let-values%)
           (table-set! _tbl20539_ '%#letrec*-values gxc#xform-let-values%)
           (table-set! _tbl20539_ '%#quote gxc#xform-identity)
           (table-set! _tbl20539_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl20539_ '%#call gxc#xform-operands)
           (table-set! _tbl20539_ '%#if gxc#xform-operands)
           (table-set! _tbl20539_ '%#ref gxc#xform-identity)
           (table-set! _tbl20539_ '%#set! gxc#xform-setq%)
           (table-set! _tbl20539_ '%#struct-instance? gxc#xform-operands)
           (table-set!
            _tbl20539_
            '%#struct-direct-instance?
            gxc#xform-operands)
           (table-set! _tbl20539_ '%#struct-ref gxc#xform-operands)
           (table-set! _tbl20539_ '%#struct-set! gxc#xform-operands)
           (table-set! _tbl20539_ '%#struct-direct-ref gxc#xform-operands)
           (table-set! _tbl20539_ '%#struct-direct-set! gxc#xform-operands)
           (table-set! _tbl20539_ '%#struct-unchecked-ref gxc#xform-operands)
           (table-set! _tbl20539_ '%#struct-unchecked-set! gxc#xform-operands)
           _tbl20539_)))))
  (define gxc#&basic-xform
    (make-promise
     (lambda ()
       (let ((_tbl20535_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl20535_ (force gxc#&basic-xform-expression))
           (hash-copy! _tbl20535_ (force gxc#&identity))
           (table-set! _tbl20535_ '%#begin gxc#xform-begin%)
           (table-set! _tbl20535_ '%#module gxc#xform-module%)
           (table-set! _tbl20535_ '%#define-values gxc#xform-define-values%)
           _tbl20535_)))))
  (define gxc#&collect-mutators
    (make-promise
     (lambda ()
       (let ((_tbl20531_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl20531_ (force gxc#&void))
           (table-set! _tbl20531_ '%#begin gxc#collect-begin%)
           (table-set! _tbl20531_ '%#module gxc#collect-module%)
           (table-set!
            _tbl20531_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl20531_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl20531_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl20531_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl20531_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl20531_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl20531_ '%#call gxc#collect-operands)
           (table-set! _tbl20531_ '%#if gxc#collect-operands)
           (table-set! _tbl20531_ '%#set! gxc#collect-mutators-setq%)
           (table-set! _tbl20531_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl20531_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl20531_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl20531_ '%#struct-set! gxc#collect-operands)
           (table-set! _tbl20531_ '%#struct-direct-ref gxc#collect-operands)
           (table-set! _tbl20531_ '%#struct-direct-set! gxc#collect-operands)
           (table-set! _tbl20531_ '%#struct-unchecked-ref gxc#collect-operands)
           (table-set!
            _tbl20531_
            '%#struct-unchecked-set!
            gxc#collect-operands)
           _tbl20531_)))))
  (define gxc#apply-collect-mutators
    (lambda (_stx20524_ . _args20526_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx20524_ _args20526_))
       gxc#current-compile-methods
       (force gxc#&collect-mutators))))
  (define gxc#&lift-top-lambdas
    (make-promise
     (lambda ()
       (let ((_tbl20521_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl20521_ (force gxc#&basic-xform))
           (table-set!
            _tbl20521_
            '%#define-values
            gxc#lift-top-lambda-define-values%)
           (table-set!
            _tbl20521_
            '%#let-values
            gxc#lift-top-lambda-let-values%)
           (table-set!
            _tbl20521_
            '%#letrec-values
            gxc#lift-top-lambda-letrec-values%)
           (table-set!
            _tbl20521_
            '%#letrec*-values
            gxc#lift-top-lambda-letrec-values%)
           _tbl20521_)))))
  (define gxc#apply-lift-top-lambdas
    (lambda (_stx20514_ . _args20516_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx20514_ _args20516_))
       gxc#current-compile-methods
       (force gxc#&lift-top-lambdas))))
  (define gxc#&expression-subst
    (make-promise
     (lambda ()
       (let ((_tbl20511_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl20511_ (force gxc#&basic-xform-expression))
           (table-set! _tbl20511_ '%#begin gxc#xform-begin%)
           (table-set! _tbl20511_ '%#ref gxc#expression-subst-ref%)
           _tbl20511_)))))
  (define gxc#apply-expression-subst
    (lambda (_stx20504_ . _args20506_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx20504_ _args20506_))
       gxc#current-compile-methods
       (force gxc#&expression-subst))))
  (define gxc#&collect-type-info
    (make-promise
     (lambda ()
       (let ((_tbl20501_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl20501_ (force gxc#&void))
           (table-set! _tbl20501_ '%#begin gxc#collect-begin%)
           (table-set! _tbl20501_ '%#module gxc#collect-module%)
           (table-set!
            _tbl20501_
            '%#define-values
            gxc#collect-type-define-values%)
           (table-set!
            _tbl20501_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl20501_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl20501_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl20501_ '%#let-values gxc#collect-type-let-values%)
           (table-set!
            _tbl20501_
            '%#letrec-values
            gxc#collect-type-let-values%)
           (table-set!
            _tbl20501_
            '%#letrec*-values
            gxc#collect-type-let-values%)
           (table-set! _tbl20501_ '%#call gxc#collect-type-call%)
           (table-set! _tbl20501_ '%#if gxc#collect-operands)
           (table-set! _tbl20501_ '%#set! gxc#collect-body-setq%)
           _tbl20501_)))))
  (define gxc#apply-collect-type-info
    (lambda (_stx20494_ . _args20496_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx20494_ _args20496_))
       gxc#current-compile-methods
       (force gxc#&collect-type-info))))
  (define gxc#&basic-expression-type
    (make-promise
     (lambda ()
       (let ((_tbl20491_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl20491_ (force gxc#&false))
           (table-set! _tbl20491_ '%#begin gxc#basic-expression-type-begin%)
           (table-set!
            _tbl20491_
            '%#begin-annotation
            gxc#basic-expression-type-begin-annotation%)
           (table-set! _tbl20491_ '%#lambda gxc#basic-expression-type-lambda%)
           (table-set!
            _tbl20491_
            '%#case-lambda
            gxc#basic-expression-type-case-lambda%)
           (table-set! _tbl20491_ '%#call gxc#basic-expression-type-call%)
           (table-set! _tbl20491_ '%#ref gxc#basic-expression-type-ref%)
           _tbl20491_)))))
  (define gxc#apply-basic-expression-type
    (lambda (_stx20484_ . _args20486_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx20484_ _args20486_))
       gxc#current-compile-methods
       (force gxc#&basic-expression-type))))
  (define gxc#&optimize-call
    (make-promise
     (lambda ()
       (let ((_tbl20481_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl20481_ (force gxc#&basic-xform))
           (table-set! _tbl20481_ '%#call gxc#optimize-call%)
           _tbl20481_)))))
  (define gxc#apply-optimize-call
    (lambda (_stx20474_ . _args20476_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx20474_ _args20476_))
       gxc#current-compile-methods
       (force gxc#&optimize-call))))
  (define gxc#&generate-ssxi
    (make-promise
     (lambda ()
       (let ((_tbl20471_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl20471_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl20471_ '%#begin gxc#generate-runtime-begin%)
           (table-set! _tbl20471_ '%#module gxc#generate-ssxi-module%)
           (table-set!
            _tbl20471_
            '%#define-values
            gxc#generate-ssxi-define-values%)
           (table-set! _tbl20471_ '%#call gxc#generate-ssxi-call%)
           _tbl20471_)))))
  (define gxc#apply-generate-ssxi
    (lambda (_stx20464_ . _args20466_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx20464_ _args20466_))
       gxc#current-compile-methods
       (force gxc#&generate-ssxi))))
  (define gxc#xform-identity (lambda (_stx20461_ . _args20462_) _stx20461_))
  (define gxc#xform-wrap-source
    (lambda (_stx20458_ _src-stx20459_)
      (gx#stx-wrap-source _stx20458_ (gx#stx-source _src-stx20459_))))
  (define gxc#xform-apply-compile-e
    (lambda (_args20452_)
      (lambda (_g2045320455_)
        (apply gxc#compile-e _g2045320455_ _args20452_))))
  (define gxc#xform-begin%
    (lambda (_stx20411_ . _args20412_)
      (let* ((_g2041420424_
              (lambda (_g2041520421_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2041520421_)))
             (_g2041320449_
              (lambda (_g2041520427_)
                (if (gx#stx-pair? _g2041520427_)
                    (let ((_e2041720429_ (gx#stx-e _g2041520427_)))
                      (let ((_hd2041820432_ (##car _e2041720429_))
                            (_tl2041920434_ (##cdr _e2041720429_)))
                        ((lambda (_L20437_)
                           (let ((_forms20447_
                                  (map (gxc#xform-apply-compile-e _args20412_)
                                       _L20437_)))
                             (gxc#xform-wrap-source
                              (cons '%#begin _forms20447_)
                              _stx20411_)))
                         _tl2041920434_)))
                    (_g2041420424_ _g2041520427_)))))
        (_g2041320449_ _stx20411_))))
  (define gxc#xform-module%
    (lambda (_stx20348_ . _args20349_)
      (let* ((_g2035120365_
              (lambda (_g2035220362_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2035220362_)))
             (_g2035020408_
              (lambda (_g2035220368_)
                (if (gx#stx-pair? _g2035220368_)
                    (let ((_e2035520370_ (gx#stx-e _g2035220368_)))
                      (let ((_hd2035620373_ (##car _e2035520370_))
                            (_tl2035720375_ (##cdr _e2035520370_)))
                        (if (gx#stx-pair? _tl2035720375_)
                            (let ((_e2035820378_ (gx#stx-e _tl2035720375_)))
                              (let ((_hd2035920381_ (##car _e2035820378_))
                                    (_tl2036020383_ (##cdr _e2035820378_)))
                                ((lambda (_L20386_ _L20387_)
                                   (let* ((_ctx20400_
                                           (gx#syntax-local-e__0 _L20387_))
                                          (_code20402_
                                           (##structure-ref
                                            _ctx20400_
                                            '11
                                            gx#module-context::t
                                            '#f))
                                          (_code20405_
                                           (call-with-parameters
                                            (lambda ()
                                              (apply gxc#compile-e
                                                     _code20402_
                                                     _args20349_))
                                            gx#current-expander-context
                                            _ctx20400_)))
                                     (begin
                                       (##structure-set!
                                        _ctx20400_
                                        _code20405_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _L20387_
                                                    (cons _code20405_ '())))
                                        _stx20348_))))
                                 _tl2036020383_
                                 _hd2035920381_)))
                            (_g2035120365_ _g2035220368_))))
                    (_g2035120365_ _g2035220368_)))))
        (_g2035020408_ _stx20348_))))
  (define gxc#xform-define-values%
    (lambda (_stx20278_ . _args20279_)
      (let* ((_g2028120298_
              (lambda (_g2028220295_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2028220295_)))
             (_g2028020345_
              (lambda (_g2028220301_)
                (if (gx#stx-pair? _g2028220301_)
                    (let ((_e2028520303_ (gx#stx-e _g2028220301_)))
                      (let ((_hd2028620306_ (##car _e2028520303_))
                            (_tl2028720308_ (##cdr _e2028520303_)))
                        (if (gx#stx-pair? _tl2028720308_)
                            (let ((_e2028820311_ (gx#stx-e _tl2028720308_)))
                              (let ((_hd2028920314_ (##car _e2028820311_))
                                    (_tl2029020316_ (##cdr _e2028820311_)))
                                (if (gx#stx-pair? _tl2029020316_)
                                    (let ((_e2029120319_
                                           (gx#stx-e _tl2029020316_)))
                                      (let ((_hd2029220322_
                                             (##car _e2029120319_))
                                            (_tl2029320324_
                                             (##cdr _e2029120319_)))
                                        (if (gx#stx-null? _tl2029320324_)
                                            ((lambda (_L20327_ _L20328_)
                                               (let ((_expr20343_
                                                      (apply gxc#compile-e
                                                             _L20327_
                                                             _args20279_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#define-values
                                                        (cons _L20328_
                                                              (cons _expr20343_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx20278_)))
                                             _hd2029220322_
                                             _hd2028920314_)
                                            (_g2028120298_ _g2028220301_))))
                                    (_g2028120298_ _g2028220301_))))
                            (_g2028120298_ _g2028220301_))))
                    (_g2028120298_ _g2028220301_)))))
        (_g2028020345_ _stx20278_))))
  (define gxc#xform-begin-annotation%
    (lambda (_stx20208_ . _args20209_)
      (let* ((_g2021120228_
              (lambda (_g2021220225_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2021220225_)))
             (_g2021020275_
              (lambda (_g2021220231_)
                (if (gx#stx-pair? _g2021220231_)
                    (let ((_e2021520233_ (gx#stx-e _g2021220231_)))
                      (let ((_hd2021620236_ (##car _e2021520233_))
                            (_tl2021720238_ (##cdr _e2021520233_)))
                        (if (gx#stx-pair? _tl2021720238_)
                            (let ((_e2021820241_ (gx#stx-e _tl2021720238_)))
                              (let ((_hd2021920244_ (##car _e2021820241_))
                                    (_tl2022020246_ (##cdr _e2021820241_)))
                                (if (gx#stx-pair? _tl2022020246_)
                                    (let ((_e2022120249_
                                           (gx#stx-e _tl2022020246_)))
                                      (let ((_hd2022220252_
                                             (##car _e2022120249_))
                                            (_tl2022320254_
                                             (##cdr _e2022120249_)))
                                        (if (gx#stx-null? _tl2022320254_)
                                            ((lambda (_L20257_ _L20258_)
                                               (let ((_expr20273_
                                                      (apply gxc#compile-e
                                                             _L20257_
                                                             _args20209_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#begin-annotation
                                                        (cons _L20258_
                                                              (cons _expr20273_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx20208_)))
                                             _hd2022220252_
                                             _hd2021920244_)
                                            (_g2021120228_ _g2021220231_))))
                                    (_g2021120228_ _g2021220231_))))
                            (_g2021120228_ _g2021220231_))))
                    (_g2021120228_ _g2021220231_)))))
        (_g2021020275_ _stx20208_))))
  (define gxc#xform-lambda%
    (lambda (_stx20151_ . _args20152_)
      (let* ((_g2015420168_
              (lambda (_g2015520165_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2015520165_)))
             (_g2015320205_
              (lambda (_g2015520171_)
                (if (gx#stx-pair? _g2015520171_)
                    (let ((_e2015820173_ (gx#stx-e _g2015520171_)))
                      (let ((_hd2015920176_ (##car _e2015820173_))
                            (_tl2016020178_ (##cdr _e2015820173_)))
                        (if (gx#stx-pair? _tl2016020178_)
                            (let ((_e2016120181_ (gx#stx-e _tl2016020178_)))
                              (let ((_hd2016220184_ (##car _e2016120181_))
                                    (_tl2016320186_ (##cdr _e2016120181_)))
                                ((lambda (_L20189_ _L20190_)
                                   (let ((_body20203_
                                          (map (gxc#xform-apply-compile-e
                                                _args20152_)
                                               _L20189_)))
                                     (gxc#xform-wrap-source
                                      (cons '%#lambda
                                            (cons _L20190_ _body20203_))
                                      _stx20151_)))
                                 _tl2016320186_
                                 _hd2016220184_)))
                            (_g2015420168_ _g2015520171_))))
                    (_g2015420168_ _g2015520171_)))))
        (_g2015320205_ _stx20151_))))
  (define gxc#xform-case-lambda%
    (lambda (_stx20064_ . _args20065_)
      (letrec ((_clause-e20067_
                (lambda (_clause20108_)
                  (let* ((_g2011020121_
                          (lambda (_g2011120118_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g2011120118_)))
                         (_g2010920148_
                          (lambda (_g2011120124_)
                            (if (gx#stx-pair? _g2011120124_)
                                (let ((_e2011420126_ (gx#stx-e _g2011120124_)))
                                  (let ((_hd2011520129_ (##car _e2011420126_))
                                        (_tl2011620131_ (##cdr _e2011420126_)))
                                    ((lambda (_L20134_ _L20135_)
                                       (let ((_body20146_
                                              (map (gxc#xform-apply-compile-e
                                                    _args20065_)
                                                   _L20134_)))
                                         (cons _L20135_ _body20146_)))
                                     _tl2011620131_
                                     _hd2011520129_)))
                                (_g2011020121_ _g2011120124_)))))
                    (_g2010920148_ _clause20108_)))))
        (let* ((_g2006920079_
                (lambda (_g2007020076_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2007020076_)))
               (_g2006820105_
                (lambda (_g2007020082_)
                  (if (gx#stx-pair? _g2007020082_)
                      (let ((_e2007220084_ (gx#stx-e _g2007020082_)))
                        (let ((_hd2007320087_ (##car _e2007220084_))
                              (_tl2007420089_ (##cdr _e2007220084_)))
                          ((lambda (_L20092_)
                             (let ((_clauses20103_
                                    (map _clause-e20067_ _L20092_)))
                               (gxc#xform-wrap-source
                                (cons '%#case-lambda _clauses20103_)
                                _stx20064_)))
                           _tl2007420089_)))
                      (_g2006920079_ _g2007020082_)))))
          (_g2006820105_ _stx20064_)))))
  (define gxc#xform-let-values%
    (lambda (_stx19858_ . _args19859_)
      (let* ((_g1986119894_
              (lambda (_g1986219891_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1986219891_)))
             (_g1986020061_
              (lambda (_g1986219897_)
                (if (gx#stx-pair? _g1986219897_)
                    (let ((_e1986719899_ (gx#stx-e _g1986219897_)))
                      (let ((_hd1986819902_ (##car _e1986719899_))
                            (_tl1986919904_ (##cdr _e1986719899_)))
                        (if (gx#stx-pair? _tl1986919904_)
                            (let ((_e1987019907_ (gx#stx-e _tl1986919904_)))
                              (let ((_hd1987119910_ (##car _e1987019907_))
                                    (_tl1987219912_ (##cdr _e1987019907_)))
                                (if (gx#stx-pair/null? _hd1987119910_)
                                    (if (fx>= (gx#stx-length _hd1987119910_)
                                              '0)
                                        (let ((_g20843_
                                               (gx#syntax-split-splice
                                                _hd1987119910_
                                                '0)))
                                          (begin
                                            (let ((_g20844_
                                                   (values-count _g20843_)))
                                              (if (not (fx= _g20844_ 2))
                                                  (error "Context expects 2 values"
                                                         _g20844_)))
                                            (let ((_target1987319915_
                                                   (values-ref _g20843_ 0))
                                                  (_tl1987519917_
                                                   (values-ref _g20843_ 1)))
                                              (if (gx#stx-null? _tl1987519917_)
                                                  (letrec ((_loop1987619920_
                                                            (lambda (_hd1987419923_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr1988019925_
                             _hd1988119927_)
                      (if (gx#stx-pair? _hd1987419923_)
                          (let ((_e1987719930_ (gx#stx-e _hd1987419923_)))
                            (let ((_lp-hd1987819933_ (##car _e1987719930_))
                                  (_lp-tl1987919935_ (##cdr _e1987719930_)))
                              (if (gx#stx-pair? _lp-hd1987819933_)
                                  (let ((_e1988419938_
                                         (gx#stx-e _lp-hd1987819933_)))
                                    (let ((_hd1988519941_
                                           (##car _e1988419938_))
                                          (_tl1988619943_
                                           (##cdr _e1988419938_)))
                                      (if (gx#stx-pair? _tl1988619943_)
                                          (let ((_e1988719946_
                                                 (gx#stx-e _tl1988619943_)))
                                            (let ((_hd1988819949_
                                                   (##car _e1988719946_))
                                                  (_tl1988919951_
                                                   (##cdr _e1988719946_)))
                                              (if (gx#stx-null? _tl1988919951_)
                                                  (_loop1987619920_
                                                   _lp-tl1987919935_
                                                   (cons _hd1988819949_
                                                         _expr1988019925_)
                                                   (cons _hd1988519941_
                                                         _hd1988119927_))
                                                  (_g1986119894_
                                                   _g1986219897_))))
                                          (_g1986119894_ _g1986219897_))))
                                  (_g1986119894_ _g1986219897_))))
                          (let ((_expr1988219954_ (reverse _expr1988019925_))
                                (_hd1988319956_ (reverse _hd1988119927_)))
                            ((lambda (_L19959_ _L19960_ _L19961_ _L19962_)
                               (let* ((_g1998119997_
                                       (lambda (_g1998219994_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1998219994_)))
                                      (_g1998020051_
                                       (lambda (_g1998220000_)
                                         (if (gx#stx-pair/null? _g1998220000_)
                                             (if (fx>= (gx#stx-length
                                                        _g1998220000_)
                                                       '0)
                                                 (let ((_g20845_
                                                        (gx#syntax-split-splice
                                                         _g1998220000_
                                                         '0)))
                                                   (begin
                                                     (let ((_g20846_
                                                            (values-count
                                                             _g20845_)))
                                                       (if (not (fx= _g20846_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g20846_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target1998420002_
                                                            (values-ref
                                                             _g20845_
                                                             0))
                                                           (_tl1998620004_
                                                            (values-ref
                                                             _g20845_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl1998620004_)
                                                           (letrec ((_loop1998720007_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd1998520010_ _expr1999120012_)
                               (if (gx#stx-pair? _hd1998520010_)
                                   (let ((_e1998820015_
                                          (gx#syntax-e _hd1998520010_)))
                                     (let ((_lp-hd1998920018_
                                            (##car _e1998820015_))
                                           (_lp-tl1999020020_
                                            (##cdr _e1998820015_)))
                                       (_loop1998720007_
                                        _lp-tl1999020020_
                                        (cons _lp-hd1998920018_
                                              _expr1999120012_))))
                                   (let ((_expr1999220023_
                                          (reverse _expr1999120012_)))
                                     ((lambda (_L20026_)
                                        (let ()
                                          (let ((_body20039_
                                                 (map (gxc#xform-apply-compile-e
                                                       _args19859_)
                                                      _L19959_)))
                                            (gxc#xform-wrap-source
                                             (cons _L19962_
                                                   (cons (begin
                                                           (gx#syntax-check-splice-targets
                                                            _L20026_
                                                            _L19961_)
                                                           (foldr (lambda (_g2004020044_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g2004120046_
                                   _g2004220048_)
                            (cons (cons _g2004120046_ (cons _g2004020044_ '()))
                                  _g2004220048_))
                          '()
                          _L20026_
                          _L19961_))
                 _body20039_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _stx19858_))))
                                      _expr1999220023_))))))
                     (_loop1998720007_ _target1998420002_ '()))
                   (_g1998119997_ _g1998220000_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1998119997_ _g1998220000_))
                                             (_g1998119997_ _g1998220000_)))))
                                 (_g1998020051_
                                  (map (gxc#xform-apply-compile-e _args19859_)
                                       (begin
                                         '#!void
                                         (foldr1 (lambda (_g2005320056_
                                                          _g2005420058_)
                                                   (cons _g2005320056_
                                                         _g2005420058_))
                                                 '()
                                                 _L19960_))))))
                             _tl1987219912_
                             _expr1988219954_
                             _hd1988319956_
                             _hd1986819902_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1987619920_
                                                     _target1987319915_
                                                     '()
                                                     '()))
                                                  (_g1986119894_
                                                   _g1986219897_)))))
                                        (_g1986119894_ _g1986219897_))
                                    (_g1986119894_ _g1986219897_))))
                            (_g1986119894_ _g1986219897_))))
                    (_g1986119894_ _g1986219897_)))))
        (_g1986020061_ _stx19858_))))
  (define gxc#xform-operands
    (lambda (_stx19814_ . _args19815_)
      (let* ((_g1981719828_
              (lambda (_g1981819825_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1981819825_)))
             (_g1981619855_
              (lambda (_g1981819831_)
                (if (gx#stx-pair? _g1981819831_)
                    (let ((_e1982119833_ (gx#stx-e _g1981819831_)))
                      (let ((_hd1982219836_ (##car _e1982119833_))
                            (_tl1982319838_ (##cdr _e1982119833_)))
                        ((lambda (_L19841_ _L19842_)
                           (let ((_rands19853_
                                  (map (gxc#xform-apply-compile-e _args19815_)
                                       _L19841_)))
                             (gxc#xform-wrap-source
                              (cons _L19842_ _rands19853_)
                              _stx19814_)))
                         _tl1982319838_
                         _hd1982219836_)))
                    (_g1981719828_ _g1981819831_)))))
        (_g1981619855_ _stx19814_))))
  (define gxc#xform-call% gxc#xform-operands)
  (define gxc#xform-setq%
    (lambda (_stx19744_ . _args19745_)
      (let* ((_g1974719764_
              (lambda (_g1974819761_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1974819761_)))
             (_g1974619811_
              (lambda (_g1974819767_)
                (if (gx#stx-pair? _g1974819767_)
                    (let ((_e1975119769_ (gx#stx-e _g1974819767_)))
                      (let ((_hd1975219772_ (##car _e1975119769_))
                            (_tl1975319774_ (##cdr _e1975119769_)))
                        (if (gx#stx-pair? _tl1975319774_)
                            (let ((_e1975419777_ (gx#stx-e _tl1975319774_)))
                              (let ((_hd1975519780_ (##car _e1975419777_))
                                    (_tl1975619782_ (##cdr _e1975419777_)))
                                (if (gx#stx-pair? _tl1975619782_)
                                    (let ((_e1975719785_
                                           (gx#stx-e _tl1975619782_)))
                                      (let ((_hd1975819788_
                                             (##car _e1975719785_))
                                            (_tl1975919790_
                                             (##cdr _e1975719785_)))
                                        (if (gx#stx-null? _tl1975919790_)
                                            ((lambda (_L19793_ _L19794_)
                                               (let ((_expr19809_
                                                      (apply gxc#compile-e
                                                             _L19793_
                                                             _args19745_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#set!
                                                        (cons _L19794_
                                                              (cons _expr19809_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx19744_)))
                                             _hd1975819788_
                                             _hd1975519780_)
                                            (_g1974719764_ _g1974819767_))))
                                    (_g1974719764_ _g1974819767_))))
                            (_g1974719764_ _g1974819767_))))
                    (_g1974719764_ _g1974819767_)))))
        (_g1974619811_ _stx19744_))))
  (define gxc#collect-mutators-setq%
    (lambda (_stx19675_)
      (let* ((_g1967719694_
              (lambda (_g1967819691_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1967819691_)))
             (_g1967619741_
              (lambda (_g1967819697_)
                (if (gx#stx-pair? _g1967819697_)
                    (let ((_e1968119699_ (gx#stx-e _g1967819697_)))
                      (let ((_hd1968219702_ (##car _e1968119699_))
                            (_tl1968319704_ (##cdr _e1968119699_)))
                        (if (gx#stx-pair? _tl1968319704_)
                            (let ((_e1968419707_ (gx#stx-e _tl1968319704_)))
                              (let ((_hd1968519710_ (##car _e1968419707_))
                                    (_tl1968619712_ (##cdr _e1968419707_)))
                                (if (gx#stx-pair? _tl1968619712_)
                                    (let ((_e1968719715_
                                           (gx#stx-e _tl1968619712_)))
                                      (let ((_hd1968819718_
                                             (##car _e1968719715_))
                                            (_tl1968919720_
                                             (##cdr _e1968719715_)))
                                        (if (gx#stx-null? _tl1968919720_)
                                            ((lambda (_L19723_ _L19724_)
                                               (let ((_sym19739_
                                                      (gxc#generate-runtime-binding-id
                                                       _L19724_)))
                                                 (begin
                                                   (gxc#verbose
                                                    '"collect mutator "
                                                    _sym19739_)
                                                   (table-set!
                                                    (gxc#current-compile-mutators)
                                                    _sym19739_
                                                    '#t)
                                                   (gxc#compile-e _L19723_))))
                                             _hd1968819718_
                                             _hd1968519710_)
                                            (_g1967719694_ _g1967819697_))))
                                    (_g1967719694_ _g1967819697_))))
                            (_g1967719694_ _g1967819697_))))
                    (_g1967719694_ _g1967819697_)))))
        (_g1967619741_ _stx19675_))))
  (define gxc#dispatch-lambda-form?
    (lambda (_form18909_)
      (let* ((_g1891419071_
              (lambda (_g1891519068_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1891519068_)))
             (_g1891319078_ (lambda (_g1891519074_) ((lambda () '#f))))
             (_g1891219218_
              (lambda (_g1891519081_)
                (if (gx#stx-pair? _g1891519081_)
                    (let ((_e1903119083_ (gx#stx-e _g1891519081_)))
                      (let ((_hd1903219086_ (##car _e1903119083_))
                            (_tl1903319088_ (##cdr _e1903119083_)))
                        (if (gx#stx-pair? _tl1903319088_)
                            (let ((_e1903419091_ (gx#stx-e _tl1903319088_)))
                              (let ((_hd1903519094_ (##car _e1903419091_))
                                    (_tl1903619096_ (##cdr _e1903419091_)))
                                (if (gx#stx-pair? _hd1903519094_)
                                    (let ((_e1903719099_
                                           (gx#stx-e _hd1903519094_)))
                                      (let ((_hd1903819102_
                                             (##car _e1903719099_))
                                            (_tl1903919104_
                                             (##cdr _e1903719099_)))
                                        (if (gx#identifier? _hd1903819102_)
                                            (if (gx#stx-eq?
                                                 '%#call
                                                 _hd1903819102_)
                                                (if (gx#stx-pair?
                                                     _tl1903919104_)
                                                    (let ((_e1904019107_
                                                           (gx#stx-e
                                                            _tl1903919104_)))
                                                      (let ((_hd1904119110_
                                                             (##car _e1904019107_))
                                                            (_tl1904219112_
                                                             (##cdr _e1904019107_)))
                                                        (if (gx#stx-pair?
                                                             _hd1904119110_)
                                                            (let ((_e1904319115_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1904119110_)))
                      (let ((_hd1904419118_ (##car _e1904319115_))
                            (_tl1904519120_ (##cdr _e1904319115_)))
                        (if (gx#identifier? _hd1904419118_)
                            (if (gx#stx-eq? '%#ref _hd1904419118_)
                                (if (gx#stx-pair? _tl1904519120_)
                                    (let ((_e1904619123_
                                           (gx#stx-e _tl1904519120_)))
                                      (let ((_hd1904719126_
                                             (##car _e1904619123_))
                                            (_tl1904819128_
                                             (##cdr _e1904619123_)))
                                        (if (gx#stx-null? _tl1904819128_)
                                            (if (gx#stx-pair? _tl1904219112_)
                                                (let ((_e1904919131_
                                                       (gx#stx-e
                                                        _tl1904219112_)))
                                                  (let ((_hd1905019134_
                                                         (##car _e1904919131_))
                                                        (_tl1905119136_
                                                         (##cdr _e1904919131_)))
                                                    (if (gx#stx-pair?
                                                         _hd1905019134_)
                                                        (let ((_e1905219139_
                                                               (gx#stx-e
                                                                _hd1905019134_)))
                                                          (let ((_hd1905319142_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1905219139_))
                        (_tl1905419144_ (##cdr _e1905219139_)))
                    (if (gx#identifier? _hd1905319142_)
                        (if (gx#stx-eq? '%#ref _hd1905319142_)
                            (if (gx#stx-pair? _tl1905419144_)
                                (let ((_e1905519147_
                                       (gx#stx-e _tl1905419144_)))
                                  (let ((_hd1905619150_ (##car _e1905519147_))
                                        (_tl1905719152_ (##cdr _e1905519147_)))
                                    (if (gx#stx-null? _tl1905719152_)
                                        (if (gx#stx-pair? _tl1905119136_)
                                            (let ((_e1905819155_
                                                   (gx#stx-e _tl1905119136_)))
                                              (let ((_hd1905919158_
                                                     (##car _e1905819155_))
                                                    (_tl1906019160_
                                                     (##cdr _e1905819155_)))
                                                (if (gx#stx-pair?
                                                     _hd1905919158_)
                                                    (let ((_e1906119163_
                                                           (gx#stx-e
                                                            _hd1905919158_)))
                                                      (let ((_hd1906219166_
                                                             (##car _e1906119163_))
                                                            (_tl1906319168_
                                                             (##cdr _e1906119163_)))
                                                        (if (gx#identifier?
                                                             _hd1906219166_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd1906219166_)
                        (if (gx#stx-pair? _tl1906319168_)
                            (let ((_e1906419171_ (gx#stx-e _tl1906319168_)))
                              (let ((_hd1906519174_ (##car _e1906419171_))
                                    (_tl1906619176_ (##cdr _e1906419171_)))
                                (if (gx#stx-null? _tl1906619176_)
                                    (if (gx#stx-null? _tl1906019160_)
                                        (if (gx#stx-null? _tl1903619096_)
                                            ((lambda (_L19179_
                                                      _L19180_
                                                      _L19181_
                                                      _L19182_)
                                               (if (if (gx#identifier?
                                                        _L19182_)
                                                       (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L19181_)
                        'apply)
                   (if (gx#free-identifier=? _L19182_ _L19179_)
                       (not (gx#free-identifier=? _L19180_ _L19182_))
                       '#f)
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '#t
                                                   (_g1891319078_
                                                    _g1891519081_)))
                                             _hd1906519174_
                                             _hd1905619150_
                                             _hd1904719126_
                                             _hd1903219086_)
                                            (_g1891319078_ _g1891519081_))
                                        (_g1891319078_ _g1891519081_))
                                    (_g1891319078_ _g1891519081_))))
                            (_g1891319078_ _g1891519081_))
                        (_g1891319078_ _g1891519081_))
                    (_g1891319078_ _g1891519081_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1891319078_
                                                     _g1891519081_))))
                                            (_g1891319078_ _g1891519081_))
                                        (_g1891319078_ _g1891519081_))))
                                (_g1891319078_ _g1891519081_))
                            (_g1891319078_ _g1891519081_))
                        (_g1891319078_ _g1891519081_))))
                (_g1891319078_ _g1891519081_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1891319078_ _g1891519081_))
                                            (_g1891319078_ _g1891519081_))))
                                    (_g1891319078_ _g1891519081_))
                                (_g1891319078_ _g1891519081_))
                            (_g1891319078_ _g1891519081_))))
                    (_g1891319078_ _g1891519081_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1891319078_
                                                     _g1891519081_))
                                                (_g1891319078_ _g1891519081_))
                                            (_g1891319078_ _g1891519081_))))
                                    (_g1891319078_ _g1891519081_))))
                            (_g1891319078_ _g1891519081_))))
                    (_g1891319078_ _g1891519081_))))
             (_g1891119478_
              (lambda (_g1891519221_)
                (if (gx#stx-pair? _g1891519221_)
                    (let ((_e1896719223_ (gx#stx-e _g1891519221_)))
                      (let ((_hd1896819226_ (##car _e1896719223_))
                            (_tl1896919228_ (##cdr _e1896719223_)))
                        (if (gx#stx-pair/null? _hd1896819226_)
                            (if (fx>= (gx#stx-length _hd1896819226_) '0)
                                (let ((_g20847_
                                       (gx#syntax-split-splice
                                        _hd1896819226_
                                        '0)))
                                  (begin
                                    (let ((_g20848_ (values-count _g20847_)))
                                      (if (not (fx= _g20848_ 2))
                                          (error "Context expects 2 values"
                                                 _g20848_)))
                                    (let ((_target1897019231_
                                           (values-ref _g20847_ 0))
                                          (_tl1897219233_
                                           (values-ref _g20847_ 1)))
                                      (letrec ((_loop1897319236_
                                                (lambda (_hd1897119239_
                                                         _arg1897719241_)
                                                  (if (gx#stx-pair?
                                                       _hd1897119239_)
                                                      (let ((_e1897419244_
                                                             (gx#stx-e
                                                              _hd1897119239_)))
                                                        (let ((_lp-hd1897519247_
                                                               (##car _e1897419244_))
                                                              (_lp-tl1897619249_
                                                               (##cdr _e1897419244_)))
                                                          (_loop1897319236_
                                                           _lp-tl1897619249_
                                                           (cons _lp-hd1897519247_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _arg1897719241_))))
              (let ((_arg1897819252_ (reverse _arg1897719241_)))
                (if (gx#stx-pair? _tl1896919228_)
                    (let ((_e1897919255_ (gx#stx-e _tl1896919228_)))
                      (let ((_hd1898019258_ (##car _e1897919255_))
                            (_tl1898119260_ (##cdr _e1897919255_)))
                        (if (gx#stx-pair? _hd1898019258_)
                            (let ((_e1898219263_ (gx#stx-e _hd1898019258_)))
                              (let ((_hd1898319266_ (##car _e1898219263_))
                                    (_tl1898419268_ (##cdr _e1898219263_)))
                                (if (gx#identifier? _hd1898319266_)
                                    (if (gx#stx-eq? '%#call _hd1898319266_)
                                        (if (gx#stx-pair? _tl1898419268_)
                                            (let ((_e1898519271_
                                                   (gx#stx-e _tl1898419268_)))
                                              (let ((_hd1898619274_
                                                     (##car _e1898519271_))
                                                    (_tl1898719276_
                                                     (##cdr _e1898519271_)))
                                                (if (gx#stx-pair?
                                                     _hd1898619274_)
                                                    (let ((_e1898819279_
                                                           (gx#stx-e
                                                            _hd1898619274_)))
                                                      (let ((_hd1898919282_
                                                             (##car _e1898819279_))
                                                            (_tl1899019284_
                                                             (##cdr _e1898819279_)))
                                                        (if (gx#identifier?
                                                             _hd1898919282_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd1898919282_)
                        (if (gx#stx-pair? _tl1899019284_)
                            (let ((_e1899119287_ (gx#stx-e _tl1899019284_)))
                              (let ((_hd1899219290_ (##car _e1899119287_))
                                    (_tl1899319292_ (##cdr _e1899119287_)))
                                (if (gx#stx-null? _tl1899319292_)
                                    (if (gx#stx-pair? _tl1898719276_)
                                        (let ((_e1899419295_
                                               (gx#stx-e _tl1898719276_)))
                                          (let ((_hd1899519298_
                                                 (##car _e1899419295_))
                                                (_tl1899619300_
                                                 (##cdr _e1899419295_)))
                                            (if (gx#stx-pair? _hd1899519298_)
                                                (let ((_e1899719303_
                                                       (gx#stx-e
                                                        _hd1899519298_)))
                                                  (let ((_hd1899819306_
                                                         (##car _e1899719303_))
                                                        (_tl1899919308_
                                                         (##cdr _e1899719303_)))
                                                    (if (gx#identifier?
                                                         _hd1899819306_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd1899819306_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1899919308_)
                        (let ((_e1900019311_ (gx#stx-e _tl1899919308_)))
                          (let ((_hd1900119314_ (##car _e1900019311_))
                                (_tl1900219316_ (##cdr _e1900019311_)))
                            (if (gx#stx-null? _tl1900219316_)
                                (if (gx#stx-pair/null? _tl1899619300_)
                                    (if (fx>= (gx#stx-length _tl1899619300_)
                                              '1)
                                        (let ((_g20849_
                                               (gx#syntax-split-splice
                                                _tl1899619300_
                                                '1)))
                                          (begin
                                            (let ((_g20850_
                                                   (values-count _g20849_)))
                                              (if (not (fx= _g20850_ 2))
                                                  (error "Context expects 2 values"
                                                         _g20850_)))
                                            (let ((_target1900319319_
                                                   (values-ref _g20849_ 0))
                                                  (_tl1900519321_
                                                   (values-ref _g20849_ 1)))
                                              (if (gx#stx-pair? _tl1900519321_)
                                                  (let ((_e1901219324_
                                                         (gx#stx-e
                                                          _tl1900519321_)))
                                                    (let ((_hd1901319327_
                                                           (##car _e1901219324_))
                                                          (_tl1901419329_
                                                           (##cdr _e1901219324_)))
                                                      (if (gx#stx-pair?
                                                           _hd1901319327_)
                                                          (let ((_e1901519332_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd1901319327_)))
                    (let ((_hd1901619335_ (##car _e1901519332_))
                          (_tl1901719337_ (##cdr _e1901519332_)))
                      (if (gx#identifier? _hd1901619335_)
                          (if (gx#stx-eq? '%#ref _hd1901619335_)
                              (if (gx#stx-pair? _tl1901719337_)
                                  (let ((_e1901819340_
                                         (gx#stx-e _tl1901719337_)))
                                    (let ((_hd1901919343_
                                           (##car _e1901819340_))
                                          (_tl1902019345_
                                           (##cdr _e1901819340_)))
                                      (if (gx#stx-null? _tl1902019345_)
                                          (if (gx#stx-null? _tl1901419329_)
                                              (letrec ((_loop1900619348_
                                                        (lambda (_hd1900419351_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _xarg1901019353_)
                  (if (gx#stx-pair? _hd1900419351_)
                      (let ((_e1900719356_ (gx#stx-e _hd1900419351_)))
                        (let ((_lp-hd1900819359_ (##car _e1900719356_))
                              (_lp-tl1900919361_ (##cdr _e1900719356_)))
                          (if (gx#stx-pair? _lp-hd1900819359_)
                              (let ((_e1902119364_
                                     (gx#stx-e _lp-hd1900819359_)))
                                (let ((_hd1902219367_ (##car _e1902119364_))
                                      (_tl1902319369_ (##cdr _e1902119364_)))
                                  (if (gx#identifier? _hd1902219367_)
                                      (if (gx#stx-eq? '%#ref _hd1902219367_)
                                          (if (gx#stx-pair? _tl1902319369_)
                                              (let ((_e1902419372_
                                                     (gx#stx-e
                                                      _tl1902319369_)))
                                                (let ((_hd1902519375_
                                                       (##car _e1902419372_))
                                                      (_tl1902619377_
                                                       (##cdr _e1902419372_)))
                                                  (if (gx#stx-null?
                                                       _tl1902619377_)
                                                      (_loop1900619348_
                                                       _lp-tl1900919361_
                                                       (cons _hd1902519375_
                                                             _xarg1901019353_))
                                                      (_g1891219218_
                                                       _g1891519221_))))
                                              (_g1891219218_ _g1891519221_))
                                          (_g1891219218_ _g1891519221_))
                                      (_g1891219218_ _g1891519221_))))
                              (_g1891219218_ _g1891519221_))))
                      (let ((_xarg1901119380_ (reverse _xarg1901019353_)))
                        (if (gx#stx-null? _tl1898119260_)
                            ((lambda (_L19383_
                                      _L19384_
                                      _L19385_
                                      _L19386_
                                      _L19387_
                                      _L19388_)
                               (if (if (gx#identifier-list?
                                        (begin
                                          '#!void
                                          (foldr1 (lambda (_g1943119434_
                                                           _g1943219436_)
                                                    (cons _g1943119434_
                                                          _g1943219436_))
                                                  '()
                                                  _L19388_)))
                                       (if (gx#identifier? _L19387_)
                                           (if (eq? (gxc#generate-runtime-binding-id
                                                     _L19386_)
                                                    'apply)
                                               (if (fx= (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (foldr1 (lambda (_g1943819441_ _g1943919443_)
                                    (cons _g1943819441_ _g1943919443_))
                                  '()
                                  _L19388_)))
                (length (begin
                          '#!void
                          (foldr1 (lambda (_g1944519448_ _g1944619450_)
                                    (cons _g1944519448_ _g1944619450_))
                                  '()
                                  _L19384_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (andmap gx#free-identifier=?
                                                               (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#!void
                         (foldr1 (lambda (_g1945219455_ _g1945319457_)
                                   (cons _g1945219455_ _g1945319457_))
                                 '()
                                 _L19388_))
                       (begin
                         '#!void
                         (foldr1 (lambda (_g1945919462_ _g1946019464_)
                                   (cons _g1945919462_ _g1946019464_))
                                 '()
                                 _L19384_)))
               (if (gx#free-identifier=? _L19387_ _L19383_)
                   (not (find (lambda (_g1946619468_)
                                (gx#free-identifier=? _g1946619468_ _L19385_))
                              (begin
                                '#!void
                                (foldr1 (lambda (_g1947019473_ _g1947119475_)
                                          (cons _g1947019473_ _g1947119475_))
                                        (cons _L19387_ '())
                                        _L19388_))))
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '#f)
                                               '#f)
                                           '#f)
                                       '#f)
                                   '#t
                                   (_g1891219218_ _g1891519221_)))
                             _hd1901919343_
                             _xarg1901119380_
                             _hd1900119314_
                             _hd1899219290_
                             _tl1897219233_
                             _arg1897819252_)
                            (_g1891219218_ _g1891519221_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop1900619348_
                                                 _target1900319319_
                                                 '()))
                                              (_g1891219218_ _g1891519221_))
                                          (_g1891219218_ _g1891519221_))))
                                  (_g1891219218_ _g1891519221_))
                              (_g1891219218_ _g1891519221_))
                          (_g1891219218_ _g1891519221_))))
                  (_g1891219218_ _g1891519221_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1891219218_
                                                   _g1891519221_)))))
                                        (_g1891219218_ _g1891519221_))
                                    (_g1891219218_ _g1891519221_))
                                (_g1891219218_ _g1891519221_))))
                        (_g1891219218_ _g1891519221_))
                    (_g1891219218_ _g1891519221_))
                (_g1891219218_ _g1891519221_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1891219218_
                                                 _g1891519221_))))
                                        (_g1891219218_ _g1891519221_))
                                    (_g1891219218_ _g1891519221_))))
                            (_g1891219218_ _g1891519221_))
                        (_g1891219218_ _g1891519221_))
                    (_g1891219218_ _g1891519221_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1891219218_
                                                     _g1891519221_))))
                                            (_g1891219218_ _g1891519221_))
                                        (_g1891219218_ _g1891519221_))
                                    (_g1891219218_ _g1891519221_))))
                            (_g1891219218_ _g1891519221_))))
                    (_g1891219218_ _g1891519221_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop1897319236_
                                         _target1897019231_
                                         '())))))
                                (_g1891219218_ _g1891519221_))
                            (_g1891219218_ _g1891519221_))))
                    (_g1891219218_ _g1891519221_))))
             (_g1891019672_
              (lambda (_g1891519481_)
                (if (gx#stx-pair? _g1891519481_)
                    (let ((_e1891919483_ (gx#stx-e _g1891519481_)))
                      (let ((_hd1892019486_ (##car _e1891919483_))
                            (_tl1892119488_ (##cdr _e1891919483_)))
                        (if (gx#stx-pair/null? _hd1892019486_)
                            (if (fx>= (gx#stx-length _hd1892019486_) '0)
                                (let ((_g20851_
                                       (gx#syntax-split-splice
                                        _hd1892019486_
                                        '0)))
                                  (begin
                                    (let ((_g20852_ (values-count _g20851_)))
                                      (if (not (fx= _g20852_ 2))
                                          (error "Context expects 2 values"
                                                 _g20852_)))
                                    (let ((_target1892219491_
                                           (values-ref _g20851_ 0))
                                          (_tl1892419493_
                                           (values-ref _g20851_ 1)))
                                      (if (gx#stx-null? _tl1892419493_)
                                          (letrec ((_loop1892519496_
                                                    (lambda (_hd1892319499_
                                                             _arg1892919501_)
                                                      (if (gx#stx-pair?
                                                           _hd1892319499_)
                                                          (let ((_e1892619504_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd1892319499_)))
                    (let ((_lp-hd1892719507_ (##car _e1892619504_))
                          (_lp-tl1892819509_ (##cdr _e1892619504_)))
                      (_loop1892519496_
                       _lp-tl1892819509_
                       (cons _lp-hd1892719507_ _arg1892919501_))))
                  (let ((_arg1893019512_ (reverse _arg1892919501_)))
                    (if (gx#stx-pair? _tl1892119488_)
                        (let ((_e1893119515_ (gx#stx-e _tl1892119488_)))
                          (let ((_hd1893219518_ (##car _e1893119515_))
                                (_tl1893319520_ (##cdr _e1893119515_)))
                            (if (gx#stx-pair? _hd1893219518_)
                                (let ((_e1893419523_
                                       (gx#stx-e _hd1893219518_)))
                                  (let ((_hd1893519526_ (##car _e1893419523_))
                                        (_tl1893619528_ (##cdr _e1893419523_)))
                                    (if (gx#identifier? _hd1893519526_)
                                        (if (gx#stx-eq? '%#call _hd1893519526_)
                                            (if (gx#stx-pair? _tl1893619528_)
                                                (let ((_e1893719531_
                                                       (gx#stx-e
                                                        _tl1893619528_)))
                                                  (let ((_hd1893819534_
                                                         (##car _e1893719531_))
                                                        (_tl1893919536_
                                                         (##cdr _e1893719531_)))
                                                    (if (gx#stx-pair?
                                                         _hd1893819534_)
                                                        (let ((_e1894019539_
                                                               (gx#stx-e
                                                                _hd1893819534_)))
                                                          (let ((_hd1894119542_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1894019539_))
                        (_tl1894219544_ (##cdr _e1894019539_)))
                    (if (gx#identifier? _hd1894119542_)
                        (if (gx#stx-eq? '%#ref _hd1894119542_)
                            (if (gx#stx-pair? _tl1894219544_)
                                (let ((_e1894319547_
                                       (gx#stx-e _tl1894219544_)))
                                  (let ((_hd1894419550_ (##car _e1894319547_))
                                        (_tl1894519552_ (##cdr _e1894319547_)))
                                    (if (gx#stx-null? _tl1894519552_)
                                        (if (gx#stx-pair/null? _tl1893919536_)
                                            (if (fx>= (gx#stx-length
                                                       _tl1893919536_)
                                                      '0)
                                                (let ((_g20853_
                                                       (gx#syntax-split-splice
                                                        _tl1893919536_
                                                        '0)))
                                                  (begin
                                                    (let ((_g20854_
                                                           (values-count
                                                            _g20853_)))
                                                      (if (not (fx= _g20854_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g20854_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1894619555_
                                                           (values-ref
                                                            _g20853_
                                                            0))
                                                          (_tl1894819557_
                                                           (values-ref
                                                            _g20853_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl1894819557_)
                                                          (letrec ((_loop1894919560_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1894719563_ _xarg1895319565_)
                              (if (gx#stx-pair? _hd1894719563_)
                                  (let ((_e1895019568_
                                         (gx#stx-e _hd1894719563_)))
                                    (let ((_lp-hd1895119571_
                                           (##car _e1895019568_))
                                          (_lp-tl1895219573_
                                           (##cdr _e1895019568_)))
                                      (if (gx#stx-pair? _lp-hd1895119571_)
                                          (let ((_e1895519576_
                                                 (gx#stx-e _lp-hd1895119571_)))
                                            (let ((_hd1895619579_
                                                   (##car _e1895519576_))
                                                  (_tl1895719581_
                                                   (##cdr _e1895519576_)))
                                              (if (gx#identifier?
                                                   _hd1895619579_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd1895619579_)
                                                      (if (gx#stx-pair?
                                                           _tl1895719581_)
                                                          (let ((_e1895819584_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1895719581_)))
                    (let ((_hd1895919587_ (##car _e1895819584_))
                          (_tl1896019589_ (##cdr _e1895819584_)))
                      (if (gx#stx-null? _tl1896019589_)
                          (_loop1894919560_
                           _lp-tl1895219573_
                           (cons _hd1895919587_ _xarg1895319565_))
                          (_g1891119478_ _g1891519481_))))
                  (_g1891119478_ _g1891519481_))
              (_g1891119478_ _g1891519481_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1891119478_
                                                   _g1891519481_))))
                                          (_g1891119478_ _g1891519481_))))
                                  (let ((_xarg1895419592_
                                         (reverse _xarg1895319565_)))
                                    (if (gx#stx-null? _tl1893319520_)
                                        ((lambda (_L19595_ _L19596_ _L19597_)
                                           (if (if (gx#identifier-list?
                                                    (begin
                                                      '#!void
                                                      (foldr1 (lambda (_g1962519628_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1962619630_)
                        (cons _g1962519628_ _g1962619630_))
                      '()
                      _L19597_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (fx= (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#!void
                              (foldr1 (lambda (_g1963219635_ _g1963319637_)
                                        (cons _g1963219635_ _g1963319637_))
                                      '()
                                      _L19597_)))
                    (length (begin
                              '#!void
                              (foldr1 (lambda (_g1963919642_ _g1964019644_)
                                        (cons _g1963919642_ _g1964019644_))
                                      '()
                                      _L19595_))))
               (if (andmap gx#free-identifier=?
                           (begin
                             '#!void
                             (foldr1 (lambda (_g1964619649_ _g1964719651_)
                                       (cons _g1964619649_ _g1964719651_))
                                     '()
                                     _L19597_))
                           (begin
                             '#!void
                             (foldr1 (lambda (_g1965319656_ _g1965419658_)
                                       (cons _g1965319656_ _g1965419658_))
                                     '()
                                     _L19595_)))
                   (not (find (lambda (_g1966019662_)
                                (gx#free-identifier=? _g1966019662_ _L19596_))
                              (begin
                                '#!void
                                (foldr1 (lambda (_g1966419667_ _g1966519669_)
                                          (cons _g1966419667_ _g1966519669_))
                                        '()
                                        _L19597_))))
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '#f)
                                               '#t
                                               (_g1891119478_ _g1891519481_)))
                                         _xarg1895419592_
                                         _hd1894419550_
                                         _arg1893019512_)
                                        (_g1891119478_ _g1891519481_)))))))
                    (_loop1894919560_ _target1894619555_ '()))
                  (_g1891119478_ _g1891519481_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1891119478_ _g1891519481_))
                                            (_g1891119478_ _g1891519481_))
                                        (_g1891119478_ _g1891519481_))))
                                (_g1891119478_ _g1891519481_))
                            (_g1891119478_ _g1891519481_))
                        (_g1891119478_ _g1891519481_))))
                (_g1891119478_ _g1891519481_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1891119478_ _g1891519481_))
                                            (_g1891119478_ _g1891519481_))
                                        (_g1891119478_ _g1891519481_))))
                                (_g1891119478_ _g1891519481_))))
                        (_g1891119478_ _g1891519481_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1892519496_
                                             _target1892219491_
                                             '()))
                                          (_g1891119478_ _g1891519481_)))))
                                (_g1891119478_ _g1891519481_))
                            (_g1891119478_ _g1891519481_))))
                    (_g1891119478_ _g1891519481_)))))
        (_g1891019672_ _form18909_))))
  (define gxc#dispatch-lambda-form-delegate
    (lambda (_form18377_)
      (let* ((_g1838118505_
              (lambda (_g1838218502_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1838218502_)))
             (_g1838018622_
              (lambda (_g1838218508_)
                (if (gx#stx-pair? _g1838218508_)
                    (let ((_e1847118510_ (gx#stx-e _g1838218508_)))
                      (let ((_hd1847218513_ (##car _e1847118510_))
                            (_tl1847318515_ (##cdr _e1847118510_)))
                        (if (gx#stx-pair? _tl1847318515_)
                            (let ((_e1847418518_ (gx#stx-e _tl1847318515_)))
                              (let ((_hd1847518521_ (##car _e1847418518_))
                                    (_tl1847618523_ (##cdr _e1847418518_)))
                                (if (gx#stx-pair? _hd1847518521_)
                                    (let ((_e1847718526_
                                           (gx#stx-e _hd1847518521_)))
                                      (let ((_hd1847818529_
                                             (##car _e1847718526_))
                                            (_tl1847918531_
                                             (##cdr _e1847718526_)))
                                        (if (gx#identifier? _hd1847818529_)
                                            (if (gx#stx-eq?
                                                 '%#call
                                                 _hd1847818529_)
                                                (if (gx#stx-pair?
                                                     _tl1847918531_)
                                                    (let ((_e1848018534_
                                                           (gx#stx-e
                                                            _tl1847918531_)))
                                                      (let ((_hd1848118537_
                                                             (##car _e1848018534_))
                                                            (_tl1848218539_
                                                             (##cdr _e1848018534_)))
                                                        (if (gx#stx-pair?
                                                             _hd1848118537_)
                                                            (let ((_e1848318542_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1848118537_)))
                      (let ((_hd1848418545_ (##car _e1848318542_))
                            (_tl1848518547_ (##cdr _e1848318542_)))
                        (if (gx#identifier? _hd1848418545_)
                            (if (gx#stx-eq? '%#ref _hd1848418545_)
                                (if (gx#stx-pair? _tl1848518547_)
                                    (let ((_e1848618550_
                                           (gx#stx-e _tl1848518547_)))
                                      (let ((_hd1848718553_
                                             (##car _e1848618550_))
                                            (_tl1848818555_
                                             (##cdr _e1848618550_)))
                                        (if (gx#stx-null? _tl1848818555_)
                                            (if (gx#stx-pair? _tl1848218539_)
                                                (let ((_e1848918558_
                                                       (gx#stx-e
                                                        _tl1848218539_)))
                                                  (let ((_hd1849018561_
                                                         (##car _e1848918558_))
                                                        (_tl1849118563_
                                                         (##cdr _e1848918558_)))
                                                    (if (gx#stx-pair?
                                                         _hd1849018561_)
                                                        (let ((_e1849218566_
                                                               (gx#stx-e
                                                                _hd1849018561_)))
                                                          (let ((_hd1849318569_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1849218566_))
                        (_tl1849418571_ (##cdr _e1849218566_)))
                    (if (gx#identifier? _hd1849318569_)
                        (if (gx#stx-eq? '%#ref _hd1849318569_)
                            (if (gx#stx-pair? _tl1849418571_)
                                (let ((_e1849518574_
                                       (gx#stx-e _tl1849418571_)))
                                  (let ((_hd1849618577_ (##car _e1849518574_))
                                        (_tl1849718579_ (##cdr _e1849518574_)))
                                    (if (gx#stx-null? _tl1849718579_)
                                        (if (gx#stx-pair? _tl1849118563_)
                                            (let ((_e1849818582_
                                                   (gx#stx-e _tl1849118563_)))
                                              (let ((_hd1849918585_
                                                     (##car _e1849818582_))
                                                    (_tl1850018587_
                                                     (##cdr _e1849818582_)))
                                                (if (gx#stx-null?
                                                     _tl1850018587_)
                                                    (if (gx#stx-null?
                                                         _tl1847618523_)
                                                        ((lambda (_L18590_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L18591_
                          _L18592_)
                   (gxc#generate-runtime-binding-id _L18590_))
                 _hd1849618577_
                 _hd1848718553_
                 _hd1847218513_)
                (_g1838118505_ _g1838218508_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1838118505_
                                                     _g1838218508_))))
                                            (_g1838118505_ _g1838218508_))
                                        (_g1838118505_ _g1838218508_))))
                                (_g1838118505_ _g1838218508_))
                            (_g1838118505_ _g1838218508_))
                        (_g1838118505_ _g1838218508_))))
                (_g1838118505_ _g1838218508_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1838118505_ _g1838218508_))
                                            (_g1838118505_ _g1838218508_))))
                                    (_g1838118505_ _g1838218508_))
                                (_g1838118505_ _g1838218508_))
                            (_g1838118505_ _g1838218508_))))
                    (_g1838118505_ _g1838218508_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1838118505_
                                                     _g1838218508_))
                                                (_g1838118505_ _g1838218508_))
                                            (_g1838118505_ _g1838218508_))))
                                    (_g1838118505_ _g1838218508_))))
                            (_g1838118505_ _g1838218508_))))
                    (_g1838118505_ _g1838218508_))))
             (_g1837918758_
              (lambda (_g1838218625_)
                (if (gx#stx-pair? _g1838218625_)
                    (let ((_e1843218627_ (gx#stx-e _g1838218625_)))
                      (let ((_hd1843318630_ (##car _e1843218627_))
                            (_tl1843418632_ (##cdr _e1843218627_)))
                        (if (gx#stx-pair/null? _hd1843318630_)
                            (if (fx>= (gx#stx-length _hd1843318630_) '0)
                                (let ((_g20855_
                                       (gx#syntax-split-splice
                                        _hd1843318630_
                                        '0)))
                                  (begin
                                    (let ((_g20856_ (values-count _g20855_)))
                                      (if (not (fx= _g20856_ 2))
                                          (error "Context expects 2 values"
                                                 _g20856_)))
                                    (let ((_target1843518635_
                                           (values-ref _g20855_ 0))
                                          (_tl1843718637_
                                           (values-ref _g20855_ 1)))
                                      (letrec ((_loop1843818640_
                                                (lambda (_hd1843618643_
                                                         _arg1844218645_)
                                                  (if (gx#stx-pair?
                                                       _hd1843618643_)
                                                      (let ((_e1843918648_
                                                             (gx#stx-e
                                                              _hd1843618643_)))
                                                        (let ((_lp-hd1844018651_
                                                               (##car _e1843918648_))
                                                              (_lp-tl1844118653_
                                                               (##cdr _e1843918648_)))
                                                          (_loop1843818640_
                                                           _lp-tl1844118653_
                                                           (cons _lp-hd1844018651_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _arg1844218645_))))
              (let ((_arg1844318656_ (reverse _arg1844218645_)))
                (if (gx#stx-pair? _tl1843418632_)
                    (let ((_e1844418659_ (gx#stx-e _tl1843418632_)))
                      (let ((_hd1844518662_ (##car _e1844418659_))
                            (_tl1844618664_ (##cdr _e1844418659_)))
                        (if (gx#stx-pair? _hd1844518662_)
                            (let ((_e1844718667_ (gx#stx-e _hd1844518662_)))
                              (let ((_hd1844818670_ (##car _e1844718667_))
                                    (_tl1844918672_ (##cdr _e1844718667_)))
                                (if (gx#identifier? _hd1844818670_)
                                    (if (gx#stx-eq? '%#call _hd1844818670_)
                                        (if (gx#stx-pair? _tl1844918672_)
                                            (let ((_e1845018675_
                                                   (gx#stx-e _tl1844918672_)))
                                              (let ((_hd1845118678_
                                                     (##car _e1845018675_))
                                                    (_tl1845218680_
                                                     (##cdr _e1845018675_)))
                                                (if (gx#stx-pair?
                                                     _hd1845118678_)
                                                    (let ((_e1845318683_
                                                           (gx#stx-e
                                                            _hd1845118678_)))
                                                      (let ((_hd1845418686_
                                                             (##car _e1845318683_))
                                                            (_tl1845518688_
                                                             (##cdr _e1845318683_)))
                                                        (if (gx#identifier?
                                                             _hd1845418686_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd1845418686_)
                        (if (gx#stx-pair? _tl1845518688_)
                            (let ((_e1845618691_ (gx#stx-e _tl1845518688_)))
                              (let ((_hd1845718694_ (##car _e1845618691_))
                                    (_tl1845818696_ (##cdr _e1845618691_)))
                                (if (gx#stx-null? _tl1845818696_)
                                    (if (gx#stx-pair? _tl1845218680_)
                                        (let ((_e1845918699_
                                               (gx#stx-e _tl1845218680_)))
                                          (let ((_hd1846018702_
                                                 (##car _e1845918699_))
                                                (_tl1846118704_
                                                 (##cdr _e1845918699_)))
                                            (if (gx#stx-pair? _hd1846018702_)
                                                (let ((_e1846218707_
                                                       (gx#stx-e
                                                        _hd1846018702_)))
                                                  (let ((_hd1846318710_
                                                         (##car _e1846218707_))
                                                        (_tl1846418712_
                                                         (##cdr _e1846218707_)))
                                                    (if (gx#identifier?
                                                         _hd1846318710_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd1846318710_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1846418712_)
                        (let ((_e1846518715_ (gx#stx-e _tl1846418712_)))
                          (let ((_hd1846618718_ (##car _e1846518715_))
                                (_tl1846718720_ (##cdr _e1846518715_)))
                            (if (gx#stx-null? _tl1846718720_)
                                (if (gx#stx-null? _tl1844618664_)
                                    ((lambda (_L18723_
                                              _L18724_
                                              _L18725_
                                              _L18726_)
                                       (gxc#generate-runtime-binding-id
                                        _L18723_))
                                     _hd1846618718_
                                     _hd1845718694_
                                     _tl1843718637_
                                     _arg1844318656_)
                                    (_g1838018622_ _g1838218625_))
                                (_g1838018622_ _g1838218625_))))
                        (_g1838018622_ _g1838218625_))
                    (_g1838018622_ _g1838218625_))
                (_g1838018622_ _g1838218625_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1838018622_
                                                 _g1838218625_))))
                                        (_g1838018622_ _g1838218625_))
                                    (_g1838018622_ _g1838218625_))))
                            (_g1838018622_ _g1838218625_))
                        (_g1838018622_ _g1838218625_))
                    (_g1838018622_ _g1838218625_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1838018622_
                                                     _g1838218625_))))
                                            (_g1838018622_ _g1838218625_))
                                        (_g1838018622_ _g1838218625_))
                                    (_g1838018622_ _g1838218625_))))
                            (_g1838018622_ _g1838218625_))))
                    (_g1838018622_ _g1838218625_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop1843818640_
                                         _target1843518635_
                                         '())))))
                                (_g1838018622_ _g1838218625_))
                            (_g1838018622_ _g1838218625_))))
                    (_g1838018622_ _g1838218625_))))
             (_g1837818906_
              (lambda (_g1838218761_)
                (if (gx#stx-pair? _g1838218761_)
                    (let ((_e1838618763_ (gx#stx-e _g1838218761_)))
                      (let ((_hd1838718766_ (##car _e1838618763_))
                            (_tl1838818768_ (##cdr _e1838618763_)))
                        (if (gx#stx-pair/null? _hd1838718766_)
                            (if (fx>= (gx#stx-length _hd1838718766_) '0)
                                (let ((_g20857_
                                       (gx#syntax-split-splice
                                        _hd1838718766_
                                        '0)))
                                  (begin
                                    (let ((_g20858_ (values-count _g20857_)))
                                      (if (not (fx= _g20858_ 2))
                                          (error "Context expects 2 values"
                                                 _g20858_)))
                                    (let ((_target1838918771_
                                           (values-ref _g20857_ 0))
                                          (_tl1839118773_
                                           (values-ref _g20857_ 1)))
                                      (if (gx#stx-null? _tl1839118773_)
                                          (letrec ((_loop1839218776_
                                                    (lambda (_hd1839018779_
                                                             _arg1839618781_)
                                                      (if (gx#stx-pair?
                                                           _hd1839018779_)
                                                          (let ((_e1839318784_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd1839018779_)))
                    (let ((_lp-hd1839418787_ (##car _e1839318784_))
                          (_lp-tl1839518789_ (##cdr _e1839318784_)))
                      (_loop1839218776_
                       _lp-tl1839518789_
                       (cons _lp-hd1839418787_ _arg1839618781_))))
                  (let ((_arg1839718792_ (reverse _arg1839618781_)))
                    (if (gx#stx-pair? _tl1838818768_)
                        (let ((_e1839818795_ (gx#stx-e _tl1838818768_)))
                          (let ((_hd1839918798_ (##car _e1839818795_))
                                (_tl1840018800_ (##cdr _e1839818795_)))
                            (if (gx#stx-pair? _hd1839918798_)
                                (let ((_e1840118803_
                                       (gx#stx-e _hd1839918798_)))
                                  (let ((_hd1840218806_ (##car _e1840118803_))
                                        (_tl1840318808_ (##cdr _e1840118803_)))
                                    (if (gx#identifier? _hd1840218806_)
                                        (if (gx#stx-eq? '%#call _hd1840218806_)
                                            (if (gx#stx-pair? _tl1840318808_)
                                                (let ((_e1840418811_
                                                       (gx#stx-e
                                                        _tl1840318808_)))
                                                  (let ((_hd1840518814_
                                                         (##car _e1840418811_))
                                                        (_tl1840618816_
                                                         (##cdr _e1840418811_)))
                                                    (if (gx#stx-pair?
                                                         _hd1840518814_)
                                                        (let ((_e1840718819_
                                                               (gx#stx-e
                                                                _hd1840518814_)))
                                                          (let ((_hd1840818822_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1840718819_))
                        (_tl1840918824_ (##cdr _e1840718819_)))
                    (if (gx#identifier? _hd1840818822_)
                        (if (gx#stx-eq? '%#ref _hd1840818822_)
                            (if (gx#stx-pair? _tl1840918824_)
                                (let ((_e1841018827_
                                       (gx#stx-e _tl1840918824_)))
                                  (let ((_hd1841118830_ (##car _e1841018827_))
                                        (_tl1841218832_ (##cdr _e1841018827_)))
                                    (if (gx#stx-null? _tl1841218832_)
                                        (if (gx#stx-pair/null? _tl1840618816_)
                                            (if (fx>= (gx#stx-length
                                                       _tl1840618816_)
                                                      '0)
                                                (let ((_g20859_
                                                       (gx#syntax-split-splice
                                                        _tl1840618816_
                                                        '0)))
                                                  (begin
                                                    (let ((_g20860_
                                                           (values-count
                                                            _g20859_)))
                                                      (if (not (fx= _g20860_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g20860_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1841318835_
                                                           (values-ref
                                                            _g20859_
                                                            0))
                                                          (_tl1841518837_
                                                           (values-ref
                                                            _g20859_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl1841518837_)
                                                          (letrec ((_loop1841618840_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1841418843_ _xarg1842018845_)
                              (if (gx#stx-pair? _hd1841418843_)
                                  (let ((_e1841718848_
                                         (gx#stx-e _hd1841418843_)))
                                    (let ((_lp-hd1841818851_
                                           (##car _e1841718848_))
                                          (_lp-tl1841918853_
                                           (##cdr _e1841718848_)))
                                      (if (gx#stx-pair? _lp-hd1841818851_)
                                          (let ((_e1842218856_
                                                 (gx#stx-e _lp-hd1841818851_)))
                                            (let ((_hd1842318859_
                                                   (##car _e1842218856_))
                                                  (_tl1842418861_
                                                   (##cdr _e1842218856_)))
                                              (if (gx#identifier?
                                                   _hd1842318859_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd1842318859_)
                                                      (if (gx#stx-pair?
                                                           _tl1842418861_)
                                                          (let ((_e1842518864_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1842418861_)))
                    (let ((_hd1842618867_ (##car _e1842518864_))
                          (_tl1842718869_ (##cdr _e1842518864_)))
                      (if (gx#stx-null? _tl1842718869_)
                          (_loop1841618840_
                           _lp-tl1841918853_
                           (cons _hd1842618867_ _xarg1842018845_))
                          (_g1837918758_ _g1838218761_))))
                  (_g1837918758_ _g1838218761_))
              (_g1837918758_ _g1838218761_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1837918758_
                                                   _g1838218761_))))
                                          (_g1837918758_ _g1838218761_))))
                                  (let ((_xarg1842118872_
                                         (reverse _xarg1842018845_)))
                                    (if (gx#stx-null? _tl1840018800_)
                                        ((lambda (_L18875_ _L18876_ _L18877_)
                                           (gxc#generate-runtime-binding-id
                                            _L18876_))
                                         _xarg1842118872_
                                         _hd1841118830_
                                         _arg1839718792_)
                                        (_g1837918758_ _g1838218761_)))))))
                    (_loop1841618840_ _target1841318835_ '()))
                  (_g1837918758_ _g1838218761_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1837918758_ _g1838218761_))
                                            (_g1837918758_ _g1838218761_))
                                        (_g1837918758_ _g1838218761_))))
                                (_g1837918758_ _g1838218761_))
                            (_g1837918758_ _g1838218761_))
                        (_g1837918758_ _g1838218761_))))
                (_g1837918758_ _g1838218761_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1837918758_ _g1838218761_))
                                            (_g1837918758_ _g1838218761_))
                                        (_g1837918758_ _g1838218761_))))
                                (_g1837918758_ _g1838218761_))))
                        (_g1837918758_ _g1838218761_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1839218776_
                                             _target1838918771_
                                             '()))
                                          (_g1837918758_ _g1838218761_)))))
                                (_g1837918758_ _g1838218761_))
                            (_g1837918758_ _g1838218761_))))
                    (_g1837918758_ _g1838218761_)))))
        (_g1837818906_ _form18377_))))
  (define gxc#lambda-form-arity
    (lambda (_form18181_)
      (let* ((_g1818318197_
              (lambda (_g1818418194_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1818418194_)))
             (_g1818218374_
              (lambda (_g1818418200_)
                (if (gx#stx-pair? _g1818418200_)
                    (let ((_e1818718202_ (gx#stx-e _g1818418200_)))
                      (let ((_hd1818818205_ (##car _e1818718202_))
                            (_tl1818918207_ (##cdr _e1818718202_)))
                        (if (gx#stx-pair? _tl1818918207_)
                            (let ((_e1819018210_ (gx#stx-e _tl1818918207_)))
                              (let ((_hd1819118213_ (##car _e1819018210_))
                                    (_tl1819218215_ (##cdr _e1819018210_)))
                                (if (gx#stx-null? _tl1819218215_)
                                    ((lambda (_L18218_ _L18219_)
                                       (let* ((_g1823418262_
                                               (lambda (_g1823518259_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1823518259_)))
                                              (_g1823318275_
                                               (lambda (_g1823518265_)
                                                 ((lambda (_L18267_)
                                                    (cons '0 '()))
                                                  _g1823518265_)))
                                              (_g1823218324_
                                               (lambda (_g1823518278_)
                                                 (if (gx#stx-pair/null?
                                                      _g1823518278_)
                                                     (if (fx>= (gx#stx-length
                                                                _g1823518278_)
                                                               '0)
                                                         (let ((_g20861_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1823518278_
                         '0)))
                   (begin
                     (let ((_g20862_ (values-count _g20861_)))
                       (if (not (fx= _g20862_ 2))
                           (error "Context expects 2 values" _g20862_)))
                     (let ((_target1824818280_ (values-ref _g20861_ 0))
                           (_tl1825018282_ (values-ref _g20861_ 1)))
                       (letrec ((_loop1825118285_
                                 (lambda (_hd1824918288_ _arg1825518290_)
                                   (if (gx#stx-pair? _hd1824918288_)
                                       (let ((_e1825218293_
                                              (gx#stx-e _hd1824918288_)))
                                         (let ((_lp-hd1825318296_
                                                (##car _e1825218293_))
                                               (_lp-tl1825418298_
                                                (##cdr _e1825218293_)))
                                           (_loop1825118285_
                                            _lp-tl1825418298_
                                            (cons _lp-hd1825318296_
                                                  _arg1825518290_))))
                                       (let ((_arg1825618301_
                                              (reverse _arg1825518290_)))
                                         ((lambda (_L18304_ _L18305_)
                                            (cons (length (begin
                                                            '#!void
                                                            (foldr1 (lambda (_g1831618319_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1831718321_)
                              (cons _g1831618319_ _g1831718321_))
                            '()
                            _L18305_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                          _tl1825018282_
                                          _arg1825618301_))))))
                         (_loop1825118285_ _target1824818280_ '())))))
                 (_g1823318275_ _g1823518278_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1823318275_
                                                      _g1823518278_))))
                                              (_g1823118371_
                                               (lambda (_g1823518327_)
                                                 (if (gx#stx-pair/null?
                                                      _g1823518327_)
                                                     (if (fx>= (gx#stx-length
                                                                _g1823518327_)
                                                               '0)
                                                         (let ((_g20863_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1823518327_
                         '0)))
                   (begin
                     (let ((_g20864_ (values-count _g20863_)))
                       (if (not (fx= _g20864_ 2))
                           (error "Context expects 2 values" _g20864_)))
                     (let ((_target1823718329_ (values-ref _g20863_ 0))
                           (_tl1823918331_ (values-ref _g20863_ 1)))
                       (if (gx#stx-null? _tl1823918331_)
                           (letrec ((_loop1824018334_
                                     (lambda (_hd1823818337_ _arg1824418339_)
                                       (if (gx#stx-pair? _hd1823818337_)
                                           (let ((_e1824118342_
                                                  (gx#stx-e _hd1823818337_)))
                                             (let ((_lp-hd1824218345_
                                                    (##car _e1824118342_))
                                                   (_lp-tl1824318347_
                                                    (##cdr _e1824118342_)))
                                               (_loop1824018334_
                                                _lp-tl1824318347_
                                                (cons _lp-hd1824218345_
                                                      _arg1824418339_))))
                                           (let ((_arg1824518350_
                                                  (reverse _arg1824418339_)))
                                             ((lambda (_L18353_)
                                                (length (begin
                                                          '#!void
                                                          (foldr1 (lambda (_g1836318366_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g1836418368_)
                            (cons _g1836318366_ _g1836418368_))
                          '()
                          _L18353_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _arg1824518350_))))))
                             (_loop1824018334_ _target1823718329_ '()))
                           (_g1823218324_ _g1823518327_)))))
                 (_g1823218324_ _g1823518327_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1823218324_
                                                      _g1823518327_)))))
                                         (_g1823118371_ _L18219_)))
                                     _hd1819118213_
                                     _hd1818818205_)
                                    (_g1818318197_ _g1818418200_))))
                            (_g1818318197_ _g1818418200_))))
                    (_g1818318197_ _g1818418200_)))))
        (_g1818218374_ _form18181_))))
  (define gxc#lambda-expr?
    (lambda (_expr18134_)
      (let* ((_g1813718147_
              (lambda (_g1813818144_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1813818144_)))
             (_g1813618154_ (lambda (_g1813818150_) ((lambda () '#f))))
             (_g1813518178_
              (lambda (_g1813818157_)
                (if (gx#stx-pair? _g1813818157_)
                    (let ((_e1814018159_ (gx#stx-e _g1813818157_)))
                      (let ((_hd1814118162_ (##car _e1814018159_))
                            (_tl1814218164_ (##cdr _e1814018159_)))
                        (if (gx#identifier? _hd1814118162_)
                            (if (gx#stx-eq? '%#lambda _hd1814118162_)
                                ((lambda (_L18167_) '#t) _tl1814218164_)
                                (_g1813618154_ _g1813818157_))
                            (_g1813618154_ _g1813818157_))))
                    (_g1813618154_ _g1813818157_)))))
        (_g1813518178_ _expr18134_))))
  (define gxc#case-lambda-expr?
    (lambda (_expr18087_)
      (let* ((_g1809018100_
              (lambda (_g1809118097_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1809118097_)))
             (_g1808918107_ (lambda (_g1809118103_) ((lambda () '#f))))
             (_g1808818131_
              (lambda (_g1809118110_)
                (if (gx#stx-pair? _g1809118110_)
                    (let ((_e1809318112_ (gx#stx-e _g1809118110_)))
                      (let ((_hd1809418115_ (##car _e1809318112_))
                            (_tl1809518117_ (##cdr _e1809318112_)))
                        (if (gx#identifier? _hd1809418115_)
                            (if (gx#stx-eq? '%#case-lambda _hd1809418115_)
                                ((lambda (_L18120_) '#t) _tl1809518117_)
                                (_g1808918107_ _g1809118110_))
                            (_g1808918107_ _g1809118110_))))
                    (_g1808918107_ _g1809118110_)))))
        (_g1808818131_ _expr18087_))))
  (define gxc#opt-lambda-expr?
    (lambda (_expr17956_)
      (let* ((_g1795917989_
              (lambda (_g1796017986_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1796017986_)))
             (_g1795817996_ (lambda (_g1796017992_) ((lambda () '#f))))
             (_g1795718084_
              (lambda (_g1796017999_)
                (if (gx#stx-pair? _g1796017999_)
                    (let ((_e1796418001_ (gx#stx-e _g1796017999_)))
                      (let ((_hd1796518004_ (##car _e1796418001_))
                            (_tl1796618006_ (##cdr _e1796418001_)))
                        (if (gx#identifier? _hd1796518004_)
                            (if (gx#stx-eq? '%#let-values _hd1796518004_)
                                (if (gx#stx-pair? _tl1796618006_)
                                    (let ((_e1796718009_
                                           (gx#stx-e _tl1796618006_)))
                                      (let ((_hd1796818012_
                                             (##car _e1796718009_))
                                            (_tl1796918014_
                                             (##cdr _e1796718009_)))
                                        (if (gx#stx-pair? _hd1796818012_)
                                            (let ((_e1797018017_
                                                   (gx#stx-e _hd1796818012_)))
                                              (let ((_hd1797118020_
                                                     (##car _e1797018017_))
                                                    (_tl1797218022_
                                                     (##cdr _e1797018017_)))
                                                (if (gx#stx-pair?
                                                     _hd1797118020_)
                                                    (let ((_e1797318025_
                                                           (gx#stx-e
                                                            _hd1797118020_)))
                                                      (let ((_hd1797418028_
                                                             (##car _e1797318025_))
                                                            (_tl1797518030_
                                                             (##cdr _e1797318025_)))
                                                        (if (gx#stx-pair?
                                                             _hd1797418028_)
                                                            (let ((_e1797618033_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1797418028_)))
                      (let ((_hd1797718036_ (##car _e1797618033_))
                            (_tl1797818038_ (##cdr _e1797618033_)))
                        (if (gx#stx-null? _tl1797818038_)
                            (if (gx#stx-pair? _tl1797518030_)
                                (let ((_e1797918041_
                                       (gx#stx-e _tl1797518030_)))
                                  (let ((_hd1798018044_ (##car _e1797918041_))
                                        (_tl1798118046_ (##cdr _e1797918041_)))
                                    (if (gx#stx-null? _tl1798118046_)
                                        (if (gx#stx-null? _tl1797218022_)
                                            (if (gx#stx-pair? _tl1796918014_)
                                                (let ((_e1798218049_
                                                       (gx#stx-e
                                                        _tl1796918014_)))
                                                  (let ((_hd1798318052_
                                                         (##car _e1798218049_))
                                                        (_tl1798418054_
                                                         (##cdr _e1798218049_)))
                                                    (if (gx#stx-null?
                                                         _tl1798418054_)
                                                        ((lambda (_L18057_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L18058_
                          _L18059_)
                   (if (gx#identifier? _L18059_)
                       (if (gxc#lambda-expr? _L18058_)
                           (gxc#case-lambda-expr? _L18057_)
                           '#f)
                       '#f))
                 _hd1798318052_
                 _hd1798018044_
                 _hd1797718036_)
                (_g1795817996_ _g1796017999_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1795817996_ _g1796017999_))
                                            (_g1795817996_ _g1796017999_))
                                        (_g1795817996_ _g1796017999_))))
                                (_g1795817996_ _g1796017999_))
                            (_g1795817996_ _g1796017999_))))
                    (_g1795817996_ _g1796017999_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1795817996_
                                                     _g1796017999_))))
                                            (_g1795817996_ _g1796017999_))))
                                    (_g1795817996_ _g1796017999_))
                                (_g1795817996_ _g1796017999_))
                            (_g1795817996_ _g1796017999_))))
                    (_g1795817996_ _g1796017999_)))))
        (_g1795718084_ _expr17956_))))
  (begin
    (define gxc#lift-case-lambda-clauses__opt-lambda17696
      (lambda (_stx17698_ _id17699_ _clauses17700_ _gensym?17701_)
        (let _lp17703_ ((_rest17705_ _clauses17700_)
                        (_ids17706_ '())
                        (_impls17707_ '())
                        (_clauses17708_ '()))
          (let* ((_rest1770917717_ _rest17705_)
                 (_E1771217721_
                  (lambda () (error '"No clause matching" _rest1770917717_)))
                 (_else1771117725_
                  (lambda ()
                    (values (reverse _ids17706_)
                            (reverse _impls17707_)
                            (reverse _clauses17708_))))
                 (_K1771317930_
                  (lambda (_rest17728_ _clause17729_)
                    (if (gxc#dispatch-lambda-form? _clause17729_)
                        (_lp17703_
                         _rest17728_
                         _ids17706_
                         _impls17707_
                         (cons _clause17729_ _clauses17708_))
                        (let* ((_g1773117742_
                                (lambda (_g1773217739_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g1773217739_)))
                               (_g1773017927_
                                (lambda (_g1773217745_)
                                  (if (gx#stx-pair? _g1773217745_)
                                      (let ((_e1773517747_
                                             (gx#stx-e _g1773217745_)))
                                        (let ((_hd1773617750_
                                               (##car _e1773517747_))
                                              (_tl1773717752_
                                               (##cdr _e1773517747_)))
                                          ((lambda (_L17755_ _L17756_)
                                             (let* ((_id17773_
                                                     (make-symbol
                                                      (gx#stx-e _id17699_)
                                                      '"__"
                                                      (length _clauses17708_)
                                                      (if _gensym?17701_
                                                          (gensym '__)
                                                          '"")))
                                                    (_id17775_
                                                     (gx#core-quote-syntax__1
                                                      _id17773_
                                                      (gx#stx-source
                                                       _stx17698_)))
                                                    (_impl17777_
                                                     (gxc#xform-wrap-source
                                                      (cons (gx#datum->syntax__0
                                                             '#f
                                                             '%#lambda)
                                                            (cons _L17756_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L17755_))
              _stx17698_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause17924_
                                                     (let* ((_g1778117809_
                                                             (lambda (_g1778217806_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1778217806_)))
                                                            (_g1778017825_
                                                             (lambda (_g1778217812_)
                                                               ((lambda (_L17814_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L17756_
                                (cons (gxc#xform-wrap-source
                                       (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'apply '()))
                                                   (cons (cons '%#ref
                                                               (cons _id17775_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                             (cons _L17814_ '()))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _stx17698_)
                                      '())))
                        _g1778217812_)))
                    (_g1777917874_
                     (lambda (_g1778217828_)
                       (if (gx#stx-pair/null? _g1778217828_)
                           (if (fx>= (gx#stx-length _g1778217828_) '0)
                               (let ((_g20865_
                                      (gx#syntax-split-splice
                                       _g1778217828_
                                       '0)))
                                 (begin
                                   (let ((_g20866_ (values-count _g20865_)))
                                     (if (not (fx= _g20866_ 2))
                                         (error "Context expects 2 values"
                                                _g20866_)))
                                   (let ((_target1779517830_
                                          (values-ref _g20865_ 0))
                                         (_tl1779717832_
                                          (values-ref _g20865_ 1)))
                                     (letrec ((_loop1779817835_
                                               (lambda (_hd1779617838_
                                                        _arg1780217840_)
                                                 (if (gx#stx-pair?
                                                      _hd1779617838_)
                                                     (let ((_e1779917843_
                                                            (gx#stx-e
                                                             _hd1779617838_)))
                                                       (let ((_lp-hd1780017846_
                                                              (##car _e1779917843_))
                                                             (_lp-tl1780117848_
                                                              (##cdr _e1779917843_)))
                                                         (_loop1779817835_
                                                          _lp-tl1780117848_
                                                          (cons _lp-hd1780017846_
                                                                _arg1780217840_))))
                                                     (let ((_arg1780317851_
                                                            (reverse _arg1780217840_)))
                                                       ((lambda (_L17854_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L17855_)
                  (cons _L17756_
                        (cons (gxc#xform-wrap-source
                               (cons '%#call
                                     (cons (cons '%#ref (cons 'apply '()))
                                           (cons (cons '%#ref
                                                       (cons _id17775_ '()))
                                                 (foldr1 cons
                                                         (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '%#ref)
                             (cons _L17854_ '()))
                       '())
                 (begin
                   '#!void
                   (foldr1 (lambda (_g1786617869_ _g1786717871_)
                             (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                         (cons _g1786617869_ '()))
                                   _g1786717871_))
                           '()
                           _L17855_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _stx17698_)
                              '())))
                _tl1779717832_
                _arg1780317851_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_loop1779817835_
                                        _target1779517830_
                                        '())))))
                               (_g1778017825_ _g1778217828_))
                           (_g1778017825_ _g1778217828_))))
                    (_g1777817921_
                     (lambda (_g1778217877_)
                       (if (gx#stx-pair/null? _g1778217877_)
                           (if (fx>= (gx#stx-length _g1778217877_) '0)
                               (let ((_g20867_
                                      (gx#syntax-split-splice
                                       _g1778217877_
                                       '0)))
                                 (begin
                                   (let ((_g20868_ (values-count _g20867_)))
                                     (if (not (fx= _g20868_ 2))
                                         (error "Context expects 2 values"
                                                _g20868_)))
                                   (let ((_target1778417879_
                                          (values-ref _g20867_ 0))
                                         (_tl1778617881_
                                          (values-ref _g20867_ 1)))
                                     (if (gx#stx-null? _tl1778617881_)
                                         (letrec ((_loop1778717884_
                                                   (lambda (_hd1778517887_
                                                            _arg1779117889_)
                                                     (if (gx#stx-pair?
                                                          _hd1778517887_)
                                                         (let ((_e1778817892_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1778517887_)))
                   (let ((_lp-hd1778917895_ (##car _e1778817892_))
                         (_lp-tl1779017897_ (##cdr _e1778817892_)))
                     (_loop1778717884_
                      _lp-tl1779017897_
                      (cons _lp-hd1778917895_ _arg1779117889_))))
                 (let ((_arg1779217900_ (reverse _arg1779117889_)))
                   ((lambda (_L17903_)
                      (cons _L17756_
                            (cons (gxc#xform-wrap-source
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _id17775_ '()))
                                               (begin
                                                 '#!void
                                                 (foldr1 (lambda (_g1791317916_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1791417918_)
                   (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                               (cons _g1791317916_ '()))
                         _g1791417918_))
                 '()
                 _L17903_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _stx17698_)
                                  '())))
                    _arg1779217900_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop1778717884_
                                            _target1778417879_
                                            '()))
                                         (_g1777917874_ _g1778217877_)))))
                               (_g1777917874_ _g1778217877_))
                           (_g1777917874_ _g1778217877_)))))
               (_g1777817921_ _L17756_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_lp17703_
                                                _rest17728_
                                                (cons _id17775_ _ids17706_)
                                                (cons _impl17777_ _impls17707_)
                                                (cons _clause17924_
                                                      _clauses17708_))))
                                           _tl1773717752_
                                           _hd1773617750_)))
                                      (_g1773117742_ _g1773217745_)))))
                          (_g1773017927_ _clause17729_))))))
            (if (##pair? _rest1770917717_)
                (let ((_hd1771417933_ (##car _rest1770917717_))
                      (_tl1771517935_ (##cdr _rest1770917717_)))
                  (let* ((_clause17938_ _hd1771417933_)
                         (_rest17940_ _tl1771517935_))
                    (_K1771317930_ _rest17940_ _clause17938_)))
                (_else1771117725_))))))
    (begin
      (define gxc#lift-case-lambda-clauses__0
        (lambda (_stx17945_ _id17946_ _clauses17947_)
          (let ((_gensym?17949_ '#f))
            (gxc#lift-case-lambda-clauses__opt-lambda17696
             _stx17945_
             _id17946_
             _clauses17947_
             _gensym?17949_))))
      (define gxc#lift-case-lambda-clauses
        (lambda _g20870_
          (let ((_g20869_ (length _g20870_)))
            (cond ((fx= _g20869_ 3)
                   (apply gxc#lift-case-lambda-clauses__0 _g20870_))
                  ((fx= _g20869_ 4)
                   (apply gxc#lift-case-lambda-clauses__opt-lambda17696
                          _g20870_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#lift-case-lambda-clauses
                    _g20870_))))))))
  (define gxc#lift-top-lambda-define-values%
    (lambda (_stx17287_)
      (letrec ((_case-lambda-clause-def17289_
                (lambda (_id17694_ _impl17695_)
                  (gxc#xform-wrap-source
                   (cons '%#define-values
                         (cons (cons _id17694_ '())
                               (cons (gxc#compile-e _impl17695_) '())))
                   _stx17287_))))
        (let* ((_g1729317338_
                (lambda (_g1729417335_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1729417335_)))
               (_g1729217384_
                (lambda (_g1729417341_)
                  (if (gx#stx-pair? _g1729417341_)
                      (let ((_e1732517343_ (gx#stx-e _g1729417341_)))
                        (let ((_hd1732617346_ (##car _e1732517343_))
                              (_tl1732717348_ (##cdr _e1732517343_)))
                          (if (gx#stx-pair? _tl1732717348_)
                              (let ((_e1732817351_ (gx#stx-e _tl1732717348_)))
                                (let ((_hd1732917354_ (##car _e1732817351_))
                                      (_tl1733017356_ (##cdr _e1732817351_)))
                                  (if (gx#stx-pair? _tl1733017356_)
                                      (let ((_e1733117359_
                                             (gx#stx-e _tl1733017356_)))
                                        (let ((_hd1733217362_
                                               (##car _e1733117359_))
                                              (_tl1733317364_
                                               (##cdr _e1733117359_)))
                                          (if (gx#stx-null? _tl1733317364_)
                                              ((lambda (_L17367_ _L17368_)
                                                 (gxc#xform-wrap-source
                                                  (cons '%#define-values
                                                        (cons _L17368_
                                                              (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L17367_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx17287_))
                                               _hd1733217362_
                                               _hd1732917354_)
                                              (_g1729317338_ _g1729417341_))))
                                      (_g1729317338_ _g1729417341_))))
                              (_g1729317338_ _g1729417341_))))
                      (_g1729317338_ _g1729417341_))))
               (_g1729117566_
                (lambda (_g1729417387_)
                  (if (gx#stx-pair? _g1729417387_)
                      (let ((_e1731117389_ (gx#stx-e _g1729417387_)))
                        (let ((_hd1731217392_ (##car _e1731117389_))
                              (_tl1731317394_ (##cdr _e1731117389_)))
                          (if (gx#stx-pair? _tl1731317394_)
                              (let ((_e1731417397_ (gx#stx-e _tl1731317394_)))
                                (let ((_hd1731517400_ (##car _e1731417397_))
                                      (_tl1731617402_ (##cdr _e1731417397_)))
                                  (if (gx#stx-pair? _hd1731517400_)
                                      (let ((_e1731717405_
                                             (gx#stx-e _hd1731517400_)))
                                        (let ((_hd1731817408_
                                               (##car _e1731717405_))
                                              (_tl1731917410_
                                               (##cdr _e1731717405_)))
                                          (if (gx#stx-null? _tl1731917410_)
                                              (if (gx#stx-pair? _tl1731617402_)
                                                  (let ((_e1732017413_
                                                         (gx#stx-e
                                                          _tl1731617402_)))
                                                    (let ((_hd1732117416_
                                                           (##car _e1732017413_))
                                                          (_tl1732217418_
                                                           (##cdr _e1732017413_)))
                                                      (if (gx#stx-null?
                                                           _tl1732217418_)
                                                          ((lambda (_L17421_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L17422_)
                     (if (if (gx#identifier? _L17422_)
                             (gxc#opt-lambda-expr? _L17421_)
                             '#f)
                         (let* ((_g1743817468_
                                 (lambda (_g1743917465_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1743917465_)))
                                (_g1743717563_
                                 (lambda (_g1743917471_)
                                   (if (gx#stx-pair? _g1743917471_)
                                       (let ((_e1744317473_
                                              (gx#stx-e _g1743917471_)))
                                         (let ((_hd1744417476_
                                                (##car _e1744317473_))
                                               (_tl1744517478_
                                                (##cdr _e1744317473_)))
                                           (if (gx#stx-pair? _tl1744517478_)
                                               (let ((_e1744617481_
                                                      (gx#stx-e
                                                       _tl1744517478_)))
                                                 (let ((_hd1744717484_
                                                        (##car _e1744617481_))
                                                       (_tl1744817486_
                                                        (##cdr _e1744617481_)))
                                                   (if (gx#stx-pair?
                                                        _hd1744717484_)
                                                       (let ((_e1744917489_
                                                              (gx#stx-e
                                                               _hd1744717484_)))
                                                         (let ((_hd1745017492_
                                                                (##car _e1744917489_))
                                                               (_tl1745117494_
                                                                (##cdr _e1744917489_)))
                                                           (if (gx#stx-pair?
                                                                _hd1745017492_)
                                                               (let ((_e1745217497_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1745017492_)))
                         (let ((_hd1745317500_ (##car _e1745217497_))
                               (_tl1745417502_ (##cdr _e1745217497_)))
                           (if (gx#stx-pair? _hd1745317500_)
                               (let ((_e1745517505_ (gx#stx-e _hd1745317500_)))
                                 (let ((_hd1745617508_ (##car _e1745517505_))
                                       (_tl1745717510_ (##cdr _e1745517505_)))
                                   (if (gx#stx-null? _tl1745717510_)
                                       (if (gx#stx-pair? _tl1745417502_)
                                           (let ((_e1745817513_
                                                  (gx#stx-e _tl1745417502_)))
                                             (let ((_hd1745917516_
                                                    (##car _e1745817513_))
                                                   (_tl1746017518_
                                                    (##cdr _e1745817513_)))
                                               (if (gx#stx-null?
                                                    _tl1746017518_)
                                                   (if (gx#stx-null?
                                                        _tl1745117494_)
                                                       (if (gx#stx-pair?
                                                            _tl1744817486_)
                                                           (let ((_e1746117521_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1744817486_)))
                     (let ((_hd1746217524_ (##car _e1746117521_))
                           (_tl1746317526_ (##cdr _e1746117521_)))
                       (if (gx#stx-null? _tl1746317526_)
                           ((lambda (_L17529_ _L17530_ _L17531_)
                              (let* ((_lambda-id17555_
                                      (make-symbol
                                       (gx#stx-e _L17422_)
                                       '"__"
                                       (gx#stx-e _L17531_)))
                                     (_lambda-id17557_
                                      (gx#core-quote-syntax__1
                                       _lambda-id17555_
                                       (gx#stx-source _stx17287_)))
                                     (_g20871_
                                      (gx#core-bind-runtime!__0
                                       _lambda-id17557_))
                                     (_new-case-lambda-expr17560_
                                      (gxc#apply-expression-subst
                                       _L17529_
                                       _L17531_
                                       _lambda-id17557_)))
                                (begin
                                  (gxc#verbose
                                   '"lift opt-lambda dispatch "
                                   (gxc#generate-runtime-binding-id _L17422_)
                                   '" => "
                                   (gxc#generate-runtime-binding-id
                                    _lambda-id17557_))
                                  (gxc#xform-wrap-source
                                   (cons '%#begin
                                         (cons (gxc#xform-wrap-source
                                                (cons '%#define-values
                                                      (cons (cons _lambda-id17557_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (gxc#compile-e _L17530_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _stx17287_)
                                               (cons (gxc#lift-top-lambda-define-values%
                                                      (gxc#xform-wrap-source
                                                       (cons '%#define-values
                                                             (cons (cons _L17422_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons _new-case-lambda-expr17560_ '())))
               _stx17287_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   _stx17287_))))
                            _hd1746217524_
                            _hd1745917516_
                            _hd1745617508_)
                           (_g1743817468_ _g1743917471_))))
                   (_g1743817468_ _g1743917471_))
               (_g1743817468_ _g1743917471_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1743817468_
                                                    _g1743917471_))))
                                           (_g1743817468_ _g1743917471_))
                                       (_g1743817468_ _g1743917471_))))
                               (_g1743817468_ _g1743917471_))))
                       (_g1743817468_ _g1743917471_))))
               (_g1743817468_ _g1743917471_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1743817468_ _g1743917471_))))
                                       (_g1743817468_ _g1743917471_)))))
                           (_g1743717563_ _L17421_))
                         (_g1729217384_ _g1729417387_)))
                   _hd1732117416_
                   _hd1731817408_)
                  (_g1729217384_ _g1729417387_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1729217384_
                                                   _g1729417387_))
                                              (_g1729217384_ _g1729417387_))))
                                      (_g1729217384_ _g1729417387_))))
                              (_g1729217384_ _g1729417387_))))
                      (_g1729217384_ _g1729417387_))))
               (_g1729017691_
                (lambda (_g1729417569_)
                  (if (gx#stx-pair? _g1729417569_)
                      (let ((_e1729717571_ (gx#stx-e _g1729417569_)))
                        (let ((_hd1729817574_ (##car _e1729717571_))
                              (_tl1729917576_ (##cdr _e1729717571_)))
                          (if (gx#stx-pair? _tl1729917576_)
                              (let ((_e1730017579_ (gx#stx-e _tl1729917576_)))
                                (let ((_hd1730117582_ (##car _e1730017579_))
                                      (_tl1730217584_ (##cdr _e1730017579_)))
                                  (if (gx#stx-pair? _hd1730117582_)
                                      (let ((_e1730317587_
                                             (gx#stx-e _hd1730117582_)))
                                        (let ((_hd1730417590_
                                               (##car _e1730317587_))
                                              (_tl1730517592_
                                               (##cdr _e1730317587_)))
                                          (if (gx#stx-null? _tl1730517592_)
                                              (if (gx#stx-pair? _tl1730217584_)
                                                  (let ((_e1730617595_
                                                         (gx#stx-e
                                                          _tl1730217584_)))
                                                    (let ((_hd1730717598_
                                                           (##car _e1730617595_))
                                                          (_tl1730817600_
                                                           (##cdr _e1730617595_)))
                                                      (if (gx#stx-null?
                                                           _tl1730817600_)
                                                          ((lambda (_L17603_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L17604_)
                     (if (if (gx#identifier? _L17604_)
                             (gxc#case-lambda-expr? _L17603_)
                             '#f)
                         (let* ((_g1762117635_
                                 (lambda (_g1762217632_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1762217632_)))
                                (_g1762017666_
                                 (lambda (_g1762217638_)
                                   (if (gx#stx-pair? _g1762217638_)
                                       (let ((_e1762817640_
                                              (gx#stx-e _g1762217638_)))
                                         (let ((_hd1762917643_
                                                (##car _e1762817640_))
                                               (_tl1763017645_
                                                (##cdr _e1762817640_)))
                                           ((lambda (_L17648_)
                                              (let ((_g20872_
                                                     (gxc#lift-case-lambda-clauses__0
                                                      _stx17287_
                                                      _L17604_
                                                      _L17648_)))
                                                (begin
                                                  (let ((_g20873_
                                                         (values-count
                                                          _g20872_)))
                                                    (if (not (fx= _g20873_ 3))
                                                        (error "Context expects 3 values"
                                                               _g20873_)))
                                                  (let ((_ids17658_
                                                         (values-ref
                                                          _g20872_
                                                          0))
                                                        (_impls17659_
                                                         (values-ref
                                                          _g20872_
                                                          1))
                                                        (_clauses17660_
                                                         (values-ref
                                                          _g20872_
                                                          2)))
                                                    (let* ((_g20874_
                                                            (for-each
                                                             gx#core-bind-runtime!
                                                             _ids17658_))
                                                           (_defs17663_
                                                            (map _case-lambda-clause-def17289_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _ids17658_
                         _impls17659_)))
              (begin
                (gxc#verbose
                 '"lift case-lambda clauses "
                 (gxc#generate-runtime-binding-id _L17604_)
                 '" => "
                 (map gxc#identifier-symbol _ids17658_))
                (gxc#xform-wrap-source
                 (cons '%#begin
                       (foldr1 cons
                               (cons (gxc#xform-wrap-source
                                      (cons '%#define-values
                                            (cons (cons _L17604_ '())
                                                  (cons (gxc#xform-wrap-source
                                                         (cons '%#case-lambda
                                                               _clauses17660_)
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'case-lambda-expr))
                                                        '())))
                                      _stx17287_)
                                     '())
                               _defs17663_))
                 _stx17287_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _tl1763017645_)))
                                       (_g1762117635_ _g1762217638_))))
                                (_g1761917688_
                                 (lambda (_g1762217669_)
                                   (if (gx#stx-pair? _g1762217669_)
                                       (let ((_e1762417671_
                                              (gx#stx-e _g1762217669_)))
                                         (let ((_hd1762517674_
                                                (##car _e1762417671_))
                                               (_tl1762617676_
                                                (##cdr _e1762417671_)))
                                           ((lambda (_L17679_)
                                              (if (andmap1 gxc#dispatch-lambda-form?
                                                           _L17679_)
                                                  _stx17287_
                                                  (_g1762017666_
                                                   _g1762217669_)))
                                            _tl1762617676_)))
                                       (_g1762017666_ _g1762217669_)))))
                           (_g1761917688_ _L17603_))
                         (_g1729117566_ _g1729417569_)))
                   _hd1730717598_
                   _hd1730417590_)
                  (_g1729117566_ _g1729417569_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1729117566_
                                                   _g1729417569_))
                                              (_g1729117566_ _g1729417569_))))
                                      (_g1729117566_ _g1729417569_))))
                              (_g1729117566_ _g1729417569_))))
                      (_g1729117566_ _g1729417569_)))))
          (_g1729017691_ _stx17287_)))))
  (define gxc#lift-top-lambda-let-values%
    (lambda (_stx16710_)
      (letrec* ((_bind-e__opt-lambda17269__2082120822_
                 (lambda (_id17271_ _expr17272_ _compile?17273_)
                   (cons (cons _id17271_ '())
                         (cons (if _compile?17273_
                                   (gxc#compile-e _expr17272_)
                                   _expr17272_)
                               '()))))
                (_bind-e__0__2082320824_
                 (lambda (_id17278_ _expr17279_)
                   (let ((_compile?17281_ '#t))
                     (_bind-e__opt-lambda17269__2082120822_
                      _id17278_
                      _expr17279_
                      _compile?17281_))))
                (_bind-e16712_
                 (lambda _g20876_
                   (let ((_g20875_ (length _g20876_)))
                     (cond ((fx= _g20875_ 2)
                            (apply _bind-e__0__2082320824_ _g20876_))
                           ((fx= _g20875_ 3)
                            (apply _bind-e__opt-lambda17269__2082120822_
                                   _g20876_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g20876_))))))
                (_compile-bindings16713_
                 (lambda (_rest16855_)
                   (let _lp16857_ ((_rest16859_ _rest16855_)
                                   (_lift116860_ '())
                                   (_lift216861_ '())
                                   (_bind16862_ '()))
                     (let* ((_rest1686316871_ _rest16859_)
                            (_E1686616875_
                             (lambda ()
                               (error '"No clause matching" _rest1686316871_)))
                            (_else1686516879_
                             (lambda ()
                               (values (reverse _lift116860_)
                                       (reverse _lift216861_)
                                       (reverse _bind16862_))))
                            (_K1686717258_
                             (lambda (_rest16882_ _hd16883_)
                               (let* ((_g1688716923_
                                       (lambda (_g1688816920_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1688816920_)))
                                      (_g1688616964_
                                       (lambda (_g1688816926_)
                                         (if (gx#stx-pair? _g1688816926_)
                                             (let ((_e1691316928_
                                                    (gx#stx-e _g1688816926_)))
                                               (let ((_hd1691416931_
                                                      (##car _e1691316928_))
                                                     (_tl1691516933_
                                                      (##cdr _e1691316928_)))
                                                 (if (gx#stx-pair?
                                                      _tl1691516933_)
                                                     (let ((_e1691616936_
                                                            (gx#stx-e
                                                             _tl1691516933_)))
                                                       (let ((_hd1691716939_
                                                              (##car _e1691616936_))
                                                             (_tl1691816941_
                                                              (##cdr _e1691616936_)))
                                                         (if (gx#stx-null?
                                                              _tl1691816941_)
                                                             ((lambda (_L16944_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L16945_)
                        (_lp16857_
                         _rest16882_
                         _lift116860_
                         _lift216861_
                         (cons (cons _L16945_
                                     (cons (gxc#compile-e _L16944_) '()))
                               _bind16862_)))
                      _hd1691716939_
                      _hd1691416931_)
                     (_g1688716923_ _g1688816926_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1688716923_
                                                      _g1688816926_))))
                                             (_g1688716923_ _g1688816926_))))
                                      (_g1688517136_
                                       (lambda (_g1688816967_)
                                         (if (gx#stx-pair? _g1688816967_)
                                             (let ((_e1690216969_
                                                    (gx#stx-e _g1688816967_)))
                                               (let ((_hd1690316972_
                                                      (##car _e1690216969_))
                                                     (_tl1690416974_
                                                      (##cdr _e1690216969_)))
                                                 (if (gx#stx-pair?
                                                      _hd1690316972_)
                                                     (let ((_e1690516977_
                                                            (gx#stx-e
                                                             _hd1690316972_)))
                                                       (let ((_hd1690616980_
                                                              (##car _e1690516977_))
                                                             (_tl1690716982_
                                                              (##cdr _e1690516977_)))
                                                         (if (gx#stx-null?
                                                              _tl1690716982_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1690416974_)
                         (let ((_e1690816985_ (gx#stx-e _tl1690416974_)))
                           (let ((_hd1690916988_ (##car _e1690816985_))
                                 (_tl1691016990_ (##cdr _e1690816985_)))
                             (if (gx#stx-null? _tl1691016990_)
                                 ((lambda (_L16993_ _L16994_)
                                    (if (if (gx#identifier? _L16994_)
                                            (gxc#opt-lambda-expr? _L16993_)
                                            '#f)
                                        (let* ((_g1700817038_
                                                (lambda (_g1700917035_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1700917035_)))
                                               (_g1700717133_
                                                (lambda (_g1700917041_)
                                                  (if (gx#stx-pair?
                                                       _g1700917041_)
                                                      (let ((_e1701317043_
                                                             (gx#stx-e
                                                              _g1700917041_)))
                                                        (let ((_hd1701417046_
                                                               (##car _e1701317043_))
                                                              (_tl1701517048_
                                                               (##cdr _e1701317043_)))
                                                          (if (gx#stx-pair?
                                                               _tl1701517048_)
                                                              (let ((_e1701617051_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1701517048_)))
                        (let ((_hd1701717054_ (##car _e1701617051_))
                              (_tl1701817056_ (##cdr _e1701617051_)))
                          (if (gx#stx-pair? _hd1701717054_)
                              (let ((_e1701917059_ (gx#stx-e _hd1701717054_)))
                                (let ((_hd1702017062_ (##car _e1701917059_))
                                      (_tl1702117064_ (##cdr _e1701917059_)))
                                  (if (gx#stx-pair? _hd1702017062_)
                                      (let ((_e1702217067_
                                             (gx#stx-e _hd1702017062_)))
                                        (let ((_hd1702317070_
                                               (##car _e1702217067_))
                                              (_tl1702417072_
                                               (##cdr _e1702217067_)))
                                          (if (gx#stx-pair? _hd1702317070_)
                                              (let ((_e1702517075_
                                                     (gx#stx-e
                                                      _hd1702317070_)))
                                                (let ((_hd1702617078_
                                                       (##car _e1702517075_))
                                                      (_tl1702717080_
                                                       (##cdr _e1702517075_)))
                                                  (if (gx#stx-null?
                                                       _tl1702717080_)
                                                      (if (gx#stx-pair?
                                                           _tl1702417072_)
                                                          (let ((_e1702817083_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1702417072_)))
                    (let ((_hd1702917086_ (##car _e1702817083_))
                          (_tl1703017088_ (##cdr _e1702817083_)))
                      (if (gx#stx-null? _tl1703017088_)
                          (if (gx#stx-null? _tl1702117064_)
                              (if (gx#stx-pair? _tl1701817056_)
                                  (let ((_e1703117091_
                                         (gx#stx-e _tl1701817056_)))
                                    (let ((_hd1703217094_
                                           (##car _e1703117091_))
                                          (_tl1703317096_
                                           (##cdr _e1703117091_)))
                                      (if (gx#stx-null? _tl1703317096_)
                                          ((lambda (_L17099_ _L17100_ _L17101_)
                                             (let* ((_lambda-id17125_
                                                     (make-symbol
                                                      (gx#stx-e _L16994_)
                                                      '"__"
                                                      (gx#stx-e _L17101_)
                                                      (gensym '__)))
                                                    (_lambda-id17127_
                                                     (gx#core-quote-syntax__1
                                                      _lambda-id17125_
                                                      (gx#stx-source
                                                       _stx16710_)))
                                                    (_g20877_
                                                     (gx#core-bind-runtime!__0
                                                      _lambda-id17127_))
                                                    (_new-case-lambda-expr17130_
                                                     (gxc#apply-expression-subst
                                                      _L17099_
                                                      _L17101_
                                                      _lambda-id17127_)))
                                               (begin
                                                 (gxc#verbose
                                                  '"lift opt-lambda dispatch "
                                                  (gxc#generate-runtime-binding-id
                                                   _L16994_)
                                                  '" => "
                                                  (gxc#generate-runtime-binding-id
                                                   _lambda-id17127_))
                                                 (_lp16857_
                                                  (cons (_bind-e__opt-lambda17269__2082120822_
                                                         _L16994_
                                                         _new-case-lambda-expr17130_
                                                         '#f)
                                                        _rest16882_)
                                                  (cons (_bind-e__0__2082320824_
                                                         _lambda-id17127_
                                                         _L17100_)
                                                        _lift116860_)
                                                  _lift216861_
                                                  _bind16862_))))
                                           _hd1703217094_
                                           _hd1702917086_
                                           _hd1702617078_)
                                          (_g1700817038_ _g1700917041_))))
                                  (_g1700817038_ _g1700917041_))
                              (_g1700817038_ _g1700917041_))
                          (_g1700817038_ _g1700917041_))))
                  (_g1700817038_ _g1700917041_))
              (_g1700817038_ _g1700917041_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1700817038_ _g1700917041_))))
                                      (_g1700817038_ _g1700917041_))))
                              (_g1700817038_ _g1700917041_))))
                      (_g1700817038_ _g1700917041_))))
              (_g1700817038_ _g1700917041_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g1700717133_ _L16993_))
                                        (_g1688616964_ _g1688816967_)))
                                  _hd1690916988_
                                  _hd1690616980_)
                                 (_g1688616964_ _g1688816967_))))
                         (_g1688616964_ _g1688816967_))
                     (_g1688616964_ _g1688816967_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1688616964_
                                                      _g1688816967_))))
                                             (_g1688616964_ _g1688816967_))))
                                      (_g1688417255_
                                       (lambda (_g1688817139_)
                                         (if (gx#stx-pair? _g1688817139_)
                                             (let ((_e1689117141_
                                                    (gx#stx-e _g1688817139_)))
                                               (let ((_hd1689217144_
                                                      (##car _e1689117141_))
                                                     (_tl1689317146_
                                                      (##cdr _e1689117141_)))
                                                 (if (gx#stx-pair?
                                                      _hd1689217144_)
                                                     (let ((_e1689417149_
                                                            (gx#stx-e
                                                             _hd1689217144_)))
                                                       (let ((_hd1689517152_
                                                              (##car _e1689417149_))
                                                             (_tl1689617154_
                                                              (##cdr _e1689417149_)))
                                                         (if (gx#stx-null?
                                                              _tl1689617154_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1689317146_)
                         (let ((_e1689717157_ (gx#stx-e _tl1689317146_)))
                           (let ((_hd1689817160_ (##car _e1689717157_))
                                 (_tl1689917162_ (##cdr _e1689717157_)))
                             (if (gx#stx-null? _tl1689917162_)
                                 ((lambda (_L17165_ _L17166_)
                                    (if (if (gx#identifier? _L17166_)
                                            (gxc#case-lambda-expr? _L17165_)
                                            '#f)
                                        (let* ((_g1718117195_
                                                (lambda (_g1718217192_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1718217192_)))
                                               (_g1718017230_
                                                (lambda (_g1718217198_)
                                                  (if (gx#stx-pair?
                                                       _g1718217198_)
                                                      (let ((_e1718817200_
                                                             (gx#stx-e
                                                              _g1718217198_)))
                                                        (let ((_hd1718917203_
                                                               (##car _e1718817200_))
                                                              (_tl1719017205_
                                                               (##cdr _e1718817200_)))
                                                          ((lambda (_L17208_)
                                                             (let ((_g20878_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#lift-case-lambda-clauses__opt-lambda17696
                             _stx16710_
                             _L17166_
                             _L17208_
                             '#t)))
                       (begin
                         (let ((_g20879_ (values-count _g20878_)))
                           (if (not (fx= _g20879_ 3))
                               (error "Context expects 3 values" _g20879_)))
                         (let ((_ids17218_ (values-ref _g20878_ 0))
                               (_impls17219_ (values-ref _g20878_ 1))
                               (_clauses17220_ (values-ref _g20878_ 2)))
                           (let* ((_g20880_
                                   (for-each gx#core-bind-runtime! _ids17218_))
                                  (_xbind17223_
                                   (map _bind-e16712_ _ids17218_ _impls17219_))
                                  (_expr*17225_
                                   (gxc#xform-wrap-source
                                    (cons '%#case-lambda _clauses17220_)
                                    (gx#datum->syntax__0
                                     '#f
                                     'case-lambda-expr)))
                                  (_bind*17227_
                                   (_bind-e__opt-lambda17269__2082120822_
                                    _L17166_
                                    _expr*17225_
                                    '#f)))
                             (begin
                               (gxc#verbose
                                '"lift case-lambda clauses "
                                (gxc#generate-runtime-binding-id _L17166_)
                                '" => "
                                (map gxc#identifier-symbol _ids17218_))
                               (_lp16857_
                                _rest16882_
                                _lift116860_
                                (foldl1 cons _lift216861_ _xbind17223_)
                                (cons _bind*17227_ _bind16862_))))))))
                   _tl1719017205_)))
              (_g1718117195_ _g1718217198_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1717917252_
                                                (lambda (_g1718217233_)
                                                  (if (gx#stx-pair?
                                                       _g1718217233_)
                                                      (let ((_e1718417235_
                                                             (gx#stx-e
                                                              _g1718217233_)))
                                                        (let ((_hd1718517238_
                                                               (##car _e1718417235_))
                                                              (_tl1718617240_
                                                               (##cdr _e1718417235_)))
                                                          ((lambda (_L17243_)
                                                             (if (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _L17243_)
                         (_lp16857_
                          _rest16882_
                          _lift116860_
                          _lift216861_
                          (cons (_bind-e__opt-lambda17269__2082120822_
                                 _L17166_
                                 _L17165_
                                 '#f)
                                _bind16862_))
                         (_g1718017230_ _g1718217233_)))
                   _tl1718617240_)))
              (_g1718017230_ _g1718217233_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g1717917252_ _L17165_))
                                        (_g1688517136_ _g1688817139_)))
                                  _hd1689817160_
                                  _hd1689517152_)
                                 (_g1688517136_ _g1688817139_))))
                         (_g1688517136_ _g1688817139_))
                     (_g1688517136_ _g1688817139_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1688517136_
                                                      _g1688817139_))))
                                             (_g1688517136_ _g1688817139_)))))
                                 (_g1688417255_ _hd16883_)))))
                       (if (##pair? _rest1686316871_)
                           (let ((_hd1686817261_ (##car _rest1686316871_))
                                 (_tl1686917263_ (##cdr _rest1686316871_)))
                             (let* ((_hd17266_ _hd1686817261_)
                                    (_rest17268_ _tl1686917263_))
                               (_K1686717258_ _rest17268_ _hd17266_)))
                           (_else1686516879_)))))))
        (let* ((_g1671616742_
                (lambda (_g1671716739_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1671716739_)))
               (_g1671516749_
                (lambda (_g1671716745_)
                  ((lambda () (gxc#xform-let-values% _stx16710_)))))
               (_g1671416852_
                (lambda (_g1671716752_)
                  (if (gx#stx-pair? _g1671716752_)
                      (let ((_e1672016754_ (gx#stx-e _g1671716752_)))
                        (let ((_hd1672116757_ (##car _e1672016754_))
                              (_tl1672216759_ (##cdr _e1672016754_)))
                          (if (gx#stx-pair? _tl1672216759_)
                              (let ((_e1672316762_ (gx#stx-e _tl1672216759_)))
                                (let ((_hd1672416765_ (##car _e1672316762_))
                                      (_tl1672516767_ (##cdr _e1672316762_)))
                                  (if (gx#stx-pair/null? _hd1672416765_)
                                      (if (fx>= (gx#stx-length _hd1672416765_)
                                                '0)
                                          (let ((_g20881_
                                                 (gx#syntax-split-splice
                                                  _hd1672416765_
                                                  '0)))
                                            (begin
                                              (let ((_g20882_
                                                     (values-count _g20881_)))
                                                (if (not (fx= _g20882_ 2))
                                                    (error "Context expects 2 values"
                                                           _g20882_)))
                                              (let ((_target1672616770_
                                                     (values-ref _g20881_ 0))
                                                    (_tl1672816772_
                                                     (values-ref _g20881_ 1)))
                                                (if (gx#stx-null?
                                                     _tl1672816772_)
                                                    (letrec ((_loop1672916775_
                                                              (lambda (_hd1672716778_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind1673316780_)
                        (if (gx#stx-pair? _hd1672716778_)
                            (let ((_e1673016783_ (gx#stx-e _hd1672716778_)))
                              (let ((_lp-hd1673116786_ (##car _e1673016783_))
                                    (_lp-tl1673216788_ (##cdr _e1673016783_)))
                                (_loop1672916775_
                                 _lp-tl1673216788_
                                 (cons _lp-hd1673116786_ _bind1673316780_))))
                            (let ((_bind1673416791_
                                   (reverse _bind1673316780_)))
                              (if (gx#stx-pair? _tl1672516767_)
                                  (let ((_e1673516794_
                                         (gx#stx-e _tl1672516767_)))
                                    (let ((_hd1673616797_
                                           (##car _e1673516794_))
                                          (_tl1673716799_
                                           (##cdr _e1673516794_)))
                                      (if (gx#stx-null? _tl1673716799_)
                                          ((lambda (_L16802_ _L16803_)
                                             (if (ormap1 gxc#lift-top-lambda-binding?
                                                         (begin
                                                           '#!void
                                                           (foldr1 (lambda (_g1682316826_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g1682416828_)
                             (cons _g1682316826_ _g1682416828_))
                           '()
                           _L16803_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (call-with-parameters
                                                  (lambda ()
                                                    (let ((_g20883_
                                                           (_compile-bindings16713_
                                                            (begin
                                                              '#!void
                                                              (foldr1 (lambda (_g1683116834_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g1683216836_)
                                (cons _g1683116834_ _g1683216836_))
                              '()
                              _L16803_)))))
              (begin
                (let ((_g20884_ (values-count _g20883_)))
                  (if (not (fx= _g20884_ 3))
                      (error "Context expects 3 values" _g20884_)))
                (let ((_lift116839_ (values-ref _g20883_ 0))
                      (_lift216840_ (values-ref _g20883_ 1))
                      (_hd16841_ (values-ref _g20883_ 2)))
                  (let* ((_body16843_ (gxc#compile-e _L16802_))
                         (_expr16845_
                          (gxc#xform-wrap-source
                           (cons '%#let-values
                                 (cons _hd16841_ (cons _body16843_ '())))
                           _stx16710_))
                         (_expr16847_
                          (if (null? _lift216840_)
                              _expr16845_
                              (gxc#xform-wrap-source
                               (cons '%#let-values
                                     (cons _lift216840_
                                           (cons _expr16845_ '())))
                               _stx16710_)))
                         (_expr16849_
                          (if (null? _lift116839_)
                              _expr16847_
                              (gxc#xform-wrap-source
                               (cons '%#let-values
                                     (cons _lift116839_
                                           (cons _expr16847_ '())))
                               _stx16710_))))
                    _expr16849_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  gx#current-expander-context
                                                  (let ((__obj20831
                                                         (make-object
                                                          gx#local-context::t
                                                          '5)))
                                                    (begin
                                                      (gx#local-context:::init!__0
                                                       __obj20831)
                                                      __obj20831)))
                                                 (_g1671516749_
                                                  _g1671716752_)))
                                           _hd1673616797_
                                           _bind1673416791_)
                                          (_g1671516749_ _g1671716752_))))
                                  (_g1671516749_ _g1671716752_)))))))
              (_loop1672916775_ _target1672616770_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1671516749_
                                                     _g1671716752_)))))
                                          (_g1671516749_ _g1671716752_))
                                      (_g1671516749_ _g1671716752_))))
                              (_g1671516749_ _g1671716752_))))
                      (_g1671516749_ _g1671716752_)))))
          (_g1671416852_ _stx16710_)))))
  (define gxc#lift-top-lambda-letrec-values%
    (lambda (_stx16142_)
      (letrec* ((_bind-e__opt-lambda16692__2082620827_
                 (lambda (_id16694_ _expr16695_ _compile?16696_)
                   (cons (cons _id16694_ '())
                         (cons (if _compile?16696_
                                   (gxc#compile-e _expr16695_)
                                   _expr16695_)
                               '()))))
                (_bind-e__0__2082820829_
                 (lambda (_id16701_ _expr16702_)
                   (let ((_compile?16704_ '#t))
                     (_bind-e__opt-lambda16692__2082620827_
                      _id16701_
                      _expr16702_
                      _compile?16704_))))
                (_bind-e16144_
                 (lambda _g20886_
                   (let ((_g20885_ (length _g20886_)))
                     (cond ((fx= _g20885_ 2)
                            (apply _bind-e__0__2082820829_ _g20886_))
                           ((fx= _g20885_ 3)
                            (apply _bind-e__opt-lambda16692__2082620827_
                                   _g20886_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g20886_))))))
                (_compile-bindings16145_
                 (lambda (_rest16280_)
                   (let _lp16282_ ((_rest16284_ _rest16280_) (_bind16285_ '()))
                     (let* ((_rest1628616294_ _rest16284_)
                            (_E1628916298_
                             (lambda ()
                               (error '"No clause matching" _rest1628616294_)))
                            (_else1628816302_
                             (lambda () (reverse _bind16285_)))
                            (_K1629016681_
                             (lambda (_rest16305_ _hd16306_)
                               (let* ((_g1631016346_
                                       (lambda (_g1631116343_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1631116343_)))
                                      (_g1630916387_
                                       (lambda (_g1631116349_)
                                         (if (gx#stx-pair? _g1631116349_)
                                             (let ((_e1633616351_
                                                    (gx#stx-e _g1631116349_)))
                                               (let ((_hd1633716354_
                                                      (##car _e1633616351_))
                                                     (_tl1633816356_
                                                      (##cdr _e1633616351_)))
                                                 (if (gx#stx-pair?
                                                      _tl1633816356_)
                                                     (let ((_e1633916359_
                                                            (gx#stx-e
                                                             _tl1633816356_)))
                                                       (let ((_hd1634016362_
                                                              (##car _e1633916359_))
                                                             (_tl1634116364_
                                                              (##cdr _e1633916359_)))
                                                         (if (gx#stx-null?
                                                              _tl1634116364_)
                                                             ((lambda (_L16367_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L16368_)
                        (_lp16282_
                         _rest16305_
                         (cons (cons _L16368_
                                     (cons (gxc#compile-e _L16367_) '()))
                               _bind16285_)))
                      _hd1634016362_
                      _hd1633716354_)
                     (_g1631016346_ _g1631116349_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1631016346_
                                                      _g1631116349_))))
                                             (_g1631016346_ _g1631116349_))))
                                      (_g1630816559_
                                       (lambda (_g1631116390_)
                                         (if (gx#stx-pair? _g1631116390_)
                                             (let ((_e1632516392_
                                                    (gx#stx-e _g1631116390_)))
                                               (let ((_hd1632616395_
                                                      (##car _e1632516392_))
                                                     (_tl1632716397_
                                                      (##cdr _e1632516392_)))
                                                 (if (gx#stx-pair?
                                                      _hd1632616395_)
                                                     (let ((_e1632816400_
                                                            (gx#stx-e
                                                             _hd1632616395_)))
                                                       (let ((_hd1632916403_
                                                              (##car _e1632816400_))
                                                             (_tl1633016405_
                                                              (##cdr _e1632816400_)))
                                                         (if (gx#stx-null?
                                                              _tl1633016405_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1632716397_)
                         (let ((_e1633116408_ (gx#stx-e _tl1632716397_)))
                           (let ((_hd1633216411_ (##car _e1633116408_))
                                 (_tl1633316413_ (##cdr _e1633116408_)))
                             (if (gx#stx-null? _tl1633316413_)
                                 ((lambda (_L16416_ _L16417_)
                                    (if (if (gx#identifier? _L16417_)
                                            (gxc#opt-lambda-expr? _L16416_)
                                            '#f)
                                        (let* ((_g1643116461_
                                                (lambda (_g1643216458_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1643216458_)))
                                               (_g1643016556_
                                                (lambda (_g1643216464_)
                                                  (if (gx#stx-pair?
                                                       _g1643216464_)
                                                      (let ((_e1643616466_
                                                             (gx#stx-e
                                                              _g1643216464_)))
                                                        (let ((_hd1643716469_
                                                               (##car _e1643616466_))
                                                              (_tl1643816471_
                                                               (##cdr _e1643616466_)))
                                                          (if (gx#stx-pair?
                                                               _tl1643816471_)
                                                              (let ((_e1643916474_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1643816471_)))
                        (let ((_hd1644016477_ (##car _e1643916474_))
                              (_tl1644116479_ (##cdr _e1643916474_)))
                          (if (gx#stx-pair? _hd1644016477_)
                              (let ((_e1644216482_ (gx#stx-e _hd1644016477_)))
                                (let ((_hd1644316485_ (##car _e1644216482_))
                                      (_tl1644416487_ (##cdr _e1644216482_)))
                                  (if (gx#stx-pair? _hd1644316485_)
                                      (let ((_e1644516490_
                                             (gx#stx-e _hd1644316485_)))
                                        (let ((_hd1644616493_
                                               (##car _e1644516490_))
                                              (_tl1644716495_
                                               (##cdr _e1644516490_)))
                                          (if (gx#stx-pair? _hd1644616493_)
                                              (let ((_e1644816498_
                                                     (gx#stx-e
                                                      _hd1644616493_)))
                                                (let ((_hd1644916501_
                                                       (##car _e1644816498_))
                                                      (_tl1645016503_
                                                       (##cdr _e1644816498_)))
                                                  (if (gx#stx-null?
                                                       _tl1645016503_)
                                                      (if (gx#stx-pair?
                                                           _tl1644716495_)
                                                          (let ((_e1645116506_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1644716495_)))
                    (let ((_hd1645216509_ (##car _e1645116506_))
                          (_tl1645316511_ (##cdr _e1645116506_)))
                      (if (gx#stx-null? _tl1645316511_)
                          (if (gx#stx-null? _tl1644416487_)
                              (if (gx#stx-pair? _tl1644116479_)
                                  (let ((_e1645416514_
                                         (gx#stx-e _tl1644116479_)))
                                    (let ((_hd1645516517_
                                           (##car _e1645416514_))
                                          (_tl1645616519_
                                           (##cdr _e1645416514_)))
                                      (if (gx#stx-null? _tl1645616519_)
                                          ((lambda (_L16522_ _L16523_ _L16524_)
                                             (let* ((_lambda-id16548_
                                                     (make-symbol
                                                      (gx#stx-e _L16417_)
                                                      '"__"
                                                      (gx#stx-e _L16524_)
                                                      (gensym '__)))
                                                    (_lambda-id16550_
                                                     (gx#core-quote-syntax__1
                                                      _lambda-id16548_
                                                      (gx#stx-source
                                                       _stx16142_)))
                                                    (_g20887_
                                                     (gx#core-bind-runtime!__0
                                                      _lambda-id16550_))
                                                    (_new-case-lambda-expr16553_
                                                     (gxc#apply-expression-subst
                                                      _L16522_
                                                      _L16524_
                                                      _lambda-id16550_)))
                                               (begin
                                                 (gxc#verbose
                                                  '"lift opt-lambda dispatch "
                                                  (gxc#generate-runtime-binding-id
                                                   _L16417_)
                                                  '" => "
                                                  (gxc#generate-runtime-binding-id
                                                   _lambda-id16550_))
                                                 (_lp16282_
                                                  (cons (_bind-e__opt-lambda16692__2082620827_
                                                         _L16417_
                                                         _new-case-lambda-expr16553_
                                                         '#f)
                                                        _rest16305_)
                                                  (cons (_bind-e__0__2082820829_
                                                         _lambda-id16550_
                                                         _L16523_)
                                                        _bind16285_)))))
                                           _hd1645516517_
                                           _hd1645216509_
                                           _hd1644916501_)
                                          (_g1643116461_ _g1643216464_))))
                                  (_g1643116461_ _g1643216464_))
                              (_g1643116461_ _g1643216464_))
                          (_g1643116461_ _g1643216464_))))
                  (_g1643116461_ _g1643216464_))
              (_g1643116461_ _g1643216464_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1643116461_ _g1643216464_))))
                                      (_g1643116461_ _g1643216464_))))
                              (_g1643116461_ _g1643216464_))))
                      (_g1643116461_ _g1643216464_))))
              (_g1643116461_ _g1643216464_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g1643016556_ _L16416_))
                                        (_g1630916387_ _g1631116390_)))
                                  _hd1633216411_
                                  _hd1632916403_)
                                 (_g1630916387_ _g1631116390_))))
                         (_g1630916387_ _g1631116390_))
                     (_g1630916387_ _g1631116390_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1630916387_
                                                      _g1631116390_))))
                                             (_g1630916387_ _g1631116390_))))
                                      (_g1630716678_
                                       (lambda (_g1631116562_)
                                         (if (gx#stx-pair? _g1631116562_)
                                             (let ((_e1631416564_
                                                    (gx#stx-e _g1631116562_)))
                                               (let ((_hd1631516567_
                                                      (##car _e1631416564_))
                                                     (_tl1631616569_
                                                      (##cdr _e1631416564_)))
                                                 (if (gx#stx-pair?
                                                      _hd1631516567_)
                                                     (let ((_e1631716572_
                                                            (gx#stx-e
                                                             _hd1631516567_)))
                                                       (let ((_hd1631816575_
                                                              (##car _e1631716572_))
                                                             (_tl1631916577_
                                                              (##cdr _e1631716572_)))
                                                         (if (gx#stx-null?
                                                              _tl1631916577_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1631616569_)
                         (let ((_e1632016580_ (gx#stx-e _tl1631616569_)))
                           (let ((_hd1632116583_ (##car _e1632016580_))
                                 (_tl1632216585_ (##cdr _e1632016580_)))
                             (if (gx#stx-null? _tl1632216585_)
                                 ((lambda (_L16588_ _L16589_)
                                    (if (if (gx#identifier? _L16589_)
                                            (gxc#case-lambda-expr? _L16588_)
                                            '#f)
                                        (let* ((_g1660416618_
                                                (lambda (_g1660516615_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1660516615_)))
                                               (_g1660316653_
                                                (lambda (_g1660516621_)
                                                  (if (gx#stx-pair?
                                                       _g1660516621_)
                                                      (let ((_e1661116623_
                                                             (gx#stx-e
                                                              _g1660516621_)))
                                                        (let ((_hd1661216626_
                                                               (##car _e1661116623_))
                                                              (_tl1661316628_
                                                               (##cdr _e1661116623_)))
                                                          ((lambda (_L16631_)
                                                             (let ((_g20888_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#lift-case-lambda-clauses__opt-lambda17696
                             _stx16142_
                             _L16589_
                             _L16631_
                             '#t)))
                       (begin
                         (let ((_g20889_ (values-count _g20888_)))
                           (if (not (fx= _g20889_ 3))
                               (error "Context expects 3 values" _g20889_)))
                         (let ((_ids16641_ (values-ref _g20888_ 0))
                               (_impls16642_ (values-ref _g20888_ 1))
                               (_clauses16643_ (values-ref _g20888_ 2)))
                           (let* ((_g20890_
                                   (for-each gx#core-bind-runtime! _ids16641_))
                                  (_xbind16646_
                                   (map _bind-e16144_ _ids16641_ _impls16642_))
                                  (_expr*16648_
                                   (gxc#xform-wrap-source
                                    (cons '%#case-lambda _clauses16643_)
                                    (gx#datum->syntax__0
                                     '#f
                                     'case-lambda-expr)))
                                  (_bind*16650_
                                   (_bind-e__opt-lambda16692__2082620827_
                                    _L16589_
                                    _expr*16648_
                                    '#f)))
                             (begin
                               (gxc#verbose
                                '"lift case-lambda clauses "
                                (gxc#generate-runtime-binding-id _L16589_)
                                '" => "
                                (map gxc#identifier-symbol _ids16641_))
                               (_lp16282_
                                _rest16305_
                                (cons _bind*16650_
                                      (foldl1 cons
                                              _bind16285_
                                              _xbind16646_)))))))))
                   _tl1661316628_)))
              (_g1660416618_ _g1660516621_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1660216675_
                                                (lambda (_g1660516656_)
                                                  (if (gx#stx-pair?
                                                       _g1660516656_)
                                                      (let ((_e1660716658_
                                                             (gx#stx-e
                                                              _g1660516656_)))
                                                        (let ((_hd1660816661_
                                                               (##car _e1660716658_))
                                                              (_tl1660916663_
                                                               (##cdr _e1660716658_)))
                                                          ((lambda (_L16666_)
                                                             (if (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _L16666_)
                         (_lp16282_
                          _rest16305_
                          (cons (_bind-e__opt-lambda16692__2082620827_
                                 _L16589_
                                 _L16588_
                                 '#f)
                                _bind16285_))
                         (_g1660316653_ _g1660516656_)))
                   _tl1660916663_)))
              (_g1660316653_ _g1660516656_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g1660216675_ _L16588_))
                                        (_g1630816559_ _g1631116562_)))
                                  _hd1632116583_
                                  _hd1631816575_)
                                 (_g1630816559_ _g1631116562_))))
                         (_g1630816559_ _g1631116562_))
                     (_g1630816559_ _g1631116562_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1630816559_
                                                      _g1631116562_))))
                                             (_g1630816559_ _g1631116562_)))))
                                 (_g1630716678_ _hd16306_)))))
                       (if (##pair? _rest1628616294_)
                           (let ((_hd1629116684_ (##car _rest1628616294_))
                                 (_tl1629216686_ (##cdr _rest1628616294_)))
                             (let* ((_hd16689_ _hd1629116684_)
                                    (_rest16691_ _tl1629216686_))
                               (_K1629016681_ _rest16691_ _hd16689_)))
                           (_else1628816302_)))))))
        (let* ((_g1614816175_
                (lambda (_g1614916172_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1614916172_)))
               (_g1614716182_
                (lambda (_g1614916178_)
                  ((lambda () (gxc#xform-let-values% _stx16142_)))))
               (_g1614616277_
                (lambda (_g1614916185_)
                  (if (gx#stx-pair? _g1614916185_)
                      (let ((_e1615316187_ (gx#stx-e _g1614916185_)))
                        (let ((_hd1615416190_ (##car _e1615316187_))
                              (_tl1615516192_ (##cdr _e1615316187_)))
                          (if (gx#stx-pair? _tl1615516192_)
                              (let ((_e1615616195_ (gx#stx-e _tl1615516192_)))
                                (let ((_hd1615716198_ (##car _e1615616195_))
                                      (_tl1615816200_ (##cdr _e1615616195_)))
                                  (if (gx#stx-pair/null? _hd1615716198_)
                                      (if (fx>= (gx#stx-length _hd1615716198_)
                                                '0)
                                          (let ((_g20891_
                                                 (gx#syntax-split-splice
                                                  _hd1615716198_
                                                  '0)))
                                            (begin
                                              (let ((_g20892_
                                                     (values-count _g20891_)))
                                                (if (not (fx= _g20892_ 2))
                                                    (error "Context expects 2 values"
                                                           _g20892_)))
                                              (let ((_target1615916203_
                                                     (values-ref _g20891_ 0))
                                                    (_tl1616116205_
                                                     (values-ref _g20891_ 1)))
                                                (if (gx#stx-null?
                                                     _tl1616116205_)
                                                    (letrec ((_loop1616216208_
                                                              (lambda (_hd1616016211_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind1616616213_)
                        (if (gx#stx-pair? _hd1616016211_)
                            (let ((_e1616316216_ (gx#stx-e _hd1616016211_)))
                              (let ((_lp-hd1616416219_ (##car _e1616316216_))
                                    (_lp-tl1616516221_ (##cdr _e1616316216_)))
                                (_loop1616216208_
                                 _lp-tl1616516221_
                                 (cons _lp-hd1616416219_ _bind1616616213_))))
                            (let ((_bind1616716224_
                                   (reverse _bind1616616213_)))
                              (if (gx#stx-pair? _tl1615816200_)
                                  (let ((_e1616816227_
                                         (gx#stx-e _tl1615816200_)))
                                    (let ((_hd1616916230_
                                           (##car _e1616816227_))
                                          (_tl1617016232_
                                           (##cdr _e1616816227_)))
                                      (if (gx#stx-null? _tl1617016232_)
                                          ((lambda (_L16235_ _L16236_ _L16237_)
                                             (if (ormap1 gxc#lift-top-lambda-binding?
                                                         (begin
                                                           '#!void
                                                           (foldr1 (lambda (_g1625816261_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g1625916263_)
                             (cons _g1625816261_ _g1625916263_))
                           '()
                           _L16236_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (call-with-parameters
                                                  (lambda ()
                                                    (let ((_hd16274_
                                                           (_compile-bindings16145_
                                                            (begin
                                                              '#!void
                                                              (foldr1 (lambda (_g1626616269_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g1626716271_)
                                (cons _g1626616269_ _g1626716271_))
                              '()
                              _L16236_))))
                  (_body16275_ (gxc#compile-e _L16235_)))
              (gxc#xform-wrap-source
               (cons _L16237_ (cons _hd16274_ (cons _body16275_ '())))
               _stx16142_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  gx#current-expander-context
                                                  (let ((__obj20832
                                                         (make-object
                                                          gx#local-context::t
                                                          '5)))
                                                    (begin
                                                      (gx#local-context:::init!__0
                                                       __obj20832)
                                                      __obj20832)))
                                                 (_g1614716182_
                                                  _g1614916185_)))
                                           _hd1616916230_
                                           _bind1616716224_
                                           _hd1615416190_)
                                          (_g1614716182_ _g1614916185_))))
                                  (_g1614716182_ _g1614916185_)))))))
              (_loop1616216208_ _target1615916203_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1614716182_
                                                     _g1614916185_)))))
                                          (_g1614716182_ _g1614916185_))
                                      (_g1614716182_ _g1614916185_))))
                              (_g1614716182_ _g1614916185_))))
                      (_g1614716182_ _g1614916185_)))))
          (_g1614616277_ _stx16142_)))))
  (define gxc#lift-top-lambda-binding?
    (lambda (_bind16063_)
      (let* ((_g1606616083_
              (lambda (_g1606716080_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1606716080_)))
             (_g1606516090_ (lambda (_g1606716086_) ((lambda () '#f))))
             (_g1606416139_
              (lambda (_g1606716093_)
                (if (gx#stx-pair? _g1606716093_)
                    (let ((_e1607016095_ (gx#stx-e _g1606716093_)))
                      (let ((_hd1607116098_ (##car _e1607016095_))
                            (_tl1607216100_ (##cdr _e1607016095_)))
                        (if (gx#stx-pair? _hd1607116098_)
                            (let ((_e1607316103_ (gx#stx-e _hd1607116098_)))
                              (let ((_hd1607416106_ (##car _e1607316103_))
                                    (_tl1607516108_ (##cdr _e1607316103_)))
                                (if (gx#stx-null? _tl1607516108_)
                                    (if (gx#stx-pair? _tl1607216100_)
                                        (let ((_e1607616111_
                                               (gx#stx-e _tl1607216100_)))
                                          (let ((_hd1607716114_
                                                 (##car _e1607616111_))
                                                (_tl1607816116_
                                                 (##cdr _e1607616111_)))
                                            (if (gx#stx-null? _tl1607816116_)
                                                ((lambda (_L16119_ _L16120_)
                                                   (if (gx#identifier?
                                                        _L16120_)
                                                       (let ((_$e16136_
                                                              (gxc#case-lambda-expr?
                                                               _L16119_)))
                                                         (if _$e16136_
                                                             _$e16136_
                                                             (gxc#opt-lambda-expr?
                                                              _L16119_)))
                                                       '#f))
                                                 _hd1607716114_
                                                 _hd1607416106_)
                                                (_g1606516090_
                                                 _g1606716093_))))
                                        (_g1606516090_ _g1606716093_))
                                    (_g1606516090_ _g1606716093_))))
                            (_g1606516090_ _g1606716093_))))
                    (_g1606516090_ _g1606716093_)))))
        (_g1606416139_ _bind16063_))))
  (define gxc#expression-subst-ref%
    (lambda (_stx16001_ _id16002_ _new-id16003_)
      (let* ((_g1600616019_
              (lambda (_g1600716016_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1600716016_)))
             (_g1600516026_ (lambda (_g1600716022_) ((lambda () _stx16001_))))
             (_g1600416060_
              (lambda (_g1600716029_)
                (if (gx#stx-pair? _g1600716029_)
                    (let ((_e1600916031_ (gx#stx-e _g1600716029_)))
                      (let ((_hd1601016034_ (##car _e1600916031_))
                            (_tl1601116036_ (##cdr _e1600916031_)))
                        (if (gx#stx-pair? _tl1601116036_)
                            (let ((_e1601216039_ (gx#stx-e _tl1601116036_)))
                              (let ((_hd1601316042_ (##car _e1601216039_))
                                    (_tl1601416044_ (##cdr _e1601216039_)))
                                (if (gx#stx-null? _tl1601416044_)
                                    ((lambda (_L16047_)
                                       (if (gx#free-identifier=?
                                            _L16047_
                                            _id16002_)
                                           (gxc#xform-wrap-source
                                            (cons '%#ref
                                                  (cons _new-id16003_ '()))
                                            _stx16001_)
                                           (_g1600516026_ _g1600716029_)))
                                     _hd1601316042_)
                                    (_g1600516026_ _g1600716029_))))
                            (_g1600516026_ _g1600716029_))))
                    (_g1600516026_ _g1600716029_)))))
        (_g1600416060_ _stx16001_))))
  (define gxc#collect-type-define-values%
    (lambda (_stx15857_)
      (let* ((_g1586015891_
              (lambda (_g1586115888_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1586115888_)))
             (_g1585915936_
              (lambda (_g1586115894_)
                (if (gx#stx-pair? _g1586115894_)
                    (let ((_e1587815896_ (gx#stx-e _g1586115894_)))
                      (let ((_hd1587915899_ (##car _e1587815896_))
                            (_tl1588015901_ (##cdr _e1587815896_)))
                        (if (gx#stx-pair? _tl1588015901_)
                            (let ((_e1588115904_ (gx#stx-e _tl1588015901_)))
                              (let ((_hd1588215907_ (##car _e1588115904_))
                                    (_tl1588315909_ (##cdr _e1588115904_)))
                                (if (gx#stx-pair? _tl1588315909_)
                                    (let ((_e1588415912_
                                           (gx#stx-e _tl1588315909_)))
                                      (let ((_hd1588515915_
                                             (##car _e1588415912_))
                                            (_tl1588615917_
                                             (##cdr _e1588415912_)))
                                        (if (gx#stx-null? _tl1588615917_)
                                            ((lambda (_L15920_ _L15921_)
                                               (gxc#compile-e _L15920_))
                                             _hd1588515915_
                                             _hd1588215907_)
                                            (_g1586015891_ _g1586115894_))))
                                    (_g1586015891_ _g1586115894_))))
                            (_g1586015891_ _g1586115894_))))
                    (_g1586015891_ _g1586115894_))))
             (_g1585815998_
              (lambda (_g1586115939_)
                (if (gx#stx-pair? _g1586115939_)
                    (let ((_e1586415941_ (gx#stx-e _g1586115939_)))
                      (let ((_hd1586515944_ (##car _e1586415941_))
                            (_tl1586615946_ (##cdr _e1586415941_)))
                        (if (gx#stx-pair? _tl1586615946_)
                            (let ((_e1586715949_ (gx#stx-e _tl1586615946_)))
                              (let ((_hd1586815952_ (##car _e1586715949_))
                                    (_tl1586915954_ (##cdr _e1586715949_)))
                                (if (gx#stx-pair? _hd1586815952_)
                                    (let ((_e1587015957_
                                           (gx#stx-e _hd1586815952_)))
                                      (let ((_hd1587115960_
                                             (##car _e1587015957_))
                                            (_tl1587215962_
                                             (##cdr _e1587015957_)))
                                        (if (gx#stx-null? _tl1587215962_)
                                            (if (gx#stx-pair? _tl1586915954_)
                                                (let ((_e1587315965_
                                                       (gx#stx-e
                                                        _tl1586915954_)))
                                                  (let ((_hd1587415968_
                                                         (##car _e1587315965_))
                                                        (_tl1587515970_
                                                         (##cdr _e1587315965_)))
                                                    (if (gx#stx-null?
                                                         _tl1587515970_)
                                                        ((lambda (_L15973_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L15974_)
                   (if (gx#identifier? _L15974_)
                       (let ((_sym15990_
                              (gxc#generate-runtime-binding-id _L15974_)))
                         (begin
                           (if (table-ref
                                (gxc#current-compile-mutators)
                                _sym15990_
                                '#f)
                               (gxc#verbose
                                '"skipping type declaration for mutable binding "
                                _sym15990_)
                               (let ((_type1599115993_
                                      (gxc#apply-basic-expression-type
                                       _L15973_)))
                                 (if _type1599115993_
                                     (let ((_type15996_ _type1599115993_))
                                       (gxc#optimizer-declare-type!__0
                                        _sym15990_
                                        _type15996_))
                                     '#f)))
                           (gxc#compile-e _L15973_)))
                       (_g1585915936_ _g1586115939_)))
                 _hd1587415968_
                 _hd1587115960_)
                (_g1585915936_ _g1586115939_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1585915936_ _g1586115939_))
                                            (_g1585915936_ _g1586115939_))))
                                    (_g1585915936_ _g1586115939_))))
                            (_g1585915936_ _g1586115939_))))
                    (_g1585915936_ _g1586115939_)))))
        (_g1585815998_ _stx15857_))))
  (define gxc#collect-type-let-values%
    (lambda (_stx15642_)
      (letrec ((_collect-e15644_
                (lambda (_hd15801_ _expr15802_)
                  (let* ((_g1580515815_
                          (lambda (_g1580615812_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g1580615812_)))
                         (_g1580415822_
                          (lambda (_g1580615818_) ((lambda () '#!void))))
                         (_g1580315854_
                          (lambda (_g1580615825_)
                            (if (gx#stx-pair? _g1580615825_)
                                (let ((_e1580815827_ (gx#stx-e _g1580615825_)))
                                  (let ((_hd1580915830_ (##car _e1580815827_))
                                        (_tl1581015832_ (##cdr _e1580815827_)))
                                    (if (gx#stx-null? _tl1581015832_)
                                        ((lambda (_L15835_)
                                           (if (gx#identifier? _L15835_)
                                               (let ((_sym15846_
                                                      (gxc#generate-runtime-binding-id
                                                       _L15835_)))
                                                 (if (table-ref
                                                      (gxc#current-compile-mutators)
                                                      _sym15846_
                                                      '#f)
                                                     (gxc#verbose
                                                      '"skipping type declaration for mutable binding "
                                                      _sym15846_)
                                                     (let ((_type1584715849_
                                                            (gxc#apply-basic-expression-type
                                                             _expr15802_)))
                                                       (if _type1584715849_
                                                           (let ((_type15852_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _type1584715849_))
                     (gxc#optimizer-declare-type!__opt-lambda20605
                      _sym15846_
                      _type15852_
                      '#t))
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1580415822_ _g1580615825_)))
                                         _hd1580915830_)
                                        (_g1580415822_ _g1580615825_))))
                                (_g1580415822_ _g1580615825_)))))
                    (_g1580315854_ _hd15801_)))))
        (let* ((_g1564615681_
                (lambda (_g1564715678_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1564715678_)))
               (_g1564515798_
                (lambda (_g1564715684_)
                  (if (gx#stx-pair? _g1564715684_)
                      (let ((_e1565115686_ (gx#stx-e _g1564715684_)))
                        (let ((_hd1565215689_ (##car _e1565115686_))
                              (_tl1565315691_ (##cdr _e1565115686_)))
                          (if (gx#stx-pair? _tl1565315691_)
                              (let ((_e1565415694_ (gx#stx-e _tl1565315691_)))
                                (let ((_hd1565515697_ (##car _e1565415694_))
                                      (_tl1565615699_ (##cdr _e1565415694_)))
                                  (if (gx#stx-pair/null? _hd1565515697_)
                                      (if (fx>= (gx#stx-length _hd1565515697_)
                                                '0)
                                          (let ((_g20893_
                                                 (gx#syntax-split-splice
                                                  _hd1565515697_
                                                  '0)))
                                            (begin
                                              (let ((_g20894_
                                                     (values-count _g20893_)))
                                                (if (not (fx= _g20894_ 2))
                                                    (error "Context expects 2 values"
                                                           _g20894_)))
                                              (let ((_target1565715702_
                                                     (values-ref _g20893_ 0))
                                                    (_tl1565915704_
                                                     (values-ref _g20893_ 1)))
                                                (if (gx#stx-null?
                                                     _tl1565915704_)
                                                    (letrec ((_loop1566015707_
                                                              (lambda (_hd1565815710_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _expr1566415712_
                               _hd1566515714_)
                        (if (gx#stx-pair? _hd1565815710_)
                            (let ((_e1566115717_ (gx#stx-e _hd1565815710_)))
                              (let ((_lp-hd1566215720_ (##car _e1566115717_))
                                    (_lp-tl1566315722_ (##cdr _e1566115717_)))
                                (if (gx#stx-pair? _lp-hd1566215720_)
                                    (let ((_e1566815725_
                                           (gx#stx-e _lp-hd1566215720_)))
                                      (let ((_hd1566915728_
                                             (##car _e1566815725_))
                                            (_tl1567015730_
                                             (##cdr _e1566815725_)))
                                        (if (gx#stx-pair? _tl1567015730_)
                                            (let ((_e1567115733_
                                                   (gx#stx-e _tl1567015730_)))
                                              (let ((_hd1567215736_
                                                     (##car _e1567115733_))
                                                    (_tl1567315738_
                                                     (##cdr _e1567115733_)))
                                                (if (gx#stx-null?
                                                     _tl1567315738_)
                                                    (_loop1566015707_
                                                     _lp-tl1566315722_
                                                     (cons _hd1567215736_
                                                           _expr1566415712_)
                                                     (cons _hd1566915728_
                                                           _hd1566515714_))
                                                    (_g1564615681_
                                                     _g1564715684_))))
                                            (_g1564615681_ _g1564715684_))))
                                    (_g1564615681_ _g1564715684_))))
                            (let ((_expr1566615741_ (reverse _expr1566415712_))
                                  (_hd1566715743_ (reverse _hd1566515714_)))
                              (if (gx#stx-pair? _tl1565615699_)
                                  (let ((_e1567415746_
                                         (gx#stx-e _tl1565615699_)))
                                    (let ((_hd1567515749_
                                           (##car _e1567415746_))
                                          (_tl1567615751_
                                           (##cdr _e1567415746_)))
                                      (if (gx#stx-null? _tl1567615751_)
                                          ((lambda (_L15754_ _L15755_ _L15756_)
                                             (begin
                                               (for-each
                                                _collect-e15644_
                                                (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g1577615779_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1577715781_)
                    (cons _g1577615779_ _g1577715781_))
                  '()
                  _L15756_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g1578315786_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1578415788_)
                    (cons _g1578315786_ _g1578415788_))
                  '()
                  _L15755_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (for-each
                                                gxc#compile-e
                                                (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g1579015793_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1579115795_)
                    (cons _g1579015793_ _g1579115795_))
                  '()
                  _L15755_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (gxc#compile-e _L15754_)))
                                           _hd1567515749_
                                           _expr1566615741_
                                           _hd1566715743_)
                                          (_g1564615681_ _g1564715684_))))
                                  (_g1564615681_ _g1564715684_)))))))
              (_loop1566015707_ _target1565715702_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1564615681_
                                                     _g1564715684_)))))
                                          (_g1564615681_ _g1564715684_))
                                      (_g1564615681_ _g1564715684_))))
                              (_g1564615681_ _g1564715684_))))
                      (_g1564615681_ _g1564715684_)))))
          (_g1564515798_ _stx15642_)))))
  (define gxc#collect-type-call%
    (lambda (_stx15196_)
      (let* ((_g1520015302_
              (lambda (_g1520115299_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1520115299_)))
             (_g1519915309_ (lambda (_g1520115305_) ((lambda () '#!void))))
             (_g1519815459_
              (lambda (_g1520115312_)
                (if (gx#stx-pair? _g1520115312_)
                    (let ((_e1525915314_ (gx#stx-e _g1520115312_)))
                      (let ((_hd1526015317_ (##car _e1525915314_))
                            (_tl1526115319_ (##cdr _e1525915314_)))
                        (if (gx#stx-pair? _tl1526115319_)
                            (let ((_e1526215322_ (gx#stx-e _tl1526115319_)))
                              (let ((_hd1526315325_ (##car _e1526215322_))
                                    (_tl1526415327_ (##cdr _e1526215322_)))
                                (if (gx#stx-pair? _hd1526315325_)
                                    (let ((_e1526515330_
                                           (gx#stx-e _hd1526315325_)))
                                      (let ((_hd1526615333_
                                             (##car _e1526515330_))
                                            (_tl1526715335_
                                             (##cdr _e1526515330_)))
                                        (if (gx#identifier? _hd1526615333_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1526615333_)
                                                (if (gx#stx-pair?
                                                     _tl1526715335_)
                                                    (let ((_e1526815338_
                                                           (gx#stx-e
                                                            _tl1526715335_)))
                                                      (let ((_hd1526915341_
                                                             (##car _e1526815338_))
                                                            (_tl1527015343_
                                                             (##cdr _e1526815338_)))
                                                        (if (gx#stx-null?
                                                             _tl1527015343_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1526415327_)
                        (let ((_e1527115346_ (gx#stx-e _tl1526415327_)))
                          (let ((_hd1527215349_ (##car _e1527115346_))
                                (_tl1527315351_ (##cdr _e1527115346_)))
                            (if (gx#stx-pair? _hd1527215349_)
                                (let ((_e1527415354_
                                       (gx#stx-e _hd1527215349_)))
                                  (let ((_hd1527515357_ (##car _e1527415354_))
                                        (_tl1527615359_ (##cdr _e1527415354_)))
                                    (if (gx#identifier? _hd1527515357_)
                                        (if (gx#stx-eq? '%#ref _hd1527515357_)
                                            (if (gx#stx-pair? _tl1527615359_)
                                                (let ((_e1527715362_
                                                       (gx#stx-e
                                                        _tl1527615359_)))
                                                  (let ((_hd1527815365_
                                                         (##car _e1527715362_))
                                                        (_tl1527915367_
                                                         (##cdr _e1527715362_)))
                                                    (if (gx#stx-null?
                                                         _tl1527915367_)
                                                        (if (gx#stx-pair?
                                                             _tl1527315351_)
                                                            (let ((_e1528015370_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1527315351_)))
                      (let ((_hd1528115373_ (##car _e1528015370_))
                            (_tl1528215375_ (##cdr _e1528015370_)))
                        (if (gx#stx-pair? _hd1528115373_)
                            (let ((_e1528315378_ (gx#stx-e _hd1528115373_)))
                              (let ((_hd1528415381_ (##car _e1528315378_))
                                    (_tl1528515383_ (##cdr _e1528315378_)))
                                (if (gx#identifier? _hd1528415381_)
                                    (if (gx#stx-eq? '%#quote _hd1528415381_)
                                        (if (gx#stx-pair? _tl1528515383_)
                                            (let ((_e1528615386_
                                                   (gx#stx-e _tl1528515383_)))
                                              (let ((_hd1528715389_
                                                     (##car _e1528615386_))
                                                    (_tl1528815391_
                                                     (##cdr _e1528615386_)))
                                                (if (gx#stx-null?
                                                     _tl1528815391_)
                                                    (if (gx#stx-pair?
                                                         _tl1528215375_)
                                                        (let ((_e1528915394_
                                                               (gx#stx-e
                                                                _tl1528215375_)))
                                                          (let ((_hd1529015397_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1528915394_))
                        (_tl1529115399_ (##cdr _e1528915394_)))
                    (if (gx#stx-pair? _hd1529015397_)
                        (let ((_e1529215402_ (gx#stx-e _hd1529015397_)))
                          (let ((_hd1529315405_ (##car _e1529215402_))
                                (_tl1529415407_ (##cdr _e1529215402_)))
                            (if (gx#identifier? _hd1529315405_)
                                (if (gx#stx-eq? '%#ref _hd1529315405_)
                                    (if (gx#stx-pair? _tl1529415407_)
                                        (let ((_e1529515410_
                                               (gx#stx-e _tl1529415407_)))
                                          (let ((_hd1529615413_
                                                 (##car _e1529515410_))
                                                (_tl1529715415_
                                                 (##cdr _e1529515410_)))
                                            (if (gx#stx-null? _tl1529715415_)
                                                (if (gx#stx-null?
                                                     _tl1529115399_)
                                                    ((lambda (_L15418_
                                                              _L15419_
                                                              _L15420_
                                                              _L15421_)
                                                       (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax__0 '#f '-bind-method))
                        'bind-method!)
                   (gxc#optimizer-declare-method!__opt-lambda20581
                    (gxc#generate-runtime-binding-id _L15420_)
                    (gx#stx-e _L15419_)
                    (gxc#generate-runtime-binding-id _L15418_)
                    '#f)
                   (_g1519915309_ _g1520115312_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd1529615413_
                                                     _hd1528715389_
                                                     _hd1527815365_
                                                     _hd1526915341_)
                                                    (_g1519915309_
                                                     _g1520115312_))
                                                (_g1519915309_
                                                 _g1520115312_))))
                                        (_g1519915309_ _g1520115312_))
                                    (_g1519915309_ _g1520115312_))
                                (_g1519915309_ _g1520115312_))))
                        (_g1519915309_ _g1520115312_))))
                (_g1519915309_ _g1520115312_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1519915309_
                                                     _g1520115312_))))
                                            (_g1519915309_ _g1520115312_))
                                        (_g1519915309_ _g1520115312_))
                                    (_g1519915309_ _g1520115312_))))
                            (_g1519915309_ _g1520115312_))))
                    (_g1519915309_ _g1520115312_))
                (_g1519915309_ _g1520115312_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1519915309_ _g1520115312_))
                                            (_g1519915309_ _g1520115312_))
                                        (_g1519915309_ _g1520115312_))))
                                (_g1519915309_ _g1520115312_))))
                        (_g1519915309_ _g1520115312_))
                    (_g1519915309_ _g1520115312_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1519915309_
                                                     _g1520115312_))
                                                (_g1519915309_ _g1520115312_))
                                            (_g1519915309_ _g1520115312_))))
                                    (_g1519915309_ _g1520115312_))))
                            (_g1519915309_ _g1520115312_))))
                    (_g1519915309_ _g1520115312_))))
             (_g1519715639_
              (lambda (_g1520115462_)
                (if (gx#stx-pair? _g1520115462_)
                    (let ((_e1520715464_ (gx#stx-e _g1520115462_)))
                      (let ((_hd1520815467_ (##car _e1520715464_))
                            (_tl1520915469_ (##cdr _e1520715464_)))
                        (if (gx#stx-pair? _tl1520915469_)
                            (let ((_e1521015472_ (gx#stx-e _tl1520915469_)))
                              (let ((_hd1521115475_ (##car _e1521015472_))
                                    (_tl1521215477_ (##cdr _e1521015472_)))
                                (if (gx#stx-pair? _hd1521115475_)
                                    (let ((_e1521315480_
                                           (gx#stx-e _hd1521115475_)))
                                      (let ((_hd1521415483_
                                             (##car _e1521315480_))
                                            (_tl1521515485_
                                             (##cdr _e1521315480_)))
                                        (if (gx#identifier? _hd1521415483_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1521415483_)
                                                (if (gx#stx-pair?
                                                     _tl1521515485_)
                                                    (let ((_e1521615488_
                                                           (gx#stx-e
                                                            _tl1521515485_)))
                                                      (let ((_hd1521715491_
                                                             (##car _e1521615488_))
                                                            (_tl1521815493_
                                                             (##cdr _e1521615488_)))
                                                        (if (gx#stx-null?
                                                             _tl1521815493_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1521215477_)
                        (let ((_e1521915496_ (gx#stx-e _tl1521215477_)))
                          (let ((_hd1522015499_ (##car _e1521915496_))
                                (_tl1522115501_ (##cdr _e1521915496_)))
                            (if (gx#stx-pair? _hd1522015499_)
                                (let ((_e1522215504_
                                       (gx#stx-e _hd1522015499_)))
                                  (let ((_hd1522315507_ (##car _e1522215504_))
                                        (_tl1522415509_ (##cdr _e1522215504_)))
                                    (if (gx#identifier? _hd1522315507_)
                                        (if (gx#stx-eq? '%#ref _hd1522315507_)
                                            (if (gx#stx-pair? _tl1522415509_)
                                                (let ((_e1522515512_
                                                       (gx#stx-e
                                                        _tl1522415509_)))
                                                  (let ((_hd1522615515_
                                                         (##car _e1522515512_))
                                                        (_tl1522715517_
                                                         (##cdr _e1522515512_)))
                                                    (if (gx#stx-null?
                                                         _tl1522715517_)
                                                        (if (gx#stx-pair?
                                                             _tl1522115501_)
                                                            (let ((_e1522815520_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1522115501_)))
                      (let ((_hd1522915523_ (##car _e1522815520_))
                            (_tl1523015525_ (##cdr _e1522815520_)))
                        (if (gx#stx-pair? _hd1522915523_)
                            (let ((_e1523115528_ (gx#stx-e _hd1522915523_)))
                              (let ((_hd1523215531_ (##car _e1523115528_))
                                    (_tl1523315533_ (##cdr _e1523115528_)))
                                (if (gx#identifier? _hd1523215531_)
                                    (if (gx#stx-eq? '%#quote _hd1523215531_)
                                        (if (gx#stx-pair? _tl1523315533_)
                                            (let ((_e1523415536_
                                                   (gx#stx-e _tl1523315533_)))
                                              (let ((_hd1523515539_
                                                     (##car _e1523415536_))
                                                    (_tl1523615541_
                                                     (##cdr _e1523415536_)))
                                                (if (gx#stx-null?
                                                     _tl1523615541_)
                                                    (if (gx#stx-pair?
                                                         _tl1523015525_)
                                                        (let ((_e1523715544_
                                                               (gx#stx-e
                                                                _tl1523015525_)))
                                                          (let ((_hd1523815547_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1523715544_))
                        (_tl1523915549_ (##cdr _e1523715544_)))
                    (if (gx#stx-pair? _hd1523815547_)
                        (let ((_e1524015552_ (gx#stx-e _hd1523815547_)))
                          (let ((_hd1524115555_ (##car _e1524015552_))
                                (_tl1524215557_ (##cdr _e1524015552_)))
                            (if (gx#identifier? _hd1524115555_)
                                (if (gx#stx-eq? '%#ref _hd1524115555_)
                                    (if (gx#stx-pair? _tl1524215557_)
                                        (let ((_e1524315560_
                                               (gx#stx-e _tl1524215557_)))
                                          (let ((_hd1524415563_
                                                 (##car _e1524315560_))
                                                (_tl1524515565_
                                                 (##cdr _e1524315560_)))
                                            (if (gx#stx-null? _tl1524515565_)
                                                (if (gx#stx-pair?
                                                     _tl1523915549_)
                                                    (let ((_e1524615568_
                                                           (gx#stx-e
                                                            _tl1523915549_)))
                                                      (let ((_hd1524715571_
                                                             (##car _e1524615568_))
                                                            (_tl1524815573_
                                                             (##cdr _e1524615568_)))
                                                        (if (gx#stx-pair?
                                                             _hd1524715571_)
                                                            (let ((_e1524915576_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1524715571_)))
                      (let ((_hd1525015579_ (##car _e1524915576_))
                            (_tl1525115581_ (##cdr _e1524915576_)))
                        (if (gx#identifier? _hd1525015579_)
                            (if (gx#stx-eq? '%#quote _hd1525015579_)
                                (if (gx#stx-pair? _tl1525115581_)
                                    (let ((_e1525215584_
                                           (gx#stx-e _tl1525115581_)))
                                      (let ((_hd1525315587_
                                             (##car _e1525215584_))
                                            (_tl1525415589_
                                             (##cdr _e1525215584_)))
                                        (if (gx#stx-null? _tl1525415589_)
                                            (if (gx#stx-null? _tl1524815573_)
                                                ((lambda (_L15592_
                                                          _L15593_
                                                          _L15594_
                                                          _L15595_
                                                          _L15596_)
                                                   (if (eq? (gxc#generate-runtime-binding-id
                                                             _L15596_)
                                                            'bind-method!)
                                                       (gxc#optimizer-declare-method!__opt-lambda20581
                                                        (gxc#generate-runtime-binding-id
                                                         _L15595_)
                                                        (gx#stx-e _L15594_)
                                                        (gxc#generate-runtime-binding-id
                                                         _L15593_)
                                                        (gx#stx-e _L15592_))
                                                       (_g1519815459_
                                                        _g1520115462_)))
                                                 _hd1525315587_
                                                 _hd1524415563_
                                                 _hd1523515539_
                                                 _hd1522615515_
                                                 _hd1521715491_)
                                                (_g1519815459_ _g1520115462_))
                                            (_g1519815459_ _g1520115462_))))
                                    (_g1519815459_ _g1520115462_))
                                (_g1519815459_ _g1520115462_))
                            (_g1519815459_ _g1520115462_))))
                    (_g1519815459_ _g1520115462_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1519815459_
                                                     _g1520115462_))
                                                (_g1519815459_
                                                 _g1520115462_))))
                                        (_g1519815459_ _g1520115462_))
                                    (_g1519815459_ _g1520115462_))
                                (_g1519815459_ _g1520115462_))))
                        (_g1519815459_ _g1520115462_))))
                (_g1519815459_ _g1520115462_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1519815459_
                                                     _g1520115462_))))
                                            (_g1519815459_ _g1520115462_))
                                        (_g1519815459_ _g1520115462_))
                                    (_g1519815459_ _g1520115462_))))
                            (_g1519815459_ _g1520115462_))))
                    (_g1519815459_ _g1520115462_))
                (_g1519815459_ _g1520115462_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1519815459_ _g1520115462_))
                                            (_g1519815459_ _g1520115462_))
                                        (_g1519815459_ _g1520115462_))))
                                (_g1519815459_ _g1520115462_))))
                        (_g1519815459_ _g1520115462_))
                    (_g1519815459_ _g1520115462_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1519815459_
                                                     _g1520115462_))
                                                (_g1519815459_ _g1520115462_))
                                            (_g1519815459_ _g1520115462_))))
                                    (_g1519815459_ _g1520115462_))))
                            (_g1519815459_ _g1520115462_))))
                    (_g1519815459_ _g1520115462_)))))
        (_g1519715639_ _stx15196_))))
  (define gxc#basic-expression-type-begin%
    (lambda (_stx15136_)
      (let* ((_g1513915152_
              (lambda (_g1514015149_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1514015149_)))
             (_g1513815159_ (lambda (_g1514015155_) ((lambda () '#f))))
             (_g1513715193_
              (lambda (_g1514015162_)
                (if (gx#stx-pair? _g1514015162_)
                    (let ((_e1514215164_ (gx#stx-e _g1514015162_)))
                      (let ((_hd1514315167_ (##car _e1514215164_))
                            (_tl1514415169_ (##cdr _e1514215164_)))
                        (if (gx#stx-pair? _tl1514415169_)
                            (let ((_e1514515172_ (gx#stx-e _tl1514415169_)))
                              (let ((_hd1514615175_ (##car _e1514515172_))
                                    (_tl1514715177_ (##cdr _e1514515172_)))
                                (if (gx#stx-null? _tl1514715177_)
                                    ((lambda (_L15180_)
                                       (gxc#compile-e _L15180_))
                                     _hd1514615175_)
                                    (_g1513815159_ _g1514015162_))))
                            (_g1513815159_ _g1514015162_))))
                    (_g1513815159_ _g1514015162_)))))
        (_g1513715193_ _stx15136_))))
  (define gxc#basic-expression-type-begin-annotation%
    (lambda (_stx15069_)
      (let* ((_g1507115088_
              (lambda (_g1507215085_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1507215085_)))
             (_g1507015133_
              (lambda (_g1507215091_)
                (if (gx#stx-pair? _g1507215091_)
                    (let ((_e1507515093_ (gx#stx-e _g1507215091_)))
                      (let ((_hd1507615096_ (##car _e1507515093_))
                            (_tl1507715098_ (##cdr _e1507515093_)))
                        (if (gx#stx-pair? _tl1507715098_)
                            (let ((_e1507815101_ (gx#stx-e _tl1507715098_)))
                              (let ((_hd1507915104_ (##car _e1507815101_))
                                    (_tl1508015106_ (##cdr _e1507815101_)))
                                (if (gx#stx-pair? _tl1508015106_)
                                    (let ((_e1508115109_
                                           (gx#stx-e _tl1508015106_)))
                                      (let ((_hd1508215112_
                                             (##car _e1508115109_))
                                            (_tl1508315114_
                                             (##cdr _e1508115109_)))
                                        (if (gx#stx-null? _tl1508315114_)
                                            ((lambda (_L15117_ _L15118_)
                                               (gxc#compile-e _L15117_))
                                             _hd1508215112_
                                             _hd1507915104_)
                                            (_g1507115088_ _g1507215091_))))
                                    (_g1507115088_ _g1507215091_))))
                            (_g1507115088_ _g1507215091_))))
                    (_g1507115088_ _g1507215091_)))))
        (_g1507015133_ _stx15069_))))
  (define gxc#basic-expression-type-lambda%
    (lambda (_stx14494_)
      (let* ((_g1449914620_
              (lambda (_g1450014617_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1450014617_)))
             (_g1449814627_ (lambda (_g1450014623_) ((lambda () '#f))))
             (_g1449714651_
              (lambda (_g1450014630_)
                (if (gx#stx-pair? _g1450014630_)
                    (let ((_e1461314632_ (gx#stx-e _g1450014630_)))
                      (let ((_hd1461414635_ (##car _e1461314632_))
                            (_tl1461514637_ (##cdr _e1461314632_)))
                        ((lambda (_L14640_)
                           (if (gxc#dispatch-lambda-form? _L14640_)
                               (let ((__obj20833
                                      (make-object gxc#!lambda::t '5)))
                                 (begin
                                   (gxc#!lambda:::init!__0
                                    __obj20833
                                    'lambda
                                    (gxc#lambda-form-arity _L14640_)
                                    (gxc#dispatch-lambda-form-delegate
                                     _L14640_))
                                   __obj20833))
                               (_g1449814627_ _g1450014630_)))
                         _tl1461514637_)))
                    (_g1449814627_ _g1450014630_))))
             (_g1449614881_
              (lambda (_g1450014654_)
                (if (gx#stx-pair? _g1450014654_)
                    (let ((_e1455814656_ (gx#stx-e _g1450014654_)))
                      (let ((_hd1455914659_ (##car _e1455814656_))
                            (_tl1456014661_ (##cdr _e1455814656_)))
                        (if (gx#stx-pair? _tl1456014661_)
                            (let ((_e1456114664_ (gx#stx-e _tl1456014661_)))
                              (let ((_hd1456214667_ (##car _e1456114664_))
                                    (_tl1456314669_ (##cdr _e1456114664_)))
                                (if (gx#stx-pair/null? _hd1456214667_)
                                    (if (fx>= (gx#stx-length _hd1456214667_)
                                              '0)
                                        (let ((_g20895_
                                               (gx#syntax-split-splice
                                                _hd1456214667_
                                                '0)))
                                          (begin
                                            (let ((_g20896_
                                                   (values-count _g20895_)))
                                              (if (not (fx= _g20896_ 2))
                                                  (error "Context expects 2 values"
                                                         _g20896_)))
                                            (let ((_target1456414672_
                                                   (values-ref _g20895_ 0))
                                                  (_tl1456614674_
                                                   (values-ref _g20895_ 1)))
                                              (if (gx#stx-null? _tl1456614674_)
                                                  (letrec ((_loop1456714677_
                                                            (lambda (_hd1456514680_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _arg1457114682_)
                      (if (gx#stx-pair? _hd1456514680_)
                          (let ((_e1456814685_ (gx#stx-e _hd1456514680_)))
                            (let ((_lp-hd1456914688_ (##car _e1456814685_))
                                  (_lp-tl1457014690_ (##cdr _e1456814685_)))
                              (_loop1456714677_
                               _lp-tl1457014690_
                               (cons _lp-hd1456914688_ _arg1457114682_))))
                          (let ((_arg1457214693_ (reverse _arg1457114682_)))
                            (if (gx#stx-pair? _tl1456314669_)
                                (let ((_e1457314696_
                                       (gx#stx-e _tl1456314669_)))
                                  (let ((_hd1457414699_ (##car _e1457314696_))
                                        (_tl1457514701_ (##cdr _e1457314696_)))
                                    (if (gx#stx-pair? _hd1457414699_)
                                        (let ((_e1457614704_
                                               (gx#stx-e _hd1457414699_)))
                                          (let ((_hd1457714707_
                                                 (##car _e1457614704_))
                                                (_tl1457814709_
                                                 (##cdr _e1457614704_)))
                                            (if (gx#identifier? _hd1457714707_)
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _hd1457714707_)
                                                    (if (gx#stx-pair?
                                                         _tl1457814709_)
                                                        (let ((_e1457914712_
                                                               (gx#stx-e
                                                                _tl1457814709_)))
                                                          (let ((_hd1458014715_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1457914712_))
                        (_tl1458114717_ (##cdr _e1457914712_)))
                    (if (gx#stx-pair? _hd1458014715_)
                        (let ((_e1458214720_ (gx#stx-e _hd1458014715_)))
                          (let ((_hd1458314723_ (##car _e1458214720_))
                                (_tl1458414725_ (##cdr _e1458214720_)))
                            (if (gx#identifier? _hd1458314723_)
                                (if (gx#stx-eq? '%#ref _hd1458314723_)
                                    (if (gx#stx-pair? _tl1458414725_)
                                        (let ((_e1458514728_
                                               (gx#stx-e _tl1458414725_)))
                                          (let ((_hd1458614731_
                                                 (##car _e1458514728_))
                                                (_tl1458714733_
                                                 (##cdr _e1458514728_)))
                                            (if (gx#stx-null? _tl1458714733_)
                                                (if (gx#stx-pair?
                                                     _tl1458114717_)
                                                    (let ((_e1458814736_
                                                           (gx#stx-e
                                                            _tl1458114717_)))
                                                      (let ((_hd1458914739_
                                                             (##car _e1458814736_))
                                                            (_tl1459014741_
                                                             (##cdr _e1458814736_)))
                                                        (if (gx#stx-pair?
                                                             _hd1458914739_)
                                                            (let ((_e1459114744_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1458914739_)))
                      (let ((_hd1459214747_ (##car _e1459114744_))
                            (_tl1459314749_ (##cdr _e1459114744_)))
                        (if (gx#identifier? _hd1459214747_)
                            (if (gx#stx-eq? '%#ref _hd1459214747_)
                                (if (gx#stx-pair? _tl1459314749_)
                                    (let ((_e1459414752_
                                           (gx#stx-e _tl1459314749_)))
                                      (let ((_hd1459514755_
                                             (##car _e1459414752_))
                                            (_tl1459614757_
                                             (##cdr _e1459414752_)))
                                        (if (gx#stx-null? _tl1459614757_)
                                            (if (gx#stx-pair/null?
                                                 _tl1459014741_)
                                                (if (fx>= (gx#stx-length
                                                           _tl1459014741_)
                                                          '0)
                                                    (let ((_g20897_
                                                           (gx#syntax-split-splice
                                                            _tl1459014741_
                                                            '0)))
                                                      (begin
                                                        (let ((_g20898_
                                                               (values-count
                                                                _g20897_)))
                                                          (if (not (fx= _g20898_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                2))
                      (error "Context expects 2 values" _g20898_)))
                (let ((_target1459714760_ (values-ref _g20897_ 0))
                      (_tl1459914762_ (values-ref _g20897_ 1)))
                  (if (gx#stx-null? _tl1459914762_)
                      (letrec ((_loop1460014765_
                                (lambda (_hd1459814768_ _xarg1460414770_)
                                  (if (gx#stx-pair? _hd1459814768_)
                                      (let ((_e1460114773_
                                             (gx#stx-e _hd1459814768_)))
                                        (let ((_lp-hd1460214776_
                                               (##car _e1460114773_))
                                              (_lp-tl1460314778_
                                               (##cdr _e1460114773_)))
                                          (if (gx#stx-pair? _lp-hd1460214776_)
                                              (let ((_e1460614781_
                                                     (gx#stx-e
                                                      _lp-hd1460214776_)))
                                                (let ((_hd1460714784_
                                                       (##car _e1460614781_))
                                                      (_tl1460814786_
                                                       (##cdr _e1460614781_)))
                                                  (if (gx#identifier?
                                                       _hd1460714784_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _hd1460714784_)
                                                          (if (gx#stx-pair?
                                                               _tl1460814786_)
                                                              (let ((_e1460914789_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1460814786_)))
                        (let ((_hd1461014792_ (##car _e1460914789_))
                              (_tl1461114794_ (##cdr _e1460914789_)))
                          (if (gx#stx-null? _tl1461114794_)
                              (_loop1460014765_
                               _lp-tl1460314778_
                               (cons _hd1461014792_ _xarg1460414770_))
                              (_g1449714651_ _g1450014654_))))
                      (_g1449714651_ _g1450014654_))
                  (_g1449714651_ _g1450014654_))
              (_g1449714651_ _g1450014654_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1449714651_ _g1450014654_))))
                                      (let ((_xarg1460514797_
                                             (reverse _xarg1460414770_)))
                                        (if (gx#stx-null? _tl1457514701_)
                                            ((lambda (_L14800_
                                                      _L14801_
                                                      _L14802_
                                                      _L14803_)
                                               (if (if (gx#identifier-list?
                                                        (begin
                                                          '#!void
                                                          (foldr1 (lambda (_g1484014843_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g1484114845_)
                            (cons _g1484014843_ _g1484114845_))
                          '()
                          _L14803_)))
               (if (eq? (gxc#generate-runtime-binding-id _L14802_)
                        'make-struct-instance)
                   (if (fx= (length (begin
                                      '#!void
                                      (foldr1 (lambda (_g1484714850_
                                                       _g1484814852_)
                                                (cons _g1484714850_
                                                      _g1484814852_))
                                              '()
                                              _L14803_)))
                            (length (begin
                                      '#!void
                                      (foldr1 (lambda (_g1485414857_
                                                       _g1485514859_)
                                                (cons _g1485414857_
                                                      _g1485514859_))
                                              '()
                                              _L14800_))))
                       (andmap gx#free-identifier=?
                               (begin
                                 '#!void
                                 (foldr1 (lambda (_g1486114864_ _g1486214866_)
                                           (cons _g1486114864_ _g1486214866_))
                                         '()
                                         _L14803_))
                               (begin
                                 '#!void
                                 (foldr1 (lambda (_g1486814871_ _g1486914873_)
                                           (cons _g1486814871_ _g1486914873_))
                                         '()
                                         _L14800_)))
                       '#f)
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_type-t14876_
                                                           (gxc#generate-runtime-binding-id
                                                            _L14801_))
                                                          (_type14878_
                                                           (gxc#optimizer-resolve-type
                                                            _type-t14876_)))
                                                     (if (##structure-instance-of?
                                                          _type14878_
                                                          'gxc#!struct-type::t)
                                                         (##structure
                                                          gxc#!struct-cons::t
                                                          _type-t14876_)
                                                         '#f))
                                                   (_g1449714651_
                                                    _g1450014654_)))
                                             _xarg1460514797_
                                             _hd1459514755_
                                             _hd1458614731_
                                             _arg1457214693_)
                                            (_g1449714651_ _g1450014654_)))))))
                        (_loop1460014765_ _target1459714760_ '()))
                      (_g1449714651_ _g1450014654_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1449714651_
                                                     _g1450014654_))
                                                (_g1449714651_ _g1450014654_))
                                            (_g1449714651_ _g1450014654_))))
                                    (_g1449714651_ _g1450014654_))
                                (_g1449714651_ _g1450014654_))
                            (_g1449714651_ _g1450014654_))))
                    (_g1449714651_ _g1450014654_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1449714651_
                                                     _g1450014654_))
                                                (_g1449714651_
                                                 _g1450014654_))))
                                        (_g1449714651_ _g1450014654_))
                                    (_g1449714651_ _g1450014654_))
                                (_g1449714651_ _g1450014654_))))
                        (_g1449714651_ _g1450014654_))))
                (_g1449714651_ _g1450014654_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1449714651_
                                                     _g1450014654_))
                                                (_g1449714651_
                                                 _g1450014654_))))
                                        (_g1449714651_ _g1450014654_))))
                                (_g1449714651_ _g1450014654_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1456714677_
                                                     _target1456414672_
                                                     '()))
                                                  (_g1449714651_
                                                   _g1450014654_)))))
                                        (_g1449714651_ _g1450014654_))
                                    (_g1449714651_ _g1450014654_))))
                            (_g1449714651_ _g1450014654_))))
                    (_g1449714651_ _g1450014654_))))
             (_g1449515066_
              (lambda (_g1450014884_)
                (if (gx#stx-pair? _g1450014884_)
                    (let ((_e1450614886_ (gx#stx-e _g1450014884_)))
                      (let ((_hd1450714889_ (##car _e1450614886_))
                            (_tl1450814891_ (##cdr _e1450614886_)))
                        (if (gx#stx-pair? _tl1450814891_)
                            (let ((_e1450914894_ (gx#stx-e _tl1450814891_)))
                              (let ((_hd1451014897_ (##car _e1450914894_))
                                    (_tl1451114899_ (##cdr _e1450914894_)))
                                (if (gx#stx-pair? _tl1451114899_)
                                    (let ((_e1451214902_
                                           (gx#stx-e _tl1451114899_)))
                                      (let ((_hd1451314905_
                                             (##car _e1451214902_))
                                            (_tl1451414907_
                                             (##cdr _e1451214902_)))
                                        (if (gx#stx-pair? _hd1451314905_)
                                            (let ((_e1451514910_
                                                   (gx#stx-e _hd1451314905_)))
                                              (let ((_hd1451614913_
                                                     (##car _e1451514910_))
                                                    (_tl1451714915_
                                                     (##cdr _e1451514910_)))
                                                (if (gx#identifier?
                                                     _hd1451614913_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd1451614913_)
                                                        (if (gx#stx-pair?
                                                             _tl1451714915_)
                                                            (let ((_e1451814918_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1451714915_)))
                      (let ((_hd1451914921_ (##car _e1451814918_))
                            (_tl1452014923_ (##cdr _e1451814918_)))
                        (if (gx#stx-pair? _hd1451914921_)
                            (let ((_e1452114926_ (gx#stx-e _hd1451914921_)))
                              (let ((_hd1452214929_ (##car _e1452114926_))
                                    (_tl1452314931_ (##cdr _e1452114926_)))
                                (if (gx#identifier? _hd1452214929_)
                                    (if (gx#stx-eq? '%#ref _hd1452214929_)
                                        (if (gx#stx-pair? _tl1452314931_)
                                            (let ((_e1452414934_
                                                   (gx#stx-e _tl1452314931_)))
                                              (let ((_hd1452514937_
                                                     (##car _e1452414934_))
                                                    (_tl1452614939_
                                                     (##cdr _e1452414934_)))
                                                (if (gx#stx-null?
                                                     _tl1452614939_)
                                                    (if (gx#stx-pair?
                                                         _tl1452014923_)
                                                        (let ((_e1452714942_
                                                               (gx#stx-e
                                                                _tl1452014923_)))
                                                          (let ((_hd1452814945_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1452714942_))
                        (_tl1452914947_ (##cdr _e1452714942_)))
                    (if (gx#stx-pair? _hd1452814945_)
                        (let ((_e1453014950_ (gx#stx-e _hd1452814945_)))
                          (let ((_hd1453114953_ (##car _e1453014950_))
                                (_tl1453214955_ (##cdr _e1453014950_)))
                            (if (gx#identifier? _hd1453114953_)
                                (if (gx#stx-eq? '%#ref _hd1453114953_)
                                    (if (gx#stx-pair? _tl1453214955_)
                                        (let ((_e1453314958_
                                               (gx#stx-e _tl1453214955_)))
                                          (let ((_hd1453414961_
                                                 (##car _e1453314958_))
                                                (_tl1453514963_
                                                 (##cdr _e1453314958_)))
                                            (if (gx#stx-null? _tl1453514963_)
                                                (if (gx#stx-pair?
                                                     _tl1452914947_)
                                                    (let ((_e1453614966_
                                                           (gx#stx-e
                                                            _tl1452914947_)))
                                                      (let ((_hd1453714969_
                                                             (##car _e1453614966_))
                                                            (_tl1453814971_
                                                             (##cdr _e1453614966_)))
                                                        (if (gx#stx-pair?
                                                             _hd1453714969_)
                                                            (let ((_e1453914974_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1453714969_)))
                      (let ((_hd1454014977_ (##car _e1453914974_))
                            (_tl1454114979_ (##cdr _e1453914974_)))
                        (if (gx#identifier? _hd1454014977_)
                            (if (gx#stx-eq? '%#ref _hd1454014977_)
                                (if (gx#stx-pair? _tl1454114979_)
                                    (let ((_e1454214982_
                                           (gx#stx-e _tl1454114979_)))
                                      (let ((_hd1454314985_
                                             (##car _e1454214982_))
                                            (_tl1454414987_
                                             (##cdr _e1454214982_)))
                                        (if (gx#stx-null? _tl1454414987_)
                                            (if (gx#stx-pair? _tl1453814971_)
                                                (let ((_e1454514990_
                                                       (gx#stx-e
                                                        _tl1453814971_)))
                                                  (let ((_hd1454614993_
                                                         (##car _e1454514990_))
                                                        (_tl1454714995_
                                                         (##cdr _e1454514990_)))
                                                    (if (gx#stx-pair?
                                                         _hd1454614993_)
                                                        (let ((_e1454814998_
                                                               (gx#stx-e
                                                                _hd1454614993_)))
                                                          (let ((_hd1454915001_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1454814998_))
                        (_tl1455015003_ (##cdr _e1454814998_)))
                    (if (gx#identifier? _hd1454915001_)
                        (if (gx#stx-eq? '%#ref _hd1454915001_)
                            (if (gx#stx-pair? _tl1455015003_)
                                (let ((_e1455115006_
                                       (gx#stx-e _tl1455015003_)))
                                  (let ((_hd1455215009_ (##car _e1455115006_))
                                        (_tl1455315011_ (##cdr _e1455115006_)))
                                    (if (gx#stx-null? _tl1455315011_)
                                        (if (gx#stx-null? _tl1454714995_)
                                            (if (gx#stx-null? _tl1451414907_)
                                                ((lambda (_L15014_
                                                          _L15015_
                                                          _L15016_
                                                          _L15017_
                                                          _L15018_)
                                                   (if (if (gx#identifier?
                                                            _L15018_)
                                                           (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L15017_)
                            'apply)
                       (if (eq? (gxc#generate-runtime-binding-id _L15016_)
                                'make-struct-instance)
                           (gx#free-identifier=? _L15018_ _L15014_)
                           '#f)
                       '#f)
                   '#f)
               (let* ((_type-t15061_
                       (gxc#generate-runtime-binding-id _L15015_))
                      (_type15063_ (gxc#optimizer-resolve-type _type-t15061_)))
                 (if (##structure-instance-of?
                      _type15063_
                      'gxc#!struct-type::t)
                     (##structure gxc#!struct-cons::t _type-t15061_)
                     '#f))
               (_g1449614881_ _g1450014884_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1455215009_
                                                 _hd1454314985_
                                                 _hd1453414961_
                                                 _hd1452514937_
                                                 _hd1451014897_)
                                                (_g1449614881_ _g1450014884_))
                                            (_g1449614881_ _g1450014884_))
                                        (_g1449614881_ _g1450014884_))))
                                (_g1449614881_ _g1450014884_))
                            (_g1449614881_ _g1450014884_))
                        (_g1449614881_ _g1450014884_))))
                (_g1449614881_ _g1450014884_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1449614881_ _g1450014884_))
                                            (_g1449614881_ _g1450014884_))))
                                    (_g1449614881_ _g1450014884_))
                                (_g1449614881_ _g1450014884_))
                            (_g1449614881_ _g1450014884_))))
                    (_g1449614881_ _g1450014884_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1449614881_
                                                     _g1450014884_))
                                                (_g1449614881_
                                                 _g1450014884_))))
                                        (_g1449614881_ _g1450014884_))
                                    (_g1449614881_ _g1450014884_))
                                (_g1449614881_ _g1450014884_))))
                        (_g1449614881_ _g1450014884_))))
                (_g1449614881_ _g1450014884_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1449614881_
                                                     _g1450014884_))))
                                            (_g1449614881_ _g1450014884_))
                                        (_g1449614881_ _g1450014884_))
                                    (_g1449614881_ _g1450014884_))))
                            (_g1449614881_ _g1450014884_))))
                    (_g1449614881_ _g1450014884_))
                (_g1449614881_ _g1450014884_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1449614881_
                                                     _g1450014884_))))
                                            (_g1449614881_ _g1450014884_))))
                                    (_g1449614881_ _g1450014884_))))
                            (_g1449614881_ _g1450014884_))))
                    (_g1449614881_ _g1450014884_)))))
        (_g1449515066_ _stx14494_))))
  (define gxc#basic-expression-type-case-lambda%
    (lambda (_stx14440_)
      (letrec ((_clause-e14442_
                (lambda (_form14492_)
                  (let ((__obj20834 (make-object gxc#!lambda::t '5)))
                    (begin
                      (gxc#!lambda:::init!__0
                       __obj20834
                       'case-lambda-clause
                       (gxc#lambda-form-arity _form14492_)
                       (gxc#dispatch-lambda-form-delegate _form14492_))
                      __obj20834)))))
        (let* ((_g1444514455_
                (lambda (_g1444614452_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1444614452_)))
               (_g1444414462_ (lambda (_g1444614458_) ((lambda () '#f))))
               (_g1444314489_
                (lambda (_g1444614465_)
                  (if (gx#stx-pair? _g1444614465_)
                      (let ((_e1444814467_ (gx#stx-e _g1444614465_)))
                        (let ((_hd1444914470_ (##car _e1444814467_))
                              (_tl1445014472_ (##cdr _e1444814467_)))
                          ((lambda (_L14475_)
                             (if (andmap1 gxc#dispatch-lambda-form? _L14475_)
                                 (let ((_clauses14487_
                                        (map _clause-e14442_ _L14475_)))
                                   (##structure
                                    gxc#!case-lambda::t
                                    'case-lambda
                                    _clauses14487_))
                                 (_g1444414462_ _g1444614465_)))
                           _tl1445014472_)))
                      (_g1444414462_ _g1444614465_)))))
          (_g1444314489_ _stx14440_)))))
  (define gxc#basic-expression-type-builtin (make-hash-table-eq))
  (define gxc#basic-expression-type-call%
    (lambda (_stx14345_)
      (let* ((_g1434814368_
              (lambda (_g1434914365_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1434914365_)))
             (_g1434714375_ (lambda (_g1434914371_) ((lambda () '#f))))
             (_g1434614437_
              (lambda (_g1434914378_)
                (if (gx#stx-pair? _g1434914378_)
                    (let ((_e1435214380_ (gx#stx-e _g1434914378_)))
                      (let ((_hd1435314383_ (##car _e1435214380_))
                            (_tl1435414385_ (##cdr _e1435214380_)))
                        (if (gx#stx-pair? _tl1435414385_)
                            (let ((_e1435514388_ (gx#stx-e _tl1435414385_)))
                              (let ((_hd1435614391_ (##car _e1435514388_))
                                    (_tl1435714393_ (##cdr _e1435514388_)))
                                (if (gx#stx-pair? _hd1435614391_)
                                    (let ((_e1435814396_
                                           (gx#stx-e _hd1435614391_)))
                                      (let ((_hd1435914399_
                                             (##car _e1435814396_))
                                            (_tl1436014401_
                                             (##cdr _e1435814396_)))
                                        (if (gx#identifier? _hd1435914399_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1435914399_)
                                                (if (gx#stx-pair?
                                                     _tl1436014401_)
                                                    (let ((_e1436114404_
                                                           (gx#stx-e
                                                            _tl1436014401_)))
                                                      (let ((_hd1436214407_
                                                             (##car _e1436114404_))
                                                            (_tl1436314409_
                                                             (##cdr _e1436114404_)))
                                                        (if (gx#stx-null?
                                                             _tl1436314409_)
                                                            ((lambda (_L14412_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L14413_)
                       (let ((_type-e1443014432_
                              (table-ref
                               gxc#basic-expression-type-builtin
                               (gxc#generate-runtime-binding-id _L14413_)
                               '#f)))
                         (if _type-e1443014432_
                             (let ((_type-e14435_ _type-e1443014432_))
                               (_type-e14435_ _stx14345_ _L14412_))
                             '#f)))
                     _tl1435714393_
                     _hd1436214407_)
                    (_g1434714375_ _g1434914378_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1434714375_
                                                     _g1434914378_))
                                                (_g1434714375_ _g1434914378_))
                                            (_g1434714375_ _g1434914378_))))
                                    (_g1434714375_ _g1434914378_))))
                            (_g1434714375_ _g1434914378_))))
                    (_g1434714375_ _g1434914378_)))))
        (_g1434614437_ _stx14345_))))
  (define gxc#basic-expression-type-make-struct-type
    (lambda (_stx13830_ _args13831_)
      (let* ((_g1383513948_
              (lambda (_g1383613945_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1383613945_)))
             (_g1383413955_
              (lambda (_g1383613951_)
                ((lambda ()
                   (begin
                     (gxc#verbose
                      '"make-struct-type: can't infer type "
                      (gx#syntax->datum _stx13830_))
                     '#f)))))
             (_g1383314162_
              (lambda (_g1383613958_)
                (if (gx#stx-pair? _g1383613958_)
                    (let ((_e1389613960_ (gx#stx-e _g1383613958_)))
                      (let ((_hd1389713963_ (##car _e1389613960_))
                            (_tl1389813965_ (##cdr _e1389613960_)))
                        (if (gx#stx-pair? _hd1389713963_)
                            (let ((_e1389913968_ (gx#stx-e _hd1389713963_)))
                              (let ((_hd1390013971_ (##car _e1389913968_))
                                    (_tl1390113973_ (##cdr _e1389913968_)))
                                (if (gx#identifier? _hd1390013971_)
                                    (if (gx#stx-eq? '%#quote _hd1390013971_)
                                        (if (gx#stx-pair? _tl1390113973_)
                                            (let ((_e1390213976_
                                                   (gx#stx-e _tl1390113973_)))
                                              (let ((_hd1390313979_
                                                     (##car _e1390213976_))
                                                    (_tl1390413981_
                                                     (##cdr _e1390213976_)))
                                                (if (gx#stx-null?
                                                     _tl1390413981_)
                                                    (if (gx#stx-pair?
                                                         _tl1389813965_)
                                                        (let ((_e1390513984_
                                                               (gx#stx-e
                                                                _tl1389813965_)))
                                                          (let ((_hd1390613987_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1390513984_))
                        (_tl1390713989_ (##cdr _e1390513984_)))
                    (if (gx#stx-pair? _hd1390613987_)
                        (let ((_e1390813992_ (gx#stx-e _hd1390613987_)))
                          (let ((_hd1390913995_ (##car _e1390813992_))
                                (_tl1391013997_ (##cdr _e1390813992_)))
                            (if (gx#identifier? _hd1390913995_)
                                (if (gx#stx-eq? '%#ref _hd1390913995_)
                                    (if (gx#stx-pair? _tl1391013997_)
                                        (let ((_e1391114000_
                                               (gx#stx-e _tl1391013997_)))
                                          (let ((_hd1391214003_
                                                 (##car _e1391114000_))
                                                (_tl1391314005_
                                                 (##cdr _e1391114000_)))
                                            (if (gx#stx-null? _tl1391314005_)
                                                (if (gx#stx-pair?
                                                     _tl1390713989_)
                                                    (let ((_e1391414008_
                                                           (gx#stx-e
                                                            _tl1390713989_)))
                                                      (let ((_hd1391514011_
                                                             (##car _e1391414008_))
                                                            (_tl1391614013_
                                                             (##cdr _e1391414008_)))
                                                        (if (gx#stx-pair?
                                                             _hd1391514011_)
                                                            (let ((_e1391714016_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1391514011_)))
                      (let ((_hd1391814019_ (##car _e1391714016_))
                            (_tl1391914021_ (##cdr _e1391714016_)))
                        (if (gx#identifier? _hd1391814019_)
                            (if (gx#stx-eq? '%#quote _hd1391814019_)
                                (if (gx#stx-pair? _tl1391914021_)
                                    (let ((_e1392014024_
                                           (gx#stx-e _tl1391914021_)))
                                      (let ((_hd1392114027_
                                             (##car _e1392014024_))
                                            (_tl1392214029_
                                             (##cdr _e1392014024_)))
                                        (if (gx#stx-null? _tl1392214029_)
                                            (if (gx#stx-pair? _tl1391614013_)
                                                (let ((_e1392314032_
                                                       (gx#stx-e
                                                        _tl1391614013_)))
                                                  (let ((_hd1392414035_
                                                         (##car _e1392314032_))
                                                        (_tl1392514037_
                                                         (##cdr _e1392314032_)))
                                                    (if (gx#stx-pair?
                                                         _tl1392514037_)
                                                        (let ((_e1392614040_
                                                               (gx#stx-e
                                                                _tl1392514037_)))
                                                          (let ((_hd1392714043_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1392614040_))
                        (_tl1392814045_ (##cdr _e1392614040_)))
                    (if (gx#stx-pair? _hd1392714043_)
                        (let ((_e1392914048_ (gx#stx-e _hd1392714043_)))
                          (let ((_hd1393014051_ (##car _e1392914048_))
                                (_tl1393114053_ (##cdr _e1392914048_)))
                            (if (gx#identifier? _hd1393014051_)
                                (if (gx#stx-eq? '%#quote _hd1393014051_)
                                    (if (gx#stx-pair? _tl1393114053_)
                                        (let ((_e1393214056_
                                               (gx#stx-e _tl1393114053_)))
                                          (let ((_hd1393314059_
                                                 (##car _e1393214056_))
                                                (_tl1393414061_
                                                 (##cdr _e1393214056_)))
                                            (if (gx#stx-null? _tl1393414061_)
                                                (if (gx#stx-pair?
                                                     _tl1392814045_)
                                                    (let ((_e1393514064_
                                                           (gx#stx-e
                                                            _tl1392814045_)))
                                                      (let ((_hd1393614067_
                                                             (##car _e1393514064_))
                                                            (_tl1393714069_
                                                             (##cdr _e1393514064_)))
                                                        (if (gx#stx-pair?
                                                             _hd1393614067_)
                                                            (let ((_e1393814072_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1393614067_)))
                      (let ((_hd1393914075_ (##car _e1393814072_))
                            (_tl1394014077_ (##cdr _e1393814072_)))
                        (if (gx#identifier? _hd1393914075_)
                            (if (gx#stx-eq? '%#quote _hd1393914075_)
                                (if (gx#stx-pair? _tl1394014077_)
                                    (let ((_e1394114080_
                                           (gx#stx-e _tl1394014077_)))
                                      (let ((_hd1394214083_
                                             (##car _e1394114080_))
                                            (_tl1394314085_
                                             (##cdr _e1394114080_)))
                                        (if (gx#stx-null? _tl1394314085_)
                                            (if (gx#stx-null? _tl1393714069_)
                                                ((lambda (_L14088_
                                                          _L14089_
                                                          _L14090_
                                                          _L14091_
                                                          _L14092_
                                                          _L14093_)
                                                   (let* ((_super-t14139_
                                                           (if (gx#stx-e
                                                                _L14092_)
                                                               (gxc#generate-runtime-binding-id
                                                                _L14092_)
                                                               '#f))
                                                          (_super-type14141_
                                                           (if _super-t14139_
                                                               (gxc#optimizer-resolve-type
                                                                _super-t14139_)
                                                               '#f)))
                                                     (begin
                                                       (if (if _super-type14141_
                                                               (not (##structure-instance-of?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _super-type14141_
                             'gxc#!struct-type::t))
                       '#f)
                   (gxc#raise-compile-error
                    '"Illegal struct-type construction; invalid super type"
                    _stx13830_
                    _L14092_)
                   '#!void)
               (let ((_fields14157_ (gx#stx-e _L14091_))
                     (_xfields14158_
                      (if _super-type14141_
                          (let ((_super-fields1414314146_
                                 (##structure-ref
                                  _super-type14141_
                                  '3
                                  gxc#!struct-type::t
                                  '#f))
                                (_super-xfields1414414148_
                                 (##structure-ref
                                  _super-type14141_
                                  '4
                                  gxc#!struct-type::t
                                  '#f)))
                            (if _super-fields1414314146_
                                (if _super-xfields1414414148_
                                    (let ((_super-fields14151_
                                           _super-fields1414314146_)
                                          (_super-xfields14152_
                                           _super-xfields1414414148_))
                                      (fx+ _super-fields14151_
                                           _super-xfields14152_))
                                    '#f)
                                '#f))
                          '#f))
                     (_plist14159_ (gx#stx-e _L14089_))
                     (_ctor14160_
                      (let ((_$e14154_ (gx#stx-e _L14088_)))
                        (if _$e14154_
                            (values _$e14154_)
                            (if _super-type14141_
                                (##structure-ref
                                 _super-type14141_
                                 '5
                                 gxc#!struct-type::t
                                 '#f)
                                (if _super-t14139_ '#!void '#f))))))
                 (let ((__obj20835 (make-object gxc#!struct-type::t '7)))
                   (begin
                     (gxc#!struct-type:::init!
                      __obj20835
                      (gx#stx-e _L14093_)
                      _super-t14139_
                      _fields14157_
                      _xfields14158_
                      _ctor14160_
                      _plist14159_)
                     __obj20835))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1394214083_
                                                 _hd1393314059_
                                                 _hd1392414035_
                                                 _hd1392114027_
                                                 _hd1391214003_
                                                 _hd1390313979_)
                                                (_g1383413955_ _g1383613958_))
                                            (_g1383413955_ _g1383613958_))))
                                    (_g1383413955_ _g1383613958_))
                                (_g1383413955_ _g1383613958_))
                            (_g1383413955_ _g1383613958_))))
                    (_g1383413955_ _g1383613958_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1383413955_
                                                     _g1383613958_))
                                                (_g1383413955_
                                                 _g1383613958_))))
                                        (_g1383413955_ _g1383613958_))
                                    (_g1383413955_ _g1383613958_))
                                (_g1383413955_ _g1383613958_))))
                        (_g1383413955_ _g1383613958_))))
                (_g1383413955_ _g1383613958_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1383413955_ _g1383613958_))
                                            (_g1383413955_ _g1383613958_))))
                                    (_g1383413955_ _g1383613958_))
                                (_g1383413955_ _g1383613958_))
                            (_g1383413955_ _g1383613958_))))
                    (_g1383413955_ _g1383613958_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1383413955_
                                                     _g1383613958_))
                                                (_g1383413955_
                                                 _g1383613958_))))
                                        (_g1383413955_ _g1383613958_))
                                    (_g1383413955_ _g1383613958_))
                                (_g1383413955_ _g1383613958_))))
                        (_g1383413955_ _g1383613958_))))
                (_g1383413955_ _g1383613958_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1383413955_
                                                     _g1383613958_))))
                                            (_g1383413955_ _g1383613958_))
                                        (_g1383413955_ _g1383613958_))
                                    (_g1383413955_ _g1383613958_))))
                            (_g1383413955_ _g1383613958_))))
                    (_g1383413955_ _g1383613958_))))
             (_g1383214342_
              (lambda (_g1383614165_)
                (if (gx#stx-pair? _g1383614165_)
                    (let ((_e1384214167_ (gx#stx-e _g1383614165_)))
                      (let ((_hd1384314170_ (##car _e1384214167_))
                            (_tl1384414172_ (##cdr _e1384214167_)))
                        (if (gx#stx-pair? _hd1384314170_)
                            (let ((_e1384514175_ (gx#stx-e _hd1384314170_)))
                              (let ((_hd1384614178_ (##car _e1384514175_))
                                    (_tl1384714180_ (##cdr _e1384514175_)))
                                (if (gx#identifier? _hd1384614178_)
                                    (if (gx#stx-eq? '%#quote _hd1384614178_)
                                        (if (gx#stx-pair? _tl1384714180_)
                                            (let ((_e1384814183_
                                                   (gx#stx-e _tl1384714180_)))
                                              (let ((_hd1384914186_
                                                     (##car _e1384814183_))
                                                    (_tl1385014188_
                                                     (##cdr _e1384814183_)))
                                                (if (gx#stx-null?
                                                     _tl1385014188_)
                                                    (if (gx#stx-pair?
                                                         _tl1384414172_)
                                                        (let ((_e1385114191_
                                                               (gx#stx-e
                                                                _tl1384414172_)))
                                                          (let ((_hd1385214194_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1385114191_))
                        (_tl1385314196_ (##cdr _e1385114191_)))
                    (if (gx#stx-pair? _hd1385214194_)
                        (let ((_e1385414199_ (gx#stx-e _hd1385214194_)))
                          (let ((_hd1385514202_ (##car _e1385414199_))
                                (_tl1385614204_ (##cdr _e1385414199_)))
                            (if (gx#identifier? _hd1385514202_)
                                (if (gx#stx-eq? '%#quote _hd1385514202_)
                                    (if (gx#stx-pair? _tl1385614204_)
                                        (let ((_e1385714207_
                                               (gx#stx-e _tl1385614204_)))
                                          (let ((_hd1385814210_
                                                 (##car _e1385714207_))
                                                (_tl1385914212_
                                                 (##cdr _e1385714207_)))
                                            (if (gx#stx-datum? _hd1385814210_)
                                                (if (equal? (gx#stx-e
                                                             _hd1385814210_)
                                                            '#f)
                                                    (if (gx#stx-null?
                                                         _tl1385914212_)
                                                        (if (gx#stx-pair?
                                                             _tl1385314196_)
                                                            (let ((_e1386014215_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1385314196_)))
                      (let ((_hd1386114218_ (##car _e1386014215_))
                            (_tl1386214220_ (##cdr _e1386014215_)))
                        (if (gx#stx-pair? _hd1386114218_)
                            (let ((_e1386314223_ (gx#stx-e _hd1386114218_)))
                              (let ((_hd1386414226_ (##car _e1386314223_))
                                    (_tl1386514228_ (##cdr _e1386314223_)))
                                (if (gx#identifier? _hd1386414226_)
                                    (if (gx#stx-eq? '%#quote _hd1386414226_)
                                        (if (gx#stx-pair? _tl1386514228_)
                                            (let ((_e1386614231_
                                                   (gx#stx-e _tl1386514228_)))
                                              (let ((_hd1386714234_
                                                     (##car _e1386614231_))
                                                    (_tl1386814236_
                                                     (##cdr _e1386614231_)))
                                                (if (gx#stx-null?
                                                     _tl1386814236_)
                                                    (if (gx#stx-pair?
                                                         _tl1386214220_)
                                                        (let ((_e1386914239_
                                                               (gx#stx-e
                                                                _tl1386214220_)))
                                                          (let ((_hd1387014242_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1386914239_))
                        (_tl1387114244_ (##cdr _e1386914239_)))
                    (if (gx#stx-pair? _tl1387114244_)
                        (let ((_e1387214247_ (gx#stx-e _tl1387114244_)))
                          (let ((_hd1387314250_ (##car _e1387214247_))
                                (_tl1387414252_ (##cdr _e1387214247_)))
                            (if (gx#stx-pair? _hd1387314250_)
                                (let ((_e1387514255_
                                       (gx#stx-e _hd1387314250_)))
                                  (let ((_hd1387614258_ (##car _e1387514255_))
                                        (_tl1387714260_ (##cdr _e1387514255_)))
                                    (if (gx#identifier? _hd1387614258_)
                                        (if (gx#stx-eq?
                                             '%#quote
                                             _hd1387614258_)
                                            (if (gx#stx-pair? _tl1387714260_)
                                                (let ((_e1387814263_
                                                       (gx#stx-e
                                                        _tl1387714260_)))
                                                  (let ((_hd1387914266_
                                                         (##car _e1387814263_))
                                                        (_tl1388014268_
                                                         (##cdr _e1387814263_)))
                                                    (if (gx#stx-null?
                                                         _tl1388014268_)
                                                        (if (gx#stx-pair?
                                                             _tl1387414252_)
                                                            (let ((_e1388114271_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1387414252_)))
                      (let ((_hd1388214274_ (##car _e1388114271_))
                            (_tl1388314276_ (##cdr _e1388114271_)))
                        (if (gx#stx-pair? _hd1388214274_)
                            (let ((_e1388414279_ (gx#stx-e _hd1388214274_)))
                              (let ((_hd1388514282_ (##car _e1388414279_))
                                    (_tl1388614284_ (##cdr _e1388414279_)))
                                (if (gx#identifier? _hd1388514282_)
                                    (if (gx#stx-eq? '%#quote _hd1388514282_)
                                        (if (gx#stx-pair? _tl1388614284_)
                                            (let ((_e1388714287_
                                                   (gx#stx-e _tl1388614284_)))
                                              (let ((_hd1388814290_
                                                     (##car _e1388714287_))
                                                    (_tl1388914292_
                                                     (##cdr _e1388714287_)))
                                                (if (gx#stx-null?
                                                     _tl1388914292_)
                                                    (if (gx#stx-null?
                                                         _tl1388314276_)
                                                        ((lambda (_L14295_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L14296_
                          _L14297_
                          _L14298_
                          _L14299_)
                   (let ((__obj20836 (make-object gxc#!struct-type::t '7)))
                     (begin
                       (gxc#!struct-type:::init!
                        __obj20836
                        (gx#stx-e _L14299_)
                        '#f
                        (gx#stx-e _L14298_)
                        '0
                        (gx#stx-e _L14295_)
                        (gx#stx-e _L14296_))
                       __obj20836)))
                 _hd1388814290_
                 _hd1387914266_
                 _hd1387014242_
                 _hd1386714234_
                 _hd1384914186_)
                (_g1383314162_ _g1383614165_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1383314162_
                                                     _g1383614165_))))
                                            (_g1383314162_ _g1383614165_))
                                        (_g1383314162_ _g1383614165_))
                                    (_g1383314162_ _g1383614165_))))
                            (_g1383314162_ _g1383614165_))))
                    (_g1383314162_ _g1383614165_))
                (_g1383314162_ _g1383614165_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1383314162_ _g1383614165_))
                                            (_g1383314162_ _g1383614165_))
                                        (_g1383314162_ _g1383614165_))))
                                (_g1383314162_ _g1383614165_))))
                        (_g1383314162_ _g1383614165_))))
                (_g1383314162_ _g1383614165_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1383314162_
                                                     _g1383614165_))))
                                            (_g1383314162_ _g1383614165_))
                                        (_g1383314162_ _g1383614165_))
                                    (_g1383314162_ _g1383614165_))))
                            (_g1383314162_ _g1383614165_))))
                    (_g1383314162_ _g1383614165_))
                (_g1383314162_ _g1383614165_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1383314162_
                                                     _g1383614165_))
                                                (_g1383314162_
                                                 _g1383614165_))))
                                        (_g1383314162_ _g1383614165_))
                                    (_g1383314162_ _g1383614165_))
                                (_g1383314162_ _g1383614165_))))
                        (_g1383314162_ _g1383614165_))))
                (_g1383314162_ _g1383614165_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1383314162_
                                                     _g1383614165_))))
                                            (_g1383314162_ _g1383614165_))
                                        (_g1383314162_ _g1383614165_))
                                    (_g1383314162_ _g1383614165_))))
                            (_g1383314162_ _g1383614165_))))
                    (_g1383314162_ _g1383614165_)))))
        (_g1383214342_ _args13831_))))
  (define gxc#basic-expression-type-make-struct-predicate
    (lambda (_stx13756_ _args13757_)
      (let* ((_g1376013776_
              (lambda (_g1376113773_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1376113773_)))
             (_g1375913783_ (lambda (_g1376113779_) ((lambda () '#f))))
             (_g1375813827_
              (lambda (_g1376113786_)
                (if (gx#stx-pair? _g1376113786_)
                    (let ((_e1376313788_ (gx#stx-e _g1376113786_)))
                      (let ((_hd1376413791_ (##car _e1376313788_))
                            (_tl1376513793_ (##cdr _e1376313788_)))
                        (if (gx#stx-pair? _hd1376413791_)
                            (let ((_e1376613796_ (gx#stx-e _hd1376413791_)))
                              (let ((_hd1376713799_ (##car _e1376613796_))
                                    (_tl1376813801_ (##cdr _e1376613796_)))
                                (if (gx#identifier? _hd1376713799_)
                                    (if (gx#stx-eq? '%#ref _hd1376713799_)
                                        (if (gx#stx-pair? _tl1376813801_)
                                            (let ((_e1376913804_
                                                   (gx#stx-e _tl1376813801_)))
                                              (let ((_hd1377013807_
                                                     (##car _e1376913804_))
                                                    (_tl1377113809_
                                                     (##cdr _e1376913804_)))
                                                (if (gx#stx-null?
                                                     _tl1377113809_)
                                                    (if (gx#stx-null?
                                                         _tl1376513793_)
                                                        ((lambda (_L13812_)
                                                           (##structure
                                                            gxc#!struct-pred::t
                                                            (gxc#generate-runtime-binding-id
                                                             _L13812_)))
                                                         _hd1377013807_)
                                                        (_g1375913783_
                                                         _g1376113786_))
                                                    (_g1375913783_
                                                     _g1376113786_))))
                                            (_g1375913783_ _g1376113786_))
                                        (_g1375913783_ _g1376113786_))
                                    (_g1375913783_ _g1376113786_))))
                            (_g1375913783_ _g1376113786_))))
                    (_g1375913783_ _g1376113786_)))))
        (_g1375813827_ _args13757_))))
  (begin
    (define gxc#basic-expression-type-make-struct-field-accessor__opt-lambda13625
      (lambda (_stx13627_ _args13628_ _unchecked?13629_)
        (let* ((_g1363213658_
                (lambda (_g1363313655_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1363313655_)))
               (_g1363113665_ (lambda (_g1363313661_) ((lambda () '#f))))
               (_g1363013741_
                (lambda (_g1363313668_)
                  (if (gx#stx-pair? _g1363313668_)
                      (let ((_e1363613670_ (gx#stx-e _g1363313668_)))
                        (let ((_hd1363713673_ (##car _e1363613670_))
                              (_tl1363813675_ (##cdr _e1363613670_)))
                          (if (gx#stx-pair? _hd1363713673_)
                              (let ((_e1363913678_ (gx#stx-e _hd1363713673_)))
                                (let ((_hd1364013681_ (##car _e1363913678_))
                                      (_tl1364113683_ (##cdr _e1363913678_)))
                                  (if (gx#identifier? _hd1364013681_)
                                      (if (gx#stx-eq? '%#ref _hd1364013681_)
                                          (if (gx#stx-pair? _tl1364113683_)
                                              (let ((_e1364213686_
                                                     (gx#stx-e
                                                      _tl1364113683_)))
                                                (let ((_hd1364313689_
                                                       (##car _e1364213686_))
                                                      (_tl1364413691_
                                                       (##cdr _e1364213686_)))
                                                  (if (gx#stx-null?
                                                       _tl1364413691_)
                                                      (if (gx#stx-pair?
                                                           _tl1363813675_)
                                                          (let ((_e1364513694_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1363813675_)))
                    (let ((_hd1364613697_ (##car _e1364513694_))
                          (_tl1364713699_ (##cdr _e1364513694_)))
                      (if (gx#stx-pair? _hd1364613697_)
                          (let ((_e1364813702_ (gx#stx-e _hd1364613697_)))
                            (let ((_hd1364913705_ (##car _e1364813702_))
                                  (_tl1365013707_ (##cdr _e1364813702_)))
                              (if (gx#identifier? _hd1364913705_)
                                  (if (gx#stx-eq? '%#quote _hd1364913705_)
                                      (if (gx#stx-pair? _tl1365013707_)
                                          (let ((_e1365113710_
                                                 (gx#stx-e _tl1365013707_)))
                                            (let ((_hd1365213713_
                                                   (##car _e1365113710_))
                                                  (_tl1365313715_
                                                   (##cdr _e1365113710_)))
                                              (if (gx#stx-null? _tl1365313715_)
                                                  (if (gx#stx-null?
                                                       _tl1364713699_)
                                                      ((lambda (_L13718_
                                                                _L13719_)
                                                         (##structure
                                                          gxc#!struct-getf::t
                                                          (gxc#generate-runtime-binding-id
                                                           _L13719_)
                                                          (gx#stx-e _L13718_)
                                                          _unchecked?13629_))
                                                       _hd1365213713_
                                                       _hd1364313689_)
                                                      (_g1363113665_
                                                       _g1363313668_))
                                                  (_g1363113665_
                                                   _g1363313668_))))
                                          (_g1363113665_ _g1363313668_))
                                      (_g1363113665_ _g1363313668_))
                                  (_g1363113665_ _g1363313668_))))
                          (_g1363113665_ _g1363313668_))))
                  (_g1363113665_ _g1363313668_))
              (_g1363113665_ _g1363313668_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1363113665_ _g1363313668_))
                                          (_g1363113665_ _g1363313668_))
                                      (_g1363113665_ _g1363313668_))))
                              (_g1363113665_ _g1363313668_))))
                      (_g1363113665_ _g1363313668_)))))
          (_g1363013741_ _args13628_))))
    (begin
      (define gxc#basic-expression-type-make-struct-field-accessor__0
        (lambda (_stx13747_ _args13748_)
          (let ((_unchecked?13750_ '#f))
            (gxc#basic-expression-type-make-struct-field-accessor__opt-lambda13625
             _stx13747_
             _args13748_
             _unchecked?13750_))))
      (define gxc#basic-expression-type-make-struct-field-accessor
        (lambda _g20900_
          (let ((_g20899_ (length _g20900_)))
            (cond ((fx= _g20899_ 2)
                   (apply gxc#basic-expression-type-make-struct-field-accessor__0
                          _g20900_))
                  ((fx= _g20899_ 3)
                   (apply gxc#basic-expression-type-make-struct-field-accessor__opt-lambda13625
                          _g20900_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#basic-expression-type-make-struct-field-accessor
                    _g20900_))))))))
  (begin
    (define gxc#basic-expression-type-make-struct-field-mutator__opt-lambda13495
      (lambda (_stx13497_ _args13498_ _unchecked?13499_)
        (let* ((_g1350213528_
                (lambda (_g1350313525_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1350313525_)))
               (_g1350113535_ (lambda (_g1350313531_) ((lambda () '#f))))
               (_g1350013611_
                (lambda (_g1350313538_)
                  (if (gx#stx-pair? _g1350313538_)
                      (let ((_e1350613540_ (gx#stx-e _g1350313538_)))
                        (let ((_hd1350713543_ (##car _e1350613540_))
                              (_tl1350813545_ (##cdr _e1350613540_)))
                          (if (gx#stx-pair? _hd1350713543_)
                              (let ((_e1350913548_ (gx#stx-e _hd1350713543_)))
                                (let ((_hd1351013551_ (##car _e1350913548_))
                                      (_tl1351113553_ (##cdr _e1350913548_)))
                                  (if (gx#identifier? _hd1351013551_)
                                      (if (gx#stx-eq? '%#ref _hd1351013551_)
                                          (if (gx#stx-pair? _tl1351113553_)
                                              (let ((_e1351213556_
                                                     (gx#stx-e
                                                      _tl1351113553_)))
                                                (let ((_hd1351313559_
                                                       (##car _e1351213556_))
                                                      (_tl1351413561_
                                                       (##cdr _e1351213556_)))
                                                  (if (gx#stx-null?
                                                       _tl1351413561_)
                                                      (if (gx#stx-pair?
                                                           _tl1350813545_)
                                                          (let ((_e1351513564_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1350813545_)))
                    (let ((_hd1351613567_ (##car _e1351513564_))
                          (_tl1351713569_ (##cdr _e1351513564_)))
                      (if (gx#stx-pair? _hd1351613567_)
                          (let ((_e1351813572_ (gx#stx-e _hd1351613567_)))
                            (let ((_hd1351913575_ (##car _e1351813572_))
                                  (_tl1352013577_ (##cdr _e1351813572_)))
                              (if (gx#identifier? _hd1351913575_)
                                  (if (gx#stx-eq? '%#quote _hd1351913575_)
                                      (if (gx#stx-pair? _tl1352013577_)
                                          (let ((_e1352113580_
                                                 (gx#stx-e _tl1352013577_)))
                                            (let ((_hd1352213583_
                                                   (##car _e1352113580_))
                                                  (_tl1352313585_
                                                   (##cdr _e1352113580_)))
                                              (if (gx#stx-null? _tl1352313585_)
                                                  (if (gx#stx-null?
                                                       _tl1351713569_)
                                                      ((lambda (_L13588_
                                                                _L13589_)
                                                         (##structure
                                                          gxc#!struct-setf::t
                                                          (gxc#generate-runtime-binding-id
                                                           _L13589_)
                                                          (gx#stx-e _L13588_)
                                                          _unchecked?13499_))
                                                       _hd1352213583_
                                                       _hd1351313559_)
                                                      (_g1350113535_
                                                       _g1350313538_))
                                                  (_g1350113535_
                                                   _g1350313538_))))
                                          (_g1350113535_ _g1350313538_))
                                      (_g1350113535_ _g1350313538_))
                                  (_g1350113535_ _g1350313538_))))
                          (_g1350113535_ _g1350313538_))))
                  (_g1350113535_ _g1350313538_))
              (_g1350113535_ _g1350313538_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1350113535_ _g1350313538_))
                                          (_g1350113535_ _g1350313538_))
                                      (_g1350113535_ _g1350313538_))))
                              (_g1350113535_ _g1350313538_))))
                      (_g1350113535_ _g1350313538_)))))
          (_g1350013611_ _args13498_))))
    (begin
      (define gxc#basic-expression-type-make-struct-field-mutator__0
        (lambda (_stx13617_ _args13618_)
          (let ((_unchecked?13620_ '#f))
            (gxc#basic-expression-type-make-struct-field-mutator__opt-lambda13495
             _stx13617_
             _args13618_
             _unchecked?13620_))))
      (define gxc#basic-expression-type-make-struct-field-mutator
        (lambda _g20902_
          (let ((_g20901_ (length _g20902_)))
            (cond ((fx= _g20901_ 2)
                   (apply gxc#basic-expression-type-make-struct-field-mutator__0
                          _g20902_))
                  ((fx= _g20901_ 3)
                   (apply gxc#basic-expression-type-make-struct-field-mutator__opt-lambda13495
                          _g20902_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#basic-expression-type-make-struct-field-mutator
                    _g20902_))))))))
  (define gxc#basic-expression-type-make-struct-field-unchecked-accessor
    (lambda (_stx13493_ _args13494_)
      (gxc#basic-expression-type-make-struct-field-accessor__opt-lambda13625
       _stx13493_
       _args13494_
       '#t)))
  (define gxc#basic-expression-type-make-struct-field-unchecked-mutator
    (lambda (_stx13490_ _args13491_)
      (gxc#basic-expression-type-make-struct-field-mutator__opt-lambda13495
       _stx13490_
       _args13491_
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
    (lambda (_stx13439_)
      (let* ((_g1344113454_
              (lambda (_g1344213451_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1344213451_)))
             (_g1344013487_
              (lambda (_g1344213457_)
                (if (gx#stx-pair? _g1344213457_)
                    (let ((_e1344413459_ (gx#stx-e _g1344213457_)))
                      (let ((_hd1344513462_ (##car _e1344413459_))
                            (_tl1344613464_ (##cdr _e1344413459_)))
                        (if (gx#stx-pair? _tl1344613464_)
                            (let ((_e1344713467_ (gx#stx-e _tl1344613464_)))
                              (let ((_hd1344813470_ (##car _e1344713467_))
                                    (_tl1344913472_ (##cdr _e1344713467_)))
                                (if (gx#stx-null? _tl1344913472_)
                                    ((lambda (_L13475_)
                                       (gxc#optimizer-lookup-type
                                        (gxc#generate-runtime-binding-id
                                         _L13475_)))
                                     _hd1344813470_)
                                    (_g1344113454_ _g1344213457_))))
                            (_g1344113454_ _g1344213457_))))
                    (_g1344113454_ _g1344213457_)))))
        (_g1344013487_ _stx13439_))))
  (define gxc#optimize-call%
    (lambda (_stx13345_)
      (let* ((_g1334813368_
              (lambda (_g1334913365_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1334913365_)))
             (_g1334713375_
              (lambda (_g1334913371_)
                ((lambda () (gxc#xform-call% _stx13345_)))))
             (_g1334613436_
              (lambda (_g1334913378_)
                (if (gx#stx-pair? _g1334913378_)
                    (let ((_e1335213380_ (gx#stx-e _g1334913378_)))
                      (let ((_hd1335313383_ (##car _e1335213380_))
                            (_tl1335413385_ (##cdr _e1335213380_)))
                        (if (gx#stx-pair? _tl1335413385_)
                            (let ((_e1335513388_ (gx#stx-e _tl1335413385_)))
                              (let ((_hd1335613391_ (##car _e1335513388_))
                                    (_tl1335713393_ (##cdr _e1335513388_)))
                                (if (gx#stx-pair? _hd1335613391_)
                                    (let ((_e1335813396_
                                           (gx#stx-e _hd1335613391_)))
                                      (let ((_hd1335913399_
                                             (##car _e1335813396_))
                                            (_tl1336013401_
                                             (##cdr _e1335813396_)))
                                        (if (gx#identifier? _hd1335913399_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1335913399_)
                                                (if (gx#stx-pair?
                                                     _tl1336013401_)
                                                    (let ((_e1336113404_
                                                           (gx#stx-e
                                                            _tl1336013401_)))
                                                      (let ((_hd1336213407_
                                                             (##car _e1336113404_))
                                                            (_tl1336313409_
                                                             (##cdr _e1336113404_)))
                                                        (if (gx#stx-null?
                                                             _tl1336313409_)
                                                            ((lambda (_L13412_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L13413_)
                       (let* ((_rator-id13431_
                               (gxc#generate-runtime-binding-id _L13413_))
                              (_rator-type13433_
                               (gxc#optimizer-resolve-type _rator-id13431_)))
                         (if (##structure-instance-of?
                              _rator-type13433_
                              'gxc#!procedure::t)
                             (begin
                               (gxc#verbose
                                '"optimize-call "
                                _rator-id13431_
                                '" => "
                                _rator-type13433_
                                '" "
                                (##structure-ref
                                 _rator-type13433_
                                 '1
                                 gxc#!type::t
                                 '#f))
                               (call-method
                                _rator-type13433_
                                'optimize-call
                                _stx13345_
                                _L13412_))
                             (if (not _rator-type13433_)
                                 (gxc#xform-call% _stx13345_)
                                 (gxc#raise-compile-error
                                  '"Illegal application; not a procedure"
                                  _stx13345_
                                  _rator-type13433_)))))
                     _tl1335713393_
                     _hd1336213407_)
                    (_g1334713375_ _g1334913378_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1334713375_
                                                     _g1334913378_))
                                                (_g1334713375_ _g1334913378_))
                                            (_g1334713375_ _g1334913378_))))
                                    (_g1334713375_ _g1334913378_))))
                            (_g1334713375_ _g1334913378_))))
                    (_g1334713375_ _g1334913378_)))))
        (_g1334613436_ _stx13345_))))
  (define gxc#!struct-pred::optimize-call
    (lambda (_self13200_ _stx13201_ _args13202_)
      (let* ((_self1320313209_ _self13200_)
             (_E1320513213_
              (lambda () (error '"No clause matching" _self1320313209_)))
             (_K1320613337_
              (lambda (_struct-t13216_)
                (let* ((_struct-type13218_
                        (gxc#optimizer-resolve-type _struct-t13216_))
                       (_struct-type1321913233_ _struct-type13218_)
                       (_E1322313237_
                        (lambda ()
                          (error '"No clause matching"
                                 _struct-type1321913233_)))
                       (_else1322213241_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx13201_
                           _struct-t13216_
                           _struct-type13218_)))
                       (_try-match1322113249_
                        (lambda ()
                          (let ((_K1322413246_
                                 (lambda () (gxc#xform-call% _stx13201_))))
                            (if (##eq? _struct-type1321913233_ '#f)
                                (_K1322413246_)
                                (_else1322213241_)))))
                       (_K1322513312_
                        (lambda (_plist13252_ _struct-type-id13253_)
                          (let* ((_g1325613266_
                                  (lambda (_g1325713263_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g1325713263_)))
                                 (_g1325513273_
                                  (lambda (_g1325713269_)
                                    ((lambda ()
                                       (gxc#raise-compile-error
                                        '"Illegal struct predicate application"
                                        _stx13201_)))))
                                 (_g1325413309_
                                  (lambda (_g1325713276_)
                                    (if (gx#stx-pair? _g1325713276_)
                                        (let ((_e1325913278_
                                               (gx#stx-e _g1325713276_)))
                                          (let ((_hd1326013281_
                                                 (##car _e1325913278_))
                                                (_tl1326113283_
                                                 (##cdr _e1325913278_)))
                                            (if (gx#stx-null? _tl1326113283_)
                                                ((lambda (_L13286_)
                                                   (let ((_expr13306_
                                                          (gxc#compile-e
                                                           _L13286_))
                                                         (_op13307_
                                                          (if (if _plist13252_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (assgetq 'final: _plist13252_)
                          '#f)
                      '%#struct-direct-instance?
                      '%#struct-instance?)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gxc#xform-wrap-source
                                                      (cons _op13307_
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons _struct-type-id13253_ '()))
                          (cons _expr13306_ '())))
              _stx13201_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1326013281_)
                                                (_g1325513273_
                                                 _g1325713276_))))
                                        (_g1325513273_ _g1325713276_)))))
                            (_g1325413309_ _args13202_)))))
                  (if (##structure-instance-of?
                       _struct-type1321913233_
                       (##type-id gxc#!struct-type::t))
                      (let* ((_e1322613315_
                              (##vector-ref _struct-type1321913233_ '1))
                             (_struct-type-id13318_ _e1322613315_)
                             (_e1322713320_
                              (##vector-ref _struct-type1321913233_ '2))
                             (_e1322813323_
                              (##vector-ref _struct-type1321913233_ '3))
                             (_e1322913326_
                              (##vector-ref _struct-type1321913233_ '4))
                             (_e1323013329_
                              (##vector-ref _struct-type1321913233_ '5))
                             (_e1323113332_
                              (##vector-ref _struct-type1321913233_ '6))
                             (_plist13335_ _e1323113332_))
                        (_K1322513312_ _plist13335_ _struct-type-id13318_))
                      (_try-match1322113249_))))))
        (if (##structure-instance-of?
             _self1320313209_
             (##type-id gxc#!struct-pred::t))
            (let* ((_e1320713340_ (##vector-ref _self1320313209_ '1))
                   (_struct-t13343_ _e1320713340_))
              (_K1320613337_ _struct-t13343_))
            (_E1320513213_)))))
  (bind-method!
   gxc#!struct-pred::t
   'optimize-call
   gxc#!struct-pred::optimize-call
   '#f)
  (define gxc#!struct-cons::optimize-call
    (lambda (_self13096_ _stx13097_ _args13098_)
      (let* ((_self1309913105_ _self13096_)
             (_E1310113109_
              (lambda () (error '"No clause matching" _self1309913105_)))
             (_K1310213192_
              (lambda (_struct-t13112_)
                (let* ((_struct-type13114_
                        (gxc#optimizer-resolve-type _struct-t13112_))
                       (_struct-type1311513128_ _struct-type13114_)
                       (_E1311913132_
                        (lambda ()
                          (error '"No clause matching"
                                 _struct-type1311513128_)))
                       (_else1311813136_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct constructor application; not a struct type"
                           _stx13097_
                           _struct-t13112_
                           _struct-type13114_)))
                       (_try-match1311713144_
                        (lambda ()
                          (let ((_K1312013141_
                                 (lambda ()
                                   (begin
                                     (gxc#verbose
                                      '"cannot inline struct constructor; unknown struct type "
                                      _struct-t13112_)
                                     (gxc#xform-call% _stx13097_)))))
                            (if (##eq? _struct-type1311513128_ '#f)
                                (_K1312013141_)
                                (_else1311813136_)))))
                       (_K1312113166_
                        (lambda (_ctor13147_
                                 _xfields13148_
                                 _fields13149_
                                 _type-id13150_)
                          (let* ((_args13152_ (map gxc#compile-e _args13098_))
                                 (_$e13154_
                                  (if _ctor13147_
                                      (if _xfields13148_
                                          (gxc#!struct-type-lookup-method
                                           _struct-type13114_
                                           _ctor13147_)
                                          '#f)
                                      '#f)))
                            (if _$e13154_
                                ((lambda (_kons13157_)
                                   (let ((_$obj13159_
                                          (make-symbol (gensym '__obj))))
                                     (gxc#xform-wrap-source
                                      (cons '%#let-values
                                            (cons (cons (cons (cons _$obj13159_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (cons '%#call
                                  (cons (cons '%#ref (cons 'make-object '()))
                                        (cons (cons '%#ref
                                                    (cons _struct-t13112_ '()))
                                              (cons (cons '%#quote
                                                          (cons (fx+ _fields13149_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _xfields13148_)
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
                                    (cons (cons '%#ref (cons _kons13157_ '()))
                                          (cons (cons '%#ref
                                                      (cons _$obj13159_ '()))
                                                _args13152_)))
                              _stx13097_))
                            (cons (cons '%#ref (cons _$obj13159_ '())) '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _stx13097_)))
                                 _$e13154_)
                                (if (let ((_$e13161_ _ctor13147_))
                                      (if _$e13161_
                                          _$e13161_
                                          (not _xfields13148_)))
                                    (gxc#xform-wrap-source
                                     (cons '%#call
                                           (cons (cons '%#ref
                                                       (cons 'make-struct-instance
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _struct-t13112_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _args13152_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _stx13097_)
                                    (let ((_arity13164_
                                           (fx+ _fields13149_ _xfields13148_)))
                                      (if (fx= _arity13164_
                                               (length _args13152_))
                                          (gxc#xform-wrap-source
                                           (cons '%#call
                                                 (cons (cons '%#ref
                                                             (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons '%#ref (cons _struct-t13112_ '())) _args13152_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _stx13097_)
                                          (gxc#raise-compile-error
                                           '"Illegal struct constructor application; arity mismatch"
                                           _stx13097_
                                           _struct-t13112_
                                           _arity13164_)))))))))
                  (if (##structure-instance-of?
                       _struct-type1311513128_
                       (##type-id gxc#!struct-type::t))
                      (let* ((_e1312213169_
                              (##vector-ref _struct-type1311513128_ '1))
                             (_type-id13172_ _e1312213169_)
                             (_e1312313174_
                              (##vector-ref _struct-type1311513128_ '2))
                             (_e1312413177_
                              (##vector-ref _struct-type1311513128_ '3))
                             (_fields13180_ _e1312413177_)
                             (_e1312513182_
                              (##vector-ref _struct-type1311513128_ '4))
                             (_xfields13185_ _e1312513182_)
                             (_e1312613187_
                              (##vector-ref _struct-type1311513128_ '5))
                             (_ctor13190_ _e1312613187_))
                        (_K1312113166_
                         _ctor13190_
                         _xfields13185_
                         _fields13180_
                         _type-id13172_))
                      (_try-match1311713144_))))))
        (if (##structure-instance-of?
             _self1309913105_
             (##type-id gxc#!struct-cons::t))
            (let* ((_e1310313195_ (##vector-ref _self1309913105_ '1))
                   (_struct-t13198_ _e1310313195_))
              (_K1310213192_ _struct-t13198_))
            (_E1310113109_)))))
  (bind-method!
   gxc#!struct-cons::t
   'optimize-call
   gxc#!struct-cons::optimize-call
   '#f)
  (define gxc#!struct-getf::optimize-call
    (lambda (_self12930_ _stx12931_ _args12932_)
      (let* ((_self1293312941_ _self12930_)
             (_E1293512945_
              (lambda () (error '"No clause matching" _self1293312941_)))
             (_K1293613078_
              (lambda (_unchecked?12948_ _off12949_ _struct-t12950_)
                (let* ((_struct-type12952_
                        (gxc#optimizer-resolve-type _struct-t12950_))
                       (_struct-type1295312967_ _struct-type12952_)
                       (_E1295712971_
                        (lambda ()
                          (error '"No clause matching"
                                 _struct-type1295312967_)))
                       (_else1295612975_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx12931_
                           _struct-t12950_
                           _struct-type12952_)))
                       (_try-match1295512983_
                        (lambda ()
                          (let ((_K1295812980_
                                 (lambda () (gxc#xform-call% _stx12931_))))
                            (if (##eq? _struct-type1295312967_ '#f)
                                (_K1295812980_)
                                (_else1295612975_)))))
                       (_K1295913049_
                        (lambda (_plist12986_
                                 _xfields12987_
                                 _fields12988_
                                 _struct-type-id12989_)
                          (if _xfields12987_
                              (let* ((_g1299213002_
                                      (lambda (_g1299312999_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g1299312999_)))
                                     (_g1299113009_
                                      (lambda (_g1299313005_)
                                        ((lambda ()
                                           (gxc#raise-compile-error
                                            '"Illegal struct accessor application"
                                            _stx12931_)))))
                                     (_g1299013046_
                                      (lambda (_g1299313012_)
                                        (if (gx#stx-pair? _g1299313012_)
                                            (let ((_e1299513014_
                                                   (gx#stx-e _g1299313012_)))
                                              (let ((_hd1299613017_
                                                     (##car _e1299513014_))
                                                    (_tl1299713019_
                                                     (##cdr _e1299513014_)))
                                                (if (gx#stx-null?
                                                     _tl1299713019_)
                                                    ((lambda (_L13022_)
                                                       (let ((_expr13042_
                                                              (gxc#compile-e
                                                               _L13022_))
                                                             (_off13043_
                                                              (fx+ _off12949_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xfields12987_
                           '1))
                     (_op13044_
                      (if _unchecked?12948_
                          '%#struct-unchecked-ref
                          (if (if _plist12986_
                                  (assgetq 'final: _plist12986_)
                                  '#f)
                              '%#struct-direct-ref
                              '%#struct-ref))))
                 (gxc#xform-wrap-source
                  (cons _op13044_
                        (cons (cons '%#ref (cons _struct-t12950_ '()))
                              (cons (cons '%#quote (cons _off13043_ '()))
                                    (cons _expr13042_ '()))))
                  _stx12931_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd1299613017_)
                                                    (_g1299113009_
                                                     _g1299313012_))))
                                            (_g1299113009_ _g1299313012_)))))
                                (_g1299013046_ _args12932_))
                              (begin
                                (gxc#verbose
                                 '"struct-getf: incomplete struct "
                                 _struct-type-id12989_)
                                (gxc#xform-call% _stx12931_))))))
                  (if (##structure-instance-of?
                       _struct-type1295312967_
                       (##type-id gxc#!struct-type::t))
                      (let* ((_e1296013052_
                              (##vector-ref _struct-type1295312967_ '1))
                             (_struct-type-id13055_ _e1296013052_)
                             (_e1296113057_
                              (##vector-ref _struct-type1295312967_ '2))
                             (_e1296213060_
                              (##vector-ref _struct-type1295312967_ '3))
                             (_fields13063_ _e1296213060_)
                             (_e1296313065_
                              (##vector-ref _struct-type1295312967_ '4))
                             (_xfields13068_ _e1296313065_)
                             (_e1296413070_
                              (##vector-ref _struct-type1295312967_ '5))
                             (_e1296513073_
                              (##vector-ref _struct-type1295312967_ '6))
                             (_plist13076_ _e1296513073_))
                        (_K1295913049_
                         _plist13076_
                         _xfields13068_
                         _fields13063_
                         _struct-type-id13055_))
                      (_try-match1295512983_))))))
        (if (##structure-instance-of?
             _self1293312941_
             (##type-id gxc#!struct-getf::t))
            (let* ((_e1293713081_ (##vector-ref _self1293312941_ '1))
                   (_struct-t13084_ _e1293713081_)
                   (_e1293813086_ (##vector-ref _self1293312941_ '2))
                   (_off13089_ _e1293813086_)
                   (_e1293913091_ (##vector-ref _self1293312941_ '3))
                   (_unchecked?13094_ _e1293913091_))
              (_K1293613078_ _unchecked?13094_ _off13089_ _struct-t13084_))
            (_E1293512945_)))))
  (bind-method!
   gxc#!struct-getf::t
   'optimize-call
   gxc#!struct-getf::optimize-call
   '#f)
  (define gxc#!struct-setf::optimize-call
    (lambda (_self12747_ _stx12748_ _args12749_)
      (let* ((_self1275012758_ _self12747_)
             (_E1275212762_
              (lambda () (error '"No clause matching" _self1275012758_)))
             (_K1275312912_
              (lambda (_unchecked?12765_ _off12766_ _struct-t12767_)
                (let* ((_struct-type12769_
                        (gxc#optimizer-resolve-type _struct-t12767_))
                       (_struct-type1277012784_ _struct-type12769_)
                       (_E1277412788_
                        (lambda ()
                          (error '"No clause matching"
                                 _struct-type1277012784_)))
                       (_else1277312792_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx12748_
                           _struct-t12767_
                           _struct-type12769_)))
                       (_try-match1277212800_
                        (lambda ()
                          (let ((_K1277512797_
                                 (lambda () (gxc#xform-call% _stx12748_))))
                            (if (##eq? _struct-type1277012784_ '#f)
                                (_K1277512797_)
                                (_else1277312792_)))))
                       (_K1277612883_
                        (lambda (_plist12803_
                                 _xfields12804_
                                 _fields12805_
                                 _struct-type-id12806_)
                          (if _xfields12804_
                              (let* ((_g1280912823_
                                      (lambda (_g1281012820_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g1281012820_)))
                                     (_g1280812830_
                                      (lambda (_g1281012826_)
                                        ((lambda ()
                                           (gxc#raise-compile-error
                                            '"Illegal struct mutator application"
                                            _stx12748_)))))
                                     (_g1280712880_
                                      (lambda (_g1281012833_)
                                        (if (gx#stx-pair? _g1281012833_)
                                            (let ((_e1281312835_
                                                   (gx#stx-e _g1281012833_)))
                                              (let ((_hd1281412838_
                                                     (##car _e1281312835_))
                                                    (_tl1281512840_
                                                     (##cdr _e1281312835_)))
                                                (if (gx#stx-pair?
                                                     _tl1281512840_)
                                                    (let ((_e1281612843_
                                                           (gx#stx-e
                                                            _tl1281512840_)))
                                                      (let ((_hd1281712846_
                                                             (##car _e1281612843_))
                                                            (_tl1281812848_
                                                             (##cdr _e1281612843_)))
                                                        (if (gx#stx-null?
                                                             _tl1281812848_)
                                                            ((lambda (_L12851_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L12852_)
                       (let ((_expr12875_ (gxc#compile-e _L12852_))
                             (_val12876_ (gxc#compile-e _L12851_))
                             (_off12877_ (fx+ _off12766_ _xfields12804_ '1))
                             (_op12878_
                              (if _unchecked?12765_
                                  '%#struct-unchecked-set!
                                  (if (if _plist12803_
                                          (assgetq 'final: _plist12803_)
                                          '#f)
                                      '%#struct-direct-set!
                                      '%#struct-set!))))
                         (gxc#xform-wrap-source
                          (cons _op12878_
                                (cons (cons '%#ref (cons _struct-t12767_ '()))
                                      (cons (cons '%#quote
                                                  (cons _off12877_ '()))
                                            (cons _expr12875_
                                                  (cons _val12876_ '())))))
                          _stx12748_)))
                     _hd1281712846_
                     _hd1281412838_)
                    (_g1280812830_ _g1281012833_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1280812830_
                                                     _g1281012833_))))
                                            (_g1280812830_ _g1281012833_)))))
                                (_g1280712880_ _args12749_))
                              (begin
                                (gxc#verbose
                                 '"struct-setf: incomplete struct "
                                 _struct-type-id12806_)
                                (gxc#xform-call% _stx12748_))))))
                  (if (##structure-instance-of?
                       _struct-type1277012784_
                       (##type-id gxc#!struct-type::t))
                      (let* ((_e1277712886_
                              (##vector-ref _struct-type1277012784_ '1))
                             (_struct-type-id12889_ _e1277712886_)
                             (_e1277812891_
                              (##vector-ref _struct-type1277012784_ '2))
                             (_e1277912894_
                              (##vector-ref _struct-type1277012784_ '3))
                             (_fields12897_ _e1277912894_)
                             (_e1278012899_
                              (##vector-ref _struct-type1277012784_ '4))
                             (_xfields12902_ _e1278012899_)
                             (_e1278112904_
                              (##vector-ref _struct-type1277012784_ '5))
                             (_e1278212907_
                              (##vector-ref _struct-type1277012784_ '6))
                             (_plist12910_ _e1278212907_))
                        (_K1277612883_
                         _plist12910_
                         _xfields12902_
                         _fields12897_
                         _struct-type-id12889_))
                      (_try-match1277212800_))))))
        (if (##structure-instance-of?
             _self1275012758_
             (##type-id gxc#!struct-setf::t))
            (let* ((_e1275412915_ (##vector-ref _self1275012758_ '1))
                   (_struct-t12918_ _e1275412915_)
                   (_e1275512920_ (##vector-ref _self1275012758_ '2))
                   (_off12923_ _e1275512920_)
                   (_e1275612925_ (##vector-ref _self1275012758_ '3))
                   (_unchecked?12928_ _e1275612925_))
              (_K1275312912_ _unchecked?12928_ _off12923_ _struct-t12918_))
            (_E1275212762_)))))
  (bind-method!
   gxc#!struct-setf::t
   'optimize-call
   gxc#!struct-setf::optimize-call
   '#f)
  (define gxc#!lambda::optimize-call
    (lambda (_self12703_ _stx12704_ _args12705_)
      (let* ((_self1270612715_ _self12703_)
             (_E1270812719_
              (lambda () (error '"No clause matching" _self1270612715_)))
             (_K1270912726_
              (lambda (_inline12722_ _dispatch12723_ _arity12724_)
                (begin
                  (if (gxc#!lambda-arity-match? _self12703_ _args12705_)
                      '#!void
                      (gxc#raise-compile-error
                       '"Illegal lambda application; arity mismatch"
                       _stx12704_
                       _arity12724_))
                  (if _inline12722_
                      (begin
                        (gxc#verbose '"inline lambda")
                        (gxc#compile-e
                         (gxc#xform-wrap-source
                          (_inline12722_ _stx12704_)
                          _stx12704_)))
                      (if _dispatch12723_
                          (begin
                            (gxc#verbose
                             '"dispatch lambda => "
                             _dispatch12723_)
                            (gxc#compile-e
                             (gxc#xform-wrap-source
                              (cons '%#call
                                    (cons (cons '%#ref
                                                (cons _dispatch12723_ '()))
                                          _args12705_))
                              _stx12704_)))
                          (gxc#xform-call% _stx12704_)))))))
        (if (##structure-instance-of?
             _self1270612715_
             (##type-id gxc#!lambda::t))
            (let* ((_e1271012729_ (##vector-ref _self1270612715_ '1))
                   (_e1271112732_ (##vector-ref _self1270612715_ '2))
                   (_arity12735_ _e1271112732_)
                   (_e1271212737_ (##vector-ref _self1270612715_ '3))
                   (_dispatch12740_ _e1271212737_)
                   (_e1271312742_ (##vector-ref _self1270612715_ '4))
                   (_inline12745_ _e1271312742_))
              (_K1270912726_ _inline12745_ _dispatch12740_ _arity12735_))
            (_E1270812719_)))))
  (bind-method! gxc#!lambda::t 'optimize-call gxc#!lambda::optimize-call '#f)
  (define gxc#!case-lambda::optimize-call
    (lambda (_self12664_ _stx12665_ _args12666_)
      (let* ((_self1266712674_ _self12664_)
             (_E1266912678_
              (lambda () (error '"No clause matching" _self1266712674_)))
             (_K1267012692_
              (lambda (_clauses12681_)
                (let ((_$e12687_
                       (find (lambda (_g1268212684_)
                               (gxc#!lambda-arity-match?
                                _g1268212684_
                                _args12666_))
                             _clauses12681_)))
                  (if _$e12687_
                      ((lambda (_clause12690_)
                         (call-method
                          _clause12690_
                          'optimize-call
                          _stx12665_
                          _args12666_))
                       _$e12687_)
                      (gxc#raise-compile-error
                       '"Illegal case-lambda application; arity mismatch"
                       _stx12665_
                       (map gxc#!lambda-arity _clauses12681_)))))))
        (if (##structure-instance-of?
             _self1266712674_
             (##type-id gxc#!case-lambda::t))
            (let* ((_e1267112695_ (##vector-ref _self1266712674_ '1))
                   (_e1267212698_ (##vector-ref _self1266712674_ '2))
                   (_clauses12701_ _e1267212698_))
              (_K1267012692_ _clauses12701_))
            (_E1266912678_)))))
  (bind-method!
   gxc#!case-lambda::t
   'optimize-call
   gxc#!case-lambda::optimize-call
   '#f)
  (define gxc#!lambda-arity-match?
    (lambda (_self12600_ _args12601_)
      (let* ((_self1260212609_ _self12600_)
             (_E1260412613_
              (lambda () (error '"No clause matching" _self1260212609_)))
             (_K1260512653_
              (lambda (_arity12616_)
                (let* ((_arity1261712626_ _arity12616_)
                       (_E1262012630_
                        (lambda ()
                          (error '"No clause matching" _arity1261712626_)))
                       (_try-match1261912646_
                        (lambda ()
                          (let ((_K1262112636_
                                 (lambda (_arity12634_)
                                   (fx>= (length _args12601_) _arity12634_))))
                            (if (##pair? _arity1261712626_)
                                (let ((_hd1262212639_
                                       (##car _arity1261712626_))
                                      (_tl1262312641_
                                       (##cdr _arity1261712626_)))
                                  (let ((_arity12644_ _hd1262212639_))
                                    (if (##null? _tl1262312641_)
                                        (_K1262112636_ _arity12644_)
                                        (_E1262012630_))))
                                (_E1262012630_)))))
                       (_K1262412650_
                        (lambda () (fx= (length _args12601_) _arity12616_))))
                  (if (fixnum? _arity1261712626_)
                      (_K1262412650_)
                      (_try-match1261912646_))))))
        (if (##structure-instance-of?
             _self1260212609_
             (##type-id gxc#!lambda::t))
            (let* ((_e1260612656_ (##vector-ref _self1260212609_ '1))
                   (_e1260712659_ (##vector-ref _self1260212609_ '2))
                   (_arity12662_ _e1260712659_))
              (_K1260512653_ _arity12662_))
            (_E1260412613_)))))
  (define gxc#generate-ssxi-module%
    (lambda (_stx12540_)
      (let* ((_g1254212556_
              (lambda (_g1254312553_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1254312553_)))
             (_g1254112597_
              (lambda (_g1254312559_)
                (if (gx#stx-pair? _g1254312559_)
                    (let ((_e1254612561_ (gx#stx-e _g1254312559_)))
                      (let ((_hd1254712564_ (##car _e1254612561_))
                            (_tl1254812566_ (##cdr _e1254612561_)))
                        (if (gx#stx-pair? _tl1254812566_)
                            (let ((_e1254912569_ (gx#stx-e _tl1254812566_)))
                              (let ((_hd1255012572_ (##car _e1254912569_))
                                    (_tl1255112574_ (##cdr _e1254912569_)))
                                ((lambda (_L12577_ _L12578_)
                                   (let* ((_ctx12591_
                                           (gx#syntax-local-e__0 _L12578_))
                                          (_code12593_
                                           (##structure-ref
                                            _ctx12591_
                                            '11
                                            gx#module-context::t
                                            '#f)))
                                     (call-with-parameters
                                      (lambda () (gxc#compile-e _code12593_))
                                      gx#current-expander-context
                                      _ctx12591_)))
                                 _tl1255112574_
                                 _hd1255012572_)))
                            (_g1254212556_ _g1254312559_))))
                    (_g1254212556_ _g1254312559_)))))
        (_g1254112597_ _stx12540_))))
  (define gxc#generate-ssxi-define-values%
    (lambda (_stx12350_)
      (letrec ((_generate-e12352_
                (lambda (_id12529_)
                  (let* ((_sym12531_
                          (if (gx#identifier? (gx#datum->syntax__0 '#f 'id))
                              (gxc#generate-runtime-binding-id _id12529_)
                              '#f))
                         (_$e12533_
                          (if _sym12531_
                              (gxc#optimizer-lookup-type _sym12531_)
                              '#f)))
                    (if _$e12533_
                        ((lambda (_type12536_)
                           (begin
                             (gxc#verbose '"generate typedecl " _sym12531_)
                             (let ((_typedecl12538_
                                    (call-method _type12536_ 'typedecl)))
                               (cons 'declare-type
                                     (cons _sym12531_
                                           (cons _typedecl12538_ '()))))))
                         _$e12533_)
                        '(begin))))))
        (let* ((_g1235512393_
                (lambda (_g1235612390_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1235612390_)))
               (_g1235412474_
                (lambda (_g1235612396_)
                  (if (gx#stx-pair? _g1235612396_)
                      (let ((_e1237112398_ (gx#stx-e _g1235612396_)))
                        (let ((_hd1237212401_ (##car _e1237112398_))
                              (_tl1237312403_ (##cdr _e1237112398_)))
                          (if (gx#stx-pair? _tl1237312403_)
                              (let ((_e1237412406_ (gx#stx-e _tl1237312403_)))
                                (let ((_hd1237512409_ (##car _e1237412406_))
                                      (_tl1237612411_ (##cdr _e1237412406_)))
                                  (if (gx#stx-pair/null? _hd1237512409_)
                                      (if (fx>= (gx#stx-length _hd1237512409_)
                                                '0)
                                          (let ((_g20903_
                                                 (gx#syntax-split-splice
                                                  _hd1237512409_
                                                  '0)))
                                            (begin
                                              (let ((_g20904_
                                                     (values-count _g20903_)))
                                                (if (not (fx= _g20904_ 2))
                                                    (error "Context expects 2 values"
                                                           _g20904_)))
                                              (let ((_target1237712414_
                                                     (values-ref _g20903_ 0))
                                                    (_tl1237912416_
                                                     (values-ref _g20903_ 1)))
                                                (if (gx#stx-null?
                                                     _tl1237912416_)
                                                    (letrec ((_loop1238012419_
                                                              (lambda (_hd1237812422_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _id1238412424_)
                        (if (gx#stx-pair? _hd1237812422_)
                            (let ((_e1238112427_ (gx#stx-e _hd1237812422_)))
                              (let ((_lp-hd1238212430_ (##car _e1238112427_))
                                    (_lp-tl1238312432_ (##cdr _e1238112427_)))
                                (_loop1238012419_
                                 _lp-tl1238312432_
                                 (cons _lp-hd1238212430_ _id1238412424_))))
                            (let ((_id1238512435_ (reverse _id1238412424_)))
                              (if (gx#stx-pair? _tl1237612411_)
                                  (let ((_e1238612438_
                                         (gx#stx-e _tl1237612411_)))
                                    (let ((_hd1238712441_
                                           (##car _e1238612438_))
                                          (_tl1238812443_
                                           (##cdr _e1238612438_)))
                                      (if (gx#stx-null? _tl1238812443_)
                                          ((lambda (_L12446_)
                                             (let ((_types12472_
                                                    (map _generate-e12352_
                                                         (begin
                                                           '#!void
                                                           (foldr1 (lambda (_g1246412467_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g1246512469_)
                             (cons _g1246412467_ _g1246512469_))
                           '()
                           _L12446_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons 'begin _types12472_)))
                                           _id1238512435_)
                                          (_g1235512393_ _g1235612396_))))
                                  (_g1235512393_ _g1235612396_)))))))
              (_loop1238012419_ _target1237712414_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1235512393_
                                                     _g1235612396_)))))
                                          (_g1235512393_ _g1235612396_))
                                      (_g1235512393_ _g1235612396_))))
                              (_g1235512393_ _g1235612396_))))
                      (_g1235512393_ _g1235612396_))))
               (_g1235312526_
                (lambda (_g1235612477_)
                  (if (gx#stx-pair? _g1235612477_)
                      (let ((_e1235812479_ (gx#stx-e _g1235612477_)))
                        (let ((_hd1235912482_ (##car _e1235812479_))
                              (_tl1236012484_ (##cdr _e1235812479_)))
                          (if (gx#stx-pair? _tl1236012484_)
                              (let ((_e1236112487_ (gx#stx-e _tl1236012484_)))
                                (let ((_hd1236212490_ (##car _e1236112487_))
                                      (_tl1236312492_ (##cdr _e1236112487_)))
                                  (if (gx#stx-pair? _hd1236212490_)
                                      (let ((_e1236412495_
                                             (gx#stx-e _hd1236212490_)))
                                        (let ((_hd1236512498_
                                               (##car _e1236412495_))
                                              (_tl1236612500_
                                               (##cdr _e1236412495_)))
                                          (if (gx#stx-null? _tl1236612500_)
                                              (if (gx#stx-pair? _tl1236312492_)
                                                  (let ((_e1236712503_
                                                         (gx#stx-e
                                                          _tl1236312492_)))
                                                    (let ((_hd1236812506_
                                                           (##car _e1236712503_))
                                                          (_tl1236912508_
                                                           (##cdr _e1236712503_)))
                                                      (if (gx#stx-null?
                                                           _tl1236912508_)
                                                          ((lambda (_L12511_)
                                                             (_generate-e12352_
                                                              _L12511_))
                                                           _hd1236512498_)
                                                          (_g1235412474_
                                                           _g1235612477_))))
                                                  (_g1235412474_
                                                   _g1235612477_))
                                              (_g1235412474_ _g1235612477_))))
                                      (_g1235412474_ _g1235612477_))))
                              (_g1235412474_ _g1235612477_))))
                      (_g1235412474_ _g1235612477_)))))
          (_g1235312526_ _stx12350_)))))
  (define gxc#generate-ssxi-call%
    (lambda (_stx11904_)
      (let* ((_g1190812010_
              (lambda (_g1190912007_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1190912007_)))
             (_g1190712017_ (lambda (_g1190912013_) ((lambda () '(begin)))))
             (_g1190612167_
              (lambda (_g1190912020_)
                (if (gx#stx-pair? _g1190912020_)
                    (let ((_e1196712022_ (gx#stx-e _g1190912020_)))
                      (let ((_hd1196812025_ (##car _e1196712022_))
                            (_tl1196912027_ (##cdr _e1196712022_)))
                        (if (gx#stx-pair? _tl1196912027_)
                            (let ((_e1197012030_ (gx#stx-e _tl1196912027_)))
                              (let ((_hd1197112033_ (##car _e1197012030_))
                                    (_tl1197212035_ (##cdr _e1197012030_)))
                                (if (gx#stx-pair? _hd1197112033_)
                                    (let ((_e1197312038_
                                           (gx#stx-e _hd1197112033_)))
                                      (let ((_hd1197412041_
                                             (##car _e1197312038_))
                                            (_tl1197512043_
                                             (##cdr _e1197312038_)))
                                        (if (gx#identifier? _hd1197412041_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1197412041_)
                                                (if (gx#stx-pair?
                                                     _tl1197512043_)
                                                    (let ((_e1197612046_
                                                           (gx#stx-e
                                                            _tl1197512043_)))
                                                      (let ((_hd1197712049_
                                                             (##car _e1197612046_))
                                                            (_tl1197812051_
                                                             (##cdr _e1197612046_)))
                                                        (if (gx#stx-null?
                                                             _tl1197812051_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1197212035_)
                        (let ((_e1197912054_ (gx#stx-e _tl1197212035_)))
                          (let ((_hd1198012057_ (##car _e1197912054_))
                                (_tl1198112059_ (##cdr _e1197912054_)))
                            (if (gx#stx-pair? _hd1198012057_)
                                (let ((_e1198212062_
                                       (gx#stx-e _hd1198012057_)))
                                  (let ((_hd1198312065_ (##car _e1198212062_))
                                        (_tl1198412067_ (##cdr _e1198212062_)))
                                    (if (gx#identifier? _hd1198312065_)
                                        (if (gx#stx-eq? '%#ref _hd1198312065_)
                                            (if (gx#stx-pair? _tl1198412067_)
                                                (let ((_e1198512070_
                                                       (gx#stx-e
                                                        _tl1198412067_)))
                                                  (let ((_hd1198612073_
                                                         (##car _e1198512070_))
                                                        (_tl1198712075_
                                                         (##cdr _e1198512070_)))
                                                    (if (gx#stx-null?
                                                         _tl1198712075_)
                                                        (if (gx#stx-pair?
                                                             _tl1198112059_)
                                                            (let ((_e1198812078_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1198112059_)))
                      (let ((_hd1198912081_ (##car _e1198812078_))
                            (_tl1199012083_ (##cdr _e1198812078_)))
                        (if (gx#stx-pair? _hd1198912081_)
                            (let ((_e1199112086_ (gx#stx-e _hd1198912081_)))
                              (let ((_hd1199212089_ (##car _e1199112086_))
                                    (_tl1199312091_ (##cdr _e1199112086_)))
                                (if (gx#identifier? _hd1199212089_)
                                    (if (gx#stx-eq? '%#quote _hd1199212089_)
                                        (if (gx#stx-pair? _tl1199312091_)
                                            (let ((_e1199412094_
                                                   (gx#stx-e _tl1199312091_)))
                                              (let ((_hd1199512097_
                                                     (##car _e1199412094_))
                                                    (_tl1199612099_
                                                     (##cdr _e1199412094_)))
                                                (if (gx#stx-null?
                                                     _tl1199612099_)
                                                    (if (gx#stx-pair?
                                                         _tl1199012083_)
                                                        (let ((_e1199712102_
                                                               (gx#stx-e
                                                                _tl1199012083_)))
                                                          (let ((_hd1199812105_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1199712102_))
                        (_tl1199912107_ (##cdr _e1199712102_)))
                    (if (gx#stx-pair? _hd1199812105_)
                        (let ((_e1200012110_ (gx#stx-e _hd1199812105_)))
                          (let ((_hd1200112113_ (##car _e1200012110_))
                                (_tl1200212115_ (##cdr _e1200012110_)))
                            (if (gx#identifier? _hd1200112113_)
                                (if (gx#stx-eq? '%#ref _hd1200112113_)
                                    (if (gx#stx-pair? _tl1200212115_)
                                        (let ((_e1200312118_
                                               (gx#stx-e _tl1200212115_)))
                                          (let ((_hd1200412121_
                                                 (##car _e1200312118_))
                                                (_tl1200512123_
                                                 (##cdr _e1200312118_)))
                                            (if (gx#stx-null? _tl1200512123_)
                                                (if (gx#stx-null?
                                                     _tl1199912107_)
                                                    ((lambda (_L12126_
                                                              _L12127_
                                                              _L12128_
                                                              _L12129_)
                                                       (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax__0 '#f '-bind-method))
                        'bind-method!)
                   (cons 'declare-method
                         (cons (gxc#generate-runtime-binding-id _L12128_)
                               (cons (gx#stx-e _L12127_)
                                     (cons (gxc#generate-runtime-binding-id
                                            _L12126_)
                                           (cons '#f '())))))
                   (_g1190712017_ _g1190912020_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd1200412121_
                                                     _hd1199512097_
                                                     _hd1198612073_
                                                     _hd1197712049_)
                                                    (_g1190712017_
                                                     _g1190912020_))
                                                (_g1190712017_
                                                 _g1190912020_))))
                                        (_g1190712017_ _g1190912020_))
                                    (_g1190712017_ _g1190912020_))
                                (_g1190712017_ _g1190912020_))))
                        (_g1190712017_ _g1190912020_))))
                (_g1190712017_ _g1190912020_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1190712017_
                                                     _g1190912020_))))
                                            (_g1190712017_ _g1190912020_))
                                        (_g1190712017_ _g1190912020_))
                                    (_g1190712017_ _g1190912020_))))
                            (_g1190712017_ _g1190912020_))))
                    (_g1190712017_ _g1190912020_))
                (_g1190712017_ _g1190912020_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1190712017_ _g1190912020_))
                                            (_g1190712017_ _g1190912020_))
                                        (_g1190712017_ _g1190912020_))))
                                (_g1190712017_ _g1190912020_))))
                        (_g1190712017_ _g1190912020_))
                    (_g1190712017_ _g1190912020_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1190712017_
                                                     _g1190912020_))
                                                (_g1190712017_ _g1190912020_))
                                            (_g1190712017_ _g1190912020_))))
                                    (_g1190712017_ _g1190912020_))))
                            (_g1190712017_ _g1190912020_))))
                    (_g1190712017_ _g1190912020_))))
             (_g1190512347_
              (lambda (_g1190912170_)
                (if (gx#stx-pair? _g1190912170_)
                    (let ((_e1191512172_ (gx#stx-e _g1190912170_)))
                      (let ((_hd1191612175_ (##car _e1191512172_))
                            (_tl1191712177_ (##cdr _e1191512172_)))
                        (if (gx#stx-pair? _tl1191712177_)
                            (let ((_e1191812180_ (gx#stx-e _tl1191712177_)))
                              (let ((_hd1191912183_ (##car _e1191812180_))
                                    (_tl1192012185_ (##cdr _e1191812180_)))
                                (if (gx#stx-pair? _hd1191912183_)
                                    (let ((_e1192112188_
                                           (gx#stx-e _hd1191912183_)))
                                      (let ((_hd1192212191_
                                             (##car _e1192112188_))
                                            (_tl1192312193_
                                             (##cdr _e1192112188_)))
                                        (if (gx#identifier? _hd1192212191_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1192212191_)
                                                (if (gx#stx-pair?
                                                     _tl1192312193_)
                                                    (let ((_e1192412196_
                                                           (gx#stx-e
                                                            _tl1192312193_)))
                                                      (let ((_hd1192512199_
                                                             (##car _e1192412196_))
                                                            (_tl1192612201_
                                                             (##cdr _e1192412196_)))
                                                        (if (gx#stx-null?
                                                             _tl1192612201_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1192012185_)
                        (let ((_e1192712204_ (gx#stx-e _tl1192012185_)))
                          (let ((_hd1192812207_ (##car _e1192712204_))
                                (_tl1192912209_ (##cdr _e1192712204_)))
                            (if (gx#stx-pair? _hd1192812207_)
                                (let ((_e1193012212_
                                       (gx#stx-e _hd1192812207_)))
                                  (let ((_hd1193112215_ (##car _e1193012212_))
                                        (_tl1193212217_ (##cdr _e1193012212_)))
                                    (if (gx#identifier? _hd1193112215_)
                                        (if (gx#stx-eq? '%#ref _hd1193112215_)
                                            (if (gx#stx-pair? _tl1193212217_)
                                                (let ((_e1193312220_
                                                       (gx#stx-e
                                                        _tl1193212217_)))
                                                  (let ((_hd1193412223_
                                                         (##car _e1193312220_))
                                                        (_tl1193512225_
                                                         (##cdr _e1193312220_)))
                                                    (if (gx#stx-null?
                                                         _tl1193512225_)
                                                        (if (gx#stx-pair?
                                                             _tl1192912209_)
                                                            (let ((_e1193612228_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1192912209_)))
                      (let ((_hd1193712231_ (##car _e1193612228_))
                            (_tl1193812233_ (##cdr _e1193612228_)))
                        (if (gx#stx-pair? _hd1193712231_)
                            (let ((_e1193912236_ (gx#stx-e _hd1193712231_)))
                              (let ((_hd1194012239_ (##car _e1193912236_))
                                    (_tl1194112241_ (##cdr _e1193912236_)))
                                (if (gx#identifier? _hd1194012239_)
                                    (if (gx#stx-eq? '%#quote _hd1194012239_)
                                        (if (gx#stx-pair? _tl1194112241_)
                                            (let ((_e1194212244_
                                                   (gx#stx-e _tl1194112241_)))
                                              (let ((_hd1194312247_
                                                     (##car _e1194212244_))
                                                    (_tl1194412249_
                                                     (##cdr _e1194212244_)))
                                                (if (gx#stx-null?
                                                     _tl1194412249_)
                                                    (if (gx#stx-pair?
                                                         _tl1193812233_)
                                                        (let ((_e1194512252_
                                                               (gx#stx-e
                                                                _tl1193812233_)))
                                                          (let ((_hd1194612255_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1194512252_))
                        (_tl1194712257_ (##cdr _e1194512252_)))
                    (if (gx#stx-pair? _hd1194612255_)
                        (let ((_e1194812260_ (gx#stx-e _hd1194612255_)))
                          (let ((_hd1194912263_ (##car _e1194812260_))
                                (_tl1195012265_ (##cdr _e1194812260_)))
                            (if (gx#identifier? _hd1194912263_)
                                (if (gx#stx-eq? '%#ref _hd1194912263_)
                                    (if (gx#stx-pair? _tl1195012265_)
                                        (let ((_e1195112268_
                                               (gx#stx-e _tl1195012265_)))
                                          (let ((_hd1195212271_
                                                 (##car _e1195112268_))
                                                (_tl1195312273_
                                                 (##cdr _e1195112268_)))
                                            (if (gx#stx-null? _tl1195312273_)
                                                (if (gx#stx-pair?
                                                     _tl1194712257_)
                                                    (let ((_e1195412276_
                                                           (gx#stx-e
                                                            _tl1194712257_)))
                                                      (let ((_hd1195512279_
                                                             (##car _e1195412276_))
                                                            (_tl1195612281_
                                                             (##cdr _e1195412276_)))
                                                        (if (gx#stx-pair?
                                                             _hd1195512279_)
                                                            (let ((_e1195712284_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1195512279_)))
                      (let ((_hd1195812287_ (##car _e1195712284_))
                            (_tl1195912289_ (##cdr _e1195712284_)))
                        (if (gx#identifier? _hd1195812287_)
                            (if (gx#stx-eq? '%#quote _hd1195812287_)
                                (if (gx#stx-pair? _tl1195912289_)
                                    (let ((_e1196012292_
                                           (gx#stx-e _tl1195912289_)))
                                      (let ((_hd1196112295_
                                             (##car _e1196012292_))
                                            (_tl1196212297_
                                             (##cdr _e1196012292_)))
                                        (if (gx#stx-null? _tl1196212297_)
                                            (if (gx#stx-null? _tl1195612281_)
                                                ((lambda (_L12300_
                                                          _L12301_
                                                          _L12302_
                                                          _L12303_
                                                          _L12304_)
                                                   (if (eq? (gxc#generate-runtime-binding-id
                                                             _L12304_)
                                                            'bind-method!)
                                                       (cons 'declare-method
                                                             (cons (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L12303_)
                           (cons (gx#stx-e _L12302_)
                                 (cons (gxc#generate-runtime-binding-id
                                        _L12301_)
                                       (cons (gx#stx-e _L12300_) '())))))
               (_g1190612167_ _g1190912170_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1196112295_
                                                 _hd1195212271_
                                                 _hd1194312247_
                                                 _hd1193412223_
                                                 _hd1192512199_)
                                                (_g1190612167_ _g1190912170_))
                                            (_g1190612167_ _g1190912170_))))
                                    (_g1190612167_ _g1190912170_))
                                (_g1190612167_ _g1190912170_))
                            (_g1190612167_ _g1190912170_))))
                    (_g1190612167_ _g1190912170_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1190612167_
                                                     _g1190912170_))
                                                (_g1190612167_
                                                 _g1190912170_))))
                                        (_g1190612167_ _g1190912170_))
                                    (_g1190612167_ _g1190912170_))
                                (_g1190612167_ _g1190912170_))))
                        (_g1190612167_ _g1190912170_))))
                (_g1190612167_ _g1190912170_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1190612167_
                                                     _g1190912170_))))
                                            (_g1190612167_ _g1190912170_))
                                        (_g1190612167_ _g1190912170_))
                                    (_g1190612167_ _g1190912170_))))
                            (_g1190612167_ _g1190912170_))))
                    (_g1190612167_ _g1190912170_))
                (_g1190612167_ _g1190912170_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1190612167_ _g1190912170_))
                                            (_g1190612167_ _g1190912170_))
                                        (_g1190612167_ _g1190912170_))))
                                (_g1190612167_ _g1190912170_))))
                        (_g1190612167_ _g1190912170_))
                    (_g1190612167_ _g1190912170_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1190612167_
                                                     _g1190912170_))
                                                (_g1190612167_ _g1190912170_))
                                            (_g1190612167_ _g1190912170_))))
                                    (_g1190612167_ _g1190912170_))))
                            (_g1190612167_ _g1190912170_))))
                    (_g1190612167_ _g1190912170_)))))
        (_g1190512347_ _stx11904_))))
  (define gxc#!alias::typedecl
    (lambda (_self11880_)
      (let* ((_self1188111887_ _self11880_)
             (_E1188311891_
              (lambda () (error '"No clause matching" _self1188111887_)))
             (_K1188411896_
              (lambda (_alias-id11894_)
                (cons '@alias (cons _alias-id11894_ '())))))
        (if (##structure-instance-of?
             _self1188111887_
             (##type-id gxc#!alias::t))
            (let* ((_e1188511899_ (##vector-ref _self1188111887_ '1))
                   (_alias-id11902_ _e1188511899_))
              (_K1188411896_ _alias-id11902_))
            (_E1188311891_)))))
  (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f)
  (define gxc#!struct-type::typedecl
    (lambda (_self11824_)
      (let* ((_self1182511836_ _self11824_)
             (_E1182711840_
              (lambda () (error '"No clause matching" _self1182511836_)))
             (_K1182811849_
              (lambda (_plist11843_
                       _ctor11844_
                       _fields11845_
                       _super11846_
                       _type-id11847_)
                (cons '@struct-type
                      (cons _type-id11847_
                            (cons _super11846_
                                  (cons _fields11845_
                                        (cons _ctor11844_
                                              (cons _plist11843_ '())))))))))
        (if (##structure-instance-of?
             _self1182511836_
             (##type-id gxc#!struct-type::t))
            (let* ((_e1182911852_ (##vector-ref _self1182511836_ '1))
                   (_type-id11855_ _e1182911852_)
                   (_e1183011857_ (##vector-ref _self1182511836_ '2))
                   (_super11860_ _e1183011857_)
                   (_e1183111862_ (##vector-ref _self1182511836_ '3))
                   (_fields11865_ _e1183111862_)
                   (_e1183211867_ (##vector-ref _self1182511836_ '4))
                   (_e1183311870_ (##vector-ref _self1182511836_ '5))
                   (_ctor11873_ _e1183311870_)
                   (_e1183411875_ (##vector-ref _self1182511836_ '6))
                   (_plist11878_ _e1183411875_))
              (_K1182811849_
               _plist11878_
               _ctor11873_
               _fields11865_
               _super11860_
               _type-id11855_))
            (_E1182711840_)))))
  (bind-method! gxc#!struct-type::t 'typedecl gxc#!struct-type::typedecl '#f)
  (define gxc#!struct-pred::typedecl
    (lambda (_self11800_)
      (let* ((_self1180111807_ _self11800_)
             (_E1180311811_
              (lambda () (error '"No clause matching" _self1180111807_)))
             (_K1180411816_
              (lambda (_struct-t11814_)
                (cons '@struct-pred (cons _struct-t11814_ '())))))
        (if (##structure-instance-of?
             _self1180111807_
             (##type-id gxc#!struct-pred::t))
            (let* ((_e1180511819_ (##vector-ref _self1180111807_ '1))
                   (_struct-t11822_ _e1180511819_))
              (_K1180411816_ _struct-t11822_))
            (_E1180311811_)))))
  (bind-method! gxc#!struct-pred::t 'typedecl gxc#!struct-pred::typedecl '#f)
  (define gxc#!struct-cons::typedecl
    (lambda (_self11776_)
      (let* ((_self1177711783_ _self11776_)
             (_E1177911787_
              (lambda () (error '"No clause matching" _self1177711783_)))
             (_K1178011792_
              (lambda (_struct-t11790_)
                (cons '@struct-cons (cons _struct-t11790_ '())))))
        (if (##structure-instance-of?
             _self1177711783_
             (##type-id gxc#!struct-cons::t))
            (let* ((_e1178111795_ (##vector-ref _self1177711783_ '1))
                   (_struct-t11798_ _e1178111795_))
              (_K1178011792_ _struct-t11798_))
            (_E1177911787_)))))
  (bind-method! gxc#!struct-cons::t 'typedecl gxc#!struct-cons::typedecl '#f)
  (define gxc#!struct-getf::typedecl
    (lambda (_self11738_)
      (let* ((_self1173911747_ _self11738_)
             (_E1174111751_
              (lambda () (error '"No clause matching" _self1173911747_)))
             (_K1174211758_
              (lambda (_unchecked?11754_ _off11755_ _struct-t11756_)
                (cons '@struct-getf
                      (cons _struct-t11756_
                            (cons _off11755_ (cons _unchecked?11754_ '())))))))
        (if (##structure-instance-of?
             _self1173911747_
             (##type-id gxc#!struct-getf::t))
            (let* ((_e1174311761_ (##vector-ref _self1173911747_ '1))
                   (_struct-t11764_ _e1174311761_)
                   (_e1174411766_ (##vector-ref _self1173911747_ '2))
                   (_off11769_ _e1174411766_)
                   (_e1174511771_ (##vector-ref _self1173911747_ '3))
                   (_unchecked?11774_ _e1174511771_))
              (_K1174211758_ _unchecked?11774_ _off11769_ _struct-t11764_))
            (_E1174111751_)))))
  (bind-method! gxc#!struct-getf::t 'typedecl gxc#!struct-getf::typedecl '#f)
  (define gxc#!struct-setf::typedecl
    (lambda (_self11700_)
      (let* ((_self1170111709_ _self11700_)
             (_E1170311713_
              (lambda () (error '"No clause matching" _self1170111709_)))
             (_K1170411720_
              (lambda (_unchecked?11716_ _off11717_ _struct-t11718_)
                (cons '@struct-setf
                      (cons _struct-t11718_
                            (cons _off11717_ (cons _unchecked?11716_ '())))))))
        (if (##structure-instance-of?
             _self1170111709_
             (##type-id gxc#!struct-setf::t))
            (let* ((_e1170511723_ (##vector-ref _self1170111709_ '1))
                   (_struct-t11726_ _e1170511723_)
                   (_e1170611728_ (##vector-ref _self1170111709_ '2))
                   (_off11731_ _e1170611728_)
                   (_e1170711733_ (##vector-ref _self1170111709_ '3))
                   (_unchecked?11736_ _e1170711733_))
              (_K1170411720_ _unchecked?11736_ _off11731_ _struct-t11726_))
            (_E1170311713_)))))
  (bind-method! gxc#!struct-setf::t 'typedecl gxc#!struct-setf::typedecl '#f)
  (define gxc#!lambda::typedecl
    (lambda (_self11648_)
      (let* ((_self1164911659_ _self11648_)
             (_E1165111663_
              (lambda () (error '"No clause matching" _self1164911659_)))
             (_K1165211674_
              (lambda (_typedecl11666_
                       _inline11667_
                       _dispatch11668_
                       _arity11669_)
                (if _inline11667_
                    (let ((_$e11671_ _typedecl11666_))
                      (if _$e11671_
                          _$e11671_
                          (error '"Cannot generate typedecl for inline rules")))
                    (cons '@lambda
                          (cons _arity11669_ (cons _dispatch11668_ '())))))))
        (if (##structure-instance-of?
             _self1164911659_
             (##type-id gxc#!lambda::t))
            (let* ((_e1165311677_ (##vector-ref _self1164911659_ '1))
                   (_e1165411680_ (##vector-ref _self1164911659_ '2))
                   (_arity11683_ _e1165411680_)
                   (_e1165511685_ (##vector-ref _self1164911659_ '3))
                   (_dispatch11688_ _e1165511685_)
                   (_e1165611690_ (##vector-ref _self1164911659_ '4))
                   (_inline11693_ _e1165611690_)
                   (_e1165711695_ (##vector-ref _self1164911659_ '5))
                   (_typedecl11698_ _e1165711695_))
              (_K1165211674_
               _typedecl11698_
               _inline11693_
               _dispatch11688_
               _arity11683_))
            (_E1165111663_)))))
  (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f)
  (define gxc#!case-lambda::typedecl
    (lambda (_self11581_)
      (letrec ((_clause-e11583_
                (lambda (_clause11613_)
                  (let* ((_clause1161411622_ _clause11613_)
                         (_E1161611626_
                          (lambda ()
                            (error '"No clause matching" _clause1161411622_)))
                         (_K1161711632_
                          (lambda (_dispatch11629_ _arity11630_)
                            (cons _arity11630_ (cons _dispatch11629_ '())))))
                    (if (##structure-instance-of?
                         _clause1161411622_
                         (##type-id gxc#!lambda::t))
                        (let* ((_e1161811635_
                                (##vector-ref _clause1161411622_ '1))
                               (_e1161911638_
                                (##vector-ref _clause1161411622_ '2))
                               (_arity11641_ _e1161911638_)
                               (_e1162011643_
                                (##vector-ref _clause1161411622_ '3))
                               (_dispatch11646_ _e1162011643_))
                          (_K1161711632_ _dispatch11646_ _arity11641_))
                        (_E1161611626_))))))
        (let* ((_self1158411591_ _self11581_)
               (_E1158611595_
                (lambda () (error '"No clause matching" _self1158411591_)))
               (_K1158711602_
                (lambda (_clauses11598_)
                  (let ((_clauses11600_ (map _clause-e11583_ _clauses11598_)))
                    (cons '@case-lambda _clauses11600_)))))
          (if (##structure-instance-of?
               _self1158411591_
               (##type-id gxc#!case-lambda::t))
              (let* ((_e1158811605_ (##vector-ref _self1158411591_ '1))
                     (_e1158911608_ (##vector-ref _self1158411591_ '2))
                     (_clauses11611_ _e1158911608_))
                (_K1158711602_ _clauses11611_))
              (_E1158611595_))))))
  (bind-method! gxc#!case-lambda::t 'typedecl gxc#!case-lambda::typedecl '#f)
  (define gxc#identifier-symbol
    (lambda (_stx11579_) (gxc#generate-runtime-binding-id _stx11579_))))
