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
    (lambda _$args11555_
      (apply make-struct-instance gx#module-import::t _$args11555_)))
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
    (lambda _$args11552_
      (apply make-struct-instance gx#module-export::t _$args11552_)))
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
    (lambda _$args11549_
      (apply make-struct-instance gx#import-set::t _$args11549_)))
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
    (lambda _$args11546_
      (apply make-struct-instance gx#export-set::t _$args11546_)))
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
    (lambda _$args11543_
      (apply make-struct-instance gx#import-expander::t _$args11543_)))
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
    (lambda _$args11540_
      (apply make-struct-instance gx#export-expander::t _$args11540_)))
  (define gx#current-import-expander-phi (make-parameter '#f))
  (define gx#current-export-expander-phi (make-parameter '#f))
  (define gx#current-module-reader-path (make-parameter '#f))
  (define gx#current-module-reader-args (make-parameter '#f))
  (define gx#module-context:::init!
    (lambda (_self11534_ _id11535_ _super11536_ _ns11537_ _path11538_)
      (struct-instance-init!
       _self11534_
       _id11535_
       (make-hash-table-eq)
       _super11536_
       '#f
       '#f
       _ns11537_
       _path11538_
       '()
       '()
       '#f
       '#f)))
  (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
  (begin
    (define gx#prelude-context:::init!__opt-lambda11498
      (lambda (_self11500_ _ctx11501_ _root11502_)
        (let ((_super11510_
               (let ((_$e11504_ _root11502_))
                 (if _$e11504_
                     _$e11504_
                     (let ((_$e11507_ (gx#core-context-root__0)))
                       (if _$e11507_
                           _$e11507_
                           (make-struct-instance gx#root-context::t)))))))
          (if _ctx11501_
              (let ((_id11513_
                     (##structure-ref
                      _ctx11501_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path11514_
                     (##structure-ref _ctx11501_ '7 gx#module-context::t '#f))
                    (_in11515_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx11501_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e11516_
                     (make-promise (lambda () (gx#eval-module _ctx11501_)))))
                (begin
                  (struct-instance-init!
                   _self11500_
                   _id11513_
                   (make-hash-table-eq)
                   _super11510_
                   '#f
                   '#f
                   _path11514_
                   _in11515_
                   _e11516_)
                  (for-each
                   (lambda (_g1151711519_)
                     (gx#core-bind-weak-import!__opt-lambda10796
                      _g1151711519_
                      _self11500_))
                   _in11515_)))
              (struct-instance-init!
               _self11500_
               '#f
               (make-hash-table-eq)
               _super11510_
               '#f
               '#f
               '#f
               '()
               '#f)))))
    (begin
      (define gx#prelude-context:::init!__0
        (lambda (_self11525_ _ctx11526_)
          (let ((_root11528_ '#f))
            (gx#prelude-context:::init!__opt-lambda11498
             _self11525_
             _ctx11526_
             _root11528_))))
      (define gx#prelude-context:::init!
        (lambda _g11571_
          (let ((_g11570_ (length _g11571_)))
            (cond ((fx= _g11570_ 2)
                   (apply gx#prelude-context:::init!__0 _g11571_))
                  ((fx= _g11570_ 3)
                   (apply gx#prelude-context:::init!__opt-lambda11498
                          _g11571_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#prelude-context:::init!
                    _g11571_))))))))
  (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
  (define gx#import-expander:::init!
    (lambda (_self11496_ _e11497_)
      (struct-instance-init!
       _self11496_
       _e11497_
       (gx#current-expander-context)
       (fx- (gx#current-expander-phi) '1))))
  (bind-method! gx#import-expander::t ':init! gx#import-expander:::init! '#f)
  (define gx#export-expander:::init!
    (lambda (_self11493_ _e11494_)
      (struct-instance-init!
       _self11493_
       _e11494_
       (gx#current-expander-context)
       (fx- (gx#current-expander-phi) '1))))
  (bind-method! gx#export-expander::t ':init! gx#export-expander:::init! '#f)
  (define gx#import-expander::apply-import-expander
    (lambda (_g1148511488_ _g1148611490_)
      (gx#core-apply-user-expander__opt-lambda4795
       _g1148511488_
       _g1148611490_
       'apply-import-expander)))
  (bind-method!
   gx#import-expander::t
   'apply-import-expander
   gx#import-expander::apply-import-expander
   '#f)
  (define gx#export-expander::apply-export-expander
    (lambda (_g1147811481_ _g1147911483_)
      (gx#core-apply-user-expander__opt-lambda4795
       _g1147811481_
       _g1147911483_
       'apply-export-expander)))
  (bind-method!
   gx#export-expander::t
   'apply-export-expander
   gx#export-expander::apply-export-expander
   '#f)
  (define gx#module-source-path
    (lambda (_ctx11472_)
      (let* ((_path11474_
              (##structure-ref _ctx11472_ '7 gx#module-context::t '#f))
             (_path11476_
              (if (pair? _path11474_) (last _path11474_) _path11474_)))
        (if (string? _path11476_) _path11476_ '#f))))
  (begin
    (define gx#import-module__opt-lambda11446
      (lambda (_path11448_ _reload?11449_ _eval?11450_)
        (let ((_ctx11452_
               ((gx#current-expander-module-import)
                _path11448_
                _reload?11449_)))
          (begin
            (if (if _ctx11452_ _eval?11450_ '#f)
                (gx#eval-module _ctx11452_)
                '#!void)
            _ctx11452_))))
    (begin
      (define gx#import-module__0
        (lambda (_path11457_)
          (let* ((_reload?11459_ '#f) (_eval?11461_ '#f))
            (gx#import-module__opt-lambda11446
             _path11457_
             _reload?11459_
             _eval?11461_))))
      (define gx#import-module__1
        (lambda (_path11463_ _reload?11464_)
          (let ((_eval?11466_ '#f))
            (gx#import-module__opt-lambda11446
             _path11463_
             _reload?11464_
             _eval?11466_))))
      (define gx#import-module
        (lambda _g11573_
          (let ((_g11572_ (length _g11573_)))
            (cond ((fx= _g11572_ 1) (apply gx#import-module__0 _g11573_))
                  ((fx= _g11572_ 2) (apply gx#import-module__1 _g11573_))
                  ((fx= _g11572_ 3)
                   (apply gx#import-module__opt-lambda11446 _g11573_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#import-module
                    _g11573_))))))))
  (define gx#eval-module
    (lambda (_mod11445_) ((gx#current-expander-module-eval) _mod11445_)))
  (define gx#core-eval-module
    (lambda (_obj11430_)
      (letrec ((_force-e11432_
                (lambda (_getf11441_ _e11442_)
                  (call-with-parameters
                   (lambda () (force (_getf11441_ _e11442_)))
                   gx#current-expander-context
                   _e11442_
                   gx#current-expander-phi
                   '0))))
        (let _recur11434_ ((_e11436_ _obj11430_))
          (if (##structure-instance-of? _e11436_ 'gx#module-context::t)
              (begin
                (let ((_$e11438_
                       (gx#core-context-prelude__opt-lambda11411 _e11436_)))
                  (if _$e11438_ (_recur11434_ _$e11438_) '#!void))
                (_force-e11432_ gx#module-context-e _e11436_))
              (if (##structure-instance-of? _e11436_ 'gx#prelude-context::t)
                  (_force-e11432_ gx#prelude-context-e _e11436_)
                  (if (gx#stx-string? _e11436_)
                      (_recur11434_
                       (gx#import-module__0
                        (gx#core-resolve-module-path__0 _e11436_)))
                      (if (gx#core-library-module-path? _e11436_)
                          (_recur11434_
                           (gx#import-module__0
                            (gx#core-resolve-library-module-path _e11436_)))
                          (error '"Cannot eval module" _obj11430_)))))))))
  (begin
    (define gx#core-context-prelude__opt-lambda11411
      (lambda (_ctx11413_)
        (let _lp11415_ ((_e11417_ _ctx11413_))
          (if (let ((_$e11419_
                     (##structure-instance-of?
                      _e11417_
                      'gx#module-context::t)))
                (if _$e11419_
                    _$e11419_
                    (##structure-instance-of? _e11417_ 'gx#local-context::t)))
              (_lp11415_ (##structure-ref _e11417_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e11417_ 'gx#prelude-context::t)
                  _e11417_
                  '#f)))))
    (begin
      (define gx#core-context-prelude__0
        (lambda ()
          (let ((_ctx11426_ (gx#current-expander-context)))
            (gx#core-context-prelude__opt-lambda11411 _ctx11426_))))
      (define gx#core-context-prelude
        (lambda _g11575_
          (let ((_g11574_ (length _g11575_)))
            (cond ((fx= _g11574_ 0)
                   (apply gx#core-context-prelude__0 _g11575_))
                  ((fx= _g11574_ 1)
                   (apply gx#core-context-prelude__opt-lambda11411 _g11575_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-prelude
                    _g11575_))))))))
  (define gx#core-module->prelude-context
    (lambda (_ctx11403_)
      (let* ((_ht11405_ (gx#current-expander-module-registry))
             (_$e11407_ (table-ref _ht11405_ _ctx11403_ '#f)))
        (if _$e11407_
            (values _$e11407_)
            (let ((_pre11410_
                   (let ((__obj11566 (make-object gx#prelude-context::t '8)))
                     (begin
                       (gx#prelude-context:::init!__0 __obj11566 _ctx11403_)
                       __obj11566))))
              (begin
                (table-set! _ht11405_ _ctx11403_ _pre11410_)
                _pre11410_))))))
  (begin
    (define gx#core-import-module__opt-lambda11355
      (lambda (_rpath11357_ _reload?11358_)
        (letrec ((_import-source11360_
                  (lambda (_path11372_)
                    (begin
                      (if (member _path11372_ (gx#current-expander-path))
                          (error '"Cyclic expansion" _path11372_)
                          '#!void)
                      (call-with-parameters
                       (lambda ()
                         (let ((_g11576_ (gx#core-read-module _path11372_)))
                           (begin
                             (let ((_g11577_ (values-count _g11576_)))
                               (if (not (fx= _g11577_ 4))
                                   (error "Context expects 4 values"
                                          _g11577_)))
                             (let ((_pre11375_ (values-ref _g11576_ 0))
                                   (_id11376_ (values-ref _g11576_ 1))
                                   (_ns11377_ (values-ref _g11576_ 2))
                                   (_body11378_ (values-ref _g11576_ 3)))
                               (let* ((_prelude11383_
                                       (if (##structure-instance-of?
                                            _pre11375_
                                            'gx#prelude-context::t)
                                           _pre11375_
                                           (if (##structure-instance-of?
                                                _pre11375_
                                                'gx#module-context::t)
                                               (gx#core-module->prelude-context
                                                _pre11375_)
                                               (if (string? _pre11375_)
                                                   (gx#core-module->prelude-context
                                                    (gx#core-import-module__0
                                                     _pre11375_))
                                                   (if (not _pre11375_)
                                                       (let ((_$e11380_
                                                              (gx#current-expander-module-prelude)))
                                                         (if _$e11380_
                                                             _$e11380_
                                                             (let ((__obj11567
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (make-object gx#prelude-context::t '8)))
                       (begin
                         (gx#prelude-context:::init!__0 __obj11567 '#f)
                         __obj11567))))
               (error '"Cannot import module; unknown prelude"
                      _rpath11357_
                      _pre11375_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_ctx11385_
                                       (let ((__obj11568
                                              (make-object
                                               gx#module-context::t
                                               '11)))
                                         (begin
                                           (gx#module-context:::init!
                                            __obj11568
                                            _id11376_
                                            _prelude11383_
                                            _ns11377_
                                            _path11372_)
                                           __obj11568)))
                                      (_body11387_
                                       (gx#core-expand-module-begin
                                        _body11378_
                                        _ctx11385_))
                                      (_body11389_
                                       (gx#core-quote-syntax__opt-lambda4148
                                        (gx#core-cons '%#begin _body11387_)
                                        _path11372_
                                        _ctx11385_
                                        '())))
                                 (begin
                                   (##structure-set!
                                    _ctx11385_
                                    (make-promise
                                     (lambda () (gx#eval-syntax* _body11389_)))
                                    '10
                                    gx#module-context::t
                                    '#f)
                                   (##structure-set!
                                    _ctx11385_
                                    _body11389_
                                    '11
                                    gx#module-context::t
                                    '#f)
                                   (table-set!
                                    (gx#current-expander-module-registry)
                                    _path11372_
                                    _ctx11385_)
                                   (table-set!
                                    (gx#current-expander-module-registry)
                                    _id11376_
                                    _ctx11385_)
                                   _ctx11385_))))))
                       gx#current-expander-context
                       (gx#core-context-root__0)
                       gx#current-expander-marks
                       '()
                       gx#current-expander-phi
                       '0
                       gx#current-expander-path
                       (cons _path11372_ (gx#current-expander-path))
                       gx#current-import-expander-phi
                       '#f
                       gx#current-export-expander-phi
                       '#f)))))
          (let ((_$e11362_
                 (if (not _reload?11358_)
                     (table-ref
                      (gx#current-expander-module-registry)
                      _rpath11357_
                      '#f)
                     '#f)))
            (if _$e11362_
                (values _$e11362_)
                (if (gx#core-library-module-path? _rpath11357_)
                    (let ((_ctx11365_
                           (gx#core-import-module__opt-lambda11355
                            (gx#core-resolve-library-module-path _rpath11357_)
                            _reload?11358_)))
                      (begin
                        (table-set!
                         (gx#current-expander-module-registry)
                         _rpath11357_
                         _ctx11365_)
                        _ctx11365_))
                    (let* ((_npath11367_ (path-normalize _rpath11357_))
                           (_$e11369_
                            (if (not _reload?11358_)
                                (table-ref
                                 (gx#current-expander-module-registry)
                                 _npath11367_
                                 '#f)
                                '#f)))
                      (if _$e11369_
                          (values _$e11369_)
                          (_import-source11360_ _npath11367_)))))))))
    (begin
      (define gx#core-import-module__0
        (lambda (_rpath11396_)
          (let ((_reload?11398_ '#f))
            (gx#core-import-module__opt-lambda11355
             _rpath11396_
             _reload?11398_))))
      (define gx#core-import-module
        (lambda _g11579_
          (let ((_g11578_ (length _g11579_)))
            (cond ((fx= _g11578_ 1) (apply gx#core-import-module__0 _g11579_))
                  ((fx= _g11578_ 2)
                   (apply gx#core-import-module__opt-lambda11355 _g11579_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-import-module
                    _g11579_))))))))
  (define gx#core-read-module
    (lambda (_path11351_)
      (with-exception-catcher
       (lambda (_exn11353_)
         (if (if (datum-parsing-exception? _exn11353_)
                 (eq? (datum-parsing-exception-filepos _exn11353_) '0)
                 '#f)
             (gx#core-read-module/lang _path11351_)
             (raise _exn11353_)))
       (lambda () (gx#core-read-module/sexp _path11351_)))))
  (define gx#core-read-module/sexp
    (lambda (_path11211_)
      (let _lp11213_ ((_body11215_ (read-syntax-from-file _path11211_))
                      (_pre11216_ '#f)
                      (_ns11217_ '#f)
                      (_pkg11218_ '#f))
        (let* ((_e1121911243_ _body11215_)
               (_E1123511265_
                (lambda ()
                  (let ((_g11580_
                         (if _pkg11218_
                             (values _pre11216_ _ns11217_ _pkg11218_)
                             (gx#core-read-module-package
                              _path11211_
                              _pre11216_
                              _ns11217_))))
                    (begin
                      (let ((_g11581_ (values-count _g11580_)))
                        (if (not (fx= _g11581_ 3))
                            (error "Context expects 3 values" _g11581_)))
                      (let ((_pre11247_ (values-ref _g11580_ 0))
                            (_ns11248_ (values-ref _g11580_ 1))
                            (_pkg11249_ (values-ref _g11580_ 2)))
                        (let* ((_prelude11251_
                                (if (gx#core-bound-module-prelude? _pre11247_)
                                    (gx#syntax-local-e__0 _pre11247_)
                                    (if (gx#core-library-module-path?
                                         _pre11247_)
                                        (gx#core-resolve-library-module-path
                                         _pre11247_)
                                        (if (gx#stx-string? _pre11247_)
                                            (gx#core-resolve-module-path__opt-lambda10972
                                             _pre11247_
                                             _path11211_)
                                            (gx#stx-e _pre11247_)))))
                               (_path-id11253_
                                (gx#core-module-path->namespace _path11211_))
                               (_pkg-id11255_
                                (if _pkg11249_
                                    (string-append
                                     _pkg11249_
                                     '"/"
                                     _path-id11253_)
                                    _path-id11253_))
                               (_module-id11257_
                                (string->symbol _pkg-id11255_))
                               (_module-ns11262_
                                (let ((_$e11259_ _ns11248_))
                                  (if _$e11259_ _$e11259_ _pkg-id11255_))))
                          (values _prelude11251_
                                  _module-id11257_
                                  _module-ns11262_
                                  _body11215_)))))))
               (_E1122811294_
                (lambda ()
                  (if (gx#stx-pair? _e1121911243_)
                      (let ((_e1123611269_ (gx#syntax-e _e1121911243_)))
                        (let ((_hd1123711272_ (##car _e1123611269_))
                              (_tl1123811274_ (##cdr _e1123611269_)))
                          (if (eq? (gx#stx-e _hd1123711272_) 'package:)
                              (if (gx#stx-pair? _tl1123811274_)
                                  (let ((_e1123911277_
                                         (gx#syntax-e _tl1123811274_)))
                                    (let ((_hd1124011280_
                                           (##car _e1123911277_))
                                          (_tl1124111282_
                                           (##cdr _e1123911277_)))
                                      (let* ((_pkg11285_ _hd1124011280_)
                                             (_rest11287_ _tl1124111282_))
                                        (if '#t
                                            (let ((_pkg11292_
                                                   (if (gx#identifier?
                                                        _pkg11285_)
                                                       (symbol->string
                                                        (gx#stx-e _pkg11285_))
                                                       (if (let ((_$e11289_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-string? _pkg11285_)))
                     (if _$e11289_ _$e11289_ (gx#stx-false? _pkg11285_)))
                   (gx#stx-e _pkg11285_)
                   (gx#raise-syntax-error
                    'import
                    '"Bad syntax; Illegal package name"
                    _pkg11285_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_lp11213_
                                               _rest11287_
                                               _pre11216_
                                               _ns11217_
                                               _pkg11292_))
                                            (_E1123511265_)))))
                                  (_E1123511265_))
                              (_E1123511265_))))
                      (_E1123511265_))))
               (_E1122111323_
                (lambda ()
                  (if (gx#stx-pair? _e1121911243_)
                      (let ((_e1122911298_ (gx#syntax-e _e1121911243_)))
                        (let ((_hd1123011301_ (##car _e1122911298_))
                              (_tl1123111303_ (##cdr _e1122911298_)))
                          (if (eq? (gx#stx-e _hd1123011301_) 'namespace:)
                              (if (gx#stx-pair? _tl1123111303_)
                                  (let ((_e1123211306_
                                         (gx#syntax-e _tl1123111303_)))
                                    (let ((_hd1123311309_
                                           (##car _e1123211306_))
                                          (_tl1123411311_
                                           (##cdr _e1123211306_)))
                                      (let* ((_ns11314_ _hd1123311309_)
                                             (_rest11316_ _tl1123411311_))
                                        (if '#t
                                            (let ((_ns11321_
                                                   (if (gx#identifier?
                                                        _ns11314_)
                                                       (symbol->string
                                                        (gx#stx-e _ns11314_))
                                                       (if (let ((_$e11318_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-string? _ns11314_)))
                     (if _$e11318_ _$e11318_ (gx#stx-false? _ns11314_)))
                   (gx#stx-e _ns11314_)
                   (gx#raise-syntax-error
                    'import
                    '"Bad syntax; illegal namespace"
                    _ns11314_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_lp11213_
                                               _rest11316_
                                               _pre11216_
                                               _ns11321_
                                               _pkg11218_))
                                            (_E1122811294_)))))
                                  (_E1122811294_))
                              (_E1122811294_))))
                      (_E1122811294_))))
               (_E1122011347_
                (lambda ()
                  (if (gx#stx-pair? _e1121911243_)
                      (let ((_e1122211327_ (gx#syntax-e _e1121911243_)))
                        (let ((_hd1122311330_ (##car _e1122211327_))
                              (_tl1122411332_ (##cdr _e1122211327_)))
                          (if (eq? (gx#stx-e _hd1122311330_) 'prelude:)
                              (if (gx#stx-pair? _tl1122411332_)
                                  (let ((_e1122511335_
                                         (gx#syntax-e _tl1122411332_)))
                                    (let ((_hd1122611338_
                                           (##car _e1122511335_))
                                          (_tl1122711340_
                                           (##cdr _e1122511335_)))
                                      (let* ((_prelude11343_ _hd1122611338_)
                                             (_rest11345_ _tl1122711340_))
                                        (if '#t
                                            (_lp11213_
                                             _rest11345_
                                             _prelude11343_
                                             _ns11217_
                                             _pkg11218_)
                                            (_E1122111323_)))))
                                  (_E1122111323_))
                              (_E1122111323_))))
                      (_E1122111323_)))))
          (_E1122011347_)))))
  (define gx#core-read-module/lang
    (lambda (_path11047_)
      (letrec ((_read-body11049_
                (lambda (_inp11130_
                         _pre11131_
                         _ns11132_
                         _pkg11133_
                         _args11134_)
                  (let ((_g11582_
                         (if _pkg11133_
                             (values _pre11131_ _ns11132_ _pkg11133_)
                             (gx#core-read-module-package
                              _path11047_
                              _pre11131_
                              _ns11132_))))
                    (begin
                      (let ((_g11583_ (values-count _g11582_)))
                        (if (not (fx= _g11583_ 3))
                            (error "Context expects 3 values" _g11583_)))
                      (let ((_pre11136_ (values-ref _g11582_ 0))
                            (_ns11137_ (values-ref _g11582_ 1))
                            (_pkg11138_ (values-ref _g11582_ 2)))
                        (let* ((_prelude11140_
                                (gx#import-module__0 _pre11136_))
                               (_read-module-body11194_
                                (let ((_$e11186_
                                       (find (lambda (_e1114111143_)
                                               (let* ((_g1114511155_
                                                       _e1114111143_)
                                                      (_E1114811159_
                                                       (lambda ()
                                                         (error '"No clause matching"
                                                                _g1114511155_)))
                                                      (_else1114711163_
                                                       (lambda () '#f))
                                                      (_K1114911167_
                                                       (lambda () '#t)))
                                                 (if (##structure-direct-instance-of?
                                                      _g1114511155_
                                                      (##type-id
                                                       gx#module-export::t))
                                                     (let* ((_e1115011170_
                                                             (##vector-ref
                                                              _g1114511155_
                                                              '1))
                                                            (_e1115111173_
                                                             (##vector-ref
                                                              _g1114511155_
                                                              '2))
                                                            (_e1115211176_
                                                             (##vector-ref
                                                              _g1114511155_
                                                              '3)))
                                                       (if (##eq? _e1115211176_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1)
                   (let ((_e1115311179_ (##vector-ref _g1114511155_ '4)))
                     (if ((lambda (_g1118111183_)
                            (eq? _g1118111183_ 'read-module-body))
                          _e1115311179_)
                         (_K1114911167_)
                         (_else1114711163_)))
                   (_else1114711163_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_else1114711163_))))
                                             (##structure-ref
                                              _prelude11140_
                                              '9
                                              gx#module-context::t
                                              '#f))))
                                  (if _$e11186_
                                      ((lambda (_xport11189_)
                                         (let ((_proc11192_
                                                (with-exception-catcher
                                                 void
                                                 (lambda ()
                                                   (gx#eval-syntax__0
                                                    (##structure-ref
                                                     (gx#core-resolve-module-export
                                                      _xport11189_)
                                                     '1
                                                     gx#binding::t
                                                     '#f))))))
                                           (if (procedure? _proc11192_)
                                               _proc11192_
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Illegal #lang prelude; read-module-body is not a procedure"
                                                _path11047_
                                                _pre11136_
                                                _proc11192_))))
                                       _$e11186_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Illegal #lang prelude; does not export read-module-body for syntax"
                                       _path11047_
                                       _pre11136_))))
                               (_path-id11196_
                                (gx#core-module-path->namespace _path11047_))
                               (_pkg-id11198_
                                (if _pkg11138_
                                    (string-append
                                     _pkg11138_
                                     '"/"
                                     _path-id11196_)
                                    _path-id11196_))
                               (_module-id11200_
                                (string->symbol _pkg-id11198_))
                               (_module-ns11205_
                                (let ((_$e11202_ _ns11137_))
                                  (if _$e11202_ _$e11202_ _pkg-id11198_)))
                               (_body11208_
                                (call-with-parameters
                                 (lambda ()
                                   (_read-module-body11194_ _inp11130_))
                                 gx#current-module-reader-path
                                 _path11047_
                                 gx#current-module-reader-args
                                 _args11134_)))
                          (values _prelude11140_
                                  _module-id11200_
                                  _module-ns11205_
                                  _body11208_)))))))
               (_string-e11050_
                (lambda (_obj11127_ _what11128_)
                  (if (string? _obj11127_)
                      _obj11127_
                      (if (symbol? _obj11127_)
                          (symbol->string _obj11127_)
                          (gx#raise-syntax-error
                           '#f
                           (string-append '"Illegal module " _what11128_)
                           _path11047_
                           _obj11127_)))))
               (_read-lang-args11051_
                (lambda (_inp11082_ _args11083_)
                  (let* ((_args1108411092_ _args11083_)
                         (_E1108711096_
                          (lambda ()
                            (error '"No clause matching" _args1108411092_)))
                         (_else1108611100_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Illegal #lang arguments; missing prelude"
                             _path11047_)))
                         (_K1108811115_
                          (lambda (_args11103_ _prelude11104_)
                            (let* ((_pkg11106_ (pgetq 'package: _args11103_))
                                   (_pkg11108_
                                    (if _pkg11106_
                                        (_string-e11050_ _pkg11106_ '"package")
                                        '#f))
                                   (_ns11110_ (pgetq 'namespace: _args11103_))
                                   (_ns11112_
                                    (if _ns11110_
                                        (_string-e11050_
                                         _ns11110_
                                         '"namespace")
                                        '#f)))
                              (_read-body11049_
                               _inp11082_
                               _prelude11104_
                               _ns11112_
                               _pkg11108_
                               _args11103_)))))
                    (if (##pair? _args1108411092_)
                        (let ((_hd1108911118_ (##car _args1108411092_))
                              (_tl1109011120_ (##cdr _args1108411092_)))
                          (let* ((_prelude11123_ _hd1108911118_)
                                 (_args11125_ _tl1109011120_))
                            (_K1108811115_ _args11125_ _prelude11123_)))
                        (_else1108611100_)))))
               (_read-lang11052_
                (lambda (_inp11057_)
                  (let* ((_head11059_ (read-line _inp11057_))
                         (_$e11061_ (string-index _head11059_ '#\space)))
                    (if _$e11061_
                        ((lambda (_ix11064_)
                           (let ((_lang11066_
                                  (substring _head11059_ '0 _ix11064_)))
                             (if (equal? _lang11066_ '"#lang")
                                 (let* ((_rest11068_
                                         (substring
                                          _head11059_
                                          (fx+ _ix11064_ '1)
                                          (string-length _head11059_)))
                                        (_args11079_
                                         (with-exception-catcher
                                          (lambda (_g1106911071_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Illegal #lang arguments"
                                             _path11047_
                                             _g1106911071_))
                                          (lambda ()
                                            (call-with-input-string
                                             _rest11068_
                                             (lambda (_g1107411076_)
                                               (read-all
                                                _g1107411076_
                                                read)))))))
                                   (_read-lang-args11051_
                                    _inp11057_
                                    _args11079_))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Illegal module syntax"
                                  _path11047_))))
                         _$e11061_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path11047_)))))
               (_read-e11053_
                (lambda (_inp11055_)
                  (if (eq? (peek-char _inp11055_) '#\#)
                      (_read-lang11052_ _inp11055_)
                      (gx#raise-syntax-error
                       '#f
                       '"Illegal module syntax"
                       _path11047_)))))
        (call-with-input-file _path11047_ _read-e11053_))))
  (define gx#core-read-module-package
    (lambda (_path10999_ _pre11000_ _ns11001_)
      (letrec ((_string-e11003_
                (lambda (_e11045_)
                  (if (symbol? _e11045_)
                      (symbol->string _e11045_)
                      (if (string? _e11045_)
                          _e11045_
                          (gx#raise-syntax-error
                           '#f
                           '"Unexpected datum"
                           _e11045_))))))
        (let _lp11005_ ((_dir11007_ (path-directory _path10999_))
                        (_pkg-path11008_ '()))
          (let ((_gerbil.pkg11010_ (path-expand '"gerbil.pkg" _dir11007_)))
            (if (file-exists? _gerbil.pkg11010_)
                (let* ((_plist11012_
                        (call-with-input-file _gerbil.pkg11010_ read))
                       (_root11014_ (pgetq 'package: _plist11012_))
                       (_pkg11018_
                        (let ((_pkg-path11016_
                               (if _root11014_
                                   (cons (_string-e11003_ _root11014_)
                                         _pkg-path11008_)
                                   _pkg-path11008_)))
                          (if (not (null? _pkg-path11016_))
                              (string-join _pkg-path11016_ '"/")
                              '#f)))
                       (_ns11029_
                        (let ((_ns1101911024_
                               (let ((_$e11021_ _ns11001_))
                                 (if _$e11021_
                                     _$e11021_
                                     (pgetq 'namespace: _plist11012_)))))
                          (if _ns1101911024_
                              (let ((_ns11027_ _ns1101911024_))
                                (_string-e11003_ _ns11027_))
                              '#f)))
                       (_pre11034_
                        (let ((_$e11031_ _pre11000_))
                          (if _$e11031_
                              _$e11031_
                              (pgetq 'prelude: _plist11012_)))))
                  (values _pre11034_ _ns11029_ _pkg11018_))
                (let ((_dir*11037_
                       (path-strip-trailing-directory-separator _dir11007_)))
                  (if (let ((_$e11039_ (string-empty? _dir*11037_)))
                        (if _$e11039_
                            _$e11039_
                            (equal? _dir11007_ _dir*11037_)))
                      (values _pre11000_ _ns11001_ '#f)
                      (let ((_xpath11042_ (path-strip-directory _dir*11037_))
                            (_xdir11043_ (path-directory _dir*11037_)))
                        (_lp11005_
                         _xdir11043_
                         (cons _xpath11042_ _pkg-path11008_)))))))))))
  (define gx#core-module-path->namespace
    (lambda (_path10997_)
      (path-strip-extension (path-strip-directory _path10997_))))
  (define gx#core-module-path->id
    (lambda (_path10995_)
      (string->symbol (gx#core-module-path->namespace _path10995_))))
  (begin
    (define gx#core-resolve-module-path__opt-lambda10972
      (lambda (_stx-path10974_ _rel10975_)
        (let* ((_path10977_ (gx#stx-e _stx-path10974_))
               (_path10979_
                (if (string-empty? (path-extension _path10977_))
                    (string-append _path10977_ '".ss")
                    _path10977_)))
          (gx#core-resolve-path__opt-lambda4112
           _path10979_
           (let ((_$e10982_ (gx#stx-source _stx-path10974_)))
             (if _$e10982_ _$e10982_ _rel10975_))))))
    (begin
      (define gx#core-resolve-module-path__0
        (lambda (_stx-path10988_)
          (let ((_rel10990_ '#f))
            (gx#core-resolve-module-path__opt-lambda10972
             _stx-path10988_
             _rel10990_))))
      (define gx#core-resolve-module-path
        (lambda _g11585_
          (let ((_g11584_ (length _g11585_)))
            (cond ((fx= _g11584_ 1)
                   (apply gx#core-resolve-module-path__0 _g11585_))
                  ((fx= _g11584_ 2)
                   (apply gx#core-resolve-module-path__opt-lambda10972
                          _g11585_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-resolve-module-path
                    _g11585_))))))))
  (define gx#core-resolve-library-module-path
    (lambda (_libpath10914_)
      (let* ((_spath10916_ (symbol->string (gx#stx-e _libpath10914_)))
             (_spath10918_
              (substring _spath10916_ '1 (string-length _spath10916_)))
             (_ext10920_ (path-extension _spath10918_))
             (_ssi10922_
              (if (string-empty? _ext10920_)
                  (string-append _spath10918_ '".ssi")
                  (string-append (path-strip-extension _spath10918_) '".ssi")))
             (_src10924_
              (if (string-empty? _ext10920_)
                  (string-append _spath10918_ '".ss")
                  _spath10918_)))
        (let _lp10927_ ((_rest10929_
                         (gx#current-expander-module-library-path)))
          (let* ((_rest1093010939_ _rest10929_)
                 (_E1093310943_
                  (lambda () (error '"No clause matching" _rest1093010939_)))
                 (_try-match1093210951_
                  (lambda ()
                    (let ((_K1093410948_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Cannot find library module"
                              _libpath10914_))))
                      (if (##null? _rest1093010939_)
                          (_K1093410948_)
                          (_E1093310943_)))))
                 (_K1093510961_
                  (lambda (_rest10954_ _dir10955_)
                    (let ((_compiled-path10957_
                           (path-expand _ssi10922_ _dir10955_)))
                      (if (file-exists? _compiled-path10957_)
                          (path-normalize _compiled-path10957_)
                          (let ((_src-path10959_
                                 (path-expand _src10924_ _dir10955_)))
                            (if (file-exists? _src-path10959_)
                                (path-normalize _src-path10959_)
                                (_lp10927_ _rest10954_))))))))
            (if (##pair? _rest1093010939_)
                (let ((_hd1093610964_ (##car _rest1093010939_))
                      (_tl1093710966_ (##cdr _rest1093010939_)))
                  (let* ((_dir10969_ _hd1093610964_)
                         (_rest10971_ _tl1093710966_))
                    (_K1093510961_ _rest10971_ _dir10969_)))
                (_try-match1093210951_)))))))
  (define gx#core-library-module-path?
    (lambda (_stx10912_) (gx#core-special-module-path? _stx10912_ '#\:)))
  (define gx#core-special-module-path?
    (lambda (_stx10907_ _char10908_)
      (if (gx#identifier? _stx10907_)
          (if (interned-symbol? (gx#stx-e _stx10907_))
              (let ((_str10910_ (symbol->string (gx#stx-e _stx10907_))))
                (if (fx> (string-length _str10910_) '1)
                    (eq? (string-ref _str10910_ '0) _char10908_)
                    '#f))
              '#f)
          '#f)))
  (define gx#core-bound-prelude?
    (lambda (_stx10901_)
      (gx#core-bound-identifier?__opt-lambda4202
       _stx10901_
       (lambda (_g1090210904_)
         (gx#expander-binding?__opt-lambda4239
          _g1090210904_
          gx#prelude-context?)))))
  (define gx#core-bound-module?
    (lambda (_stx10895_)
      (gx#core-bound-identifier?__opt-lambda4202
       _stx10895_
       (lambda (_g1089610898_)
         (gx#expander-binding?__opt-lambda4239
          _g1089610898_
          gx#module-context?)))))
  (define gx#core-bound-module-prelude?
    (lambda (_stx10882_)
      (letrec ((_module-prelude?10884_
                (lambda (_e10890_)
                  (let ((_$e10892_
                         (##structure-instance-of?
                          _e10890_
                          'gx#module-context::t)))
                    (if _$e10892_
                        _$e10892_
                        (##structure-instance-of?
                         _e10890_
                         'gx#prelude-context::t))))))
        (gx#core-bound-identifier?__opt-lambda4202
         _stx10882_
         (lambda (_g1088510887_)
           (gx#expander-binding?__opt-lambda4239
            _g1088510887_
            _module-prelude?10884_))))))
  (begin
    (define gx#core-bind-import!__opt-lambda10810
      (lambda (_in10812_ _ctx10813_ _force-weak?10814_)
        (let* ((_in1081510824_ _in10812_)
               (_E1081710828_
                (lambda () (error '"No clause matching" _in1081510824_)))
               (_K1081810841_
                (lambda (_weak?10831_ _phi10832_ _key10833_ _source10834_)
                  (gx#core-bind!__opt-lambda4478
                   _key10833_
                   (let ((_e10836_
                          (gx#core-resolve-module-export _source10834_)))
                     (##structure
                      gx#import-binding::t
                      (##structure-ref _e10836_ '1 gx#binding::t '#f)
                      _key10833_
                      _phi10832_
                      _e10836_
                      (##direct-structure-ref
                       _source10834_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e10838_ _force-weak?10814_))
                        (if _$e10838_ _$e10838_ _weak?10831_))))
                   gx#core-context-rebind?
                   _phi10832_
                   _ctx10813_))))
          (if (##structure-direct-instance-of?
               _in1081510824_
               (##type-id gx#module-import::t))
              (let* ((_e1081910844_ (##vector-ref _in1081510824_ '1))
                     (_source10847_ _e1081910844_)
                     (_e1082010849_ (##vector-ref _in1081510824_ '2))
                     (_key10852_ _e1082010849_)
                     (_e1082110854_ (##vector-ref _in1081510824_ '3))
                     (_phi10857_ _e1082110854_)
                     (_e1082210859_ (##vector-ref _in1081510824_ '4))
                     (_weak?10862_ _e1082210859_))
                (_K1081810841_
                 _weak?10862_
                 _phi10857_
                 _key10852_
                 _source10847_))
              (_E1081710828_)))))
    (begin
      (define gx#core-bind-import!__0
        (lambda (_in10867_)
          (let* ((_ctx10869_ (gx#current-expander-context))
                 (_force-weak?10871_ '#f))
            (gx#core-bind-import!__opt-lambda10810
             _in10867_
             _ctx10869_
             _force-weak?10871_))))
      (define gx#core-bind-import!__1
        (lambda (_in10873_ _ctx10874_)
          (let ((_force-weak?10876_ '#f))
            (gx#core-bind-import!__opt-lambda10810
             _in10873_
             _ctx10874_
             _force-weak?10876_))))
      (define gx#core-bind-import!
        (lambda _g11587_
          (let ((_g11586_ (length _g11587_)))
            (cond ((fx= _g11586_ 1) (apply gx#core-bind-import!__0 _g11587_))
                  ((fx= _g11586_ 2) (apply gx#core-bind-import!__1 _g11587_))
                  ((fx= _g11586_ 3)
                   (apply gx#core-bind-import!__opt-lambda10810 _g11587_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-import!
                    _g11587_))))))))
  (begin
    (define gx#core-bind-weak-import!__opt-lambda10796
      (lambda (_in10798_ _ctx10799_)
        (gx#core-bind-import!__opt-lambda10810 _in10798_ _ctx10799_ '#t)))
    (begin
      (define gx#core-bind-weak-import!__0
        (lambda (_in10804_)
          (let ((_ctx10806_ (gx#current-expander-context)))
            (gx#core-bind-weak-import!__opt-lambda10796
             _in10804_
             _ctx10806_))))
      (define gx#core-bind-weak-import!
        (lambda _g11589_
          (let ((_g11588_ (length _g11589_)))
            (cond ((fx= _g11588_ 1)
                   (apply gx#core-bind-weak-import!__0 _g11589_))
                  ((fx= _g11588_ 2)
                   (apply gx#core-bind-weak-import!__opt-lambda10796 _g11589_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-weak-import!
                    _g11589_))))))))
  (define gx#core-resolve-module-export
    (lambda (_out10689_)
      (letrec ((_subst10691_
                (lambda (_key10737_)
                  (let* ((_key1073810746_ _key10737_)
                         (_E1074110750_
                          (lambda ()
                            (error '"No clause matching" _key1073810746_)))
                         (_else1074010754_ (lambda () _key10737_))
                         (_K1074210785_
                          (lambda (_mark10757_ _id10758_)
                            (let* ((_mark1075910765_ _mark10757_)
                                   (_E1076110769_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _mark1075910765_)))
                                   (_K1076210777_
                                    (lambda (_subst10772_)
                                      (let ((_$e10774_
                                             (if _subst10772_
                                                 (table-ref
                                                  _subst10772_
                                                  _id10758_
                                                  '#f)
                                                 '#f)))
                                        (if _$e10774_
                                            _$e10774_
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Illegal key; missing substitution"
                                             _key10737_))))))
                              (if (##structure-instance-of?
                                   _mark1075910765_
                                   (##type-id gx#expander-mark::t))
                                  (let* ((_e1076310780_
                                          (##vector-ref _mark1075910765_ '1))
                                         (_subst10783_ _e1076310780_))
                                    (_K1076210777_ _subst10783_))
                                  (_E1076110769_))))))
                    (if (##pair? _key1073810746_)
                        (let ((_hd1074310788_ (##car _key1073810746_))
                              (_tl1074410790_ (##cdr _key1073810746_)))
                          (let* ((_id10793_ _hd1074310788_)
                                 (_mark10795_ _tl1074410790_))
                            (_K1074210785_ _mark10795_ _id10793_)))
                        (_else1074010754_))))))
        (let* ((_out1069210702_ _out10689_)
               (_E1069410706_
                (lambda () (error '"No clause matching" _out1069210702_)))
               (_K1069510713_
                (lambda (_phi10709_ _key10710_ _ctx10711_)
                  (gx#core-context-resolve
                   (gx#core-context-shift _ctx10711_ _phi10709_)
                   (_subst10691_ _key10710_)))))
          (if (##structure-direct-instance-of?
               _out1069210702_
               (##type-id gx#module-export::t))
              (let* ((_e1069610716_ (##vector-ref _out1069210702_ '1))
                     (_ctx10719_ _e1069610716_)
                     (_e1069710721_ (##vector-ref _out1069210702_ '2))
                     (_key10724_ _e1069710721_)
                     (_e1069810726_ (##vector-ref _out1069210702_ '3))
                     (_phi10729_ _e1069810726_)
                     (_e1069910731_ (##vector-ref _out1069210702_ '4))
                     (_e1070010734_ (##vector-ref _out1069210702_ '5)))
                (_K1069510713_ _phi10729_ _key10724_ _ctx10719_))
              (_E1069410706_))))))
  (begin
    (define gx#core-module-export->import__opt-lambda10612
      (lambda (_out10614_ _rename10615_ _dphi10616_)
        (let* ((_out1061710627_ _out10614_)
               (_E1061910631_
                (lambda () (error '"No clause matching" _out1061710627_)))
               (_K1062010643_
                (lambda (_weak?10634_
                         _name10635_
                         _phi10636_
                         _key10637_
                         _ctx10638_)
                  (##structure
                   gx#module-import::t
                   _out10614_
                   (let ((_$e10640_ _rename10615_))
                     (if _$e10640_ _$e10640_ _name10635_))
                   (fx+ _phi10636_ _dphi10616_)
                   _weak?10634_))))
          (if (##structure-direct-instance-of?
               _out1061710627_
               (##type-id gx#module-export::t))
              (let* ((_e1062110646_ (##vector-ref _out1061710627_ '1))
                     (_ctx10649_ _e1062110646_)
                     (_e1062210651_ (##vector-ref _out1061710627_ '2))
                     (_key10654_ _e1062210651_)
                     (_e1062310656_ (##vector-ref _out1061710627_ '3))
                     (_phi10659_ _e1062310656_)
                     (_e1062410661_ (##vector-ref _out1061710627_ '4))
                     (_name10664_ _e1062410661_)
                     (_e1062510666_ (##vector-ref _out1061710627_ '5))
                     (_weak?10669_ _e1062510666_))
                (_K1062010643_
                 _weak?10669_
                 _name10664_
                 _phi10659_
                 _key10654_
                 _ctx10649_))
              (_E1061910631_)))))
    (begin
      (define gx#core-module-export->import__0
        (lambda (_out10674_)
          (let* ((_rename10676_ '#f) (_dphi10678_ '0))
            (gx#core-module-export->import__opt-lambda10612
             _out10674_
             _rename10676_
             _dphi10678_))))
      (define gx#core-module-export->import__1
        (lambda (_out10680_ _rename10681_)
          (let ((_dphi10683_ '0))
            (gx#core-module-export->import__opt-lambda10612
             _out10680_
             _rename10681_
             _dphi10683_))))
      (define gx#core-module-export->import
        (lambda _g11591_
          (let ((_g11590_ (length _g11591_)))
            (cond ((fx= _g11590_ 1)
                   (apply gx#core-module-export->import__0 _g11591_))
                  ((fx= _g11590_ 2)
                   (apply gx#core-module-export->import__1 _g11591_))
                  ((fx= _g11590_ 3)
                   (apply gx#core-module-export->import__opt-lambda10612
                          _g11591_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-module-export->import
                    _g11591_))))))))
  (define gx#core-expand-module%
    (lambda (_stx10542_)
      (letrec ((_make-context10544_
                (lambda (_id10595_)
                  (let* ((_super10597_ (gx#current-expander-context))
                         (_bind-id10599_ (gx#stx-e _id10595_))
                         (_mod-id10601_
                          (if (##structure-instance-of?
                               _super10597_
                               'gx#module-context::t)
                              (make-symbol
                               (##structure-ref
                                _super10597_
                                '1
                                gx#expander-context::t
                                '#f)
                               '"$"
                               _bind-id10599_)
                              _bind-id10599_))
                         (_ns10603_ (symbol->string _mod-id10601_))
                         (_path10610_
                          (if (##structure-instance-of?
                               _super10597_
                               'gx#module-context::t)
                              (let ((_path10605_
                                     (##structure-ref
                                      _super10597_
                                      '7
                                      gx#module-context::t
                                      '#f)))
                                (if (let ((_$e10607_ (pair? _path10605_)))
                                      (if _$e10607_
                                          _$e10607_
                                          (null? _path10605_)))
                                    (cons _bind-id10599_ _path10605_)
                                    (if (not _path10605_)
                                        _bind-id10599_
                                        (cons _bind-id10599_
                                              (cons _path10605_ '())))))
                              _bind-id10599_)))
                    (let ((__obj11569 (make-object gx#module-context::t '11)))
                      (begin
                        (gx#module-context:::init!
                         __obj11569
                         _mod-id10601_
                         _super10597_
                         _ns10603_
                         _path10610_)
                        __obj11569))))))
        (let* ((_e1054510555_ _stx10542_)
               (_E1054710559_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1054510555_)))
               (_E1054610591_
                (lambda ()
                  (if (gx#stx-pair? _e1054510555_)
                      (let ((_e1054810563_ (gx#syntax-e _e1054510555_)))
                        (let ((_hd1054910566_ (##car _e1054810563_))
                              (_tl1055010568_ (##cdr _e1054810563_)))
                          (if (gx#stx-pair? _tl1055010568_)
                              (let ((_e1055110571_
                                     (gx#syntax-e _tl1055010568_)))
                                (let ((_hd1055210574_ (##car _e1055110571_))
                                      (_tl1055310576_ (##cdr _e1055110571_)))
                                  (let* ((_id10579_ _hd1055210574_)
                                         (_body10581_ _tl1055310576_))
                                    (if (if (gx#identifier? _id10579_)
                                            (gx#stx-list? _body10581_)
                                            '#f)
                                        (let* ((_ctx10583_
                                                (_make-context10544_
                                                 _id10579_))
                                               (_body10585_
                                                (gx#core-expand-module-begin
                                                 _body10581_
                                                 _ctx10583_))
                                               (_body10587_
                                                (gx#core-quote-syntax__1
                                                 (gx#core-cons
                                                  '%#begin
                                                  _body10585_)
                                                 (gx#stx-source _stx10542_))))
                                          (begin
                                            (##structure-set!
                                             _ctx10583_
                                             (make-promise
                                              (lambda ()
                                                (gx#eval-syntax* _body10587_)))
                                             '10
                                             gx#module-context::t
                                             '#f)
                                            (##structure-set!
                                             _ctx10583_
                                             _body10587_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            (gx#core-bind-syntax!__0
                                             _id10579_
                                             _ctx10583_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-list
                                              '%#module
                                              (gx#core-quote-syntax__0
                                               _id10579_)
                                              _body10587_)
                                             (gx#stx-source _stx10542_))))
                                        (_E1054710559_)))))
                              (_E1054710559_))))
                      (_E1054710559_)))))
          (_E1054610591_)))))
  (define gx#core-expand-module-begin
    (lambda (_body10508_ _ctx10509_)
      (call-with-parameters
       (lambda ()
         (begin
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx10512_
                   (gx#core-expand-head (cons '%%begin-module _body10508_)))
                  (_e1051310520_ _stx10512_)
                  (_E1051510524_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx10512_)))
                  (_E1051410538_
                   (lambda ()
                     (if (gx#stx-pair? _e1051310520_)
                         (let ((_e1051610528_ (gx#syntax-e _e1051310520_)))
                           (let ((_hd1051710531_ (##car _e1051610528_))
                                 (_tl1051810533_ (##cdr _e1051610528_)))
                             (if (if (gx#identifier? _hd1051710531_)
                                     (gx#core-identifier=?
                                      _hd1051710531_
                                      '%#begin-module)
                                     '#f)
                                 (let ((_body10536_ _tl1051810533_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx10512_)
                                           _body10536_
                                           (gx#core-expand-module-body
                                            _body10536_))
                                       (_E1051510524_)))
                                 (_E1051510524_))))
                         (_E1051510524_)))))
             (_E1051410538_))))
       gx#current-expander-context
       _ctx10509_
       gx#current-expander-phi
       '0)))
  (define gx#core-expand-module-body
    (lambda (_body10304_)
      (letrec ((_expand-special10306_
                (lambda (_hd10435_ _K10436_ _rest10437_ _r10438_)
                  (let* ((_e1043910456_ _hd10435_)
                         (_E1045110460_
                          (lambda ()
                            (_K10436_
                             _rest10437_
                             (cons (gx#core-expand-top _hd10435_) _r10438_))))
                         (_E1044110472_
                          (lambda ()
                            (if (gx#stx-pair? _e1043910456_)
                                (let ((_e1045210464_
                                       (gx#syntax-e _e1043910456_)))
                                  (let ((_hd1045310467_ (##car _e1045210464_))
                                        (_tl1045410469_ (##cdr _e1045210464_)))
                                    (if (if (gx#identifier? _hd1045310467_)
                                            (gx#core-identifier=?
                                             _hd1045310467_
                                             '%#export)
                                            '#f)
                                        (if '#t
                                            (_K10436_
                                             _rest10437_
                                             (cons _hd10435_ _r10438_))
                                            (_E1045110460_))
                                        (_E1045110460_))))
                                (_E1045110460_))))
                         (_E1044010504_
                          (lambda ()
                            (if (gx#stx-pair? _e1043910456_)
                                (let ((_e1044210476_
                                       (gx#syntax-e _e1043910456_)))
                                  (let ((_hd1044310479_ (##car _e1044210476_))
                                        (_tl1044410481_ (##cdr _e1044210476_)))
                                    (if (if (gx#identifier? _hd1044310479_)
                                            (gx#core-identifier=?
                                             _hd1044310479_
                                             '%#define-values)
                                            '#f)
                                        (if (gx#stx-pair? _tl1044410481_)
                                            (let ((_e1044510484_
                                                   (gx#syntax-e
                                                    _tl1044410481_)))
                                              (let ((_hd1044610487_
                                                     (##car _e1044510484_))
                                                    (_tl1044710489_
                                                     (##cdr _e1044510484_)))
                                                (let ((_hd-bind10492_
                                                       _hd1044610487_))
                                                  (if (gx#stx-pair?
                                                       _tl1044710489_)
                                                      (let ((_e1044810494_
                                                             (gx#syntax-e
                                                              _tl1044710489_)))
                                                        (let ((_hd1044910497_
                                                               (##car _e1044810494_))
                                                              (_tl1045010499_
                                                               (##cdr _e1044810494_)))
                                                          (let ((_expr10502_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1044910497_))
                    (if (gx#stx-null? _tl1045010499_)
                        (if (gx#core-bind-values? _hd-bind10492_)
                            (begin
                              (gx#core-bind-values!__0 _hd-bind10492_)
                              (_K10436_ _rest10437_ (cons _hd10435_ _r10438_)))
                            (_E1044110472_))
                        (_E1044110472_)))))
              (_E1044110472_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1044110472_))
                                        (_E1044110472_))))
                                (_E1044110472_)))))
                    (_E1044010504_))))
               (_expand-body10307_
                (lambda (_rbody10309_)
                  (let _lp10311_ ((_rest10313_ _rbody10309_) (_body10314_ '()))
                    (let* ((_rest1031510323_ _rest10313_)
                           (_E1031810327_
                            (lambda ()
                              (error '"No clause matching" _rest1031510323_)))
                           (_else1031710331_ (lambda () _body10314_))
                           (_K1031910423_
                            (lambda (_rest10334_ _hd10335_)
                              (let* ((_e1033610357_ _hd10335_)
                                     (_E1035210361_
                                      (lambda ()
                                        (_lp10311_
                                         _rest10334_
                                         (cons (gx#core-expand-expression
                                                _hd10335_)
                                               _body10314_))))
                                     (_E1034810375_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1033610357_)
                                            (let ((_e1035310365_
                                                   (gx#syntax-e
                                                    _e1033610357_)))
                                              (let ((_hd1035410368_
                                                     (##car _e1035310365_))
                                                    (_tl1035510370_
                                                     (##cdr _e1035310365_)))
                                                (let ((_form10373_
                                                       _hd1035410368_))
                                                  (if (gx#core-bound-identifier?__opt-lambda4202
                                                       _form10373_
                                                       gx#special-form-binding?)
                                                      (_lp10311_
                                                       _rest10334_
                                                       (cons _hd10335_
                                                             _body10314_))
                                                      (_E1035210361_)))))
                                            (_E1035210361_))))
                                     (_E1033810387_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1033610357_)
                                            (let ((_e1034910379_
                                                   (gx#syntax-e
                                                    _e1033610357_)))
                                              (let ((_hd1035010382_
                                                     (##car _e1034910379_))
                                                    (_tl1035110384_
                                                     (##cdr _e1034910379_)))
                                                (if (if (gx#identifier?
                                                         _hd1035010382_)
                                                        (gx#core-identifier=?
                                                         _hd1035010382_
                                                         '%#export)
                                                        '#f)
                                                    (if '#t
                                                        (_lp10311_
                                                         _rest10334_
                                                         (cons (gx#core-expand-export%__0
                                                                _hd10335_)
                                                               _body10314_))
                                                        (_E1034810375_))
                                                    (_E1034810375_))))
                                            (_E1034810375_))))
                                     (_E1033710419_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1033610357_)
                                            (let ((_e1033910391_
                                                   (gx#syntax-e
                                                    _e1033610357_)))
                                              (let ((_hd1034010394_
                                                     (##car _e1033910391_))
                                                    (_tl1034110396_
                                                     (##cdr _e1033910391_)))
                                                (if (if (gx#identifier?
                                                         _hd1034010394_)
                                                        (gx#core-identifier=?
                                                         _hd1034010394_
                                                         '%#define-values)
                                                        '#f)
                                                    (if (gx#stx-pair?
                                                         _tl1034110396_)
                                                        (let ((_e1034210399_
                                                               (gx#syntax-e
                                                                _tl1034110396_)))
                                                          (let ((_hd1034310402_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1034210399_))
                        (_tl1034410404_ (##cdr _e1034210399_)))
                    (let ((_hd-bind10407_ _hd1034310402_))
                      (if (gx#stx-pair? _tl1034410404_)
                          (let ((_e1034510409_ (gx#syntax-e _tl1034410404_)))
                            (let ((_hd1034610412_ (##car _e1034510409_))
                                  (_tl1034710414_ (##cdr _e1034510409_)))
                              (let ((_expr10417_ _hd1034610412_))
                                (if (gx#stx-null? _tl1034710414_)
                                    (if '#t
                                        (_lp10311_
                                         _rest10334_
                                         (cons (gx#core-quote-syntax__1
                                                (gx#core-list
                                                 '%#define-values
                                                 (gx#core-quote-bind-values
                                                  _hd-bind10407_)
                                                 (gx#core-expand-expression
                                                  _expr10417_))
                                                (gx#stx-source _hd10335_))
                                               _body10314_))
                                        (_E1033810387_))
                                    (_E1033810387_)))))
                          (_E1033810387_)))))
                (_E1033810387_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1033810387_))))
                                            (_E1033810387_)))))
                                (_E1033710419_)))))
                      (if (##pair? _rest1031510323_)
                          (let ((_hd1032010426_ (##car _rest1031510323_))
                                (_tl1032110428_ (##cdr _rest1031510323_)))
                            (let* ((_hd10431_ _hd1032010426_)
                                   (_rest10433_ _tl1032110428_))
                              (_K1031910423_ _rest10433_ _hd10431_)))
                          (_else1031710331_)))))))
        (_expand-body10307_
         (gx#core-expand-block__opt-lambda5256
          (cons '%#begin-module _body10304_)
          _expand-special10306_
          '#f
          values)))))
  (define gx#core-expand-import/export
    (lambda (_stx10147_
             _expanded?10148_
             _method10149_
             _current-phi10150_
             _expand110151_)
      (letrec ((_K10153_
                (lambda (_rest10271_ _r10272_)
                  (let* ((_e1027310280_ _rest10271_)
                         (_E1027510284_ (lambda () _r10272_))
                         (_E1027410300_
                          (lambda ()
                            (if (gx#stx-pair? _e1027310280_)
                                (let ((_e1027610288_
                                       (gx#syntax-e _e1027310280_)))
                                  (let ((_hd1027710291_ (##car _e1027610288_))
                                        (_tl1027810293_ (##cdr _e1027610288_)))
                                    (let* ((_hd10296_ _hd1027710291_)
                                           (_rest10298_ _tl1027810293_))
                                      (if '#t
                                          (_step10154_
                                           _hd10296_
                                           _rest10298_
                                           _r10272_)
                                          (_E1027510284_)))))
                                (_E1027510284_)))))
                    (_E1027410300_))))
               (_step10154_
                (lambda (_hd10185_ _rest10186_ _r10187_)
                  (let* ((_e1018810206_ _hd10185_)
                         (_E1020110210_
                          (lambda ()
                            (if (_expanded?10148_ (gx#stx-e _hd10185_))
                                (_K10153_
                                 _rest10186_
                                 (cons (gx#stx-e _hd10185_) _r10187_))
                                (_expand110151_
                                 _hd10185_
                                 _K10153_
                                 _rest10186_
                                 _r10187_))))
                         (_E1019710226_
                          (lambda ()
                            (if (gx#stx-pair? _e1018810206_)
                                (let ((_e1020210214_
                                       (gx#syntax-e _e1018810206_)))
                                  (let ((_hd1020310217_ (##car _e1020210214_))
                                        (_tl1020410219_ (##cdr _e1020210214_)))
                                    (let* ((_macro10222_ _hd1020310217_)
                                           (_body10224_ _tl1020410219_))
                                      (if (gx#core-bound-identifier?__opt-lambda4202
                                           _macro10222_
                                           gx#syntax-binding?)
                                          (_K10153_
                                           (cons (gx#core-apply-expander__opt-lambda4974
                                                  (gx#syntax-local-e__0
                                                   _macro10222_)
                                                  _hd10185_
                                                  _method10149_)
                                                 _rest10186_)
                                           _r10187_)
                                          (_E1020110210_)))))
                                (_E1020110210_))))
                         (_E1019010240_
                          (lambda ()
                            (if (gx#stx-pair? _e1018810206_)
                                (let ((_e1019810230_
                                       (gx#syntax-e _e1018810206_)))
                                  (let ((_hd1019910233_ (##car _e1019810230_))
                                        (_tl1020010235_ (##cdr _e1019810230_)))
                                    (if (eq? (gx#stx-e _hd1019910233_) 'begin:)
                                        (let ((_body10238_ _tl1020010235_))
                                          (if '#t
                                              (_K10153_
                                               (gx#stx-foldr
                                                cons
                                                _rest10186_
                                                _body10238_)
                                               _r10187_)
                                              (_E1019710226_)))
                                        (_E1019710226_))))
                                (_E1019710226_))))
                         (_E1018910267_
                          (lambda ()
                            (if (gx#stx-pair? _e1018810206_)
                                (let ((_e1019110244_
                                       (gx#syntax-e _e1018810206_)))
                                  (let ((_hd1019210247_ (##car _e1019110244_))
                                        (_tl1019310249_ (##cdr _e1019110244_)))
                                    (if (eq? (gx#stx-e _hd1019210247_) 'phi:)
                                        (if (gx#stx-pair? _tl1019310249_)
                                            (let ((_e1019410252_
                                                   (gx#syntax-e
                                                    _tl1019310249_)))
                                              (let ((_hd1019510255_
                                                     (##car _e1019410252_))
                                                    (_tl1019610257_
                                                     (##cdr _e1019410252_)))
                                                (let* ((_dphi10260_
                                                        _hd1019510255_)
                                                       (_body10262_
                                                        _tl1019610257_))
                                                  (if (gx#stx-fixnum?
                                                       _dphi10260_)
                                                      (let ((_rbody10265_
                                                             (call-with-parameters
                                                              (lambda ()
                                                                (_K10153_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body10262_
                         '()))
                      _current-phi10150_
                      (fx+ (gx#stx-e _dphi10260_) (_current-phi10150_)))))
                (_K10153_ _rest10186_ (foldr1 cons _r10187_ _rbody10265_)))
              (_E1019010240_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1019010240_))
                                        (_E1019010240_))))
                                (_E1019010240_)))))
                    (_E1018910267_)))))
        (let* ((_e1015510162_ _stx10147_)
               (_E1015710166_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1015510162_)))
               (_E1015610181_
                (lambda ()
                  (if (gx#stx-pair? _e1015510162_)
                      (let ((_e1015810170_ (gx#syntax-e _e1015510162_)))
                        (let ((_hd1015910173_ (##car _e1015810170_))
                              (_tl1016010175_ (##cdr _e1015810170_)))
                          (let ((_body10178_ _tl1016010175_))
                            (if '#t
                                (if (_current-phi10150_)
                                    (_K10153_ _body10178_ '())
                                    (call-with-parameters
                                     (lambda () (_K10153_ _body10178_ '()))
                                     _current-phi10150_
                                     (gx#current-expander-phi)))
                                (_E1015710166_)))))
                      (_E1015710166_)))))
          (_E1015610181_)))))
  (begin
    (define gx#core-expand-import%__opt-lambda9684
      (lambda (_stx9686_ _internal-expand?9687_)
        (letrec ((_expand19689_
                  (lambda (_hd10132_ _K10133_ _rest10134_ _r10135_)
                    (if (gx#core-bound-module? _hd10132_)
                        (_import19690_
                         (gx#syntax-local-e__0 _hd10132_)
                         _K10133_
                         _rest10134_
                         _r10135_)
                        (if (gx#core-library-module-path? _hd10132_)
                            (_import19690_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd10132_))
                             _K10133_
                             _rest10134_
                             _r10135_)
                            (if (gx#stx-string? _hd10132_)
                                (_import19690_
                                 (gx#import-module__0
                                  (gx#core-resolve-module-path__opt-lambda10972
                                   _hd10132_
                                   (gx#stx-source _stx9686_)))
                                 _K10133_
                                 _rest10134_
                                 _r10135_)
                                (if (##structure-instance-of?
                                     (gx#stx-e _hd10132_)
                                     'gx#module-context::t)
                                    (_K10133_
                                     _rest10134_
                                     (cons (gx#stx-e _hd10132_) _r10135_))
                                    (if (_import-spec?9691_ _hd10132_)
                                        (_import-spec9696_
                                         _hd10132_
                                         _K10133_
                                         _rest10134_
                                         _r10135_)
                                        (if (_import-submodule?9692_ _hd10132_)
                                            (_import-submodule9694_
                                             _hd10132_
                                             _K10133_
                                             _rest10134_
                                             _r10135_)
                                            (if (_import-runtime?9693_
                                                 _hd10132_)
                                                (_import-runtime9695_
                                                 _hd10132_
                                                 _K10133_
                                                 _rest10134_
                                                 _r10135_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; illegal import"
                                                 _stx9686_
                                                 _hd10132_))))))))))
                 (_import19690_
                  (lambda (_ctx10121_ _K10122_ _rest10123_ _r10124_)
                    (let ((_dphi10126_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K10122_
                       _rest10123_
                       (cons (##structure
                              gx#import-set::t
                              _ctx10121_
                              _dphi10126_
                              (map (lambda (_g1012710129_)
                                     (gx#core-module-export->import__opt-lambda10612
                                      _g1012710129_
                                      '#f
                                      _dphi10126_))
                                   (##structure-ref
                                    _ctx10121_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r10124_)))))
                 (_import-spec?9691_
                  (lambda (_hd10078_)
                    (let* ((_e1007910089_ _hd10078_)
                           (_E1008110093_ (lambda () '#f))
                           (_E1008010117_
                            (lambda ()
                              (if (gx#stx-pair? _e1007910089_)
                                  (let ((_e1008210097_
                                         (gx#syntax-e _e1007910089_)))
                                    (let ((_hd1008310100_
                                           (##car _e1008210097_))
                                          (_tl1008410102_
                                           (##cdr _e1008210097_)))
                                      (if (eq? (gx#stx-e _hd1008310100_)
                                               'spec:)
                                          (if (gx#stx-pair? _tl1008410102_)
                                              (let ((_e1008510105_
                                                     (gx#syntax-e
                                                      _tl1008410102_)))
                                                (let ((_hd1008610108_
                                                       (##car _e1008510105_))
                                                      (_tl1008710110_
                                                       (##cdr _e1008510105_)))
                                                  (let* ((_spath10113_
                                                          _hd1008610108_)
                                                         (_specs10115_
                                                          _tl1008710110_))
                                                    (if '#t
                                                        '#t
                                                        (_E1008110093_)))))
                                              (_E1008110093_))
                                          (_E1008110093_))))
                                  (_E1008110093_)))))
                      (_E1008010117_))))
                 (_import-submodule?9692_
                  (lambda (_hd10035_)
                    (let* ((_e1003610046_ _hd10035_)
                           (_E1003810050_ (lambda () '#f))
                           (_E1003710074_
                            (lambda ()
                              (if (gx#stx-pair? _e1003610046_)
                                  (let ((_e1003910054_
                                         (gx#syntax-e _e1003610046_)))
                                    (let ((_hd1004010057_
                                           (##car _e1003910054_))
                                          (_tl1004110059_
                                           (##cdr _e1003910054_)))
                                      (if (eq? (gx#stx-e _hd1004010057_) 'in:)
                                          (if (gx#stx-pair? _tl1004110059_)
                                              (let ((_e1004210062_
                                                     (gx#syntax-e
                                                      _tl1004110059_)))
                                                (let ((_hd1004310065_
                                                       (##car _e1004210062_))
                                                      (_tl1004410067_
                                                       (##cdr _e1004210062_)))
                                                  (let* ((_top10070_
                                                          _hd1004310065_)
                                                         (_sub10072_
                                                          _tl1004410067_))
                                                    (if '#t
                                                        '#t
                                                        (_E1003810050_)))))
                                              (_E1003810050_))
                                          (_E1003810050_))))
                                  (_E1003810050_)))))
                      (_E1003710074_))))
                 (_import-runtime?9693_
                  (lambda (_hd9992_)
                    (let* ((_e999310003_ _hd9992_)
                           (_E999510007_ (lambda () '#f))
                           (_E999410031_
                            (lambda ()
                              (if (gx#stx-pair? _e999310003_)
                                  (let ((_e999610011_
                                         (gx#syntax-e _e999310003_)))
                                    (let ((_hd999710014_ (##car _e999610011_))
                                          (_tl999810016_ (##cdr _e999610011_)))
                                      (if (eq? (gx#stx-e _hd999710014_)
                                               'runtime:)
                                          (if (gx#stx-pair? _tl999810016_)
                                              (let ((_e999910019_
                                                     (gx#syntax-e
                                                      _tl999810016_)))
                                                (let ((_hd1000010022_
                                                       (##car _e999910019_))
                                                      (_tl1000110024_
                                                       (##cdr _e999910019_)))
                                                  (let* ((_top10027_
                                                          _hd1000010022_)
                                                         (_spath10029_
                                                          _tl1000110024_))
                                                    (if '#t
                                                        '#t
                                                        (_E999510007_)))))
                                              (_E999510007_))
                                          (_E999510007_))))
                                  (_E999510007_)))))
                      (_E999410031_))))
                 (_import-submodule9694_
                  (lambda (_hd9959_ _K9960_ _rest9961_ _r9962_)
                    (let* ((_e99639970_ _hd9959_)
                           (_E99659974_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e99639970_)))
                           (_E99649988_
                            (lambda ()
                              (if (gx#stx-pair? _e99639970_)
                                  (let ((_e99669978_
                                         (gx#syntax-e _e99639970_)))
                                    (let ((_hd99679981_ (##car _e99669978_))
                                          (_tl99689983_ (##cdr _e99669978_)))
                                      (let ((_spath9986_ _tl99689983_))
                                        (if '#t
                                            (_import19690_
                                             (_import-spec-source9697_
                                              _spath9986_)
                                             _K9960_
                                             _rest9961_
                                             _r9962_)
                                            (_E99659974_)))))
                                  (_E99659974_)))))
                      (_E99649988_))))
                 (_import-runtime9695_
                  (lambda (_hd9926_ _K9927_ _rest9928_ _r9929_)
                    (let* ((_e99309937_ _hd9926_)
                           (_E99329941_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e99309937_)))
                           (_E99319955_
                            (lambda ()
                              (if (gx#stx-pair? _e99309937_)
                                  (let ((_e99339945_
                                         (gx#syntax-e _e99309937_)))
                                    (let ((_hd99349948_ (##car _e99339945_))
                                          (_tl99359950_ (##cdr _e99339945_)))
                                      (let ((_spath9953_ _tl99359950_))
                                        (if '#t
                                            (_K9927_ _rest9928_
                                                     (cons (_import-spec-source9697_
                                                            _spath9953_)
                                                           _r9929_))
                                            (_E99329941_)))))
                                  (_E99329941_)))))
                      (_E99319955_))))
                 (_import-spec9696_
                  (lambda (_hd9765_ _K9766_ _rest9767_ _r9768_)
                    (let* ((_e97699786_ _hd9765_)
                           (_E97789790_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e97699786_)))
                           (_E97719900_
                            (lambda ()
                              (if (gx#stx-pair? _e97699786_)
                                  (let ((_e97799794_
                                         (gx#syntax-e _e97699786_)))
                                    (let ((_hd97809797_ (##car _e97799794_))
                                          (_tl97819799_ (##cdr _e97799794_)))
                                      (if (gx#stx-pair? _tl97819799_)
                                          (let ((_e97829802_
                                                 (gx#syntax-e _tl97819799_)))
                                            (let ((_hd97839805_
                                                   (##car _e97829802_))
                                                  (_tl97849807_
                                                   (##cdr _e97829802_)))
                                              (let* ((_path9810_ _hd97839805_)
                                                     (_specs9812_
                                                      _tl97849807_))
                                                (if '#t
                                                    (let ((_src-ctx9814_
                                                           (_import-spec-source9697_
                                                            _path9810_))
                                                          (_exports9815_
                                                           (make-table))
                                                          (_specs9816_
                                                           (gx#syntax->list
                                                            _specs9812_)))
                                                      (begin
                                                        (for-each
                                                         (lambda (_out9818_)
                                                           (table-set!
                                                            _exports9815_
                                                            (cons (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _out9818_
                           '3
                           gx#module-export::t
                           '#f)
                          (##direct-structure-ref
                           _out9818_
                           '4
                           gx#module-export::t
                           '#f))
                    _out9818_))
                 (##structure-ref _src-ctx9814_ '9 gx#module-context::t '#f))
                (_K9766_ _rest9767_
                         (foldl1 (lambda (_spec9820_ _r9821_)
                                   (let* ((_e98229838_ _spec9820_)
                                          (_E98249842_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _e98229838_)))
                                          (_E98239896_
                                           (lambda ()
                                             (if (gx#stx-pair? _e98229838_)
                                                 (let ((_e98259846_
                                                        (gx#syntax-e
                                                         _e98229838_)))
                                                   (let ((_hd98269849_
                                                          (##car _e98259846_))
                                                         (_tl98279851_
                                                          (##cdr _e98259846_)))
                                                     (let ((_phi9854_
                                                            _hd98269849_))
                                                       (if (gx#stx-pair?
                                                            _tl98279851_)
                                                           (let ((_e98289856_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl98279851_)))
                     (let ((_hd98299859_ (##car _e98289856_))
                           (_tl98309861_ (##cdr _e98289856_)))
                       (let ((_name9864_ _hd98299859_))
                         (if (gx#stx-pair? _tl98309861_)
                             (let ((_e98319866_ (gx#syntax-e _tl98309861_)))
                               (let ((_hd98329869_ (##car _e98319866_))
                                     (_tl98339871_ (##cdr _e98319866_)))
                                 (let ((_src-phi9874_ _hd98329869_))
                                   (if (gx#stx-pair? _tl98339871_)
                                       (let ((_e98349876_
                                              (gx#syntax-e _tl98339871_)))
                                         (let ((_hd98359879_
                                                (##car _e98349876_))
                                               (_tl98369881_
                                                (##cdr _e98349876_)))
                                           (let ((_src-name9884_ _hd98359879_))
                                             (if (gx#stx-null? _tl98369881_)
                                                 (if (if (gx#stx-fixnum?
                                                          _src-phi9874_)
                                                         (if (gx#identifier?
                                                              _src-name9884_)
                                                             (if (gx#stx-fixnum?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _phi9854_)
                         (gx#identifier? _name9864_)
                         '#f)
                     '#f)
                 '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_src-phi9886_
                                                            (gx#stx-e
                                                             _src-phi9874_))
                                                           (_src-name9887_
                                                            (gx#core-identifier-key
                                                             _src-name9884_))
                                                           (_phi9888_
                                                            (gx#stx-e
                                                             _phi9854_))
                                                           (_name9889_
                                                            (gx#core-identifier-key
                                                             _name9864_)))
                                                       (let ((_$e9891_
                                                              (table-ref
                                                               _exports9815_
                                                               (cons _src-phi9886_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _src-name9887_)
                       '#f)))
                 (if _$e9891_
                     ((lambda (_out9894_)
                        (cons (gx#core-module-export->import__opt-lambda10612
                               _out9894_
                               _name9889_
                               (fx- _phi9888_ _src-phi9886_))
                              _r9821_))
                      _$e9891_)
                     (gx#raise-syntax-error
                      '#f
                      '"Bad syntax; no matching export"
                      _stx9686_
                      _hd9765_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E98249842_))
                                                 (_E98249842_)))))
                                       (_E98249842_)))))
                             (_E98249842_)))))
                   (_E98249842_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E98249842_)))))
                                     (_E98239896_)))
                                 _r9768_
                                 _specs9816_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E97789790_)))))
                                          (_E97789790_))))
                                  (_E97789790_))))
                           (_E97709922_
                            (lambda ()
                              (if (gx#stx-pair? _e97699786_)
                                  (let ((_e97729904_
                                         (gx#syntax-e _e97699786_)))
                                    (let ((_hd97739907_ (##car _e97729904_))
                                          (_tl97749909_ (##cdr _e97729904_)))
                                      (if (gx#stx-pair? _tl97749909_)
                                          (let ((_e97759912_
                                                 (gx#syntax-e _tl97749909_)))
                                            (let ((_hd97769915_
                                                   (##car _e97759912_))
                                                  (_tl97779917_
                                                   (##cdr _e97759912_)))
                                              (let ((_path9920_ _hd97769915_))
                                                (if (gx#stx-null? _tl97779917_)
                                                    (if '#t
                                                        (_K9766_ _rest9767_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (_import-spec-source9697_ _path9920_) _r9768_))
                (_E97719900_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E97719900_)))))
                                          (_E97719900_))))
                                  (_E97719900_)))))
                      (_E97709922_))))
                 (_import-spec-source9697_
                  (lambda (_spath9763_)
                    (gx#core-import-nested-module _spath9763_ _stx9686_)))
                 (_import!9698_
                  (lambda (_rbody9711_)
                    (letrec* ((_current-ctx9713_ (gx#current-expander-context))
                              (_deps9714_ (make-hash-table-eq))
                              (_bind!9715_
                               (lambda (_hd9761_)
                                 (begin
                                   (gx#core-bind-import!__1
                                    _hd9761_
                                    _current-ctx9713_)
                                   (if (if (fxpositive?
                                            (##direct-structure-ref
                                             _hd9761_
                                             '3
                                             gx#module-import::t
                                             '#f))
                                           (fxzero? (##direct-structure-ref
                                                     (##direct-structure-ref
                                                      _hd9761_
                                                      '1
                                                      gx#module-import::t
                                                      '#f)
                                                     '3
                                                     gx#module-export::t
                                                     '#f))
                                           '#f)
                                       (table-set!
                                        _deps9714_
                                        (##direct-structure-ref
                                         (##direct-structure-ref
                                          _hd9761_
                                          '1
                                          gx#module-import::t
                                          '#f)
                                         '1
                                         gx#module-export::t
                                         '#f)
                                        '#t)
                                       '#!void))))
                              (_fold-e9716_
                               (lambda (_in9758_ _r9759_)
                                 (if (##structure-direct-instance-of?
                                      _in9758_
                                      'gx#module-import::t)
                                     (cons _in9758_ _r9759_)
                                     (if (##structure-direct-instance-of?
                                          _in9758_
                                          'gx#import-set::t)
                                         (foldl1 cons
                                                 _r9759_
                                                 (##direct-structure-ref
                                                  _in9758_
                                                  '3
                                                  gx#import-set::t
                                                  '#f))
                                         _r9759_)))))
                      (let _lp9718_ ((_rest9720_ _rbody9711_) (_body9721_ '()))
                        (let* ((_rest97229730_ _rest9720_)
                               (_E97259734_
                                (lambda ()
                                  (error '"No clause matching"
                                         _rest97229730_)))
                               (_else97249740_
                                (lambda ()
                                  (begin
                                    (if (##structure-instance-of?
                                         _current-ctx9713_
                                         'gx#module-context::t)
                                        (##structure-set!
                                         _current-ctx9713_
                                         (foldl1 _fold-e9716_
                                                 (##structure-ref
                                                  _current-ctx9713_
                                                  '8
                                                  gx#module-context::t
                                                  '#f)
                                                 _body9721_)
                                         '8
                                         gx#module-context::t
                                         '#f)
                                        '#!void)
                                    (table-for-each
                                     (lambda (_ctx9738_ _g11592_)
                                       (gx#eval-module _ctx9738_))
                                     _deps9714_)
                                    _body9721_)))
                               (_K97269746_
                                (lambda (_rest9743_ _hd9744_)
                                  (begin
                                    (if (##structure-direct-instance-of?
                                         _hd9744_
                                         'gx#module-import::t)
                                        (_bind!9715_ _hd9744_)
                                        (if (##structure-direct-instance-of?
                                             _hd9744_
                                             'gx#import-set::t)
                                            (for-each
                                             _bind!9715_
                                             (##direct-structure-ref
                                              _hd9744_
                                              '3
                                              gx#import-set::t
                                              '#f))
                                            (if (##structure-instance-of?
                                                 _hd9744_
                                                 'gx#module-context::t)
                                                '#!void
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _stx9686_
                                                 _hd9744_))))
                                    (_lp9718_
                                     _rest9743_
                                     (cons _hd9744_ _body9721_))))))
                          (if (##pair? _rest97229730_)
                              (let ((_hd97279749_ (##car _rest97229730_))
                                    (_tl97289751_ (##cdr _rest97229730_)))
                                (let* ((_hd9754_ _hd97279749_)
                                       (_rest9756_ _tl97289751_))
                                  (_K97269746_ _rest9756_ _hd9754_)))
                              (_else97249740_)))))))
                 (_expanded-import?9699_
                  (lambda (_e9703_)
                    (let ((_$e9705_
                           (##structure-direct-instance-of?
                            _e9703_
                            'gx#import-set::t)))
                      (if _$e9705_
                          _$e9705_
                          (let ((_$e9708_
                                 (##structure-direct-instance-of?
                                  _e9703_
                                  'gx#module-import::t)))
                            (if _$e9708_
                                _$e9708_
                                (##structure-instance-of?
                                 _e9703_
                                 'gx#module-context::t))))))))
          (let ((_rbody9701_
                 (gx#core-expand-import/export
                  _stx9686_
                  _expanded-import?9699_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand19689_)))
            (if _internal-expand?9687_
                (reverse _rbody9701_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!9698_ _rbody9701_))
                 (gx#stx-source _stx9686_)))))))
    (begin
      (define gx#core-expand-import%__0
        (lambda (_stx10140_)
          (let ((_internal-expand?10142_ '#f))
            (gx#core-expand-import%__opt-lambda9684
             _stx10140_
             _internal-expand?10142_))))
      (define gx#core-expand-import%
        (lambda _g11594_
          (let ((_g11593_ (length _g11594_)))
            (cond ((fx= _g11593_ 1) (apply gx#core-expand-import%__0 _g11594_))
                  ((fx= _g11593_ 2)
                   (apply gx#core-expand-import%__opt-lambda9684 _g11594_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-import%
                    _g11594_))))))))
  (define gx#core-import-nested-module
    (lambda (_spath9613_ _where9614_)
      (let* ((_e96159622_ _spath9613_)
             (_E96179626_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e96159622_)))
             (_E96169681_
              (lambda ()
                (if (gx#stx-pair? _e96159622_)
                    (let ((_e96189630_ (gx#syntax-e _e96159622_)))
                      (let ((_hd96199633_ (##car _e96189630_))
                            (_tl96209635_ (##cdr _e96189630_)))
                        (let* ((_origin9638_ _hd96199633_)
                               (_sub9640_ _tl96209635_))
                          (if '#t
                              (let ((_origin-ctx9642_
                                     (if (gx#stx-false? _origin9638_)
                                         (gx#current-expander-context)
                                         (gx#import-module__0 _origin9638_))))
                                (let _lp9644_ ((_rest9646_ _sub9640_)
                                               (_ctx9647_ _origin-ctx9642_))
                                  (let* ((_e96489655_ _rest9646_)
                                         (_E96509659_ (lambda () _ctx9647_))
                                         (_E96499677_
                                          (lambda ()
                                            (if (gx#stx-pair? _e96489655_)
                                                (let ((_e96519663_
                                                       (gx#syntax-e
                                                        _e96489655_)))
                                                  (let ((_hd96529666_
                                                         (##car _e96519663_))
                                                        (_tl96539668_
                                                         (##cdr _e96519663_)))
                                                    (let* ((_id9671_
                                                            _hd96529666_)
                                                           (_rest9673_
                                                            _tl96539668_))
                                                      (if '#t
                                                          (let ((_bind9675_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#resolve-identifier__opt-lambda4759
                          _id9671_
                          '0
                          _ctx9647_)))
                    (begin
                      (if (if (##structure-direct-instance-of?
                               _bind9675_
                               'gx#syntax-binding::t)
                              (##structure-instance-of?
                               (##direct-structure-ref
                                _bind9675_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               'gx#module-context::t)
                              '#f)
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where9614_
                           _spath9613_
                           _id9671_))
                      (_lp9644_
                       _rest9673_
                       (##direct-structure-ref
                        _bind9675_
                        '4
                        gx#syntax-binding::t
                        '#f))))
                  (_E96509659_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E96509659_)))))
                                    (_E96499677_))))
                              (_E96179626_)))))
                    (_E96179626_)))))
        (_E96169681_))))
  (define gx#core-expand-import-source
    (lambda (_hd9611_)
      (gx#core-expand-import%__opt-lambda9684
       (cons 'import-internal% (cons _hd9611_ '()))
       '#t)))
  (begin
    (define gx#core-expand-export%__opt-lambda9193
      (lambda (_stx9195_ _internal-expand?9196_)
        (letrec* ((_make-export__opt-lambda9557__1155811559_
                   (lambda (_bind9559_ _phi9560_ _ctx9561_ _name9562_)
                     (let* ((_key9564_
                             (##structure-ref _bind9559_ '2 gx#binding::t '#f))
                            (_export-key9566_
                             (if _name9562_
                                 (gx#core-identifier-key _name9562_)
                                 _key9564_)))
                       (##structure
                        gx#module-export::t
                        _ctx9561_
                        _key9564_
                        _phi9560_
                        _export-key9566_
                        (let ((_$e9569_
                               (##structure-instance-of?
                                _bind9559_
                                'gx#extern-binding::t)))
                          (if _$e9569_
                              _$e9569_
                              (##structure-direct-instance-of?
                               _bind9559_
                               'gx#import-binding::t)))))))
                  (_make-export__0__1156011563_
                   (lambda (_bind9575_)
                     (let* ((_phi9577_ (gx#current-export-expander-phi))
                            (_ctx9579_ (gx#current-expander-context))
                            (_name9581_ '#f))
                       (_make-export__opt-lambda9557__1155811559_
                        _bind9575_
                        _phi9577_
                        _ctx9579_
                        _name9581_))))
                  (_make-export__1__1156111564_
                   (lambda (_bind9583_ _phi9584_)
                     (let* ((_ctx9586_ (gx#current-expander-context))
                            (_name9588_ '#f))
                       (_make-export__opt-lambda9557__1155811559_
                        _bind9583_
                        _phi9584_
                        _ctx9586_
                        _name9588_))))
                  (_make-export__2__1156211565_
                   (lambda (_bind9590_ _phi9591_ _ctx9592_)
                     (let ((_name9594_ '#f))
                       (_make-export__opt-lambda9557__1155811559_
                        _bind9590_
                        _phi9591_
                        _ctx9592_
                        _name9594_))))
                  (_make-export9198_
                   (lambda _g11596_
                     (let ((_g11595_ (length _g11596_)))
                       (cond ((fx= _g11595_ 1)
                              (apply _make-export__0__1156011563_ _g11596_))
                             ((fx= _g11595_ 2)
                              (apply _make-export__1__1156111564_ _g11596_))
                             ((fx= _g11595_ 3)
                              (apply _make-export__2__1156211565_ _g11596_))
                             ((fx= _g11595_ 4)
                              (apply _make-export__opt-lambda9557__1155811559_
                                     _g11596_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g11596_))))))
                  (_expand19199_
                   (lambda (_hd9272_ _K9273_ _rest9274_ _r9275_)
                     (let* ((_e92769308_ _hd9272_)
                            (_E93039312_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx9195_
                                _hd9272_)))
                            (_E92939391_
                             (lambda ()
                               (if (gx#stx-pair? _e92769308_)
                                   (let ((_e93049316_
                                          (gx#syntax-e _e92769308_)))
                                     (let ((_hd93059319_ (##car _e93049316_))
                                           (_tl93069321_ (##cdr _e93049316_)))
                                       (if (eq? (gx#stx-e _hd93059319_)
                                                'import:)
                                           (let ((_in9324_ _tl93069321_))
                                             (if (gx#stx-list? _in9324_)
                                                 (let _lp9326_ ((_in-rest9328_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in9324_)
                        (_r9329_ _r9275_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e93309337_
                                                           _in-rest9328_)
                                                          (_E93329341_
                                                           (lambda ()
                                                             (_K9273_ _rest9274_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r9329_)))
                  (_E93319387_
                   (lambda ()
                     (if (gx#stx-pair? _e93309337_)
                         (let ((_e93339345_ (gx#syntax-e _e93309337_)))
                           (let ((_hd93349348_ (##car _e93339345_))
                                 (_tl93359350_ (##cdr _e93339345_)))
                             (let* ((_hd9353_ _hd93349348_)
                                    (_in-rest9355_ _tl93359350_))
                               (if '#t
                                   (let ((_src9385_
                                          (if (gx#core-bound-module? _hd9353_)
                                              (gx#syntax-local-e__0 _hd9353_)
                                              (if (gx#core-library-module-path?
                                                   _hd9353_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd9353_))
                                                  (if (gx#stx-string? _hd9353_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-module-path__opt-lambda10972
                                                        _hd9353_
                                                        (gx#stx-source
                                                         _stx9195_)))
                                                      (let* ((_e93569363_
                                                              _hd9353_)
                                                             (_E93589367_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; illegal re-export"
                         _stx9195_
                         _hd9353_)))
                     (_E93579381_
                      (lambda ()
                        (if (gx#stx-pair? _e93569363_)
                            (let ((_e93599371_ (gx#syntax-e _e93569363_)))
                              (let ((_hd93609374_ (##car _e93599371_))
                                    (_tl93619376_ (##cdr _e93599371_)))
                                (if (eq? (gx#stx-e _hd93609374_) 'in:)
                                    (let ((_spath9379_ _tl93619376_))
                                      (if '#t
                                          (gx#core-import-nested-module
                                           _spath9379_
                                           _stx9195_)
                                          (_E93589367_)))
                                    (_E93589367_))))
                            (_E93589367_)))))
                (_E93579381_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp9326_
                                      _in-rest9355_
                                      (_export-imports9200_
                                       _src9385_
                                       _r9329_)))
                                   (_E93329341_)))))
                         (_E93329341_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E93319387_)))
                                                 (_E93039312_)))
                                           (_E93039312_))))
                                   (_E93039312_))))
                            (_E92809430_
                             (lambda ()
                               (if (gx#stx-pair? _e92769308_)
                                   (let ((_e92949395_
                                          (gx#syntax-e _e92769308_)))
                                     (let ((_hd92959398_ (##car _e92949395_))
                                           (_tl92969400_ (##cdr _e92949395_)))
                                       (if (eq? (gx#stx-e _hd92959398_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl92969400_)
                                               (let ((_e92979403_
                                                      (gx#syntax-e
                                                       _tl92969400_)))
                                                 (let ((_hd92989406_
                                                        (##car _e92979403_))
                                                       (_tl92999408_
                                                        (##cdr _e92979403_)))
                                                   (let ((_id9411_
                                                          _hd92989406_))
                                                     (if (gx#stx-pair?
                                                          _tl92999408_)
                                                         (let ((_e93009413_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl92999408_)))
                   (let ((_hd93019416_ (##car _e93009413_))
                         (_tl93029418_ (##cdr _e93009413_)))
                     (let ((_name9421_ _hd93019416_))
                       (if (gx#stx-null? _tl93029418_)
                           (if '#t
                               (let* ((_phi9423_
                                       (gx#current-export-expander-phi))
                                      (_$e9425_
                                       (gx#core-resolve-identifier__1
                                        _id9411_
                                        _phi9423_)))
                                 (if _$e9425_
                                     ((lambda (_bind9428_)
                                        (_K9273_ _rest9274_
                                                 (cons (_make-export__opt-lambda9557__1155811559_
                                                        _bind9428_
                                                        _phi9423_
                                                        (gx#current-expander-context)
                                                        _name9421_)
                                                       _r9275_)))
                                      _$e9425_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx9195_
                                      _hd9272_
                                      _id9411_)))
                               (_E92939391_))
                           (_E92939391_)))))
                 (_E92939391_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E92939391_))
                                           (_E92939391_))))
                                   (_E92939391_))))
                            (_E92799479_
                             (lambda ()
                               (if (gx#stx-pair? _e92769308_)
                                   (let ((_e92819434_
                                          (gx#syntax-e _e92769308_)))
                                     (let ((_hd92829437_ (##car _e92819434_))
                                           (_tl92839439_ (##cdr _e92819434_)))
                                       (if (eq? (gx#stx-e _hd92829437_) 'spec:)
                                           (if (gx#stx-pair? _tl92839439_)
                                               (let ((_e92849442_
                                                      (gx#syntax-e
                                                       _tl92839439_)))
                                                 (let ((_hd92859445_
                                                        (##car _e92849442_))
                                                       (_tl92869447_
                                                        (##cdr _e92849442_)))
                                                   (let ((_phi9450_
                                                          _hd92859445_))
                                                     (if (gx#stx-pair?
                                                          _tl92869447_)
                                                         (let ((_e92879452_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl92869447_)))
                   (let ((_hd92889455_ (##car _e92879452_))
                         (_tl92899457_ (##cdr _e92879452_)))
                     (let ((_id9460_ _hd92889455_))
                       (if (gx#stx-pair? _tl92899457_)
                           (let ((_e92909462_ (gx#syntax-e _tl92899457_)))
                             (let ((_hd92919465_ (##car _e92909462_))
                                   (_tl92929467_ (##cdr _e92909462_)))
                               (let ((_name9470_ _hd92919465_))
                                 (if (gx#stx-null? _tl92929467_)
                                     (if (if (gx#stx-fixnum? _phi9450_)
                                             (if (gx#identifier? _id9460_)
                                                 (gx#identifier? _name9470_)
                                                 '#f)
                                             '#f)
                                         (let* ((_phi9472_
                                                 (gx#stx-e _phi9450_))
                                                (_$e9474_
                                                 (gx#core-resolve-identifier__1
                                                  _id9460_
                                                  _phi9472_)))
                                           (if _$e9474_
                                               ((lambda (_bind9477_)
                                                  (_K9273_ _rest9274_
                                                           (cons (_make-export__opt-lambda9557__1155811559_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _bind9477_
                          _phi9472_
                          (gx#current-expander-context)
                          _name9470_)
                         _r9275_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e9474_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx9195_
                                                _hd9272_
                                                _id9460_)))
                                         (_E92809430_))
                                     (_E92809430_)))))
                           (_E92809430_)))))
                 (_E92809430_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E92809430_))
                                           (_E92809430_))))
                                   (_E92809430_))))
                            (_E92789490_
                             (lambda ()
                               (let ((_id9483_ _e92769308_))
                                 (if (gx#identifier? _id9483_)
                                     (let ((_$e9485_
                                            (gx#core-resolve-identifier__1
                                             _id9483_
                                             (gx#current-export-expander-phi))))
                                       (if _$e9485_
                                           ((lambda (_bind9488_)
                                              (_K9273_ _rest9274_
                                                       (cons (_make-export__0__1156011563_
                                                              _bind9488_)
                                                             _r9275_)))
                                            _$e9485_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx9195_
                                            _hd9272_)))
                                     (_E92799479_)))))
                            (_E92779554_
                             (lambda ()
                               (if (eq? (gx#stx-e _e92769308_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx9494_
                                               (gx#current-expander-context))
                                              (_current-phi9496_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx9498_
                                               (gx#core-context-shift
                                                _current-ctx9494_
                                                _current-phi9496_))
                                              (_phi-bind9500_
                                               (table->list
                                                (##structure-ref
                                                 _phi-ctx9498_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp9503_ ((_bind-rest9505_
                                                         _phi-bind9500_)
                                                        (_set9506_ '()))
                                           (let* ((_bind-rest95079517_
                                                   _bind-rest9505_)
                                                  (_E95109521_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _bind-rest95079517_)))
                                                  (_else95099525_
                                                   (lambda ()
                                                     (_K9273_ _rest9274_
                                                              (cons (##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             gx#export-set::t
                             '#f
                             _current-phi9496_
                             _set9506_)
                            _r9275_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_K95119535_
                                                   (lambda (_bind-rest9528_
                                                            _bind9529_
                                                            _key9530_)
                                                     (if (let ((_$e9532_
                                                                (##structure-direct-instance-of?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind9529_
                         'gx#import-binding::t)))
                   (if _$e9532_
                       _$e9532_
                       (gx#private-feature-binding? _bind9529_)))
                 (_lp9503_ _bind-rest9528_ _set9506_)
                 (_lp9503_
                  _bind-rest9528_
                  (cons (_make-export__2__1156211565_
                         _bind9529_
                         _current-phi9496_
                         _current-ctx9494_)
                        _set9506_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest95079517_)
                                                 (let ((_hd95129538_
                                                        (##car _bind-rest95079517_))
                                                       (_tl95139540_
                                                        (##cdr _bind-rest95079517_)))
                                                   (if (##pair? _hd95129538_)
                                                       (let ((_hd95149543_
                                                              (##car _hd95129538_))
                                                             (_tl95159545_
                                                              (##cdr _hd95129538_)))
                                                         (let* ((_key9548_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd95149543_)
                        (_bind9550_ _tl95159545_)
                        (_bind-rest9552_ _tl95139540_))
                   (_K95119535_ _bind-rest9552_ _bind9550_ _key9548_)))
               (_else95099525_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else95099525_)))))
                                       (_E92789490_))
                                   (_E92789490_)))))
                       (_E92779554_))))
                  (_export-imports9200_
                   (lambda (_src9221_ _r9222_)
                     (letrec* ((_current-ctx9224_
                                (gx#current-expander-context))
                               (_current-phi9225_
                                (gx#current-export-expander-phi))
                               (_import->export9226_
                                (lambda (_in9234_)
                                  (let* ((_in92359243_ _in9234_)
                                         (_E92379247_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in92359243_)))
                                         (_K92389254_
                                          (lambda (_phi9250_
                                                   _key9251_
                                                   _out9252_)
                                            (if (fx= _phi9250_
                                                     _current-phi9225_)
                                                (if (eq? _src9221_
                                                         (##direct-structure-ref
                                                          _out9252_
                                                          '1
                                                          gx#module-export::t
                                                          '#f))
                                                    (##structure
                                                     gx#module-export::t
                                                     _current-ctx9224_
                                                     _key9251_
                                                     _phi9250_
                                                     _key9251_
                                                     '#t)
                                                    '#f)
                                                '#f))))
                                    (if (##structure-direct-instance-of?
                                         _in92359243_
                                         (##type-id gx#module-import::t))
                                        (let* ((_e92399257_
                                                (##vector-ref _in92359243_ '1))
                                               (_out9260_ _e92399257_)
                                               (_e92409262_
                                                (##vector-ref _in92359243_ '2))
                                               (_key9265_ _e92409262_)
                                               (_e92419267_
                                                (##vector-ref _in92359243_ '3))
                                               (_phi9270_ _e92419267_))
                                          (_K92389254_
                                           _phi9270_
                                           _key9265_
                                           _out9260_))
                                        (_E92379247_)))))
                               (_fold-e9227_
                                (lambda (_in9229_ _r9230_)
                                  (let ((_out9232_
                                         (_import->export9226_ _in9229_)))
                                    (if _out9232_
                                        (cons _out9232_ _r9230_)
                                        _r9230_)))))
                       (cons (##structure
                              gx#export-set::t
                              _src9221_
                              _current-phi9225_
                              (foldl1 _fold-e9227_
                                      '()
                                      (##structure-ref
                                       _current-ctx9224_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r9222_))))
                  (_export!9201_
                   (lambda (_rbody9211_)
                     (letrec* ((_current-ctx9213_
                                (gx#current-expander-context))
                               (_fold-e9214_
                                (lambda (_out9218_ _r9219_)
                                  (if (##structure-direct-instance-of?
                                       _out9218_
                                       'gx#module-export::t)
                                      (cons _out9218_ _r9219_)
                                      (if (##structure-direct-instance-of?
                                           _out9218_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r9219_
                                                  (##direct-structure-ref
                                                   _out9218_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r9219_)))))
                       (let ((_body9216_ (reverse _rbody9211_)))
                         (begin
                           (##structure-set!
                            _current-ctx9213_
                            (foldl1 _fold-e9214_
                                    (##structure-ref
                                     _current-ctx9213_
                                     '9
                                     gx#module-context::t
                                     '#f)
                                    _body9216_)
                            '9
                            gx#module-context::t
                            '#f)
                           _body9216_)))))
                  (_expanded-export?9202_
                   (lambda (_e9206_)
                     (let ((_$e9208_
                            (##structure-direct-instance-of?
                             _e9206_
                             'gx#module-export::t)))
                       (if _$e9208_
                           _$e9208_
                           (##structure-direct-instance-of?
                            _e9206_
                            'gx#export-set::t))))))
          (let ((_rbody9204_
                 (gx#core-expand-import/export
                  _stx9195_
                  _expanded-export?9202_
                  'apply-export-expander
                  gx#current-export-expander-phi
                  _expand19199_)))
            (if _internal-expand?9196_
                (reverse _rbody9204_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#export (_export!9201_ _rbody9204_))
                 (gx#stx-source _stx9195_)))))))
    (begin
      (define gx#core-expand-export%__0
        (lambda (_stx9604_)
          (let ((_internal-expand?9606_ '#f))
            (gx#core-expand-export%__opt-lambda9193
             _stx9604_
             _internal-expand?9606_))))
      (define gx#core-expand-export%
        (lambda _g11598_
          (let ((_g11597_ (length _g11598_)))
            (cond ((fx= _g11597_ 1) (apply gx#core-expand-export%__0 _g11598_))
                  ((fx= _g11597_ 2)
                   (apply gx#core-expand-export%__opt-lambda9193 _g11598_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-export%
                    _g11598_))))))))
  (define gx#core-expand-export-source
    (lambda (_hd9192_)
      (gx#core-expand-export%__opt-lambda9193
       (cons 'export-macro% (cons _hd9192_ '()))
       '#t)))
  (define gx#core-expand-provide%
    (lambda (_stx9162_)
      (let* ((_e91639170_ _stx9162_)
             (_E91659174_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e91639170_)))
             (_E91649188_
              (lambda ()
                (if (gx#stx-pair? _e91639170_)
                    (let ((_e91669178_ (gx#syntax-e _e91639170_)))
                      (let ((_hd91679181_ (##car _e91669178_))
                            (_tl91689183_ (##cdr _e91669178_)))
                        (let ((_body9186_ _tl91689183_))
                          (if (gx#identifier-list? _body9186_)
                              (begin
                                (gx#stx-for-each1
                                 gx#core-bind-feature!
                                 _body9186_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#provide
                                  (gx#stx-map1
                                   gx#core-quote-syntax
                                   _body9186_))
                                 (gx#stx-source _stx9162_)))
                              (_E91659174_)))))
                    (_E91659174_)))))
        (_E91649188_))))
  (begin
    (define gx#core-bind-feature!__opt-lambda9126
      (lambda (_id9128_ _private?9129_ _phi9130_ _ctx9131_)
        (gx#core-bind-syntax!__opt-lambda6222
         _id9128_
         ((if _private?9129_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id9128_))
         _private?9129_
         _phi9130_
         _ctx9131_)))
    (begin
      (define gx#core-bind-feature!__0
        (lambda (_id9136_)
          (let* ((_private?9138_ '#f)
                 (_phi9140_ (gx#current-expander-phi))
                 (_ctx9142_ (gx#current-expander-context)))
            (gx#core-bind-feature!__opt-lambda9126
             _id9136_
             _private?9138_
             _phi9140_
             _ctx9142_))))
      (define gx#core-bind-feature!__1
        (lambda (_id9144_ _private?9145_)
          (let* ((_phi9147_ (gx#current-expander-phi))
                 (_ctx9149_ (gx#current-expander-context)))
            (gx#core-bind-feature!__opt-lambda9126
             _id9144_
             _private?9145_
             _phi9147_
             _ctx9149_))))
      (define gx#core-bind-feature!__2
        (lambda (_id9151_ _private?9152_ _phi9153_)
          (let ((_ctx9155_ (gx#current-expander-context)))
            (gx#core-bind-feature!__opt-lambda9126
             _id9151_
             _private?9152_
             _phi9153_
             _ctx9155_))))
      (define gx#core-bind-feature!
        (lambda _g11600_
          (let ((_g11599_ (length _g11600_)))
            (cond ((fx= _g11599_ 1) (apply gx#core-bind-feature!__0 _g11600_))
                  ((fx= _g11599_ 2) (apply gx#core-bind-feature!__1 _g11600_))
                  ((fx= _g11599_ 3) (apply gx#core-bind-feature!__2 _g11600_))
                  ((fx= _g11599_ 4)
                   (apply gx#core-bind-feature!__opt-lambda9126 _g11600_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-feature!
                    _g11600_)))))))))
