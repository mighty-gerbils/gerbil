(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#module-import::t
    (make-struct-type
     'gx#module-import::t
     '#f
     '4
     'module-import
     '((final: . #t))
     '#f))
  (define gx#module-import? (make-struct-predicate gx#module-import::t))
  (define gx#make-module-import
    (lambda _$args11699_
      (apply make-struct-instance gx#module-import::t _$args11699_)))
  (define gx#module-import-source
    (make-struct-field-accessor gx#module-import::t '0))
  (define gx#module-import-name
    (make-struct-field-accessor gx#module-import::t '1))
  (define gx#module-import-phi
    (make-struct-field-accessor gx#module-import::t '2))
  (define gx#module-import-weak?
    (make-struct-field-accessor gx#module-import::t '3))
  (define gx#module-import-source-set!
    (make-struct-field-mutator gx#module-import::t '0))
  (define gx#module-import-name-set!
    (make-struct-field-mutator gx#module-import::t '1))
  (define gx#module-import-phi-set!
    (make-struct-field-mutator gx#module-import::t '2))
  (define gx#module-import-weak?-set!
    (make-struct-field-mutator gx#module-import::t '3))
  (define gx#module-export::t
    (make-struct-type
     'gx#module-export::t
     '#f
     '5
     'module-export
     '((final: . #t))
     '#f))
  (define gx#module-export? (make-struct-predicate gx#module-export::t))
  (define gx#make-module-export
    (lambda _$args11696_
      (apply make-struct-instance gx#module-export::t _$args11696_)))
  (define gx#module-export-context
    (make-struct-field-accessor gx#module-export::t '0))
  (define gx#module-export-key
    (make-struct-field-accessor gx#module-export::t '1))
  (define gx#module-export-phi
    (make-struct-field-accessor gx#module-export::t '2))
  (define gx#module-export-name
    (make-struct-field-accessor gx#module-export::t '3))
  (define gx#module-export-weak?
    (make-struct-field-accessor gx#module-export::t '4))
  (define gx#module-export-context-set!
    (make-struct-field-mutator gx#module-export::t '0))
  (define gx#module-export-key-set!
    (make-struct-field-mutator gx#module-export::t '1))
  (define gx#module-export-phi-set!
    (make-struct-field-mutator gx#module-export::t '2))
  (define gx#module-export-name-set!
    (make-struct-field-mutator gx#module-export::t '3))
  (define gx#module-export-weak?-set!
    (make-struct-field-mutator gx#module-export::t '4))
  (define gx#import-set::t
    (make-struct-type
     'gx#import-set::t
     '#f
     '3
     'import-set
     '((final: . #t))
     '#f))
  (define gx#import-set? (make-struct-predicate gx#import-set::t))
  (define gx#make-import-set
    (lambda _$args11693_
      (apply make-struct-instance gx#import-set::t _$args11693_)))
  (define gx#import-set-source
    (make-struct-field-accessor gx#import-set::t '0))
  (define gx#import-set-phi (make-struct-field-accessor gx#import-set::t '1))
  (define gx#import-set-imports
    (make-struct-field-accessor gx#import-set::t '2))
  (define gx#import-set-source-set!
    (make-struct-field-mutator gx#import-set::t '0))
  (define gx#import-set-phi-set!
    (make-struct-field-mutator gx#import-set::t '1))
  (define gx#import-set-imports-set!
    (make-struct-field-mutator gx#import-set::t '2))
  (define gx#export-set::t
    (make-struct-type
     'gx#export-set::t
     '#f
     '3
     'export-set
     '((final: . #t))
     '#f))
  (define gx#export-set? (make-struct-predicate gx#export-set::t))
  (define gx#make-export-set
    (lambda _$args11690_
      (apply make-struct-instance gx#export-set::t _$args11690_)))
  (define gx#export-set-source
    (make-struct-field-accessor gx#export-set::t '0))
  (define gx#export-set-phi (make-struct-field-accessor gx#export-set::t '1))
  (define gx#export-set-exports
    (make-struct-field-accessor gx#export-set::t '2))
  (define gx#export-set-source-set!
    (make-struct-field-mutator gx#export-set::t '0))
  (define gx#export-set-phi-set!
    (make-struct-field-mutator gx#export-set::t '1))
  (define gx#export-set-exports-set!
    (make-struct-field-mutator gx#export-set::t '2))
  (define gx#import-expander::t
    (make-struct-type
     'gx#import-expander::t
     gx#user-expander::t
     '0
     'import-expander
     '()
     ':init!))
  (define gx#import-expander? (make-struct-predicate gx#import-expander::t))
  (define gx#make-import-expander
    (lambda _$args11687_
      (apply make-struct-instance gx#import-expander::t _$args11687_)))
  (define gx#export-expander::t
    (make-struct-type
     'gx#export-expander::t
     gx#user-expander::t
     '0
     'export-expander
     '()
     ':init!))
  (define gx#export-expander? (make-struct-predicate gx#export-expander::t))
  (define gx#make-export-expander
    (lambda _$args11684_
      (apply make-struct-instance gx#export-expander::t _$args11684_)))
  (define gx#current-import-expander-phi (make-parameter '#f))
  (define gx#current-export-expander-phi (make-parameter '#f))
  (define gx#current-module-reader-path (make-parameter '#f))
  (define gx#current-module-reader-args (make-parameter '#f))
  (define gx#module-context:::init!
    (lambda (_self11678_ _id11679_ _super11680_ _ns11681_ _path11682_)
      (struct-instance-init!
       _self11678_
       _id11679_
       (make-hash-table-eq)
       _super11680_
       '#f
       '#f
       _ns11681_
       _path11682_
       '()
       '()
       '#f
       '#f)))
  (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
  (begin
    (define gx#prelude-context:::init!__opt-lambda11642
      (lambda (_self11644_ _ctx11645_ _root11646_)
        (let ((_super11654_
               (let ((_$e11648_ _root11646_))
                 (if _$e11648_
                     _$e11648_
                     (let ((_$e11651_ (gx#core-context-root__0)))
                       (if _$e11651_
                           _$e11651_
                           (make-struct-instance gx#root-context::t)))))))
          (if _ctx11645_
              (let ((_id11657_
                     (##structure-ref
                      _ctx11645_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path11658_
                     (##structure-ref _ctx11645_ '7 gx#module-context::t '#f))
                    (_in11659_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx11645_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e11660_
                     (make-promise (lambda () (gx#eval-module _ctx11645_)))))
                (begin
                  (struct-instance-init!
                   _self11644_
                   _id11657_
                   (make-hash-table-eq)
                   _super11654_
                   '#f
                   '#f
                   _path11658_
                   _in11659_
                   _e11660_)
                  (for-each
                   (lambda (_g1166111663_)
                     (gx#core-bind-weak-import!__opt-lambda10869
                      _g1166111663_
                      _self11644_))
                   _in11659_)))
              (struct-instance-init!
               _self11644_
               '#f
               (make-hash-table-eq)
               _super11654_
               '#f
               '#f
               '#f
               '()
               '#f)))))
    (begin
      (define gx#prelude-context:::init!__0
        (lambda (_self11669_ _ctx11670_)
          (let ((_root11672_ '#f))
            (gx#prelude-context:::init!__opt-lambda11642
             _self11669_
             _ctx11670_
             _root11672_))))
      (define gx#prelude-context:::init!
        (lambda _g11715_
          (let ((_g11714_ (length _g11715_)))
            (cond ((fx= _g11714_ 2)
                   (apply gx#prelude-context:::init!__0 _g11715_))
                  ((fx= _g11714_ 3)
                   (apply gx#prelude-context:::init!__opt-lambda11642
                          _g11715_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#prelude-context:::init!
                    _g11715_))))))))
  (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
  (define gx#import-expander:::init!
    (lambda (_self11640_ _e11641_)
      (struct-instance-init!
       _self11640_
       _e11641_
       (gx#current-expander-context)
       (fx- (gx#current-expander-phi) '1))))
  (bind-method! gx#import-expander::t ':init! gx#import-expander:::init! '#f)
  (define gx#export-expander:::init!
    (lambda (_self11637_ _e11638_)
      (struct-instance-init!
       _self11637_
       _e11638_
       (gx#current-expander-context)
       (fx- (gx#current-expander-phi) '1))))
  (bind-method! gx#export-expander::t ':init! gx#export-expander:::init! '#f)
  (define gx#import-expander::apply-import-expander
    (lambda (_g1162911632_ _g1163011634_)
      (gx#core-apply-user-expander__opt-lambda4866
       _g1162911632_
       _g1163011634_
       'apply-import-expander)))
  (bind-method!
   gx#import-expander::t
   'apply-import-expander
   gx#import-expander::apply-import-expander
   '#f)
  (define gx#export-expander::apply-export-expander
    (lambda (_g1162211625_ _g1162311627_)
      (gx#core-apply-user-expander__opt-lambda4866
       _g1162211625_
       _g1162311627_
       'apply-export-expander)))
  (bind-method!
   gx#export-expander::t
   'apply-export-expander
   gx#export-expander::apply-export-expander
   '#f)
  (define gx#module-source-path
    (lambda (_ctx11616_)
      (let* ((_path11618_
              (##structure-ref _ctx11616_ '7 gx#module-context::t '#f))
             (_path11620_
              (if (pair? _path11618_) (last _path11618_) _path11618_)))
        (if (string? _path11620_) _path11620_ '#f))))
  (begin
    (define gx#import-module__opt-lambda11590
      (lambda (_path11592_ _reload?11593_ _eval?11594_)
        (let ((_ctx11596_
               ((gx#current-expander-module-import)
                _path11592_
                _reload?11593_)))
          (begin
            (if (if _ctx11596_ _eval?11594_ '#f)
                (gx#eval-module _ctx11596_)
                '#!void)
            _ctx11596_))))
    (begin
      (define gx#import-module__0
        (lambda (_path11601_)
          (let* ((_reload?11603_ '#f) (_eval?11605_ '#f))
            (gx#import-module__opt-lambda11590
             _path11601_
             _reload?11603_
             _eval?11605_))))
      (define gx#import-module__1
        (lambda (_path11607_ _reload?11608_)
          (let ((_eval?11610_ '#f))
            (gx#import-module__opt-lambda11590
             _path11607_
             _reload?11608_
             _eval?11610_))))
      (define gx#import-module
        (lambda _g11717_
          (let ((_g11716_ (length _g11717_)))
            (cond ((fx= _g11716_ 1) (apply gx#import-module__0 _g11717_))
                  ((fx= _g11716_ 2) (apply gx#import-module__1 _g11717_))
                  ((fx= _g11716_ 3)
                   (apply gx#import-module__opt-lambda11590 _g11717_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#import-module
                    _g11717_))))))))
  (define gx#eval-module
    (lambda (_mod11589_) ((gx#current-expander-module-eval) _mod11589_)))
  (define gx#core-eval-module
    (lambda (_obj11574_)
      (letrec ((_force-e11576_
                (lambda (_getf11585_ _e11586_)
                  (call-with-parameters
                   (lambda () (force (_getf11585_ _e11586_)))
                   gx#current-expander-context
                   _e11586_
                   gx#current-expander-phi
                   '0))))
        (let _recur11578_ ((_e11580_ _obj11574_))
          (if (##structure-instance-of? _e11580_ 'gx#module-context::t)
              (begin
                (let ((_$e11582_
                       (gx#core-context-prelude__opt-lambda11555 _e11580_)))
                  (if _$e11582_ (_recur11578_ _$e11582_) '#!void))
                (_force-e11576_ gx#module-context-e _e11580_))
              (if (##structure-instance-of? _e11580_ 'gx#prelude-context::t)
                  (_force-e11576_ gx#prelude-context-e _e11580_)
                  (if (gx#stx-string? _e11580_)
                      (_recur11578_
                       (gx#import-module__0
                        (gx#core-resolve-module-path__0 _e11580_)))
                      (if (gx#core-library-module-path? _e11580_)
                          (_recur11578_
                           (gx#import-module__0
                            (gx#core-resolve-library-module-path _e11580_)))
                          (error '"Cannot eval module" _obj11574_)))))))))
  (begin
    (define gx#core-context-prelude__opt-lambda11555
      (lambda (_ctx11557_)
        (let _lp11559_ ((_e11561_ _ctx11557_))
          (if (let ((_$e11563_
                     (##structure-instance-of?
                      _e11561_
                      'gx#module-context::t)))
                (if _$e11563_
                    _$e11563_
                    (##structure-instance-of? _e11561_ 'gx#local-context::t)))
              (_lp11559_ (##structure-ref _e11561_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e11561_ 'gx#prelude-context::t)
                  _e11561_
                  '#f)))))
    (begin
      (define gx#core-context-prelude__0
        (lambda ()
          (let ((_ctx11570_ (gx#current-expander-context)))
            (gx#core-context-prelude__opt-lambda11555 _ctx11570_))))
      (define gx#core-context-prelude
        (lambda _g11719_
          (let ((_g11718_ (length _g11719_)))
            (cond ((fx= _g11718_ 0)
                   (apply gx#core-context-prelude__0 _g11719_))
                  ((fx= _g11718_ 1)
                   (apply gx#core-context-prelude__opt-lambda11555 _g11719_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-prelude
                    _g11719_))))))))
  (define gx#core-module->prelude-context
    (lambda (_ctx11547_)
      (let* ((_ht11549_ (gx#current-expander-module-registry))
             (_$e11551_ (table-ref _ht11549_ _ctx11547_ '#f)))
        (if _$e11551_
            (values _$e11551_)
            (let ((_pre11554_
                   (let ((__obj11710 (make-object gx#prelude-context::t '8)))
                     (begin
                       (gx#prelude-context:::init!__0 __obj11710 _ctx11547_)
                       __obj11710))))
              (begin
                (table-set! _ht11549_ _ctx11547_ _pre11554_)
                _pre11554_))))))
  (begin
    (define gx#core-import-module__opt-lambda11426
      (lambda (_rpath11428_ _reload?11429_)
        (letrec ((_import-source11431_
                  (lambda (_path11516_)
                    (begin
                      (if (member _path11516_ (gx#current-expander-path))
                          (error '"Cyclic expansion" _path11516_)
                          '#!void)
                      (call-with-parameters
                       (lambda ()
                         (let ((_g11720_ (gx#core-read-module _path11516_)))
                           (begin
                             (let ((_g11721_ (values-count _g11720_)))
                               (if (not (fx= _g11721_ 4))
                                   (error "Context expects 4 values"
                                          _g11721_)))
                             (let ((_pre11519_ (values-ref _g11720_ 0))
                                   (_id11520_ (values-ref _g11720_ 1))
                                   (_ns11521_ (values-ref _g11720_ 2))
                                   (_body11522_ (values-ref _g11720_ 3)))
                               (let* ((_prelude11527_
                                       (if (##structure-instance-of?
                                            _pre11519_
                                            'gx#prelude-context::t)
                                           _pre11519_
                                           (if (##structure-instance-of?
                                                _pre11519_
                                                'gx#module-context::t)
                                               (gx#core-module->prelude-context
                                                _pre11519_)
                                               (if (string? _pre11519_)
                                                   (gx#core-module->prelude-context
                                                    (gx#core-import-module__0
                                                     _pre11519_))
                                                   (if (not _pre11519_)
                                                       (let ((_$e11524_
                                                              (gx#current-expander-module-prelude)))
                                                         (if _$e11524_
                                                             _$e11524_
                                                             (let ((__obj11711
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (make-object gx#prelude-context::t '8)))
                       (begin
                         (gx#prelude-context:::init!__0 __obj11711 '#f)
                         __obj11711))))
               (error '"Cannot import module; unknown prelude"
                      _rpath11428_
                      _pre11519_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_ctx11529_
                                       (let ((__obj11712
                                              (make-object
                                               gx#module-context::t
                                               '11)))
                                         (begin
                                           (gx#module-context:::init!
                                            __obj11712
                                            _id11520_
                                            _prelude11527_
                                            _ns11521_
                                            _path11516_)
                                           __obj11712)))
                                      (_body11531_
                                       (gx#core-expand-module-begin
                                        _body11522_
                                        _ctx11529_))
                                      (_body11533_
                                       (gx#core-quote-syntax__opt-lambda4219
                                        (gx#core-cons '%#begin _body11531_)
                                        _path11516_
                                        _ctx11529_
                                        '())))
                                 (begin
                                   (##structure-set!
                                    _ctx11529_
                                    (make-promise
                                     (lambda () (gx#eval-syntax* _body11533_)))
                                    '10
                                    gx#module-context::t
                                    '#f)
                                   (##structure-set!
                                    _ctx11529_
                                    _body11533_
                                    '11
                                    gx#module-context::t
                                    '#f)
                                   (table-set!
                                    (gx#current-expander-module-registry)
                                    _path11516_
                                    _ctx11529_)
                                   (table-set!
                                    (gx#current-expander-module-registry)
                                    _id11520_
                                    _ctx11529_)
                                   _ctx11529_))))))
                       gx#current-expander-context
                       (gx#core-context-root__0)
                       gx#current-expander-marks
                       '()
                       gx#current-expander-phi
                       '0
                       gx#current-expander-path
                       (cons _path11516_ (gx#current-expander-path))
                       gx#current-import-expander-phi
                       '#f
                       gx#current-export-expander-phi
                       '#f))))
                 (_import-submodule11432_
                  (lambda (_rpath11444_)
                    (let* ((_rpath1144511452_ _rpath11444_)
                           (_E1144711456_
                            (lambda ()
                              (error '"No clause matching" _rpath1144511452_)))
                           (_K1144811504_
                            (lambda (_refs11459_ _origin11460_)
                              (let ((_ctx11462_
                                     (if _origin11460_
                                         (gx#core-import-module__opt-lambda11426
                                          _origin11460_
                                          _reload?11429_)
                                         (gx#current-expander-context))))
                                (let _lp11464_ ((_rest11466_ _refs11459_)
                                                (_ctx11467_ _ctx11462_))
                                  (let* ((_rest1146811476_ _rest11466_)
                                         (_E1147111480_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _rest1146811476_)))
                                         (_else1147011484_
                                          (lambda () _ctx11467_))
                                         (_K1147211492_
                                          (lambda (_rest11487_ _id11488_)
                                            (let ((_bind11490_
                                                   (gx#resolve-identifier__opt-lambda4830
                                                    _id11488_
                                                    '0
                                                    _ctx11467_)))
                                              (if (if (##structure-direct-instance-of?
                                                       _bind11490_
                                                       'gx#syntax-binding::t)
                                                      (##structure-instance-of?
                                                       (##direct-structure-ref
                                                        _bind11490_
                                                        '4
                                                        gx#syntax-binding::t
                                                        '#f)
                                                       'gx#module-context::t)
                                                      '#f)
                                                  (_lp11464_
                                                   _rest11487_
                                                   (##direct-structure-ref
                                                    _bind11490_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath11444_
                                                         _id11488_
                                                         _bind11490_))))))
                                    (if (##pair? _rest1146811476_)
                                        (let ((_hd1147311495_
                                               (##car _rest1146811476_))
                                              (_tl1147411497_
                                               (##cdr _rest1146811476_)))
                                          (let* ((_id11500_ _hd1147311495_)
                                                 (_rest11502_ _tl1147411497_))
                                            (_K1147211492_
                                             _rest11502_
                                             _id11500_)))
                                        (_else1147011484_))))))))
                      (if (##pair? _rpath1144511452_)
                          (let ((_hd1144911507_ (##car _rpath1144511452_))
                                (_tl1145011509_ (##cdr _rpath1144511452_)))
                            (let* ((_origin11512_ _hd1144911507_)
                                   (_refs11514_ _tl1145011509_))
                              (_K1144811504_ _refs11514_ _origin11512_)))
                          (_E1144711456_))))))
          (let ((_$e11434_
                 (if (not _reload?11429_)
                     (table-ref
                      (gx#current-expander-module-registry)
                      _rpath11428_
                      '#f)
                     '#f)))
            (if _$e11434_
                (values _$e11434_)
                (if (list? _rpath11428_)
                    (_import-submodule11432_ _rpath11428_)
                    (if (gx#core-library-module-path? _rpath11428_)
                        (let ((_ctx11437_
                               (gx#core-import-module__opt-lambda11426
                                (gx#core-resolve-library-module-path
                                 _rpath11428_)
                                _reload?11429_)))
                          (begin
                            (table-set!
                             (gx#current-expander-module-registry)
                             _rpath11428_
                             _ctx11437_)
                            _ctx11437_))
                        (let* ((_npath11439_ (path-normalize _rpath11428_))
                               (_$e11441_
                                (if (not _reload?11429_)
                                    (table-ref
                                     (gx#current-expander-module-registry)
                                     _npath11439_
                                     '#f)
                                    '#f)))
                          (if _$e11441_
                              (values _$e11441_)
                              (_import-source11431_ _npath11439_))))))))))
    (begin
      (define gx#core-import-module__0
        (lambda (_rpath11540_)
          (let ((_reload?11542_ '#f))
            (gx#core-import-module__opt-lambda11426
             _rpath11540_
             _reload?11542_))))
      (define gx#core-import-module
        (lambda _g11723_
          (let ((_g11722_ (length _g11723_)))
            (cond ((fx= _g11722_ 1) (apply gx#core-import-module__0 _g11723_))
                  ((fx= _g11722_ 2)
                   (apply gx#core-import-module__opt-lambda11426 _g11723_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-import-module
                    _g11723_))))))))
  (define gx#core-read-module
    (lambda (_path11422_)
      (with-exception-catcher
       (lambda (_exn11424_)
         (if (if (datum-parsing-exception? _exn11424_)
                 (eq? (datum-parsing-exception-filepos _exn11424_) '0)
                 '#f)
             (gx#core-read-module/lang _path11422_)
             (raise _exn11424_)))
       (lambda () (gx#core-read-module/sexp _path11422_)))))
  (define gx#core-read-module/sexp
    (lambda (_path11282_)
      (let _lp11284_ ((_body11286_ (read-syntax-from-file _path11282_))
                      (_pre11287_ '#f)
                      (_ns11288_ '#f)
                      (_pkg11289_ '#f))
        (let* ((_e1129011314_ _body11286_)
               (_E1130611336_
                (lambda ()
                  (let ((_g11724_
                         (if _pkg11289_
                             (values _pre11287_ _ns11288_ _pkg11289_)
                             (gx#core-read-module-package
                              _path11282_
                              _pre11287_
                              _ns11288_))))
                    (begin
                      (let ((_g11725_ (values-count _g11724_)))
                        (if (not (fx= _g11725_ 3))
                            (error "Context expects 3 values" _g11725_)))
                      (let ((_pre11318_ (values-ref _g11724_ 0))
                            (_ns11319_ (values-ref _g11724_ 1))
                            (_pkg11320_ (values-ref _g11724_ 2)))
                        (let* ((_prelude11322_
                                (if (gx#core-bound-module-prelude? _pre11318_)
                                    (gx#syntax-local-e__0 _pre11318_)
                                    (if (gx#core-library-module-path?
                                         _pre11318_)
                                        (gx#core-resolve-library-module-path
                                         _pre11318_)
                                        (if (gx#stx-string? _pre11318_)
                                            (gx#core-resolve-module-path__opt-lambda11045
                                             _pre11318_
                                             _path11282_)
                                            (gx#stx-e _pre11318_)))))
                               (_path-id11324_
                                (gx#core-module-path->namespace _path11282_))
                               (_pkg-id11326_
                                (if _pkg11320_
                                    (string-append
                                     _pkg11320_
                                     '"/"
                                     _path-id11324_)
                                    _path-id11324_))
                               (_module-id11328_
                                (string->symbol _pkg-id11326_))
                               (_module-ns11333_
                                (let ((_$e11330_ _ns11319_))
                                  (if _$e11330_ _$e11330_ _pkg-id11326_))))
                          (values _prelude11322_
                                  _module-id11328_
                                  _module-ns11333_
                                  _body11286_)))))))
               (_E1129911365_
                (lambda ()
                  (if (gx#stx-pair? _e1129011314_)
                      (let ((_e1130711340_ (gx#syntax-e _e1129011314_)))
                        (let ((_hd1130811343_ (##car _e1130711340_))
                              (_tl1130911345_ (##cdr _e1130711340_)))
                          (if (eq? (gx#stx-e _hd1130811343_) 'package:)
                              (if (gx#stx-pair? _tl1130911345_)
                                  (let ((_e1131011348_
                                         (gx#syntax-e _tl1130911345_)))
                                    (let ((_hd1131111351_
                                           (##car _e1131011348_))
                                          (_tl1131211353_
                                           (##cdr _e1131011348_)))
                                      (let* ((_pkg11356_ _hd1131111351_)
                                             (_rest11358_ _tl1131211353_))
                                        (if '#t
                                            (let ((_pkg11363_
                                                   (if (gx#identifier?
                                                        _pkg11356_)
                                                       (symbol->string
                                                        (gx#stx-e _pkg11356_))
                                                       (if (let ((_$e11360_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-string? _pkg11356_)))
                     (if _$e11360_ _$e11360_ (gx#stx-false? _pkg11356_)))
                   (gx#stx-e _pkg11356_)
                   (gx#raise-syntax-error
                    'import
                    '"Bad syntax; Illegal package name"
                    _pkg11356_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_lp11284_
                                               _rest11358_
                                               _pre11287_
                                               _ns11288_
                                               _pkg11363_))
                                            (_E1130611336_)))))
                                  (_E1130611336_))
                              (_E1130611336_))))
                      (_E1130611336_))))
               (_E1129211394_
                (lambda ()
                  (if (gx#stx-pair? _e1129011314_)
                      (let ((_e1130011369_ (gx#syntax-e _e1129011314_)))
                        (let ((_hd1130111372_ (##car _e1130011369_))
                              (_tl1130211374_ (##cdr _e1130011369_)))
                          (if (eq? (gx#stx-e _hd1130111372_) 'namespace:)
                              (if (gx#stx-pair? _tl1130211374_)
                                  (let ((_e1130311377_
                                         (gx#syntax-e _tl1130211374_)))
                                    (let ((_hd1130411380_
                                           (##car _e1130311377_))
                                          (_tl1130511382_
                                           (##cdr _e1130311377_)))
                                      (let* ((_ns11385_ _hd1130411380_)
                                             (_rest11387_ _tl1130511382_))
                                        (if '#t
                                            (let ((_ns11392_
                                                   (if (gx#identifier?
                                                        _ns11385_)
                                                       (symbol->string
                                                        (gx#stx-e _ns11385_))
                                                       (if (let ((_$e11389_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-string? _ns11385_)))
                     (if _$e11389_ _$e11389_ (gx#stx-false? _ns11385_)))
                   (gx#stx-e _ns11385_)
                   (gx#raise-syntax-error
                    'import
                    '"Bad syntax; illegal namespace"
                    _ns11385_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_lp11284_
                                               _rest11387_
                                               _pre11287_
                                               _ns11392_
                                               _pkg11289_))
                                            (_E1129911365_)))))
                                  (_E1129911365_))
                              (_E1129911365_))))
                      (_E1129911365_))))
               (_E1129111418_
                (lambda ()
                  (if (gx#stx-pair? _e1129011314_)
                      (let ((_e1129311398_ (gx#syntax-e _e1129011314_)))
                        (let ((_hd1129411401_ (##car _e1129311398_))
                              (_tl1129511403_ (##cdr _e1129311398_)))
                          (if (eq? (gx#stx-e _hd1129411401_) 'prelude:)
                              (if (gx#stx-pair? _tl1129511403_)
                                  (let ((_e1129611406_
                                         (gx#syntax-e _tl1129511403_)))
                                    (let ((_hd1129711409_
                                           (##car _e1129611406_))
                                          (_tl1129811411_
                                           (##cdr _e1129611406_)))
                                      (let* ((_prelude11414_ _hd1129711409_)
                                             (_rest11416_ _tl1129811411_))
                                        (if '#t
                                            (_lp11284_
                                             _rest11416_
                                             _prelude11414_
                                             _ns11288_
                                             _pkg11289_)
                                            (_E1129211394_)))))
                                  (_E1129211394_))
                              (_E1129211394_))))
                      (_E1129211394_)))))
          (_E1129111418_)))))
  (define gx#core-read-module/lang
    (lambda (_path11118_)
      (letrec ((_read-body11120_
                (lambda (_inp11201_
                         _pre11202_
                         _ns11203_
                         _pkg11204_
                         _args11205_)
                  (let ((_g11726_
                         (if _pkg11204_
                             (values _pre11202_ _ns11203_ _pkg11204_)
                             (gx#core-read-module-package
                              _path11118_
                              _pre11202_
                              _ns11203_))))
                    (begin
                      (let ((_g11727_ (values-count _g11726_)))
                        (if (not (fx= _g11727_ 3))
                            (error "Context expects 3 values" _g11727_)))
                      (let ((_pre11207_ (values-ref _g11726_ 0))
                            (_ns11208_ (values-ref _g11726_ 1))
                            (_pkg11209_ (values-ref _g11726_ 2)))
                        (let* ((_prelude11211_
                                (gx#import-module__0 _pre11207_))
                               (_read-module-body11265_
                                (let ((_$e11257_
                                       (find (lambda (_e1121211214_)
                                               (let* ((_g1121611226_
                                                       _e1121211214_)
                                                      (_E1121911230_
                                                       (lambda ()
                                                         (error '"No clause matching"
                                                                _g1121611226_)))
                                                      (_else1121811234_
                                                       (lambda () '#f))
                                                      (_K1122011238_
                                                       (lambda () '#t)))
                                                 (if (##structure-direct-instance-of?
                                                      _g1121611226_
                                                      (##type-id
                                                       gx#module-export::t))
                                                     (let* ((_e1122111241_
                                                             (##vector-ref
                                                              _g1121611226_
                                                              '1))
                                                            (_e1122211244_
                                                             (##vector-ref
                                                              _g1121611226_
                                                              '2))
                                                            (_e1122311247_
                                                             (##vector-ref
                                                              _g1121611226_
                                                              '3)))
                                                       (if (##eq? _e1122311247_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1)
                   (let ((_e1122411250_ (##vector-ref _g1121611226_ '4)))
                     (if ((lambda (_g1125211254_)
                            (eq? _g1125211254_ 'read-module-body))
                          _e1122411250_)
                         (_K1122011238_)
                         (_else1121811234_)))
                   (_else1121811234_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_else1121811234_))))
                                             (##structure-ref
                                              _prelude11211_
                                              '9
                                              gx#module-context::t
                                              '#f))))
                                  (if _$e11257_
                                      ((lambda (_xport11260_)
                                         (let ((_proc11263_
                                                (with-exception-catcher
                                                 void
                                                 (lambda ()
                                                   (gx#eval-syntax__0
                                                    (##structure-ref
                                                     (gx#core-resolve-module-export
                                                      _xport11260_)
                                                     '1
                                                     gx#binding::t
                                                     '#f))))))
                                           (if (procedure? _proc11263_)
                                               _proc11263_
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Illegal #lang prelude; read-module-body is not a procedure"
                                                _path11118_
                                                _pre11207_
                                                _proc11263_))))
                                       _$e11257_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Illegal #lang prelude; does not export read-module-body for syntax"
                                       _path11118_
                                       _pre11207_))))
                               (_path-id11267_
                                (gx#core-module-path->namespace _path11118_))
                               (_pkg-id11269_
                                (if _pkg11209_
                                    (string-append
                                     _pkg11209_
                                     '"/"
                                     _path-id11267_)
                                    _path-id11267_))
                               (_module-id11271_
                                (string->symbol _pkg-id11269_))
                               (_module-ns11276_
                                (let ((_$e11273_ _ns11208_))
                                  (if _$e11273_ _$e11273_ _pkg-id11269_)))
                               (_body11279_
                                (call-with-parameters
                                 (lambda ()
                                   (_read-module-body11265_ _inp11201_))
                                 gx#current-module-reader-path
                                 _path11118_
                                 gx#current-module-reader-args
                                 _args11205_)))
                          (values _prelude11211_
                                  _module-id11271_
                                  _module-ns11276_
                                  _body11279_)))))))
               (_string-e11121_
                (lambda (_obj11198_ _what11199_)
                  (if (string? _obj11198_)
                      _obj11198_
                      (if (symbol? _obj11198_)
                          (symbol->string _obj11198_)
                          (gx#raise-syntax-error
                           '#f
                           (string-append '"Illegal module " _what11199_)
                           _path11118_
                           _obj11198_)))))
               (_read-lang-args11122_
                (lambda (_inp11153_ _args11154_)
                  (let* ((_args1115511163_ _args11154_)
                         (_E1115811167_
                          (lambda ()
                            (error '"No clause matching" _args1115511163_)))
                         (_else1115711171_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Illegal #lang arguments; missing prelude"
                             _path11118_)))
                         (_K1115911186_
                          (lambda (_args11174_ _prelude11175_)
                            (let* ((_pkg11177_ (pgetq 'package: _args11174_))
                                   (_pkg11179_
                                    (if _pkg11177_
                                        (_string-e11121_ _pkg11177_ '"package")
                                        '#f))
                                   (_ns11181_ (pgetq 'namespace: _args11174_))
                                   (_ns11183_
                                    (if _ns11181_
                                        (_string-e11121_
                                         _ns11181_
                                         '"namespace")
                                        '#f)))
                              (_read-body11120_
                               _inp11153_
                               _prelude11175_
                               _ns11183_
                               _pkg11179_
                               _args11174_)))))
                    (if (##pair? _args1115511163_)
                        (let ((_hd1116011189_ (##car _args1115511163_))
                              (_tl1116111191_ (##cdr _args1115511163_)))
                          (let* ((_prelude11194_ _hd1116011189_)
                                 (_args11196_ _tl1116111191_))
                            (_K1115911186_ _args11196_ _prelude11194_)))
                        (_else1115711171_)))))
               (_read-lang11123_
                (lambda (_inp11128_)
                  (let* ((_head11130_ (read-line _inp11128_))
                         (_$e11132_ (string-index _head11130_ '#\space)))
                    (if _$e11132_
                        ((lambda (_ix11135_)
                           (let ((_lang11137_
                                  (substring _head11130_ '0 _ix11135_)))
                             (if (equal? _lang11137_ '"#lang")
                                 (let* ((_rest11139_
                                         (substring
                                          _head11130_
                                          (fx+ _ix11135_ '1)
                                          (string-length _head11130_)))
                                        (_args11150_
                                         (with-exception-catcher
                                          (lambda (_g1114011142_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Illegal #lang arguments"
                                             _path11118_
                                             _g1114011142_))
                                          (lambda ()
                                            (call-with-input-string
                                             _rest11139_
                                             (lambda (_g1114511147_)
                                               (read-all
                                                _g1114511147_
                                                read)))))))
                                   (_read-lang-args11122_
                                    _inp11128_
                                    _args11150_))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Illegal module syntax"
                                  _path11118_))))
                         _$e11132_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path11118_)))))
               (_read-e11124_
                (lambda (_inp11126_)
                  (if (eq? (peek-char _inp11126_) '#\#)
                      (_read-lang11123_ _inp11126_)
                      (gx#raise-syntax-error
                       '#f
                       '"Illegal module syntax"
                       _path11118_)))))
        (call-with-input-file _path11118_ _read-e11124_))))
  (define gx#core-read-module-package
    (lambda (_path11072_ _pre11073_ _ns11074_)
      (letrec ((_string-e11076_
                (lambda (_e11116_)
                  (if (symbol? _e11116_)
                      (symbol->string _e11116_)
                      (if (string? _e11116_)
                          _e11116_
                          (gx#raise-syntax-error
                           '#f
                           '"Malformed package info; unexpected datum"
                           _e11116_))))))
        (let _lp11078_ ((_dir11080_ (path-directory _path11072_))
                        (_pkg-path11081_ '()))
          (let ((_gerbil.pkg11083_ (path-expand '"gerbil.pkg" _dir11080_)))
            (if (file-exists? _gerbil.pkg11083_)
                (let ((_plist11085_
                       (call-with-input-file _gerbil.pkg11083_ read)))
                  (if (eof-object? _plist11085_)
                      (let ((_pkg11087_
                             (if (not (null? _pkg-path11081_))
                                 (string-join _pkg-path11081_ '"/")
                                 '#f)))
                        (values _pre11073_ _ns11074_ _pkg11087_))
                      (if (list? _plist11085_)
                          (let* ((_root11089_ (pgetq 'package: _plist11085_))
                                 (_pkg11093_
                                  (let ((_pkg-path11091_
                                         (if _root11089_
                                             (cons (_string-e11076_
                                                    _root11089_)
                                                   _pkg-path11081_)
                                             _pkg-path11081_)))
                                    (if (not (null? _pkg-path11091_))
                                        (string-join _pkg-path11091_ '"/")
                                        '#f)))
                                 (_ns11100_
                                  (let ((_ns11098_
                                         (let ((_$e11095_ _ns11074_))
                                           (if _$e11095_
                                               _$e11095_
                                               (pgetq 'namespace:
                                                      _plist11085_)))))
                                    (if _ns11098_
                                        (_string-e11076_ _ns11098_)
                                        '#f)))
                                 (_pre11105_
                                  (let ((_$e11102_ _pre11073_))
                                    (if _$e11102_
                                        _$e11102_
                                        (pgetq 'prelude: _plist11085_)))))
                            (values _pre11105_ _ns11100_ _pkg11093_))
                          (gx#raise-syntax-error
                           '#f
                           '"Malformed package info; unexpected datum"
                           _plist11085_))))
                (let ((_dir*11108_
                       (path-strip-trailing-directory-separator _dir11080_)))
                  (if (let ((_$e11110_ (string-empty? _dir*11108_)))
                        (if _$e11110_
                            _$e11110_
                            (equal? _dir11080_ _dir*11108_)))
                      (values _pre11073_ _ns11074_ '#f)
                      (let ((_xpath11113_ (path-strip-directory _dir*11108_))
                            (_xdir11114_ (path-directory _dir*11108_)))
                        (_lp11078_
                         _xdir11114_
                         (cons _xpath11113_ _pkg-path11081_)))))))))))
  (define gx#core-module-path->namespace
    (lambda (_path11070_)
      (path-strip-extension (path-strip-directory _path11070_))))
  (define gx#core-module-path->id
    (lambda (_path11068_)
      (string->symbol (gx#core-module-path->namespace _path11068_))))
  (begin
    (define gx#core-resolve-module-path__opt-lambda11045
      (lambda (_stx-path11047_ _rel11048_)
        (let* ((_path11050_ (gx#stx-e _stx-path11047_))
               (_path11052_
                (if (string-empty? (path-extension _path11050_))
                    (string-append _path11050_ '".ss")
                    _path11050_)))
          (gx#core-resolve-path__opt-lambda4183
           _path11052_
           (let ((_$e11055_ (gx#stx-source _stx-path11047_)))
             (if _$e11055_ _$e11055_ _rel11048_))))))
    (begin
      (define gx#core-resolve-module-path__0
        (lambda (_stx-path11061_)
          (let ((_rel11063_ '#f))
            (gx#core-resolve-module-path__opt-lambda11045
             _stx-path11061_
             _rel11063_))))
      (define gx#core-resolve-module-path
        (lambda _g11729_
          (let ((_g11728_ (length _g11729_)))
            (cond ((fx= _g11728_ 1)
                   (apply gx#core-resolve-module-path__0 _g11729_))
                  ((fx= _g11728_ 2)
                   (apply gx#core-resolve-module-path__opt-lambda11045
                          _g11729_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-resolve-module-path
                    _g11729_))))))))
  (define gx#core-resolve-library-module-path
    (lambda (_libpath10987_)
      (let* ((_spath10989_ (symbol->string (gx#stx-e _libpath10987_)))
             (_spath10991_
              (substring _spath10989_ '1 (string-length _spath10989_)))
             (_ext10993_ (path-extension _spath10991_))
             (_ssi10995_
              (if (string-empty? _ext10993_)
                  (string-append _spath10991_ '".ssi")
                  (string-append (path-strip-extension _spath10991_) '".ssi")))
             (_src10997_
              (if (string-empty? _ext10993_)
                  (string-append _spath10991_ '".ss")
                  _spath10991_)))
        (let _lp11000_ ((_rest11002_
                         (gx#current-expander-module-library-path)))
          (let* ((_rest1100311012_ _rest11002_)
                 (_E1100611016_
                  (lambda () (error '"No clause matching" _rest1100311012_)))
                 (_try-match1100511024_
                  (lambda ()
                    (let ((_K1100711021_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Cannot find library module"
                              _libpath10987_))))
                      (if (##null? _rest1100311012_)
                          (_K1100711021_)
                          (_E1100611016_)))))
                 (_K1100811034_
                  (lambda (_rest11027_ _dir11028_)
                    (let ((_compiled-path11030_
                           (path-expand _ssi10995_ _dir11028_)))
                      (if (file-exists? _compiled-path11030_)
                          (path-normalize _compiled-path11030_)
                          (let ((_src-path11032_
                                 (path-expand _src10997_ _dir11028_)))
                            (if (file-exists? _src-path11032_)
                                (path-normalize _src-path11032_)
                                (_lp11000_ _rest11027_))))))))
            (if (##pair? _rest1100311012_)
                (let ((_hd1100911037_ (##car _rest1100311012_))
                      (_tl1101011039_ (##cdr _rest1100311012_)))
                  (let* ((_dir11042_ _hd1100911037_)
                         (_rest11044_ _tl1101011039_))
                    (_K1100811034_ _rest11044_ _dir11042_)))
                (_try-match1100511024_)))))))
  (define gx#core-library-module-path?
    (lambda (_stx10985_) (gx#core-special-module-path? _stx10985_ '#\:)))
  (define gx#core-special-module-path?
    (lambda (_stx10980_ _char10981_)
      (if (gx#identifier? _stx10980_)
          (if (interned-symbol? (gx#stx-e _stx10980_))
              (let ((_str10983_ (symbol->string (gx#stx-e _stx10980_))))
                (if (fx> (string-length _str10983_) '1)
                    (eq? (string-ref _str10983_ '0) _char10981_)
                    '#f))
              '#f)
          '#f)))
  (define gx#core-bound-prelude?
    (lambda (_stx10974_)
      (gx#core-bound-identifier?__opt-lambda4273
       _stx10974_
       (lambda (_g1097510977_)
         (gx#expander-binding?__opt-lambda4310
          _g1097510977_
          gx#prelude-context?)))))
  (define gx#core-bound-module?
    (lambda (_stx10968_)
      (gx#core-bound-identifier?__opt-lambda4273
       _stx10968_
       (lambda (_g1096910971_)
         (gx#expander-binding?__opt-lambda4310
          _g1096910971_
          gx#module-context?)))))
  (define gx#core-bound-module-prelude?
    (lambda (_stx10955_)
      (letrec ((_module-prelude?10957_
                (lambda (_e10963_)
                  (let ((_$e10965_
                         (##structure-instance-of?
                          _e10963_
                          'gx#module-context::t)))
                    (if _$e10965_
                        _$e10965_
                        (##structure-instance-of?
                         _e10963_
                         'gx#prelude-context::t))))))
        (gx#core-bound-identifier?__opt-lambda4273
         _stx10955_
         (lambda (_g1095810960_)
           (gx#expander-binding?__opt-lambda4310
            _g1095810960_
            _module-prelude?10957_))))))
  (begin
    (define gx#core-bind-import!__opt-lambda10883
      (lambda (_in10885_ _ctx10886_ _force-weak?10887_)
        (let* ((_in1088810897_ _in10885_)
               (_E1089010901_
                (lambda () (error '"No clause matching" _in1088810897_)))
               (_K1089110914_
                (lambda (_weak?10904_ _phi10905_ _key10906_ _source10907_)
                  (gx#core-bind!__opt-lambda4549
                   _key10906_
                   (let ((_e10909_
                          (gx#core-resolve-module-export _source10907_)))
                     (##structure
                      gx#import-binding::t
                      (##structure-ref _e10909_ '1 gx#binding::t '#f)
                      _key10906_
                      _phi10905_
                      _e10909_
                      (##direct-structure-ref
                       _source10907_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e10911_ _force-weak?10887_))
                        (if _$e10911_ _$e10911_ _weak?10904_))))
                   gx#core-context-rebind?
                   _phi10905_
                   _ctx10886_))))
          (if (##structure-direct-instance-of?
               _in1088810897_
               (##type-id gx#module-import::t))
              (let* ((_e1089210917_ (##vector-ref _in1088810897_ '1))
                     (_source10920_ _e1089210917_)
                     (_e1089310922_ (##vector-ref _in1088810897_ '2))
                     (_key10925_ _e1089310922_)
                     (_e1089410927_ (##vector-ref _in1088810897_ '3))
                     (_phi10930_ _e1089410927_)
                     (_e1089510932_ (##vector-ref _in1088810897_ '4))
                     (_weak?10935_ _e1089510932_))
                (_K1089110914_
                 _weak?10935_
                 _phi10930_
                 _key10925_
                 _source10920_))
              (_E1089010901_)))))
    (begin
      (define gx#core-bind-import!__0
        (lambda (_in10940_)
          (let* ((_ctx10942_ (gx#current-expander-context))
                 (_force-weak?10944_ '#f))
            (gx#core-bind-import!__opt-lambda10883
             _in10940_
             _ctx10942_
             _force-weak?10944_))))
      (define gx#core-bind-import!__1
        (lambda (_in10946_ _ctx10947_)
          (let ((_force-weak?10949_ '#f))
            (gx#core-bind-import!__opt-lambda10883
             _in10946_
             _ctx10947_
             _force-weak?10949_))))
      (define gx#core-bind-import!
        (lambda _g11731_
          (let ((_g11730_ (length _g11731_)))
            (cond ((fx= _g11730_ 1) (apply gx#core-bind-import!__0 _g11731_))
                  ((fx= _g11730_ 2) (apply gx#core-bind-import!__1 _g11731_))
                  ((fx= _g11730_ 3)
                   (apply gx#core-bind-import!__opt-lambda10883 _g11731_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-import!
                    _g11731_))))))))
  (begin
    (define gx#core-bind-weak-import!__opt-lambda10869
      (lambda (_in10871_ _ctx10872_)
        (gx#core-bind-import!__opt-lambda10883 _in10871_ _ctx10872_ '#t)))
    (begin
      (define gx#core-bind-weak-import!__0
        (lambda (_in10877_)
          (let ((_ctx10879_ (gx#current-expander-context)))
            (gx#core-bind-weak-import!__opt-lambda10869
             _in10877_
             _ctx10879_))))
      (define gx#core-bind-weak-import!
        (lambda _g11733_
          (let ((_g11732_ (length _g11733_)))
            (cond ((fx= _g11732_ 1)
                   (apply gx#core-bind-weak-import!__0 _g11733_))
                  ((fx= _g11732_ 2)
                   (apply gx#core-bind-weak-import!__opt-lambda10869 _g11733_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-weak-import!
                    _g11733_))))))))
  (define gx#core-resolve-module-export
    (lambda (_out10762_)
      (letrec ((_subst10764_
                (lambda (_key10810_)
                  (let* ((_key1081110819_ _key10810_)
                         (_E1081410823_
                          (lambda ()
                            (error '"No clause matching" _key1081110819_)))
                         (_else1081310827_ (lambda () _key10810_))
                         (_K1081510858_
                          (lambda (_mark10830_ _id10831_)
                            (let* ((_mark1083210838_ _mark10830_)
                                   (_E1083410842_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _mark1083210838_)))
                                   (_K1083510850_
                                    (lambda (_subst10845_)
                                      (let ((_$e10847_
                                             (if _subst10845_
                                                 (table-ref
                                                  _subst10845_
                                                  _id10831_
                                                  '#f)
                                                 '#f)))
                                        (if _$e10847_
                                            _$e10847_
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Illegal key; missing substitution"
                                             _key10810_))))))
                              (if (##structure-instance-of?
                                   _mark1083210838_
                                   (##type-id gx#expander-mark::t))
                                  (let* ((_e1083610853_
                                          (##vector-ref _mark1083210838_ '1))
                                         (_subst10856_ _e1083610853_))
                                    (_K1083510850_ _subst10856_))
                                  (_E1083410842_))))))
                    (if (##pair? _key1081110819_)
                        (let ((_hd1081610861_ (##car _key1081110819_))
                              (_tl1081710863_ (##cdr _key1081110819_)))
                          (let* ((_id10866_ _hd1081610861_)
                                 (_mark10868_ _tl1081710863_))
                            (_K1081510858_ _mark10868_ _id10866_)))
                        (_else1081310827_))))))
        (let* ((_out1076510775_ _out10762_)
               (_E1076710779_
                (lambda () (error '"No clause matching" _out1076510775_)))
               (_K1076810786_
                (lambda (_phi10782_ _key10783_ _ctx10784_)
                  (gx#core-context-resolve
                   (gx#core-context-shift _ctx10784_ _phi10782_)
                   (_subst10764_ _key10783_)))))
          (if (##structure-direct-instance-of?
               _out1076510775_
               (##type-id gx#module-export::t))
              (let* ((_e1076910789_ (##vector-ref _out1076510775_ '1))
                     (_ctx10792_ _e1076910789_)
                     (_e1077010794_ (##vector-ref _out1076510775_ '2))
                     (_key10797_ _e1077010794_)
                     (_e1077110799_ (##vector-ref _out1076510775_ '3))
                     (_phi10802_ _e1077110799_)
                     (_e1077210804_ (##vector-ref _out1076510775_ '4))
                     (_e1077310807_ (##vector-ref _out1076510775_ '5)))
                (_K1076810786_ _phi10802_ _key10797_ _ctx10792_))
              (_E1076710779_))))))
  (begin
    (define gx#core-module-export->import__opt-lambda10685
      (lambda (_out10687_ _rename10688_ _dphi10689_)
        (let* ((_out1069010700_ _out10687_)
               (_E1069210704_
                (lambda () (error '"No clause matching" _out1069010700_)))
               (_K1069310716_
                (lambda (_weak?10707_
                         _name10708_
                         _phi10709_
                         _key10710_
                         _ctx10711_)
                  (##structure
                   gx#module-import::t
                   _out10687_
                   (let ((_$e10713_ _rename10688_))
                     (if _$e10713_ _$e10713_ _name10708_))
                   (fx+ _phi10709_ _dphi10689_)
                   _weak?10707_))))
          (if (##structure-direct-instance-of?
               _out1069010700_
               (##type-id gx#module-export::t))
              (let* ((_e1069410719_ (##vector-ref _out1069010700_ '1))
                     (_ctx10722_ _e1069410719_)
                     (_e1069510724_ (##vector-ref _out1069010700_ '2))
                     (_key10727_ _e1069510724_)
                     (_e1069610729_ (##vector-ref _out1069010700_ '3))
                     (_phi10732_ _e1069610729_)
                     (_e1069710734_ (##vector-ref _out1069010700_ '4))
                     (_name10737_ _e1069710734_)
                     (_e1069810739_ (##vector-ref _out1069010700_ '5))
                     (_weak?10742_ _e1069810739_))
                (_K1069310716_
                 _weak?10742_
                 _name10737_
                 _phi10732_
                 _key10727_
                 _ctx10722_))
              (_E1069210704_)))))
    (begin
      (define gx#core-module-export->import__0
        (lambda (_out10747_)
          (let* ((_rename10749_ '#f) (_dphi10751_ '0))
            (gx#core-module-export->import__opt-lambda10685
             _out10747_
             _rename10749_
             _dphi10751_))))
      (define gx#core-module-export->import__1
        (lambda (_out10753_ _rename10754_)
          (let ((_dphi10756_ '0))
            (gx#core-module-export->import__opt-lambda10685
             _out10753_
             _rename10754_
             _dphi10756_))))
      (define gx#core-module-export->import
        (lambda _g11735_
          (let ((_g11734_ (length _g11735_)))
            (cond ((fx= _g11734_ 1)
                   (apply gx#core-module-export->import__0 _g11735_))
                  ((fx= _g11734_ 2)
                   (apply gx#core-module-export->import__1 _g11735_))
                  ((fx= _g11734_ 3)
                   (apply gx#core-module-export->import__opt-lambda10685
                          _g11735_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-module-export->import
                    _g11735_))))))))
  (define gx#core-expand-module%
    (lambda (_stx10615_)
      (letrec ((_make-context10617_
                (lambda (_id10668_)
                  (let* ((_super10670_ (gx#current-expander-context))
                         (_bind-id10672_ (gx#stx-e _id10668_))
                         (_mod-id10674_
                          (if (##structure-instance-of?
                               _super10670_
                               'gx#module-context::t)
                              (make-symbol
                               (##structure-ref
                                _super10670_
                                '1
                                gx#expander-context::t
                                '#f)
                               '"$"
                               _bind-id10672_)
                              _bind-id10672_))
                         (_ns10676_ (symbol->string _mod-id10674_))
                         (_path10683_
                          (if (##structure-instance-of?
                               _super10670_
                               'gx#module-context::t)
                              (let ((_path10678_
                                     (##structure-ref
                                      _super10670_
                                      '7
                                      gx#module-context::t
                                      '#f)))
                                (if (let ((_$e10680_ (pair? _path10678_)))
                                      (if _$e10680_
                                          _$e10680_
                                          (null? _path10678_)))
                                    (cons _bind-id10672_ _path10678_)
                                    (if (not _path10678_)
                                        _bind-id10672_
                                        (cons _bind-id10672_
                                              (cons _path10678_ '())))))
                              _bind-id10672_)))
                    (let ((__obj11713 (make-object gx#module-context::t '11)))
                      (begin
                        (gx#module-context:::init!
                         __obj11713
                         _mod-id10674_
                         _super10670_
                         _ns10676_
                         _path10683_)
                        __obj11713))))))
        (let* ((_e1061810628_ _stx10615_)
               (_E1062010632_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1061810628_)))
               (_E1061910664_
                (lambda ()
                  (if (gx#stx-pair? _e1061810628_)
                      (let ((_e1062110636_ (gx#syntax-e _e1061810628_)))
                        (let ((_hd1062210639_ (##car _e1062110636_))
                              (_tl1062310641_ (##cdr _e1062110636_)))
                          (if (gx#stx-pair? _tl1062310641_)
                              (let ((_e1062410644_
                                     (gx#syntax-e _tl1062310641_)))
                                (let ((_hd1062510647_ (##car _e1062410644_))
                                      (_tl1062610649_ (##cdr _e1062410644_)))
                                  (let* ((_id10652_ _hd1062510647_)
                                         (_body10654_ _tl1062610649_))
                                    (if (if (gx#identifier? _id10652_)
                                            (gx#stx-list? _body10654_)
                                            '#f)
                                        (let* ((_ctx10656_
                                                (_make-context10617_
                                                 _id10652_))
                                               (_body10658_
                                                (gx#core-expand-module-begin
                                                 _body10654_
                                                 _ctx10656_))
                                               (_body10660_
                                                (gx#core-quote-syntax__1
                                                 (gx#core-cons
                                                  '%#begin
                                                  _body10658_)
                                                 (gx#stx-source _stx10615_))))
                                          (begin
                                            (##structure-set!
                                             _ctx10656_
                                             (make-promise
                                              (lambda ()
                                                (gx#eval-syntax* _body10660_)))
                                             '10
                                             gx#module-context::t
                                             '#f)
                                            (##structure-set!
                                             _ctx10656_
                                             _body10660_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            (gx#core-bind-syntax!__0
                                             _id10652_
                                             _ctx10656_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-list
                                              '%#module
                                              (gx#core-quote-syntax__0
                                               _id10652_)
                                              _body10660_)
                                             (gx#stx-source _stx10615_))))
                                        (_E1062010632_)))))
                              (_E1062010632_))))
                      (_E1062010632_)))))
          (_E1061910664_)))))
  (define gx#core-expand-module-begin
    (lambda (_body10581_ _ctx10582_)
      (call-with-parameters
       (lambda ()
         (begin
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx10585_
                   (gx#core-expand-head (cons '%%begin-module _body10581_)))
                  (_e1058610593_ _stx10585_)
                  (_E1058810597_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx10585_)))
                  (_E1058710611_
                   (lambda ()
                     (if (gx#stx-pair? _e1058610593_)
                         (let ((_e1058910601_ (gx#syntax-e _e1058610593_)))
                           (let ((_hd1059010604_ (##car _e1058910601_))
                                 (_tl1059110606_ (##cdr _e1058910601_)))
                             (if (if (gx#identifier? _hd1059010604_)
                                     (gx#core-identifier=?
                                      _hd1059010604_
                                      '%#begin-module)
                                     '#f)
                                 (let ((_body10609_ _tl1059110606_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx10585_)
                                           _body10609_
                                           (gx#core-expand-module-body
                                            _body10609_))
                                       (_E1058810597_)))
                                 (_E1058810597_))))
                         (_E1058810597_)))))
             (_E1058710611_))))
       gx#current-expander-context
       _ctx10582_
       gx#current-expander-phi
       '0)))
  (define gx#core-expand-module-body
    (lambda (_body10377_)
      (letrec ((_expand-special10379_
                (lambda (_hd10508_ _K10509_ _rest10510_ _r10511_)
                  (let* ((_e1051210529_ _hd10508_)
                         (_E1052410533_
                          (lambda ()
                            (_K10509_
                             _rest10510_
                             (cons (gx#core-expand-top _hd10508_) _r10511_))))
                         (_E1051410545_
                          (lambda ()
                            (if (gx#stx-pair? _e1051210529_)
                                (let ((_e1052510537_
                                       (gx#syntax-e _e1051210529_)))
                                  (let ((_hd1052610540_ (##car _e1052510537_))
                                        (_tl1052710542_ (##cdr _e1052510537_)))
                                    (if (if (gx#identifier? _hd1052610540_)
                                            (gx#core-identifier=?
                                             _hd1052610540_
                                             '%#export)
                                            '#f)
                                        (if '#t
                                            (_K10509_
                                             _rest10510_
                                             (cons _hd10508_ _r10511_))
                                            (_E1052410533_))
                                        (_E1052410533_))))
                                (_E1052410533_))))
                         (_E1051310577_
                          (lambda ()
                            (if (gx#stx-pair? _e1051210529_)
                                (let ((_e1051510549_
                                       (gx#syntax-e _e1051210529_)))
                                  (let ((_hd1051610552_ (##car _e1051510549_))
                                        (_tl1051710554_ (##cdr _e1051510549_)))
                                    (if (if (gx#identifier? _hd1051610552_)
                                            (gx#core-identifier=?
                                             _hd1051610552_
                                             '%#define-values)
                                            '#f)
                                        (if (gx#stx-pair? _tl1051710554_)
                                            (let ((_e1051810557_
                                                   (gx#syntax-e
                                                    _tl1051710554_)))
                                              (let ((_hd1051910560_
                                                     (##car _e1051810557_))
                                                    (_tl1052010562_
                                                     (##cdr _e1051810557_)))
                                                (let ((_hd-bind10565_
                                                       _hd1051910560_))
                                                  (if (gx#stx-pair?
                                                       _tl1052010562_)
                                                      (let ((_e1052110567_
                                                             (gx#syntax-e
                                                              _tl1052010562_)))
                                                        (let ((_hd1052210570_
                                                               (##car _e1052110567_))
                                                              (_tl1052310572_
                                                               (##cdr _e1052110567_)))
                                                          (let ((_expr10575_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1052210570_))
                    (if (gx#stx-null? _tl1052310572_)
                        (if (gx#core-bind-values? _hd-bind10565_)
                            (begin
                              (gx#core-bind-values!__0 _hd-bind10565_)
                              (_K10509_ _rest10510_ (cons _hd10508_ _r10511_)))
                            (_E1051410545_))
                        (_E1051410545_)))))
              (_E1051410545_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1051410545_))
                                        (_E1051410545_))))
                                (_E1051410545_)))))
                    (_E1051310577_))))
               (_expand-body10380_
                (lambda (_rbody10382_)
                  (let _lp10384_ ((_rest10386_ _rbody10382_) (_body10387_ '()))
                    (let* ((_rest1038810396_ _rest10386_)
                           (_E1039110400_
                            (lambda ()
                              (error '"No clause matching" _rest1038810396_)))
                           (_else1039010404_ (lambda () _body10387_))
                           (_K1039210496_
                            (lambda (_rest10407_ _hd10408_)
                              (let* ((_e1040910430_ _hd10408_)
                                     (_E1042510434_
                                      (lambda ()
                                        (_lp10384_
                                         _rest10407_
                                         (cons (gx#core-expand-expression
                                                _hd10408_)
                                               _body10387_))))
                                     (_E1042110448_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1040910430_)
                                            (let ((_e1042610438_
                                                   (gx#syntax-e
                                                    _e1040910430_)))
                                              (let ((_hd1042710441_
                                                     (##car _e1042610438_))
                                                    (_tl1042810443_
                                                     (##cdr _e1042610438_)))
                                                (let ((_form10446_
                                                       _hd1042710441_))
                                                  (if (gx#core-bound-identifier?__opt-lambda4273
                                                       _form10446_
                                                       gx#special-form-binding?)
                                                      (_lp10384_
                                                       _rest10407_
                                                       (cons _hd10408_
                                                             _body10387_))
                                                      (_E1042510434_)))))
                                            (_E1042510434_))))
                                     (_E1041110460_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1040910430_)
                                            (let ((_e1042210452_
                                                   (gx#syntax-e
                                                    _e1040910430_)))
                                              (let ((_hd1042310455_
                                                     (##car _e1042210452_))
                                                    (_tl1042410457_
                                                     (##cdr _e1042210452_)))
                                                (if (if (gx#identifier?
                                                         _hd1042310455_)
                                                        (gx#core-identifier=?
                                                         _hd1042310455_
                                                         '%#export)
                                                        '#f)
                                                    (if '#t
                                                        (_lp10384_
                                                         _rest10407_
                                                         (cons (gx#core-expand-export%__0
                                                                _hd10408_)
                                                               _body10387_))
                                                        (_E1042110448_))
                                                    (_E1042110448_))))
                                            (_E1042110448_))))
                                     (_E1041010492_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1040910430_)
                                            (let ((_e1041210464_
                                                   (gx#syntax-e
                                                    _e1040910430_)))
                                              (let ((_hd1041310467_
                                                     (##car _e1041210464_))
                                                    (_tl1041410469_
                                                     (##cdr _e1041210464_)))
                                                (if (if (gx#identifier?
                                                         _hd1041310467_)
                                                        (gx#core-identifier=?
                                                         _hd1041310467_
                                                         '%#define-values)
                                                        '#f)
                                                    (if (gx#stx-pair?
                                                         _tl1041410469_)
                                                        (let ((_e1041510472_
                                                               (gx#syntax-e
                                                                _tl1041410469_)))
                                                          (let ((_hd1041610475_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1041510472_))
                        (_tl1041710477_ (##cdr _e1041510472_)))
                    (let ((_hd-bind10480_ _hd1041610475_))
                      (if (gx#stx-pair? _tl1041710477_)
                          (let ((_e1041810482_ (gx#syntax-e _tl1041710477_)))
                            (let ((_hd1041910485_ (##car _e1041810482_))
                                  (_tl1042010487_ (##cdr _e1041810482_)))
                              (let ((_expr10490_ _hd1041910485_))
                                (if (gx#stx-null? _tl1042010487_)
                                    (if '#t
                                        (_lp10384_
                                         _rest10407_
                                         (cons (gx#core-quote-syntax__1
                                                (gx#core-list
                                                 '%#define-values
                                                 (gx#core-quote-bind-values
                                                  _hd-bind10480_)
                                                 (gx#core-expand-expression
                                                  _expr10490_))
                                                (gx#stx-source _hd10408_))
                                               _body10387_))
                                        (_E1041110460_))
                                    (_E1041110460_)))))
                          (_E1041110460_)))))
                (_E1041110460_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1041110460_))))
                                            (_E1041110460_)))))
                                (_E1041010492_)))))
                      (if (##pair? _rest1038810396_)
                          (let ((_hd1039310499_ (##car _rest1038810396_))
                                (_tl1039410501_ (##cdr _rest1038810396_)))
                            (let* ((_hd10504_ _hd1039310499_)
                                   (_rest10506_ _tl1039410501_))
                              (_K1039210496_ _rest10506_ _hd10504_)))
                          (_else1039010404_)))))))
        (_expand-body10380_
         (gx#core-expand-block__opt-lambda5327
          (cons '%#begin-module _body10377_)
          _expand-special10379_
          '#f
          values)))))
  (define gx#core-expand-import/export
    (lambda (_stx10220_
             _expanded?10221_
             _method10222_
             _current-phi10223_
             _expand110224_)
      (letrec ((_K10226_
                (lambda (_rest10344_ _r10345_)
                  (let* ((_e1034610353_ _rest10344_)
                         (_E1034810357_ (lambda () _r10345_))
                         (_E1034710373_
                          (lambda ()
                            (if (gx#stx-pair? _e1034610353_)
                                (let ((_e1034910361_
                                       (gx#syntax-e _e1034610353_)))
                                  (let ((_hd1035010364_ (##car _e1034910361_))
                                        (_tl1035110366_ (##cdr _e1034910361_)))
                                    (let* ((_hd10369_ _hd1035010364_)
                                           (_rest10371_ _tl1035110366_))
                                      (if '#t
                                          (_step10227_
                                           _hd10369_
                                           _rest10371_
                                           _r10345_)
                                          (_E1034810357_)))))
                                (_E1034810357_)))))
                    (_E1034710373_))))
               (_step10227_
                (lambda (_hd10258_ _rest10259_ _r10260_)
                  (let* ((_e1026110279_ _hd10258_)
                         (_E1027410283_
                          (lambda ()
                            (if (_expanded?10221_ (gx#stx-e _hd10258_))
                                (_K10226_
                                 _rest10259_
                                 (cons (gx#stx-e _hd10258_) _r10260_))
                                (_expand110224_
                                 _hd10258_
                                 _K10226_
                                 _rest10259_
                                 _r10260_))))
                         (_E1027010299_
                          (lambda ()
                            (if (gx#stx-pair? _e1026110279_)
                                (let ((_e1027510287_
                                       (gx#syntax-e _e1026110279_)))
                                  (let ((_hd1027610290_ (##car _e1027510287_))
                                        (_tl1027710292_ (##cdr _e1027510287_)))
                                    (let* ((_macro10295_ _hd1027610290_)
                                           (_body10297_ _tl1027710292_))
                                      (if (gx#core-bound-identifier?__opt-lambda4273
                                           _macro10295_
                                           gx#syntax-binding?)
                                          (_K10226_
                                           (cons (gx#core-apply-expander__opt-lambda5045
                                                  (gx#syntax-local-e__0
                                                   _macro10295_)
                                                  _hd10258_
                                                  _method10222_)
                                                 _rest10259_)
                                           _r10260_)
                                          (_E1027410283_)))))
                                (_E1027410283_))))
                         (_E1026310313_
                          (lambda ()
                            (if (gx#stx-pair? _e1026110279_)
                                (let ((_e1027110303_
                                       (gx#syntax-e _e1026110279_)))
                                  (let ((_hd1027210306_ (##car _e1027110303_))
                                        (_tl1027310308_ (##cdr _e1027110303_)))
                                    (if (eq? (gx#stx-e _hd1027210306_) 'begin:)
                                        (let ((_body10311_ _tl1027310308_))
                                          (if '#t
                                              (_K10226_
                                               (gx#stx-foldr
                                                cons
                                                _rest10259_
                                                _body10311_)
                                               _r10260_)
                                              (_E1027010299_)))
                                        (_E1027010299_))))
                                (_E1027010299_))))
                         (_E1026210340_
                          (lambda ()
                            (if (gx#stx-pair? _e1026110279_)
                                (let ((_e1026410317_
                                       (gx#syntax-e _e1026110279_)))
                                  (let ((_hd1026510320_ (##car _e1026410317_))
                                        (_tl1026610322_ (##cdr _e1026410317_)))
                                    (if (eq? (gx#stx-e _hd1026510320_) 'phi:)
                                        (if (gx#stx-pair? _tl1026610322_)
                                            (let ((_e1026710325_
                                                   (gx#syntax-e
                                                    _tl1026610322_)))
                                              (let ((_hd1026810328_
                                                     (##car _e1026710325_))
                                                    (_tl1026910330_
                                                     (##cdr _e1026710325_)))
                                                (let* ((_dphi10333_
                                                        _hd1026810328_)
                                                       (_body10335_
                                                        _tl1026910330_))
                                                  (if (gx#stx-fixnum?
                                                       _dphi10333_)
                                                      (let ((_rbody10338_
                                                             (call-with-parameters
                                                              (lambda ()
                                                                (_K10226_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body10335_
                         '()))
                      _current-phi10223_
                      (fx+ (gx#stx-e _dphi10333_) (_current-phi10223_)))))
                (_K10226_ _rest10259_ (foldr1 cons _r10260_ _rbody10338_)))
              (_E1026310313_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1026310313_))
                                        (_E1026310313_))))
                                (_E1026310313_)))))
                    (_E1026210340_)))))
        (let* ((_e1022810235_ _stx10220_)
               (_E1023010239_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1022810235_)))
               (_E1022910254_
                (lambda ()
                  (if (gx#stx-pair? _e1022810235_)
                      (let ((_e1023110243_ (gx#syntax-e _e1022810235_)))
                        (let ((_hd1023210246_ (##car _e1023110243_))
                              (_tl1023310248_ (##cdr _e1023110243_)))
                          (let ((_body10251_ _tl1023310248_))
                            (if '#t
                                (if (_current-phi10223_)
                                    (_K10226_ _body10251_ '())
                                    (call-with-parameters
                                     (lambda () (_K10226_ _body10251_ '()))
                                     _current-phi10223_
                                     (gx#current-expander-phi)))
                                (_E1023010239_)))))
                      (_E1023010239_)))))
          (_E1022910254_)))))
  (begin
    (define gx#core-expand-import%__opt-lambda9757
      (lambda (_stx9759_ _internal-expand?9760_)
        (letrec ((_expand19762_
                  (lambda (_hd10205_ _K10206_ _rest10207_ _r10208_)
                    (if (gx#core-bound-module? _hd10205_)
                        (_import19763_
                         (gx#syntax-local-e__0 _hd10205_)
                         _K10206_
                         _rest10207_
                         _r10208_)
                        (if (gx#core-library-module-path? _hd10205_)
                            (_import19763_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd10205_))
                             _K10206_
                             _rest10207_
                             _r10208_)
                            (if (gx#stx-string? _hd10205_)
                                (_import19763_
                                 (gx#import-module__0
                                  (gx#core-resolve-module-path__opt-lambda11045
                                   _hd10205_
                                   (gx#stx-source _stx9759_)))
                                 _K10206_
                                 _rest10207_
                                 _r10208_)
                                (if (##structure-instance-of?
                                     (gx#stx-e _hd10205_)
                                     'gx#module-context::t)
                                    (_K10206_
                                     _rest10207_
                                     (cons (gx#stx-e _hd10205_) _r10208_))
                                    (if (_import-spec?9764_ _hd10205_)
                                        (_import-spec9769_
                                         _hd10205_
                                         _K10206_
                                         _rest10207_
                                         _r10208_)
                                        (if (_import-submodule?9765_ _hd10205_)
                                            (_import-submodule9767_
                                             _hd10205_
                                             _K10206_
                                             _rest10207_
                                             _r10208_)
                                            (if (_import-runtime?9766_
                                                 _hd10205_)
                                                (_import-runtime9768_
                                                 _hd10205_
                                                 _K10206_
                                                 _rest10207_
                                                 _r10208_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; illegal import"
                                                 _stx9759_
                                                 _hd10205_))))))))))
                 (_import19763_
                  (lambda (_ctx10194_ _K10195_ _rest10196_ _r10197_)
                    (let ((_dphi10199_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K10195_
                       _rest10196_
                       (cons (##structure
                              gx#import-set::t
                              _ctx10194_
                              _dphi10199_
                              (map (lambda (_g1020010202_)
                                     (gx#core-module-export->import__opt-lambda10685
                                      _g1020010202_
                                      '#f
                                      _dphi10199_))
                                   (##structure-ref
                                    _ctx10194_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r10197_)))))
                 (_import-spec?9764_
                  (lambda (_hd10151_)
                    (let* ((_e1015210162_ _hd10151_)
                           (_E1015410166_ (lambda () '#f))
                           (_E1015310190_
                            (lambda ()
                              (if (gx#stx-pair? _e1015210162_)
                                  (let ((_e1015510170_
                                         (gx#syntax-e _e1015210162_)))
                                    (let ((_hd1015610173_
                                           (##car _e1015510170_))
                                          (_tl1015710175_
                                           (##cdr _e1015510170_)))
                                      (if (eq? (gx#stx-e _hd1015610173_)
                                               'spec:)
                                          (if (gx#stx-pair? _tl1015710175_)
                                              (let ((_e1015810178_
                                                     (gx#syntax-e
                                                      _tl1015710175_)))
                                                (let ((_hd1015910181_
                                                       (##car _e1015810178_))
                                                      (_tl1016010183_
                                                       (##cdr _e1015810178_)))
                                                  (let* ((_spath10186_
                                                          _hd1015910181_)
                                                         (_specs10188_
                                                          _tl1016010183_))
                                                    (if '#t
                                                        '#t
                                                        (_E1015410166_)))))
                                              (_E1015410166_))
                                          (_E1015410166_))))
                                  (_E1015410166_)))))
                      (_E1015310190_))))
                 (_import-submodule?9765_
                  (lambda (_hd10108_)
                    (let* ((_e1010910119_ _hd10108_)
                           (_E1011110123_ (lambda () '#f))
                           (_E1011010147_
                            (lambda ()
                              (if (gx#stx-pair? _e1010910119_)
                                  (let ((_e1011210127_
                                         (gx#syntax-e _e1010910119_)))
                                    (let ((_hd1011310130_
                                           (##car _e1011210127_))
                                          (_tl1011410132_
                                           (##cdr _e1011210127_)))
                                      (if (eq? (gx#stx-e _hd1011310130_) 'in:)
                                          (if (gx#stx-pair? _tl1011410132_)
                                              (let ((_e1011510135_
                                                     (gx#syntax-e
                                                      _tl1011410132_)))
                                                (let ((_hd1011610138_
                                                       (##car _e1011510135_))
                                                      (_tl1011710140_
                                                       (##cdr _e1011510135_)))
                                                  (let* ((_top10143_
                                                          _hd1011610138_)
                                                         (_sub10145_
                                                          _tl1011710140_))
                                                    (if '#t
                                                        '#t
                                                        (_E1011110123_)))))
                                              (_E1011110123_))
                                          (_E1011110123_))))
                                  (_E1011110123_)))))
                      (_E1011010147_))))
                 (_import-runtime?9766_
                  (lambda (_hd10065_)
                    (let* ((_e1006610076_ _hd10065_)
                           (_E1006810080_ (lambda () '#f))
                           (_E1006710104_
                            (lambda ()
                              (if (gx#stx-pair? _e1006610076_)
                                  (let ((_e1006910084_
                                         (gx#syntax-e _e1006610076_)))
                                    (let ((_hd1007010087_
                                           (##car _e1006910084_))
                                          (_tl1007110089_
                                           (##cdr _e1006910084_)))
                                      (if (eq? (gx#stx-e _hd1007010087_)
                                               'runtime:)
                                          (if (gx#stx-pair? _tl1007110089_)
                                              (let ((_e1007210092_
                                                     (gx#syntax-e
                                                      _tl1007110089_)))
                                                (let ((_hd1007310095_
                                                       (##car _e1007210092_))
                                                      (_tl1007410097_
                                                       (##cdr _e1007210092_)))
                                                  (let* ((_top10100_
                                                          _hd1007310095_)
                                                         (_spath10102_
                                                          _tl1007410097_))
                                                    (if '#t
                                                        '#t
                                                        (_E1006810080_)))))
                                              (_E1006810080_))
                                          (_E1006810080_))))
                                  (_E1006810080_)))))
                      (_E1006710104_))))
                 (_import-submodule9767_
                  (lambda (_hd10032_ _K10033_ _rest10034_ _r10035_)
                    (let* ((_e1003610043_ _hd10032_)
                           (_E1003810047_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e1003610043_)))
                           (_E1003710061_
                            (lambda ()
                              (if (gx#stx-pair? _e1003610043_)
                                  (let ((_e1003910051_
                                         (gx#syntax-e _e1003610043_)))
                                    (let ((_hd1004010054_
                                           (##car _e1003910051_))
                                          (_tl1004110056_
                                           (##cdr _e1003910051_)))
                                      (let ((_spath10059_ _tl1004110056_))
                                        (if '#t
                                            (_import19763_
                                             (_import-spec-source9770_
                                              _spath10059_)
                                             _K10033_
                                             _rest10034_
                                             _r10035_)
                                            (_E1003810047_)))))
                                  (_E1003810047_)))))
                      (_E1003710061_))))
                 (_import-runtime9768_
                  (lambda (_hd9999_ _K10000_ _rest10001_ _r10002_)
                    (let* ((_e1000310010_ _hd9999_)
                           (_E1000510014_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e1000310010_)))
                           (_E1000410028_
                            (lambda ()
                              (if (gx#stx-pair? _e1000310010_)
                                  (let ((_e1000610018_
                                         (gx#syntax-e _e1000310010_)))
                                    (let ((_hd1000710021_
                                           (##car _e1000610018_))
                                          (_tl1000810023_
                                           (##cdr _e1000610018_)))
                                      (let ((_spath10026_ _tl1000810023_))
                                        (if '#t
                                            (_K10000_
                                             _rest10001_
                                             (cons (_import-spec-source9770_
                                                    _spath10026_)
                                                   _r10002_))
                                            (_E1000510014_)))))
                                  (_E1000510014_)))))
                      (_E1000410028_))))
                 (_import-spec9769_
                  (lambda (_hd9838_ _K9839_ _rest9840_ _r9841_)
                    (let* ((_e98429859_ _hd9838_)
                           (_E98519863_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e98429859_)))
                           (_E98449973_
                            (lambda ()
                              (if (gx#stx-pair? _e98429859_)
                                  (let ((_e98529867_
                                         (gx#syntax-e _e98429859_)))
                                    (let ((_hd98539870_ (##car _e98529867_))
                                          (_tl98549872_ (##cdr _e98529867_)))
                                      (if (gx#stx-pair? _tl98549872_)
                                          (let ((_e98559875_
                                                 (gx#syntax-e _tl98549872_)))
                                            (let ((_hd98569878_
                                                   (##car _e98559875_))
                                                  (_tl98579880_
                                                   (##cdr _e98559875_)))
                                              (let* ((_path9883_ _hd98569878_)
                                                     (_specs9885_
                                                      _tl98579880_))
                                                (if '#t
                                                    (let ((_src-ctx9887_
                                                           (_import-spec-source9770_
                                                            _path9883_))
                                                          (_exports9888_
                                                           (make-table))
                                                          (_specs9889_
                                                           (gx#syntax->list
                                                            _specs9885_)))
                                                      (begin
                                                        (for-each
                                                         (lambda (_out9891_)
                                                           (table-set!
                                                            _exports9888_
                                                            (cons (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _out9891_
                           '3
                           gx#module-export::t
                           '#f)
                          (##direct-structure-ref
                           _out9891_
                           '4
                           gx#module-export::t
                           '#f))
                    _out9891_))
                 (##structure-ref _src-ctx9887_ '9 gx#module-context::t '#f))
                (_K9839_ _rest9840_
                         (foldl1 (lambda (_spec9893_ _r9894_)
                                   (let* ((_e98959911_ _spec9893_)
                                          (_E98979915_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _e98959911_)))
                                          (_E98969969_
                                           (lambda ()
                                             (if (gx#stx-pair? _e98959911_)
                                                 (let ((_e98989919_
                                                        (gx#syntax-e
                                                         _e98959911_)))
                                                   (let ((_hd98999922_
                                                          (##car _e98989919_))
                                                         (_tl99009924_
                                                          (##cdr _e98989919_)))
                                                     (let ((_phi9927_
                                                            _hd98999922_))
                                                       (if (gx#stx-pair?
                                                            _tl99009924_)
                                                           (let ((_e99019929_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl99009924_)))
                     (let ((_hd99029932_ (##car _e99019929_))
                           (_tl99039934_ (##cdr _e99019929_)))
                       (let ((_name9937_ _hd99029932_))
                         (if (gx#stx-pair? _tl99039934_)
                             (let ((_e99049939_ (gx#syntax-e _tl99039934_)))
                               (let ((_hd99059942_ (##car _e99049939_))
                                     (_tl99069944_ (##cdr _e99049939_)))
                                 (let ((_src-phi9947_ _hd99059942_))
                                   (if (gx#stx-pair? _tl99069944_)
                                       (let ((_e99079949_
                                              (gx#syntax-e _tl99069944_)))
                                         (let ((_hd99089952_
                                                (##car _e99079949_))
                                               (_tl99099954_
                                                (##cdr _e99079949_)))
                                           (let ((_src-name9957_ _hd99089952_))
                                             (if (gx#stx-null? _tl99099954_)
                                                 (if (if (gx#stx-fixnum?
                                                          _src-phi9947_)
                                                         (if (gx#identifier?
                                                              _src-name9957_)
                                                             (if (gx#stx-fixnum?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _phi9927_)
                         (gx#identifier? _name9937_)
                         '#f)
                     '#f)
                 '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_src-phi9959_
                                                            (gx#stx-e
                                                             _src-phi9947_))
                                                           (_src-name9960_
                                                            (gx#core-identifier-key
                                                             _src-name9957_))
                                                           (_phi9961_
                                                            (gx#stx-e
                                                             _phi9927_))
                                                           (_name9962_
                                                            (gx#core-identifier-key
                                                             _name9937_)))
                                                       (let ((_$e9964_
                                                              (table-ref
                                                               _exports9888_
                                                               (cons _src-phi9959_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _src-name9960_)
                       '#f)))
                 (if _$e9964_
                     ((lambda (_out9967_)
                        (cons (gx#core-module-export->import__opt-lambda10685
                               _out9967_
                               _name9962_
                               (fx- _phi9961_ _src-phi9959_))
                              _r9894_))
                      _$e9964_)
                     (gx#raise-syntax-error
                      '#f
                      '"Bad syntax; no matching export"
                      _stx9759_
                      _hd9838_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E98979915_))
                                                 (_E98979915_)))))
                                       (_E98979915_)))))
                             (_E98979915_)))))
                   (_E98979915_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E98979915_)))))
                                     (_E98969969_)))
                                 _r9841_
                                 _specs9889_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E98519863_)))))
                                          (_E98519863_))))
                                  (_E98519863_))))
                           (_E98439995_
                            (lambda ()
                              (if (gx#stx-pair? _e98429859_)
                                  (let ((_e98459977_
                                         (gx#syntax-e _e98429859_)))
                                    (let ((_hd98469980_ (##car _e98459977_))
                                          (_tl98479982_ (##cdr _e98459977_)))
                                      (if (gx#stx-pair? _tl98479982_)
                                          (let ((_e98489985_
                                                 (gx#syntax-e _tl98479982_)))
                                            (let ((_hd98499988_
                                                   (##car _e98489985_))
                                                  (_tl98509990_
                                                   (##cdr _e98489985_)))
                                              (let ((_path9993_ _hd98499988_))
                                                (if (gx#stx-null? _tl98509990_)
                                                    (if '#t
                                                        (_K9839_ _rest9840_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (_import-spec-source9770_ _path9993_) _r9841_))
                (_E98449973_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E98449973_)))))
                                          (_E98449973_))))
                                  (_E98449973_)))))
                      (_E98439995_))))
                 (_import-spec-source9770_
                  (lambda (_spath9836_)
                    (gx#core-import-nested-module _spath9836_ _stx9759_)))
                 (_import!9771_
                  (lambda (_rbody9784_)
                    (letrec* ((_current-ctx9786_ (gx#current-expander-context))
                              (_deps9787_ (make-hash-table-eq))
                              (_bind!9788_
                               (lambda (_hd9834_)
                                 (begin
                                   (gx#core-bind-import!__1
                                    _hd9834_
                                    _current-ctx9786_)
                                   (if (if (fxpositive?
                                            (##direct-structure-ref
                                             _hd9834_
                                             '3
                                             gx#module-import::t
                                             '#f))
                                           (fxzero? (##direct-structure-ref
                                                     (##direct-structure-ref
                                                      _hd9834_
                                                      '1
                                                      gx#module-import::t
                                                      '#f)
                                                     '3
                                                     gx#module-export::t
                                                     '#f))
                                           '#f)
                                       (table-set!
                                        _deps9787_
                                        (##direct-structure-ref
                                         (##direct-structure-ref
                                          _hd9834_
                                          '1
                                          gx#module-import::t
                                          '#f)
                                         '1
                                         gx#module-export::t
                                         '#f)
                                        '#t)
                                       '#!void))))
                              (_fold-e9789_
                               (lambda (_in9831_ _r9832_)
                                 (if (##structure-direct-instance-of?
                                      _in9831_
                                      'gx#module-import::t)
                                     (cons _in9831_ _r9832_)
                                     (if (##structure-direct-instance-of?
                                          _in9831_
                                          'gx#import-set::t)
                                         (foldl1 cons
                                                 _r9832_
                                                 (##direct-structure-ref
                                                  _in9831_
                                                  '3
                                                  gx#import-set::t
                                                  '#f))
                                         _r9832_)))))
                      (let _lp9791_ ((_rest9793_ _rbody9784_) (_body9794_ '()))
                        (let* ((_rest97959803_ _rest9793_)
                               (_E97989807_
                                (lambda ()
                                  (error '"No clause matching"
                                         _rest97959803_)))
                               (_else97979813_
                                (lambda ()
                                  (begin
                                    (if (##structure-instance-of?
                                         _current-ctx9786_
                                         'gx#module-context::t)
                                        (##structure-set!
                                         _current-ctx9786_
                                         (foldl1 _fold-e9789_
                                                 (##structure-ref
                                                  _current-ctx9786_
                                                  '8
                                                  gx#module-context::t
                                                  '#f)
                                                 _body9794_)
                                         '8
                                         gx#module-context::t
                                         '#f)
                                        '#!void)
                                    (table-for-each
                                     (lambda (_ctx9811_ _g11736_)
                                       (gx#eval-module _ctx9811_))
                                     _deps9787_)
                                    _body9794_)))
                               (_K97999819_
                                (lambda (_rest9816_ _hd9817_)
                                  (begin
                                    (if (##structure-direct-instance-of?
                                         _hd9817_
                                         'gx#module-import::t)
                                        (_bind!9788_ _hd9817_)
                                        (if (##structure-direct-instance-of?
                                             _hd9817_
                                             'gx#import-set::t)
                                            (for-each
                                             _bind!9788_
                                             (##direct-structure-ref
                                              _hd9817_
                                              '3
                                              gx#import-set::t
                                              '#f))
                                            (if (##structure-instance-of?
                                                 _hd9817_
                                                 'gx#module-context::t)
                                                '#!void
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _stx9759_
                                                 _hd9817_))))
                                    (_lp9791_
                                     _rest9816_
                                     (cons _hd9817_ _body9794_))))))
                          (if (##pair? _rest97959803_)
                              (let ((_hd98009822_ (##car _rest97959803_))
                                    (_tl98019824_ (##cdr _rest97959803_)))
                                (let* ((_hd9827_ _hd98009822_)
                                       (_rest9829_ _tl98019824_))
                                  (_K97999819_ _rest9829_ _hd9827_)))
                              (_else97979813_)))))))
                 (_expanded-import?9772_
                  (lambda (_e9776_)
                    (let ((_$e9778_
                           (##structure-direct-instance-of?
                            _e9776_
                            'gx#import-set::t)))
                      (if _$e9778_
                          _$e9778_
                          (let ((_$e9781_
                                 (##structure-direct-instance-of?
                                  _e9776_
                                  'gx#module-import::t)))
                            (if _$e9781_
                                _$e9781_
                                (##structure-instance-of?
                                 _e9776_
                                 'gx#module-context::t))))))))
          (let ((_rbody9774_
                 (gx#core-expand-import/export
                  _stx9759_
                  _expanded-import?9772_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand19762_)))
            (if _internal-expand?9760_
                (reverse _rbody9774_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!9771_ _rbody9774_))
                 (gx#stx-source _stx9759_)))))))
    (begin
      (define gx#core-expand-import%__0
        (lambda (_stx10213_)
          (let ((_internal-expand?10215_ '#f))
            (gx#core-expand-import%__opt-lambda9757
             _stx10213_
             _internal-expand?10215_))))
      (define gx#core-expand-import%
        (lambda _g11738_
          (let ((_g11737_ (length _g11738_)))
            (cond ((fx= _g11737_ 1) (apply gx#core-expand-import%__0 _g11738_))
                  ((fx= _g11737_ 2)
                   (apply gx#core-expand-import%__opt-lambda9757 _g11738_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-import%
                    _g11738_))))))))
  (define gx#core-import-nested-module
    (lambda (_spath9686_ _where9687_)
      (let* ((_e96889695_ _spath9686_)
             (_E96909699_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e96889695_)))
             (_E96899754_
              (lambda ()
                (if (gx#stx-pair? _e96889695_)
                    (let ((_e96919703_ (gx#syntax-e _e96889695_)))
                      (let ((_hd96929706_ (##car _e96919703_))
                            (_tl96939708_ (##cdr _e96919703_)))
                        (let* ((_origin9711_ _hd96929706_)
                               (_sub9713_ _tl96939708_))
                          (if '#t
                              (let ((_origin-ctx9715_
                                     (if (gx#stx-false? _origin9711_)
                                         (gx#current-expander-context)
                                         (gx#import-module__0 _origin9711_))))
                                (let _lp9717_ ((_rest9719_ _sub9713_)
                                               (_ctx9720_ _origin-ctx9715_))
                                  (let* ((_e97219728_ _rest9719_)
                                         (_E97239732_ (lambda () _ctx9720_))
                                         (_E97229750_
                                          (lambda ()
                                            (if (gx#stx-pair? _e97219728_)
                                                (let ((_e97249736_
                                                       (gx#syntax-e
                                                        _e97219728_)))
                                                  (let ((_hd97259739_
                                                         (##car _e97249736_))
                                                        (_tl97269741_
                                                         (##cdr _e97249736_)))
                                                    (let* ((_id9744_
                                                            _hd97259739_)
                                                           (_rest9746_
                                                            _tl97269741_))
                                                      (if '#t
                                                          (let ((_bind9748_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#resolve-identifier__opt-lambda4830
                          _id9744_
                          '0
                          _ctx9720_)))
                    (begin
                      (if (if (##structure-direct-instance-of?
                               _bind9748_
                               'gx#syntax-binding::t)
                              (##structure-instance-of?
                               (##direct-structure-ref
                                _bind9748_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               'gx#module-context::t)
                              '#f)
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where9687_
                           _spath9686_
                           _id9744_))
                      (_lp9717_
                       _rest9746_
                       (##direct-structure-ref
                        _bind9748_
                        '4
                        gx#syntax-binding::t
                        '#f))))
                  (_E97239732_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E97239732_)))))
                                    (_E97229750_))))
                              (_E96909699_)))))
                    (_E96909699_)))))
        (_E96899754_))))
  (define gx#core-expand-import-source
    (lambda (_hd9684_)
      (gx#core-expand-import%__opt-lambda9757
       (cons 'import-internal% (cons _hd9684_ '()))
       '#t)))
  (begin
    (define gx#core-expand-export%__opt-lambda9266
      (lambda (_stx9268_ _internal-expand?9269_)
        (letrec* ((_make-export__opt-lambda9630__1170211703_
                   (lambda (_bind9632_ _phi9633_ _ctx9634_ _name9635_)
                     (let* ((_key9637_
                             (##structure-ref _bind9632_ '2 gx#binding::t '#f))
                            (_export-key9639_
                             (if _name9635_
                                 (gx#core-identifier-key _name9635_)
                                 _key9637_)))
                       (##structure
                        gx#module-export::t
                        _ctx9634_
                        _key9637_
                        _phi9633_
                        _export-key9639_
                        (let ((_$e9642_
                               (##structure-instance-of?
                                _bind9632_
                                'gx#extern-binding::t)))
                          (if _$e9642_
                              _$e9642_
                              (##structure-direct-instance-of?
                               _bind9632_
                               'gx#import-binding::t)))))))
                  (_make-export__0__1170411707_
                   (lambda (_bind9648_)
                     (let* ((_phi9650_ (gx#current-export-expander-phi))
                            (_ctx9652_ (gx#current-expander-context))
                            (_name9654_ '#f))
                       (_make-export__opt-lambda9630__1170211703_
                        _bind9648_
                        _phi9650_
                        _ctx9652_
                        _name9654_))))
                  (_make-export__1__1170511708_
                   (lambda (_bind9656_ _phi9657_)
                     (let* ((_ctx9659_ (gx#current-expander-context))
                            (_name9661_ '#f))
                       (_make-export__opt-lambda9630__1170211703_
                        _bind9656_
                        _phi9657_
                        _ctx9659_
                        _name9661_))))
                  (_make-export__2__1170611709_
                   (lambda (_bind9663_ _phi9664_ _ctx9665_)
                     (let ((_name9667_ '#f))
                       (_make-export__opt-lambda9630__1170211703_
                        _bind9663_
                        _phi9664_
                        _ctx9665_
                        _name9667_))))
                  (_make-export9271_
                   (lambda _g11740_
                     (let ((_g11739_ (length _g11740_)))
                       (cond ((fx= _g11739_ 1)
                              (apply _make-export__0__1170411707_ _g11740_))
                             ((fx= _g11739_ 2)
                              (apply _make-export__1__1170511708_ _g11740_))
                             ((fx= _g11739_ 3)
                              (apply _make-export__2__1170611709_ _g11740_))
                             ((fx= _g11739_ 4)
                              (apply _make-export__opt-lambda9630__1170211703_
                                     _g11740_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g11740_))))))
                  (_expand19272_
                   (lambda (_hd9345_ _K9346_ _rest9347_ _r9348_)
                     (let* ((_e93499381_ _hd9345_)
                            (_E93769385_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx9268_
                                _hd9345_)))
                            (_E93669464_
                             (lambda ()
                               (if (gx#stx-pair? _e93499381_)
                                   (let ((_e93779389_
                                          (gx#syntax-e _e93499381_)))
                                     (let ((_hd93789392_ (##car _e93779389_))
                                           (_tl93799394_ (##cdr _e93779389_)))
                                       (if (eq? (gx#stx-e _hd93789392_)
                                                'import:)
                                           (let ((_in9397_ _tl93799394_))
                                             (if (gx#stx-list? _in9397_)
                                                 (let _lp9399_ ((_in-rest9401_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in9397_)
                        (_r9402_ _r9348_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e94039410_
                                                           _in-rest9401_)
                                                          (_E94059414_
                                                           (lambda ()
                                                             (_K9346_ _rest9347_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r9402_)))
                  (_E94049460_
                   (lambda ()
                     (if (gx#stx-pair? _e94039410_)
                         (let ((_e94069418_ (gx#syntax-e _e94039410_)))
                           (let ((_hd94079421_ (##car _e94069418_))
                                 (_tl94089423_ (##cdr _e94069418_)))
                             (let* ((_hd9426_ _hd94079421_)
                                    (_in-rest9428_ _tl94089423_))
                               (if '#t
                                   (let ((_src9458_
                                          (if (gx#core-bound-module? _hd9426_)
                                              (gx#syntax-local-e__0 _hd9426_)
                                              (if (gx#core-library-module-path?
                                                   _hd9426_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd9426_))
                                                  (if (gx#stx-string? _hd9426_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-module-path__opt-lambda11045
                                                        _hd9426_
                                                        (gx#stx-source
                                                         _stx9268_)))
                                                      (let* ((_e94299436_
                                                              _hd9426_)
                                                             (_E94319440_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; illegal re-export"
                         _stx9268_
                         _hd9426_)))
                     (_E94309454_
                      (lambda ()
                        (if (gx#stx-pair? _e94299436_)
                            (let ((_e94329444_ (gx#syntax-e _e94299436_)))
                              (let ((_hd94339447_ (##car _e94329444_))
                                    (_tl94349449_ (##cdr _e94329444_)))
                                (if (eq? (gx#stx-e _hd94339447_) 'in:)
                                    (let ((_spath9452_ _tl94349449_))
                                      (if '#t
                                          (gx#core-import-nested-module
                                           _spath9452_
                                           _stx9268_)
                                          (_E94319440_)))
                                    (_E94319440_))))
                            (_E94319440_)))))
                (_E94309454_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp9399_
                                      _in-rest9428_
                                      (_export-imports9273_
                                       _src9458_
                                       _r9402_)))
                                   (_E94059414_)))))
                         (_E94059414_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E94049460_)))
                                                 (_E93769385_)))
                                           (_E93769385_))))
                                   (_E93769385_))))
                            (_E93539503_
                             (lambda ()
                               (if (gx#stx-pair? _e93499381_)
                                   (let ((_e93679468_
                                          (gx#syntax-e _e93499381_)))
                                     (let ((_hd93689471_ (##car _e93679468_))
                                           (_tl93699473_ (##cdr _e93679468_)))
                                       (if (eq? (gx#stx-e _hd93689471_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl93699473_)
                                               (let ((_e93709476_
                                                      (gx#syntax-e
                                                       _tl93699473_)))
                                                 (let ((_hd93719479_
                                                        (##car _e93709476_))
                                                       (_tl93729481_
                                                        (##cdr _e93709476_)))
                                                   (let ((_id9484_
                                                          _hd93719479_))
                                                     (if (gx#stx-pair?
                                                          _tl93729481_)
                                                         (let ((_e93739486_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl93729481_)))
                   (let ((_hd93749489_ (##car _e93739486_))
                         (_tl93759491_ (##cdr _e93739486_)))
                     (let ((_name9494_ _hd93749489_))
                       (if (gx#stx-null? _tl93759491_)
                           (if '#t
                               (let* ((_phi9496_
                                       (gx#current-export-expander-phi))
                                      (_$e9498_
                                       (gx#core-resolve-identifier__1
                                        _id9484_
                                        _phi9496_)))
                                 (if _$e9498_
                                     ((lambda (_bind9501_)
                                        (_K9346_ _rest9347_
                                                 (cons (_make-export__opt-lambda9630__1170211703_
                                                        _bind9501_
                                                        _phi9496_
                                                        (gx#current-expander-context)
                                                        _name9494_)
                                                       _r9348_)))
                                      _$e9498_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx9268_
                                      _hd9345_
                                      _id9484_)))
                               (_E93669464_))
                           (_E93669464_)))))
                 (_E93669464_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E93669464_))
                                           (_E93669464_))))
                                   (_E93669464_))))
                            (_E93529552_
                             (lambda ()
                               (if (gx#stx-pair? _e93499381_)
                                   (let ((_e93549507_
                                          (gx#syntax-e _e93499381_)))
                                     (let ((_hd93559510_ (##car _e93549507_))
                                           (_tl93569512_ (##cdr _e93549507_)))
                                       (if (eq? (gx#stx-e _hd93559510_) 'spec:)
                                           (if (gx#stx-pair? _tl93569512_)
                                               (let ((_e93579515_
                                                      (gx#syntax-e
                                                       _tl93569512_)))
                                                 (let ((_hd93589518_
                                                        (##car _e93579515_))
                                                       (_tl93599520_
                                                        (##cdr _e93579515_)))
                                                   (let ((_phi9523_
                                                          _hd93589518_))
                                                     (if (gx#stx-pair?
                                                          _tl93599520_)
                                                         (let ((_e93609525_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl93599520_)))
                   (let ((_hd93619528_ (##car _e93609525_))
                         (_tl93629530_ (##cdr _e93609525_)))
                     (let ((_id9533_ _hd93619528_))
                       (if (gx#stx-pair? _tl93629530_)
                           (let ((_e93639535_ (gx#syntax-e _tl93629530_)))
                             (let ((_hd93649538_ (##car _e93639535_))
                                   (_tl93659540_ (##cdr _e93639535_)))
                               (let ((_name9543_ _hd93649538_))
                                 (if (gx#stx-null? _tl93659540_)
                                     (if (if (gx#stx-fixnum? _phi9523_)
                                             (if (gx#identifier? _id9533_)
                                                 (gx#identifier? _name9543_)
                                                 '#f)
                                             '#f)
                                         (let* ((_phi9545_
                                                 (gx#stx-e _phi9523_))
                                                (_$e9547_
                                                 (gx#core-resolve-identifier__1
                                                  _id9533_
                                                  _phi9545_)))
                                           (if _$e9547_
                                               ((lambda (_bind9550_)
                                                  (_K9346_ _rest9347_
                                                           (cons (_make-export__opt-lambda9630__1170211703_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _bind9550_
                          _phi9545_
                          (gx#current-expander-context)
                          _name9543_)
                         _r9348_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e9547_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx9268_
                                                _hd9345_
                                                _id9533_)))
                                         (_E93539503_))
                                     (_E93539503_)))))
                           (_E93539503_)))))
                 (_E93539503_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E93539503_))
                                           (_E93539503_))))
                                   (_E93539503_))))
                            (_E93519563_
                             (lambda ()
                               (let ((_id9556_ _e93499381_))
                                 (if (gx#identifier? _id9556_)
                                     (let ((_$e9558_
                                            (gx#core-resolve-identifier__1
                                             _id9556_
                                             (gx#current-export-expander-phi))))
                                       (if _$e9558_
                                           ((lambda (_bind9561_)
                                              (_K9346_ _rest9347_
                                                       (cons (_make-export__0__1170411707_
                                                              _bind9561_)
                                                             _r9348_)))
                                            _$e9558_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx9268_
                                            _hd9345_)))
                                     (_E93529552_)))))
                            (_E93509627_
                             (lambda ()
                               (if (eq? (gx#stx-e _e93499381_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx9567_
                                               (gx#current-expander-context))
                                              (_current-phi9569_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx9571_
                                               (gx#core-context-shift
                                                _current-ctx9567_
                                                _current-phi9569_))
                                              (_phi-bind9573_
                                               (table->list
                                                (##structure-ref
                                                 _phi-ctx9571_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp9576_ ((_bind-rest9578_
                                                         _phi-bind9573_)
                                                        (_set9579_ '()))
                                           (let* ((_bind-rest95809590_
                                                   _bind-rest9578_)
                                                  (_E95839594_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _bind-rest95809590_)))
                                                  (_else95829598_
                                                   (lambda ()
                                                     (_K9346_ _rest9347_
                                                              (cons (##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             gx#export-set::t
                             '#f
                             _current-phi9569_
                             _set9579_)
                            _r9348_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_K95849608_
                                                   (lambda (_bind-rest9601_
                                                            _bind9602_
                                                            _key9603_)
                                                     (if (let ((_$e9605_
                                                                (##structure-direct-instance-of?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind9602_
                         'gx#import-binding::t)))
                   (if _$e9605_
                       _$e9605_
                       (gx#private-feature-binding? _bind9602_)))
                 (_lp9576_ _bind-rest9601_ _set9579_)
                 (_lp9576_
                  _bind-rest9601_
                  (cons (_make-export__2__1170611709_
                         _bind9602_
                         _current-phi9569_
                         _current-ctx9567_)
                        _set9579_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest95809590_)
                                                 (let ((_hd95859611_
                                                        (##car _bind-rest95809590_))
                                                       (_tl95869613_
                                                        (##cdr _bind-rest95809590_)))
                                                   (if (##pair? _hd95859611_)
                                                       (let ((_hd95879616_
                                                              (##car _hd95859611_))
                                                             (_tl95889618_
                                                              (##cdr _hd95859611_)))
                                                         (let* ((_key9621_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd95879616_)
                        (_bind9623_ _tl95889618_)
                        (_bind-rest9625_ _tl95869613_))
                   (_K95849608_ _bind-rest9625_ _bind9623_ _key9621_)))
               (_else95829598_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else95829598_)))))
                                       (_E93519563_))
                                   (_E93519563_)))))
                       (_E93509627_))))
                  (_export-imports9273_
                   (lambda (_src9294_ _r9295_)
                     (letrec* ((_current-ctx9297_
                                (gx#current-expander-context))
                               (_current-phi9298_
                                (gx#current-export-expander-phi))
                               (_import->export9299_
                                (lambda (_in9307_)
                                  (let* ((_in93089316_ _in9307_)
                                         (_E93109320_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in93089316_)))
                                         (_K93119327_
                                          (lambda (_phi9323_
                                                   _key9324_
                                                   _out9325_)
                                            (if (fx= _phi9323_
                                                     _current-phi9298_)
                                                (if (eq? _src9294_
                                                         (##direct-structure-ref
                                                          _out9325_
                                                          '1
                                                          gx#module-export::t
                                                          '#f))
                                                    (##structure
                                                     gx#module-export::t
                                                     _current-ctx9297_
                                                     _key9324_
                                                     _phi9323_
                                                     _key9324_
                                                     '#t)
                                                    '#f)
                                                '#f))))
                                    (if (##structure-direct-instance-of?
                                         _in93089316_
                                         (##type-id gx#module-import::t))
                                        (let* ((_e93129330_
                                                (##vector-ref _in93089316_ '1))
                                               (_out9333_ _e93129330_)
                                               (_e93139335_
                                                (##vector-ref _in93089316_ '2))
                                               (_key9338_ _e93139335_)
                                               (_e93149340_
                                                (##vector-ref _in93089316_ '3))
                                               (_phi9343_ _e93149340_))
                                          (_K93119327_
                                           _phi9343_
                                           _key9338_
                                           _out9333_))
                                        (_E93109320_)))))
                               (_fold-e9300_
                                (lambda (_in9302_ _r9303_)
                                  (let ((_out9305_
                                         (_import->export9299_ _in9302_)))
                                    (if _out9305_
                                        (cons _out9305_ _r9303_)
                                        _r9303_)))))
                       (cons (##structure
                              gx#export-set::t
                              _src9294_
                              _current-phi9298_
                              (foldl1 _fold-e9300_
                                      '()
                                      (##structure-ref
                                       _current-ctx9297_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r9295_))))
                  (_export!9274_
                   (lambda (_rbody9284_)
                     (letrec* ((_current-ctx9286_
                                (gx#current-expander-context))
                               (_fold-e9287_
                                (lambda (_out9291_ _r9292_)
                                  (if (##structure-direct-instance-of?
                                       _out9291_
                                       'gx#module-export::t)
                                      (cons _out9291_ _r9292_)
                                      (if (##structure-direct-instance-of?
                                           _out9291_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r9292_
                                                  (##direct-structure-ref
                                                   _out9291_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r9292_)))))
                       (let ((_body9289_ (reverse _rbody9284_)))
                         (begin
                           (##structure-set!
                            _current-ctx9286_
                            (foldl1 _fold-e9287_
                                    (##structure-ref
                                     _current-ctx9286_
                                     '9
                                     gx#module-context::t
                                     '#f)
                                    _body9289_)
                            '9
                            gx#module-context::t
                            '#f)
                           _body9289_)))))
                  (_expanded-export?9275_
                   (lambda (_e9279_)
                     (let ((_$e9281_
                            (##structure-direct-instance-of?
                             _e9279_
                             'gx#module-export::t)))
                       (if _$e9281_
                           _$e9281_
                           (##structure-direct-instance-of?
                            _e9279_
                            'gx#export-set::t))))))
          (let ((_rbody9277_
                 (gx#core-expand-import/export
                  _stx9268_
                  _expanded-export?9275_
                  'apply-export-expander
                  gx#current-export-expander-phi
                  _expand19272_)))
            (if _internal-expand?9269_
                (reverse _rbody9277_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#export (_export!9274_ _rbody9277_))
                 (gx#stx-source _stx9268_)))))))
    (begin
      (define gx#core-expand-export%__0
        (lambda (_stx9677_)
          (let ((_internal-expand?9679_ '#f))
            (gx#core-expand-export%__opt-lambda9266
             _stx9677_
             _internal-expand?9679_))))
      (define gx#core-expand-export%
        (lambda _g11742_
          (let ((_g11741_ (length _g11742_)))
            (cond ((fx= _g11741_ 1) (apply gx#core-expand-export%__0 _g11742_))
                  ((fx= _g11741_ 2)
                   (apply gx#core-expand-export%__opt-lambda9266 _g11742_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-export%
                    _g11742_))))))))
  (define gx#core-expand-export-source
    (lambda (_hd9265_)
      (gx#core-expand-export%__opt-lambda9266
       (cons 'export-macro% (cons _hd9265_ '()))
       '#t)))
  (define gx#core-expand-provide%
    (lambda (_stx9235_)
      (let* ((_e92369243_ _stx9235_)
             (_E92389247_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e92369243_)))
             (_E92379261_
              (lambda ()
                (if (gx#stx-pair? _e92369243_)
                    (let ((_e92399251_ (gx#syntax-e _e92369243_)))
                      (let ((_hd92409254_ (##car _e92399251_))
                            (_tl92419256_ (##cdr _e92399251_)))
                        (let ((_body9259_ _tl92419256_))
                          (if (gx#identifier-list? _body9259_)
                              (begin
                                (gx#stx-for-each1
                                 gx#core-bind-feature!
                                 _body9259_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#provide
                                  (gx#stx-map1
                                   gx#core-quote-syntax
                                   _body9259_))
                                 (gx#stx-source _stx9235_)))
                              (_E92389247_)))))
                    (_E92389247_)))))
        (_E92379261_))))
  (begin
    (define gx#core-bind-feature!__opt-lambda9199
      (lambda (_id9201_ _private?9202_ _phi9203_ _ctx9204_)
        (gx#core-bind-syntax!__opt-lambda6295
         _id9201_
         ((if _private?9202_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id9201_))
         _private?9202_
         _phi9203_
         _ctx9204_)))
    (begin
      (define gx#core-bind-feature!__0
        (lambda (_id9209_)
          (let* ((_private?9211_ '#f)
                 (_phi9213_ (gx#current-expander-phi))
                 (_ctx9215_ (gx#current-expander-context)))
            (gx#core-bind-feature!__opt-lambda9199
             _id9209_
             _private?9211_
             _phi9213_
             _ctx9215_))))
      (define gx#core-bind-feature!__1
        (lambda (_id9217_ _private?9218_)
          (let* ((_phi9220_ (gx#current-expander-phi))
                 (_ctx9222_ (gx#current-expander-context)))
            (gx#core-bind-feature!__opt-lambda9199
             _id9217_
             _private?9218_
             _phi9220_
             _ctx9222_))))
      (define gx#core-bind-feature!__2
        (lambda (_id9224_ _private?9225_ _phi9226_)
          (let ((_ctx9228_ (gx#current-expander-context)))
            (gx#core-bind-feature!__opt-lambda9199
             _id9224_
             _private?9225_
             _phi9226_
             _ctx9228_))))
      (define gx#core-bind-feature!
        (lambda _g11744_
          (let ((_g11743_ (length _g11744_)))
            (cond ((fx= _g11743_ 1) (apply gx#core-bind-feature!__0 _g11744_))
                  ((fx= _g11743_ 2) (apply gx#core-bind-feature!__1 _g11744_))
                  ((fx= _g11743_ 3) (apply gx#core-bind-feature!__2 _g11744_))
                  ((fx= _g11743_ 4)
                   (apply gx#core-bind-feature!__opt-lambda9199 _g11744_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-feature!
                    _g11744_)))))))))
