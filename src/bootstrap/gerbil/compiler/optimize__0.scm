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
    (lambda _$args20838_
      (apply make-struct-instance gxc#optimizer-info::t _$args20838_)))
  (define gxc#optimizer-info-type
    (make-struct-field-accessor gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi
    (make-struct-field-accessor gxc#optimizer-info::t '1))
  (define gxc#optimizer-info-type-set!
    (make-struct-field-mutator gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi-set!
    (make-struct-field-mutator gxc#optimizer-info::t '1))
  (define gxc#optimizer-info:::init!
    (lambda (_self20836_)
      (struct-instance-init!
       _self20836_
       (make-hash-table-eq)
       (make-hash-table-eq))))
  (bind-method! gxc#optimizer-info::t ':init! gxc#optimizer-info:::init! '#f)
  (define gxc#optimizer-info-init!
    (lambda ()
      (if (gxc#current-compile-optimizer-info)
          '#!void
          (gxc#current-compile-optimizer-info
           (let ((__obj20850 (make-object gxc#optimizer-info::t '2)))
             (begin (gxc#optimizer-info:::init! __obj20850) __obj20850))))))
  (define gxc#optimize!
    (lambda (_ctx20830_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#optimizer-load-ssxi-deps _ctx20830_)
           (table-set!
            (##structure-ref
             (gxc#current-compile-optimizer-info)
             '2
             gxc#optimizer-info::t
             '#f)
            (##structure-ref _ctx20830_ '1 gx#expander-context::t '#f)
            '#t)
           (let ((_code20833_
                  (gxc#optimize-source
                   (##structure-ref _ctx20830_ '11 gx#module-context::t '#f))))
             (##structure-set!
              _ctx20830_
              _code20833_
              '11
              gx#module-context::t
              '#f))))
       gxc#current-compile-mutators
       (make-hash-table-eq)
       gxc#current-compile-local-type
       (make-hash-table-eq))))
  (define gxc#optimizer-load-ssxi-deps
    (lambda (_ctx20775_)
      (letrec* ((_deps20777_
                 (let* ((_imports20821_
                         (##structure-ref
                          _ctx20775_
                          '8
                          gx#module-context::t
                          '#f))
                        (_$e20823_
                         (gx#core-context-prelude__opt-lambda11555
                          _ctx20775_)))
                   (if _$e20823_
                       ((lambda (_g2082520827_)
                          (cons _g2082520827_ _imports20821_))
                        _$e20823_)
                       _imports20821_))))
        (let _lp20779_ ((_rest20781_ _deps20777_))
          (let* ((_rest2078220790_ _rest20781_)
                 (_E2078520794_
                  (lambda () (error '"No clause matching" _rest2078220790_)))
                 (_else2078420798_ (lambda () '#!void))
                 (_K2078620809_
                  (lambda (_rest20801_ _hd20802_)
                    (if (##structure-instance-of?
                         _hd20802_
                         'gx#module-context::t)
                        (begin
                          (if (table-ref
                               (##structure-ref
                                (gxc#current-compile-optimizer-info)
                                '2
                                gxc#optimizer-info::t
                                '#f)
                               (##structure-ref
                                _hd20802_
                                '1
                                gx#expander-context::t
                                '#f)
                               '#f)
                              '#!void
                              (begin
                                (let ((_$e20804_
                                       (gx#core-context-prelude__opt-lambda11555
                                        _hd20802_)))
                                  (if _$e20804_
                                      ((lambda (_pre20807_)
                                         (_lp20779_
                                          (cons _pre20807_
                                                (##structure-ref
                                                 _hd20802_
                                                 '8
                                                 gx#module-context::t
                                                 '#f))))
                                       _$e20804_)
                                      (_lp20779_
                                       (##structure-ref
                                        _hd20802_
                                        '8
                                        gx#module-context::t
                                        '#f))))
                                (gxc#optimizer-load-ssxi _hd20802_)))
                          (_lp20779_ _rest20801_))
                        (if (##structure-instance-of?
                             _hd20802_
                             'gx#prelude-context::t)
                            (begin
                              (if (table-ref
                                   (##structure-ref
                                    (gxc#current-compile-optimizer-info)
                                    '2
                                    gxc#optimizer-info::t
                                    '#f)
                                   (##structure-ref
                                    _hd20802_
                                    '1
                                    gx#expander-context::t
                                    '#f)
                                   '#f)
                                  '#!void
                                  (begin
                                    (_lp20779_
                                     (##structure-ref
                                      _hd20802_
                                      '7
                                      gx#prelude-context::t
                                      '#f))
                                    (gxc#optimizer-load-ssxi _hd20802_)))
                              (_lp20779_ _rest20801_))
                            (if (##structure-direct-instance-of?
                                 _hd20802_
                                 'gx#module-import::t)
                                (_lp20779_
                                 (cons (##direct-structure-ref
                                        _hd20802_
                                        '1
                                        gx#module-import::t
                                        '#f)
                                       _rest20801_))
                                (if (##structure-direct-instance-of?
                                     _hd20802_
                                     'gx#module-export::t)
                                    (_lp20779_
                                     (cons (##direct-structure-ref
                                            _hd20802_
                                            '1
                                            gx#module-export::t
                                            '#f)
                                           _rest20801_))
                                    (if (##structure-direct-instance-of?
                                         _hd20802_
                                         'gx#import-set::t)
                                        (_lp20779_
                                         (cons (##direct-structure-ref
                                                _hd20802_
                                                '1
                                                gx#import-set::t
                                                '#f)
                                               _rest20801_))
                                        (error '"Unexpected module import"
                                               _hd20802_)))))))))
            (if (##pair? _rest2078220790_)
                (let ((_hd2078720812_ (##car _rest2078220790_))
                      (_tl2078820814_ (##cdr _rest2078220790_)))
                  (let* ((_hd20817_ _hd2078720812_)
                         (_rest20819_ _tl2078820814_))
                    (_K2078620809_ _rest20819_ _hd20817_)))
                (_else2078420798_)))))))
  (define gxc#optimizer-load-ssxi
    (lambda (_ctx20755_)
      (if (if (##structure-instance-of? _ctx20755_ 'gx#module-context::t)
              (list? (##structure-ref _ctx20755_ '7 gx#module-context::t '#f))
              '#f)
          '#!void
          (let* ((_ht20757_
                  (##structure-ref
                   (gxc#current-compile-optimizer-info)
                   '2
                   gxc#optimizer-info::t
                   '#f))
                 (_id20759_
                  (##structure-ref _ctx20755_ '1 gx#expander-context::t '#f))
                 (_mod20761_ (table-ref _ht20757_ _id20759_ '#f)))
            (let ((_$e20764_ _mod20761_))
              (if _$e20764_
                  _$e20764_
                  (let* ((_mod20767_ (gxc#optimizer-import-ssxi _ctx20755_))
                         (_val20772_
                          (let ((_$e20769_ _mod20767_))
                            (if _$e20769_ _$e20769_ '#!void))))
                    (begin
                      (table-set! _ht20757_ _id20759_ _val20772_)
                      _val20772_))))))))
  (define gxc#optimizer-import-ssxi
    (lambda (_ctx20732_)
      (letrec ((_catch-e20734_
                (lambda (_exn20753_)
                  (begin
                    (if (gxc#current-compile-verbose)
                        (begin
                          (displayln
                           '"Failed to load ssxi module for "
                           (##structure-ref
                            _ctx20732_
                            '1
                            gx#expander-context::t
                            '#f))
                          (display-exception _exn20753_))
                        '#!void)
                    '#f)))
               (_import-e20735_
                (lambda ()
                  (let* ((_str-id20738_
                          (string-append
                           (symbol->string
                            (##structure-ref
                             _ctx20732_
                             '1
                             gx#expander-context::t
                             '#f))
                           '".ssxi"))
                         (_artefact-path20746_
                          (let ((_odir2073920741_
                                 (gxc#current-compile-output-dir)))
                            (if _odir2073920741_
                                (let ((_odir20744_ _odir2073920741_))
                                  (path-expand
                                   (string-append _str-id20738_ '".ss")
                                   _odir20744_))
                                '#f)))
                         (_library-path20748_
                          (string->symbol
                           (string-append '":" _str-id20738_ '".ss")))
                         (_ssxi-path20750_
                          (if (if _artefact-path20746_
                                  (file-exists? _artefact-path20746_)
                                  '#f)
                              _artefact-path20746_
                              _library-path20748_)))
                    (begin
                      (gxc#verbose '"Loading ssxi module " _ssxi-path20750_)
                      (gx#import-module__opt-lambda11590
                       _ssxi-path20750_
                       '#t
                       '#t))))))
        (if (##structure-ref _ctx20732_ '1 gx#expander-context::t '#f)
            (with-exception-catcher _catch-e20734_ _import-e20735_)
            '#f))))
  (define gxc#!type::t (make-struct-type 'gxc#!type::t '#f '1 '!type '() '#f))
  (define gxc#!type? (make-struct-predicate gxc#!type::t))
  (define gxc#make-!type
    (lambda _$args20729_
      (apply make-struct-instance gxc#!type::t _$args20729_)))
  (define gxc#!type-id (make-struct-field-accessor gxc#!type::t '0))
  (define gxc#!type-id-set! (make-struct-field-mutator gxc#!type::t '0))
  (define gxc#!alias::t
    (make-struct-type 'gxc#!alias::t gxc#!type::t '0 '!alias '() '#f))
  (define gxc#!alias? (make-struct-predicate gxc#!alias::t))
  (define gxc#make-!alias
    (lambda _$args20726_
      (apply make-struct-instance gxc#!alias::t _$args20726_)))
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
    (lambda _$args20723_
      (apply make-struct-instance gxc#!struct-type::t _$args20723_)))
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
    (lambda _$args20720_
      (apply make-struct-instance gxc#!procedure::t _$args20720_)))
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
    (lambda _$args20717_
      (apply make-struct-instance gxc#!struct-pred::t _$args20717_)))
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
    (lambda _$args20714_
      (apply make-struct-instance gxc#!struct-cons::t _$args20714_)))
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
    (lambda _$args20711_
      (apply make-struct-instance gxc#!struct-getf::t _$args20711_)))
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
    (lambda _$args20708_
      (apply make-struct-instance gxc#!struct-setf::t _$args20708_)))
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
    (lambda _$args20705_
      (apply make-struct-instance gxc#!lambda::t _$args20705_)))
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
    (lambda _$args20702_
      (apply make-struct-instance gxc#!case-lambda::t _$args20702_)))
  (define gxc#!case-lambda-clauses
    (make-struct-field-accessor gxc#!case-lambda::t '0))
  (define gxc#!case-lambda-clauses-set!
    (make-struct-field-mutator gxc#!case-lambda::t '0))
  (define gxc#!struct-type:::init!
    (lambda (_self20694_
             _id20695_
             _super20696_
             _fields20697_
             _xfields20698_
             _ctor20699_
             _plist20700_)
      (struct-instance-init!
       _self20694_
       _id20695_
       _super20696_
       _fields20697_
       _xfields20698_
       _ctor20699_
       _plist20700_
       '#f)))
  (bind-method! gxc#!struct-type::t ':init! gxc#!struct-type:::init! '#f)
  (begin
    (define gxc#!lambda:::init!__opt-lambda20658
      (lambda (_self20660_
               _id20661_
               _arity20662_
               _dispatch20663_
               _inline20664_
               _typedecl20665_)
        (struct-instance-init!
         _self20660_
         _id20661_
         _arity20662_
         _dispatch20663_
         _inline20664_
         _typedecl20665_)))
    (begin
      (define gxc#!lambda:::init!__0
        (lambda (_self20670_ _id20671_ _arity20672_ _dispatch20673_)
          (let* ((_inline20675_ '#f) (_typedecl20677_ '#f))
            (struct-instance-init!
             _self20670_
             _id20671_
             _arity20672_
             _dispatch20673_
             _inline20675_
             _typedecl20677_))))
      (define gxc#!lambda:::init!__1
        (lambda (_self20679_
                 _id20680_
                 _arity20681_
                 _dispatch20682_
                 _inline20683_)
          (let ((_typedecl20685_ '#f))
            (struct-instance-init!
             _self20679_
             _id20680_
             _arity20681_
             _dispatch20682_
             _inline20683_
             _typedecl20685_))))
      (define gxc#!lambda:::init!
        (lambda _g20858_
          (let ((_g20857_ (length _g20858_)))
            (cond ((fx= _g20857_ 4) (apply gxc#!lambda:::init!__0 _g20858_))
                  ((fx= _g20857_ 5) (apply gxc#!lambda:::init!__1 _g20858_))
                  ((fx= _g20857_ 6) (apply struct-instance-init! _g20858_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#!lambda:::init!
                    _g20858_))))))))
  (bind-method! gxc#!lambda::t ':init! gxc#!lambda:::init! '#f)
  (define gxc#!struct-type-vtab
    (lambda (_type20652_)
      (let ((_$e20654_
             (##structure-ref _type20652_ '7 gxc#!struct-type::t '#f)))
        (if _$e20654_
            (values _$e20654_)
            (let ((_vtab20657_ (make-hash-table-eq)))
              (begin
                (##structure-set!
                 _type20652_
                 _vtab20657_
                 '7
                 gxc#!struct-type::t
                 '#f)
                _vtab20657_))))))
  (define gxc#!struct-type-lookup-method
    (lambda (_type20643_ _method20644_)
      (let ((_vtab2064520647_
             (##structure-ref _type20643_ '7 gxc#!struct-type::t '#f)))
        (if _vtab2064520647_
            (let ((_vtab20650_ _vtab2064520647_))
              (table-ref _vtab20650_ _method20644_ '#f))
            '#f))))
  (begin
    (define gxc#optimizer-declare-type!__opt-lambda20625
      (lambda (_sym20627_ _type20628_ _local?20629_)
        (begin
          (if (##structure-instance-of? _type20628_ 'gxc#!type::t)
              '#!void
              (error '"bad declaration: expected !type"
                     _sym20627_
                     _type20628_))
          (gxc#verbose
           '"declare-type "
           _sym20627_
           '" "
           (struct->list _type20628_))
          (table-set!
           (if _local?20629_
               (gxc#current-compile-local-type)
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '1
                gxc#optimizer-info::t
                '#f))
           _sym20627_
           _type20628_))))
    (begin
      (define gxc#optimizer-declare-type!__0
        (lambda (_sym20634_ _type20635_)
          (let ((_local?20637_ '#f))
            (gxc#optimizer-declare-type!__opt-lambda20625
             _sym20634_
             _type20635_
             _local?20637_))))
      (define gxc#optimizer-declare-type!
        (lambda _g20860_
          (let ((_g20859_ (length _g20860_)))
            (cond ((fx= _g20859_ 2)
                   (apply gxc#optimizer-declare-type!__0 _g20860_))
                  ((fx= _g20859_ 3)
                   (apply gxc#optimizer-declare-type!__opt-lambda20625
                          _g20860_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#optimizer-declare-type!
                    _g20860_))))))))
  (begin
    (define gxc#optimizer-declare-method!__opt-lambda20601
      (lambda (_type-t20603_ _method20604_ _sym20605_ _rebind?20606_)
        (let ((_type20608_ (gxc#optimizer-resolve-type _type-t20603_)))
          (if (##structure-instance-of? _type20608_ 'gxc#!struct-type::t)
              (let ((_vtab20610_ (gxc#!struct-type-vtab _type20608_)))
                (if _rebind?20606_
                    (if (hash-key? _vtab20610_ _method20604_)
                        (gxc#verbose
                         '"declare-method: [warning] skip rebind on existing method"
                         _type-t20603_
                         '" "
                         _method20604_)
                        (gxc#verbose
                         '"declare-method: skip rebind method "
                         _type-t20603_
                         '" "
                         _method20604_))
                    (if (hash-key? _vtab20610_ _method20604_)
                        (error '"declare-method: duplicate method declaration")
                        (begin
                          (gxc#verbose
                           '"declare-method "
                           _type-t20603_
                           '" "
                           _method20604_
                           '" => "
                           _sym20605_)
                          (table-set! _vtab20610_ _method20604_ _sym20605_)))))
              (if (not _type20608_)
                  (gxc#verbose '"declare-method: unknown type " _type-t20603_)
                  (error '"declare-method: bad method declaration; no method table"
                         _type-t20603_
                         _type20608_))))))
    (begin
      (define gxc#optimizer-declare-method!__0
        (lambda (_type-t20615_ _method20616_ _sym20617_)
          (let ((_rebind?20619_ '#f))
            (gxc#optimizer-declare-method!__opt-lambda20601
             _type-t20615_
             _method20616_
             _sym20617_
             _rebind?20619_))))
      (define gxc#optimizer-declare-method!
        (lambda _g20862_
          (let ((_g20861_ (length _g20862_)))
            (cond ((fx= _g20861_ 3)
                   (apply gxc#optimizer-declare-method!__0 _g20862_))
                  ((fx= _g20861_ 4)
                   (apply gxc#optimizer-declare-method!__opt-lambda20601
                          _g20862_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#optimizer-declare-method!
                    _g20862_))))))))
  (define gxc#optimizer-lookup-type
    (lambda (_sym20591_)
      (let ((_$e20599_
             (let ((_ht2059220594_ (gxc#current-compile-local-type)))
               (if _ht2059220594_
                   (let ((_ht20597_ _ht2059220594_))
                     (table-ref _ht20597_ _sym20591_ '#f))
                   '#f))))
        (if _$e20599_
            _$e20599_
            (table-ref
             (##structure-ref
              (gxc#current-compile-optimizer-info)
              '1
              gxc#optimizer-info::t
              '#f)
             _sym20591_
             '#f)))))
  (define gxc#optimizer-resolve-type
    (lambda (_sym20583_)
      (let ((_type2058420586_ (gxc#optimizer-lookup-type _sym20583_)))
        (if _type2058420586_
            (let ((_type20589_ _type2058420586_))
              (if (##structure-instance-of? _type20589_ 'gxc#!alias::t)
                  (gxc#optimizer-resolve-type
                   (##structure-ref _type20589_ '1 gxc#!type::t '#f))
                  _type20589_))
            '#f))))
  (define gxc#optimizer-lookup-method
    (lambda (_type-t20578_ _method20579_)
      (let ((_type20581_ (gxc#optimizer-resolve-type _type-t20578_)))
        (if (##structure-instance-of? _type20581_ 'gxc#!struct-type::t)
            (gxc#!struct-type-lookup-method _type20581_ _method20579_)
            '#f))))
  (define gxc#optimize-source
    (lambda (_stx20574_)
      (begin
        (gxc#apply-collect-mutators _stx20574_)
        (let ((_stx20576_ (gxc#apply-lift-top-lambdas _stx20574_)))
          (begin
            (gxc#apply-collect-type-info _stx20576_)
            (gxc#apply-optimize-call _stx20576_))))))
  (define gxc#&identity-expression
    (make-promise
     (lambda ()
       (let ((_tbl20571_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl20571_ '%#begin-annotation gxc#xform-identity)
           (table-set! _tbl20571_ '%#lambda gxc#xform-identity)
           (table-set! _tbl20571_ '%#case-lambda gxc#xform-identity)
           (table-set! _tbl20571_ '%#let-values gxc#xform-identity)
           (table-set! _tbl20571_ '%#letrec-values gxc#xform-identity)
           (table-set! _tbl20571_ '%#letrec*-values gxc#xform-identity)
           (table-set! _tbl20571_ '%#quote gxc#xform-identity)
           (table-set! _tbl20571_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl20571_ '%#call gxc#xform-identity)
           (table-set! _tbl20571_ '%#if gxc#xform-identity)
           (table-set! _tbl20571_ '%#ref gxc#xform-identity)
           (table-set! _tbl20571_ '%#set! gxc#xform-identity)
           (table-set! _tbl20571_ '%#struct-instance? gxc#xform-identity)
           (table-set!
            _tbl20571_
            '%#struct-direct-instance?
            gxc#xform-identity)
           (table-set! _tbl20571_ '%#struct-ref gxc#xform-identity)
           (table-set! _tbl20571_ '%#struct-set! gxc#xform-identity)
           (table-set! _tbl20571_ '%#struct-direct-ref gxc#xform-identity)
           (table-set! _tbl20571_ '%#struct-direct-set! gxc#xform-identity)
           (table-set! _tbl20571_ '%#struct-unchecked-ref gxc#xform-identity)
           (table-set! _tbl20571_ '%#struct-unchecked-set! gxc#xform-identity)
           _tbl20571_)))))
  (define gxc#&identity-special-form
    (make-promise
     (lambda ()
       (let ((_tbl20567_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl20567_ '%#begin gxc#xform-identity)
           (table-set! _tbl20567_ '%#begin-syntax gxc#xform-identity)
           (table-set! _tbl20567_ '%#begin-foreign gxc#xform-identity)
           (table-set! _tbl20567_ '%#module gxc#xform-identity)
           (table-set! _tbl20567_ '%#import gxc#xform-identity)
           (table-set! _tbl20567_ '%#export gxc#xform-identity)
           (table-set! _tbl20567_ '%#provide gxc#xform-identity)
           (table-set! _tbl20567_ '%#extern gxc#xform-identity)
           (table-set! _tbl20567_ '%#define-values gxc#xform-identity)
           (table-set! _tbl20567_ '%#define-syntax gxc#xform-identity)
           (table-set! _tbl20567_ '%#define-alias gxc#xform-identity)
           (table-set! _tbl20567_ '%#declare gxc#xform-identity)
           _tbl20567_)))))
  (define gxc#&identity
    (make-promise
     (lambda ()
       (let ((_tbl20563_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl20563_ (force gxc#&identity-special-form))
           (hash-copy! _tbl20563_ (force gxc#&identity-expression))
           _tbl20563_)))))
  (define gxc#&basic-xform-expression
    (make-promise
     (lambda ()
       (let ((_tbl20559_ (make-hash-table-eq)))
         (begin
           (table-set!
            _tbl20559_
            '%#begin-annotation
            gxc#xform-begin-annotation%)
           (table-set! _tbl20559_ '%#lambda gxc#xform-lambda%)
           (table-set! _tbl20559_ '%#case-lambda gxc#xform-case-lambda%)
           (table-set! _tbl20559_ '%#let-values gxc#xform-let-values%)
           (table-set! _tbl20559_ '%#letrec-values gxc#xform-let-values%)
           (table-set! _tbl20559_ '%#letrec*-values gxc#xform-let-values%)
           (table-set! _tbl20559_ '%#quote gxc#xform-identity)
           (table-set! _tbl20559_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl20559_ '%#call gxc#xform-operands)
           (table-set! _tbl20559_ '%#if gxc#xform-operands)
           (table-set! _tbl20559_ '%#ref gxc#xform-identity)
           (table-set! _tbl20559_ '%#set! gxc#xform-setq%)
           (table-set! _tbl20559_ '%#struct-instance? gxc#xform-operands)
           (table-set!
            _tbl20559_
            '%#struct-direct-instance?
            gxc#xform-operands)
           (table-set! _tbl20559_ '%#struct-ref gxc#xform-operands)
           (table-set! _tbl20559_ '%#struct-set! gxc#xform-operands)
           (table-set! _tbl20559_ '%#struct-direct-ref gxc#xform-operands)
           (table-set! _tbl20559_ '%#struct-direct-set! gxc#xform-operands)
           (table-set! _tbl20559_ '%#struct-unchecked-ref gxc#xform-operands)
           (table-set! _tbl20559_ '%#struct-unchecked-set! gxc#xform-operands)
           _tbl20559_)))))
  (define gxc#&basic-xform
    (make-promise
     (lambda ()
       (let ((_tbl20555_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl20555_ (force gxc#&basic-xform-expression))
           (hash-copy! _tbl20555_ (force gxc#&identity))
           (table-set! _tbl20555_ '%#begin gxc#xform-begin%)
           (table-set! _tbl20555_ '%#module gxc#xform-module%)
           (table-set! _tbl20555_ '%#define-values gxc#xform-define-values%)
           _tbl20555_)))))
  (define gxc#&collect-mutators
    (make-promise
     (lambda ()
       (let ((_tbl20551_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl20551_ (force gxc#&void))
           (table-set! _tbl20551_ '%#begin gxc#collect-begin%)
           (table-set! _tbl20551_ '%#module gxc#collect-module%)
           (table-set!
            _tbl20551_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl20551_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl20551_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl20551_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl20551_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl20551_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl20551_ '%#call gxc#collect-operands)
           (table-set! _tbl20551_ '%#if gxc#collect-operands)
           (table-set! _tbl20551_ '%#set! gxc#collect-mutators-setq%)
           (table-set! _tbl20551_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl20551_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl20551_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl20551_ '%#struct-set! gxc#collect-operands)
           (table-set! _tbl20551_ '%#struct-direct-ref gxc#collect-operands)
           (table-set! _tbl20551_ '%#struct-direct-set! gxc#collect-operands)
           (table-set! _tbl20551_ '%#struct-unchecked-ref gxc#collect-operands)
           (table-set!
            _tbl20551_
            '%#struct-unchecked-set!
            gxc#collect-operands)
           _tbl20551_)))))
  (define gxc#apply-collect-mutators
    (lambda (_stx20544_ . _args20546_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx20544_ _args20546_))
       gxc#current-compile-methods
       (force gxc#&collect-mutators))))
  (define gxc#&lift-top-lambdas
    (make-promise
     (lambda ()
       (let ((_tbl20541_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl20541_ (force gxc#&basic-xform))
           (table-set!
            _tbl20541_
            '%#define-values
            gxc#lift-top-lambda-define-values%)
           (table-set!
            _tbl20541_
            '%#let-values
            gxc#lift-top-lambda-let-values%)
           (table-set!
            _tbl20541_
            '%#letrec-values
            gxc#lift-top-lambda-letrec-values%)
           (table-set!
            _tbl20541_
            '%#letrec*-values
            gxc#lift-top-lambda-letrec-values%)
           _tbl20541_)))))
  (define gxc#apply-lift-top-lambdas
    (lambda (_stx20534_ . _args20536_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx20534_ _args20536_))
       gxc#current-compile-methods
       (force gxc#&lift-top-lambdas))))
  (define gxc#&expression-subst
    (make-promise
     (lambda ()
       (let ((_tbl20531_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl20531_ (force gxc#&basic-xform-expression))
           (table-set! _tbl20531_ '%#begin gxc#xform-begin%)
           (table-set! _tbl20531_ '%#ref gxc#expression-subst-ref%)
           _tbl20531_)))))
  (define gxc#apply-expression-subst
    (lambda (_stx20524_ . _args20526_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx20524_ _args20526_))
       gxc#current-compile-methods
       (force gxc#&expression-subst))))
  (define gxc#&collect-type-info
    (make-promise
     (lambda ()
       (let ((_tbl20521_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl20521_ (force gxc#&void))
           (table-set! _tbl20521_ '%#begin gxc#collect-begin%)
           (table-set! _tbl20521_ '%#module gxc#collect-module%)
           (table-set!
            _tbl20521_
            '%#define-values
            gxc#collect-type-define-values%)
           (table-set!
            _tbl20521_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl20521_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl20521_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl20521_ '%#let-values gxc#collect-type-let-values%)
           (table-set!
            _tbl20521_
            '%#letrec-values
            gxc#collect-type-let-values%)
           (table-set!
            _tbl20521_
            '%#letrec*-values
            gxc#collect-type-let-values%)
           (table-set! _tbl20521_ '%#call gxc#collect-type-call%)
           (table-set! _tbl20521_ '%#if gxc#collect-operands)
           (table-set! _tbl20521_ '%#set! gxc#collect-body-setq%)
           _tbl20521_)))))
  (define gxc#apply-collect-type-info
    (lambda (_stx20514_ . _args20516_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx20514_ _args20516_))
       gxc#current-compile-methods
       (force gxc#&collect-type-info))))
  (define gxc#&basic-expression-type
    (make-promise
     (lambda ()
       (let ((_tbl20511_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl20511_ (force gxc#&false))
           (table-set! _tbl20511_ '%#begin gxc#basic-expression-type-begin%)
           (table-set!
            _tbl20511_
            '%#begin-annotation
            gxc#basic-expression-type-begin-annotation%)
           (table-set! _tbl20511_ '%#lambda gxc#basic-expression-type-lambda%)
           (table-set!
            _tbl20511_
            '%#case-lambda
            gxc#basic-expression-type-case-lambda%)
           (table-set! _tbl20511_ '%#call gxc#basic-expression-type-call%)
           (table-set! _tbl20511_ '%#ref gxc#basic-expression-type-ref%)
           _tbl20511_)))))
  (define gxc#apply-basic-expression-type
    (lambda (_stx20504_ . _args20506_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx20504_ _args20506_))
       gxc#current-compile-methods
       (force gxc#&basic-expression-type))))
  (define gxc#&optimize-call
    (make-promise
     (lambda ()
       (let ((_tbl20501_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl20501_ (force gxc#&basic-xform))
           (table-set! _tbl20501_ '%#call gxc#optimize-call%)
           _tbl20501_)))))
  (define gxc#apply-optimize-call
    (lambda (_stx20494_ . _args20496_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx20494_ _args20496_))
       gxc#current-compile-methods
       (force gxc#&optimize-call))))
  (define gxc#&generate-ssxi
    (make-promise
     (lambda ()
       (let ((_tbl20491_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl20491_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl20491_ '%#begin gxc#generate-runtime-begin%)
           (table-set! _tbl20491_ '%#module gxc#generate-ssxi-module%)
           (table-set!
            _tbl20491_
            '%#define-values
            gxc#generate-ssxi-define-values%)
           (table-set! _tbl20491_ '%#call gxc#generate-ssxi-call%)
           _tbl20491_)))))
  (define gxc#apply-generate-ssxi
    (lambda (_stx20484_ . _args20486_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx20484_ _args20486_))
       gxc#current-compile-methods
       (force gxc#&generate-ssxi))))
  (define gxc#xform-identity (lambda (_stx20481_ . _args20482_) _stx20481_))
  (define gxc#xform-wrap-source
    (lambda (_stx20478_ _src-stx20479_)
      (gx#stx-wrap-source _stx20478_ (gx#stx-source _src-stx20479_))))
  (define gxc#xform-apply-compile-e
    (lambda (_args20472_)
      (lambda (_g2047320475_)
        (apply gxc#compile-e _g2047320475_ _args20472_))))
  (define gxc#xform-begin%
    (lambda (_stx20431_ . _args20432_)
      (let* ((_g2043420444_
              (lambda (_g2043520441_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2043520441_)))
             (_g2043320469_
              (lambda (_g2043520447_)
                (if (gx#stx-pair? _g2043520447_)
                    (let ((_e2043720449_ (gx#stx-e _g2043520447_)))
                      (let ((_hd2043820452_ (##car _e2043720449_))
                            (_tl2043920454_ (##cdr _e2043720449_)))
                        ((lambda (_L20457_)
                           (let ((_forms20467_
                                  (map (gxc#xform-apply-compile-e _args20432_)
                                       _L20457_)))
                             (gxc#xform-wrap-source
                              (cons '%#begin _forms20467_)
                              _stx20431_)))
                         _tl2043920454_)))
                    (_g2043420444_ _g2043520447_)))))
        (_g2043320469_ _stx20431_))))
  (define gxc#xform-module%
    (lambda (_stx20368_ . _args20369_)
      (let* ((_g2037120385_
              (lambda (_g2037220382_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2037220382_)))
             (_g2037020428_
              (lambda (_g2037220388_)
                (if (gx#stx-pair? _g2037220388_)
                    (let ((_e2037520390_ (gx#stx-e _g2037220388_)))
                      (let ((_hd2037620393_ (##car _e2037520390_))
                            (_tl2037720395_ (##cdr _e2037520390_)))
                        (if (gx#stx-pair? _tl2037720395_)
                            (let ((_e2037820398_ (gx#stx-e _tl2037720395_)))
                              (let ((_hd2037920401_ (##car _e2037820398_))
                                    (_tl2038020403_ (##cdr _e2037820398_)))
                                ((lambda (_L20406_ _L20407_)
                                   (let* ((_ctx20420_
                                           (gx#syntax-local-e__0 _L20407_))
                                          (_code20422_
                                           (##structure-ref
                                            _ctx20420_
                                            '11
                                            gx#module-context::t
                                            '#f))
                                          (_code20425_
                                           (call-with-parameters
                                            (lambda ()
                                              (apply gxc#compile-e
                                                     _code20422_
                                                     _args20369_))
                                            gx#current-expander-context
                                            _ctx20420_)))
                                     (begin
                                       (##structure-set!
                                        _ctx20420_
                                        _code20425_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _L20407_
                                                    (cons _code20425_ '())))
                                        _stx20368_))))
                                 _tl2038020403_
                                 _hd2037920401_)))
                            (_g2037120385_ _g2037220388_))))
                    (_g2037120385_ _g2037220388_)))))
        (_g2037020428_ _stx20368_))))
  (define gxc#xform-define-values%
    (lambda (_stx20298_ . _args20299_)
      (let* ((_g2030120318_
              (lambda (_g2030220315_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2030220315_)))
             (_g2030020365_
              (lambda (_g2030220321_)
                (if (gx#stx-pair? _g2030220321_)
                    (let ((_e2030520323_ (gx#stx-e _g2030220321_)))
                      (let ((_hd2030620326_ (##car _e2030520323_))
                            (_tl2030720328_ (##cdr _e2030520323_)))
                        (if (gx#stx-pair? _tl2030720328_)
                            (let ((_e2030820331_ (gx#stx-e _tl2030720328_)))
                              (let ((_hd2030920334_ (##car _e2030820331_))
                                    (_tl2031020336_ (##cdr _e2030820331_)))
                                (if (gx#stx-pair? _tl2031020336_)
                                    (let ((_e2031120339_
                                           (gx#stx-e _tl2031020336_)))
                                      (let ((_hd2031220342_
                                             (##car _e2031120339_))
                                            (_tl2031320344_
                                             (##cdr _e2031120339_)))
                                        (if (gx#stx-null? _tl2031320344_)
                                            ((lambda (_L20347_ _L20348_)
                                               (let ((_expr20363_
                                                      (apply gxc#compile-e
                                                             _L20347_
                                                             _args20299_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#define-values
                                                        (cons _L20348_
                                                              (cons _expr20363_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx20298_)))
                                             _hd2031220342_
                                             _hd2030920334_)
                                            (_g2030120318_ _g2030220321_))))
                                    (_g2030120318_ _g2030220321_))))
                            (_g2030120318_ _g2030220321_))))
                    (_g2030120318_ _g2030220321_)))))
        (_g2030020365_ _stx20298_))))
  (define gxc#xform-begin-annotation%
    (lambda (_stx20228_ . _args20229_)
      (let* ((_g2023120248_
              (lambda (_g2023220245_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2023220245_)))
             (_g2023020295_
              (lambda (_g2023220251_)
                (if (gx#stx-pair? _g2023220251_)
                    (let ((_e2023520253_ (gx#stx-e _g2023220251_)))
                      (let ((_hd2023620256_ (##car _e2023520253_))
                            (_tl2023720258_ (##cdr _e2023520253_)))
                        (if (gx#stx-pair? _tl2023720258_)
                            (let ((_e2023820261_ (gx#stx-e _tl2023720258_)))
                              (let ((_hd2023920264_ (##car _e2023820261_))
                                    (_tl2024020266_ (##cdr _e2023820261_)))
                                (if (gx#stx-pair? _tl2024020266_)
                                    (let ((_e2024120269_
                                           (gx#stx-e _tl2024020266_)))
                                      (let ((_hd2024220272_
                                             (##car _e2024120269_))
                                            (_tl2024320274_
                                             (##cdr _e2024120269_)))
                                        (if (gx#stx-null? _tl2024320274_)
                                            ((lambda (_L20277_ _L20278_)
                                               (let ((_expr20293_
                                                      (apply gxc#compile-e
                                                             _L20277_
                                                             _args20229_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#begin-annotation
                                                        (cons _L20278_
                                                              (cons _expr20293_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx20228_)))
                                             _hd2024220272_
                                             _hd2023920264_)
                                            (_g2023120248_ _g2023220251_))))
                                    (_g2023120248_ _g2023220251_))))
                            (_g2023120248_ _g2023220251_))))
                    (_g2023120248_ _g2023220251_)))))
        (_g2023020295_ _stx20228_))))
  (define gxc#xform-lambda%
    (lambda (_stx20171_ . _args20172_)
      (let* ((_g2017420188_
              (lambda (_g2017520185_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2017520185_)))
             (_g2017320225_
              (lambda (_g2017520191_)
                (if (gx#stx-pair? _g2017520191_)
                    (let ((_e2017820193_ (gx#stx-e _g2017520191_)))
                      (let ((_hd2017920196_ (##car _e2017820193_))
                            (_tl2018020198_ (##cdr _e2017820193_)))
                        (if (gx#stx-pair? _tl2018020198_)
                            (let ((_e2018120201_ (gx#stx-e _tl2018020198_)))
                              (let ((_hd2018220204_ (##car _e2018120201_))
                                    (_tl2018320206_ (##cdr _e2018120201_)))
                                ((lambda (_L20209_ _L20210_)
                                   (let ((_body20223_
                                          (map (gxc#xform-apply-compile-e
                                                _args20172_)
                                               _L20209_)))
                                     (gxc#xform-wrap-source
                                      (cons '%#lambda
                                            (cons _L20210_ _body20223_))
                                      _stx20171_)))
                                 _tl2018320206_
                                 _hd2018220204_)))
                            (_g2017420188_ _g2017520191_))))
                    (_g2017420188_ _g2017520191_)))))
        (_g2017320225_ _stx20171_))))
  (define gxc#xform-case-lambda%
    (lambda (_stx20084_ . _args20085_)
      (letrec ((_clause-e20087_
                (lambda (_clause20128_)
                  (let* ((_g2013020141_
                          (lambda (_g2013120138_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g2013120138_)))
                         (_g2012920168_
                          (lambda (_g2013120144_)
                            (if (gx#stx-pair? _g2013120144_)
                                (let ((_e2013420146_ (gx#stx-e _g2013120144_)))
                                  (let ((_hd2013520149_ (##car _e2013420146_))
                                        (_tl2013620151_ (##cdr _e2013420146_)))
                                    ((lambda (_L20154_ _L20155_)
                                       (let ((_body20166_
                                              (map (gxc#xform-apply-compile-e
                                                    _args20085_)
                                                   _L20154_)))
                                         (cons _L20155_ _body20166_)))
                                     _tl2013620151_
                                     _hd2013520149_)))
                                (_g2013020141_ _g2013120144_)))))
                    (_g2012920168_ _clause20128_)))))
        (let* ((_g2008920099_
                (lambda (_g2009020096_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2009020096_)))
               (_g2008820125_
                (lambda (_g2009020102_)
                  (if (gx#stx-pair? _g2009020102_)
                      (let ((_e2009220104_ (gx#stx-e _g2009020102_)))
                        (let ((_hd2009320107_ (##car _e2009220104_))
                              (_tl2009420109_ (##cdr _e2009220104_)))
                          ((lambda (_L20112_)
                             (let ((_clauses20123_
                                    (map _clause-e20087_ _L20112_)))
                               (gxc#xform-wrap-source
                                (cons '%#case-lambda _clauses20123_)
                                _stx20084_)))
                           _tl2009420109_)))
                      (_g2008920099_ _g2009020102_)))))
          (_g2008820125_ _stx20084_)))))
  (define gxc#xform-let-values%
    (lambda (_stx19878_ . _args19879_)
      (let* ((_g1988119914_
              (lambda (_g1988219911_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1988219911_)))
             (_g1988020081_
              (lambda (_g1988219917_)
                (if (gx#stx-pair? _g1988219917_)
                    (let ((_e1988719919_ (gx#stx-e _g1988219917_)))
                      (let ((_hd1988819922_ (##car _e1988719919_))
                            (_tl1988919924_ (##cdr _e1988719919_)))
                        (if (gx#stx-pair? _tl1988919924_)
                            (let ((_e1989019927_ (gx#stx-e _tl1988919924_)))
                              (let ((_hd1989119930_ (##car _e1989019927_))
                                    (_tl1989219932_ (##cdr _e1989019927_)))
                                (if (gx#stx-pair/null? _hd1989119930_)
                                    (if (fx>= (gx#stx-length _hd1989119930_)
                                              '0)
                                        (let ((_g20863_
                                               (gx#syntax-split-splice
                                                _hd1989119930_
                                                '0)))
                                          (begin
                                            (let ((_g20864_
                                                   (values-count _g20863_)))
                                              (if (not (fx= _g20864_ 2))
                                                  (error "Context expects 2 values"
                                                         _g20864_)))
                                            (let ((_target1989319935_
                                                   (values-ref _g20863_ 0))
                                                  (_tl1989519937_
                                                   (values-ref _g20863_ 1)))
                                              (if (gx#stx-null? _tl1989519937_)
                                                  (letrec ((_loop1989619940_
                                                            (lambda (_hd1989419943_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr1990019945_
                             _hd1990119947_)
                      (if (gx#stx-pair? _hd1989419943_)
                          (let ((_e1989719950_ (gx#stx-e _hd1989419943_)))
                            (let ((_lp-hd1989819953_ (##car _e1989719950_))
                                  (_lp-tl1989919955_ (##cdr _e1989719950_)))
                              (if (gx#stx-pair? _lp-hd1989819953_)
                                  (let ((_e1990419958_
                                         (gx#stx-e _lp-hd1989819953_)))
                                    (let ((_hd1990519961_
                                           (##car _e1990419958_))
                                          (_tl1990619963_
                                           (##cdr _e1990419958_)))
                                      (if (gx#stx-pair? _tl1990619963_)
                                          (let ((_e1990719966_
                                                 (gx#stx-e _tl1990619963_)))
                                            (let ((_hd1990819969_
                                                   (##car _e1990719966_))
                                                  (_tl1990919971_
                                                   (##cdr _e1990719966_)))
                                              (if (gx#stx-null? _tl1990919971_)
                                                  (_loop1989619940_
                                                   _lp-tl1989919955_
                                                   (cons _hd1990819969_
                                                         _expr1990019945_)
                                                   (cons _hd1990519961_
                                                         _hd1990119947_))
                                                  (_g1988119914_
                                                   _g1988219917_))))
                                          (_g1988119914_ _g1988219917_))))
                                  (_g1988119914_ _g1988219917_))))
                          (let ((_expr1990219974_ (reverse _expr1990019945_))
                                (_hd1990319976_ (reverse _hd1990119947_)))
                            ((lambda (_L19979_ _L19980_ _L19981_ _L19982_)
                               (let* ((_g2000120017_
                                       (lambda (_g2000220014_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2000220014_)))
                                      (_g2000020071_
                                       (lambda (_g2000220020_)
                                         (if (gx#stx-pair/null? _g2000220020_)
                                             (if (fx>= (gx#stx-length
                                                        _g2000220020_)
                                                       '0)
                                                 (let ((_g20865_
                                                        (gx#syntax-split-splice
                                                         _g2000220020_
                                                         '0)))
                                                   (begin
                                                     (let ((_g20866_
                                                            (values-count
                                                             _g20865_)))
                                                       (if (not (fx= _g20866_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g20866_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2000420022_
                                                            (values-ref
                                                             _g20865_
                                                             0))
                                                           (_tl2000620024_
                                                            (values-ref
                                                             _g20865_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl2000620024_)
                                                           (letrec ((_loop2000720027_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2000520030_ _expr2001120032_)
                               (if (gx#stx-pair? _hd2000520030_)
                                   (let ((_e2000820035_
                                          (gx#syntax-e _hd2000520030_)))
                                     (let ((_lp-hd2000920038_
                                            (##car _e2000820035_))
                                           (_lp-tl2001020040_
                                            (##cdr _e2000820035_)))
                                       (_loop2000720027_
                                        _lp-tl2001020040_
                                        (cons _lp-hd2000920038_
                                              _expr2001120032_))))
                                   (let ((_expr2001220043_
                                          (reverse _expr2001120032_)))
                                     ((lambda (_L20046_)
                                        (let ()
                                          (let ((_body20059_
                                                 (map (gxc#xform-apply-compile-e
                                                       _args19879_)
                                                      _L19979_)))
                                            (gxc#xform-wrap-source
                                             (cons _L19982_
                                                   (cons (begin
                                                           (gx#syntax-check-splice-targets
                                                            _L20046_
                                                            _L19981_)
                                                           (foldr (lambda (_g2006020064_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g2006120066_
                                   _g2006220068_)
                            (cons (cons _g2006120066_ (cons _g2006020064_ '()))
                                  _g2006220068_))
                          '()
                          _L20046_
                          _L19981_))
                 _body20059_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _stx19878_))))
                                      _expr2001220043_))))))
                     (_loop2000720027_ _target2000420022_ '()))
                   (_g2000120017_ _g2000220020_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2000120017_ _g2000220020_))
                                             (_g2000120017_ _g2000220020_)))))
                                 (_g2000020071_
                                  (map (gxc#xform-apply-compile-e _args19879_)
                                       (begin
                                         '#!void
                                         (foldr1 (lambda (_g2007320076_
                                                          _g2007420078_)
                                                   (cons _g2007320076_
                                                         _g2007420078_))
                                                 '()
                                                 _L19980_))))))
                             _tl1989219932_
                             _expr1990219974_
                             _hd1990319976_
                             _hd1988819922_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1989619940_
                                                     _target1989319935_
                                                     '()
                                                     '()))
                                                  (_g1988119914_
                                                   _g1988219917_)))))
                                        (_g1988119914_ _g1988219917_))
                                    (_g1988119914_ _g1988219917_))))
                            (_g1988119914_ _g1988219917_))))
                    (_g1988119914_ _g1988219917_)))))
        (_g1988020081_ _stx19878_))))
  (define gxc#xform-operands
    (lambda (_stx19834_ . _args19835_)
      (let* ((_g1983719848_
              (lambda (_g1983819845_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1983819845_)))
             (_g1983619875_
              (lambda (_g1983819851_)
                (if (gx#stx-pair? _g1983819851_)
                    (let ((_e1984119853_ (gx#stx-e _g1983819851_)))
                      (let ((_hd1984219856_ (##car _e1984119853_))
                            (_tl1984319858_ (##cdr _e1984119853_)))
                        ((lambda (_L19861_ _L19862_)
                           (let ((_rands19873_
                                  (map (gxc#xform-apply-compile-e _args19835_)
                                       _L19861_)))
                             (gxc#xform-wrap-source
                              (cons _L19862_ _rands19873_)
                              _stx19834_)))
                         _tl1984319858_
                         _hd1984219856_)))
                    (_g1983719848_ _g1983819851_)))))
        (_g1983619875_ _stx19834_))))
  (define gxc#xform-call% gxc#xform-operands)
  (define gxc#xform-setq%
    (lambda (_stx19764_ . _args19765_)
      (let* ((_g1976719784_
              (lambda (_g1976819781_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1976819781_)))
             (_g1976619831_
              (lambda (_g1976819787_)
                (if (gx#stx-pair? _g1976819787_)
                    (let ((_e1977119789_ (gx#stx-e _g1976819787_)))
                      (let ((_hd1977219792_ (##car _e1977119789_))
                            (_tl1977319794_ (##cdr _e1977119789_)))
                        (if (gx#stx-pair? _tl1977319794_)
                            (let ((_e1977419797_ (gx#stx-e _tl1977319794_)))
                              (let ((_hd1977519800_ (##car _e1977419797_))
                                    (_tl1977619802_ (##cdr _e1977419797_)))
                                (if (gx#stx-pair? _tl1977619802_)
                                    (let ((_e1977719805_
                                           (gx#stx-e _tl1977619802_)))
                                      (let ((_hd1977819808_
                                             (##car _e1977719805_))
                                            (_tl1977919810_
                                             (##cdr _e1977719805_)))
                                        (if (gx#stx-null? _tl1977919810_)
                                            ((lambda (_L19813_ _L19814_)
                                               (let ((_expr19829_
                                                      (apply gxc#compile-e
                                                             _L19813_
                                                             _args19765_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#set!
                                                        (cons _L19814_
                                                              (cons _expr19829_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx19764_)))
                                             _hd1977819808_
                                             _hd1977519800_)
                                            (_g1976719784_ _g1976819787_))))
                                    (_g1976719784_ _g1976819787_))))
                            (_g1976719784_ _g1976819787_))))
                    (_g1976719784_ _g1976819787_)))))
        (_g1976619831_ _stx19764_))))
  (define gxc#collect-mutators-setq%
    (lambda (_stx19695_)
      (let* ((_g1969719714_
              (lambda (_g1969819711_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1969819711_)))
             (_g1969619761_
              (lambda (_g1969819717_)
                (if (gx#stx-pair? _g1969819717_)
                    (let ((_e1970119719_ (gx#stx-e _g1969819717_)))
                      (let ((_hd1970219722_ (##car _e1970119719_))
                            (_tl1970319724_ (##cdr _e1970119719_)))
                        (if (gx#stx-pair? _tl1970319724_)
                            (let ((_e1970419727_ (gx#stx-e _tl1970319724_)))
                              (let ((_hd1970519730_ (##car _e1970419727_))
                                    (_tl1970619732_ (##cdr _e1970419727_)))
                                (if (gx#stx-pair? _tl1970619732_)
                                    (let ((_e1970719735_
                                           (gx#stx-e _tl1970619732_)))
                                      (let ((_hd1970819738_
                                             (##car _e1970719735_))
                                            (_tl1970919740_
                                             (##cdr _e1970719735_)))
                                        (if (gx#stx-null? _tl1970919740_)
                                            ((lambda (_L19743_ _L19744_)
                                               (let ((_sym19759_
                                                      (gxc#generate-runtime-binding-id
                                                       _L19744_)))
                                                 (begin
                                                   (gxc#verbose
                                                    '"collect mutator "
                                                    _sym19759_)
                                                   (table-set!
                                                    (gxc#current-compile-mutators)
                                                    _sym19759_
                                                    '#t)
                                                   (gxc#compile-e _L19743_))))
                                             _hd1970819738_
                                             _hd1970519730_)
                                            (_g1969719714_ _g1969819717_))))
                                    (_g1969719714_ _g1969819717_))))
                            (_g1969719714_ _g1969819717_))))
                    (_g1969719714_ _g1969819717_)))))
        (_g1969619761_ _stx19695_))))
  (define gxc#dispatch-lambda-form?
    (lambda (_form18929_)
      (let* ((_g1893419091_
              (lambda (_g1893519088_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1893519088_)))
             (_g1893319098_ (lambda (_g1893519094_) ((lambda () '#f))))
             (_g1893219238_
              (lambda (_g1893519101_)
                (if (gx#stx-pair? _g1893519101_)
                    (let ((_e1905119103_ (gx#stx-e _g1893519101_)))
                      (let ((_hd1905219106_ (##car _e1905119103_))
                            (_tl1905319108_ (##cdr _e1905119103_)))
                        (if (gx#stx-pair? _tl1905319108_)
                            (let ((_e1905419111_ (gx#stx-e _tl1905319108_)))
                              (let ((_hd1905519114_ (##car _e1905419111_))
                                    (_tl1905619116_ (##cdr _e1905419111_)))
                                (if (gx#stx-pair? _hd1905519114_)
                                    (let ((_e1905719119_
                                           (gx#stx-e _hd1905519114_)))
                                      (let ((_hd1905819122_
                                             (##car _e1905719119_))
                                            (_tl1905919124_
                                             (##cdr _e1905719119_)))
                                        (if (gx#identifier? _hd1905819122_)
                                            (if (gx#stx-eq?
                                                 '%#call
                                                 _hd1905819122_)
                                                (if (gx#stx-pair?
                                                     _tl1905919124_)
                                                    (let ((_e1906019127_
                                                           (gx#stx-e
                                                            _tl1905919124_)))
                                                      (let ((_hd1906119130_
                                                             (##car _e1906019127_))
                                                            (_tl1906219132_
                                                             (##cdr _e1906019127_)))
                                                        (if (gx#stx-pair?
                                                             _hd1906119130_)
                                                            (let ((_e1906319135_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1906119130_)))
                      (let ((_hd1906419138_ (##car _e1906319135_))
                            (_tl1906519140_ (##cdr _e1906319135_)))
                        (if (gx#identifier? _hd1906419138_)
                            (if (gx#stx-eq? '%#ref _hd1906419138_)
                                (if (gx#stx-pair? _tl1906519140_)
                                    (let ((_e1906619143_
                                           (gx#stx-e _tl1906519140_)))
                                      (let ((_hd1906719146_
                                             (##car _e1906619143_))
                                            (_tl1906819148_
                                             (##cdr _e1906619143_)))
                                        (if (gx#stx-null? _tl1906819148_)
                                            (if (gx#stx-pair? _tl1906219132_)
                                                (let ((_e1906919151_
                                                       (gx#stx-e
                                                        _tl1906219132_)))
                                                  (let ((_hd1907019154_
                                                         (##car _e1906919151_))
                                                        (_tl1907119156_
                                                         (##cdr _e1906919151_)))
                                                    (if (gx#stx-pair?
                                                         _hd1907019154_)
                                                        (let ((_e1907219159_
                                                               (gx#stx-e
                                                                _hd1907019154_)))
                                                          (let ((_hd1907319162_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1907219159_))
                        (_tl1907419164_ (##cdr _e1907219159_)))
                    (if (gx#identifier? _hd1907319162_)
                        (if (gx#stx-eq? '%#ref _hd1907319162_)
                            (if (gx#stx-pair? _tl1907419164_)
                                (let ((_e1907519167_
                                       (gx#stx-e _tl1907419164_)))
                                  (let ((_hd1907619170_ (##car _e1907519167_))
                                        (_tl1907719172_ (##cdr _e1907519167_)))
                                    (if (gx#stx-null? _tl1907719172_)
                                        (if (gx#stx-pair? _tl1907119156_)
                                            (let ((_e1907819175_
                                                   (gx#stx-e _tl1907119156_)))
                                              (let ((_hd1907919178_
                                                     (##car _e1907819175_))
                                                    (_tl1908019180_
                                                     (##cdr _e1907819175_)))
                                                (if (gx#stx-pair?
                                                     _hd1907919178_)
                                                    (let ((_e1908119183_
                                                           (gx#stx-e
                                                            _hd1907919178_)))
                                                      (let ((_hd1908219186_
                                                             (##car _e1908119183_))
                                                            (_tl1908319188_
                                                             (##cdr _e1908119183_)))
                                                        (if (gx#identifier?
                                                             _hd1908219186_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd1908219186_)
                        (if (gx#stx-pair? _tl1908319188_)
                            (let ((_e1908419191_ (gx#stx-e _tl1908319188_)))
                              (let ((_hd1908519194_ (##car _e1908419191_))
                                    (_tl1908619196_ (##cdr _e1908419191_)))
                                (if (gx#stx-null? _tl1908619196_)
                                    (if (gx#stx-null? _tl1908019180_)
                                        (if (gx#stx-null? _tl1905619116_)
                                            ((lambda (_L19199_
                                                      _L19200_
                                                      _L19201_
                                                      _L19202_)
                                               (if (if (gx#identifier?
                                                        _L19202_)
                                                       (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L19201_)
                        'apply)
                   (if (gx#free-identifier=? _L19202_ _L19199_)
                       (not (gx#free-identifier=? _L19200_ _L19202_))
                       '#f)
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '#t
                                                   (_g1893319098_
                                                    _g1893519101_)))
                                             _hd1908519194_
                                             _hd1907619170_
                                             _hd1906719146_
                                             _hd1905219106_)
                                            (_g1893319098_ _g1893519101_))
                                        (_g1893319098_ _g1893519101_))
                                    (_g1893319098_ _g1893519101_))))
                            (_g1893319098_ _g1893519101_))
                        (_g1893319098_ _g1893519101_))
                    (_g1893319098_ _g1893519101_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1893319098_
                                                     _g1893519101_))))
                                            (_g1893319098_ _g1893519101_))
                                        (_g1893319098_ _g1893519101_))))
                                (_g1893319098_ _g1893519101_))
                            (_g1893319098_ _g1893519101_))
                        (_g1893319098_ _g1893519101_))))
                (_g1893319098_ _g1893519101_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1893319098_ _g1893519101_))
                                            (_g1893319098_ _g1893519101_))))
                                    (_g1893319098_ _g1893519101_))
                                (_g1893319098_ _g1893519101_))
                            (_g1893319098_ _g1893519101_))))
                    (_g1893319098_ _g1893519101_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1893319098_
                                                     _g1893519101_))
                                                (_g1893319098_ _g1893519101_))
                                            (_g1893319098_ _g1893519101_))))
                                    (_g1893319098_ _g1893519101_))))
                            (_g1893319098_ _g1893519101_))))
                    (_g1893319098_ _g1893519101_))))
             (_g1893119498_
              (lambda (_g1893519241_)
                (if (gx#stx-pair? _g1893519241_)
                    (let ((_e1898719243_ (gx#stx-e _g1893519241_)))
                      (let ((_hd1898819246_ (##car _e1898719243_))
                            (_tl1898919248_ (##cdr _e1898719243_)))
                        (if (gx#stx-pair/null? _hd1898819246_)
                            (if (fx>= (gx#stx-length _hd1898819246_) '0)
                                (let ((_g20867_
                                       (gx#syntax-split-splice
                                        _hd1898819246_
                                        '0)))
                                  (begin
                                    (let ((_g20868_ (values-count _g20867_)))
                                      (if (not (fx= _g20868_ 2))
                                          (error "Context expects 2 values"
                                                 _g20868_)))
                                    (let ((_target1899019251_
                                           (values-ref _g20867_ 0))
                                          (_tl1899219253_
                                           (values-ref _g20867_ 1)))
                                      (letrec ((_loop1899319256_
                                                (lambda (_hd1899119259_
                                                         _arg1899719261_)
                                                  (if (gx#stx-pair?
                                                       _hd1899119259_)
                                                      (let ((_e1899419264_
                                                             (gx#stx-e
                                                              _hd1899119259_)))
                                                        (let ((_lp-hd1899519267_
                                                               (##car _e1899419264_))
                                                              (_lp-tl1899619269_
                                                               (##cdr _e1899419264_)))
                                                          (_loop1899319256_
                                                           _lp-tl1899619269_
                                                           (cons _lp-hd1899519267_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _arg1899719261_))))
              (let ((_arg1899819272_ (reverse _arg1899719261_)))
                (if (gx#stx-pair? _tl1898919248_)
                    (let ((_e1899919275_ (gx#stx-e _tl1898919248_)))
                      (let ((_hd1900019278_ (##car _e1899919275_))
                            (_tl1900119280_ (##cdr _e1899919275_)))
                        (if (gx#stx-pair? _hd1900019278_)
                            (let ((_e1900219283_ (gx#stx-e _hd1900019278_)))
                              (let ((_hd1900319286_ (##car _e1900219283_))
                                    (_tl1900419288_ (##cdr _e1900219283_)))
                                (if (gx#identifier? _hd1900319286_)
                                    (if (gx#stx-eq? '%#call _hd1900319286_)
                                        (if (gx#stx-pair? _tl1900419288_)
                                            (let ((_e1900519291_
                                                   (gx#stx-e _tl1900419288_)))
                                              (let ((_hd1900619294_
                                                     (##car _e1900519291_))
                                                    (_tl1900719296_
                                                     (##cdr _e1900519291_)))
                                                (if (gx#stx-pair?
                                                     _hd1900619294_)
                                                    (let ((_e1900819299_
                                                           (gx#stx-e
                                                            _hd1900619294_)))
                                                      (let ((_hd1900919302_
                                                             (##car _e1900819299_))
                                                            (_tl1901019304_
                                                             (##cdr _e1900819299_)))
                                                        (if (gx#identifier?
                                                             _hd1900919302_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd1900919302_)
                        (if (gx#stx-pair? _tl1901019304_)
                            (let ((_e1901119307_ (gx#stx-e _tl1901019304_)))
                              (let ((_hd1901219310_ (##car _e1901119307_))
                                    (_tl1901319312_ (##cdr _e1901119307_)))
                                (if (gx#stx-null? _tl1901319312_)
                                    (if (gx#stx-pair? _tl1900719296_)
                                        (let ((_e1901419315_
                                               (gx#stx-e _tl1900719296_)))
                                          (let ((_hd1901519318_
                                                 (##car _e1901419315_))
                                                (_tl1901619320_
                                                 (##cdr _e1901419315_)))
                                            (if (gx#stx-pair? _hd1901519318_)
                                                (let ((_e1901719323_
                                                       (gx#stx-e
                                                        _hd1901519318_)))
                                                  (let ((_hd1901819326_
                                                         (##car _e1901719323_))
                                                        (_tl1901919328_
                                                         (##cdr _e1901719323_)))
                                                    (if (gx#identifier?
                                                         _hd1901819326_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd1901819326_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1901919328_)
                        (let ((_e1902019331_ (gx#stx-e _tl1901919328_)))
                          (let ((_hd1902119334_ (##car _e1902019331_))
                                (_tl1902219336_ (##cdr _e1902019331_)))
                            (if (gx#stx-null? _tl1902219336_)
                                (if (gx#stx-pair/null? _tl1901619320_)
                                    (if (fx>= (gx#stx-length _tl1901619320_)
                                              '1)
                                        (let ((_g20869_
                                               (gx#syntax-split-splice
                                                _tl1901619320_
                                                '1)))
                                          (begin
                                            (let ((_g20870_
                                                   (values-count _g20869_)))
                                              (if (not (fx= _g20870_ 2))
                                                  (error "Context expects 2 values"
                                                         _g20870_)))
                                            (let ((_target1902319339_
                                                   (values-ref _g20869_ 0))
                                                  (_tl1902519341_
                                                   (values-ref _g20869_ 1)))
                                              (if (gx#stx-pair? _tl1902519341_)
                                                  (let ((_e1903219344_
                                                         (gx#stx-e
                                                          _tl1902519341_)))
                                                    (let ((_hd1903319347_
                                                           (##car _e1903219344_))
                                                          (_tl1903419349_
                                                           (##cdr _e1903219344_)))
                                                      (if (gx#stx-pair?
                                                           _hd1903319347_)
                                                          (let ((_e1903519352_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd1903319347_)))
                    (let ((_hd1903619355_ (##car _e1903519352_))
                          (_tl1903719357_ (##cdr _e1903519352_)))
                      (if (gx#identifier? _hd1903619355_)
                          (if (gx#stx-eq? '%#ref _hd1903619355_)
                              (if (gx#stx-pair? _tl1903719357_)
                                  (let ((_e1903819360_
                                         (gx#stx-e _tl1903719357_)))
                                    (let ((_hd1903919363_
                                           (##car _e1903819360_))
                                          (_tl1904019365_
                                           (##cdr _e1903819360_)))
                                      (if (gx#stx-null? _tl1904019365_)
                                          (if (gx#stx-null? _tl1903419349_)
                                              (letrec ((_loop1902619368_
                                                        (lambda (_hd1902419371_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _xarg1903019373_)
                  (if (gx#stx-pair? _hd1902419371_)
                      (let ((_e1902719376_ (gx#stx-e _hd1902419371_)))
                        (let ((_lp-hd1902819379_ (##car _e1902719376_))
                              (_lp-tl1902919381_ (##cdr _e1902719376_)))
                          (if (gx#stx-pair? _lp-hd1902819379_)
                              (let ((_e1904119384_
                                     (gx#stx-e _lp-hd1902819379_)))
                                (let ((_hd1904219387_ (##car _e1904119384_))
                                      (_tl1904319389_ (##cdr _e1904119384_)))
                                  (if (gx#identifier? _hd1904219387_)
                                      (if (gx#stx-eq? '%#ref _hd1904219387_)
                                          (if (gx#stx-pair? _tl1904319389_)
                                              (let ((_e1904419392_
                                                     (gx#stx-e
                                                      _tl1904319389_)))
                                                (let ((_hd1904519395_
                                                       (##car _e1904419392_))
                                                      (_tl1904619397_
                                                       (##cdr _e1904419392_)))
                                                  (if (gx#stx-null?
                                                       _tl1904619397_)
                                                      (_loop1902619368_
                                                       _lp-tl1902919381_
                                                       (cons _hd1904519395_
                                                             _xarg1903019373_))
                                                      (_g1893219238_
                                                       _g1893519241_))))
                                              (_g1893219238_ _g1893519241_))
                                          (_g1893219238_ _g1893519241_))
                                      (_g1893219238_ _g1893519241_))))
                              (_g1893219238_ _g1893519241_))))
                      (let ((_xarg1903119400_ (reverse _xarg1903019373_)))
                        (if (gx#stx-null? _tl1900119280_)
                            ((lambda (_L19403_
                                      _L19404_
                                      _L19405_
                                      _L19406_
                                      _L19407_
                                      _L19408_)
                               (if (if (gx#identifier-list?
                                        (begin
                                          '#!void
                                          (foldr1 (lambda (_g1945119454_
                                                           _g1945219456_)
                                                    (cons _g1945119454_
                                                          _g1945219456_))
                                                  '()
                                                  _L19408_)))
                                       (if (gx#identifier? _L19407_)
                                           (if (eq? (gxc#generate-runtime-binding-id
                                                     _L19406_)
                                                    'apply)
                                               (if (fx= (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (foldr1 (lambda (_g1945819461_ _g1945919463_)
                                    (cons _g1945819461_ _g1945919463_))
                                  '()
                                  _L19408_)))
                (length (begin
                          '#!void
                          (foldr1 (lambda (_g1946519468_ _g1946619470_)
                                    (cons _g1946519468_ _g1946619470_))
                                  '()
                                  _L19404_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (andmap gx#free-identifier=?
                                                               (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#!void
                         (foldr1 (lambda (_g1947219475_ _g1947319477_)
                                   (cons _g1947219475_ _g1947319477_))
                                 '()
                                 _L19408_))
                       (begin
                         '#!void
                         (foldr1 (lambda (_g1947919482_ _g1948019484_)
                                   (cons _g1947919482_ _g1948019484_))
                                 '()
                                 _L19404_)))
               (if (gx#free-identifier=? _L19407_ _L19403_)
                   (not (find (lambda (_g1948619488_)
                                (gx#free-identifier=? _g1948619488_ _L19405_))
                              (begin
                                '#!void
                                (foldr1 (lambda (_g1949019493_ _g1949119495_)
                                          (cons _g1949019493_ _g1949119495_))
                                        (cons _L19407_ '())
                                        _L19408_))))
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '#f)
                                               '#f)
                                           '#f)
                                       '#f)
                                   '#t
                                   (_g1893219238_ _g1893519241_)))
                             _hd1903919363_
                             _xarg1903119400_
                             _hd1902119334_
                             _hd1901219310_
                             _tl1899219253_
                             _arg1899819272_)
                            (_g1893219238_ _g1893519241_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop1902619368_
                                                 _target1902319339_
                                                 '()))
                                              (_g1893219238_ _g1893519241_))
                                          (_g1893219238_ _g1893519241_))))
                                  (_g1893219238_ _g1893519241_))
                              (_g1893219238_ _g1893519241_))
                          (_g1893219238_ _g1893519241_))))
                  (_g1893219238_ _g1893519241_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1893219238_
                                                   _g1893519241_)))))
                                        (_g1893219238_ _g1893519241_))
                                    (_g1893219238_ _g1893519241_))
                                (_g1893219238_ _g1893519241_))))
                        (_g1893219238_ _g1893519241_))
                    (_g1893219238_ _g1893519241_))
                (_g1893219238_ _g1893519241_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1893219238_
                                                 _g1893519241_))))
                                        (_g1893219238_ _g1893519241_))
                                    (_g1893219238_ _g1893519241_))))
                            (_g1893219238_ _g1893519241_))
                        (_g1893219238_ _g1893519241_))
                    (_g1893219238_ _g1893519241_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1893219238_
                                                     _g1893519241_))))
                                            (_g1893219238_ _g1893519241_))
                                        (_g1893219238_ _g1893519241_))
                                    (_g1893219238_ _g1893519241_))))
                            (_g1893219238_ _g1893519241_))))
                    (_g1893219238_ _g1893519241_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop1899319256_
                                         _target1899019251_
                                         '())))))
                                (_g1893219238_ _g1893519241_))
                            (_g1893219238_ _g1893519241_))))
                    (_g1893219238_ _g1893519241_))))
             (_g1893019692_
              (lambda (_g1893519501_)
                (if (gx#stx-pair? _g1893519501_)
                    (let ((_e1893919503_ (gx#stx-e _g1893519501_)))
                      (let ((_hd1894019506_ (##car _e1893919503_))
                            (_tl1894119508_ (##cdr _e1893919503_)))
                        (if (gx#stx-pair/null? _hd1894019506_)
                            (if (fx>= (gx#stx-length _hd1894019506_) '0)
                                (let ((_g20871_
                                       (gx#syntax-split-splice
                                        _hd1894019506_
                                        '0)))
                                  (begin
                                    (let ((_g20872_ (values-count _g20871_)))
                                      (if (not (fx= _g20872_ 2))
                                          (error "Context expects 2 values"
                                                 _g20872_)))
                                    (let ((_target1894219511_
                                           (values-ref _g20871_ 0))
                                          (_tl1894419513_
                                           (values-ref _g20871_ 1)))
                                      (if (gx#stx-null? _tl1894419513_)
                                          (letrec ((_loop1894519516_
                                                    (lambda (_hd1894319519_
                                                             _arg1894919521_)
                                                      (if (gx#stx-pair?
                                                           _hd1894319519_)
                                                          (let ((_e1894619524_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd1894319519_)))
                    (let ((_lp-hd1894719527_ (##car _e1894619524_))
                          (_lp-tl1894819529_ (##cdr _e1894619524_)))
                      (_loop1894519516_
                       _lp-tl1894819529_
                       (cons _lp-hd1894719527_ _arg1894919521_))))
                  (let ((_arg1895019532_ (reverse _arg1894919521_)))
                    (if (gx#stx-pair? _tl1894119508_)
                        (let ((_e1895119535_ (gx#stx-e _tl1894119508_)))
                          (let ((_hd1895219538_ (##car _e1895119535_))
                                (_tl1895319540_ (##cdr _e1895119535_)))
                            (if (gx#stx-pair? _hd1895219538_)
                                (let ((_e1895419543_
                                       (gx#stx-e _hd1895219538_)))
                                  (let ((_hd1895519546_ (##car _e1895419543_))
                                        (_tl1895619548_ (##cdr _e1895419543_)))
                                    (if (gx#identifier? _hd1895519546_)
                                        (if (gx#stx-eq? '%#call _hd1895519546_)
                                            (if (gx#stx-pair? _tl1895619548_)
                                                (let ((_e1895719551_
                                                       (gx#stx-e
                                                        _tl1895619548_)))
                                                  (let ((_hd1895819554_
                                                         (##car _e1895719551_))
                                                        (_tl1895919556_
                                                         (##cdr _e1895719551_)))
                                                    (if (gx#stx-pair?
                                                         _hd1895819554_)
                                                        (let ((_e1896019559_
                                                               (gx#stx-e
                                                                _hd1895819554_)))
                                                          (let ((_hd1896119562_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1896019559_))
                        (_tl1896219564_ (##cdr _e1896019559_)))
                    (if (gx#identifier? _hd1896119562_)
                        (if (gx#stx-eq? '%#ref _hd1896119562_)
                            (if (gx#stx-pair? _tl1896219564_)
                                (let ((_e1896319567_
                                       (gx#stx-e _tl1896219564_)))
                                  (let ((_hd1896419570_ (##car _e1896319567_))
                                        (_tl1896519572_ (##cdr _e1896319567_)))
                                    (if (gx#stx-null? _tl1896519572_)
                                        (if (gx#stx-pair/null? _tl1895919556_)
                                            (if (fx>= (gx#stx-length
                                                       _tl1895919556_)
                                                      '0)
                                                (let ((_g20873_
                                                       (gx#syntax-split-splice
                                                        _tl1895919556_
                                                        '0)))
                                                  (begin
                                                    (let ((_g20874_
                                                           (values-count
                                                            _g20873_)))
                                                      (if (not (fx= _g20874_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g20874_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1896619575_
                                                           (values-ref
                                                            _g20873_
                                                            0))
                                                          (_tl1896819577_
                                                           (values-ref
                                                            _g20873_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl1896819577_)
                                                          (letrec ((_loop1896919580_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1896719583_ _xarg1897319585_)
                              (if (gx#stx-pair? _hd1896719583_)
                                  (let ((_e1897019588_
                                         (gx#stx-e _hd1896719583_)))
                                    (let ((_lp-hd1897119591_
                                           (##car _e1897019588_))
                                          (_lp-tl1897219593_
                                           (##cdr _e1897019588_)))
                                      (if (gx#stx-pair? _lp-hd1897119591_)
                                          (let ((_e1897519596_
                                                 (gx#stx-e _lp-hd1897119591_)))
                                            (let ((_hd1897619599_
                                                   (##car _e1897519596_))
                                                  (_tl1897719601_
                                                   (##cdr _e1897519596_)))
                                              (if (gx#identifier?
                                                   _hd1897619599_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd1897619599_)
                                                      (if (gx#stx-pair?
                                                           _tl1897719601_)
                                                          (let ((_e1897819604_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1897719601_)))
                    (let ((_hd1897919607_ (##car _e1897819604_))
                          (_tl1898019609_ (##cdr _e1897819604_)))
                      (if (gx#stx-null? _tl1898019609_)
                          (_loop1896919580_
                           _lp-tl1897219593_
                           (cons _hd1897919607_ _xarg1897319585_))
                          (_g1893119498_ _g1893519501_))))
                  (_g1893119498_ _g1893519501_))
              (_g1893119498_ _g1893519501_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1893119498_
                                                   _g1893519501_))))
                                          (_g1893119498_ _g1893519501_))))
                                  (let ((_xarg1897419612_
                                         (reverse _xarg1897319585_)))
                                    (if (gx#stx-null? _tl1895319540_)
                                        ((lambda (_L19615_ _L19616_ _L19617_)
                                           (if (if (gx#identifier-list?
                                                    (begin
                                                      '#!void
                                                      (foldr1 (lambda (_g1964519648_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1964619650_)
                        (cons _g1964519648_ _g1964619650_))
                      '()
                      _L19617_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (fx= (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#!void
                              (foldr1 (lambda (_g1965219655_ _g1965319657_)
                                        (cons _g1965219655_ _g1965319657_))
                                      '()
                                      _L19617_)))
                    (length (begin
                              '#!void
                              (foldr1 (lambda (_g1965919662_ _g1966019664_)
                                        (cons _g1965919662_ _g1966019664_))
                                      '()
                                      _L19615_))))
               (if (andmap gx#free-identifier=?
                           (begin
                             '#!void
                             (foldr1 (lambda (_g1966619669_ _g1966719671_)
                                       (cons _g1966619669_ _g1966719671_))
                                     '()
                                     _L19617_))
                           (begin
                             '#!void
                             (foldr1 (lambda (_g1967319676_ _g1967419678_)
                                       (cons _g1967319676_ _g1967419678_))
                                     '()
                                     _L19615_)))
                   (not (find (lambda (_g1968019682_)
                                (gx#free-identifier=? _g1968019682_ _L19616_))
                              (begin
                                '#!void
                                (foldr1 (lambda (_g1968419687_ _g1968519689_)
                                          (cons _g1968419687_ _g1968519689_))
                                        '()
                                        _L19617_))))
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '#f)
                                               '#t
                                               (_g1893119498_ _g1893519501_)))
                                         _xarg1897419612_
                                         _hd1896419570_
                                         _arg1895019532_)
                                        (_g1893119498_ _g1893519501_)))))))
                    (_loop1896919580_ _target1896619575_ '()))
                  (_g1893119498_ _g1893519501_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1893119498_ _g1893519501_))
                                            (_g1893119498_ _g1893519501_))
                                        (_g1893119498_ _g1893519501_))))
                                (_g1893119498_ _g1893519501_))
                            (_g1893119498_ _g1893519501_))
                        (_g1893119498_ _g1893519501_))))
                (_g1893119498_ _g1893519501_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1893119498_ _g1893519501_))
                                            (_g1893119498_ _g1893519501_))
                                        (_g1893119498_ _g1893519501_))))
                                (_g1893119498_ _g1893519501_))))
                        (_g1893119498_ _g1893519501_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1894519516_
                                             _target1894219511_
                                             '()))
                                          (_g1893119498_ _g1893519501_)))))
                                (_g1893119498_ _g1893519501_))
                            (_g1893119498_ _g1893519501_))))
                    (_g1893119498_ _g1893519501_)))))
        (_g1893019692_ _form18929_))))
  (define gxc#dispatch-lambda-form-delegate
    (lambda (_form18397_)
      (let* ((_g1840118525_
              (lambda (_g1840218522_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1840218522_)))
             (_g1840018642_
              (lambda (_g1840218528_)
                (if (gx#stx-pair? _g1840218528_)
                    (let ((_e1849118530_ (gx#stx-e _g1840218528_)))
                      (let ((_hd1849218533_ (##car _e1849118530_))
                            (_tl1849318535_ (##cdr _e1849118530_)))
                        (if (gx#stx-pair? _tl1849318535_)
                            (let ((_e1849418538_ (gx#stx-e _tl1849318535_)))
                              (let ((_hd1849518541_ (##car _e1849418538_))
                                    (_tl1849618543_ (##cdr _e1849418538_)))
                                (if (gx#stx-pair? _hd1849518541_)
                                    (let ((_e1849718546_
                                           (gx#stx-e _hd1849518541_)))
                                      (let ((_hd1849818549_
                                             (##car _e1849718546_))
                                            (_tl1849918551_
                                             (##cdr _e1849718546_)))
                                        (if (gx#identifier? _hd1849818549_)
                                            (if (gx#stx-eq?
                                                 '%#call
                                                 _hd1849818549_)
                                                (if (gx#stx-pair?
                                                     _tl1849918551_)
                                                    (let ((_e1850018554_
                                                           (gx#stx-e
                                                            _tl1849918551_)))
                                                      (let ((_hd1850118557_
                                                             (##car _e1850018554_))
                                                            (_tl1850218559_
                                                             (##cdr _e1850018554_)))
                                                        (if (gx#stx-pair?
                                                             _hd1850118557_)
                                                            (let ((_e1850318562_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1850118557_)))
                      (let ((_hd1850418565_ (##car _e1850318562_))
                            (_tl1850518567_ (##cdr _e1850318562_)))
                        (if (gx#identifier? _hd1850418565_)
                            (if (gx#stx-eq? '%#ref _hd1850418565_)
                                (if (gx#stx-pair? _tl1850518567_)
                                    (let ((_e1850618570_
                                           (gx#stx-e _tl1850518567_)))
                                      (let ((_hd1850718573_
                                             (##car _e1850618570_))
                                            (_tl1850818575_
                                             (##cdr _e1850618570_)))
                                        (if (gx#stx-null? _tl1850818575_)
                                            (if (gx#stx-pair? _tl1850218559_)
                                                (let ((_e1850918578_
                                                       (gx#stx-e
                                                        _tl1850218559_)))
                                                  (let ((_hd1851018581_
                                                         (##car _e1850918578_))
                                                        (_tl1851118583_
                                                         (##cdr _e1850918578_)))
                                                    (if (gx#stx-pair?
                                                         _hd1851018581_)
                                                        (let ((_e1851218586_
                                                               (gx#stx-e
                                                                _hd1851018581_)))
                                                          (let ((_hd1851318589_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1851218586_))
                        (_tl1851418591_ (##cdr _e1851218586_)))
                    (if (gx#identifier? _hd1851318589_)
                        (if (gx#stx-eq? '%#ref _hd1851318589_)
                            (if (gx#stx-pair? _tl1851418591_)
                                (let ((_e1851518594_
                                       (gx#stx-e _tl1851418591_)))
                                  (let ((_hd1851618597_ (##car _e1851518594_))
                                        (_tl1851718599_ (##cdr _e1851518594_)))
                                    (if (gx#stx-null? _tl1851718599_)
                                        (if (gx#stx-pair? _tl1851118583_)
                                            (let ((_e1851818602_
                                                   (gx#stx-e _tl1851118583_)))
                                              (let ((_hd1851918605_
                                                     (##car _e1851818602_))
                                                    (_tl1852018607_
                                                     (##cdr _e1851818602_)))
                                                (if (gx#stx-null?
                                                     _tl1852018607_)
                                                    (if (gx#stx-null?
                                                         _tl1849618543_)
                                                        ((lambda (_L18610_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L18611_
                          _L18612_)
                   (gxc#generate-runtime-binding-id _L18610_))
                 _hd1851618597_
                 _hd1850718573_
                 _hd1849218533_)
                (_g1840118525_ _g1840218528_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1840118525_
                                                     _g1840218528_))))
                                            (_g1840118525_ _g1840218528_))
                                        (_g1840118525_ _g1840218528_))))
                                (_g1840118525_ _g1840218528_))
                            (_g1840118525_ _g1840218528_))
                        (_g1840118525_ _g1840218528_))))
                (_g1840118525_ _g1840218528_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1840118525_ _g1840218528_))
                                            (_g1840118525_ _g1840218528_))))
                                    (_g1840118525_ _g1840218528_))
                                (_g1840118525_ _g1840218528_))
                            (_g1840118525_ _g1840218528_))))
                    (_g1840118525_ _g1840218528_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1840118525_
                                                     _g1840218528_))
                                                (_g1840118525_ _g1840218528_))
                                            (_g1840118525_ _g1840218528_))))
                                    (_g1840118525_ _g1840218528_))))
                            (_g1840118525_ _g1840218528_))))
                    (_g1840118525_ _g1840218528_))))
             (_g1839918778_
              (lambda (_g1840218645_)
                (if (gx#stx-pair? _g1840218645_)
                    (let ((_e1845218647_ (gx#stx-e _g1840218645_)))
                      (let ((_hd1845318650_ (##car _e1845218647_))
                            (_tl1845418652_ (##cdr _e1845218647_)))
                        (if (gx#stx-pair/null? _hd1845318650_)
                            (if (fx>= (gx#stx-length _hd1845318650_) '0)
                                (let ((_g20875_
                                       (gx#syntax-split-splice
                                        _hd1845318650_
                                        '0)))
                                  (begin
                                    (let ((_g20876_ (values-count _g20875_)))
                                      (if (not (fx= _g20876_ 2))
                                          (error "Context expects 2 values"
                                                 _g20876_)))
                                    (let ((_target1845518655_
                                           (values-ref _g20875_ 0))
                                          (_tl1845718657_
                                           (values-ref _g20875_ 1)))
                                      (letrec ((_loop1845818660_
                                                (lambda (_hd1845618663_
                                                         _arg1846218665_)
                                                  (if (gx#stx-pair?
                                                       _hd1845618663_)
                                                      (let ((_e1845918668_
                                                             (gx#stx-e
                                                              _hd1845618663_)))
                                                        (let ((_lp-hd1846018671_
                                                               (##car _e1845918668_))
                                                              (_lp-tl1846118673_
                                                               (##cdr _e1845918668_)))
                                                          (_loop1845818660_
                                                           _lp-tl1846118673_
                                                           (cons _lp-hd1846018671_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _arg1846218665_))))
              (let ((_arg1846318676_ (reverse _arg1846218665_)))
                (if (gx#stx-pair? _tl1845418652_)
                    (let ((_e1846418679_ (gx#stx-e _tl1845418652_)))
                      (let ((_hd1846518682_ (##car _e1846418679_))
                            (_tl1846618684_ (##cdr _e1846418679_)))
                        (if (gx#stx-pair? _hd1846518682_)
                            (let ((_e1846718687_ (gx#stx-e _hd1846518682_)))
                              (let ((_hd1846818690_ (##car _e1846718687_))
                                    (_tl1846918692_ (##cdr _e1846718687_)))
                                (if (gx#identifier? _hd1846818690_)
                                    (if (gx#stx-eq? '%#call _hd1846818690_)
                                        (if (gx#stx-pair? _tl1846918692_)
                                            (let ((_e1847018695_
                                                   (gx#stx-e _tl1846918692_)))
                                              (let ((_hd1847118698_
                                                     (##car _e1847018695_))
                                                    (_tl1847218700_
                                                     (##cdr _e1847018695_)))
                                                (if (gx#stx-pair?
                                                     _hd1847118698_)
                                                    (let ((_e1847318703_
                                                           (gx#stx-e
                                                            _hd1847118698_)))
                                                      (let ((_hd1847418706_
                                                             (##car _e1847318703_))
                                                            (_tl1847518708_
                                                             (##cdr _e1847318703_)))
                                                        (if (gx#identifier?
                                                             _hd1847418706_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd1847418706_)
                        (if (gx#stx-pair? _tl1847518708_)
                            (let ((_e1847618711_ (gx#stx-e _tl1847518708_)))
                              (let ((_hd1847718714_ (##car _e1847618711_))
                                    (_tl1847818716_ (##cdr _e1847618711_)))
                                (if (gx#stx-null? _tl1847818716_)
                                    (if (gx#stx-pair? _tl1847218700_)
                                        (let ((_e1847918719_
                                               (gx#stx-e _tl1847218700_)))
                                          (let ((_hd1848018722_
                                                 (##car _e1847918719_))
                                                (_tl1848118724_
                                                 (##cdr _e1847918719_)))
                                            (if (gx#stx-pair? _hd1848018722_)
                                                (let ((_e1848218727_
                                                       (gx#stx-e
                                                        _hd1848018722_)))
                                                  (let ((_hd1848318730_
                                                         (##car _e1848218727_))
                                                        (_tl1848418732_
                                                         (##cdr _e1848218727_)))
                                                    (if (gx#identifier?
                                                         _hd1848318730_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd1848318730_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1848418732_)
                        (let ((_e1848518735_ (gx#stx-e _tl1848418732_)))
                          (let ((_hd1848618738_ (##car _e1848518735_))
                                (_tl1848718740_ (##cdr _e1848518735_)))
                            (if (gx#stx-null? _tl1848718740_)
                                (if (gx#stx-null? _tl1846618684_)
                                    ((lambda (_L18743_
                                              _L18744_
                                              _L18745_
                                              _L18746_)
                                       (gxc#generate-runtime-binding-id
                                        _L18743_))
                                     _hd1848618738_
                                     _hd1847718714_
                                     _tl1845718657_
                                     _arg1846318676_)
                                    (_g1840018642_ _g1840218645_))
                                (_g1840018642_ _g1840218645_))))
                        (_g1840018642_ _g1840218645_))
                    (_g1840018642_ _g1840218645_))
                (_g1840018642_ _g1840218645_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1840018642_
                                                 _g1840218645_))))
                                        (_g1840018642_ _g1840218645_))
                                    (_g1840018642_ _g1840218645_))))
                            (_g1840018642_ _g1840218645_))
                        (_g1840018642_ _g1840218645_))
                    (_g1840018642_ _g1840218645_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1840018642_
                                                     _g1840218645_))))
                                            (_g1840018642_ _g1840218645_))
                                        (_g1840018642_ _g1840218645_))
                                    (_g1840018642_ _g1840218645_))))
                            (_g1840018642_ _g1840218645_))))
                    (_g1840018642_ _g1840218645_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop1845818660_
                                         _target1845518655_
                                         '())))))
                                (_g1840018642_ _g1840218645_))
                            (_g1840018642_ _g1840218645_))))
                    (_g1840018642_ _g1840218645_))))
             (_g1839818926_
              (lambda (_g1840218781_)
                (if (gx#stx-pair? _g1840218781_)
                    (let ((_e1840618783_ (gx#stx-e _g1840218781_)))
                      (let ((_hd1840718786_ (##car _e1840618783_))
                            (_tl1840818788_ (##cdr _e1840618783_)))
                        (if (gx#stx-pair/null? _hd1840718786_)
                            (if (fx>= (gx#stx-length _hd1840718786_) '0)
                                (let ((_g20877_
                                       (gx#syntax-split-splice
                                        _hd1840718786_
                                        '0)))
                                  (begin
                                    (let ((_g20878_ (values-count _g20877_)))
                                      (if (not (fx= _g20878_ 2))
                                          (error "Context expects 2 values"
                                                 _g20878_)))
                                    (let ((_target1840918791_
                                           (values-ref _g20877_ 0))
                                          (_tl1841118793_
                                           (values-ref _g20877_ 1)))
                                      (if (gx#stx-null? _tl1841118793_)
                                          (letrec ((_loop1841218796_
                                                    (lambda (_hd1841018799_
                                                             _arg1841618801_)
                                                      (if (gx#stx-pair?
                                                           _hd1841018799_)
                                                          (let ((_e1841318804_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd1841018799_)))
                    (let ((_lp-hd1841418807_ (##car _e1841318804_))
                          (_lp-tl1841518809_ (##cdr _e1841318804_)))
                      (_loop1841218796_
                       _lp-tl1841518809_
                       (cons _lp-hd1841418807_ _arg1841618801_))))
                  (let ((_arg1841718812_ (reverse _arg1841618801_)))
                    (if (gx#stx-pair? _tl1840818788_)
                        (let ((_e1841818815_ (gx#stx-e _tl1840818788_)))
                          (let ((_hd1841918818_ (##car _e1841818815_))
                                (_tl1842018820_ (##cdr _e1841818815_)))
                            (if (gx#stx-pair? _hd1841918818_)
                                (let ((_e1842118823_
                                       (gx#stx-e _hd1841918818_)))
                                  (let ((_hd1842218826_ (##car _e1842118823_))
                                        (_tl1842318828_ (##cdr _e1842118823_)))
                                    (if (gx#identifier? _hd1842218826_)
                                        (if (gx#stx-eq? '%#call _hd1842218826_)
                                            (if (gx#stx-pair? _tl1842318828_)
                                                (let ((_e1842418831_
                                                       (gx#stx-e
                                                        _tl1842318828_)))
                                                  (let ((_hd1842518834_
                                                         (##car _e1842418831_))
                                                        (_tl1842618836_
                                                         (##cdr _e1842418831_)))
                                                    (if (gx#stx-pair?
                                                         _hd1842518834_)
                                                        (let ((_e1842718839_
                                                               (gx#stx-e
                                                                _hd1842518834_)))
                                                          (let ((_hd1842818842_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1842718839_))
                        (_tl1842918844_ (##cdr _e1842718839_)))
                    (if (gx#identifier? _hd1842818842_)
                        (if (gx#stx-eq? '%#ref _hd1842818842_)
                            (if (gx#stx-pair? _tl1842918844_)
                                (let ((_e1843018847_
                                       (gx#stx-e _tl1842918844_)))
                                  (let ((_hd1843118850_ (##car _e1843018847_))
                                        (_tl1843218852_ (##cdr _e1843018847_)))
                                    (if (gx#stx-null? _tl1843218852_)
                                        (if (gx#stx-pair/null? _tl1842618836_)
                                            (if (fx>= (gx#stx-length
                                                       _tl1842618836_)
                                                      '0)
                                                (let ((_g20879_
                                                       (gx#syntax-split-splice
                                                        _tl1842618836_
                                                        '0)))
                                                  (begin
                                                    (let ((_g20880_
                                                           (values-count
                                                            _g20879_)))
                                                      (if (not (fx= _g20880_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g20880_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1843318855_
                                                           (values-ref
                                                            _g20879_
                                                            0))
                                                          (_tl1843518857_
                                                           (values-ref
                                                            _g20879_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl1843518857_)
                                                          (letrec ((_loop1843618860_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1843418863_ _xarg1844018865_)
                              (if (gx#stx-pair? _hd1843418863_)
                                  (let ((_e1843718868_
                                         (gx#stx-e _hd1843418863_)))
                                    (let ((_lp-hd1843818871_
                                           (##car _e1843718868_))
                                          (_lp-tl1843918873_
                                           (##cdr _e1843718868_)))
                                      (if (gx#stx-pair? _lp-hd1843818871_)
                                          (let ((_e1844218876_
                                                 (gx#stx-e _lp-hd1843818871_)))
                                            (let ((_hd1844318879_
                                                   (##car _e1844218876_))
                                                  (_tl1844418881_
                                                   (##cdr _e1844218876_)))
                                              (if (gx#identifier?
                                                   _hd1844318879_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd1844318879_)
                                                      (if (gx#stx-pair?
                                                           _tl1844418881_)
                                                          (let ((_e1844518884_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1844418881_)))
                    (let ((_hd1844618887_ (##car _e1844518884_))
                          (_tl1844718889_ (##cdr _e1844518884_)))
                      (if (gx#stx-null? _tl1844718889_)
                          (_loop1843618860_
                           _lp-tl1843918873_
                           (cons _hd1844618887_ _xarg1844018865_))
                          (_g1839918778_ _g1840218781_))))
                  (_g1839918778_ _g1840218781_))
              (_g1839918778_ _g1840218781_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1839918778_
                                                   _g1840218781_))))
                                          (_g1839918778_ _g1840218781_))))
                                  (let ((_xarg1844118892_
                                         (reverse _xarg1844018865_)))
                                    (if (gx#stx-null? _tl1842018820_)
                                        ((lambda (_L18895_ _L18896_ _L18897_)
                                           (gxc#generate-runtime-binding-id
                                            _L18896_))
                                         _xarg1844118892_
                                         _hd1843118850_
                                         _arg1841718812_)
                                        (_g1839918778_ _g1840218781_)))))))
                    (_loop1843618860_ _target1843318855_ '()))
                  (_g1839918778_ _g1840218781_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1839918778_ _g1840218781_))
                                            (_g1839918778_ _g1840218781_))
                                        (_g1839918778_ _g1840218781_))))
                                (_g1839918778_ _g1840218781_))
                            (_g1839918778_ _g1840218781_))
                        (_g1839918778_ _g1840218781_))))
                (_g1839918778_ _g1840218781_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1839918778_ _g1840218781_))
                                            (_g1839918778_ _g1840218781_))
                                        (_g1839918778_ _g1840218781_))))
                                (_g1839918778_ _g1840218781_))))
                        (_g1839918778_ _g1840218781_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1841218796_
                                             _target1840918791_
                                             '()))
                                          (_g1839918778_ _g1840218781_)))))
                                (_g1839918778_ _g1840218781_))
                            (_g1839918778_ _g1840218781_))))
                    (_g1839918778_ _g1840218781_)))))
        (_g1839818926_ _form18397_))))
  (define gxc#lambda-form-arity
    (lambda (_form18201_)
      (let* ((_g1820318217_
              (lambda (_g1820418214_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1820418214_)))
             (_g1820218394_
              (lambda (_g1820418220_)
                (if (gx#stx-pair? _g1820418220_)
                    (let ((_e1820718222_ (gx#stx-e _g1820418220_)))
                      (let ((_hd1820818225_ (##car _e1820718222_))
                            (_tl1820918227_ (##cdr _e1820718222_)))
                        (if (gx#stx-pair? _tl1820918227_)
                            (let ((_e1821018230_ (gx#stx-e _tl1820918227_)))
                              (let ((_hd1821118233_ (##car _e1821018230_))
                                    (_tl1821218235_ (##cdr _e1821018230_)))
                                (if (gx#stx-null? _tl1821218235_)
                                    ((lambda (_L18238_ _L18239_)
                                       (let* ((_g1825418282_
                                               (lambda (_g1825518279_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1825518279_)))
                                              (_g1825318295_
                                               (lambda (_g1825518285_)
                                                 ((lambda (_L18287_)
                                                    (cons '0 '()))
                                                  _g1825518285_)))
                                              (_g1825218344_
                                               (lambda (_g1825518298_)
                                                 (if (gx#stx-pair/null?
                                                      _g1825518298_)
                                                     (if (fx>= (gx#stx-length
                                                                _g1825518298_)
                                                               '0)
                                                         (let ((_g20881_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1825518298_
                         '0)))
                   (begin
                     (let ((_g20882_ (values-count _g20881_)))
                       (if (not (fx= _g20882_ 2))
                           (error "Context expects 2 values" _g20882_)))
                     (let ((_target1826818300_ (values-ref _g20881_ 0))
                           (_tl1827018302_ (values-ref _g20881_ 1)))
                       (letrec ((_loop1827118305_
                                 (lambda (_hd1826918308_ _arg1827518310_)
                                   (if (gx#stx-pair? _hd1826918308_)
                                       (let ((_e1827218313_
                                              (gx#stx-e _hd1826918308_)))
                                         (let ((_lp-hd1827318316_
                                                (##car _e1827218313_))
                                               (_lp-tl1827418318_
                                                (##cdr _e1827218313_)))
                                           (_loop1827118305_
                                            _lp-tl1827418318_
                                            (cons _lp-hd1827318316_
                                                  _arg1827518310_))))
                                       (let ((_arg1827618321_
                                              (reverse _arg1827518310_)))
                                         ((lambda (_L18324_ _L18325_)
                                            (cons (length (begin
                                                            '#!void
                                                            (foldr1 (lambda (_g1833618339_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1833718341_)
                              (cons _g1833618339_ _g1833718341_))
                            '()
                            _L18325_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                          _tl1827018302_
                                          _arg1827618321_))))))
                         (_loop1827118305_ _target1826818300_ '())))))
                 (_g1825318295_ _g1825518298_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1825318295_
                                                      _g1825518298_))))
                                              (_g1825118391_
                                               (lambda (_g1825518347_)
                                                 (if (gx#stx-pair/null?
                                                      _g1825518347_)
                                                     (if (fx>= (gx#stx-length
                                                                _g1825518347_)
                                                               '0)
                                                         (let ((_g20883_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1825518347_
                         '0)))
                   (begin
                     (let ((_g20884_ (values-count _g20883_)))
                       (if (not (fx= _g20884_ 2))
                           (error "Context expects 2 values" _g20884_)))
                     (let ((_target1825718349_ (values-ref _g20883_ 0))
                           (_tl1825918351_ (values-ref _g20883_ 1)))
                       (if (gx#stx-null? _tl1825918351_)
                           (letrec ((_loop1826018354_
                                     (lambda (_hd1825818357_ _arg1826418359_)
                                       (if (gx#stx-pair? _hd1825818357_)
                                           (let ((_e1826118362_
                                                  (gx#stx-e _hd1825818357_)))
                                             (let ((_lp-hd1826218365_
                                                    (##car _e1826118362_))
                                                   (_lp-tl1826318367_
                                                    (##cdr _e1826118362_)))
                                               (_loop1826018354_
                                                _lp-tl1826318367_
                                                (cons _lp-hd1826218365_
                                                      _arg1826418359_))))
                                           (let ((_arg1826518370_
                                                  (reverse _arg1826418359_)))
                                             ((lambda (_L18373_)
                                                (length (begin
                                                          '#!void
                                                          (foldr1 (lambda (_g1838318386_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g1838418388_)
                            (cons _g1838318386_ _g1838418388_))
                          '()
                          _L18373_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _arg1826518370_))))))
                             (_loop1826018354_ _target1825718349_ '()))
                           (_g1825218344_ _g1825518347_)))))
                 (_g1825218344_ _g1825518347_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1825218344_
                                                      _g1825518347_)))))
                                         (_g1825118391_ _L18239_)))
                                     _hd1821118233_
                                     _hd1820818225_)
                                    (_g1820318217_ _g1820418220_))))
                            (_g1820318217_ _g1820418220_))))
                    (_g1820318217_ _g1820418220_)))))
        (_g1820218394_ _form18201_))))
  (define gxc#lambda-expr?
    (lambda (_expr18154_)
      (let* ((_g1815718167_
              (lambda (_g1815818164_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1815818164_)))
             (_g1815618174_ (lambda (_g1815818170_) ((lambda () '#f))))
             (_g1815518198_
              (lambda (_g1815818177_)
                (if (gx#stx-pair? _g1815818177_)
                    (let ((_e1816018179_ (gx#stx-e _g1815818177_)))
                      (let ((_hd1816118182_ (##car _e1816018179_))
                            (_tl1816218184_ (##cdr _e1816018179_)))
                        (if (gx#identifier? _hd1816118182_)
                            (if (gx#stx-eq? '%#lambda _hd1816118182_)
                                ((lambda (_L18187_) '#t) _tl1816218184_)
                                (_g1815618174_ _g1815818177_))
                            (_g1815618174_ _g1815818177_))))
                    (_g1815618174_ _g1815818177_)))))
        (_g1815518198_ _expr18154_))))
  (define gxc#case-lambda-expr?
    (lambda (_expr18107_)
      (let* ((_g1811018120_
              (lambda (_g1811118117_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1811118117_)))
             (_g1810918127_ (lambda (_g1811118123_) ((lambda () '#f))))
             (_g1810818151_
              (lambda (_g1811118130_)
                (if (gx#stx-pair? _g1811118130_)
                    (let ((_e1811318132_ (gx#stx-e _g1811118130_)))
                      (let ((_hd1811418135_ (##car _e1811318132_))
                            (_tl1811518137_ (##cdr _e1811318132_)))
                        (if (gx#identifier? _hd1811418135_)
                            (if (gx#stx-eq? '%#case-lambda _hd1811418135_)
                                ((lambda (_L18140_) '#t) _tl1811518137_)
                                (_g1810918127_ _g1811118130_))
                            (_g1810918127_ _g1811118130_))))
                    (_g1810918127_ _g1811118130_)))))
        (_g1810818151_ _expr18107_))))
  (define gxc#opt-lambda-expr?
    (lambda (_expr17976_)
      (let* ((_g1797918009_
              (lambda (_g1798018006_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1798018006_)))
             (_g1797818016_ (lambda (_g1798018012_) ((lambda () '#f))))
             (_g1797718104_
              (lambda (_g1798018019_)
                (if (gx#stx-pair? _g1798018019_)
                    (let ((_e1798418021_ (gx#stx-e _g1798018019_)))
                      (let ((_hd1798518024_ (##car _e1798418021_))
                            (_tl1798618026_ (##cdr _e1798418021_)))
                        (if (gx#identifier? _hd1798518024_)
                            (if (gx#stx-eq? '%#let-values _hd1798518024_)
                                (if (gx#stx-pair? _tl1798618026_)
                                    (let ((_e1798718029_
                                           (gx#stx-e _tl1798618026_)))
                                      (let ((_hd1798818032_
                                             (##car _e1798718029_))
                                            (_tl1798918034_
                                             (##cdr _e1798718029_)))
                                        (if (gx#stx-pair? _hd1798818032_)
                                            (let ((_e1799018037_
                                                   (gx#stx-e _hd1798818032_)))
                                              (let ((_hd1799118040_
                                                     (##car _e1799018037_))
                                                    (_tl1799218042_
                                                     (##cdr _e1799018037_)))
                                                (if (gx#stx-pair?
                                                     _hd1799118040_)
                                                    (let ((_e1799318045_
                                                           (gx#stx-e
                                                            _hd1799118040_)))
                                                      (let ((_hd1799418048_
                                                             (##car _e1799318045_))
                                                            (_tl1799518050_
                                                             (##cdr _e1799318045_)))
                                                        (if (gx#stx-pair?
                                                             _hd1799418048_)
                                                            (let ((_e1799618053_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1799418048_)))
                      (let ((_hd1799718056_ (##car _e1799618053_))
                            (_tl1799818058_ (##cdr _e1799618053_)))
                        (if (gx#stx-null? _tl1799818058_)
                            (if (gx#stx-pair? _tl1799518050_)
                                (let ((_e1799918061_
                                       (gx#stx-e _tl1799518050_)))
                                  (let ((_hd1800018064_ (##car _e1799918061_))
                                        (_tl1800118066_ (##cdr _e1799918061_)))
                                    (if (gx#stx-null? _tl1800118066_)
                                        (if (gx#stx-null? _tl1799218042_)
                                            (if (gx#stx-pair? _tl1798918034_)
                                                (let ((_e1800218069_
                                                       (gx#stx-e
                                                        _tl1798918034_)))
                                                  (let ((_hd1800318072_
                                                         (##car _e1800218069_))
                                                        (_tl1800418074_
                                                         (##cdr _e1800218069_)))
                                                    (if (gx#stx-null?
                                                         _tl1800418074_)
                                                        ((lambda (_L18077_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L18078_
                          _L18079_)
                   (if (gx#identifier? _L18079_)
                       (if (gxc#lambda-expr? _L18078_)
                           (gxc#case-lambda-expr? _L18077_)
                           '#f)
                       '#f))
                 _hd1800318072_
                 _hd1800018064_
                 _hd1799718056_)
                (_g1797818016_ _g1798018019_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1797818016_ _g1798018019_))
                                            (_g1797818016_ _g1798018019_))
                                        (_g1797818016_ _g1798018019_))))
                                (_g1797818016_ _g1798018019_))
                            (_g1797818016_ _g1798018019_))))
                    (_g1797818016_ _g1798018019_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1797818016_
                                                     _g1798018019_))))
                                            (_g1797818016_ _g1798018019_))))
                                    (_g1797818016_ _g1798018019_))
                                (_g1797818016_ _g1798018019_))
                            (_g1797818016_ _g1798018019_))))
                    (_g1797818016_ _g1798018019_)))))
        (_g1797718104_ _expr17976_))))
  (begin
    (define gxc#lift-case-lambda-clauses__opt-lambda17716
      (lambda (_stx17718_ _id17719_ _clauses17720_ _gensym?17721_)
        (let _lp17723_ ((_rest17725_ _clauses17720_)
                        (_ids17726_ '())
                        (_impls17727_ '())
                        (_clauses17728_ '()))
          (let* ((_rest1772917737_ _rest17725_)
                 (_E1773217741_
                  (lambda () (error '"No clause matching" _rest1772917737_)))
                 (_else1773117745_
                  (lambda ()
                    (values (reverse _ids17726_)
                            (reverse _impls17727_)
                            (reverse _clauses17728_))))
                 (_K1773317950_
                  (lambda (_rest17748_ _clause17749_)
                    (if (gxc#dispatch-lambda-form? _clause17749_)
                        (_lp17723_
                         _rest17748_
                         _ids17726_
                         _impls17727_
                         (cons _clause17749_ _clauses17728_))
                        (let* ((_g1775117762_
                                (lambda (_g1775217759_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g1775217759_)))
                               (_g1775017947_
                                (lambda (_g1775217765_)
                                  (if (gx#stx-pair? _g1775217765_)
                                      (let ((_e1775517767_
                                             (gx#stx-e _g1775217765_)))
                                        (let ((_hd1775617770_
                                               (##car _e1775517767_))
                                              (_tl1775717772_
                                               (##cdr _e1775517767_)))
                                          ((lambda (_L17775_ _L17776_)
                                             (let* ((_id17793_
                                                     (make-symbol
                                                      (gx#stx-e _id17719_)
                                                      '"__"
                                                      (length _clauses17728_)
                                                      (if _gensym?17721_
                                                          (gensym '__)
                                                          '"")))
                                                    (_id17795_
                                                     (gx#core-quote-syntax__1
                                                      _id17793_
                                                      (gx#stx-source
                                                       _stx17718_)))
                                                    (_impl17797_
                                                     (gxc#xform-wrap-source
                                                      (cons (gx#datum->syntax__0
                                                             '#f
                                                             '%#lambda)
                                                            (cons _L17776_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L17775_))
              _stx17718_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause17944_
                                                     (let* ((_g1780117829_
                                                             (lambda (_g1780217826_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1780217826_)))
                                                            (_g1780017845_
                                                             (lambda (_g1780217832_)
                                                               ((lambda (_L17834_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L17776_
                                (cons (gxc#xform-wrap-source
                                       (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'apply '()))
                                                   (cons (cons '%#ref
                                                               (cons _id17795_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                             (cons _L17834_ '()))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _stx17718_)
                                      '())))
                        _g1780217832_)))
                    (_g1779917894_
                     (lambda (_g1780217848_)
                       (if (gx#stx-pair/null? _g1780217848_)
                           (if (fx>= (gx#stx-length _g1780217848_) '0)
                               (let ((_g20885_
                                      (gx#syntax-split-splice
                                       _g1780217848_
                                       '0)))
                                 (begin
                                   (let ((_g20886_ (values-count _g20885_)))
                                     (if (not (fx= _g20886_ 2))
                                         (error "Context expects 2 values"
                                                _g20886_)))
                                   (let ((_target1781517850_
                                          (values-ref _g20885_ 0))
                                         (_tl1781717852_
                                          (values-ref _g20885_ 1)))
                                     (letrec ((_loop1781817855_
                                               (lambda (_hd1781617858_
                                                        _arg1782217860_)
                                                 (if (gx#stx-pair?
                                                      _hd1781617858_)
                                                     (let ((_e1781917863_
                                                            (gx#stx-e
                                                             _hd1781617858_)))
                                                       (let ((_lp-hd1782017866_
                                                              (##car _e1781917863_))
                                                             (_lp-tl1782117868_
                                                              (##cdr _e1781917863_)))
                                                         (_loop1781817855_
                                                          _lp-tl1782117868_
                                                          (cons _lp-hd1782017866_
                                                                _arg1782217860_))))
                                                     (let ((_arg1782317871_
                                                            (reverse _arg1782217860_)))
                                                       ((lambda (_L17874_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L17875_)
                  (cons _L17776_
                        (cons (gxc#xform-wrap-source
                               (cons '%#call
                                     (cons (cons '%#ref (cons 'apply '()))
                                           (cons (cons '%#ref
                                                       (cons _id17795_ '()))
                                                 (foldr1 cons
                                                         (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '%#ref)
                             (cons _L17874_ '()))
                       '())
                 (begin
                   '#!void
                   (foldr1 (lambda (_g1788617889_ _g1788717891_)
                             (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                         (cons _g1788617889_ '()))
                                   _g1788717891_))
                           '()
                           _L17875_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _stx17718_)
                              '())))
                _tl1781717852_
                _arg1782317871_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_loop1781817855_
                                        _target1781517850_
                                        '())))))
                               (_g1780017845_ _g1780217848_))
                           (_g1780017845_ _g1780217848_))))
                    (_g1779817941_
                     (lambda (_g1780217897_)
                       (if (gx#stx-pair/null? _g1780217897_)
                           (if (fx>= (gx#stx-length _g1780217897_) '0)
                               (let ((_g20887_
                                      (gx#syntax-split-splice
                                       _g1780217897_
                                       '0)))
                                 (begin
                                   (let ((_g20888_ (values-count _g20887_)))
                                     (if (not (fx= _g20888_ 2))
                                         (error "Context expects 2 values"
                                                _g20888_)))
                                   (let ((_target1780417899_
                                          (values-ref _g20887_ 0))
                                         (_tl1780617901_
                                          (values-ref _g20887_ 1)))
                                     (if (gx#stx-null? _tl1780617901_)
                                         (letrec ((_loop1780717904_
                                                   (lambda (_hd1780517907_
                                                            _arg1781117909_)
                                                     (if (gx#stx-pair?
                                                          _hd1780517907_)
                                                         (let ((_e1780817912_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1780517907_)))
                   (let ((_lp-hd1780917915_ (##car _e1780817912_))
                         (_lp-tl1781017917_ (##cdr _e1780817912_)))
                     (_loop1780717904_
                      _lp-tl1781017917_
                      (cons _lp-hd1780917915_ _arg1781117909_))))
                 (let ((_arg1781217920_ (reverse _arg1781117909_)))
                   ((lambda (_L17923_)
                      (cons _L17776_
                            (cons (gxc#xform-wrap-source
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _id17795_ '()))
                                               (begin
                                                 '#!void
                                                 (foldr1 (lambda (_g1793317936_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1793417938_)
                   (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                               (cons _g1793317936_ '()))
                         _g1793417938_))
                 '()
                 _L17923_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _stx17718_)
                                  '())))
                    _arg1781217920_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop1780717904_
                                            _target1780417899_
                                            '()))
                                         (_g1779917894_ _g1780217897_)))))
                               (_g1779917894_ _g1780217897_))
                           (_g1779917894_ _g1780217897_)))))
               (_g1779817941_ _L17776_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_lp17723_
                                                _rest17748_
                                                (cons _id17795_ _ids17726_)
                                                (cons _impl17797_ _impls17727_)
                                                (cons _clause17944_
                                                      _clauses17728_))))
                                           _tl1775717772_
                                           _hd1775617770_)))
                                      (_g1775117762_ _g1775217765_)))))
                          (_g1775017947_ _clause17749_))))))
            (if (##pair? _rest1772917737_)
                (let ((_hd1773417953_ (##car _rest1772917737_))
                      (_tl1773517955_ (##cdr _rest1772917737_)))
                  (let* ((_clause17958_ _hd1773417953_)
                         (_rest17960_ _tl1773517955_))
                    (_K1773317950_ _rest17960_ _clause17958_)))
                (_else1773117745_))))))
    (begin
      (define gxc#lift-case-lambda-clauses__0
        (lambda (_stx17965_ _id17966_ _clauses17967_)
          (let ((_gensym?17969_ '#f))
            (gxc#lift-case-lambda-clauses__opt-lambda17716
             _stx17965_
             _id17966_
             _clauses17967_
             _gensym?17969_))))
      (define gxc#lift-case-lambda-clauses
        (lambda _g20890_
          (let ((_g20889_ (length _g20890_)))
            (cond ((fx= _g20889_ 3)
                   (apply gxc#lift-case-lambda-clauses__0 _g20890_))
                  ((fx= _g20889_ 4)
                   (apply gxc#lift-case-lambda-clauses__opt-lambda17716
                          _g20890_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#lift-case-lambda-clauses
                    _g20890_))))))))
  (define gxc#lift-top-lambda-define-values%
    (lambda (_stx17307_)
      (letrec ((_case-lambda-clause-def17309_
                (lambda (_id17714_ _impl17715_)
                  (gxc#xform-wrap-source
                   (cons '%#define-values
                         (cons (cons _id17714_ '())
                               (cons (gxc#compile-e _impl17715_) '())))
                   _stx17307_))))
        (let* ((_g1731317358_
                (lambda (_g1731417355_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1731417355_)))
               (_g1731217404_
                (lambda (_g1731417361_)
                  (if (gx#stx-pair? _g1731417361_)
                      (let ((_e1734517363_ (gx#stx-e _g1731417361_)))
                        (let ((_hd1734617366_ (##car _e1734517363_))
                              (_tl1734717368_ (##cdr _e1734517363_)))
                          (if (gx#stx-pair? _tl1734717368_)
                              (let ((_e1734817371_ (gx#stx-e _tl1734717368_)))
                                (let ((_hd1734917374_ (##car _e1734817371_))
                                      (_tl1735017376_ (##cdr _e1734817371_)))
                                  (if (gx#stx-pair? _tl1735017376_)
                                      (let ((_e1735117379_
                                             (gx#stx-e _tl1735017376_)))
                                        (let ((_hd1735217382_
                                               (##car _e1735117379_))
                                              (_tl1735317384_
                                               (##cdr _e1735117379_)))
                                          (if (gx#stx-null? _tl1735317384_)
                                              ((lambda (_L17387_ _L17388_)
                                                 (gxc#xform-wrap-source
                                                  (cons '%#define-values
                                                        (cons _L17388_
                                                              (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L17387_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx17307_))
                                               _hd1735217382_
                                               _hd1734917374_)
                                              (_g1731317358_ _g1731417361_))))
                                      (_g1731317358_ _g1731417361_))))
                              (_g1731317358_ _g1731417361_))))
                      (_g1731317358_ _g1731417361_))))
               (_g1731117586_
                (lambda (_g1731417407_)
                  (if (gx#stx-pair? _g1731417407_)
                      (let ((_e1733117409_ (gx#stx-e _g1731417407_)))
                        (let ((_hd1733217412_ (##car _e1733117409_))
                              (_tl1733317414_ (##cdr _e1733117409_)))
                          (if (gx#stx-pair? _tl1733317414_)
                              (let ((_e1733417417_ (gx#stx-e _tl1733317414_)))
                                (let ((_hd1733517420_ (##car _e1733417417_))
                                      (_tl1733617422_ (##cdr _e1733417417_)))
                                  (if (gx#stx-pair? _hd1733517420_)
                                      (let ((_e1733717425_
                                             (gx#stx-e _hd1733517420_)))
                                        (let ((_hd1733817428_
                                               (##car _e1733717425_))
                                              (_tl1733917430_
                                               (##cdr _e1733717425_)))
                                          (if (gx#stx-null? _tl1733917430_)
                                              (if (gx#stx-pair? _tl1733617422_)
                                                  (let ((_e1734017433_
                                                         (gx#stx-e
                                                          _tl1733617422_)))
                                                    (let ((_hd1734117436_
                                                           (##car _e1734017433_))
                                                          (_tl1734217438_
                                                           (##cdr _e1734017433_)))
                                                      (if (gx#stx-null?
                                                           _tl1734217438_)
                                                          ((lambda (_L17441_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L17442_)
                     (if (if (gx#identifier? _L17442_)
                             (gxc#opt-lambda-expr? _L17441_)
                             '#f)
                         (let* ((_g1745817488_
                                 (lambda (_g1745917485_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1745917485_)))
                                (_g1745717583_
                                 (lambda (_g1745917491_)
                                   (if (gx#stx-pair? _g1745917491_)
                                       (let ((_e1746317493_
                                              (gx#stx-e _g1745917491_)))
                                         (let ((_hd1746417496_
                                                (##car _e1746317493_))
                                               (_tl1746517498_
                                                (##cdr _e1746317493_)))
                                           (if (gx#stx-pair? _tl1746517498_)
                                               (let ((_e1746617501_
                                                      (gx#stx-e
                                                       _tl1746517498_)))
                                                 (let ((_hd1746717504_
                                                        (##car _e1746617501_))
                                                       (_tl1746817506_
                                                        (##cdr _e1746617501_)))
                                                   (if (gx#stx-pair?
                                                        _hd1746717504_)
                                                       (let ((_e1746917509_
                                                              (gx#stx-e
                                                               _hd1746717504_)))
                                                         (let ((_hd1747017512_
                                                                (##car _e1746917509_))
                                                               (_tl1747117514_
                                                                (##cdr _e1746917509_)))
                                                           (if (gx#stx-pair?
                                                                _hd1747017512_)
                                                               (let ((_e1747217517_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1747017512_)))
                         (let ((_hd1747317520_ (##car _e1747217517_))
                               (_tl1747417522_ (##cdr _e1747217517_)))
                           (if (gx#stx-pair? _hd1747317520_)
                               (let ((_e1747517525_ (gx#stx-e _hd1747317520_)))
                                 (let ((_hd1747617528_ (##car _e1747517525_))
                                       (_tl1747717530_ (##cdr _e1747517525_)))
                                   (if (gx#stx-null? _tl1747717530_)
                                       (if (gx#stx-pair? _tl1747417522_)
                                           (let ((_e1747817533_
                                                  (gx#stx-e _tl1747417522_)))
                                             (let ((_hd1747917536_
                                                    (##car _e1747817533_))
                                                   (_tl1748017538_
                                                    (##cdr _e1747817533_)))
                                               (if (gx#stx-null?
                                                    _tl1748017538_)
                                                   (if (gx#stx-null?
                                                        _tl1747117514_)
                                                       (if (gx#stx-pair?
                                                            _tl1746817506_)
                                                           (let ((_e1748117541_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1746817506_)))
                     (let ((_hd1748217544_ (##car _e1748117541_))
                           (_tl1748317546_ (##cdr _e1748117541_)))
                       (if (gx#stx-null? _tl1748317546_)
                           ((lambda (_L17549_ _L17550_ _L17551_)
                              (let* ((_lambda-id17575_
                                      (make-symbol
                                       (gx#stx-e _L17442_)
                                       '"__"
                                       (gx#stx-e _L17551_)))
                                     (_lambda-id17577_
                                      (gx#core-quote-syntax__1
                                       _lambda-id17575_
                                       (gx#stx-source _stx17307_)))
                                     (_g20891_
                                      (gx#core-bind-runtime!__0
                                       _lambda-id17577_))
                                     (_new-case-lambda-expr17580_
                                      (gxc#apply-expression-subst
                                       _L17549_
                                       _L17551_
                                       _lambda-id17577_)))
                                (begin
                                  (gxc#verbose
                                   '"lift opt-lambda dispatch "
                                   (gxc#generate-runtime-binding-id _L17442_)
                                   '" => "
                                   (gxc#generate-runtime-binding-id
                                    _lambda-id17577_))
                                  (gxc#xform-wrap-source
                                   (cons '%#begin
                                         (cons (gxc#xform-wrap-source
                                                (cons '%#define-values
                                                      (cons (cons _lambda-id17577_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (gxc#compile-e _L17550_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _stx17307_)
                                               (cons (gxc#lift-top-lambda-define-values%
                                                      (gxc#xform-wrap-source
                                                       (cons '%#define-values
                                                             (cons (cons _L17442_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons _new-case-lambda-expr17580_ '())))
               _stx17307_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   _stx17307_))))
                            _hd1748217544_
                            _hd1747917536_
                            _hd1747617528_)
                           (_g1745817488_ _g1745917491_))))
                   (_g1745817488_ _g1745917491_))
               (_g1745817488_ _g1745917491_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1745817488_
                                                    _g1745917491_))))
                                           (_g1745817488_ _g1745917491_))
                                       (_g1745817488_ _g1745917491_))))
                               (_g1745817488_ _g1745917491_))))
                       (_g1745817488_ _g1745917491_))))
               (_g1745817488_ _g1745917491_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1745817488_ _g1745917491_))))
                                       (_g1745817488_ _g1745917491_)))))
                           (_g1745717583_ _L17441_))
                         (_g1731217404_ _g1731417407_)))
                   _hd1734117436_
                   _hd1733817428_)
                  (_g1731217404_ _g1731417407_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1731217404_
                                                   _g1731417407_))
                                              (_g1731217404_ _g1731417407_))))
                                      (_g1731217404_ _g1731417407_))))
                              (_g1731217404_ _g1731417407_))))
                      (_g1731217404_ _g1731417407_))))
               (_g1731017711_
                (lambda (_g1731417589_)
                  (if (gx#stx-pair? _g1731417589_)
                      (let ((_e1731717591_ (gx#stx-e _g1731417589_)))
                        (let ((_hd1731817594_ (##car _e1731717591_))
                              (_tl1731917596_ (##cdr _e1731717591_)))
                          (if (gx#stx-pair? _tl1731917596_)
                              (let ((_e1732017599_ (gx#stx-e _tl1731917596_)))
                                (let ((_hd1732117602_ (##car _e1732017599_))
                                      (_tl1732217604_ (##cdr _e1732017599_)))
                                  (if (gx#stx-pair? _hd1732117602_)
                                      (let ((_e1732317607_
                                             (gx#stx-e _hd1732117602_)))
                                        (let ((_hd1732417610_
                                               (##car _e1732317607_))
                                              (_tl1732517612_
                                               (##cdr _e1732317607_)))
                                          (if (gx#stx-null? _tl1732517612_)
                                              (if (gx#stx-pair? _tl1732217604_)
                                                  (let ((_e1732617615_
                                                         (gx#stx-e
                                                          _tl1732217604_)))
                                                    (let ((_hd1732717618_
                                                           (##car _e1732617615_))
                                                          (_tl1732817620_
                                                           (##cdr _e1732617615_)))
                                                      (if (gx#stx-null?
                                                           _tl1732817620_)
                                                          ((lambda (_L17623_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L17624_)
                     (if (if (gx#identifier? _L17624_)
                             (gxc#case-lambda-expr? _L17623_)
                             '#f)
                         (let* ((_g1764117655_
                                 (lambda (_g1764217652_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1764217652_)))
                                (_g1764017686_
                                 (lambda (_g1764217658_)
                                   (if (gx#stx-pair? _g1764217658_)
                                       (let ((_e1764817660_
                                              (gx#stx-e _g1764217658_)))
                                         (let ((_hd1764917663_
                                                (##car _e1764817660_))
                                               (_tl1765017665_
                                                (##cdr _e1764817660_)))
                                           ((lambda (_L17668_)
                                              (let ((_g20892_
                                                     (gxc#lift-case-lambda-clauses__0
                                                      _stx17307_
                                                      _L17624_
                                                      _L17668_)))
                                                (begin
                                                  (let ((_g20893_
                                                         (values-count
                                                          _g20892_)))
                                                    (if (not (fx= _g20893_ 3))
                                                        (error "Context expects 3 values"
                                                               _g20893_)))
                                                  (let ((_ids17678_
                                                         (values-ref
                                                          _g20892_
                                                          0))
                                                        (_impls17679_
                                                         (values-ref
                                                          _g20892_
                                                          1))
                                                        (_clauses17680_
                                                         (values-ref
                                                          _g20892_
                                                          2)))
                                                    (let* ((_g20894_
                                                            (for-each
                                                             gx#core-bind-runtime!
                                                             _ids17678_))
                                                           (_defs17683_
                                                            (map _case-lambda-clause-def17309_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _ids17678_
                         _impls17679_)))
              (begin
                (gxc#verbose
                 '"lift case-lambda clauses "
                 (gxc#generate-runtime-binding-id _L17624_)
                 '" => "
                 (map gxc#identifier-symbol _ids17678_))
                (gxc#xform-wrap-source
                 (cons '%#begin
                       (foldr1 cons
                               (cons (gxc#xform-wrap-source
                                      (cons '%#define-values
                                            (cons (cons _L17624_ '())
                                                  (cons (gxc#xform-wrap-source
                                                         (cons '%#case-lambda
                                                               _clauses17680_)
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'case-lambda-expr))
                                                        '())))
                                      _stx17307_)
                                     '())
                               _defs17683_))
                 _stx17307_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _tl1765017665_)))
                                       (_g1764117655_ _g1764217658_))))
                                (_g1763917708_
                                 (lambda (_g1764217689_)
                                   (if (gx#stx-pair? _g1764217689_)
                                       (let ((_e1764417691_
                                              (gx#stx-e _g1764217689_)))
                                         (let ((_hd1764517694_
                                                (##car _e1764417691_))
                                               (_tl1764617696_
                                                (##cdr _e1764417691_)))
                                           ((lambda (_L17699_)
                                              (if (andmap1 gxc#dispatch-lambda-form?
                                                           _L17699_)
                                                  _stx17307_
                                                  (_g1764017686_
                                                   _g1764217689_)))
                                            _tl1764617696_)))
                                       (_g1764017686_ _g1764217689_)))))
                           (_g1763917708_ _L17623_))
                         (_g1731117586_ _g1731417589_)))
                   _hd1732717618_
                   _hd1732417610_)
                  (_g1731117586_ _g1731417589_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1731117586_
                                                   _g1731417589_))
                                              (_g1731117586_ _g1731417589_))))
                                      (_g1731117586_ _g1731417589_))))
                              (_g1731117586_ _g1731417589_))))
                      (_g1731117586_ _g1731417589_)))))
          (_g1731017711_ _stx17307_)))))
  (define gxc#lift-top-lambda-let-values%
    (lambda (_stx16730_)
      (letrec* ((_bind-e__opt-lambda17289__2084120842_
                 (lambda (_id17291_ _expr17292_ _compile?17293_)
                   (cons (cons _id17291_ '())
                         (cons (if _compile?17293_
                                   (gxc#compile-e _expr17292_)
                                   _expr17292_)
                               '()))))
                (_bind-e__0__2084320844_
                 (lambda (_id17298_ _expr17299_)
                   (let ((_compile?17301_ '#t))
                     (_bind-e__opt-lambda17289__2084120842_
                      _id17298_
                      _expr17299_
                      _compile?17301_))))
                (_bind-e16732_
                 (lambda _g20896_
                   (let ((_g20895_ (length _g20896_)))
                     (cond ((fx= _g20895_ 2)
                            (apply _bind-e__0__2084320844_ _g20896_))
                           ((fx= _g20895_ 3)
                            (apply _bind-e__opt-lambda17289__2084120842_
                                   _g20896_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g20896_))))))
                (_compile-bindings16733_
                 (lambda (_rest16875_)
                   (let _lp16877_ ((_rest16879_ _rest16875_)
                                   (_lift116880_ '())
                                   (_lift216881_ '())
                                   (_bind16882_ '()))
                     (let* ((_rest1688316891_ _rest16879_)
                            (_E1688616895_
                             (lambda ()
                               (error '"No clause matching" _rest1688316891_)))
                            (_else1688516899_
                             (lambda ()
                               (values (reverse _lift116880_)
                                       (reverse _lift216881_)
                                       (reverse _bind16882_))))
                            (_K1688717278_
                             (lambda (_rest16902_ _hd16903_)
                               (let* ((_g1690716943_
                                       (lambda (_g1690816940_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1690816940_)))
                                      (_g1690616984_
                                       (lambda (_g1690816946_)
                                         (if (gx#stx-pair? _g1690816946_)
                                             (let ((_e1693316948_
                                                    (gx#stx-e _g1690816946_)))
                                               (let ((_hd1693416951_
                                                      (##car _e1693316948_))
                                                     (_tl1693516953_
                                                      (##cdr _e1693316948_)))
                                                 (if (gx#stx-pair?
                                                      _tl1693516953_)
                                                     (let ((_e1693616956_
                                                            (gx#stx-e
                                                             _tl1693516953_)))
                                                       (let ((_hd1693716959_
                                                              (##car _e1693616956_))
                                                             (_tl1693816961_
                                                              (##cdr _e1693616956_)))
                                                         (if (gx#stx-null?
                                                              _tl1693816961_)
                                                             ((lambda (_L16964_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L16965_)
                        (_lp16877_
                         _rest16902_
                         _lift116880_
                         _lift216881_
                         (cons (cons _L16965_
                                     (cons (gxc#compile-e _L16964_) '()))
                               _bind16882_)))
                      _hd1693716959_
                      _hd1693416951_)
                     (_g1690716943_ _g1690816946_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1690716943_
                                                      _g1690816946_))))
                                             (_g1690716943_ _g1690816946_))))
                                      (_g1690517156_
                                       (lambda (_g1690816987_)
                                         (if (gx#stx-pair? _g1690816987_)
                                             (let ((_e1692216989_
                                                    (gx#stx-e _g1690816987_)))
                                               (let ((_hd1692316992_
                                                      (##car _e1692216989_))
                                                     (_tl1692416994_
                                                      (##cdr _e1692216989_)))
                                                 (if (gx#stx-pair?
                                                      _hd1692316992_)
                                                     (let ((_e1692516997_
                                                            (gx#stx-e
                                                             _hd1692316992_)))
                                                       (let ((_hd1692617000_
                                                              (##car _e1692516997_))
                                                             (_tl1692717002_
                                                              (##cdr _e1692516997_)))
                                                         (if (gx#stx-null?
                                                              _tl1692717002_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1692416994_)
                         (let ((_e1692817005_ (gx#stx-e _tl1692416994_)))
                           (let ((_hd1692917008_ (##car _e1692817005_))
                                 (_tl1693017010_ (##cdr _e1692817005_)))
                             (if (gx#stx-null? _tl1693017010_)
                                 ((lambda (_L17013_ _L17014_)
                                    (if (if (gx#identifier? _L17014_)
                                            (gxc#opt-lambda-expr? _L17013_)
                                            '#f)
                                        (let* ((_g1702817058_
                                                (lambda (_g1702917055_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1702917055_)))
                                               (_g1702717153_
                                                (lambda (_g1702917061_)
                                                  (if (gx#stx-pair?
                                                       _g1702917061_)
                                                      (let ((_e1703317063_
                                                             (gx#stx-e
                                                              _g1702917061_)))
                                                        (let ((_hd1703417066_
                                                               (##car _e1703317063_))
                                                              (_tl1703517068_
                                                               (##cdr _e1703317063_)))
                                                          (if (gx#stx-pair?
                                                               _tl1703517068_)
                                                              (let ((_e1703617071_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1703517068_)))
                        (let ((_hd1703717074_ (##car _e1703617071_))
                              (_tl1703817076_ (##cdr _e1703617071_)))
                          (if (gx#stx-pair? _hd1703717074_)
                              (let ((_e1703917079_ (gx#stx-e _hd1703717074_)))
                                (let ((_hd1704017082_ (##car _e1703917079_))
                                      (_tl1704117084_ (##cdr _e1703917079_)))
                                  (if (gx#stx-pair? _hd1704017082_)
                                      (let ((_e1704217087_
                                             (gx#stx-e _hd1704017082_)))
                                        (let ((_hd1704317090_
                                               (##car _e1704217087_))
                                              (_tl1704417092_
                                               (##cdr _e1704217087_)))
                                          (if (gx#stx-pair? _hd1704317090_)
                                              (let ((_e1704517095_
                                                     (gx#stx-e
                                                      _hd1704317090_)))
                                                (let ((_hd1704617098_
                                                       (##car _e1704517095_))
                                                      (_tl1704717100_
                                                       (##cdr _e1704517095_)))
                                                  (if (gx#stx-null?
                                                       _tl1704717100_)
                                                      (if (gx#stx-pair?
                                                           _tl1704417092_)
                                                          (let ((_e1704817103_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1704417092_)))
                    (let ((_hd1704917106_ (##car _e1704817103_))
                          (_tl1705017108_ (##cdr _e1704817103_)))
                      (if (gx#stx-null? _tl1705017108_)
                          (if (gx#stx-null? _tl1704117084_)
                              (if (gx#stx-pair? _tl1703817076_)
                                  (let ((_e1705117111_
                                         (gx#stx-e _tl1703817076_)))
                                    (let ((_hd1705217114_
                                           (##car _e1705117111_))
                                          (_tl1705317116_
                                           (##cdr _e1705117111_)))
                                      (if (gx#stx-null? _tl1705317116_)
                                          ((lambda (_L17119_ _L17120_ _L17121_)
                                             (let* ((_lambda-id17145_
                                                     (make-symbol
                                                      (gx#stx-e _L17014_)
                                                      '"__"
                                                      (gx#stx-e _L17121_)
                                                      (gensym '__)))
                                                    (_lambda-id17147_
                                                     (gx#core-quote-syntax__1
                                                      _lambda-id17145_
                                                      (gx#stx-source
                                                       _stx16730_)))
                                                    (_g20897_
                                                     (gx#core-bind-runtime!__0
                                                      _lambda-id17147_))
                                                    (_new-case-lambda-expr17150_
                                                     (gxc#apply-expression-subst
                                                      _L17119_
                                                      _L17121_
                                                      _lambda-id17147_)))
                                               (begin
                                                 (gxc#verbose
                                                  '"lift opt-lambda dispatch "
                                                  (gxc#generate-runtime-binding-id
                                                   _L17014_)
                                                  '" => "
                                                  (gxc#generate-runtime-binding-id
                                                   _lambda-id17147_))
                                                 (_lp16877_
                                                  (cons (_bind-e__opt-lambda17289__2084120842_
                                                         _L17014_
                                                         _new-case-lambda-expr17150_
                                                         '#f)
                                                        _rest16902_)
                                                  (cons (_bind-e__0__2084320844_
                                                         _lambda-id17147_
                                                         _L17120_)
                                                        _lift116880_)
                                                  _lift216881_
                                                  _bind16882_))))
                                           _hd1705217114_
                                           _hd1704917106_
                                           _hd1704617098_)
                                          (_g1702817058_ _g1702917061_))))
                                  (_g1702817058_ _g1702917061_))
                              (_g1702817058_ _g1702917061_))
                          (_g1702817058_ _g1702917061_))))
                  (_g1702817058_ _g1702917061_))
              (_g1702817058_ _g1702917061_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1702817058_ _g1702917061_))))
                                      (_g1702817058_ _g1702917061_))))
                              (_g1702817058_ _g1702917061_))))
                      (_g1702817058_ _g1702917061_))))
              (_g1702817058_ _g1702917061_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g1702717153_ _L17013_))
                                        (_g1690616984_ _g1690816987_)))
                                  _hd1692917008_
                                  _hd1692617000_)
                                 (_g1690616984_ _g1690816987_))))
                         (_g1690616984_ _g1690816987_))
                     (_g1690616984_ _g1690816987_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1690616984_
                                                      _g1690816987_))))
                                             (_g1690616984_ _g1690816987_))))
                                      (_g1690417275_
                                       (lambda (_g1690817159_)
                                         (if (gx#stx-pair? _g1690817159_)
                                             (let ((_e1691117161_
                                                    (gx#stx-e _g1690817159_)))
                                               (let ((_hd1691217164_
                                                      (##car _e1691117161_))
                                                     (_tl1691317166_
                                                      (##cdr _e1691117161_)))
                                                 (if (gx#stx-pair?
                                                      _hd1691217164_)
                                                     (let ((_e1691417169_
                                                            (gx#stx-e
                                                             _hd1691217164_)))
                                                       (let ((_hd1691517172_
                                                              (##car _e1691417169_))
                                                             (_tl1691617174_
                                                              (##cdr _e1691417169_)))
                                                         (if (gx#stx-null?
                                                              _tl1691617174_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1691317166_)
                         (let ((_e1691717177_ (gx#stx-e _tl1691317166_)))
                           (let ((_hd1691817180_ (##car _e1691717177_))
                                 (_tl1691917182_ (##cdr _e1691717177_)))
                             (if (gx#stx-null? _tl1691917182_)
                                 ((lambda (_L17185_ _L17186_)
                                    (if (if (gx#identifier? _L17186_)
                                            (gxc#case-lambda-expr? _L17185_)
                                            '#f)
                                        (let* ((_g1720117215_
                                                (lambda (_g1720217212_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1720217212_)))
                                               (_g1720017250_
                                                (lambda (_g1720217218_)
                                                  (if (gx#stx-pair?
                                                       _g1720217218_)
                                                      (let ((_e1720817220_
                                                             (gx#stx-e
                                                              _g1720217218_)))
                                                        (let ((_hd1720917223_
                                                               (##car _e1720817220_))
                                                              (_tl1721017225_
                                                               (##cdr _e1720817220_)))
                                                          ((lambda (_L17228_)
                                                             (let ((_g20898_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#lift-case-lambda-clauses__opt-lambda17716
                             _stx16730_
                             _L17186_
                             _L17228_
                             '#t)))
                       (begin
                         (let ((_g20899_ (values-count _g20898_)))
                           (if (not (fx= _g20899_ 3))
                               (error "Context expects 3 values" _g20899_)))
                         (let ((_ids17238_ (values-ref _g20898_ 0))
                               (_impls17239_ (values-ref _g20898_ 1))
                               (_clauses17240_ (values-ref _g20898_ 2)))
                           (let* ((_g20900_
                                   (for-each gx#core-bind-runtime! _ids17238_))
                                  (_xbind17243_
                                   (map _bind-e16732_ _ids17238_ _impls17239_))
                                  (_expr*17245_
                                   (gxc#xform-wrap-source
                                    (cons '%#case-lambda _clauses17240_)
                                    (gx#datum->syntax__0
                                     '#f
                                     'case-lambda-expr)))
                                  (_bind*17247_
                                   (_bind-e__opt-lambda17289__2084120842_
                                    _L17186_
                                    _expr*17245_
                                    '#f)))
                             (begin
                               (gxc#verbose
                                '"lift case-lambda clauses "
                                (gxc#generate-runtime-binding-id _L17186_)
                                '" => "
                                (map gxc#identifier-symbol _ids17238_))
                               (_lp16877_
                                _rest16902_
                                _lift116880_
                                (foldl1 cons _lift216881_ _xbind17243_)
                                (cons _bind*17247_ _bind16882_))))))))
                   _tl1721017225_)))
              (_g1720117215_ _g1720217218_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1719917272_
                                                (lambda (_g1720217253_)
                                                  (if (gx#stx-pair?
                                                       _g1720217253_)
                                                      (let ((_e1720417255_
                                                             (gx#stx-e
                                                              _g1720217253_)))
                                                        (let ((_hd1720517258_
                                                               (##car _e1720417255_))
                                                              (_tl1720617260_
                                                               (##cdr _e1720417255_)))
                                                          ((lambda (_L17263_)
                                                             (if (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _L17263_)
                         (_lp16877_
                          _rest16902_
                          _lift116880_
                          _lift216881_
                          (cons (_bind-e__opt-lambda17289__2084120842_
                                 _L17186_
                                 _L17185_
                                 '#f)
                                _bind16882_))
                         (_g1720017250_ _g1720217253_)))
                   _tl1720617260_)))
              (_g1720017250_ _g1720217253_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g1719917272_ _L17185_))
                                        (_g1690517156_ _g1690817159_)))
                                  _hd1691817180_
                                  _hd1691517172_)
                                 (_g1690517156_ _g1690817159_))))
                         (_g1690517156_ _g1690817159_))
                     (_g1690517156_ _g1690817159_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1690517156_
                                                      _g1690817159_))))
                                             (_g1690517156_ _g1690817159_)))))
                                 (_g1690417275_ _hd16903_)))))
                       (if (##pair? _rest1688316891_)
                           (let ((_hd1688817281_ (##car _rest1688316891_))
                                 (_tl1688917283_ (##cdr _rest1688316891_)))
                             (let* ((_hd17286_ _hd1688817281_)
                                    (_rest17288_ _tl1688917283_))
                               (_K1688717278_ _rest17288_ _hd17286_)))
                           (_else1688516899_)))))))
        (let* ((_g1673616762_
                (lambda (_g1673716759_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1673716759_)))
               (_g1673516769_
                (lambda (_g1673716765_)
                  ((lambda () (gxc#xform-let-values% _stx16730_)))))
               (_g1673416872_
                (lambda (_g1673716772_)
                  (if (gx#stx-pair? _g1673716772_)
                      (let ((_e1674016774_ (gx#stx-e _g1673716772_)))
                        (let ((_hd1674116777_ (##car _e1674016774_))
                              (_tl1674216779_ (##cdr _e1674016774_)))
                          (if (gx#stx-pair? _tl1674216779_)
                              (let ((_e1674316782_ (gx#stx-e _tl1674216779_)))
                                (let ((_hd1674416785_ (##car _e1674316782_))
                                      (_tl1674516787_ (##cdr _e1674316782_)))
                                  (if (gx#stx-pair/null? _hd1674416785_)
                                      (if (fx>= (gx#stx-length _hd1674416785_)
                                                '0)
                                          (let ((_g20901_
                                                 (gx#syntax-split-splice
                                                  _hd1674416785_
                                                  '0)))
                                            (begin
                                              (let ((_g20902_
                                                     (values-count _g20901_)))
                                                (if (not (fx= _g20902_ 2))
                                                    (error "Context expects 2 values"
                                                           _g20902_)))
                                              (let ((_target1674616790_
                                                     (values-ref _g20901_ 0))
                                                    (_tl1674816792_
                                                     (values-ref _g20901_ 1)))
                                                (if (gx#stx-null?
                                                     _tl1674816792_)
                                                    (letrec ((_loop1674916795_
                                                              (lambda (_hd1674716798_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind1675316800_)
                        (if (gx#stx-pair? _hd1674716798_)
                            (let ((_e1675016803_ (gx#stx-e _hd1674716798_)))
                              (let ((_lp-hd1675116806_ (##car _e1675016803_))
                                    (_lp-tl1675216808_ (##cdr _e1675016803_)))
                                (_loop1674916795_
                                 _lp-tl1675216808_
                                 (cons _lp-hd1675116806_ _bind1675316800_))))
                            (let ((_bind1675416811_
                                   (reverse _bind1675316800_)))
                              (if (gx#stx-pair? _tl1674516787_)
                                  (let ((_e1675516814_
                                         (gx#stx-e _tl1674516787_)))
                                    (let ((_hd1675616817_
                                           (##car _e1675516814_))
                                          (_tl1675716819_
                                           (##cdr _e1675516814_)))
                                      (if (gx#stx-null? _tl1675716819_)
                                          ((lambda (_L16822_ _L16823_)
                                             (if (ormap1 gxc#lift-top-lambda-binding?
                                                         (begin
                                                           '#!void
                                                           (foldr1 (lambda (_g1684316846_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g1684416848_)
                             (cons _g1684316846_ _g1684416848_))
                           '()
                           _L16823_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (call-with-parameters
                                                  (lambda ()
                                                    (let ((_g20903_
                                                           (_compile-bindings16733_
                                                            (begin
                                                              '#!void
                                                              (foldr1 (lambda (_g1685116854_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g1685216856_)
                                (cons _g1685116854_ _g1685216856_))
                              '()
                              _L16823_)))))
              (begin
                (let ((_g20904_ (values-count _g20903_)))
                  (if (not (fx= _g20904_ 3))
                      (error "Context expects 3 values" _g20904_)))
                (let ((_lift116859_ (values-ref _g20903_ 0))
                      (_lift216860_ (values-ref _g20903_ 1))
                      (_hd16861_ (values-ref _g20903_ 2)))
                  (let* ((_body16863_ (gxc#compile-e _L16822_))
                         (_expr16865_
                          (gxc#xform-wrap-source
                           (cons '%#let-values
                                 (cons _hd16861_ (cons _body16863_ '())))
                           _stx16730_))
                         (_expr16867_
                          (if (null? _lift216860_)
                              _expr16865_
                              (gxc#xform-wrap-source
                               (cons '%#let-values
                                     (cons _lift216860_
                                           (cons _expr16865_ '())))
                               _stx16730_)))
                         (_expr16869_
                          (if (null? _lift116859_)
                              _expr16867_
                              (gxc#xform-wrap-source
                               (cons '%#let-values
                                     (cons _lift116859_
                                           (cons _expr16867_ '())))
                               _stx16730_))))
                    _expr16869_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  gx#current-expander-context
                                                  (let ((__obj20851
                                                         (make-object
                                                          gx#local-context::t
                                                          '5)))
                                                    (begin
                                                      (gx#local-context:::init!__0
                                                       __obj20851)
                                                      __obj20851)))
                                                 (_g1673516769_
                                                  _g1673716772_)))
                                           _hd1675616817_
                                           _bind1675416811_)
                                          (_g1673516769_ _g1673716772_))))
                                  (_g1673516769_ _g1673716772_)))))))
              (_loop1674916795_ _target1674616790_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1673516769_
                                                     _g1673716772_)))))
                                          (_g1673516769_ _g1673716772_))
                                      (_g1673516769_ _g1673716772_))))
                              (_g1673516769_ _g1673716772_))))
                      (_g1673516769_ _g1673716772_)))))
          (_g1673416872_ _stx16730_)))))
  (define gxc#lift-top-lambda-letrec-values%
    (lambda (_stx16162_)
      (letrec* ((_bind-e__opt-lambda16712__2084620847_
                 (lambda (_id16714_ _expr16715_ _compile?16716_)
                   (cons (cons _id16714_ '())
                         (cons (if _compile?16716_
                                   (gxc#compile-e _expr16715_)
                                   _expr16715_)
                               '()))))
                (_bind-e__0__2084820849_
                 (lambda (_id16721_ _expr16722_)
                   (let ((_compile?16724_ '#t))
                     (_bind-e__opt-lambda16712__2084620847_
                      _id16721_
                      _expr16722_
                      _compile?16724_))))
                (_bind-e16164_
                 (lambda _g20906_
                   (let ((_g20905_ (length _g20906_)))
                     (cond ((fx= _g20905_ 2)
                            (apply _bind-e__0__2084820849_ _g20906_))
                           ((fx= _g20905_ 3)
                            (apply _bind-e__opt-lambda16712__2084620847_
                                   _g20906_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g20906_))))))
                (_compile-bindings16165_
                 (lambda (_rest16300_)
                   (let _lp16302_ ((_rest16304_ _rest16300_) (_bind16305_ '()))
                     (let* ((_rest1630616314_ _rest16304_)
                            (_E1630916318_
                             (lambda ()
                               (error '"No clause matching" _rest1630616314_)))
                            (_else1630816322_
                             (lambda () (reverse _bind16305_)))
                            (_K1631016701_
                             (lambda (_rest16325_ _hd16326_)
                               (let* ((_g1633016366_
                                       (lambda (_g1633116363_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1633116363_)))
                                      (_g1632916407_
                                       (lambda (_g1633116369_)
                                         (if (gx#stx-pair? _g1633116369_)
                                             (let ((_e1635616371_
                                                    (gx#stx-e _g1633116369_)))
                                               (let ((_hd1635716374_
                                                      (##car _e1635616371_))
                                                     (_tl1635816376_
                                                      (##cdr _e1635616371_)))
                                                 (if (gx#stx-pair?
                                                      _tl1635816376_)
                                                     (let ((_e1635916379_
                                                            (gx#stx-e
                                                             _tl1635816376_)))
                                                       (let ((_hd1636016382_
                                                              (##car _e1635916379_))
                                                             (_tl1636116384_
                                                              (##cdr _e1635916379_)))
                                                         (if (gx#stx-null?
                                                              _tl1636116384_)
                                                             ((lambda (_L16387_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L16388_)
                        (_lp16302_
                         _rest16325_
                         (cons (cons _L16388_
                                     (cons (gxc#compile-e _L16387_) '()))
                               _bind16305_)))
                      _hd1636016382_
                      _hd1635716374_)
                     (_g1633016366_ _g1633116369_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1633016366_
                                                      _g1633116369_))))
                                             (_g1633016366_ _g1633116369_))))
                                      (_g1632816579_
                                       (lambda (_g1633116410_)
                                         (if (gx#stx-pair? _g1633116410_)
                                             (let ((_e1634516412_
                                                    (gx#stx-e _g1633116410_)))
                                               (let ((_hd1634616415_
                                                      (##car _e1634516412_))
                                                     (_tl1634716417_
                                                      (##cdr _e1634516412_)))
                                                 (if (gx#stx-pair?
                                                      _hd1634616415_)
                                                     (let ((_e1634816420_
                                                            (gx#stx-e
                                                             _hd1634616415_)))
                                                       (let ((_hd1634916423_
                                                              (##car _e1634816420_))
                                                             (_tl1635016425_
                                                              (##cdr _e1634816420_)))
                                                         (if (gx#stx-null?
                                                              _tl1635016425_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1634716417_)
                         (let ((_e1635116428_ (gx#stx-e _tl1634716417_)))
                           (let ((_hd1635216431_ (##car _e1635116428_))
                                 (_tl1635316433_ (##cdr _e1635116428_)))
                             (if (gx#stx-null? _tl1635316433_)
                                 ((lambda (_L16436_ _L16437_)
                                    (if (if (gx#identifier? _L16437_)
                                            (gxc#opt-lambda-expr? _L16436_)
                                            '#f)
                                        (let* ((_g1645116481_
                                                (lambda (_g1645216478_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1645216478_)))
                                               (_g1645016576_
                                                (lambda (_g1645216484_)
                                                  (if (gx#stx-pair?
                                                       _g1645216484_)
                                                      (let ((_e1645616486_
                                                             (gx#stx-e
                                                              _g1645216484_)))
                                                        (let ((_hd1645716489_
                                                               (##car _e1645616486_))
                                                              (_tl1645816491_
                                                               (##cdr _e1645616486_)))
                                                          (if (gx#stx-pair?
                                                               _tl1645816491_)
                                                              (let ((_e1645916494_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1645816491_)))
                        (let ((_hd1646016497_ (##car _e1645916494_))
                              (_tl1646116499_ (##cdr _e1645916494_)))
                          (if (gx#stx-pair? _hd1646016497_)
                              (let ((_e1646216502_ (gx#stx-e _hd1646016497_)))
                                (let ((_hd1646316505_ (##car _e1646216502_))
                                      (_tl1646416507_ (##cdr _e1646216502_)))
                                  (if (gx#stx-pair? _hd1646316505_)
                                      (let ((_e1646516510_
                                             (gx#stx-e _hd1646316505_)))
                                        (let ((_hd1646616513_
                                               (##car _e1646516510_))
                                              (_tl1646716515_
                                               (##cdr _e1646516510_)))
                                          (if (gx#stx-pair? _hd1646616513_)
                                              (let ((_e1646816518_
                                                     (gx#stx-e
                                                      _hd1646616513_)))
                                                (let ((_hd1646916521_
                                                       (##car _e1646816518_))
                                                      (_tl1647016523_
                                                       (##cdr _e1646816518_)))
                                                  (if (gx#stx-null?
                                                       _tl1647016523_)
                                                      (if (gx#stx-pair?
                                                           _tl1646716515_)
                                                          (let ((_e1647116526_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1646716515_)))
                    (let ((_hd1647216529_ (##car _e1647116526_))
                          (_tl1647316531_ (##cdr _e1647116526_)))
                      (if (gx#stx-null? _tl1647316531_)
                          (if (gx#stx-null? _tl1646416507_)
                              (if (gx#stx-pair? _tl1646116499_)
                                  (let ((_e1647416534_
                                         (gx#stx-e _tl1646116499_)))
                                    (let ((_hd1647516537_
                                           (##car _e1647416534_))
                                          (_tl1647616539_
                                           (##cdr _e1647416534_)))
                                      (if (gx#stx-null? _tl1647616539_)
                                          ((lambda (_L16542_ _L16543_ _L16544_)
                                             (let* ((_lambda-id16568_
                                                     (make-symbol
                                                      (gx#stx-e _L16437_)
                                                      '"__"
                                                      (gx#stx-e _L16544_)
                                                      (gensym '__)))
                                                    (_lambda-id16570_
                                                     (gx#core-quote-syntax__1
                                                      _lambda-id16568_
                                                      (gx#stx-source
                                                       _stx16162_)))
                                                    (_g20907_
                                                     (gx#core-bind-runtime!__0
                                                      _lambda-id16570_))
                                                    (_new-case-lambda-expr16573_
                                                     (gxc#apply-expression-subst
                                                      _L16542_
                                                      _L16544_
                                                      _lambda-id16570_)))
                                               (begin
                                                 (gxc#verbose
                                                  '"lift opt-lambda dispatch "
                                                  (gxc#generate-runtime-binding-id
                                                   _L16437_)
                                                  '" => "
                                                  (gxc#generate-runtime-binding-id
                                                   _lambda-id16570_))
                                                 (_lp16302_
                                                  (cons (_bind-e__opt-lambda16712__2084620847_
                                                         _L16437_
                                                         _new-case-lambda-expr16573_
                                                         '#f)
                                                        _rest16325_)
                                                  (cons (_bind-e__0__2084820849_
                                                         _lambda-id16570_
                                                         _L16543_)
                                                        _bind16305_)))))
                                           _hd1647516537_
                                           _hd1647216529_
                                           _hd1646916521_)
                                          (_g1645116481_ _g1645216484_))))
                                  (_g1645116481_ _g1645216484_))
                              (_g1645116481_ _g1645216484_))
                          (_g1645116481_ _g1645216484_))))
                  (_g1645116481_ _g1645216484_))
              (_g1645116481_ _g1645216484_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1645116481_ _g1645216484_))))
                                      (_g1645116481_ _g1645216484_))))
                              (_g1645116481_ _g1645216484_))))
                      (_g1645116481_ _g1645216484_))))
              (_g1645116481_ _g1645216484_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g1645016576_ _L16436_))
                                        (_g1632916407_ _g1633116410_)))
                                  _hd1635216431_
                                  _hd1634916423_)
                                 (_g1632916407_ _g1633116410_))))
                         (_g1632916407_ _g1633116410_))
                     (_g1632916407_ _g1633116410_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1632916407_
                                                      _g1633116410_))))
                                             (_g1632916407_ _g1633116410_))))
                                      (_g1632716698_
                                       (lambda (_g1633116582_)
                                         (if (gx#stx-pair? _g1633116582_)
                                             (let ((_e1633416584_
                                                    (gx#stx-e _g1633116582_)))
                                               (let ((_hd1633516587_
                                                      (##car _e1633416584_))
                                                     (_tl1633616589_
                                                      (##cdr _e1633416584_)))
                                                 (if (gx#stx-pair?
                                                      _hd1633516587_)
                                                     (let ((_e1633716592_
                                                            (gx#stx-e
                                                             _hd1633516587_)))
                                                       (let ((_hd1633816595_
                                                              (##car _e1633716592_))
                                                             (_tl1633916597_
                                                              (##cdr _e1633716592_)))
                                                         (if (gx#stx-null?
                                                              _tl1633916597_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1633616589_)
                         (let ((_e1634016600_ (gx#stx-e _tl1633616589_)))
                           (let ((_hd1634116603_ (##car _e1634016600_))
                                 (_tl1634216605_ (##cdr _e1634016600_)))
                             (if (gx#stx-null? _tl1634216605_)
                                 ((lambda (_L16608_ _L16609_)
                                    (if (if (gx#identifier? _L16609_)
                                            (gxc#case-lambda-expr? _L16608_)
                                            '#f)
                                        (let* ((_g1662416638_
                                                (lambda (_g1662516635_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1662516635_)))
                                               (_g1662316673_
                                                (lambda (_g1662516641_)
                                                  (if (gx#stx-pair?
                                                       _g1662516641_)
                                                      (let ((_e1663116643_
                                                             (gx#stx-e
                                                              _g1662516641_)))
                                                        (let ((_hd1663216646_
                                                               (##car _e1663116643_))
                                                              (_tl1663316648_
                                                               (##cdr _e1663116643_)))
                                                          ((lambda (_L16651_)
                                                             (let ((_g20908_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#lift-case-lambda-clauses__opt-lambda17716
                             _stx16162_
                             _L16609_
                             _L16651_
                             '#t)))
                       (begin
                         (let ((_g20909_ (values-count _g20908_)))
                           (if (not (fx= _g20909_ 3))
                               (error "Context expects 3 values" _g20909_)))
                         (let ((_ids16661_ (values-ref _g20908_ 0))
                               (_impls16662_ (values-ref _g20908_ 1))
                               (_clauses16663_ (values-ref _g20908_ 2)))
                           (let* ((_g20910_
                                   (for-each gx#core-bind-runtime! _ids16661_))
                                  (_xbind16666_
                                   (map _bind-e16164_ _ids16661_ _impls16662_))
                                  (_expr*16668_
                                   (gxc#xform-wrap-source
                                    (cons '%#case-lambda _clauses16663_)
                                    (gx#datum->syntax__0
                                     '#f
                                     'case-lambda-expr)))
                                  (_bind*16670_
                                   (_bind-e__opt-lambda16712__2084620847_
                                    _L16609_
                                    _expr*16668_
                                    '#f)))
                             (begin
                               (gxc#verbose
                                '"lift case-lambda clauses "
                                (gxc#generate-runtime-binding-id _L16609_)
                                '" => "
                                (map gxc#identifier-symbol _ids16661_))
                               (_lp16302_
                                _rest16325_
                                (cons _bind*16670_
                                      (foldl1 cons
                                              _bind16305_
                                              _xbind16666_)))))))))
                   _tl1663316648_)))
              (_g1662416638_ _g1662516641_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1662216695_
                                                (lambda (_g1662516676_)
                                                  (if (gx#stx-pair?
                                                       _g1662516676_)
                                                      (let ((_e1662716678_
                                                             (gx#stx-e
                                                              _g1662516676_)))
                                                        (let ((_hd1662816681_
                                                               (##car _e1662716678_))
                                                              (_tl1662916683_
                                                               (##cdr _e1662716678_)))
                                                          ((lambda (_L16686_)
                                                             (if (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _L16686_)
                         (_lp16302_
                          _rest16325_
                          (cons (_bind-e__opt-lambda16712__2084620847_
                                 _L16609_
                                 _L16608_
                                 '#f)
                                _bind16305_))
                         (_g1662316673_ _g1662516676_)))
                   _tl1662916683_)))
              (_g1662316673_ _g1662516676_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g1662216695_ _L16608_))
                                        (_g1632816579_ _g1633116582_)))
                                  _hd1634116603_
                                  _hd1633816595_)
                                 (_g1632816579_ _g1633116582_))))
                         (_g1632816579_ _g1633116582_))
                     (_g1632816579_ _g1633116582_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1632816579_
                                                      _g1633116582_))))
                                             (_g1632816579_ _g1633116582_)))))
                                 (_g1632716698_ _hd16326_)))))
                       (if (##pair? _rest1630616314_)
                           (let ((_hd1631116704_ (##car _rest1630616314_))
                                 (_tl1631216706_ (##cdr _rest1630616314_)))
                             (let* ((_hd16709_ _hd1631116704_)
                                    (_rest16711_ _tl1631216706_))
                               (_K1631016701_ _rest16711_ _hd16709_)))
                           (_else1630816322_)))))))
        (let* ((_g1616816195_
                (lambda (_g1616916192_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1616916192_)))
               (_g1616716202_
                (lambda (_g1616916198_)
                  ((lambda () (gxc#xform-let-values% _stx16162_)))))
               (_g1616616297_
                (lambda (_g1616916205_)
                  (if (gx#stx-pair? _g1616916205_)
                      (let ((_e1617316207_ (gx#stx-e _g1616916205_)))
                        (let ((_hd1617416210_ (##car _e1617316207_))
                              (_tl1617516212_ (##cdr _e1617316207_)))
                          (if (gx#stx-pair? _tl1617516212_)
                              (let ((_e1617616215_ (gx#stx-e _tl1617516212_)))
                                (let ((_hd1617716218_ (##car _e1617616215_))
                                      (_tl1617816220_ (##cdr _e1617616215_)))
                                  (if (gx#stx-pair/null? _hd1617716218_)
                                      (if (fx>= (gx#stx-length _hd1617716218_)
                                                '0)
                                          (let ((_g20911_
                                                 (gx#syntax-split-splice
                                                  _hd1617716218_
                                                  '0)))
                                            (begin
                                              (let ((_g20912_
                                                     (values-count _g20911_)))
                                                (if (not (fx= _g20912_ 2))
                                                    (error "Context expects 2 values"
                                                           _g20912_)))
                                              (let ((_target1617916223_
                                                     (values-ref _g20911_ 0))
                                                    (_tl1618116225_
                                                     (values-ref _g20911_ 1)))
                                                (if (gx#stx-null?
                                                     _tl1618116225_)
                                                    (letrec ((_loop1618216228_
                                                              (lambda (_hd1618016231_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind1618616233_)
                        (if (gx#stx-pair? _hd1618016231_)
                            (let ((_e1618316236_ (gx#stx-e _hd1618016231_)))
                              (let ((_lp-hd1618416239_ (##car _e1618316236_))
                                    (_lp-tl1618516241_ (##cdr _e1618316236_)))
                                (_loop1618216228_
                                 _lp-tl1618516241_
                                 (cons _lp-hd1618416239_ _bind1618616233_))))
                            (let ((_bind1618716244_
                                   (reverse _bind1618616233_)))
                              (if (gx#stx-pair? _tl1617816220_)
                                  (let ((_e1618816247_
                                         (gx#stx-e _tl1617816220_)))
                                    (let ((_hd1618916250_
                                           (##car _e1618816247_))
                                          (_tl1619016252_
                                           (##cdr _e1618816247_)))
                                      (if (gx#stx-null? _tl1619016252_)
                                          ((lambda (_L16255_ _L16256_ _L16257_)
                                             (if (ormap1 gxc#lift-top-lambda-binding?
                                                         (begin
                                                           '#!void
                                                           (foldr1 (lambda (_g1627816281_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g1627916283_)
                             (cons _g1627816281_ _g1627916283_))
                           '()
                           _L16256_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (call-with-parameters
                                                  (lambda ()
                                                    (let ((_hd16294_
                                                           (_compile-bindings16165_
                                                            (begin
                                                              '#!void
                                                              (foldr1 (lambda (_g1628616289_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g1628716291_)
                                (cons _g1628616289_ _g1628716291_))
                              '()
                              _L16256_))))
                  (_body16295_ (gxc#compile-e _L16255_)))
              (gxc#xform-wrap-source
               (cons _L16257_ (cons _hd16294_ (cons _body16295_ '())))
               _stx16162_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  gx#current-expander-context
                                                  (let ((__obj20852
                                                         (make-object
                                                          gx#local-context::t
                                                          '5)))
                                                    (begin
                                                      (gx#local-context:::init!__0
                                                       __obj20852)
                                                      __obj20852)))
                                                 (_g1616716202_
                                                  _g1616916205_)))
                                           _hd1618916250_
                                           _bind1618716244_
                                           _hd1617416210_)
                                          (_g1616716202_ _g1616916205_))))
                                  (_g1616716202_ _g1616916205_)))))))
              (_loop1618216228_ _target1617916223_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1616716202_
                                                     _g1616916205_)))))
                                          (_g1616716202_ _g1616916205_))
                                      (_g1616716202_ _g1616916205_))))
                              (_g1616716202_ _g1616916205_))))
                      (_g1616716202_ _g1616916205_)))))
          (_g1616616297_ _stx16162_)))))
  (define gxc#lift-top-lambda-binding?
    (lambda (_bind16083_)
      (let* ((_g1608616103_
              (lambda (_g1608716100_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1608716100_)))
             (_g1608516110_ (lambda (_g1608716106_) ((lambda () '#f))))
             (_g1608416159_
              (lambda (_g1608716113_)
                (if (gx#stx-pair? _g1608716113_)
                    (let ((_e1609016115_ (gx#stx-e _g1608716113_)))
                      (let ((_hd1609116118_ (##car _e1609016115_))
                            (_tl1609216120_ (##cdr _e1609016115_)))
                        (if (gx#stx-pair? _hd1609116118_)
                            (let ((_e1609316123_ (gx#stx-e _hd1609116118_)))
                              (let ((_hd1609416126_ (##car _e1609316123_))
                                    (_tl1609516128_ (##cdr _e1609316123_)))
                                (if (gx#stx-null? _tl1609516128_)
                                    (if (gx#stx-pair? _tl1609216120_)
                                        (let ((_e1609616131_
                                               (gx#stx-e _tl1609216120_)))
                                          (let ((_hd1609716134_
                                                 (##car _e1609616131_))
                                                (_tl1609816136_
                                                 (##cdr _e1609616131_)))
                                            (if (gx#stx-null? _tl1609816136_)
                                                ((lambda (_L16139_ _L16140_)
                                                   (if (gx#identifier?
                                                        _L16140_)
                                                       (let ((_$e16156_
                                                              (gxc#case-lambda-expr?
                                                               _L16139_)))
                                                         (if _$e16156_
                                                             _$e16156_
                                                             (gxc#opt-lambda-expr?
                                                              _L16139_)))
                                                       '#f))
                                                 _hd1609716134_
                                                 _hd1609416126_)
                                                (_g1608516110_
                                                 _g1608716113_))))
                                        (_g1608516110_ _g1608716113_))
                                    (_g1608516110_ _g1608716113_))))
                            (_g1608516110_ _g1608716113_))))
                    (_g1608516110_ _g1608716113_)))))
        (_g1608416159_ _bind16083_))))
  (define gxc#expression-subst-ref%
    (lambda (_stx16021_ _id16022_ _new-id16023_)
      (let* ((_g1602616039_
              (lambda (_g1602716036_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1602716036_)))
             (_g1602516046_ (lambda (_g1602716042_) ((lambda () _stx16021_))))
             (_g1602416080_
              (lambda (_g1602716049_)
                (if (gx#stx-pair? _g1602716049_)
                    (let ((_e1602916051_ (gx#stx-e _g1602716049_)))
                      (let ((_hd1603016054_ (##car _e1602916051_))
                            (_tl1603116056_ (##cdr _e1602916051_)))
                        (if (gx#stx-pair? _tl1603116056_)
                            (let ((_e1603216059_ (gx#stx-e _tl1603116056_)))
                              (let ((_hd1603316062_ (##car _e1603216059_))
                                    (_tl1603416064_ (##cdr _e1603216059_)))
                                (if (gx#stx-null? _tl1603416064_)
                                    ((lambda (_L16067_)
                                       (if (gx#free-identifier=?
                                            _L16067_
                                            _id16022_)
                                           (gxc#xform-wrap-source
                                            (cons '%#ref
                                                  (cons _new-id16023_ '()))
                                            _stx16021_)
                                           (_g1602516046_ _g1602716049_)))
                                     _hd1603316062_)
                                    (_g1602516046_ _g1602716049_))))
                            (_g1602516046_ _g1602716049_))))
                    (_g1602516046_ _g1602716049_)))))
        (_g1602416080_ _stx16021_))))
  (define gxc#collect-type-define-values%
    (lambda (_stx15877_)
      (let* ((_g1588015911_
              (lambda (_g1588115908_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1588115908_)))
             (_g1587915956_
              (lambda (_g1588115914_)
                (if (gx#stx-pair? _g1588115914_)
                    (let ((_e1589815916_ (gx#stx-e _g1588115914_)))
                      (let ((_hd1589915919_ (##car _e1589815916_))
                            (_tl1590015921_ (##cdr _e1589815916_)))
                        (if (gx#stx-pair? _tl1590015921_)
                            (let ((_e1590115924_ (gx#stx-e _tl1590015921_)))
                              (let ((_hd1590215927_ (##car _e1590115924_))
                                    (_tl1590315929_ (##cdr _e1590115924_)))
                                (if (gx#stx-pair? _tl1590315929_)
                                    (let ((_e1590415932_
                                           (gx#stx-e _tl1590315929_)))
                                      (let ((_hd1590515935_
                                             (##car _e1590415932_))
                                            (_tl1590615937_
                                             (##cdr _e1590415932_)))
                                        (if (gx#stx-null? _tl1590615937_)
                                            ((lambda (_L15940_ _L15941_)
                                               (gxc#compile-e _L15940_))
                                             _hd1590515935_
                                             _hd1590215927_)
                                            (_g1588015911_ _g1588115914_))))
                                    (_g1588015911_ _g1588115914_))))
                            (_g1588015911_ _g1588115914_))))
                    (_g1588015911_ _g1588115914_))))
             (_g1587816018_
              (lambda (_g1588115959_)
                (if (gx#stx-pair? _g1588115959_)
                    (let ((_e1588415961_ (gx#stx-e _g1588115959_)))
                      (let ((_hd1588515964_ (##car _e1588415961_))
                            (_tl1588615966_ (##cdr _e1588415961_)))
                        (if (gx#stx-pair? _tl1588615966_)
                            (let ((_e1588715969_ (gx#stx-e _tl1588615966_)))
                              (let ((_hd1588815972_ (##car _e1588715969_))
                                    (_tl1588915974_ (##cdr _e1588715969_)))
                                (if (gx#stx-pair? _hd1588815972_)
                                    (let ((_e1589015977_
                                           (gx#stx-e _hd1588815972_)))
                                      (let ((_hd1589115980_
                                             (##car _e1589015977_))
                                            (_tl1589215982_
                                             (##cdr _e1589015977_)))
                                        (if (gx#stx-null? _tl1589215982_)
                                            (if (gx#stx-pair? _tl1588915974_)
                                                (let ((_e1589315985_
                                                       (gx#stx-e
                                                        _tl1588915974_)))
                                                  (let ((_hd1589415988_
                                                         (##car _e1589315985_))
                                                        (_tl1589515990_
                                                         (##cdr _e1589315985_)))
                                                    (if (gx#stx-null?
                                                         _tl1589515990_)
                                                        ((lambda (_L15993_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L15994_)
                   (if (gx#identifier? _L15994_)
                       (let ((_sym16010_
                              (gxc#generate-runtime-binding-id _L15994_)))
                         (begin
                           (if (table-ref
                                (gxc#current-compile-mutators)
                                _sym16010_
                                '#f)
                               (gxc#verbose
                                '"skipping type declaration for mutable binding "
                                _sym16010_)
                               (let ((_type1601116013_
                                      (gxc#apply-basic-expression-type
                                       _L15993_)))
                                 (if _type1601116013_
                                     (let ((_type16016_ _type1601116013_))
                                       (gxc#optimizer-declare-type!__0
                                        _sym16010_
                                        _type16016_))
                                     '#f)))
                           (gxc#compile-e _L15993_)))
                       (_g1587915956_ _g1588115959_)))
                 _hd1589415988_
                 _hd1589115980_)
                (_g1587915956_ _g1588115959_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1587915956_ _g1588115959_))
                                            (_g1587915956_ _g1588115959_))))
                                    (_g1587915956_ _g1588115959_))))
                            (_g1587915956_ _g1588115959_))))
                    (_g1587915956_ _g1588115959_)))))
        (_g1587816018_ _stx15877_))))
  (define gxc#collect-type-let-values%
    (lambda (_stx15662_)
      (letrec ((_collect-e15664_
                (lambda (_hd15821_ _expr15822_)
                  (let* ((_g1582515835_
                          (lambda (_g1582615832_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g1582615832_)))
                         (_g1582415842_
                          (lambda (_g1582615838_) ((lambda () '#!void))))
                         (_g1582315874_
                          (lambda (_g1582615845_)
                            (if (gx#stx-pair? _g1582615845_)
                                (let ((_e1582815847_ (gx#stx-e _g1582615845_)))
                                  (let ((_hd1582915850_ (##car _e1582815847_))
                                        (_tl1583015852_ (##cdr _e1582815847_)))
                                    (if (gx#stx-null? _tl1583015852_)
                                        ((lambda (_L15855_)
                                           (if (gx#identifier? _L15855_)
                                               (let ((_sym15866_
                                                      (gxc#generate-runtime-binding-id
                                                       _L15855_)))
                                                 (if (table-ref
                                                      (gxc#current-compile-mutators)
                                                      _sym15866_
                                                      '#f)
                                                     (gxc#verbose
                                                      '"skipping type declaration for mutable binding "
                                                      _sym15866_)
                                                     (let ((_type1586715869_
                                                            (gxc#apply-basic-expression-type
                                                             _expr15822_)))
                                                       (if _type1586715869_
                                                           (let ((_type15872_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _type1586715869_))
                     (gxc#optimizer-declare-type!__opt-lambda20625
                      _sym15866_
                      _type15872_
                      '#t))
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1582415842_ _g1582615845_)))
                                         _hd1582915850_)
                                        (_g1582415842_ _g1582615845_))))
                                (_g1582415842_ _g1582615845_)))))
                    (_g1582315874_ _hd15821_)))))
        (let* ((_g1566615701_
                (lambda (_g1566715698_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1566715698_)))
               (_g1566515818_
                (lambda (_g1566715704_)
                  (if (gx#stx-pair? _g1566715704_)
                      (let ((_e1567115706_ (gx#stx-e _g1566715704_)))
                        (let ((_hd1567215709_ (##car _e1567115706_))
                              (_tl1567315711_ (##cdr _e1567115706_)))
                          (if (gx#stx-pair? _tl1567315711_)
                              (let ((_e1567415714_ (gx#stx-e _tl1567315711_)))
                                (let ((_hd1567515717_ (##car _e1567415714_))
                                      (_tl1567615719_ (##cdr _e1567415714_)))
                                  (if (gx#stx-pair/null? _hd1567515717_)
                                      (if (fx>= (gx#stx-length _hd1567515717_)
                                                '0)
                                          (let ((_g20913_
                                                 (gx#syntax-split-splice
                                                  _hd1567515717_
                                                  '0)))
                                            (begin
                                              (let ((_g20914_
                                                     (values-count _g20913_)))
                                                (if (not (fx= _g20914_ 2))
                                                    (error "Context expects 2 values"
                                                           _g20914_)))
                                              (let ((_target1567715722_
                                                     (values-ref _g20913_ 0))
                                                    (_tl1567915724_
                                                     (values-ref _g20913_ 1)))
                                                (if (gx#stx-null?
                                                     _tl1567915724_)
                                                    (letrec ((_loop1568015727_
                                                              (lambda (_hd1567815730_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _expr1568415732_
                               _hd1568515734_)
                        (if (gx#stx-pair? _hd1567815730_)
                            (let ((_e1568115737_ (gx#stx-e _hd1567815730_)))
                              (let ((_lp-hd1568215740_ (##car _e1568115737_))
                                    (_lp-tl1568315742_ (##cdr _e1568115737_)))
                                (if (gx#stx-pair? _lp-hd1568215740_)
                                    (let ((_e1568815745_
                                           (gx#stx-e _lp-hd1568215740_)))
                                      (let ((_hd1568915748_
                                             (##car _e1568815745_))
                                            (_tl1569015750_
                                             (##cdr _e1568815745_)))
                                        (if (gx#stx-pair? _tl1569015750_)
                                            (let ((_e1569115753_
                                                   (gx#stx-e _tl1569015750_)))
                                              (let ((_hd1569215756_
                                                     (##car _e1569115753_))
                                                    (_tl1569315758_
                                                     (##cdr _e1569115753_)))
                                                (if (gx#stx-null?
                                                     _tl1569315758_)
                                                    (_loop1568015727_
                                                     _lp-tl1568315742_
                                                     (cons _hd1569215756_
                                                           _expr1568415732_)
                                                     (cons _hd1568915748_
                                                           _hd1568515734_))
                                                    (_g1566615701_
                                                     _g1566715704_))))
                                            (_g1566615701_ _g1566715704_))))
                                    (_g1566615701_ _g1566715704_))))
                            (let ((_expr1568615761_ (reverse _expr1568415732_))
                                  (_hd1568715763_ (reverse _hd1568515734_)))
                              (if (gx#stx-pair? _tl1567615719_)
                                  (let ((_e1569415766_
                                         (gx#stx-e _tl1567615719_)))
                                    (let ((_hd1569515769_
                                           (##car _e1569415766_))
                                          (_tl1569615771_
                                           (##cdr _e1569415766_)))
                                      (if (gx#stx-null? _tl1569615771_)
                                          ((lambda (_L15774_ _L15775_ _L15776_)
                                             (begin
                                               (for-each
                                                _collect-e15664_
                                                (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g1579615799_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1579715801_)
                    (cons _g1579615799_ _g1579715801_))
                  '()
                  _L15776_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g1580315806_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1580415808_)
                    (cons _g1580315806_ _g1580415808_))
                  '()
                  _L15775_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (for-each
                                                gxc#compile-e
                                                (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g1581015813_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1581115815_)
                    (cons _g1581015813_ _g1581115815_))
                  '()
                  _L15775_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (gxc#compile-e _L15774_)))
                                           _hd1569515769_
                                           _expr1568615761_
                                           _hd1568715763_)
                                          (_g1566615701_ _g1566715704_))))
                                  (_g1566615701_ _g1566715704_)))))))
              (_loop1568015727_ _target1567715722_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1566615701_
                                                     _g1566715704_)))))
                                          (_g1566615701_ _g1566715704_))
                                      (_g1566615701_ _g1566715704_))))
                              (_g1566615701_ _g1566715704_))))
                      (_g1566615701_ _g1566715704_)))))
          (_g1566515818_ _stx15662_)))))
  (define gxc#collect-type-call%
    (lambda (_stx15216_)
      (let* ((_g1522015322_
              (lambda (_g1522115319_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1522115319_)))
             (_g1521915329_ (lambda (_g1522115325_) ((lambda () '#!void))))
             (_g1521815479_
              (lambda (_g1522115332_)
                (if (gx#stx-pair? _g1522115332_)
                    (let ((_e1527915334_ (gx#stx-e _g1522115332_)))
                      (let ((_hd1528015337_ (##car _e1527915334_))
                            (_tl1528115339_ (##cdr _e1527915334_)))
                        (if (gx#stx-pair? _tl1528115339_)
                            (let ((_e1528215342_ (gx#stx-e _tl1528115339_)))
                              (let ((_hd1528315345_ (##car _e1528215342_))
                                    (_tl1528415347_ (##cdr _e1528215342_)))
                                (if (gx#stx-pair? _hd1528315345_)
                                    (let ((_e1528515350_
                                           (gx#stx-e _hd1528315345_)))
                                      (let ((_hd1528615353_
                                             (##car _e1528515350_))
                                            (_tl1528715355_
                                             (##cdr _e1528515350_)))
                                        (if (gx#identifier? _hd1528615353_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1528615353_)
                                                (if (gx#stx-pair?
                                                     _tl1528715355_)
                                                    (let ((_e1528815358_
                                                           (gx#stx-e
                                                            _tl1528715355_)))
                                                      (let ((_hd1528915361_
                                                             (##car _e1528815358_))
                                                            (_tl1529015363_
                                                             (##cdr _e1528815358_)))
                                                        (if (gx#stx-null?
                                                             _tl1529015363_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1528415347_)
                        (let ((_e1529115366_ (gx#stx-e _tl1528415347_)))
                          (let ((_hd1529215369_ (##car _e1529115366_))
                                (_tl1529315371_ (##cdr _e1529115366_)))
                            (if (gx#stx-pair? _hd1529215369_)
                                (let ((_e1529415374_
                                       (gx#stx-e _hd1529215369_)))
                                  (let ((_hd1529515377_ (##car _e1529415374_))
                                        (_tl1529615379_ (##cdr _e1529415374_)))
                                    (if (gx#identifier? _hd1529515377_)
                                        (if (gx#stx-eq? '%#ref _hd1529515377_)
                                            (if (gx#stx-pair? _tl1529615379_)
                                                (let ((_e1529715382_
                                                       (gx#stx-e
                                                        _tl1529615379_)))
                                                  (let ((_hd1529815385_
                                                         (##car _e1529715382_))
                                                        (_tl1529915387_
                                                         (##cdr _e1529715382_)))
                                                    (if (gx#stx-null?
                                                         _tl1529915387_)
                                                        (if (gx#stx-pair?
                                                             _tl1529315371_)
                                                            (let ((_e1530015390_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1529315371_)))
                      (let ((_hd1530115393_ (##car _e1530015390_))
                            (_tl1530215395_ (##cdr _e1530015390_)))
                        (if (gx#stx-pair? _hd1530115393_)
                            (let ((_e1530315398_ (gx#stx-e _hd1530115393_)))
                              (let ((_hd1530415401_ (##car _e1530315398_))
                                    (_tl1530515403_ (##cdr _e1530315398_)))
                                (if (gx#identifier? _hd1530415401_)
                                    (if (gx#stx-eq? '%#quote _hd1530415401_)
                                        (if (gx#stx-pair? _tl1530515403_)
                                            (let ((_e1530615406_
                                                   (gx#stx-e _tl1530515403_)))
                                              (let ((_hd1530715409_
                                                     (##car _e1530615406_))
                                                    (_tl1530815411_
                                                     (##cdr _e1530615406_)))
                                                (if (gx#stx-null?
                                                     _tl1530815411_)
                                                    (if (gx#stx-pair?
                                                         _tl1530215395_)
                                                        (let ((_e1530915414_
                                                               (gx#stx-e
                                                                _tl1530215395_)))
                                                          (let ((_hd1531015417_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1530915414_))
                        (_tl1531115419_ (##cdr _e1530915414_)))
                    (if (gx#stx-pair? _hd1531015417_)
                        (let ((_e1531215422_ (gx#stx-e _hd1531015417_)))
                          (let ((_hd1531315425_ (##car _e1531215422_))
                                (_tl1531415427_ (##cdr _e1531215422_)))
                            (if (gx#identifier? _hd1531315425_)
                                (if (gx#stx-eq? '%#ref _hd1531315425_)
                                    (if (gx#stx-pair? _tl1531415427_)
                                        (let ((_e1531515430_
                                               (gx#stx-e _tl1531415427_)))
                                          (let ((_hd1531615433_
                                                 (##car _e1531515430_))
                                                (_tl1531715435_
                                                 (##cdr _e1531515430_)))
                                            (if (gx#stx-null? _tl1531715435_)
                                                (if (gx#stx-null?
                                                     _tl1531115419_)
                                                    ((lambda (_L15438_
                                                              _L15439_
                                                              _L15440_
                                                              _L15441_)
                                                       (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax__0 '#f '-bind-method))
                        'bind-method!)
                   (gxc#optimizer-declare-method!__opt-lambda20601
                    (gxc#generate-runtime-binding-id _L15440_)
                    (gx#stx-e _L15439_)
                    (gxc#generate-runtime-binding-id _L15438_)
                    '#f)
                   (_g1521915329_ _g1522115332_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd1531615433_
                                                     _hd1530715409_
                                                     _hd1529815385_
                                                     _hd1528915361_)
                                                    (_g1521915329_
                                                     _g1522115332_))
                                                (_g1521915329_
                                                 _g1522115332_))))
                                        (_g1521915329_ _g1522115332_))
                                    (_g1521915329_ _g1522115332_))
                                (_g1521915329_ _g1522115332_))))
                        (_g1521915329_ _g1522115332_))))
                (_g1521915329_ _g1522115332_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1521915329_
                                                     _g1522115332_))))
                                            (_g1521915329_ _g1522115332_))
                                        (_g1521915329_ _g1522115332_))
                                    (_g1521915329_ _g1522115332_))))
                            (_g1521915329_ _g1522115332_))))
                    (_g1521915329_ _g1522115332_))
                (_g1521915329_ _g1522115332_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1521915329_ _g1522115332_))
                                            (_g1521915329_ _g1522115332_))
                                        (_g1521915329_ _g1522115332_))))
                                (_g1521915329_ _g1522115332_))))
                        (_g1521915329_ _g1522115332_))
                    (_g1521915329_ _g1522115332_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1521915329_
                                                     _g1522115332_))
                                                (_g1521915329_ _g1522115332_))
                                            (_g1521915329_ _g1522115332_))))
                                    (_g1521915329_ _g1522115332_))))
                            (_g1521915329_ _g1522115332_))))
                    (_g1521915329_ _g1522115332_))))
             (_g1521715659_
              (lambda (_g1522115482_)
                (if (gx#stx-pair? _g1522115482_)
                    (let ((_e1522715484_ (gx#stx-e _g1522115482_)))
                      (let ((_hd1522815487_ (##car _e1522715484_))
                            (_tl1522915489_ (##cdr _e1522715484_)))
                        (if (gx#stx-pair? _tl1522915489_)
                            (let ((_e1523015492_ (gx#stx-e _tl1522915489_)))
                              (let ((_hd1523115495_ (##car _e1523015492_))
                                    (_tl1523215497_ (##cdr _e1523015492_)))
                                (if (gx#stx-pair? _hd1523115495_)
                                    (let ((_e1523315500_
                                           (gx#stx-e _hd1523115495_)))
                                      (let ((_hd1523415503_
                                             (##car _e1523315500_))
                                            (_tl1523515505_
                                             (##cdr _e1523315500_)))
                                        (if (gx#identifier? _hd1523415503_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1523415503_)
                                                (if (gx#stx-pair?
                                                     _tl1523515505_)
                                                    (let ((_e1523615508_
                                                           (gx#stx-e
                                                            _tl1523515505_)))
                                                      (let ((_hd1523715511_
                                                             (##car _e1523615508_))
                                                            (_tl1523815513_
                                                             (##cdr _e1523615508_)))
                                                        (if (gx#stx-null?
                                                             _tl1523815513_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1523215497_)
                        (let ((_e1523915516_ (gx#stx-e _tl1523215497_)))
                          (let ((_hd1524015519_ (##car _e1523915516_))
                                (_tl1524115521_ (##cdr _e1523915516_)))
                            (if (gx#stx-pair? _hd1524015519_)
                                (let ((_e1524215524_
                                       (gx#stx-e _hd1524015519_)))
                                  (let ((_hd1524315527_ (##car _e1524215524_))
                                        (_tl1524415529_ (##cdr _e1524215524_)))
                                    (if (gx#identifier? _hd1524315527_)
                                        (if (gx#stx-eq? '%#ref _hd1524315527_)
                                            (if (gx#stx-pair? _tl1524415529_)
                                                (let ((_e1524515532_
                                                       (gx#stx-e
                                                        _tl1524415529_)))
                                                  (let ((_hd1524615535_
                                                         (##car _e1524515532_))
                                                        (_tl1524715537_
                                                         (##cdr _e1524515532_)))
                                                    (if (gx#stx-null?
                                                         _tl1524715537_)
                                                        (if (gx#stx-pair?
                                                             _tl1524115521_)
                                                            (let ((_e1524815540_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1524115521_)))
                      (let ((_hd1524915543_ (##car _e1524815540_))
                            (_tl1525015545_ (##cdr _e1524815540_)))
                        (if (gx#stx-pair? _hd1524915543_)
                            (let ((_e1525115548_ (gx#stx-e _hd1524915543_)))
                              (let ((_hd1525215551_ (##car _e1525115548_))
                                    (_tl1525315553_ (##cdr _e1525115548_)))
                                (if (gx#identifier? _hd1525215551_)
                                    (if (gx#stx-eq? '%#quote _hd1525215551_)
                                        (if (gx#stx-pair? _tl1525315553_)
                                            (let ((_e1525415556_
                                                   (gx#stx-e _tl1525315553_)))
                                              (let ((_hd1525515559_
                                                     (##car _e1525415556_))
                                                    (_tl1525615561_
                                                     (##cdr _e1525415556_)))
                                                (if (gx#stx-null?
                                                     _tl1525615561_)
                                                    (if (gx#stx-pair?
                                                         _tl1525015545_)
                                                        (let ((_e1525715564_
                                                               (gx#stx-e
                                                                _tl1525015545_)))
                                                          (let ((_hd1525815567_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1525715564_))
                        (_tl1525915569_ (##cdr _e1525715564_)))
                    (if (gx#stx-pair? _hd1525815567_)
                        (let ((_e1526015572_ (gx#stx-e _hd1525815567_)))
                          (let ((_hd1526115575_ (##car _e1526015572_))
                                (_tl1526215577_ (##cdr _e1526015572_)))
                            (if (gx#identifier? _hd1526115575_)
                                (if (gx#stx-eq? '%#ref _hd1526115575_)
                                    (if (gx#stx-pair? _tl1526215577_)
                                        (let ((_e1526315580_
                                               (gx#stx-e _tl1526215577_)))
                                          (let ((_hd1526415583_
                                                 (##car _e1526315580_))
                                                (_tl1526515585_
                                                 (##cdr _e1526315580_)))
                                            (if (gx#stx-null? _tl1526515585_)
                                                (if (gx#stx-pair?
                                                     _tl1525915569_)
                                                    (let ((_e1526615588_
                                                           (gx#stx-e
                                                            _tl1525915569_)))
                                                      (let ((_hd1526715591_
                                                             (##car _e1526615588_))
                                                            (_tl1526815593_
                                                             (##cdr _e1526615588_)))
                                                        (if (gx#stx-pair?
                                                             _hd1526715591_)
                                                            (let ((_e1526915596_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1526715591_)))
                      (let ((_hd1527015599_ (##car _e1526915596_))
                            (_tl1527115601_ (##cdr _e1526915596_)))
                        (if (gx#identifier? _hd1527015599_)
                            (if (gx#stx-eq? '%#quote _hd1527015599_)
                                (if (gx#stx-pair? _tl1527115601_)
                                    (let ((_e1527215604_
                                           (gx#stx-e _tl1527115601_)))
                                      (let ((_hd1527315607_
                                             (##car _e1527215604_))
                                            (_tl1527415609_
                                             (##cdr _e1527215604_)))
                                        (if (gx#stx-null? _tl1527415609_)
                                            (if (gx#stx-null? _tl1526815593_)
                                                ((lambda (_L15612_
                                                          _L15613_
                                                          _L15614_
                                                          _L15615_
                                                          _L15616_)
                                                   (if (eq? (gxc#generate-runtime-binding-id
                                                             _L15616_)
                                                            'bind-method!)
                                                       (gxc#optimizer-declare-method!__opt-lambda20601
                                                        (gxc#generate-runtime-binding-id
                                                         _L15615_)
                                                        (gx#stx-e _L15614_)
                                                        (gxc#generate-runtime-binding-id
                                                         _L15613_)
                                                        (gx#stx-e _L15612_))
                                                       (_g1521815479_
                                                        _g1522115482_)))
                                                 _hd1527315607_
                                                 _hd1526415583_
                                                 _hd1525515559_
                                                 _hd1524615535_
                                                 _hd1523715511_)
                                                (_g1521815479_ _g1522115482_))
                                            (_g1521815479_ _g1522115482_))))
                                    (_g1521815479_ _g1522115482_))
                                (_g1521815479_ _g1522115482_))
                            (_g1521815479_ _g1522115482_))))
                    (_g1521815479_ _g1522115482_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1521815479_
                                                     _g1522115482_))
                                                (_g1521815479_
                                                 _g1522115482_))))
                                        (_g1521815479_ _g1522115482_))
                                    (_g1521815479_ _g1522115482_))
                                (_g1521815479_ _g1522115482_))))
                        (_g1521815479_ _g1522115482_))))
                (_g1521815479_ _g1522115482_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1521815479_
                                                     _g1522115482_))))
                                            (_g1521815479_ _g1522115482_))
                                        (_g1521815479_ _g1522115482_))
                                    (_g1521815479_ _g1522115482_))))
                            (_g1521815479_ _g1522115482_))))
                    (_g1521815479_ _g1522115482_))
                (_g1521815479_ _g1522115482_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1521815479_ _g1522115482_))
                                            (_g1521815479_ _g1522115482_))
                                        (_g1521815479_ _g1522115482_))))
                                (_g1521815479_ _g1522115482_))))
                        (_g1521815479_ _g1522115482_))
                    (_g1521815479_ _g1522115482_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1521815479_
                                                     _g1522115482_))
                                                (_g1521815479_ _g1522115482_))
                                            (_g1521815479_ _g1522115482_))))
                                    (_g1521815479_ _g1522115482_))))
                            (_g1521815479_ _g1522115482_))))
                    (_g1521815479_ _g1522115482_)))))
        (_g1521715659_ _stx15216_))))
  (define gxc#basic-expression-type-begin%
    (lambda (_stx15156_)
      (let* ((_g1515915172_
              (lambda (_g1516015169_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1516015169_)))
             (_g1515815179_ (lambda (_g1516015175_) ((lambda () '#f))))
             (_g1515715213_
              (lambda (_g1516015182_)
                (if (gx#stx-pair? _g1516015182_)
                    (let ((_e1516215184_ (gx#stx-e _g1516015182_)))
                      (let ((_hd1516315187_ (##car _e1516215184_))
                            (_tl1516415189_ (##cdr _e1516215184_)))
                        (if (gx#stx-pair? _tl1516415189_)
                            (let ((_e1516515192_ (gx#stx-e _tl1516415189_)))
                              (let ((_hd1516615195_ (##car _e1516515192_))
                                    (_tl1516715197_ (##cdr _e1516515192_)))
                                (if (gx#stx-null? _tl1516715197_)
                                    ((lambda (_L15200_)
                                       (gxc#compile-e _L15200_))
                                     _hd1516615195_)
                                    (_g1515815179_ _g1516015182_))))
                            (_g1515815179_ _g1516015182_))))
                    (_g1515815179_ _g1516015182_)))))
        (_g1515715213_ _stx15156_))))
  (define gxc#basic-expression-type-begin-annotation%
    (lambda (_stx15089_)
      (let* ((_g1509115108_
              (lambda (_g1509215105_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1509215105_)))
             (_g1509015153_
              (lambda (_g1509215111_)
                (if (gx#stx-pair? _g1509215111_)
                    (let ((_e1509515113_ (gx#stx-e _g1509215111_)))
                      (let ((_hd1509615116_ (##car _e1509515113_))
                            (_tl1509715118_ (##cdr _e1509515113_)))
                        (if (gx#stx-pair? _tl1509715118_)
                            (let ((_e1509815121_ (gx#stx-e _tl1509715118_)))
                              (let ((_hd1509915124_ (##car _e1509815121_))
                                    (_tl1510015126_ (##cdr _e1509815121_)))
                                (if (gx#stx-pair? _tl1510015126_)
                                    (let ((_e1510115129_
                                           (gx#stx-e _tl1510015126_)))
                                      (let ((_hd1510215132_
                                             (##car _e1510115129_))
                                            (_tl1510315134_
                                             (##cdr _e1510115129_)))
                                        (if (gx#stx-null? _tl1510315134_)
                                            ((lambda (_L15137_ _L15138_)
                                               (gxc#compile-e _L15137_))
                                             _hd1510215132_
                                             _hd1509915124_)
                                            (_g1509115108_ _g1509215111_))))
                                    (_g1509115108_ _g1509215111_))))
                            (_g1509115108_ _g1509215111_))))
                    (_g1509115108_ _g1509215111_)))))
        (_g1509015153_ _stx15089_))))
  (define gxc#basic-expression-type-lambda%
    (lambda (_stx14514_)
      (let* ((_g1451914640_
              (lambda (_g1452014637_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1452014637_)))
             (_g1451814647_ (lambda (_g1452014643_) ((lambda () '#f))))
             (_g1451714671_
              (lambda (_g1452014650_)
                (if (gx#stx-pair? _g1452014650_)
                    (let ((_e1463314652_ (gx#stx-e _g1452014650_)))
                      (let ((_hd1463414655_ (##car _e1463314652_))
                            (_tl1463514657_ (##cdr _e1463314652_)))
                        ((lambda (_L14660_)
                           (if (gxc#dispatch-lambda-form? _L14660_)
                               (let ((__obj20853
                                      (make-object gxc#!lambda::t '5)))
                                 (begin
                                   (gxc#!lambda:::init!__0
                                    __obj20853
                                    'lambda
                                    (gxc#lambda-form-arity _L14660_)
                                    (gxc#dispatch-lambda-form-delegate
                                     _L14660_))
                                   __obj20853))
                               (_g1451814647_ _g1452014650_)))
                         _tl1463514657_)))
                    (_g1451814647_ _g1452014650_))))
             (_g1451614901_
              (lambda (_g1452014674_)
                (if (gx#stx-pair? _g1452014674_)
                    (let ((_e1457814676_ (gx#stx-e _g1452014674_)))
                      (let ((_hd1457914679_ (##car _e1457814676_))
                            (_tl1458014681_ (##cdr _e1457814676_)))
                        (if (gx#stx-pair? _tl1458014681_)
                            (let ((_e1458114684_ (gx#stx-e _tl1458014681_)))
                              (let ((_hd1458214687_ (##car _e1458114684_))
                                    (_tl1458314689_ (##cdr _e1458114684_)))
                                (if (gx#stx-pair/null? _hd1458214687_)
                                    (if (fx>= (gx#stx-length _hd1458214687_)
                                              '0)
                                        (let ((_g20915_
                                               (gx#syntax-split-splice
                                                _hd1458214687_
                                                '0)))
                                          (begin
                                            (let ((_g20916_
                                                   (values-count _g20915_)))
                                              (if (not (fx= _g20916_ 2))
                                                  (error "Context expects 2 values"
                                                         _g20916_)))
                                            (let ((_target1458414692_
                                                   (values-ref _g20915_ 0))
                                                  (_tl1458614694_
                                                   (values-ref _g20915_ 1)))
                                              (if (gx#stx-null? _tl1458614694_)
                                                  (letrec ((_loop1458714697_
                                                            (lambda (_hd1458514700_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _arg1459114702_)
                      (if (gx#stx-pair? _hd1458514700_)
                          (let ((_e1458814705_ (gx#stx-e _hd1458514700_)))
                            (let ((_lp-hd1458914708_ (##car _e1458814705_))
                                  (_lp-tl1459014710_ (##cdr _e1458814705_)))
                              (_loop1458714697_
                               _lp-tl1459014710_
                               (cons _lp-hd1458914708_ _arg1459114702_))))
                          (let ((_arg1459214713_ (reverse _arg1459114702_)))
                            (if (gx#stx-pair? _tl1458314689_)
                                (let ((_e1459314716_
                                       (gx#stx-e _tl1458314689_)))
                                  (let ((_hd1459414719_ (##car _e1459314716_))
                                        (_tl1459514721_ (##cdr _e1459314716_)))
                                    (if (gx#stx-pair? _hd1459414719_)
                                        (let ((_e1459614724_
                                               (gx#stx-e _hd1459414719_)))
                                          (let ((_hd1459714727_
                                                 (##car _e1459614724_))
                                                (_tl1459814729_
                                                 (##cdr _e1459614724_)))
                                            (if (gx#identifier? _hd1459714727_)
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _hd1459714727_)
                                                    (if (gx#stx-pair?
                                                         _tl1459814729_)
                                                        (let ((_e1459914732_
                                                               (gx#stx-e
                                                                _tl1459814729_)))
                                                          (let ((_hd1460014735_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1459914732_))
                        (_tl1460114737_ (##cdr _e1459914732_)))
                    (if (gx#stx-pair? _hd1460014735_)
                        (let ((_e1460214740_ (gx#stx-e _hd1460014735_)))
                          (let ((_hd1460314743_ (##car _e1460214740_))
                                (_tl1460414745_ (##cdr _e1460214740_)))
                            (if (gx#identifier? _hd1460314743_)
                                (if (gx#stx-eq? '%#ref _hd1460314743_)
                                    (if (gx#stx-pair? _tl1460414745_)
                                        (let ((_e1460514748_
                                               (gx#stx-e _tl1460414745_)))
                                          (let ((_hd1460614751_
                                                 (##car _e1460514748_))
                                                (_tl1460714753_
                                                 (##cdr _e1460514748_)))
                                            (if (gx#stx-null? _tl1460714753_)
                                                (if (gx#stx-pair?
                                                     _tl1460114737_)
                                                    (let ((_e1460814756_
                                                           (gx#stx-e
                                                            _tl1460114737_)))
                                                      (let ((_hd1460914759_
                                                             (##car _e1460814756_))
                                                            (_tl1461014761_
                                                             (##cdr _e1460814756_)))
                                                        (if (gx#stx-pair?
                                                             _hd1460914759_)
                                                            (let ((_e1461114764_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1460914759_)))
                      (let ((_hd1461214767_ (##car _e1461114764_))
                            (_tl1461314769_ (##cdr _e1461114764_)))
                        (if (gx#identifier? _hd1461214767_)
                            (if (gx#stx-eq? '%#ref _hd1461214767_)
                                (if (gx#stx-pair? _tl1461314769_)
                                    (let ((_e1461414772_
                                           (gx#stx-e _tl1461314769_)))
                                      (let ((_hd1461514775_
                                             (##car _e1461414772_))
                                            (_tl1461614777_
                                             (##cdr _e1461414772_)))
                                        (if (gx#stx-null? _tl1461614777_)
                                            (if (gx#stx-pair/null?
                                                 _tl1461014761_)
                                                (if (fx>= (gx#stx-length
                                                           _tl1461014761_)
                                                          '0)
                                                    (let ((_g20917_
                                                           (gx#syntax-split-splice
                                                            _tl1461014761_
                                                            '0)))
                                                      (begin
                                                        (let ((_g20918_
                                                               (values-count
                                                                _g20917_)))
                                                          (if (not (fx= _g20918_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                2))
                      (error "Context expects 2 values" _g20918_)))
                (let ((_target1461714780_ (values-ref _g20917_ 0))
                      (_tl1461914782_ (values-ref _g20917_ 1)))
                  (if (gx#stx-null? _tl1461914782_)
                      (letrec ((_loop1462014785_
                                (lambda (_hd1461814788_ _xarg1462414790_)
                                  (if (gx#stx-pair? _hd1461814788_)
                                      (let ((_e1462114793_
                                             (gx#stx-e _hd1461814788_)))
                                        (let ((_lp-hd1462214796_
                                               (##car _e1462114793_))
                                              (_lp-tl1462314798_
                                               (##cdr _e1462114793_)))
                                          (if (gx#stx-pair? _lp-hd1462214796_)
                                              (let ((_e1462614801_
                                                     (gx#stx-e
                                                      _lp-hd1462214796_)))
                                                (let ((_hd1462714804_
                                                       (##car _e1462614801_))
                                                      (_tl1462814806_
                                                       (##cdr _e1462614801_)))
                                                  (if (gx#identifier?
                                                       _hd1462714804_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _hd1462714804_)
                                                          (if (gx#stx-pair?
                                                               _tl1462814806_)
                                                              (let ((_e1462914809_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1462814806_)))
                        (let ((_hd1463014812_ (##car _e1462914809_))
                              (_tl1463114814_ (##cdr _e1462914809_)))
                          (if (gx#stx-null? _tl1463114814_)
                              (_loop1462014785_
                               _lp-tl1462314798_
                               (cons _hd1463014812_ _xarg1462414790_))
                              (_g1451714671_ _g1452014674_))))
                      (_g1451714671_ _g1452014674_))
                  (_g1451714671_ _g1452014674_))
              (_g1451714671_ _g1452014674_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1451714671_ _g1452014674_))))
                                      (let ((_xarg1462514817_
                                             (reverse _xarg1462414790_)))
                                        (if (gx#stx-null? _tl1459514721_)
                                            ((lambda (_L14820_
                                                      _L14821_
                                                      _L14822_
                                                      _L14823_)
                                               (if (if (gx#identifier-list?
                                                        (begin
                                                          '#!void
                                                          (foldr1 (lambda (_g1486014863_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g1486114865_)
                            (cons _g1486014863_ _g1486114865_))
                          '()
                          _L14823_)))
               (if (eq? (gxc#generate-runtime-binding-id _L14822_)
                        'make-struct-instance)
                   (if (fx= (length (begin
                                      '#!void
                                      (foldr1 (lambda (_g1486714870_
                                                       _g1486814872_)
                                                (cons _g1486714870_
                                                      _g1486814872_))
                                              '()
                                              _L14823_)))
                            (length (begin
                                      '#!void
                                      (foldr1 (lambda (_g1487414877_
                                                       _g1487514879_)
                                                (cons _g1487414877_
                                                      _g1487514879_))
                                              '()
                                              _L14820_))))
                       (andmap gx#free-identifier=?
                               (begin
                                 '#!void
                                 (foldr1 (lambda (_g1488114884_ _g1488214886_)
                                           (cons _g1488114884_ _g1488214886_))
                                         '()
                                         _L14823_))
                               (begin
                                 '#!void
                                 (foldr1 (lambda (_g1488814891_ _g1488914893_)
                                           (cons _g1488814891_ _g1488914893_))
                                         '()
                                         _L14820_)))
                       '#f)
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_type-t14896_
                                                           (gxc#generate-runtime-binding-id
                                                            _L14821_))
                                                          (_type14898_
                                                           (gxc#optimizer-resolve-type
                                                            _type-t14896_)))
                                                     (if (##structure-instance-of?
                                                          _type14898_
                                                          'gxc#!struct-type::t)
                                                         (##structure
                                                          gxc#!struct-cons::t
                                                          _type-t14896_)
                                                         '#f))
                                                   (_g1451714671_
                                                    _g1452014674_)))
                                             _xarg1462514817_
                                             _hd1461514775_
                                             _hd1460614751_
                                             _arg1459214713_)
                                            (_g1451714671_ _g1452014674_)))))))
                        (_loop1462014785_ _target1461714780_ '()))
                      (_g1451714671_ _g1452014674_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1451714671_
                                                     _g1452014674_))
                                                (_g1451714671_ _g1452014674_))
                                            (_g1451714671_ _g1452014674_))))
                                    (_g1451714671_ _g1452014674_))
                                (_g1451714671_ _g1452014674_))
                            (_g1451714671_ _g1452014674_))))
                    (_g1451714671_ _g1452014674_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1451714671_
                                                     _g1452014674_))
                                                (_g1451714671_
                                                 _g1452014674_))))
                                        (_g1451714671_ _g1452014674_))
                                    (_g1451714671_ _g1452014674_))
                                (_g1451714671_ _g1452014674_))))
                        (_g1451714671_ _g1452014674_))))
                (_g1451714671_ _g1452014674_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1451714671_
                                                     _g1452014674_))
                                                (_g1451714671_
                                                 _g1452014674_))))
                                        (_g1451714671_ _g1452014674_))))
                                (_g1451714671_ _g1452014674_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1458714697_
                                                     _target1458414692_
                                                     '()))
                                                  (_g1451714671_
                                                   _g1452014674_)))))
                                        (_g1451714671_ _g1452014674_))
                                    (_g1451714671_ _g1452014674_))))
                            (_g1451714671_ _g1452014674_))))
                    (_g1451714671_ _g1452014674_))))
             (_g1451515086_
              (lambda (_g1452014904_)
                (if (gx#stx-pair? _g1452014904_)
                    (let ((_e1452614906_ (gx#stx-e _g1452014904_)))
                      (let ((_hd1452714909_ (##car _e1452614906_))
                            (_tl1452814911_ (##cdr _e1452614906_)))
                        (if (gx#stx-pair? _tl1452814911_)
                            (let ((_e1452914914_ (gx#stx-e _tl1452814911_)))
                              (let ((_hd1453014917_ (##car _e1452914914_))
                                    (_tl1453114919_ (##cdr _e1452914914_)))
                                (if (gx#stx-pair? _tl1453114919_)
                                    (let ((_e1453214922_
                                           (gx#stx-e _tl1453114919_)))
                                      (let ((_hd1453314925_
                                             (##car _e1453214922_))
                                            (_tl1453414927_
                                             (##cdr _e1453214922_)))
                                        (if (gx#stx-pair? _hd1453314925_)
                                            (let ((_e1453514930_
                                                   (gx#stx-e _hd1453314925_)))
                                              (let ((_hd1453614933_
                                                     (##car _e1453514930_))
                                                    (_tl1453714935_
                                                     (##cdr _e1453514930_)))
                                                (if (gx#identifier?
                                                     _hd1453614933_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd1453614933_)
                                                        (if (gx#stx-pair?
                                                             _tl1453714935_)
                                                            (let ((_e1453814938_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1453714935_)))
                      (let ((_hd1453914941_ (##car _e1453814938_))
                            (_tl1454014943_ (##cdr _e1453814938_)))
                        (if (gx#stx-pair? _hd1453914941_)
                            (let ((_e1454114946_ (gx#stx-e _hd1453914941_)))
                              (let ((_hd1454214949_ (##car _e1454114946_))
                                    (_tl1454314951_ (##cdr _e1454114946_)))
                                (if (gx#identifier? _hd1454214949_)
                                    (if (gx#stx-eq? '%#ref _hd1454214949_)
                                        (if (gx#stx-pair? _tl1454314951_)
                                            (let ((_e1454414954_
                                                   (gx#stx-e _tl1454314951_)))
                                              (let ((_hd1454514957_
                                                     (##car _e1454414954_))
                                                    (_tl1454614959_
                                                     (##cdr _e1454414954_)))
                                                (if (gx#stx-null?
                                                     _tl1454614959_)
                                                    (if (gx#stx-pair?
                                                         _tl1454014943_)
                                                        (let ((_e1454714962_
                                                               (gx#stx-e
                                                                _tl1454014943_)))
                                                          (let ((_hd1454814965_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1454714962_))
                        (_tl1454914967_ (##cdr _e1454714962_)))
                    (if (gx#stx-pair? _hd1454814965_)
                        (let ((_e1455014970_ (gx#stx-e _hd1454814965_)))
                          (let ((_hd1455114973_ (##car _e1455014970_))
                                (_tl1455214975_ (##cdr _e1455014970_)))
                            (if (gx#identifier? _hd1455114973_)
                                (if (gx#stx-eq? '%#ref _hd1455114973_)
                                    (if (gx#stx-pair? _tl1455214975_)
                                        (let ((_e1455314978_
                                               (gx#stx-e _tl1455214975_)))
                                          (let ((_hd1455414981_
                                                 (##car _e1455314978_))
                                                (_tl1455514983_
                                                 (##cdr _e1455314978_)))
                                            (if (gx#stx-null? _tl1455514983_)
                                                (if (gx#stx-pair?
                                                     _tl1454914967_)
                                                    (let ((_e1455614986_
                                                           (gx#stx-e
                                                            _tl1454914967_)))
                                                      (let ((_hd1455714989_
                                                             (##car _e1455614986_))
                                                            (_tl1455814991_
                                                             (##cdr _e1455614986_)))
                                                        (if (gx#stx-pair?
                                                             _hd1455714989_)
                                                            (let ((_e1455914994_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1455714989_)))
                      (let ((_hd1456014997_ (##car _e1455914994_))
                            (_tl1456114999_ (##cdr _e1455914994_)))
                        (if (gx#identifier? _hd1456014997_)
                            (if (gx#stx-eq? '%#ref _hd1456014997_)
                                (if (gx#stx-pair? _tl1456114999_)
                                    (let ((_e1456215002_
                                           (gx#stx-e _tl1456114999_)))
                                      (let ((_hd1456315005_
                                             (##car _e1456215002_))
                                            (_tl1456415007_
                                             (##cdr _e1456215002_)))
                                        (if (gx#stx-null? _tl1456415007_)
                                            (if (gx#stx-pair? _tl1455814991_)
                                                (let ((_e1456515010_
                                                       (gx#stx-e
                                                        _tl1455814991_)))
                                                  (let ((_hd1456615013_
                                                         (##car _e1456515010_))
                                                        (_tl1456715015_
                                                         (##cdr _e1456515010_)))
                                                    (if (gx#stx-pair?
                                                         _hd1456615013_)
                                                        (let ((_e1456815018_
                                                               (gx#stx-e
                                                                _hd1456615013_)))
                                                          (let ((_hd1456915021_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1456815018_))
                        (_tl1457015023_ (##cdr _e1456815018_)))
                    (if (gx#identifier? _hd1456915021_)
                        (if (gx#stx-eq? '%#ref _hd1456915021_)
                            (if (gx#stx-pair? _tl1457015023_)
                                (let ((_e1457115026_
                                       (gx#stx-e _tl1457015023_)))
                                  (let ((_hd1457215029_ (##car _e1457115026_))
                                        (_tl1457315031_ (##cdr _e1457115026_)))
                                    (if (gx#stx-null? _tl1457315031_)
                                        (if (gx#stx-null? _tl1456715015_)
                                            (if (gx#stx-null? _tl1453414927_)
                                                ((lambda (_L15034_
                                                          _L15035_
                                                          _L15036_
                                                          _L15037_
                                                          _L15038_)
                                                   (if (if (gx#identifier?
                                                            _L15038_)
                                                           (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L15037_)
                            'apply)
                       (if (eq? (gxc#generate-runtime-binding-id _L15036_)
                                'make-struct-instance)
                           (gx#free-identifier=? _L15038_ _L15034_)
                           '#f)
                       '#f)
                   '#f)
               (let* ((_type-t15081_
                       (gxc#generate-runtime-binding-id _L15035_))
                      (_type15083_ (gxc#optimizer-resolve-type _type-t15081_)))
                 (if (##structure-instance-of?
                      _type15083_
                      'gxc#!struct-type::t)
                     (##structure gxc#!struct-cons::t _type-t15081_)
                     '#f))
               (_g1451614901_ _g1452014904_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1457215029_
                                                 _hd1456315005_
                                                 _hd1455414981_
                                                 _hd1454514957_
                                                 _hd1453014917_)
                                                (_g1451614901_ _g1452014904_))
                                            (_g1451614901_ _g1452014904_))
                                        (_g1451614901_ _g1452014904_))))
                                (_g1451614901_ _g1452014904_))
                            (_g1451614901_ _g1452014904_))
                        (_g1451614901_ _g1452014904_))))
                (_g1451614901_ _g1452014904_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1451614901_ _g1452014904_))
                                            (_g1451614901_ _g1452014904_))))
                                    (_g1451614901_ _g1452014904_))
                                (_g1451614901_ _g1452014904_))
                            (_g1451614901_ _g1452014904_))))
                    (_g1451614901_ _g1452014904_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1451614901_
                                                     _g1452014904_))
                                                (_g1451614901_
                                                 _g1452014904_))))
                                        (_g1451614901_ _g1452014904_))
                                    (_g1451614901_ _g1452014904_))
                                (_g1451614901_ _g1452014904_))))
                        (_g1451614901_ _g1452014904_))))
                (_g1451614901_ _g1452014904_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1451614901_
                                                     _g1452014904_))))
                                            (_g1451614901_ _g1452014904_))
                                        (_g1451614901_ _g1452014904_))
                                    (_g1451614901_ _g1452014904_))))
                            (_g1451614901_ _g1452014904_))))
                    (_g1451614901_ _g1452014904_))
                (_g1451614901_ _g1452014904_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1451614901_
                                                     _g1452014904_))))
                                            (_g1451614901_ _g1452014904_))))
                                    (_g1451614901_ _g1452014904_))))
                            (_g1451614901_ _g1452014904_))))
                    (_g1451614901_ _g1452014904_)))))
        (_g1451515086_ _stx14514_))))
  (define gxc#basic-expression-type-case-lambda%
    (lambda (_stx14460_)
      (letrec ((_clause-e14462_
                (lambda (_form14512_)
                  (let ((__obj20854 (make-object gxc#!lambda::t '5)))
                    (begin
                      (gxc#!lambda:::init!__0
                       __obj20854
                       'case-lambda-clause
                       (gxc#lambda-form-arity _form14512_)
                       (gxc#dispatch-lambda-form-delegate _form14512_))
                      __obj20854)))))
        (let* ((_g1446514475_
                (lambda (_g1446614472_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1446614472_)))
               (_g1446414482_ (lambda (_g1446614478_) ((lambda () '#f))))
               (_g1446314509_
                (lambda (_g1446614485_)
                  (if (gx#stx-pair? _g1446614485_)
                      (let ((_e1446814487_ (gx#stx-e _g1446614485_)))
                        (let ((_hd1446914490_ (##car _e1446814487_))
                              (_tl1447014492_ (##cdr _e1446814487_)))
                          ((lambda (_L14495_)
                             (if (andmap1 gxc#dispatch-lambda-form? _L14495_)
                                 (let ((_clauses14507_
                                        (map _clause-e14462_ _L14495_)))
                                   (##structure
                                    gxc#!case-lambda::t
                                    'case-lambda
                                    _clauses14507_))
                                 (_g1446414482_ _g1446614485_)))
                           _tl1447014492_)))
                      (_g1446414482_ _g1446614485_)))))
          (_g1446314509_ _stx14460_)))))
  (define gxc#basic-expression-type-builtin (make-hash-table-eq))
  (define gxc#basic-expression-type-call%
    (lambda (_stx14365_)
      (let* ((_g1436814388_
              (lambda (_g1436914385_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1436914385_)))
             (_g1436714395_ (lambda (_g1436914391_) ((lambda () '#f))))
             (_g1436614457_
              (lambda (_g1436914398_)
                (if (gx#stx-pair? _g1436914398_)
                    (let ((_e1437214400_ (gx#stx-e _g1436914398_)))
                      (let ((_hd1437314403_ (##car _e1437214400_))
                            (_tl1437414405_ (##cdr _e1437214400_)))
                        (if (gx#stx-pair? _tl1437414405_)
                            (let ((_e1437514408_ (gx#stx-e _tl1437414405_)))
                              (let ((_hd1437614411_ (##car _e1437514408_))
                                    (_tl1437714413_ (##cdr _e1437514408_)))
                                (if (gx#stx-pair? _hd1437614411_)
                                    (let ((_e1437814416_
                                           (gx#stx-e _hd1437614411_)))
                                      (let ((_hd1437914419_
                                             (##car _e1437814416_))
                                            (_tl1438014421_
                                             (##cdr _e1437814416_)))
                                        (if (gx#identifier? _hd1437914419_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1437914419_)
                                                (if (gx#stx-pair?
                                                     _tl1438014421_)
                                                    (let ((_e1438114424_
                                                           (gx#stx-e
                                                            _tl1438014421_)))
                                                      (let ((_hd1438214427_
                                                             (##car _e1438114424_))
                                                            (_tl1438314429_
                                                             (##cdr _e1438114424_)))
                                                        (if (gx#stx-null?
                                                             _tl1438314429_)
                                                            ((lambda (_L14432_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L14433_)
                       (let ((_type-e1445014452_
                              (table-ref
                               gxc#basic-expression-type-builtin
                               (gxc#generate-runtime-binding-id _L14433_)
                               '#f)))
                         (if _type-e1445014452_
                             (let ((_type-e14455_ _type-e1445014452_))
                               (_type-e14455_ _stx14365_ _L14432_))
                             '#f)))
                     _tl1437714413_
                     _hd1438214427_)
                    (_g1436714395_ _g1436914398_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1436714395_
                                                     _g1436914398_))
                                                (_g1436714395_ _g1436914398_))
                                            (_g1436714395_ _g1436914398_))))
                                    (_g1436714395_ _g1436914398_))))
                            (_g1436714395_ _g1436914398_))))
                    (_g1436714395_ _g1436914398_)))))
        (_g1436614457_ _stx14365_))))
  (define gxc#basic-expression-type-make-struct-type
    (lambda (_stx13850_ _args13851_)
      (let* ((_g1385513968_
              (lambda (_g1385613965_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1385613965_)))
             (_g1385413975_
              (lambda (_g1385613971_)
                ((lambda ()
                   (begin
                     (gxc#verbose
                      '"make-struct-type: can't infer type "
                      (gx#syntax->datum _stx13850_))
                     '#f)))))
             (_g1385314182_
              (lambda (_g1385613978_)
                (if (gx#stx-pair? _g1385613978_)
                    (let ((_e1391613980_ (gx#stx-e _g1385613978_)))
                      (let ((_hd1391713983_ (##car _e1391613980_))
                            (_tl1391813985_ (##cdr _e1391613980_)))
                        (if (gx#stx-pair? _hd1391713983_)
                            (let ((_e1391913988_ (gx#stx-e _hd1391713983_)))
                              (let ((_hd1392013991_ (##car _e1391913988_))
                                    (_tl1392113993_ (##cdr _e1391913988_)))
                                (if (gx#identifier? _hd1392013991_)
                                    (if (gx#stx-eq? '%#quote _hd1392013991_)
                                        (if (gx#stx-pair? _tl1392113993_)
                                            (let ((_e1392213996_
                                                   (gx#stx-e _tl1392113993_)))
                                              (let ((_hd1392313999_
                                                     (##car _e1392213996_))
                                                    (_tl1392414001_
                                                     (##cdr _e1392213996_)))
                                                (if (gx#stx-null?
                                                     _tl1392414001_)
                                                    (if (gx#stx-pair?
                                                         _tl1391813985_)
                                                        (let ((_e1392514004_
                                                               (gx#stx-e
                                                                _tl1391813985_)))
                                                          (let ((_hd1392614007_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1392514004_))
                        (_tl1392714009_ (##cdr _e1392514004_)))
                    (if (gx#stx-pair? _hd1392614007_)
                        (let ((_e1392814012_ (gx#stx-e _hd1392614007_)))
                          (let ((_hd1392914015_ (##car _e1392814012_))
                                (_tl1393014017_ (##cdr _e1392814012_)))
                            (if (gx#identifier? _hd1392914015_)
                                (if (gx#stx-eq? '%#ref _hd1392914015_)
                                    (if (gx#stx-pair? _tl1393014017_)
                                        (let ((_e1393114020_
                                               (gx#stx-e _tl1393014017_)))
                                          (let ((_hd1393214023_
                                                 (##car _e1393114020_))
                                                (_tl1393314025_
                                                 (##cdr _e1393114020_)))
                                            (if (gx#stx-null? _tl1393314025_)
                                                (if (gx#stx-pair?
                                                     _tl1392714009_)
                                                    (let ((_e1393414028_
                                                           (gx#stx-e
                                                            _tl1392714009_)))
                                                      (let ((_hd1393514031_
                                                             (##car _e1393414028_))
                                                            (_tl1393614033_
                                                             (##cdr _e1393414028_)))
                                                        (if (gx#stx-pair?
                                                             _hd1393514031_)
                                                            (let ((_e1393714036_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1393514031_)))
                      (let ((_hd1393814039_ (##car _e1393714036_))
                            (_tl1393914041_ (##cdr _e1393714036_)))
                        (if (gx#identifier? _hd1393814039_)
                            (if (gx#stx-eq? '%#quote _hd1393814039_)
                                (if (gx#stx-pair? _tl1393914041_)
                                    (let ((_e1394014044_
                                           (gx#stx-e _tl1393914041_)))
                                      (let ((_hd1394114047_
                                             (##car _e1394014044_))
                                            (_tl1394214049_
                                             (##cdr _e1394014044_)))
                                        (if (gx#stx-null? _tl1394214049_)
                                            (if (gx#stx-pair? _tl1393614033_)
                                                (let ((_e1394314052_
                                                       (gx#stx-e
                                                        _tl1393614033_)))
                                                  (let ((_hd1394414055_
                                                         (##car _e1394314052_))
                                                        (_tl1394514057_
                                                         (##cdr _e1394314052_)))
                                                    (if (gx#stx-pair?
                                                         _tl1394514057_)
                                                        (let ((_e1394614060_
                                                               (gx#stx-e
                                                                _tl1394514057_)))
                                                          (let ((_hd1394714063_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1394614060_))
                        (_tl1394814065_ (##cdr _e1394614060_)))
                    (if (gx#stx-pair? _hd1394714063_)
                        (let ((_e1394914068_ (gx#stx-e _hd1394714063_)))
                          (let ((_hd1395014071_ (##car _e1394914068_))
                                (_tl1395114073_ (##cdr _e1394914068_)))
                            (if (gx#identifier? _hd1395014071_)
                                (if (gx#stx-eq? '%#quote _hd1395014071_)
                                    (if (gx#stx-pair? _tl1395114073_)
                                        (let ((_e1395214076_
                                               (gx#stx-e _tl1395114073_)))
                                          (let ((_hd1395314079_
                                                 (##car _e1395214076_))
                                                (_tl1395414081_
                                                 (##cdr _e1395214076_)))
                                            (if (gx#stx-null? _tl1395414081_)
                                                (if (gx#stx-pair?
                                                     _tl1394814065_)
                                                    (let ((_e1395514084_
                                                           (gx#stx-e
                                                            _tl1394814065_)))
                                                      (let ((_hd1395614087_
                                                             (##car _e1395514084_))
                                                            (_tl1395714089_
                                                             (##cdr _e1395514084_)))
                                                        (if (gx#stx-pair?
                                                             _hd1395614087_)
                                                            (let ((_e1395814092_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1395614087_)))
                      (let ((_hd1395914095_ (##car _e1395814092_))
                            (_tl1396014097_ (##cdr _e1395814092_)))
                        (if (gx#identifier? _hd1395914095_)
                            (if (gx#stx-eq? '%#quote _hd1395914095_)
                                (if (gx#stx-pair? _tl1396014097_)
                                    (let ((_e1396114100_
                                           (gx#stx-e _tl1396014097_)))
                                      (let ((_hd1396214103_
                                             (##car _e1396114100_))
                                            (_tl1396314105_
                                             (##cdr _e1396114100_)))
                                        (if (gx#stx-null? _tl1396314105_)
                                            (if (gx#stx-null? _tl1395714089_)
                                                ((lambda (_L14108_
                                                          _L14109_
                                                          _L14110_
                                                          _L14111_
                                                          _L14112_
                                                          _L14113_)
                                                   (let* ((_super-t14159_
                                                           (if (gx#stx-e
                                                                _L14112_)
                                                               (gxc#generate-runtime-binding-id
                                                                _L14112_)
                                                               '#f))
                                                          (_super-type14161_
                                                           (if _super-t14159_
                                                               (gxc#optimizer-resolve-type
                                                                _super-t14159_)
                                                               '#f)))
                                                     (begin
                                                       (if (if _super-type14161_
                                                               (not (##structure-instance-of?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _super-type14161_
                             'gxc#!struct-type::t))
                       '#f)
                   (gxc#raise-compile-error
                    '"Illegal struct-type construction; invalid super type"
                    _stx13850_
                    _L14112_)
                   '#!void)
               (let ((_fields14177_ (gx#stx-e _L14111_))
                     (_xfields14178_
                      (if _super-type14161_
                          (let ((_super-fields1416314166_
                                 (##structure-ref
                                  _super-type14161_
                                  '3
                                  gxc#!struct-type::t
                                  '#f))
                                (_super-xfields1416414168_
                                 (##structure-ref
                                  _super-type14161_
                                  '4
                                  gxc#!struct-type::t
                                  '#f)))
                            (if _super-fields1416314166_
                                (if _super-xfields1416414168_
                                    (let ((_super-fields14171_
                                           _super-fields1416314166_)
                                          (_super-xfields14172_
                                           _super-xfields1416414168_))
                                      (fx+ _super-fields14171_
                                           _super-xfields14172_))
                                    '#f)
                                '#f))
                          '#f))
                     (_plist14179_ (gx#stx-e _L14109_))
                     (_ctor14180_
                      (let ((_$e14174_ (gx#stx-e _L14108_)))
                        (if _$e14174_
                            (values _$e14174_)
                            (if _super-type14161_
                                (##structure-ref
                                 _super-type14161_
                                 '5
                                 gxc#!struct-type::t
                                 '#f)
                                (if _super-t14159_ '#!void '#f))))))
                 (let ((__obj20855 (make-object gxc#!struct-type::t '7)))
                   (begin
                     (gxc#!struct-type:::init!
                      __obj20855
                      (gx#stx-e _L14113_)
                      _super-t14159_
                      _fields14177_
                      _xfields14178_
                      _ctor14180_
                      _plist14179_)
                     __obj20855))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1396214103_
                                                 _hd1395314079_
                                                 _hd1394414055_
                                                 _hd1394114047_
                                                 _hd1393214023_
                                                 _hd1392313999_)
                                                (_g1385413975_ _g1385613978_))
                                            (_g1385413975_ _g1385613978_))))
                                    (_g1385413975_ _g1385613978_))
                                (_g1385413975_ _g1385613978_))
                            (_g1385413975_ _g1385613978_))))
                    (_g1385413975_ _g1385613978_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1385413975_
                                                     _g1385613978_))
                                                (_g1385413975_
                                                 _g1385613978_))))
                                        (_g1385413975_ _g1385613978_))
                                    (_g1385413975_ _g1385613978_))
                                (_g1385413975_ _g1385613978_))))
                        (_g1385413975_ _g1385613978_))))
                (_g1385413975_ _g1385613978_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1385413975_ _g1385613978_))
                                            (_g1385413975_ _g1385613978_))))
                                    (_g1385413975_ _g1385613978_))
                                (_g1385413975_ _g1385613978_))
                            (_g1385413975_ _g1385613978_))))
                    (_g1385413975_ _g1385613978_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1385413975_
                                                     _g1385613978_))
                                                (_g1385413975_
                                                 _g1385613978_))))
                                        (_g1385413975_ _g1385613978_))
                                    (_g1385413975_ _g1385613978_))
                                (_g1385413975_ _g1385613978_))))
                        (_g1385413975_ _g1385613978_))))
                (_g1385413975_ _g1385613978_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1385413975_
                                                     _g1385613978_))))
                                            (_g1385413975_ _g1385613978_))
                                        (_g1385413975_ _g1385613978_))
                                    (_g1385413975_ _g1385613978_))))
                            (_g1385413975_ _g1385613978_))))
                    (_g1385413975_ _g1385613978_))))
             (_g1385214362_
              (lambda (_g1385614185_)
                (if (gx#stx-pair? _g1385614185_)
                    (let ((_e1386214187_ (gx#stx-e _g1385614185_)))
                      (let ((_hd1386314190_ (##car _e1386214187_))
                            (_tl1386414192_ (##cdr _e1386214187_)))
                        (if (gx#stx-pair? _hd1386314190_)
                            (let ((_e1386514195_ (gx#stx-e _hd1386314190_)))
                              (let ((_hd1386614198_ (##car _e1386514195_))
                                    (_tl1386714200_ (##cdr _e1386514195_)))
                                (if (gx#identifier? _hd1386614198_)
                                    (if (gx#stx-eq? '%#quote _hd1386614198_)
                                        (if (gx#stx-pair? _tl1386714200_)
                                            (let ((_e1386814203_
                                                   (gx#stx-e _tl1386714200_)))
                                              (let ((_hd1386914206_
                                                     (##car _e1386814203_))
                                                    (_tl1387014208_
                                                     (##cdr _e1386814203_)))
                                                (if (gx#stx-null?
                                                     _tl1387014208_)
                                                    (if (gx#stx-pair?
                                                         _tl1386414192_)
                                                        (let ((_e1387114211_
                                                               (gx#stx-e
                                                                _tl1386414192_)))
                                                          (let ((_hd1387214214_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1387114211_))
                        (_tl1387314216_ (##cdr _e1387114211_)))
                    (if (gx#stx-pair? _hd1387214214_)
                        (let ((_e1387414219_ (gx#stx-e _hd1387214214_)))
                          (let ((_hd1387514222_ (##car _e1387414219_))
                                (_tl1387614224_ (##cdr _e1387414219_)))
                            (if (gx#identifier? _hd1387514222_)
                                (if (gx#stx-eq? '%#quote _hd1387514222_)
                                    (if (gx#stx-pair? _tl1387614224_)
                                        (let ((_e1387714227_
                                               (gx#stx-e _tl1387614224_)))
                                          (let ((_hd1387814230_
                                                 (##car _e1387714227_))
                                                (_tl1387914232_
                                                 (##cdr _e1387714227_)))
                                            (if (gx#stx-datum? _hd1387814230_)
                                                (if (equal? (gx#stx-e
                                                             _hd1387814230_)
                                                            '#f)
                                                    (if (gx#stx-null?
                                                         _tl1387914232_)
                                                        (if (gx#stx-pair?
                                                             _tl1387314216_)
                                                            (let ((_e1388014235_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1387314216_)))
                      (let ((_hd1388114238_ (##car _e1388014235_))
                            (_tl1388214240_ (##cdr _e1388014235_)))
                        (if (gx#stx-pair? _hd1388114238_)
                            (let ((_e1388314243_ (gx#stx-e _hd1388114238_)))
                              (let ((_hd1388414246_ (##car _e1388314243_))
                                    (_tl1388514248_ (##cdr _e1388314243_)))
                                (if (gx#identifier? _hd1388414246_)
                                    (if (gx#stx-eq? '%#quote _hd1388414246_)
                                        (if (gx#stx-pair? _tl1388514248_)
                                            (let ((_e1388614251_
                                                   (gx#stx-e _tl1388514248_)))
                                              (let ((_hd1388714254_
                                                     (##car _e1388614251_))
                                                    (_tl1388814256_
                                                     (##cdr _e1388614251_)))
                                                (if (gx#stx-null?
                                                     _tl1388814256_)
                                                    (if (gx#stx-pair?
                                                         _tl1388214240_)
                                                        (let ((_e1388914259_
                                                               (gx#stx-e
                                                                _tl1388214240_)))
                                                          (let ((_hd1389014262_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1388914259_))
                        (_tl1389114264_ (##cdr _e1388914259_)))
                    (if (gx#stx-pair? _tl1389114264_)
                        (let ((_e1389214267_ (gx#stx-e _tl1389114264_)))
                          (let ((_hd1389314270_ (##car _e1389214267_))
                                (_tl1389414272_ (##cdr _e1389214267_)))
                            (if (gx#stx-pair? _hd1389314270_)
                                (let ((_e1389514275_
                                       (gx#stx-e _hd1389314270_)))
                                  (let ((_hd1389614278_ (##car _e1389514275_))
                                        (_tl1389714280_ (##cdr _e1389514275_)))
                                    (if (gx#identifier? _hd1389614278_)
                                        (if (gx#stx-eq?
                                             '%#quote
                                             _hd1389614278_)
                                            (if (gx#stx-pair? _tl1389714280_)
                                                (let ((_e1389814283_
                                                       (gx#stx-e
                                                        _tl1389714280_)))
                                                  (let ((_hd1389914286_
                                                         (##car _e1389814283_))
                                                        (_tl1390014288_
                                                         (##cdr _e1389814283_)))
                                                    (if (gx#stx-null?
                                                         _tl1390014288_)
                                                        (if (gx#stx-pair?
                                                             _tl1389414272_)
                                                            (let ((_e1390114291_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1389414272_)))
                      (let ((_hd1390214294_ (##car _e1390114291_))
                            (_tl1390314296_ (##cdr _e1390114291_)))
                        (if (gx#stx-pair? _hd1390214294_)
                            (let ((_e1390414299_ (gx#stx-e _hd1390214294_)))
                              (let ((_hd1390514302_ (##car _e1390414299_))
                                    (_tl1390614304_ (##cdr _e1390414299_)))
                                (if (gx#identifier? _hd1390514302_)
                                    (if (gx#stx-eq? '%#quote _hd1390514302_)
                                        (if (gx#stx-pair? _tl1390614304_)
                                            (let ((_e1390714307_
                                                   (gx#stx-e _tl1390614304_)))
                                              (let ((_hd1390814310_
                                                     (##car _e1390714307_))
                                                    (_tl1390914312_
                                                     (##cdr _e1390714307_)))
                                                (if (gx#stx-null?
                                                     _tl1390914312_)
                                                    (if (gx#stx-null?
                                                         _tl1390314296_)
                                                        ((lambda (_L14315_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L14316_
                          _L14317_
                          _L14318_
                          _L14319_)
                   (let ((__obj20856 (make-object gxc#!struct-type::t '7)))
                     (begin
                       (gxc#!struct-type:::init!
                        __obj20856
                        (gx#stx-e _L14319_)
                        '#f
                        (gx#stx-e _L14318_)
                        '0
                        (gx#stx-e _L14315_)
                        (gx#stx-e _L14316_))
                       __obj20856)))
                 _hd1390814310_
                 _hd1389914286_
                 _hd1389014262_
                 _hd1388714254_
                 _hd1386914206_)
                (_g1385314182_ _g1385614185_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1385314182_
                                                     _g1385614185_))))
                                            (_g1385314182_ _g1385614185_))
                                        (_g1385314182_ _g1385614185_))
                                    (_g1385314182_ _g1385614185_))))
                            (_g1385314182_ _g1385614185_))))
                    (_g1385314182_ _g1385614185_))
                (_g1385314182_ _g1385614185_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1385314182_ _g1385614185_))
                                            (_g1385314182_ _g1385614185_))
                                        (_g1385314182_ _g1385614185_))))
                                (_g1385314182_ _g1385614185_))))
                        (_g1385314182_ _g1385614185_))))
                (_g1385314182_ _g1385614185_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1385314182_
                                                     _g1385614185_))))
                                            (_g1385314182_ _g1385614185_))
                                        (_g1385314182_ _g1385614185_))
                                    (_g1385314182_ _g1385614185_))))
                            (_g1385314182_ _g1385614185_))))
                    (_g1385314182_ _g1385614185_))
                (_g1385314182_ _g1385614185_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1385314182_
                                                     _g1385614185_))
                                                (_g1385314182_
                                                 _g1385614185_))))
                                        (_g1385314182_ _g1385614185_))
                                    (_g1385314182_ _g1385614185_))
                                (_g1385314182_ _g1385614185_))))
                        (_g1385314182_ _g1385614185_))))
                (_g1385314182_ _g1385614185_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1385314182_
                                                     _g1385614185_))))
                                            (_g1385314182_ _g1385614185_))
                                        (_g1385314182_ _g1385614185_))
                                    (_g1385314182_ _g1385614185_))))
                            (_g1385314182_ _g1385614185_))))
                    (_g1385314182_ _g1385614185_)))))
        (_g1385214362_ _args13851_))))
  (define gxc#basic-expression-type-make-struct-predicate
    (lambda (_stx13776_ _args13777_)
      (let* ((_g1378013796_
              (lambda (_g1378113793_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1378113793_)))
             (_g1377913803_ (lambda (_g1378113799_) ((lambda () '#f))))
             (_g1377813847_
              (lambda (_g1378113806_)
                (if (gx#stx-pair? _g1378113806_)
                    (let ((_e1378313808_ (gx#stx-e _g1378113806_)))
                      (let ((_hd1378413811_ (##car _e1378313808_))
                            (_tl1378513813_ (##cdr _e1378313808_)))
                        (if (gx#stx-pair? _hd1378413811_)
                            (let ((_e1378613816_ (gx#stx-e _hd1378413811_)))
                              (let ((_hd1378713819_ (##car _e1378613816_))
                                    (_tl1378813821_ (##cdr _e1378613816_)))
                                (if (gx#identifier? _hd1378713819_)
                                    (if (gx#stx-eq? '%#ref _hd1378713819_)
                                        (if (gx#stx-pair? _tl1378813821_)
                                            (let ((_e1378913824_
                                                   (gx#stx-e _tl1378813821_)))
                                              (let ((_hd1379013827_
                                                     (##car _e1378913824_))
                                                    (_tl1379113829_
                                                     (##cdr _e1378913824_)))
                                                (if (gx#stx-null?
                                                     _tl1379113829_)
                                                    (if (gx#stx-null?
                                                         _tl1378513813_)
                                                        ((lambda (_L13832_)
                                                           (##structure
                                                            gxc#!struct-pred::t
                                                            (gxc#generate-runtime-binding-id
                                                             _L13832_)))
                                                         _hd1379013827_)
                                                        (_g1377913803_
                                                         _g1378113806_))
                                                    (_g1377913803_
                                                     _g1378113806_))))
                                            (_g1377913803_ _g1378113806_))
                                        (_g1377913803_ _g1378113806_))
                                    (_g1377913803_ _g1378113806_))))
                            (_g1377913803_ _g1378113806_))))
                    (_g1377913803_ _g1378113806_)))))
        (_g1377813847_ _args13777_))))
  (begin
    (define gxc#basic-expression-type-make-struct-field-accessor__opt-lambda13645
      (lambda (_stx13647_ _args13648_ _unchecked?13649_)
        (let* ((_g1365213678_
                (lambda (_g1365313675_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1365313675_)))
               (_g1365113685_ (lambda (_g1365313681_) ((lambda () '#f))))
               (_g1365013761_
                (lambda (_g1365313688_)
                  (if (gx#stx-pair? _g1365313688_)
                      (let ((_e1365613690_ (gx#stx-e _g1365313688_)))
                        (let ((_hd1365713693_ (##car _e1365613690_))
                              (_tl1365813695_ (##cdr _e1365613690_)))
                          (if (gx#stx-pair? _hd1365713693_)
                              (let ((_e1365913698_ (gx#stx-e _hd1365713693_)))
                                (let ((_hd1366013701_ (##car _e1365913698_))
                                      (_tl1366113703_ (##cdr _e1365913698_)))
                                  (if (gx#identifier? _hd1366013701_)
                                      (if (gx#stx-eq? '%#ref _hd1366013701_)
                                          (if (gx#stx-pair? _tl1366113703_)
                                              (let ((_e1366213706_
                                                     (gx#stx-e
                                                      _tl1366113703_)))
                                                (let ((_hd1366313709_
                                                       (##car _e1366213706_))
                                                      (_tl1366413711_
                                                       (##cdr _e1366213706_)))
                                                  (if (gx#stx-null?
                                                       _tl1366413711_)
                                                      (if (gx#stx-pair?
                                                           _tl1365813695_)
                                                          (let ((_e1366513714_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1365813695_)))
                    (let ((_hd1366613717_ (##car _e1366513714_))
                          (_tl1366713719_ (##cdr _e1366513714_)))
                      (if (gx#stx-pair? _hd1366613717_)
                          (let ((_e1366813722_ (gx#stx-e _hd1366613717_)))
                            (let ((_hd1366913725_ (##car _e1366813722_))
                                  (_tl1367013727_ (##cdr _e1366813722_)))
                              (if (gx#identifier? _hd1366913725_)
                                  (if (gx#stx-eq? '%#quote _hd1366913725_)
                                      (if (gx#stx-pair? _tl1367013727_)
                                          (let ((_e1367113730_
                                                 (gx#stx-e _tl1367013727_)))
                                            (let ((_hd1367213733_
                                                   (##car _e1367113730_))
                                                  (_tl1367313735_
                                                   (##cdr _e1367113730_)))
                                              (if (gx#stx-null? _tl1367313735_)
                                                  (if (gx#stx-null?
                                                       _tl1366713719_)
                                                      ((lambda (_L13738_
                                                                _L13739_)
                                                         (##structure
                                                          gxc#!struct-getf::t
                                                          (gxc#generate-runtime-binding-id
                                                           _L13739_)
                                                          (gx#stx-e _L13738_)
                                                          _unchecked?13649_))
                                                       _hd1367213733_
                                                       _hd1366313709_)
                                                      (_g1365113685_
                                                       _g1365313688_))
                                                  (_g1365113685_
                                                   _g1365313688_))))
                                          (_g1365113685_ _g1365313688_))
                                      (_g1365113685_ _g1365313688_))
                                  (_g1365113685_ _g1365313688_))))
                          (_g1365113685_ _g1365313688_))))
                  (_g1365113685_ _g1365313688_))
              (_g1365113685_ _g1365313688_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1365113685_ _g1365313688_))
                                          (_g1365113685_ _g1365313688_))
                                      (_g1365113685_ _g1365313688_))))
                              (_g1365113685_ _g1365313688_))))
                      (_g1365113685_ _g1365313688_)))))
          (_g1365013761_ _args13648_))))
    (begin
      (define gxc#basic-expression-type-make-struct-field-accessor__0
        (lambda (_stx13767_ _args13768_)
          (let ((_unchecked?13770_ '#f))
            (gxc#basic-expression-type-make-struct-field-accessor__opt-lambda13645
             _stx13767_
             _args13768_
             _unchecked?13770_))))
      (define gxc#basic-expression-type-make-struct-field-accessor
        (lambda _g20920_
          (let ((_g20919_ (length _g20920_)))
            (cond ((fx= _g20919_ 2)
                   (apply gxc#basic-expression-type-make-struct-field-accessor__0
                          _g20920_))
                  ((fx= _g20919_ 3)
                   (apply gxc#basic-expression-type-make-struct-field-accessor__opt-lambda13645
                          _g20920_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#basic-expression-type-make-struct-field-accessor
                    _g20920_))))))))
  (begin
    (define gxc#basic-expression-type-make-struct-field-mutator__opt-lambda13515
      (lambda (_stx13517_ _args13518_ _unchecked?13519_)
        (let* ((_g1352213548_
                (lambda (_g1352313545_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1352313545_)))
               (_g1352113555_ (lambda (_g1352313551_) ((lambda () '#f))))
               (_g1352013631_
                (lambda (_g1352313558_)
                  (if (gx#stx-pair? _g1352313558_)
                      (let ((_e1352613560_ (gx#stx-e _g1352313558_)))
                        (let ((_hd1352713563_ (##car _e1352613560_))
                              (_tl1352813565_ (##cdr _e1352613560_)))
                          (if (gx#stx-pair? _hd1352713563_)
                              (let ((_e1352913568_ (gx#stx-e _hd1352713563_)))
                                (let ((_hd1353013571_ (##car _e1352913568_))
                                      (_tl1353113573_ (##cdr _e1352913568_)))
                                  (if (gx#identifier? _hd1353013571_)
                                      (if (gx#stx-eq? '%#ref _hd1353013571_)
                                          (if (gx#stx-pair? _tl1353113573_)
                                              (let ((_e1353213576_
                                                     (gx#stx-e
                                                      _tl1353113573_)))
                                                (let ((_hd1353313579_
                                                       (##car _e1353213576_))
                                                      (_tl1353413581_
                                                       (##cdr _e1353213576_)))
                                                  (if (gx#stx-null?
                                                       _tl1353413581_)
                                                      (if (gx#stx-pair?
                                                           _tl1352813565_)
                                                          (let ((_e1353513584_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1352813565_)))
                    (let ((_hd1353613587_ (##car _e1353513584_))
                          (_tl1353713589_ (##cdr _e1353513584_)))
                      (if (gx#stx-pair? _hd1353613587_)
                          (let ((_e1353813592_ (gx#stx-e _hd1353613587_)))
                            (let ((_hd1353913595_ (##car _e1353813592_))
                                  (_tl1354013597_ (##cdr _e1353813592_)))
                              (if (gx#identifier? _hd1353913595_)
                                  (if (gx#stx-eq? '%#quote _hd1353913595_)
                                      (if (gx#stx-pair? _tl1354013597_)
                                          (let ((_e1354113600_
                                                 (gx#stx-e _tl1354013597_)))
                                            (let ((_hd1354213603_
                                                   (##car _e1354113600_))
                                                  (_tl1354313605_
                                                   (##cdr _e1354113600_)))
                                              (if (gx#stx-null? _tl1354313605_)
                                                  (if (gx#stx-null?
                                                       _tl1353713589_)
                                                      ((lambda (_L13608_
                                                                _L13609_)
                                                         (##structure
                                                          gxc#!struct-setf::t
                                                          (gxc#generate-runtime-binding-id
                                                           _L13609_)
                                                          (gx#stx-e _L13608_)
                                                          _unchecked?13519_))
                                                       _hd1354213603_
                                                       _hd1353313579_)
                                                      (_g1352113555_
                                                       _g1352313558_))
                                                  (_g1352113555_
                                                   _g1352313558_))))
                                          (_g1352113555_ _g1352313558_))
                                      (_g1352113555_ _g1352313558_))
                                  (_g1352113555_ _g1352313558_))))
                          (_g1352113555_ _g1352313558_))))
                  (_g1352113555_ _g1352313558_))
              (_g1352113555_ _g1352313558_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1352113555_ _g1352313558_))
                                          (_g1352113555_ _g1352313558_))
                                      (_g1352113555_ _g1352313558_))))
                              (_g1352113555_ _g1352313558_))))
                      (_g1352113555_ _g1352313558_)))))
          (_g1352013631_ _args13518_))))
    (begin
      (define gxc#basic-expression-type-make-struct-field-mutator__0
        (lambda (_stx13637_ _args13638_)
          (let ((_unchecked?13640_ '#f))
            (gxc#basic-expression-type-make-struct-field-mutator__opt-lambda13515
             _stx13637_
             _args13638_
             _unchecked?13640_))))
      (define gxc#basic-expression-type-make-struct-field-mutator
        (lambda _g20922_
          (let ((_g20921_ (length _g20922_)))
            (cond ((fx= _g20921_ 2)
                   (apply gxc#basic-expression-type-make-struct-field-mutator__0
                          _g20922_))
                  ((fx= _g20921_ 3)
                   (apply gxc#basic-expression-type-make-struct-field-mutator__opt-lambda13515
                          _g20922_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#basic-expression-type-make-struct-field-mutator
                    _g20922_))))))))
  (define gxc#basic-expression-type-make-struct-field-unchecked-accessor
    (lambda (_stx13513_ _args13514_)
      (gxc#basic-expression-type-make-struct-field-accessor__opt-lambda13645
       _stx13513_
       _args13514_
       '#t)))
  (define gxc#basic-expression-type-make-struct-field-unchecked-mutator
    (lambda (_stx13510_ _args13511_)
      (gxc#basic-expression-type-make-struct-field-mutator__opt-lambda13515
       _stx13510_
       _args13511_
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
    (lambda (_stx13459_)
      (let* ((_g1346113474_
              (lambda (_g1346213471_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1346213471_)))
             (_g1346013507_
              (lambda (_g1346213477_)
                (if (gx#stx-pair? _g1346213477_)
                    (let ((_e1346413479_ (gx#stx-e _g1346213477_)))
                      (let ((_hd1346513482_ (##car _e1346413479_))
                            (_tl1346613484_ (##cdr _e1346413479_)))
                        (if (gx#stx-pair? _tl1346613484_)
                            (let ((_e1346713487_ (gx#stx-e _tl1346613484_)))
                              (let ((_hd1346813490_ (##car _e1346713487_))
                                    (_tl1346913492_ (##cdr _e1346713487_)))
                                (if (gx#stx-null? _tl1346913492_)
                                    ((lambda (_L13495_)
                                       (gxc#optimizer-lookup-type
                                        (gxc#generate-runtime-binding-id
                                         _L13495_)))
                                     _hd1346813490_)
                                    (_g1346113474_ _g1346213477_))))
                            (_g1346113474_ _g1346213477_))))
                    (_g1346113474_ _g1346213477_)))))
        (_g1346013507_ _stx13459_))))
  (define gxc#optimize-call%
    (lambda (_stx13365_)
      (let* ((_g1336813388_
              (lambda (_g1336913385_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1336913385_)))
             (_g1336713395_
              (lambda (_g1336913391_)
                ((lambda () (gxc#xform-call% _stx13365_)))))
             (_g1336613456_
              (lambda (_g1336913398_)
                (if (gx#stx-pair? _g1336913398_)
                    (let ((_e1337213400_ (gx#stx-e _g1336913398_)))
                      (let ((_hd1337313403_ (##car _e1337213400_))
                            (_tl1337413405_ (##cdr _e1337213400_)))
                        (if (gx#stx-pair? _tl1337413405_)
                            (let ((_e1337513408_ (gx#stx-e _tl1337413405_)))
                              (let ((_hd1337613411_ (##car _e1337513408_))
                                    (_tl1337713413_ (##cdr _e1337513408_)))
                                (if (gx#stx-pair? _hd1337613411_)
                                    (let ((_e1337813416_
                                           (gx#stx-e _hd1337613411_)))
                                      (let ((_hd1337913419_
                                             (##car _e1337813416_))
                                            (_tl1338013421_
                                             (##cdr _e1337813416_)))
                                        (if (gx#identifier? _hd1337913419_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1337913419_)
                                                (if (gx#stx-pair?
                                                     _tl1338013421_)
                                                    (let ((_e1338113424_
                                                           (gx#stx-e
                                                            _tl1338013421_)))
                                                      (let ((_hd1338213427_
                                                             (##car _e1338113424_))
                                                            (_tl1338313429_
                                                             (##cdr _e1338113424_)))
                                                        (if (gx#stx-null?
                                                             _tl1338313429_)
                                                            ((lambda (_L13432_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L13433_)
                       (let* ((_rator-id13451_
                               (gxc#generate-runtime-binding-id _L13433_))
                              (_rator-type13453_
                               (gxc#optimizer-resolve-type _rator-id13451_)))
                         (if (##structure-instance-of?
                              _rator-type13453_
                              'gxc#!procedure::t)
                             (begin
                               (gxc#verbose
                                '"optimize-call "
                                _rator-id13451_
                                '" => "
                                _rator-type13453_
                                '" "
                                (##structure-ref
                                 _rator-type13453_
                                 '1
                                 gxc#!type::t
                                 '#f))
                               (call-method
                                _rator-type13453_
                                'optimize-call
                                _stx13365_
                                _L13432_))
                             (if (not _rator-type13453_)
                                 (gxc#xform-call% _stx13365_)
                                 (gxc#raise-compile-error
                                  '"Illegal application; not a procedure"
                                  _stx13365_
                                  _rator-type13453_)))))
                     _tl1337713413_
                     _hd1338213427_)
                    (_g1336713395_ _g1336913398_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1336713395_
                                                     _g1336913398_))
                                                (_g1336713395_ _g1336913398_))
                                            (_g1336713395_ _g1336913398_))))
                                    (_g1336713395_ _g1336913398_))))
                            (_g1336713395_ _g1336913398_))))
                    (_g1336713395_ _g1336913398_)))))
        (_g1336613456_ _stx13365_))))
  (define gxc#!struct-pred::optimize-call
    (lambda (_self13220_ _stx13221_ _args13222_)
      (let* ((_self1322313229_ _self13220_)
             (_E1322513233_
              (lambda () (error '"No clause matching" _self1322313229_)))
             (_K1322613357_
              (lambda (_struct-t13236_)
                (let* ((_struct-type13238_
                        (gxc#optimizer-resolve-type _struct-t13236_))
                       (_struct-type1323913253_ _struct-type13238_)
                       (_E1324313257_
                        (lambda ()
                          (error '"No clause matching"
                                 _struct-type1323913253_)))
                       (_else1324213261_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx13221_
                           _struct-t13236_
                           _struct-type13238_)))
                       (_try-match1324113269_
                        (lambda ()
                          (let ((_K1324413266_
                                 (lambda () (gxc#xform-call% _stx13221_))))
                            (if (##eq? _struct-type1323913253_ '#f)
                                (_K1324413266_)
                                (_else1324213261_)))))
                       (_K1324513332_
                        (lambda (_plist13272_ _struct-type-id13273_)
                          (let* ((_g1327613286_
                                  (lambda (_g1327713283_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g1327713283_)))
                                 (_g1327513293_
                                  (lambda (_g1327713289_)
                                    ((lambda ()
                                       (gxc#raise-compile-error
                                        '"Illegal struct predicate application"
                                        _stx13221_)))))
                                 (_g1327413329_
                                  (lambda (_g1327713296_)
                                    (if (gx#stx-pair? _g1327713296_)
                                        (let ((_e1327913298_
                                               (gx#stx-e _g1327713296_)))
                                          (let ((_hd1328013301_
                                                 (##car _e1327913298_))
                                                (_tl1328113303_
                                                 (##cdr _e1327913298_)))
                                            (if (gx#stx-null? _tl1328113303_)
                                                ((lambda (_L13306_)
                                                   (let ((_expr13326_
                                                          (gxc#compile-e
                                                           _L13306_))
                                                         (_op13327_
                                                          (if (if _plist13272_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (assgetq 'final: _plist13272_)
                          '#f)
                      '%#struct-direct-instance?
                      '%#struct-instance?)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gxc#xform-wrap-source
                                                      (cons _op13327_
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons _struct-type-id13273_ '()))
                          (cons _expr13326_ '())))
              _stx13221_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1328013301_)
                                                (_g1327513293_
                                                 _g1327713296_))))
                                        (_g1327513293_ _g1327713296_)))))
                            (_g1327413329_ _args13222_)))))
                  (if (##structure-instance-of?
                       _struct-type1323913253_
                       (##type-id gxc#!struct-type::t))
                      (let* ((_e1324613335_
                              (##vector-ref _struct-type1323913253_ '1))
                             (_struct-type-id13338_ _e1324613335_)
                             (_e1324713340_
                              (##vector-ref _struct-type1323913253_ '2))
                             (_e1324813343_
                              (##vector-ref _struct-type1323913253_ '3))
                             (_e1324913346_
                              (##vector-ref _struct-type1323913253_ '4))
                             (_e1325013349_
                              (##vector-ref _struct-type1323913253_ '5))
                             (_e1325113352_
                              (##vector-ref _struct-type1323913253_ '6))
                             (_plist13355_ _e1325113352_))
                        (_K1324513332_ _plist13355_ _struct-type-id13338_))
                      (_try-match1324113269_))))))
        (if (##structure-instance-of?
             _self1322313229_
             (##type-id gxc#!struct-pred::t))
            (let* ((_e1322713360_ (##vector-ref _self1322313229_ '1))
                   (_struct-t13363_ _e1322713360_))
              (_K1322613357_ _struct-t13363_))
            (_E1322513233_)))))
  (bind-method!
   gxc#!struct-pred::t
   'optimize-call
   gxc#!struct-pred::optimize-call
   '#f)
  (define gxc#!struct-cons::optimize-call
    (lambda (_self13116_ _stx13117_ _args13118_)
      (let* ((_self1311913125_ _self13116_)
             (_E1312113129_
              (lambda () (error '"No clause matching" _self1311913125_)))
             (_K1312213212_
              (lambda (_struct-t13132_)
                (let* ((_struct-type13134_
                        (gxc#optimizer-resolve-type _struct-t13132_))
                       (_struct-type1313513148_ _struct-type13134_)
                       (_E1313913152_
                        (lambda ()
                          (error '"No clause matching"
                                 _struct-type1313513148_)))
                       (_else1313813156_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct constructor application; not a struct type"
                           _stx13117_
                           _struct-t13132_
                           _struct-type13134_)))
                       (_try-match1313713164_
                        (lambda ()
                          (let ((_K1314013161_
                                 (lambda ()
                                   (begin
                                     (gxc#verbose
                                      '"cannot inline struct constructor; unknown struct type "
                                      _struct-t13132_)
                                     (gxc#xform-call% _stx13117_)))))
                            (if (##eq? _struct-type1313513148_ '#f)
                                (_K1314013161_)
                                (_else1313813156_)))))
                       (_K1314113186_
                        (lambda (_ctor13167_
                                 _xfields13168_
                                 _fields13169_
                                 _type-id13170_)
                          (let* ((_args13172_ (map gxc#compile-e _args13118_))
                                 (_$e13174_
                                  (if _ctor13167_
                                      (if _xfields13168_
                                          (gxc#!struct-type-lookup-method
                                           _struct-type13134_
                                           _ctor13167_)
                                          '#f)
                                      '#f)))
                            (if _$e13174_
                                ((lambda (_kons13177_)
                                   (let ((_$obj13179_
                                          (make-symbol (gensym '__obj))))
                                     (gxc#xform-wrap-source
                                      (cons '%#let-values
                                            (cons (cons (cons (cons _$obj13179_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (cons '%#call
                                  (cons (cons '%#ref (cons 'make-object '()))
                                        (cons (cons '%#ref
                                                    (cons _struct-t13132_ '()))
                                              (cons (cons '%#quote
                                                          (cons (fx+ _fields13169_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _xfields13168_)
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
                                    (cons (cons '%#ref (cons _kons13177_ '()))
                                          (cons (cons '%#ref
                                                      (cons _$obj13179_ '()))
                                                _args13172_)))
                              _stx13117_))
                            (cons (cons '%#ref (cons _$obj13179_ '())) '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _stx13117_)))
                                 _$e13174_)
                                (if (let ((_$e13181_ _ctor13167_))
                                      (if _$e13181_
                                          _$e13181_
                                          (not _xfields13168_)))
                                    (gxc#xform-wrap-source
                                     (cons '%#call
                                           (cons (cons '%#ref
                                                       (cons 'make-struct-instance
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _struct-t13132_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _args13172_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _stx13117_)
                                    (let ((_arity13184_
                                           (fx+ _fields13169_ _xfields13168_)))
                                      (if (fx= _arity13184_
                                               (length _args13172_))
                                          (gxc#xform-wrap-source
                                           (cons '%#call
                                                 (cons (cons '%#ref
                                                             (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons '%#ref (cons _struct-t13132_ '())) _args13172_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _stx13117_)
                                          (gxc#raise-compile-error
                                           '"Illegal struct constructor application; arity mismatch"
                                           _stx13117_
                                           _struct-t13132_
                                           _arity13184_)))))))))
                  (if (##structure-instance-of?
                       _struct-type1313513148_
                       (##type-id gxc#!struct-type::t))
                      (let* ((_e1314213189_
                              (##vector-ref _struct-type1313513148_ '1))
                             (_type-id13192_ _e1314213189_)
                             (_e1314313194_
                              (##vector-ref _struct-type1313513148_ '2))
                             (_e1314413197_
                              (##vector-ref _struct-type1313513148_ '3))
                             (_fields13200_ _e1314413197_)
                             (_e1314513202_
                              (##vector-ref _struct-type1313513148_ '4))
                             (_xfields13205_ _e1314513202_)
                             (_e1314613207_
                              (##vector-ref _struct-type1313513148_ '5))
                             (_ctor13210_ _e1314613207_))
                        (_K1314113186_
                         _ctor13210_
                         _xfields13205_
                         _fields13200_
                         _type-id13192_))
                      (_try-match1313713164_))))))
        (if (##structure-instance-of?
             _self1311913125_
             (##type-id gxc#!struct-cons::t))
            (let* ((_e1312313215_ (##vector-ref _self1311913125_ '1))
                   (_struct-t13218_ _e1312313215_))
              (_K1312213212_ _struct-t13218_))
            (_E1312113129_)))))
  (bind-method!
   gxc#!struct-cons::t
   'optimize-call
   gxc#!struct-cons::optimize-call
   '#f)
  (define gxc#!struct-getf::optimize-call
    (lambda (_self12950_ _stx12951_ _args12952_)
      (let* ((_self1295312961_ _self12950_)
             (_E1295512965_
              (lambda () (error '"No clause matching" _self1295312961_)))
             (_K1295613098_
              (lambda (_unchecked?12968_ _off12969_ _struct-t12970_)
                (let* ((_struct-type12972_
                        (gxc#optimizer-resolve-type _struct-t12970_))
                       (_struct-type1297312987_ _struct-type12972_)
                       (_E1297712991_
                        (lambda ()
                          (error '"No clause matching"
                                 _struct-type1297312987_)))
                       (_else1297612995_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx12951_
                           _struct-t12970_
                           _struct-type12972_)))
                       (_try-match1297513003_
                        (lambda ()
                          (let ((_K1297813000_
                                 (lambda () (gxc#xform-call% _stx12951_))))
                            (if (##eq? _struct-type1297312987_ '#f)
                                (_K1297813000_)
                                (_else1297612995_)))))
                       (_K1297913069_
                        (lambda (_plist13006_
                                 _xfields13007_
                                 _fields13008_
                                 _struct-type-id13009_)
                          (if _xfields13007_
                              (let* ((_g1301213022_
                                      (lambda (_g1301313019_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g1301313019_)))
                                     (_g1301113029_
                                      (lambda (_g1301313025_)
                                        ((lambda ()
                                           (gxc#raise-compile-error
                                            '"Illegal struct accessor application"
                                            _stx12951_)))))
                                     (_g1301013066_
                                      (lambda (_g1301313032_)
                                        (if (gx#stx-pair? _g1301313032_)
                                            (let ((_e1301513034_
                                                   (gx#stx-e _g1301313032_)))
                                              (let ((_hd1301613037_
                                                     (##car _e1301513034_))
                                                    (_tl1301713039_
                                                     (##cdr _e1301513034_)))
                                                (if (gx#stx-null?
                                                     _tl1301713039_)
                                                    ((lambda (_L13042_)
                                                       (let ((_expr13062_
                                                              (gxc#compile-e
                                                               _L13042_))
                                                             (_off13063_
                                                              (fx+ _off12969_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xfields13007_
                           '1))
                     (_op13064_
                      (if _unchecked?12968_
                          '%#struct-unchecked-ref
                          (if (if _plist13006_
                                  (assgetq 'final: _plist13006_)
                                  '#f)
                              '%#struct-direct-ref
                              '%#struct-ref))))
                 (gxc#xform-wrap-source
                  (cons _op13064_
                        (cons (cons '%#ref (cons _struct-t12970_ '()))
                              (cons (cons '%#quote (cons _off13063_ '()))
                                    (cons _expr13062_ '()))))
                  _stx12951_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd1301613037_)
                                                    (_g1301113029_
                                                     _g1301313032_))))
                                            (_g1301113029_ _g1301313032_)))))
                                (_g1301013066_ _args12952_))
                              (begin
                                (gxc#verbose
                                 '"struct-getf: incomplete struct "
                                 _struct-type-id13009_)
                                (gxc#xform-call% _stx12951_))))))
                  (if (##structure-instance-of?
                       _struct-type1297312987_
                       (##type-id gxc#!struct-type::t))
                      (let* ((_e1298013072_
                              (##vector-ref _struct-type1297312987_ '1))
                             (_struct-type-id13075_ _e1298013072_)
                             (_e1298113077_
                              (##vector-ref _struct-type1297312987_ '2))
                             (_e1298213080_
                              (##vector-ref _struct-type1297312987_ '3))
                             (_fields13083_ _e1298213080_)
                             (_e1298313085_
                              (##vector-ref _struct-type1297312987_ '4))
                             (_xfields13088_ _e1298313085_)
                             (_e1298413090_
                              (##vector-ref _struct-type1297312987_ '5))
                             (_e1298513093_
                              (##vector-ref _struct-type1297312987_ '6))
                             (_plist13096_ _e1298513093_))
                        (_K1297913069_
                         _plist13096_
                         _xfields13088_
                         _fields13083_
                         _struct-type-id13075_))
                      (_try-match1297513003_))))))
        (if (##structure-instance-of?
             _self1295312961_
             (##type-id gxc#!struct-getf::t))
            (let* ((_e1295713101_ (##vector-ref _self1295312961_ '1))
                   (_struct-t13104_ _e1295713101_)
                   (_e1295813106_ (##vector-ref _self1295312961_ '2))
                   (_off13109_ _e1295813106_)
                   (_e1295913111_ (##vector-ref _self1295312961_ '3))
                   (_unchecked?13114_ _e1295913111_))
              (_K1295613098_ _unchecked?13114_ _off13109_ _struct-t13104_))
            (_E1295512965_)))))
  (bind-method!
   gxc#!struct-getf::t
   'optimize-call
   gxc#!struct-getf::optimize-call
   '#f)
  (define gxc#!struct-setf::optimize-call
    (lambda (_self12767_ _stx12768_ _args12769_)
      (let* ((_self1277012778_ _self12767_)
             (_E1277212782_
              (lambda () (error '"No clause matching" _self1277012778_)))
             (_K1277312932_
              (lambda (_unchecked?12785_ _off12786_ _struct-t12787_)
                (let* ((_struct-type12789_
                        (gxc#optimizer-resolve-type _struct-t12787_))
                       (_struct-type1279012804_ _struct-type12789_)
                       (_E1279412808_
                        (lambda ()
                          (error '"No clause matching"
                                 _struct-type1279012804_)))
                       (_else1279312812_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx12768_
                           _struct-t12787_
                           _struct-type12789_)))
                       (_try-match1279212820_
                        (lambda ()
                          (let ((_K1279512817_
                                 (lambda () (gxc#xform-call% _stx12768_))))
                            (if (##eq? _struct-type1279012804_ '#f)
                                (_K1279512817_)
                                (_else1279312812_)))))
                       (_K1279612903_
                        (lambda (_plist12823_
                                 _xfields12824_
                                 _fields12825_
                                 _struct-type-id12826_)
                          (if _xfields12824_
                              (let* ((_g1282912843_
                                      (lambda (_g1283012840_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g1283012840_)))
                                     (_g1282812850_
                                      (lambda (_g1283012846_)
                                        ((lambda ()
                                           (gxc#raise-compile-error
                                            '"Illegal struct mutator application"
                                            _stx12768_)))))
                                     (_g1282712900_
                                      (lambda (_g1283012853_)
                                        (if (gx#stx-pair? _g1283012853_)
                                            (let ((_e1283312855_
                                                   (gx#stx-e _g1283012853_)))
                                              (let ((_hd1283412858_
                                                     (##car _e1283312855_))
                                                    (_tl1283512860_
                                                     (##cdr _e1283312855_)))
                                                (if (gx#stx-pair?
                                                     _tl1283512860_)
                                                    (let ((_e1283612863_
                                                           (gx#stx-e
                                                            _tl1283512860_)))
                                                      (let ((_hd1283712866_
                                                             (##car _e1283612863_))
                                                            (_tl1283812868_
                                                             (##cdr _e1283612863_)))
                                                        (if (gx#stx-null?
                                                             _tl1283812868_)
                                                            ((lambda (_L12871_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L12872_)
                       (let ((_expr12895_ (gxc#compile-e _L12872_))
                             (_val12896_ (gxc#compile-e _L12871_))
                             (_off12897_ (fx+ _off12786_ _xfields12824_ '1))
                             (_op12898_
                              (if _unchecked?12785_
                                  '%#struct-unchecked-set!
                                  (if (if _plist12823_
                                          (assgetq 'final: _plist12823_)
                                          '#f)
                                      '%#struct-direct-set!
                                      '%#struct-set!))))
                         (gxc#xform-wrap-source
                          (cons _op12898_
                                (cons (cons '%#ref (cons _struct-t12787_ '()))
                                      (cons (cons '%#quote
                                                  (cons _off12897_ '()))
                                            (cons _expr12895_
                                                  (cons _val12896_ '())))))
                          _stx12768_)))
                     _hd1283712866_
                     _hd1283412858_)
                    (_g1282812850_ _g1283012853_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1282812850_
                                                     _g1283012853_))))
                                            (_g1282812850_ _g1283012853_)))))
                                (_g1282712900_ _args12769_))
                              (begin
                                (gxc#verbose
                                 '"struct-setf: incomplete struct "
                                 _struct-type-id12826_)
                                (gxc#xform-call% _stx12768_))))))
                  (if (##structure-instance-of?
                       _struct-type1279012804_
                       (##type-id gxc#!struct-type::t))
                      (let* ((_e1279712906_
                              (##vector-ref _struct-type1279012804_ '1))
                             (_struct-type-id12909_ _e1279712906_)
                             (_e1279812911_
                              (##vector-ref _struct-type1279012804_ '2))
                             (_e1279912914_
                              (##vector-ref _struct-type1279012804_ '3))
                             (_fields12917_ _e1279912914_)
                             (_e1280012919_
                              (##vector-ref _struct-type1279012804_ '4))
                             (_xfields12922_ _e1280012919_)
                             (_e1280112924_
                              (##vector-ref _struct-type1279012804_ '5))
                             (_e1280212927_
                              (##vector-ref _struct-type1279012804_ '6))
                             (_plist12930_ _e1280212927_))
                        (_K1279612903_
                         _plist12930_
                         _xfields12922_
                         _fields12917_
                         _struct-type-id12909_))
                      (_try-match1279212820_))))))
        (if (##structure-instance-of?
             _self1277012778_
             (##type-id gxc#!struct-setf::t))
            (let* ((_e1277412935_ (##vector-ref _self1277012778_ '1))
                   (_struct-t12938_ _e1277412935_)
                   (_e1277512940_ (##vector-ref _self1277012778_ '2))
                   (_off12943_ _e1277512940_)
                   (_e1277612945_ (##vector-ref _self1277012778_ '3))
                   (_unchecked?12948_ _e1277612945_))
              (_K1277312932_ _unchecked?12948_ _off12943_ _struct-t12938_))
            (_E1277212782_)))))
  (bind-method!
   gxc#!struct-setf::t
   'optimize-call
   gxc#!struct-setf::optimize-call
   '#f)
  (define gxc#!lambda::optimize-call
    (lambda (_self12723_ _stx12724_ _args12725_)
      (let* ((_self1272612735_ _self12723_)
             (_E1272812739_
              (lambda () (error '"No clause matching" _self1272612735_)))
             (_K1272912746_
              (lambda (_inline12742_ _dispatch12743_ _arity12744_)
                (begin
                  (if (gxc#!lambda-arity-match? _self12723_ _args12725_)
                      '#!void
                      (gxc#raise-compile-error
                       '"Illegal lambda application; arity mismatch"
                       _stx12724_
                       _arity12744_))
                  (if _inline12742_
                      (begin
                        (gxc#verbose '"inline lambda")
                        (gxc#compile-e
                         (gxc#xform-wrap-source
                          (_inline12742_ _stx12724_)
                          _stx12724_)))
                      (if _dispatch12743_
                          (begin
                            (gxc#verbose
                             '"dispatch lambda => "
                             _dispatch12743_)
                            (gxc#compile-e
                             (gxc#xform-wrap-source
                              (cons '%#call
                                    (cons (cons '%#ref
                                                (cons _dispatch12743_ '()))
                                          _args12725_))
                              _stx12724_)))
                          (gxc#xform-call% _stx12724_)))))))
        (if (##structure-instance-of?
             _self1272612735_
             (##type-id gxc#!lambda::t))
            (let* ((_e1273012749_ (##vector-ref _self1272612735_ '1))
                   (_e1273112752_ (##vector-ref _self1272612735_ '2))
                   (_arity12755_ _e1273112752_)
                   (_e1273212757_ (##vector-ref _self1272612735_ '3))
                   (_dispatch12760_ _e1273212757_)
                   (_e1273312762_ (##vector-ref _self1272612735_ '4))
                   (_inline12765_ _e1273312762_))
              (_K1272912746_ _inline12765_ _dispatch12760_ _arity12755_))
            (_E1272812739_)))))
  (bind-method! gxc#!lambda::t 'optimize-call gxc#!lambda::optimize-call '#f)
  (define gxc#!case-lambda::optimize-call
    (lambda (_self12684_ _stx12685_ _args12686_)
      (let* ((_self1268712694_ _self12684_)
             (_E1268912698_
              (lambda () (error '"No clause matching" _self1268712694_)))
             (_K1269012712_
              (lambda (_clauses12701_)
                (let ((_$e12707_
                       (find (lambda (_g1270212704_)
                               (gxc#!lambda-arity-match?
                                _g1270212704_
                                _args12686_))
                             _clauses12701_)))
                  (if _$e12707_
                      ((lambda (_clause12710_)
                         (call-method
                          _clause12710_
                          'optimize-call
                          _stx12685_
                          _args12686_))
                       _$e12707_)
                      (gxc#raise-compile-error
                       '"Illegal case-lambda application; arity mismatch"
                       _stx12685_
                       (map gxc#!lambda-arity _clauses12701_)))))))
        (if (##structure-instance-of?
             _self1268712694_
             (##type-id gxc#!case-lambda::t))
            (let* ((_e1269112715_ (##vector-ref _self1268712694_ '1))
                   (_e1269212718_ (##vector-ref _self1268712694_ '2))
                   (_clauses12721_ _e1269212718_))
              (_K1269012712_ _clauses12721_))
            (_E1268912698_)))))
  (bind-method!
   gxc#!case-lambda::t
   'optimize-call
   gxc#!case-lambda::optimize-call
   '#f)
  (define gxc#!lambda-arity-match?
    (lambda (_self12620_ _args12621_)
      (let* ((_self1262212629_ _self12620_)
             (_E1262412633_
              (lambda () (error '"No clause matching" _self1262212629_)))
             (_K1262512673_
              (lambda (_arity12636_)
                (let* ((_arity1263712646_ _arity12636_)
                       (_E1264012650_
                        (lambda ()
                          (error '"No clause matching" _arity1263712646_)))
                       (_try-match1263912666_
                        (lambda ()
                          (let ((_K1264112656_
                                 (lambda (_arity12654_)
                                   (fx>= (length _args12621_) _arity12654_))))
                            (if (##pair? _arity1263712646_)
                                (let ((_hd1264212659_
                                       (##car _arity1263712646_))
                                      (_tl1264312661_
                                       (##cdr _arity1263712646_)))
                                  (let ((_arity12664_ _hd1264212659_))
                                    (if (##null? _tl1264312661_)
                                        (_K1264112656_ _arity12664_)
                                        (_E1264012650_))))
                                (_E1264012650_)))))
                       (_K1264412670_
                        (lambda () (fx= (length _args12621_) _arity12636_))))
                  (if (fixnum? _arity1263712646_)
                      (_K1264412670_)
                      (_try-match1263912666_))))))
        (if (##structure-instance-of?
             _self1262212629_
             (##type-id gxc#!lambda::t))
            (let* ((_e1262612676_ (##vector-ref _self1262212629_ '1))
                   (_e1262712679_ (##vector-ref _self1262212629_ '2))
                   (_arity12682_ _e1262712679_))
              (_K1262512673_ _arity12682_))
            (_E1262412633_)))))
  (define gxc#generate-ssxi-module%
    (lambda (_stx12560_)
      (let* ((_g1256212576_
              (lambda (_g1256312573_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1256312573_)))
             (_g1256112617_
              (lambda (_g1256312579_)
                (if (gx#stx-pair? _g1256312579_)
                    (let ((_e1256612581_ (gx#stx-e _g1256312579_)))
                      (let ((_hd1256712584_ (##car _e1256612581_))
                            (_tl1256812586_ (##cdr _e1256612581_)))
                        (if (gx#stx-pair? _tl1256812586_)
                            (let ((_e1256912589_ (gx#stx-e _tl1256812586_)))
                              (let ((_hd1257012592_ (##car _e1256912589_))
                                    (_tl1257112594_ (##cdr _e1256912589_)))
                                ((lambda (_L12597_ _L12598_)
                                   (let* ((_ctx12611_
                                           (gx#syntax-local-e__0 _L12598_))
                                          (_code12613_
                                           (##structure-ref
                                            _ctx12611_
                                            '11
                                            gx#module-context::t
                                            '#f)))
                                     (call-with-parameters
                                      (lambda () (gxc#compile-e _code12613_))
                                      gx#current-expander-context
                                      _ctx12611_)))
                                 _tl1257112594_
                                 _hd1257012592_)))
                            (_g1256212576_ _g1256312579_))))
                    (_g1256212576_ _g1256312579_)))))
        (_g1256112617_ _stx12560_))))
  (define gxc#generate-ssxi-define-values%
    (lambda (_stx12370_)
      (letrec ((_generate-e12372_
                (lambda (_id12549_)
                  (let* ((_sym12551_
                          (if (gx#identifier? (gx#datum->syntax__0 '#f 'id))
                              (gxc#generate-runtime-binding-id _id12549_)
                              '#f))
                         (_$e12553_
                          (if _sym12551_
                              (gxc#optimizer-lookup-type _sym12551_)
                              '#f)))
                    (if _$e12553_
                        ((lambda (_type12556_)
                           (begin
                             (gxc#verbose '"generate typedecl " _sym12551_)
                             (let ((_typedecl12558_
                                    (call-method _type12556_ 'typedecl)))
                               (cons 'declare-type
                                     (cons _sym12551_
                                           (cons _typedecl12558_ '()))))))
                         _$e12553_)
                        '(begin))))))
        (let* ((_g1237512413_
                (lambda (_g1237612410_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1237612410_)))
               (_g1237412494_
                (lambda (_g1237612416_)
                  (if (gx#stx-pair? _g1237612416_)
                      (let ((_e1239112418_ (gx#stx-e _g1237612416_)))
                        (let ((_hd1239212421_ (##car _e1239112418_))
                              (_tl1239312423_ (##cdr _e1239112418_)))
                          (if (gx#stx-pair? _tl1239312423_)
                              (let ((_e1239412426_ (gx#stx-e _tl1239312423_)))
                                (let ((_hd1239512429_ (##car _e1239412426_))
                                      (_tl1239612431_ (##cdr _e1239412426_)))
                                  (if (gx#stx-pair/null? _hd1239512429_)
                                      (if (fx>= (gx#stx-length _hd1239512429_)
                                                '0)
                                          (let ((_g20923_
                                                 (gx#syntax-split-splice
                                                  _hd1239512429_
                                                  '0)))
                                            (begin
                                              (let ((_g20924_
                                                     (values-count _g20923_)))
                                                (if (not (fx= _g20924_ 2))
                                                    (error "Context expects 2 values"
                                                           _g20924_)))
                                              (let ((_target1239712434_
                                                     (values-ref _g20923_ 0))
                                                    (_tl1239912436_
                                                     (values-ref _g20923_ 1)))
                                                (if (gx#stx-null?
                                                     _tl1239912436_)
                                                    (letrec ((_loop1240012439_
                                                              (lambda (_hd1239812442_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _id1240412444_)
                        (if (gx#stx-pair? _hd1239812442_)
                            (let ((_e1240112447_ (gx#stx-e _hd1239812442_)))
                              (let ((_lp-hd1240212450_ (##car _e1240112447_))
                                    (_lp-tl1240312452_ (##cdr _e1240112447_)))
                                (_loop1240012439_
                                 _lp-tl1240312452_
                                 (cons _lp-hd1240212450_ _id1240412444_))))
                            (let ((_id1240512455_ (reverse _id1240412444_)))
                              (if (gx#stx-pair? _tl1239612431_)
                                  (let ((_e1240612458_
                                         (gx#stx-e _tl1239612431_)))
                                    (let ((_hd1240712461_
                                           (##car _e1240612458_))
                                          (_tl1240812463_
                                           (##cdr _e1240612458_)))
                                      (if (gx#stx-null? _tl1240812463_)
                                          ((lambda (_L12466_)
                                             (let ((_types12492_
                                                    (map _generate-e12372_
                                                         (begin
                                                           '#!void
                                                           (foldr1 (lambda (_g1248412487_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g1248512489_)
                             (cons _g1248412487_ _g1248512489_))
                           '()
                           _L12466_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons 'begin _types12492_)))
                                           _id1240512455_)
                                          (_g1237512413_ _g1237612416_))))
                                  (_g1237512413_ _g1237612416_)))))))
              (_loop1240012439_ _target1239712434_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1237512413_
                                                     _g1237612416_)))))
                                          (_g1237512413_ _g1237612416_))
                                      (_g1237512413_ _g1237612416_))))
                              (_g1237512413_ _g1237612416_))))
                      (_g1237512413_ _g1237612416_))))
               (_g1237312546_
                (lambda (_g1237612497_)
                  (if (gx#stx-pair? _g1237612497_)
                      (let ((_e1237812499_ (gx#stx-e _g1237612497_)))
                        (let ((_hd1237912502_ (##car _e1237812499_))
                              (_tl1238012504_ (##cdr _e1237812499_)))
                          (if (gx#stx-pair? _tl1238012504_)
                              (let ((_e1238112507_ (gx#stx-e _tl1238012504_)))
                                (let ((_hd1238212510_ (##car _e1238112507_))
                                      (_tl1238312512_ (##cdr _e1238112507_)))
                                  (if (gx#stx-pair? _hd1238212510_)
                                      (let ((_e1238412515_
                                             (gx#stx-e _hd1238212510_)))
                                        (let ((_hd1238512518_
                                               (##car _e1238412515_))
                                              (_tl1238612520_
                                               (##cdr _e1238412515_)))
                                          (if (gx#stx-null? _tl1238612520_)
                                              (if (gx#stx-pair? _tl1238312512_)
                                                  (let ((_e1238712523_
                                                         (gx#stx-e
                                                          _tl1238312512_)))
                                                    (let ((_hd1238812526_
                                                           (##car _e1238712523_))
                                                          (_tl1238912528_
                                                           (##cdr _e1238712523_)))
                                                      (if (gx#stx-null?
                                                           _tl1238912528_)
                                                          ((lambda (_L12531_)
                                                             (_generate-e12372_
                                                              _L12531_))
                                                           _hd1238512518_)
                                                          (_g1237412494_
                                                           _g1237612497_))))
                                                  (_g1237412494_
                                                   _g1237612497_))
                                              (_g1237412494_ _g1237612497_))))
                                      (_g1237412494_ _g1237612497_))))
                              (_g1237412494_ _g1237612497_))))
                      (_g1237412494_ _g1237612497_)))))
          (_g1237312546_ _stx12370_)))))
  (define gxc#generate-ssxi-call%
    (lambda (_stx11924_)
      (let* ((_g1192812030_
              (lambda (_g1192912027_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1192912027_)))
             (_g1192712037_ (lambda (_g1192912033_) ((lambda () '(begin)))))
             (_g1192612187_
              (lambda (_g1192912040_)
                (if (gx#stx-pair? _g1192912040_)
                    (let ((_e1198712042_ (gx#stx-e _g1192912040_)))
                      (let ((_hd1198812045_ (##car _e1198712042_))
                            (_tl1198912047_ (##cdr _e1198712042_)))
                        (if (gx#stx-pair? _tl1198912047_)
                            (let ((_e1199012050_ (gx#stx-e _tl1198912047_)))
                              (let ((_hd1199112053_ (##car _e1199012050_))
                                    (_tl1199212055_ (##cdr _e1199012050_)))
                                (if (gx#stx-pair? _hd1199112053_)
                                    (let ((_e1199312058_
                                           (gx#stx-e _hd1199112053_)))
                                      (let ((_hd1199412061_
                                             (##car _e1199312058_))
                                            (_tl1199512063_
                                             (##cdr _e1199312058_)))
                                        (if (gx#identifier? _hd1199412061_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1199412061_)
                                                (if (gx#stx-pair?
                                                     _tl1199512063_)
                                                    (let ((_e1199612066_
                                                           (gx#stx-e
                                                            _tl1199512063_)))
                                                      (let ((_hd1199712069_
                                                             (##car _e1199612066_))
                                                            (_tl1199812071_
                                                             (##cdr _e1199612066_)))
                                                        (if (gx#stx-null?
                                                             _tl1199812071_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1199212055_)
                        (let ((_e1199912074_ (gx#stx-e _tl1199212055_)))
                          (let ((_hd1200012077_ (##car _e1199912074_))
                                (_tl1200112079_ (##cdr _e1199912074_)))
                            (if (gx#stx-pair? _hd1200012077_)
                                (let ((_e1200212082_
                                       (gx#stx-e _hd1200012077_)))
                                  (let ((_hd1200312085_ (##car _e1200212082_))
                                        (_tl1200412087_ (##cdr _e1200212082_)))
                                    (if (gx#identifier? _hd1200312085_)
                                        (if (gx#stx-eq? '%#ref _hd1200312085_)
                                            (if (gx#stx-pair? _tl1200412087_)
                                                (let ((_e1200512090_
                                                       (gx#stx-e
                                                        _tl1200412087_)))
                                                  (let ((_hd1200612093_
                                                         (##car _e1200512090_))
                                                        (_tl1200712095_
                                                         (##cdr _e1200512090_)))
                                                    (if (gx#stx-null?
                                                         _tl1200712095_)
                                                        (if (gx#stx-pair?
                                                             _tl1200112079_)
                                                            (let ((_e1200812098_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1200112079_)))
                      (let ((_hd1200912101_ (##car _e1200812098_))
                            (_tl1201012103_ (##cdr _e1200812098_)))
                        (if (gx#stx-pair? _hd1200912101_)
                            (let ((_e1201112106_ (gx#stx-e _hd1200912101_)))
                              (let ((_hd1201212109_ (##car _e1201112106_))
                                    (_tl1201312111_ (##cdr _e1201112106_)))
                                (if (gx#identifier? _hd1201212109_)
                                    (if (gx#stx-eq? '%#quote _hd1201212109_)
                                        (if (gx#stx-pair? _tl1201312111_)
                                            (let ((_e1201412114_
                                                   (gx#stx-e _tl1201312111_)))
                                              (let ((_hd1201512117_
                                                     (##car _e1201412114_))
                                                    (_tl1201612119_
                                                     (##cdr _e1201412114_)))
                                                (if (gx#stx-null?
                                                     _tl1201612119_)
                                                    (if (gx#stx-pair?
                                                         _tl1201012103_)
                                                        (let ((_e1201712122_
                                                               (gx#stx-e
                                                                _tl1201012103_)))
                                                          (let ((_hd1201812125_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1201712122_))
                        (_tl1201912127_ (##cdr _e1201712122_)))
                    (if (gx#stx-pair? _hd1201812125_)
                        (let ((_e1202012130_ (gx#stx-e _hd1201812125_)))
                          (let ((_hd1202112133_ (##car _e1202012130_))
                                (_tl1202212135_ (##cdr _e1202012130_)))
                            (if (gx#identifier? _hd1202112133_)
                                (if (gx#stx-eq? '%#ref _hd1202112133_)
                                    (if (gx#stx-pair? _tl1202212135_)
                                        (let ((_e1202312138_
                                               (gx#stx-e _tl1202212135_)))
                                          (let ((_hd1202412141_
                                                 (##car _e1202312138_))
                                                (_tl1202512143_
                                                 (##cdr _e1202312138_)))
                                            (if (gx#stx-null? _tl1202512143_)
                                                (if (gx#stx-null?
                                                     _tl1201912127_)
                                                    ((lambda (_L12146_
                                                              _L12147_
                                                              _L12148_
                                                              _L12149_)
                                                       (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax__0 '#f '-bind-method))
                        'bind-method!)
                   (cons 'declare-method
                         (cons (gxc#generate-runtime-binding-id _L12148_)
                               (cons (gx#stx-e _L12147_)
                                     (cons (gxc#generate-runtime-binding-id
                                            _L12146_)
                                           (cons '#f '())))))
                   (_g1192712037_ _g1192912040_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd1202412141_
                                                     _hd1201512117_
                                                     _hd1200612093_
                                                     _hd1199712069_)
                                                    (_g1192712037_
                                                     _g1192912040_))
                                                (_g1192712037_
                                                 _g1192912040_))))
                                        (_g1192712037_ _g1192912040_))
                                    (_g1192712037_ _g1192912040_))
                                (_g1192712037_ _g1192912040_))))
                        (_g1192712037_ _g1192912040_))))
                (_g1192712037_ _g1192912040_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1192712037_
                                                     _g1192912040_))))
                                            (_g1192712037_ _g1192912040_))
                                        (_g1192712037_ _g1192912040_))
                                    (_g1192712037_ _g1192912040_))))
                            (_g1192712037_ _g1192912040_))))
                    (_g1192712037_ _g1192912040_))
                (_g1192712037_ _g1192912040_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1192712037_ _g1192912040_))
                                            (_g1192712037_ _g1192912040_))
                                        (_g1192712037_ _g1192912040_))))
                                (_g1192712037_ _g1192912040_))))
                        (_g1192712037_ _g1192912040_))
                    (_g1192712037_ _g1192912040_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1192712037_
                                                     _g1192912040_))
                                                (_g1192712037_ _g1192912040_))
                                            (_g1192712037_ _g1192912040_))))
                                    (_g1192712037_ _g1192912040_))))
                            (_g1192712037_ _g1192912040_))))
                    (_g1192712037_ _g1192912040_))))
             (_g1192512367_
              (lambda (_g1192912190_)
                (if (gx#stx-pair? _g1192912190_)
                    (let ((_e1193512192_ (gx#stx-e _g1192912190_)))
                      (let ((_hd1193612195_ (##car _e1193512192_))
                            (_tl1193712197_ (##cdr _e1193512192_)))
                        (if (gx#stx-pair? _tl1193712197_)
                            (let ((_e1193812200_ (gx#stx-e _tl1193712197_)))
                              (let ((_hd1193912203_ (##car _e1193812200_))
                                    (_tl1194012205_ (##cdr _e1193812200_)))
                                (if (gx#stx-pair? _hd1193912203_)
                                    (let ((_e1194112208_
                                           (gx#stx-e _hd1193912203_)))
                                      (let ((_hd1194212211_
                                             (##car _e1194112208_))
                                            (_tl1194312213_
                                             (##cdr _e1194112208_)))
                                        (if (gx#identifier? _hd1194212211_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1194212211_)
                                                (if (gx#stx-pair?
                                                     _tl1194312213_)
                                                    (let ((_e1194412216_
                                                           (gx#stx-e
                                                            _tl1194312213_)))
                                                      (let ((_hd1194512219_
                                                             (##car _e1194412216_))
                                                            (_tl1194612221_
                                                             (##cdr _e1194412216_)))
                                                        (if (gx#stx-null?
                                                             _tl1194612221_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1194012205_)
                        (let ((_e1194712224_ (gx#stx-e _tl1194012205_)))
                          (let ((_hd1194812227_ (##car _e1194712224_))
                                (_tl1194912229_ (##cdr _e1194712224_)))
                            (if (gx#stx-pair? _hd1194812227_)
                                (let ((_e1195012232_
                                       (gx#stx-e _hd1194812227_)))
                                  (let ((_hd1195112235_ (##car _e1195012232_))
                                        (_tl1195212237_ (##cdr _e1195012232_)))
                                    (if (gx#identifier? _hd1195112235_)
                                        (if (gx#stx-eq? '%#ref _hd1195112235_)
                                            (if (gx#stx-pair? _tl1195212237_)
                                                (let ((_e1195312240_
                                                       (gx#stx-e
                                                        _tl1195212237_)))
                                                  (let ((_hd1195412243_
                                                         (##car _e1195312240_))
                                                        (_tl1195512245_
                                                         (##cdr _e1195312240_)))
                                                    (if (gx#stx-null?
                                                         _tl1195512245_)
                                                        (if (gx#stx-pair?
                                                             _tl1194912229_)
                                                            (let ((_e1195612248_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1194912229_)))
                      (let ((_hd1195712251_ (##car _e1195612248_))
                            (_tl1195812253_ (##cdr _e1195612248_)))
                        (if (gx#stx-pair? _hd1195712251_)
                            (let ((_e1195912256_ (gx#stx-e _hd1195712251_)))
                              (let ((_hd1196012259_ (##car _e1195912256_))
                                    (_tl1196112261_ (##cdr _e1195912256_)))
                                (if (gx#identifier? _hd1196012259_)
                                    (if (gx#stx-eq? '%#quote _hd1196012259_)
                                        (if (gx#stx-pair? _tl1196112261_)
                                            (let ((_e1196212264_
                                                   (gx#stx-e _tl1196112261_)))
                                              (let ((_hd1196312267_
                                                     (##car _e1196212264_))
                                                    (_tl1196412269_
                                                     (##cdr _e1196212264_)))
                                                (if (gx#stx-null?
                                                     _tl1196412269_)
                                                    (if (gx#stx-pair?
                                                         _tl1195812253_)
                                                        (let ((_e1196512272_
                                                               (gx#stx-e
                                                                _tl1195812253_)))
                                                          (let ((_hd1196612275_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1196512272_))
                        (_tl1196712277_ (##cdr _e1196512272_)))
                    (if (gx#stx-pair? _hd1196612275_)
                        (let ((_e1196812280_ (gx#stx-e _hd1196612275_)))
                          (let ((_hd1196912283_ (##car _e1196812280_))
                                (_tl1197012285_ (##cdr _e1196812280_)))
                            (if (gx#identifier? _hd1196912283_)
                                (if (gx#stx-eq? '%#ref _hd1196912283_)
                                    (if (gx#stx-pair? _tl1197012285_)
                                        (let ((_e1197112288_
                                               (gx#stx-e _tl1197012285_)))
                                          (let ((_hd1197212291_
                                                 (##car _e1197112288_))
                                                (_tl1197312293_
                                                 (##cdr _e1197112288_)))
                                            (if (gx#stx-null? _tl1197312293_)
                                                (if (gx#stx-pair?
                                                     _tl1196712277_)
                                                    (let ((_e1197412296_
                                                           (gx#stx-e
                                                            _tl1196712277_)))
                                                      (let ((_hd1197512299_
                                                             (##car _e1197412296_))
                                                            (_tl1197612301_
                                                             (##cdr _e1197412296_)))
                                                        (if (gx#stx-pair?
                                                             _hd1197512299_)
                                                            (let ((_e1197712304_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1197512299_)))
                      (let ((_hd1197812307_ (##car _e1197712304_))
                            (_tl1197912309_ (##cdr _e1197712304_)))
                        (if (gx#identifier? _hd1197812307_)
                            (if (gx#stx-eq? '%#quote _hd1197812307_)
                                (if (gx#stx-pair? _tl1197912309_)
                                    (let ((_e1198012312_
                                           (gx#stx-e _tl1197912309_)))
                                      (let ((_hd1198112315_
                                             (##car _e1198012312_))
                                            (_tl1198212317_
                                             (##cdr _e1198012312_)))
                                        (if (gx#stx-null? _tl1198212317_)
                                            (if (gx#stx-null? _tl1197612301_)
                                                ((lambda (_L12320_
                                                          _L12321_
                                                          _L12322_
                                                          _L12323_
                                                          _L12324_)
                                                   (if (eq? (gxc#generate-runtime-binding-id
                                                             _L12324_)
                                                            'bind-method!)
                                                       (cons 'declare-method
                                                             (cons (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L12323_)
                           (cons (gx#stx-e _L12322_)
                                 (cons (gxc#generate-runtime-binding-id
                                        _L12321_)
                                       (cons (gx#stx-e _L12320_) '())))))
               (_g1192612187_ _g1192912190_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1198112315_
                                                 _hd1197212291_
                                                 _hd1196312267_
                                                 _hd1195412243_
                                                 _hd1194512219_)
                                                (_g1192612187_ _g1192912190_))
                                            (_g1192612187_ _g1192912190_))))
                                    (_g1192612187_ _g1192912190_))
                                (_g1192612187_ _g1192912190_))
                            (_g1192612187_ _g1192912190_))))
                    (_g1192612187_ _g1192912190_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1192612187_
                                                     _g1192912190_))
                                                (_g1192612187_
                                                 _g1192912190_))))
                                        (_g1192612187_ _g1192912190_))
                                    (_g1192612187_ _g1192912190_))
                                (_g1192612187_ _g1192912190_))))
                        (_g1192612187_ _g1192912190_))))
                (_g1192612187_ _g1192912190_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1192612187_
                                                     _g1192912190_))))
                                            (_g1192612187_ _g1192912190_))
                                        (_g1192612187_ _g1192912190_))
                                    (_g1192612187_ _g1192912190_))))
                            (_g1192612187_ _g1192912190_))))
                    (_g1192612187_ _g1192912190_))
                (_g1192612187_ _g1192912190_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1192612187_ _g1192912190_))
                                            (_g1192612187_ _g1192912190_))
                                        (_g1192612187_ _g1192912190_))))
                                (_g1192612187_ _g1192912190_))))
                        (_g1192612187_ _g1192912190_))
                    (_g1192612187_ _g1192912190_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1192612187_
                                                     _g1192912190_))
                                                (_g1192612187_ _g1192912190_))
                                            (_g1192612187_ _g1192912190_))))
                                    (_g1192612187_ _g1192912190_))))
                            (_g1192612187_ _g1192912190_))))
                    (_g1192612187_ _g1192912190_)))))
        (_g1192512367_ _stx11924_))))
  (define gxc#!alias::typedecl
    (lambda (_self11900_)
      (let* ((_self1190111907_ _self11900_)
             (_E1190311911_
              (lambda () (error '"No clause matching" _self1190111907_)))
             (_K1190411916_
              (lambda (_alias-id11914_)
                (cons '@alias (cons _alias-id11914_ '())))))
        (if (##structure-instance-of?
             _self1190111907_
             (##type-id gxc#!alias::t))
            (let* ((_e1190511919_ (##vector-ref _self1190111907_ '1))
                   (_alias-id11922_ _e1190511919_))
              (_K1190411916_ _alias-id11922_))
            (_E1190311911_)))))
  (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f)
  (define gxc#!struct-type::typedecl
    (lambda (_self11844_)
      (let* ((_self1184511856_ _self11844_)
             (_E1184711860_
              (lambda () (error '"No clause matching" _self1184511856_)))
             (_K1184811869_
              (lambda (_plist11863_
                       _ctor11864_
                       _fields11865_
                       _super11866_
                       _type-id11867_)
                (cons '@struct-type
                      (cons _type-id11867_
                            (cons _super11866_
                                  (cons _fields11865_
                                        (cons _ctor11864_
                                              (cons _plist11863_ '())))))))))
        (if (##structure-instance-of?
             _self1184511856_
             (##type-id gxc#!struct-type::t))
            (let* ((_e1184911872_ (##vector-ref _self1184511856_ '1))
                   (_type-id11875_ _e1184911872_)
                   (_e1185011877_ (##vector-ref _self1184511856_ '2))
                   (_super11880_ _e1185011877_)
                   (_e1185111882_ (##vector-ref _self1184511856_ '3))
                   (_fields11885_ _e1185111882_)
                   (_e1185211887_ (##vector-ref _self1184511856_ '4))
                   (_e1185311890_ (##vector-ref _self1184511856_ '5))
                   (_ctor11893_ _e1185311890_)
                   (_e1185411895_ (##vector-ref _self1184511856_ '6))
                   (_plist11898_ _e1185411895_))
              (_K1184811869_
               _plist11898_
               _ctor11893_
               _fields11885_
               _super11880_
               _type-id11875_))
            (_E1184711860_)))))
  (bind-method! gxc#!struct-type::t 'typedecl gxc#!struct-type::typedecl '#f)
  (define gxc#!struct-pred::typedecl
    (lambda (_self11820_)
      (let* ((_self1182111827_ _self11820_)
             (_E1182311831_
              (lambda () (error '"No clause matching" _self1182111827_)))
             (_K1182411836_
              (lambda (_struct-t11834_)
                (cons '@struct-pred (cons _struct-t11834_ '())))))
        (if (##structure-instance-of?
             _self1182111827_
             (##type-id gxc#!struct-pred::t))
            (let* ((_e1182511839_ (##vector-ref _self1182111827_ '1))
                   (_struct-t11842_ _e1182511839_))
              (_K1182411836_ _struct-t11842_))
            (_E1182311831_)))))
  (bind-method! gxc#!struct-pred::t 'typedecl gxc#!struct-pred::typedecl '#f)
  (define gxc#!struct-cons::typedecl
    (lambda (_self11796_)
      (let* ((_self1179711803_ _self11796_)
             (_E1179911807_
              (lambda () (error '"No clause matching" _self1179711803_)))
             (_K1180011812_
              (lambda (_struct-t11810_)
                (cons '@struct-cons (cons _struct-t11810_ '())))))
        (if (##structure-instance-of?
             _self1179711803_
             (##type-id gxc#!struct-cons::t))
            (let* ((_e1180111815_ (##vector-ref _self1179711803_ '1))
                   (_struct-t11818_ _e1180111815_))
              (_K1180011812_ _struct-t11818_))
            (_E1179911807_)))))
  (bind-method! gxc#!struct-cons::t 'typedecl gxc#!struct-cons::typedecl '#f)
  (define gxc#!struct-getf::typedecl
    (lambda (_self11758_)
      (let* ((_self1175911767_ _self11758_)
             (_E1176111771_
              (lambda () (error '"No clause matching" _self1175911767_)))
             (_K1176211778_
              (lambda (_unchecked?11774_ _off11775_ _struct-t11776_)
                (cons '@struct-getf
                      (cons _struct-t11776_
                            (cons _off11775_ (cons _unchecked?11774_ '())))))))
        (if (##structure-instance-of?
             _self1175911767_
             (##type-id gxc#!struct-getf::t))
            (let* ((_e1176311781_ (##vector-ref _self1175911767_ '1))
                   (_struct-t11784_ _e1176311781_)
                   (_e1176411786_ (##vector-ref _self1175911767_ '2))
                   (_off11789_ _e1176411786_)
                   (_e1176511791_ (##vector-ref _self1175911767_ '3))
                   (_unchecked?11794_ _e1176511791_))
              (_K1176211778_ _unchecked?11794_ _off11789_ _struct-t11784_))
            (_E1176111771_)))))
  (bind-method! gxc#!struct-getf::t 'typedecl gxc#!struct-getf::typedecl '#f)
  (define gxc#!struct-setf::typedecl
    (lambda (_self11720_)
      (let* ((_self1172111729_ _self11720_)
             (_E1172311733_
              (lambda () (error '"No clause matching" _self1172111729_)))
             (_K1172411740_
              (lambda (_unchecked?11736_ _off11737_ _struct-t11738_)
                (cons '@struct-setf
                      (cons _struct-t11738_
                            (cons _off11737_ (cons _unchecked?11736_ '())))))))
        (if (##structure-instance-of?
             _self1172111729_
             (##type-id gxc#!struct-setf::t))
            (let* ((_e1172511743_ (##vector-ref _self1172111729_ '1))
                   (_struct-t11746_ _e1172511743_)
                   (_e1172611748_ (##vector-ref _self1172111729_ '2))
                   (_off11751_ _e1172611748_)
                   (_e1172711753_ (##vector-ref _self1172111729_ '3))
                   (_unchecked?11756_ _e1172711753_))
              (_K1172411740_ _unchecked?11756_ _off11751_ _struct-t11746_))
            (_E1172311733_)))))
  (bind-method! gxc#!struct-setf::t 'typedecl gxc#!struct-setf::typedecl '#f)
  (define gxc#!lambda::typedecl
    (lambda (_self11668_)
      (let* ((_self1166911679_ _self11668_)
             (_E1167111683_
              (lambda () (error '"No clause matching" _self1166911679_)))
             (_K1167211694_
              (lambda (_typedecl11686_
                       _inline11687_
                       _dispatch11688_
                       _arity11689_)
                (if _inline11687_
                    (let ((_$e11691_ _typedecl11686_))
                      (if _$e11691_
                          _$e11691_
                          (error '"Cannot generate typedecl for inline rules")))
                    (cons '@lambda
                          (cons _arity11689_ (cons _dispatch11688_ '())))))))
        (if (##structure-instance-of?
             _self1166911679_
             (##type-id gxc#!lambda::t))
            (let* ((_e1167311697_ (##vector-ref _self1166911679_ '1))
                   (_e1167411700_ (##vector-ref _self1166911679_ '2))
                   (_arity11703_ _e1167411700_)
                   (_e1167511705_ (##vector-ref _self1166911679_ '3))
                   (_dispatch11708_ _e1167511705_)
                   (_e1167611710_ (##vector-ref _self1166911679_ '4))
                   (_inline11713_ _e1167611710_)
                   (_e1167711715_ (##vector-ref _self1166911679_ '5))
                   (_typedecl11718_ _e1167711715_))
              (_K1167211694_
               _typedecl11718_
               _inline11713_
               _dispatch11708_
               _arity11703_))
            (_E1167111683_)))))
  (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f)
  (define gxc#!case-lambda::typedecl
    (lambda (_self11601_)
      (letrec ((_clause-e11603_
                (lambda (_clause11633_)
                  (let* ((_clause1163411642_ _clause11633_)
                         (_E1163611646_
                          (lambda ()
                            (error '"No clause matching" _clause1163411642_)))
                         (_K1163711652_
                          (lambda (_dispatch11649_ _arity11650_)
                            (cons _arity11650_ (cons _dispatch11649_ '())))))
                    (if (##structure-instance-of?
                         _clause1163411642_
                         (##type-id gxc#!lambda::t))
                        (let* ((_e1163811655_
                                (##vector-ref _clause1163411642_ '1))
                               (_e1163911658_
                                (##vector-ref _clause1163411642_ '2))
                               (_arity11661_ _e1163911658_)
                               (_e1164011663_
                                (##vector-ref _clause1163411642_ '3))
                               (_dispatch11666_ _e1164011663_))
                          (_K1163711652_ _dispatch11666_ _arity11661_))
                        (_E1163611646_))))))
        (let* ((_self1160411611_ _self11601_)
               (_E1160611615_
                (lambda () (error '"No clause matching" _self1160411611_)))
               (_K1160711622_
                (lambda (_clauses11618_)
                  (let ((_clauses11620_ (map _clause-e11603_ _clauses11618_)))
                    (cons '@case-lambda _clauses11620_)))))
          (if (##structure-instance-of?
               _self1160411611_
               (##type-id gxc#!case-lambda::t))
              (let* ((_e1160811625_ (##vector-ref _self1160411611_ '1))
                     (_e1160911628_ (##vector-ref _self1160411611_ '2))
                     (_clauses11631_ _e1160911628_))
                (_K1160711622_ _clauses11631_))
              (_E1160611615_))))))
  (bind-method! gxc#!case-lambda::t 'typedecl gxc#!case-lambda::typedecl '#f)
  (define gxc#identifier-symbol
    (lambda (_stx11599_) (gxc#generate-runtime-binding-id _stx11599_))))
