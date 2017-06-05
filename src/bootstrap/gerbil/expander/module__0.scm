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
    (lambda _$args11494_
      (apply make-struct-instance gx#module-import::t _$args11494_)))
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
    (lambda _$args11491_
      (apply make-struct-instance gx#module-export::t _$args11491_)))
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
    (lambda _$args11488_
      (apply make-struct-instance gx#import-set::t _$args11488_)))
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
    (lambda _$args11485_
      (apply make-struct-instance gx#export-set::t _$args11485_)))
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
    (lambda _$args11482_
      (apply make-struct-instance gx#import-expander::t _$args11482_)))
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
    (lambda _$args11479_
      (apply make-struct-instance gx#export-expander::t _$args11479_)))
  (define gx#current-import-expander-phi (make-parameter '#f))
  (define gx#current-export-expander-phi (make-parameter '#f))
  (define gx#current-module-reader-path (make-parameter '#f))
  (define gx#current-module-reader-args (make-parameter '#f))
  (define gx#module-context:::init!
    (lambda (_self11473_ _id11474_ _super11475_ _ns11476_ _path11477_)
      (struct-instance-init!
       _self11473_
       _id11474_
       (make-hash-table-eq)
       _super11475_
       '#f
       '#f
       _ns11476_
       _path11477_
       '()
       '()
       '#f
       '#f)))
  (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
  (begin
    (define gx#prelude-context:::init!__opt-lambda11437
      (lambda (_self11439_ _ctx11440_ _root11441_)
        (let ((_super11449_
               (let ((_$e11443_ _root11441_))
                 (if _$e11443_
                     _$e11443_
                     (let ((_$e11446_ (gx#core-context-root__0)))
                       (if _$e11446_
                           _$e11446_
                           (make-struct-instance gx#root-context::t)))))))
          (if _ctx11440_
              (let ((_id11452_
                     (##structure-ref
                      _ctx11440_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path11453_
                     (##structure-ref _ctx11440_ '7 gx#module-context::t '#f))
                    (_in11454_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx11440_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e11455_
                     (make-promise (lambda () (gx#eval-module _ctx11440_)))))
                (begin
                  (struct-instance-init!
                   _self11439_
                   _id11452_
                   (make-hash-table-eq)
                   _super11449_
                   '#f
                   '#f
                   _path11453_
                   _in11454_
                   _e11455_)
                  (for-each
                   (lambda (_g1145611458_)
                     (gx#core-bind-weak-import!__opt-lambda10791
                      _g1145611458_
                      _self11439_))
                   _in11454_)))
              (struct-instance-init!
               _self11439_
               '#f
               (make-hash-table-eq)
               _super11449_
               '#f
               '#f
               '#f
               '()
               '#f)))))
    (begin
      (define gx#prelude-context:::init!__0
        (lambda (_self11464_ _ctx11465_)
          (let ((_root11467_ '#f))
            (gx#prelude-context:::init!__opt-lambda11437
             _self11464_
             _ctx11465_
             _root11467_))))
      (define gx#prelude-context:::init!
        (lambda _g11510_
          (let ((_g11509_ (length _g11510_)))
            (cond ((fx= _g11509_ 2)
                   (apply gx#prelude-context:::init!__0 _g11510_))
                  ((fx= _g11509_ 3)
                   (apply gx#prelude-context:::init!__opt-lambda11437
                          _g11510_))
                  (else (error "No clause matching arguments" _g11510_))))))))
  (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
  (define gx#import-expander:::init!
    (lambda (_self11435_ _e11436_)
      (struct-instance-init!
       _self11435_
       _e11436_
       (gx#current-expander-context)
       (fx- (gx#current-expander-phi) '1))))
  (bind-method! gx#import-expander::t ':init! gx#import-expander:::init! '#f)
  (define gx#export-expander:::init!
    (lambda (_self11432_ _e11433_)
      (struct-instance-init!
       _self11432_
       _e11433_
       (gx#current-expander-context)
       (fx- (gx#current-expander-phi) '1))))
  (bind-method! gx#export-expander::t ':init! gx#export-expander:::init! '#f)
  (define gx#import-expander::apply-import-expander
    (lambda (_g1142411427_ _g1142511429_)
      (gx#core-apply-user-expander__opt-lambda4790
       _g1142411427_
       _g1142511429_
       'apply-import-expander)))
  (bind-method!
   gx#import-expander::t
   'apply-import-expander
   gx#import-expander::apply-import-expander
   '#f)
  (define gx#export-expander::apply-export-expander
    (lambda (_g1141711420_ _g1141811422_)
      (gx#core-apply-user-expander__opt-lambda4790
       _g1141711420_
       _g1141811422_
       'apply-export-expander)))
  (bind-method!
   gx#export-expander::t
   'apply-export-expander
   gx#export-expander::apply-export-expander
   '#f)
  (define gx#module-source-path
    (lambda (_ctx11411_)
      (let ((_path11413_
             (##structure-ref _ctx11411_ '7 gx#module-context::t '#f)))
        (let ((_path11415_
               (if (pair? _path11413_) (last _path11413_) _path11413_)))
          (let () (if (string? _path11415_) _path11415_ '#f))))))
  (begin
    (define gx#import-module__opt-lambda11385
      (lambda (_path11387_ _reload?11388_ _eval?11389_)
        (let ((_ctx11391_
               ((gx#current-expander-module-import)
                _path11387_
                _reload?11388_)))
          (begin
            (if (if _ctx11391_ _eval?11389_ '#f)
                (gx#eval-module _ctx11391_)
                '#!void)
            _ctx11391_))))
    (begin
      (define gx#import-module__0
        (lambda (_path11396_)
          (let ((_reload?11398_ '#f))
            (let ((_eval?11400_ '#f))
              (gx#import-module__opt-lambda11385
               _path11396_
               _reload?11398_
               _eval?11400_)))))
      (define gx#import-module__1
        (lambda (_path11402_ _reload?11403_)
          (let ((_eval?11405_ '#f))
            (gx#import-module__opt-lambda11385
             _path11402_
             _reload?11403_
             _eval?11405_))))
      (define gx#import-module
        (lambda _g11512_
          (let ((_g11511_ (length _g11512_)))
            (cond ((fx= _g11511_ 1) (apply gx#import-module__0 _g11512_))
                  ((fx= _g11511_ 2) (apply gx#import-module__1 _g11512_))
                  ((fx= _g11511_ 3)
                   (apply gx#import-module__opt-lambda11385 _g11512_))
                  (else (error "No clause matching arguments" _g11512_))))))))
  (define gx#eval-module
    (lambda (_mod11384_) ((gx#current-expander-module-eval) _mod11384_)))
  (define gx#core-eval-module
    (lambda (_obj11369_)
      (let ((_force-e11371_
             (lambda (_getf11380_ _e11381_)
               (call-with-parameters
                (lambda () (force (_getf11380_ _e11381_)))
                gx#current-expander-context
                _e11381_
                gx#current-expander-phi
                '0))))
        ((letrec ((_recur11373_
                   (lambda (_e11375_)
                     (if (##structure-instance-of?
                          _e11375_
                          'gx#module-context::t)
                         (begin
                           (let ((_$e11377_
                                  (gx#core-context-prelude__opt-lambda11350
                                   _e11375_)))
                             (if _$e11377_ (_recur11373_ _$e11377_) '#!void))
                           (_force-e11371_ gx#module-context-e _e11375_))
                         (if (##structure-instance-of?
                              _e11375_
                              'gx#prelude-context::t)
                             (_force-e11371_ gx#prelude-context-e _e11375_)
                             (if (gx#stx-string? _e11375_)
                                 (_recur11373_
                                  (gx#import-module__0
                                   (gx#core-resolve-module-path__0 _e11375_)))
                                 (if (gx#core-library-module-path? _e11375_)
                                     (_recur11373_
                                      (gx#import-module__0
                                       (gx#core-resolve-library-module-path
                                        _e11375_)))
                                     (error '"Cannot eval module"
                                            _obj11369_))))))))
           _recur11373_)
         _obj11369_))))
  (begin
    (define gx#core-context-prelude__opt-lambda11350
      (lambda (_ctx11352_)
        ((letrec ((_lp11354_
                   (lambda (_e11356_)
                     (if (let ((_$e11358_
                                (##structure-instance-of?
                                 _e11356_
                                 'gx#module-context::t)))
                           (if _$e11358_
                               _$e11358_
                               (##structure-instance-of?
                                _e11356_
                                'gx#local-context::t)))
                         (_lp11354_
                          (##structure-ref _e11356_ '3 gx#phi-context::t '#f))
                         (if (##structure-instance-of?
                              _e11356_
                              'gx#prelude-context::t)
                             _e11356_
                             '#f)))))
           _lp11354_)
         _ctx11352_)))
    (begin
      (define gx#core-context-prelude__0
        (lambda ()
          (let ((_ctx11365_ (gx#current-expander-context)))
            (gx#core-context-prelude__opt-lambda11350 _ctx11365_))))
      (define gx#core-context-prelude
        (lambda _g11514_
          (let ((_g11513_ (length _g11514_)))
            (cond ((fx= _g11513_ 0)
                   (apply gx#core-context-prelude__0 _g11514_))
                  ((fx= _g11513_ 1)
                   (apply gx#core-context-prelude__opt-lambda11350 _g11514_))
                  (else (error "No clause matching arguments" _g11514_))))))))
  (define gx#core-module->prelude-context
    (lambda (_ctx11342_)
      (let ((_ht11344_ (gx#current-expander-module-registry)))
        (let ((_$e11346_ (table-ref _ht11344_ _ctx11342_ '#f)))
          (if _$e11346_
              (values _$e11346_)
              (let ((_pre11349_
                     (let ((__obj11505 (make-object gx#prelude-context::t '8)))
                       (begin
                         (gx#prelude-context:::init!__0 __obj11505 _ctx11342_)
                         __obj11505))))
                (begin
                  (table-set! _ht11344_ _ctx11342_ _pre11349_)
                  _pre11349_)))))))
  (begin
    (define gx#core-import-module__opt-lambda11294
      (lambda (_rpath11296_ _reload?11297_)
        (let ((_import-source11299_
               (lambda (_path11311_)
                 (begin
                   (if (member _path11311_ (gx#current-expander-path))
                       (error '"Cyclic expansion" _path11311_)
                       '#!void)
                   (call-with-parameters
                    (lambda ()
                      (let ((_g11515_ (gx#core-read-module _path11311_)))
                        (begin
                          (let ((_g11516_ (values-count _g11515_)))
                            (if (not (fx= _g11516_ 4))
                                (error "Context expects 4 values" _g11516_)))
                          (let ((_pre11314_ (values-ref _g11515_ 0))
                                (_id11315_ (values-ref _g11515_ 1))
                                (_ns11316_ (values-ref _g11515_ 2))
                                (_body11317_ (values-ref _g11515_ 3)))
                            (let ((_prelude11322_
                                   (if (##structure-instance-of?
                                        _pre11314_
                                        'gx#prelude-context::t)
                                       _pre11314_
                                       (if (##structure-instance-of?
                                            _pre11314_
                                            'gx#module-context::t)
                                           (gx#core-module->prelude-context
                                            _pre11314_)
                                           (if (string? _pre11314_)
                                               (gx#core-module->prelude-context
                                                (gx#core-import-module__0
                                                 _pre11314_))
                                               (if (not _pre11314_)
                                                   (let ((_$e11319_
                                                          (gx#current-expander-module-prelude)))
                                                     (if _$e11319_
                                                         _$e11319_
                                                         (let ((__obj11506
                                                                (make-object
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#prelude-context::t
                         '8)))
                   (begin
                     (gx#prelude-context:::init!__0 __obj11506 '#f)
                     __obj11506))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (error '"Cannot import module; unknown prelude"
                                                          _rpath11296_
                                                          _pre11314_)))))))
                              (let ((_ctx11324_
                                     (let ((__obj11507
                                            (make-object
                                             gx#module-context::t
                                             '11)))
                                       (begin
                                         (gx#module-context:::init!
                                          __obj11507
                                          _id11315_
                                          _prelude11322_
                                          _ns11316_
                                          _path11311_)
                                         __obj11507))))
                                (let ((_body11326_
                                       (gx#core-expand-module-begin
                                        _body11317_
                                        _ctx11324_)))
                                  (let ((_body11328_
                                         (gx#core-quote-syntax__opt-lambda4149
                                          (gx#core-cons '%#begin _body11326_)
                                          _path11311_
                                          _ctx11324_
                                          '())))
                                    (let ()
                                      (begin
                                        (##structure-set!
                                         _ctx11324_
                                         (make-promise
                                          (lambda ()
                                            (gx#eval-syntax* _body11328_)))
                                         '10
                                         gx#module-context::t
                                         '#f)
                                        (##structure-set!
                                         _ctx11324_
                                         _body11328_
                                         '11
                                         gx#module-context::t
                                         '#f)
                                        (table-set!
                                         (gx#current-expander-module-registry)
                                         _path11311_
                                         _ctx11324_)
                                        (table-set!
                                         (gx#current-expander-module-registry)
                                         _id11315_
                                         _ctx11324_)
                                        _ctx11324_))))))))))
                    gx#current-expander-context
                    (gx#core-context-root__0)
                    gx#current-expander-marks
                    '()
                    gx#current-expander-phi
                    '0
                    gx#current-expander-path
                    (cons _path11311_ (gx#current-expander-path))
                    gx#current-import-expander-phi
                    '#f
                    gx#current-export-expander-phi
                    '#f)))))
          (let ((_$e11301_
                 (if (not _reload?11297_)
                     (table-ref
                      (gx#current-expander-module-registry)
                      _rpath11296_
                      '#f)
                     '#f)))
            (if _$e11301_
                (values _$e11301_)
                (if (gx#core-library-module-path? _rpath11296_)
                    (let ((_ctx11304_
                           (gx#core-import-module__opt-lambda11294
                            (gx#core-resolve-library-module-path _rpath11296_)
                            _reload?11297_)))
                      (begin
                        (table-set!
                         (gx#current-expander-module-registry)
                         _rpath11296_
                         _ctx11304_)
                        _ctx11304_))
                    (let ((_npath11306_ (path-normalize _rpath11296_)))
                      (let ((_$e11308_
                             (if (not _reload?11297_)
                                 (table-ref
                                  (gx#current-expander-module-registry)
                                  _npath11306_
                                  '#f)
                                 '#f)))
                        (if _$e11308_
                            (values _$e11308_)
                            (_import-source11299_ _npath11306_))))))))))
    (begin
      (define gx#core-import-module__0
        (lambda (_rpath11335_)
          (let ((_reload?11337_ '#f))
            (gx#core-import-module__opt-lambda11294
             _rpath11335_
             _reload?11337_))))
      (define gx#core-import-module
        (lambda _g11518_
          (let ((_g11517_ (length _g11518_)))
            (cond ((fx= _g11517_ 1) (apply gx#core-import-module__0 _g11518_))
                  ((fx= _g11517_ 2)
                   (apply gx#core-import-module__opt-lambda11294 _g11518_))
                  (else (error "No clause matching arguments" _g11518_))))))))
  (define gx#core-read-module
    (lambda (_path11290_)
      (with-exception-catcher
       (lambda (_exn11292_)
         (if (if (datum-parsing-exception? _exn11292_)
                 (eq? (datum-parsing-exception-filepos _exn11292_) '0)
                 '#f)
             (gx#core-read-module/lang _path11290_)
             (raise _exn11292_)))
       (lambda () (gx#core-read-module/sexp _path11290_)))))
  (define gx#core-read-module/sexp
    (lambda (_path11154_)
      ((letrec ((_lp11156_
                 (lambda (_body11158_ _pre11159_ _ns11160_ _pkg11161_)
                   (let ((_e1116211186_ _body11158_))
                     (let ((_E1117811204_
                            (lambda ()
                              (let ((_prelude11190_
                                     (if (gx#core-bound-module-prelude?
                                          _pre11159_)
                                         (gx#syntax-local-e__0 _pre11159_)
                                         (if (gx#core-library-module-path?
                                              _pre11159_)
                                             (gx#core-resolve-library-module-path
                                              _pre11159_)
                                             (if (gx#stx-string? _pre11159_)
                                                 (gx#core-resolve-module-path__opt-lambda10967
                                                  _pre11159_
                                                  _path11154_)
                                                 (gx#stx-e _pre11159_))))))
                                (let ((_path-id11192_
                                       (gx#core-module-path->namespace
                                        _path11154_)))
                                  (let ((_pkg-id11194_
                                         (if _pkg11161_
                                             (string-append
                                              _pkg11161_
                                              '"/"
                                              _path-id11192_)
                                             _path-id11192_)))
                                    (let ((_module-id11196_
                                           (string->symbol _pkg-id11194_)))
                                      (let ((_module-ns11201_
                                             (let ((_$e11198_ _ns11160_))
                                               (if _$e11198_
                                                   _$e11198_
                                                   _pkg-id11194_))))
                                        (let ()
                                          (values _prelude11190_
                                                  _module-id11196_
                                                  _module-ns11201_
                                                  _body11158_))))))))))
                       (let ((_E1117111233_
                              (lambda ()
                                (if (gx#stx-pair? _e1116211186_)
                                    (let ((_e1117911208_
                                           (gx#syntax-e _e1116211186_)))
                                      (let ((_hd1118011211_
                                             (##car _e1117911208_))
                                            (_tl1118111213_
                                             (##cdr _e1117911208_)))
                                        (if (eq? (gx#stx-e _hd1118011211_)
                                                 'package:)
                                            (if (gx#stx-pair? _tl1118111213_)
                                                (let ((_e1118211216_
                                                       (gx#syntax-e
                                                        _tl1118111213_)))
                                                  (let ((_hd1118311219_
                                                         (##car _e1118211216_))
                                                        (_tl1118411221_
                                                         (##cdr _e1118211216_)))
                                                    (let ((_pkg11224_
                                                           _hd1118311219_))
                                                      (let ((_rest11226_
                                                             _tl1118411221_))
                                                        (if '#t
                                                            (let ((_pkg11231_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if (gx#identifier? _pkg11224_)
                               (symbol->string (gx#stx-e _pkg11224_))
                               (if (let ((_$e11228_
                                          (gx#stx-string? _pkg11224_)))
                                     (if _$e11228_
                                         _$e11228_
                                         (gx#stx-false? _pkg11224_)))
                                   (gx#stx-e _pkg11224_)
                                   (gx#raise-syntax-error
                                    'import
                                    '"Bad syntax; Illegal package name"
                                    _pkg11224_)))))
                      (_lp11156_ _rest11226_ _pre11159_ _ns11160_ _pkg11231_))
                    (_E1117811204_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1117811204_))
                                            (_E1117811204_))))
                                    (_E1117811204_)))))
                         (let ((_E1116411262_
                                (lambda ()
                                  (if (gx#stx-pair? _e1116211186_)
                                      (let ((_e1117211237_
                                             (gx#syntax-e _e1116211186_)))
                                        (let ((_hd1117311240_
                                               (##car _e1117211237_))
                                              (_tl1117411242_
                                               (##cdr _e1117211237_)))
                                          (if (eq? (gx#stx-e _hd1117311240_)
                                                   'namespace:)
                                              (if (gx#stx-pair? _tl1117411242_)
                                                  (let ((_e1117511245_
                                                         (gx#syntax-e
                                                          _tl1117411242_)))
                                                    (let ((_hd1117611248_
                                                           (##car _e1117511245_))
                                                          (_tl1117711250_
                                                           (##cdr _e1117511245_)))
                                                      (let ((_ns11253_
                                                             _hd1117611248_))
                                                        (let ((_rest11255_
                                                               _tl1117711250_))
                                                          (if '#t
                                                              (let ((_ns11260_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (gx#identifier? _ns11253_)
                                 (symbol->string (gx#stx-e _ns11253_))
                                 (if (let ((_$e11257_
                                            (gx#stx-string? _ns11253_)))
                                       (if _$e11257_
                                           _$e11257_
                                           (gx#stx-false? _ns11253_)))
                                     (gx#stx-e _ns11253_)
                                     (gx#raise-syntax-error
                                      'import
                                      '"Bad syntax; illegal namespace"
                                      _ns11253_)))))
                        (_lp11156_
                         _rest11255_
                         _pre11159_
                         _ns11260_
                         _pkg11161_))
                      (_E1117111233_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1117111233_))
                                              (_E1117111233_))))
                                      (_E1117111233_)))))
                           (let ((_E1116311286_
                                  (lambda ()
                                    (if (gx#stx-pair? _e1116211186_)
                                        (let ((_e1116511266_
                                               (gx#syntax-e _e1116211186_)))
                                          (let ((_hd1116611269_
                                                 (##car _e1116511266_))
                                                (_tl1116711271_
                                                 (##cdr _e1116511266_)))
                                            (if (eq? (gx#stx-e _hd1116611269_)
                                                     'prelude:)
                                                (if (gx#stx-pair?
                                                     _tl1116711271_)
                                                    (let ((_e1116811274_
                                                           (gx#syntax-e
                                                            _tl1116711271_)))
                                                      (let ((_hd1116911277_
                                                             (##car _e1116811274_))
                                                            (_tl1117011279_
                                                             (##cdr _e1116811274_)))
                                                        (let ((_prelude11282_
                                                               _hd1116911277_))
                                                          (let ((_rest11284_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1117011279_))
                    (if '#t
                        (_lp11156_
                         _rest11284_
                         _prelude11282_
                         _ns11160_
                         _pkg11161_)
                        (_E1116411262_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1116411262_))
                                                (_E1116411262_))))
                                        (_E1116411262_)))))
                             (let () (_E1116311286_))))))))))
         _lp11156_)
       (read-syntax-from-file _path11154_)
       '#f
       '#f
       '#f)))
  (define gx#core-read-module/lang
    (lambda (_path10994_)
      (let ((_read-body10996_
             (lambda (_inp11077_ _pre11078_ _pkg11079_ _ns11080_ _args11081_)
               (let ((_prelude11083_ (gx#import-module__0 _pre11078_)))
                 (let ((_read-module-body11137_
                        (let ((_$e11129_
                               (find (lambda (_e1108411086_)
                                       (let ((_g1108811098_ _e1108411086_))
                                         (let ((_E1109111102_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _g1108811098_))))
                                           (let ((_else1109011106_
                                                  (lambda () '#f)))
                                             (let ((_K1109211110_
                                                    (lambda () '#t)))
                                               (if (##structure-direct-instance-of?
                                                    _g1108811098_
                                                    (##type-id
                                                     gx#module-export::t))
                                                   (let ((_e1109311113_
                                                          (##vector-ref
                                                           _g1108811098_
                                                           '1)))
                                                     (let ((_e1109411116_
                                                            (##vector-ref
                                                             _g1108811098_
                                                             '2)))
                                                       (let ((_e1109511119_
                                                              (##vector-ref
                                                               _g1108811098_
                                                               '3)))
                                                         (if (##eq? _e1109511119_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                     (let ((_e1109611122_ (##vector-ref _g1108811098_ '4)))
                       (if ((lambda (_g1112411126_)
                              (eq? _g1112411126_ 'read-module-body))
                            _e1109611122_)
                           (_K1109211110_)
                           (_else1109011106_)))
                     (_else1109011106_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_else1109011106_)))))))
                                     (##structure-ref
                                      _prelude11083_
                                      '9
                                      gx#module-context::t
                                      '#f))))
                          (if _$e11129_
                              ((lambda (_xport11132_)
                                 (let ((_proc11135_
                                        (with-exception-catcher
                                         void
                                         (lambda ()
                                           (gx#eval-syntax__0
                                            (##structure-ref
                                             (gx#core-resolve-module-export
                                              _xport11132_)
                                             '1
                                             gx#binding::t
                                             '#f))))))
                                   (if (procedure? _proc11135_)
                                       _proc11135_
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Illegal #lang prelude; read-module-body is not a procedure"
                                        _path10994_
                                        _pre11078_
                                        _proc11135_))))
                               _$e11129_)
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang prelude; does not export read-module-body for syntax"
                               _path10994_
                               _pre11078_)))))
                   (let ((_path-id11139_
                          (gx#core-module-path->namespace _path10994_)))
                     (let ((_pkg-id11141_
                            (if _pkg11079_
                                (string-append _pkg11079_ '"/" _path-id11139_)
                                _path-id11139_)))
                       (let ((_module-id11143_ (string->symbol _pkg-id11141_)))
                         (let ((_module-ns11148_
                                (let ((_$e11145_ _ns11080_))
                                  (if _$e11145_ _$e11145_ _pkg-id11141_))))
                           (let ((_body11151_
                                  (call-with-parameters
                                   (lambda ()
                                     (_read-module-body11137_ _inp11077_))
                                   gx#current-module-reader-path
                                   _path10994_
                                   gx#current-module-reader-args
                                   _args11081_)))
                             (let ()
                               (values _prelude11083_
                                       _module-id11143_
                                       _module-ns11148_
                                       _body11151_))))))))))))
        (let ((_string-e10997_
               (lambda (_obj11074_ _what11075_)
                 (if (string? _obj11074_)
                     _obj11074_
                     (if (symbol? _obj11074_)
                         (symbol->string _obj11074_)
                         (gx#raise-syntax-error
                          '#f
                          (string-append '"Illegal module " _what11075_)
                          _path10994_
                          _obj11074_))))))
          (let ((_read-lang-args10998_
                 (lambda (_inp11029_ _args11030_)
                   (let ((_args1103111039_ _args11030_))
                     (let ((_E1103411043_
                            (lambda ()
                              (error '"No clause matching" _args1103111039_))))
                       (let ((_else1103311047_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Illegal #lang arguments; missing prelude"
                                 _path10994_))))
                         (let ((_K1103511062_
                                (lambda (_args11050_ _prelude11051_)
                                  (let ((_pkg11053_
                                         (pgetq 'package: _args11050_)))
                                    (let ((_pkg11055_
                                           (if _pkg11053_
                                               (_string-e10997_
                                                _pkg11053_
                                                '"package")
                                               '#f)))
                                      (let ((_ns11057_
                                             (pgetq 'namespace: _args11050_)))
                                        (let ((_ns11059_
                                               (if _ns11057_
                                                   (_string-e10997_
                                                    _ns11057_
                                                    '"namespace")
                                                   '#f)))
                                          (let ()
                                            (_read-body10996_
                                             _inp11029_
                                             _prelude11051_
                                             _pkg11055_
                                             _ns11059_
                                             _args11050_)))))))))
                           (if (##pair? _args1103111039_)
                               (let ((_hd1103611065_ (##car _args1103111039_))
                                     (_tl1103711067_ (##cdr _args1103111039_)))
                                 (let ((_prelude11070_ _hd1103611065_))
                                   (let ((_args11072_ _tl1103711067_))
                                     (_K1103511062_
                                      _args11072_
                                      _prelude11070_))))
                               (_else1103311047_)))))))))
            (let ((_read-lang10999_
                   (lambda (_inp11004_)
                     (let ((_head11006_ (read-line _inp11004_)))
                       (let ((_$e11008_ (string-index _head11006_ '#\space)))
                         (if _$e11008_
                             ((lambda (_ix11011_)
                                (let ((_lang11013_
                                       (substring _head11006_ '0 _ix11011_)))
                                  (if (equal? _lang11013_ '"#lang")
                                      (let ((_rest11015_
                                             (substring
                                              _head11006_
                                              (fx+ _ix11011_ '1)
                                              (string-length _head11006_))))
                                        (let ((_args11026_
                                               (with-exception-catcher
                                                (lambda (_g1101611018_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Illegal #lang arguments"
                                                   _path10994_
                                                   _g1101611018_))
                                                (lambda ()
                                                  (call-with-input-string
                                                   _rest11015_
                                                   (lambda (_g1102111023_)
                                                     (read-all
                                                      _g1102111023_
                                                      read)))))))
                                          (let ()
                                            (_read-lang-args10998_
                                             _inp11004_
                                             _args11026_))))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Illegal module syntax"
                                       _path10994_))))
                              _$e11008_)
                             (gx#raise-syntax-error
                              '#f
                              '"Illegal module syntax"
                              _path10994_)))))))
              (let ((_read-e11000_
                     (lambda (_inp11002_)
                       (if (eq? (peek-char _inp11002_) '#\#)
                           (_read-lang10999_ _inp11002_)
                           (gx#raise-syntax-error
                            '#f
                            '"Illegal module syntax"
                            _path10994_)))))
                (call-with-input-file _path10994_ _read-e11000_))))))))
  (define gx#core-module-path->namespace
    (lambda (_path10992_)
      (path-strip-extension (path-strip-directory _path10992_))))
  (define gx#core-module-path->id
    (lambda (_path10990_)
      (string->symbol (gx#core-module-path->namespace _path10990_))))
  (begin
    (define gx#core-resolve-module-path__opt-lambda10967
      (lambda (_stx-path10969_ _rel10970_)
        (let ((_path10972_ (gx#stx-e _stx-path10969_)))
          (let ((_path10974_
                 (if (string-empty? (path-extension _path10972_))
                     (string-append _path10972_ '".ss")
                     _path10972_)))
            (let ()
              (gx#core-resolve-path__opt-lambda4113
               _path10974_
               (let ((_$e10977_ (gx#stx-source _stx-path10969_)))
                 (if _$e10977_ _$e10977_ _rel10970_))))))))
    (begin
      (define gx#core-resolve-module-path__0
        (lambda (_stx-path10983_)
          (let ((_rel10985_ '#f))
            (gx#core-resolve-module-path__opt-lambda10967
             _stx-path10983_
             _rel10985_))))
      (define gx#core-resolve-module-path
        (lambda _g11520_
          (let ((_g11519_ (length _g11520_)))
            (cond ((fx= _g11519_ 1)
                   (apply gx#core-resolve-module-path__0 _g11520_))
                  ((fx= _g11519_ 2)
                   (apply gx#core-resolve-module-path__opt-lambda10967
                          _g11520_))
                  (else (error "No clause matching arguments" _g11520_))))))))
  (define gx#core-resolve-library-module-path
    (lambda (_libpath10909_)
      (let ((_spath10911_ (symbol->string (gx#stx-e _libpath10909_))))
        (let ((_spath10913_
               (substring _spath10911_ '1 (string-length _spath10911_))))
          (let ((_ext10915_ (path-extension _spath10913_)))
            (let ((_ssi10917_
                   (if (string-empty? _ext10915_)
                       (string-append _spath10913_ '".ssi")
                       (string-append
                        (path-strip-extension _spath10913_)
                        '".ssi"))))
              (let ((_src10919_
                     (if (string-empty? _ext10915_)
                         (string-append _spath10913_ '".ss")
                         _spath10913_)))
                (let ()
                  ((letrec ((_lp10922_
                             (lambda (_rest10924_)
                               (let ((_rest1092510934_ _rest10924_))
                                 (let ((_E1092810938_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _rest1092510934_))))
                                   (let ((_try-match1092710946_
                                          (lambda ()
                                            (let ((_K1092910943_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Cannot find library module"
                                                      _libpath10909_))))
                                              (if (##null? _rest1092510934_)
                                                  (_K1092910943_)
                                                  (_E1092810938_))))))
                                     (let ((_K1093010956_
                                            (lambda (_rest10949_ _dir10950_)
                                              (let ((_compiled-path10952_
                                                     (path-expand
                                                      _ssi10917_
                                                      _dir10950_)))
                                                (if (file-exists?
                                                     _compiled-path10952_)
                                                    (path-normalize
                                                     _compiled-path10952_)
                                                    (let ((_src-path10954_
                                                           (path-expand
                                                            _src10919_
                                                            _dir10950_)))
                                                      (if (file-exists?
                                                           _src-path10954_)
                                                          (path-normalize
                                                           _src-path10954_)
                                                          (_lp10922_
                                                           _rest10949_))))))))
                                       (if (##pair? _rest1092510934_)
                                           (let ((_hd1093110959_
                                                  (##car _rest1092510934_))
                                                 (_tl1093210961_
                                                  (##cdr _rest1092510934_)))
                                             (let ((_dir10964_ _hd1093110959_))
                                               (let ((_rest10966_
                                                      _tl1093210961_))
                                                 (_K1093010956_
                                                  _rest10966_
                                                  _dir10964_))))
                                           (_try-match1092710946_)))))))))
                     _lp10922_)
                   (gx#current-expander-module-library-path))))))))))
  (define gx#core-library-module-path?
    (lambda (_stx10907_) (gx#core-special-module-path? _stx10907_ '#\:)))
  (define gx#core-special-module-path?
    (lambda (_stx10902_ _char10903_)
      (if (gx#identifier? _stx10902_)
          (if (interned-symbol? (gx#stx-e _stx10902_))
              (let ((_str10905_ (symbol->string (gx#stx-e _stx10902_))))
                (if (fx> (string-length _str10905_) '1)
                    (eq? (string-ref _str10905_ '0) _char10903_)
                    '#f))
              '#f)
          '#f)))
  (define gx#core-bound-prelude?
    (lambda (_stx10896_)
      (gx#core-bound-identifier?__opt-lambda4203
       _stx10896_
       (lambda (_g1089710899_)
         (gx#expander-binding?__opt-lambda4234
          _g1089710899_
          gx#prelude-context?)))))
  (define gx#core-bound-module?
    (lambda (_stx10890_)
      (gx#core-bound-identifier?__opt-lambda4203
       _stx10890_
       (lambda (_g1089110893_)
         (gx#expander-binding?__opt-lambda4234
          _g1089110893_
          gx#module-context?)))))
  (define gx#core-bound-module-prelude?
    (lambda (_stx10877_)
      (let ((_module-prelude?10879_
             (lambda (_e10885_)
               (let ((_$e10887_
                      (##structure-instance-of?
                       _e10885_
                       'gx#module-context::t)))
                 (if _$e10887_
                     _$e10887_
                     (##structure-instance-of?
                      _e10885_
                      'gx#prelude-context::t))))))
        (gx#core-bound-identifier?__opt-lambda4203
         _stx10877_
         (lambda (_g1088010882_)
           (gx#expander-binding?__opt-lambda4234
            _g1088010882_
            _module-prelude?10879_))))))
  (begin
    (define gx#core-bind-import!__opt-lambda10805
      (lambda (_in10807_ _ctx10808_ _force-weak?10809_)
        (let ((_in1081010819_ _in10807_))
          (let ((_E1081210823_
                 (lambda () (error '"No clause matching" _in1081010819_))))
            (let ((_K1081310836_
                   (lambda (_weak?10826_ _phi10827_ _key10828_ _source10829_)
                     (gx#core-bind!__opt-lambda4473
                      _key10828_
                      (let ((_e10831_
                             (gx#core-resolve-module-export _source10829_)))
                        (##structure
                         gx#import-binding::t
                         (##structure-ref _e10831_ '1 gx#binding::t '#f)
                         _key10828_
                         _phi10827_
                         _e10831_
                         (##structure-ref
                          _source10829_
                          '1
                          gx#module-export::t
                          '#f)
                         (let ((_$e10833_ _force-weak?10809_))
                           (if _$e10833_ _$e10833_ _weak?10826_))))
                      gx#core-context-rebind?
                      _phi10827_
                      _ctx10808_))))
              (if (##structure-direct-instance-of?
                   _in1081010819_
                   (##type-id gx#module-import::t))
                  (let ((_e1081410839_ (##vector-ref _in1081010819_ '1)))
                    (let ((_source10842_ _e1081410839_))
                      (let ((_e1081510844_ (##vector-ref _in1081010819_ '2)))
                        (let ((_key10847_ _e1081510844_))
                          (let ((_e1081610849_
                                 (##vector-ref _in1081010819_ '3)))
                            (let ((_phi10852_ _e1081610849_))
                              (let ((_e1081710854_
                                     (##vector-ref _in1081010819_ '4)))
                                (let ((_weak?10857_ _e1081710854_))
                                  (_K1081310836_
                                   _weak?10857_
                                   _phi10852_
                                   _key10847_
                                   _source10842_)))))))))
                  (_E1081210823_)))))))
    (begin
      (define gx#core-bind-import!__0
        (lambda (_in10862_)
          (let ((_ctx10864_ (gx#current-expander-context)))
            (let ((_force-weak?10866_ '#f))
              (gx#core-bind-import!__opt-lambda10805
               _in10862_
               _ctx10864_
               _force-weak?10866_)))))
      (define gx#core-bind-import!__1
        (lambda (_in10868_ _ctx10869_)
          (let ((_force-weak?10871_ '#f))
            (gx#core-bind-import!__opt-lambda10805
             _in10868_
             _ctx10869_
             _force-weak?10871_))))
      (define gx#core-bind-import!
        (lambda _g11522_
          (let ((_g11521_ (length _g11522_)))
            (cond ((fx= _g11521_ 1) (apply gx#core-bind-import!__0 _g11522_))
                  ((fx= _g11521_ 2) (apply gx#core-bind-import!__1 _g11522_))
                  ((fx= _g11521_ 3)
                   (apply gx#core-bind-import!__opt-lambda10805 _g11522_))
                  (else (error "No clause matching arguments" _g11522_))))))))
  (begin
    (define gx#core-bind-weak-import!__opt-lambda10791
      (lambda (_in10793_ _ctx10794_)
        (gx#core-bind-import!__opt-lambda10805 _in10793_ _ctx10794_ '#t)))
    (begin
      (define gx#core-bind-weak-import!__0
        (lambda (_in10799_)
          (let ((_ctx10801_ (gx#current-expander-context)))
            (gx#core-bind-weak-import!__opt-lambda10791
             _in10799_
             _ctx10801_))))
      (define gx#core-bind-weak-import!
        (lambda _g11524_
          (let ((_g11523_ (length _g11524_)))
            (cond ((fx= _g11523_ 1)
                   (apply gx#core-bind-weak-import!__0 _g11524_))
                  ((fx= _g11523_ 2)
                   (apply gx#core-bind-weak-import!__opt-lambda10791 _g11524_))
                  (else (error "No clause matching arguments" _g11524_))))))))
  (define gx#core-resolve-module-export
    (lambda (_out10684_)
      (let ((_subst10686_
             (lambda (_key10732_)
               (let ((_key1073310741_ _key10732_))
                 (let ((_E1073610745_
                        (lambda ()
                          (error '"No clause matching" _key1073310741_))))
                   (let ((_else1073510749_ (lambda () _key10732_)))
                     (let ((_K1073710780_
                            (lambda (_mark10752_ _id10753_)
                              (let ((_mark1075410760_ _mark10752_))
                                (let ((_E1075610764_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _mark1075410760_))))
                                  (let ((_K1075710772_
                                         (lambda (_subst10767_)
                                           (let ((_$e10769_
                                                  (if _subst10767_
                                                      (table-ref
                                                       _subst10767_
                                                       _id10753_
                                                       '#f)
                                                      '#f)))
                                             (if _$e10769_
                                                 _$e10769_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal key; missing substitution"
                                                  _key10732_))))))
                                    (if (##structure-instance-of?
                                         _mark1075410760_
                                         (##type-id gx#expander-mark::t))
                                        (let ((_e1075810775_
                                               (##vector-ref
                                                _mark1075410760_
                                                '1)))
                                          (let ((_subst10778_ _e1075810775_))
                                            (_K1075710772_ _subst10778_)))
                                        (_E1075610764_))))))))
                       (if (##pair? _key1073310741_)
                           (let ((_hd1073810783_ (##car _key1073310741_))
                                 (_tl1073910785_ (##cdr _key1073310741_)))
                             (let ((_id10788_ _hd1073810783_))
                               (let ((_mark10790_ _tl1073910785_))
                                 (_K1073710780_ _mark10790_ _id10788_))))
                           (_else1073510749_)))))))))
        (let ((_out1068710697_ _out10684_))
          (let ((_E1068910701_
                 (lambda () (error '"No clause matching" _out1068710697_))))
            (let ((_K1069010708_
                   (lambda (_phi10704_ _key10705_ _ctx10706_)
                     (gx#core-context-resolve
                      (gx#core-context-shift _ctx10706_ _phi10704_)
                      (_subst10686_ _key10705_)))))
              (if (##structure-direct-instance-of?
                   _out1068710697_
                   (##type-id gx#module-export::t))
                  (let ((_e1069110711_ (##vector-ref _out1068710697_ '1)))
                    (let ((_ctx10714_ _e1069110711_))
                      (let ((_e1069210716_ (##vector-ref _out1068710697_ '2)))
                        (let ((_key10719_ _e1069210716_))
                          (let ((_e1069310721_
                                 (##vector-ref _out1068710697_ '3)))
                            (let ((_phi10724_ _e1069310721_))
                              (let ((_e1069410726_
                                     (##vector-ref _out1068710697_ '4)))
                                (let ((_e1069510729_
                                       (##vector-ref _out1068710697_ '5)))
                                  (_K1069010708_
                                   _phi10724_
                                   _key10719_
                                   _ctx10714_)))))))))
                  (_E1068910701_))))))))
  (begin
    (define gx#core-module-export->import__opt-lambda10607
      (lambda (_out10609_ _rename10610_ _dphi10611_)
        (let ((_out1061210622_ _out10609_))
          (let ((_E1061410626_
                 (lambda () (error '"No clause matching" _out1061210622_))))
            (let ((_K1061510638_
                   (lambda (_weak?10629_
                            _name10630_
                            _phi10631_
                            _key10632_
                            _ctx10633_)
                     (##structure
                      gx#module-import::t
                      _out10609_
                      (let ((_$e10635_ _rename10610_))
                        (if _$e10635_ _$e10635_ _name10630_))
                      (fx+ _phi10631_ _dphi10611_)
                      _weak?10629_))))
              (if (##structure-direct-instance-of?
                   _out1061210622_
                   (##type-id gx#module-export::t))
                  (let ((_e1061610641_ (##vector-ref _out1061210622_ '1)))
                    (let ((_ctx10644_ _e1061610641_))
                      (let ((_e1061710646_ (##vector-ref _out1061210622_ '2)))
                        (let ((_key10649_ _e1061710646_))
                          (let ((_e1061810651_
                                 (##vector-ref _out1061210622_ '3)))
                            (let ((_phi10654_ _e1061810651_))
                              (let ((_e1061910656_
                                     (##vector-ref _out1061210622_ '4)))
                                (let ((_name10659_ _e1061910656_))
                                  (let ((_e1062010661_
                                         (##vector-ref _out1061210622_ '5)))
                                    (let ((_weak?10664_ _e1062010661_))
                                      (_K1061510638_
                                       _weak?10664_
                                       _name10659_
                                       _phi10654_
                                       _key10649_
                                       _ctx10644_)))))))))))
                  (_E1061410626_)))))))
    (begin
      (define gx#core-module-export->import__0
        (lambda (_out10669_)
          (let ((_rename10671_ '#f))
            (let ((_dphi10673_ '0))
              (gx#core-module-export->import__opt-lambda10607
               _out10669_
               _rename10671_
               _dphi10673_)))))
      (define gx#core-module-export->import__1
        (lambda (_out10675_ _rename10676_)
          (let ((_dphi10678_ '0))
            (gx#core-module-export->import__opt-lambda10607
             _out10675_
             _rename10676_
             _dphi10678_))))
      (define gx#core-module-export->import
        (lambda _g11526_
          (let ((_g11525_ (length _g11526_)))
            (cond ((fx= _g11525_ 1)
                   (apply gx#core-module-export->import__0 _g11526_))
                  ((fx= _g11525_ 2)
                   (apply gx#core-module-export->import__1 _g11526_))
                  ((fx= _g11525_ 3)
                   (apply gx#core-module-export->import__opt-lambda10607
                          _g11526_))
                  (else (error "No clause matching arguments" _g11526_))))))))
  (define gx#core-expand-module%
    (lambda (_stx10537_)
      (let ((_make-context10539_
             (lambda (_id10590_)
               (let ((_super10592_ (gx#current-expander-context)))
                 (let ((_bind-id10594_ (gx#stx-e _id10590_)))
                   (let ((_mod-id10596_
                          (if (##structure-instance-of?
                               _super10592_
                               'gx#module-context::t)
                              (make-symbol
                               (##structure-ref
                                _super10592_
                                '1
                                gx#expander-context::t
                                '#f)
                               '"::"
                               _bind-id10594_)
                              _bind-id10594_)))
                     (let ((_ns10598_ (symbol->string _mod-id10596_)))
                       (let ((_path10605_
                              (if (##structure-instance-of?
                                   _super10592_
                                   'gx#module-context::t)
                                  (let ((_path10600_
                                         (##structure-ref
                                          _super10592_
                                          '7
                                          gx#module-context::t
                                          '#f)))
                                    (if (let ((_$e10602_ (pair? _path10600_)))
                                          (if _$e10602_
                                              _$e10602_
                                              (null? _path10600_)))
                                        (cons _bind-id10594_ _path10600_)
                                        (if (not _path10600_)
                                            _bind-id10594_
                                            (cons _bind-id10594_
                                                  (cons _path10600_ '())))))
                                  _bind-id10594_)))
                         (let ()
                           (let ((__obj11508
                                  (make-object gx#module-context::t '11)))
                             (begin
                               (gx#module-context:::init!
                                __obj11508
                                _mod-id10596_
                                _super10592_
                                _ns10598_
                                _path10605_)
                               __obj11508)))))))))))
        (let ((_e1054010550_ _stx10537_))
          (let ((_E1054210554_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e1054010550_))))
            (let ((_E1054110586_
                   (lambda ()
                     (if (gx#stx-pair? _e1054010550_)
                         (let ((_e1054310558_ (gx#syntax-e _e1054010550_)))
                           (let ((_hd1054410561_ (##car _e1054310558_))
                                 (_tl1054510563_ (##cdr _e1054310558_)))
                             (if (gx#stx-pair? _tl1054510563_)
                                 (let ((_e1054610566_
                                        (gx#syntax-e _tl1054510563_)))
                                   (let ((_hd1054710569_ (##car _e1054610566_))
                                         (_tl1054810571_
                                          (##cdr _e1054610566_)))
                                     (let ((_id10574_ _hd1054710569_))
                                       (let ((_body10576_ _tl1054810571_))
                                         (if (if (gx#identifier? _id10574_)
                                                 (gx#stx-list? _body10576_)
                                                 '#f)
                                             (let ((_ctx10578_
                                                    (_make-context10539_
                                                     _id10574_)))
                                               (let ((_body10580_
                                                      (gx#core-expand-module-begin
                                                       _body10576_
                                                       _ctx10578_)))
                                                 (let ((_body10582_
                                                        (gx#core-quote-syntax__1
                                                         (gx#core-cons
                                                          '%#begin
                                                          _body10580_)
                                                         (gx#stx-source
                                                          _stx10537_))))
                                                   (let ()
                                                     (begin
                                                       (##structure-set!
                                                        _ctx10578_
                                                        (make-promise
                                                         (lambda ()
                                                           (gx#eval-syntax*
                                                            _body10582_)))
                                                        '10
                                                        gx#module-context::t
                                                        '#f)
                                                       (##structure-set!
                                                        _ctx10578_
                                                        _body10582_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)
                                                       (gx#core-bind-syntax!__0
                                                        _id10574_
                                                        _ctx10578_)
                                                       (gx#core-quote-syntax__1
                                                        (gx#core-list
                                                         '%#module
                                                         (gx#core-quote-syntax__0
                                                          _id10574_)
                                                         _body10582_)
                                                        (gx#stx-source
                                                         _stx10537_)))))))
                                             (_E1054210554_))))))
                                 (_E1054210554_))))
                         (_E1054210554_)))))
              (let () (_E1054110586_))))))))
  (define gx#core-expand-module-begin
    (lambda (_body10503_ _ctx10504_)
      (call-with-parameters
       (lambda ()
         (begin
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let ((_stx10507_
                  (gx#core-expand-head (cons '%%begin-module _body10503_))))
             (let ((_e1050810515_ _stx10507_))
               (let ((_E1051010519_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module body expansion"
                         _stx10507_))))
                 (let ((_E1050910533_
                        (lambda ()
                          (if (gx#stx-pair? _e1050810515_)
                              (let ((_e1051110523_
                                     (gx#syntax-e _e1050810515_)))
                                (let ((_hd1051210526_ (##car _e1051110523_))
                                      (_tl1051310528_ (##cdr _e1051110523_)))
                                  (if (if (gx#identifier? _hd1051210526_)
                                          (gx#core-identifier=?
                                           _hd1051210526_
                                           '%#begin-module)
                                          '#f)
                                      (let ((_body10531_ _tl1051310528_))
                                        (if '#t
                                            (if (gx#sealed-syntax? _stx10507_)
                                                _body10531_
                                                (gx#core-expand-module-body
                                                 _body10531_))
                                            (_E1051010519_)))
                                      (_E1051010519_))))
                              (_E1051010519_)))))
                   (let () (_E1050910533_))))))))
       gx#current-expander-context
       _ctx10504_
       gx#current-expander-phi
       '0)))
  (define gx#core-expand-module-body
    (lambda (_body10299_)
      (let ((_expand-special10301_
             (lambda (_hd10430_ _K10431_ _rest10432_ _r10433_)
               (let ((_e1043410451_ _hd10430_))
                 (let ((_E1044610455_
                        (lambda ()
                          (_K10431_
                           _rest10432_
                           (cons (gx#core-expand-top _hd10430_) _r10433_)))))
                   (let ((_E1043610467_
                          (lambda ()
                            (if (gx#stx-pair? _e1043410451_)
                                (let ((_e1044710459_
                                       (gx#syntax-e _e1043410451_)))
                                  (let ((_hd1044810462_ (##car _e1044710459_))
                                        (_tl1044910464_ (##cdr _e1044710459_)))
                                    (if (if (gx#identifier? _hd1044810462_)
                                            (gx#core-identifier=?
                                             _hd1044810462_
                                             '%#export)
                                            '#f)
                                        (if '#t
                                            (_K10431_
                                             _rest10432_
                                             (cons _hd10430_ _r10433_))
                                            (_E1044610455_))
                                        (_E1044610455_))))
                                (_E1044610455_)))))
                     (let ((_E1043510499_
                            (lambda ()
                              (if (gx#stx-pair? _e1043410451_)
                                  (let ((_e1043710471_
                                         (gx#syntax-e _e1043410451_)))
                                    (let ((_hd1043810474_
                                           (##car _e1043710471_))
                                          (_tl1043910476_
                                           (##cdr _e1043710471_)))
                                      (if (if (gx#identifier? _hd1043810474_)
                                              (gx#core-identifier=?
                                               _hd1043810474_
                                               '%#define-values)
                                              '#f)
                                          (if (gx#stx-pair? _tl1043910476_)
                                              (let ((_e1044010479_
                                                     (gx#syntax-e
                                                      _tl1043910476_)))
                                                (let ((_hd1044110482_
                                                       (##car _e1044010479_))
                                                      (_tl1044210484_
                                                       (##cdr _e1044010479_)))
                                                  (let ((_hd-bind10487_
                                                         _hd1044110482_))
                                                    (if (gx#stx-pair?
                                                         _tl1044210484_)
                                                        (let ((_e1044310489_
                                                               (gx#syntax-e
                                                                _tl1044210484_)))
                                                          (let ((_hd1044410492_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1044310489_))
                        (_tl1044510494_ (##cdr _e1044310489_)))
                    (let ((_expr10497_ _hd1044410492_))
                      (if (gx#stx-null? _tl1044510494_)
                          (if (gx#core-bind-values? _hd-bind10487_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind10487_)
                                (_K10431_
                                 _rest10432_
                                 (cons _hd10430_ _r10433_)))
                              (_E1043610467_))
                          (_E1043610467_)))))
                (_E1043610467_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1043610467_))
                                          (_E1043610467_))))
                                  (_E1043610467_)))))
                       (let () (_E1043510499_)))))))))
        (let ((_expand-body10302_
               (lambda (_rbody10304_)
                 ((letrec ((_lp10306_
                            (lambda (_rest10308_ _body10309_)
                              (let ((_rest1031010318_ _rest10308_))
                                (let ((_E1031310322_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _rest1031010318_))))
                                  (let ((_else1031210326_
                                         (lambda () _body10309_)))
                                    (let ((_K1031410418_
                                           (lambda (_rest10329_ _hd10330_)
                                             (let ((_e1033110352_ _hd10330_))
                                               (let ((_E1034710356_
                                                      (lambda ()
                                                        (_lp10306_
                                                         _rest10329_
                                                         (cons (gx#core-expand-expression
                                                                _hd10330_)
                                                               _body10309_)))))
                                                 (let ((_E1034310370_
                                                        (lambda ()
                                                          (if (gx#stx-pair?
                                                               _e1033110352_)
                                                              (let ((_e1034810360_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _e1033110352_)))
                        (let ((_hd1034910363_ (##car _e1034810360_))
                              (_tl1035010365_ (##cdr _e1034810360_)))
                          (let ((_form10368_ _hd1034910363_))
                            (if (gx#core-bound-identifier?__opt-lambda4203
                                 _form10368_
                                 gx#special-form-binding?)
                                (_lp10306_
                                 _rest10329_
                                 (cons _hd10330_ _body10309_))
                                (_E1034710356_)))))
                      (_E1034710356_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_E1033310382_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e1033110352_)
                        (let ((_e1034410374_ (gx#syntax-e _e1033110352_)))
                          (let ((_hd1034510377_ (##car _e1034410374_))
                                (_tl1034610379_ (##cdr _e1034410374_)))
                            (if (if (gx#identifier? _hd1034510377_)
                                    (gx#core-identifier=?
                                     _hd1034510377_
                                     '%#export)
                                    '#f)
                                (if '#t
                                    (_lp10306_
                                     _rest10329_
                                     (cons (gx#core-expand-export%__0
                                            _hd10330_)
                                           _body10309_))
                                    (_E1034310370_))
                                (_E1034310370_))))
                        (_E1034310370_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_E1033210414_
                                                            (lambda ()
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e1033110352_)
                          (let ((_e1033410386_ (gx#syntax-e _e1033110352_)))
                            (let ((_hd1033510389_ (##car _e1033410386_))
                                  (_tl1033610391_ (##cdr _e1033410386_)))
                              (if (if (gx#identifier? _hd1033510389_)
                                      (gx#core-identifier=?
                                       _hd1033510389_
                                       '%#define-values)
                                      '#f)
                                  (if (gx#stx-pair? _tl1033610391_)
                                      (let ((_e1033710394_
                                             (gx#syntax-e _tl1033610391_)))
                                        (let ((_hd1033810397_
                                               (##car _e1033710394_))
                                              (_tl1033910399_
                                               (##cdr _e1033710394_)))
                                          (let ((_hd-bind10402_
                                                 _hd1033810397_))
                                            (if (gx#stx-pair? _tl1033910399_)
                                                (let ((_e1034010404_
                                                       (gx#syntax-e
                                                        _tl1033910399_)))
                                                  (let ((_hd1034110407_
                                                         (##car _e1034010404_))
                                                        (_tl1034210409_
                                                         (##cdr _e1034010404_)))
                                                    (let ((_expr10412_
                                                           _hd1034110407_))
                                                      (if (gx#stx-null?
                                                           _tl1034210409_)
                                                          (if '#t
                                                              (_lp10306_
                                                               _rest10329_
                                                               (cons (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#core-list
                               '%#define-values
                               (gx#core-quote-bind-values _hd-bind10402_)
                               (gx#core-expand-expression _expr10412_))
                              (gx#stx-source _hd10330_))
                             _body10309_))
                      (_E1033310382_))
                  (_E1033310382_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1033310382_)))))
                                      (_E1033310382_))
                                  (_E1033310382_))))
                          (_E1033310382_)))))
               (let () (_E1033210414_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (##pair? _rest1031010318_)
                                          (let ((_hd1031510421_
                                                 (##car _rest1031010318_))
                                                (_tl1031610423_
                                                 (##cdr _rest1031010318_)))
                                            (let ((_hd10426_ _hd1031510421_))
                                              (let ((_rest10428_
                                                     _tl1031610423_))
                                                (_K1031410418_
                                                 _rest10428_
                                                 _hd10426_))))
                                          (_else1031210326_)))))))))
                    _lp10306_)
                  _rbody10304_
                  '()))))
          (_expand-body10302_
           (gx#core-expand-block__opt-lambda5251
            (cons '%#begin-module _body10299_)
            _expand-special10301_
            '#f
            values))))))
  (define gx#core-expand-import/export
    (lambda (_stx10142_
             _expanded?10143_
             _method10144_
             _current-phi10145_
             _expand110146_)
      (letrec ((_K10148_
                (lambda (_rest10266_ _r10267_)
                  (let ((_e1026810275_ _rest10266_))
                    (let ((_E1027010279_ (lambda () _r10267_)))
                      (let ((_E1026910295_
                             (lambda ()
                               (if (gx#stx-pair? _e1026810275_)
                                   (let ((_e1027110283_
                                          (gx#syntax-e _e1026810275_)))
                                     (let ((_hd1027210286_
                                            (##car _e1027110283_))
                                           (_tl1027310288_
                                            (##cdr _e1027110283_)))
                                       (let ((_hd10291_ _hd1027210286_))
                                         (let ((_rest10293_ _tl1027310288_))
                                           (if '#t
                                               (_step10149_
                                                _hd10291_
                                                _rest10293_
                                                _r10267_)
                                               (_E1027010279_))))))
                                   (_E1027010279_)))))
                        (let () (_E1026910295_)))))))
               (_step10149_
                (lambda (_hd10180_ _rest10181_ _r10182_)
                  (let ((_e1018310201_ _hd10180_))
                    (let ((_E1019610205_
                           (lambda ()
                             (if (_expanded?10143_ (gx#stx-e _hd10180_))
                                 (_K10148_
                                  _rest10181_
                                  (cons (gx#stx-e _hd10180_) _r10182_))
                                 (_expand110146_
                                  _hd10180_
                                  _K10148_
                                  _rest10181_
                                  _r10182_)))))
                      (let ((_E1019210221_
                             (lambda ()
                               (if (gx#stx-pair? _e1018310201_)
                                   (let ((_e1019710209_
                                          (gx#syntax-e _e1018310201_)))
                                     (let ((_hd1019810212_
                                            (##car _e1019710209_))
                                           (_tl1019910214_
                                            (##cdr _e1019710209_)))
                                       (let ((_macro10217_ _hd1019810212_))
                                         (let ((_body10219_ _tl1019910214_))
                                           (if (gx#core-bound-identifier?__opt-lambda4203
                                                _macro10217_
                                                gx#syntax-binding?)
                                               (_K10148_
                                                (cons (gx#core-apply-expander__opt-lambda4969
                                                       (gx#syntax-local-e__0
                                                        _macro10217_)
                                                       _hd10180_
                                                       _method10144_)
                                                      _rest10181_)
                                                _r10182_)
                                               (_E1019610205_))))))
                                   (_E1019610205_)))))
                        (let ((_E1018510235_
                               (lambda ()
                                 (if (gx#stx-pair? _e1018310201_)
                                     (let ((_e1019310225_
                                            (gx#syntax-e _e1018310201_)))
                                       (let ((_hd1019410228_
                                              (##car _e1019310225_))
                                             (_tl1019510230_
                                              (##cdr _e1019310225_)))
                                         (if (eq? (gx#stx-e _hd1019410228_)
                                                  'begin:)
                                             (let ((_body10233_
                                                    _tl1019510230_))
                                               (if '#t
                                                   (_K10148_
                                                    (gx#stx-foldr
                                                     cons
                                                     _rest10181_
                                                     _body10233_)
                                                    _r10182_)
                                                   (_E1019210221_)))
                                             (_E1019210221_))))
                                     (_E1019210221_)))))
                          (let ((_E1018410262_
                                 (lambda ()
                                   (if (gx#stx-pair? _e1018310201_)
                                       (let ((_e1018610239_
                                              (gx#syntax-e _e1018310201_)))
                                         (let ((_hd1018710242_
                                                (##car _e1018610239_))
                                               (_tl1018810244_
                                                (##cdr _e1018610239_)))
                                           (if (eq? (gx#stx-e _hd1018710242_)
                                                    'phi:)
                                               (if (gx#stx-pair?
                                                    _tl1018810244_)
                                                   (let ((_e1018910247_
                                                          (gx#syntax-e
                                                           _tl1018810244_)))
                                                     (let ((_hd1019010250_
                                                            (##car _e1018910247_))
                                                           (_tl1019110252_
                                                            (##cdr _e1018910247_)))
                                                       (let ((_dphi10255_
                                                              _hd1019010250_))
                                                         (let ((_body10257_
                                                                _tl1019110252_))
                                                           (if (gx#stx-fixnum?
                                                                _dphi10255_)
                                                               (let ((_rbody10260_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (call-with-parameters
                               (lambda () (_K10148_ _body10257_ '()))
                               _current-phi10145_
                               (fx+ (gx#stx-e _dphi10255_)
                                    (_current-phi10145_)))))
                         (_K10148_
                          _rest10181_
                          (foldr1 cons _r10182_ _rbody10260_)))
                       (_E1018510235_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1018510235_))
                                               (_E1018510235_))))
                                       (_E1018510235_)))))
                            (let () (_E1018410262_))))))))))
        (let ((_e1015010157_ _stx10142_))
          (let ((_E1015210161_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e1015010157_))))
            (let ((_E1015110176_
                   (lambda ()
                     (if (gx#stx-pair? _e1015010157_)
                         (let ((_e1015310165_ (gx#syntax-e _e1015010157_)))
                           (let ((_hd1015410168_ (##car _e1015310165_))
                                 (_tl1015510170_ (##cdr _e1015310165_)))
                             (let ((_body10173_ _tl1015510170_))
                               (if '#t
                                   (if (_current-phi10145_)
                                       (_K10148_ _body10173_ '())
                                       (call-with-parameters
                                        (lambda () (_K10148_ _body10173_ '()))
                                        _current-phi10145_
                                        (gx#current-expander-phi)))
                                   (_E1015210161_)))))
                         (_E1015210161_)))))
              (let () (_E1015110176_))))))))
  (begin
    (define gx#core-expand-import%__opt-lambda9679
      (lambda (_stx9681_ _internal-expand?9682_)
        (let ((_import19685_
               (lambda (_ctx10116_ _K10117_ _rest10118_ _r10119_)
                 (let ((_dphi10121_
                        (fx- (gx#current-import-expander-phi)
                             (gx#current-expander-phi))))
                   (_K10117_
                    _rest10118_
                    (cons (##structure
                           gx#import-set::t
                           _ctx10116_
                           _dphi10121_
                           (map (lambda (_g1012210124_)
                                  (gx#core-module-export->import__opt-lambda10607
                                   _g1012210124_
                                   '#f
                                   _dphi10121_))
                                (##structure-ref
                                 _ctx10116_
                                 '9
                                 gx#module-context::t
                                 '#f)))
                          _r10119_))))))
          (let ((_import-spec?9686_
                 (lambda (_hd10073_)
                   (let ((_e1007410084_ _hd10073_))
                     (let ((_E1007610088_ (lambda () '#f)))
                       (let ((_E1007510112_
                              (lambda ()
                                (if (gx#stx-pair? _e1007410084_)
                                    (let ((_e1007710092_
                                           (gx#syntax-e _e1007410084_)))
                                      (let ((_hd1007810095_
                                             (##car _e1007710092_))
                                            (_tl1007910097_
                                             (##cdr _e1007710092_)))
                                        (if (eq? (gx#stx-e _hd1007810095_)
                                                 'spec:)
                                            (if (gx#stx-pair? _tl1007910097_)
                                                (let ((_e1008010100_
                                                       (gx#syntax-e
                                                        _tl1007910097_)))
                                                  (let ((_hd1008110103_
                                                         (##car _e1008010100_))
                                                        (_tl1008210105_
                                                         (##cdr _e1008010100_)))
                                                    (let ((_spath10108_
                                                           _hd1008110103_))
                                                      (let ((_specs10110_
                                                             _tl1008210105_))
                                                        (if '#t
                                                            '#t
                                                            (_E1007610088_))))))
                                                (_E1007610088_))
                                            (_E1007610088_))))
                                    (_E1007610088_)))))
                         (let () (_E1007510112_))))))))
            (let ((_import-submodule?9687_
                   (lambda (_hd10030_)
                     (let ((_e1003110041_ _hd10030_))
                       (let ((_E1003310045_ (lambda () '#f)))
                         (let ((_E1003210069_
                                (lambda ()
                                  (if (gx#stx-pair? _e1003110041_)
                                      (let ((_e1003410049_
                                             (gx#syntax-e _e1003110041_)))
                                        (let ((_hd1003510052_
                                               (##car _e1003410049_))
                                              (_tl1003610054_
                                               (##cdr _e1003410049_)))
                                          (if (eq? (gx#stx-e _hd1003510052_)
                                                   'in:)
                                              (if (gx#stx-pair? _tl1003610054_)
                                                  (let ((_e1003710057_
                                                         (gx#syntax-e
                                                          _tl1003610054_)))
                                                    (let ((_hd1003810060_
                                                           (##car _e1003710057_))
                                                          (_tl1003910062_
                                                           (##cdr _e1003710057_)))
                                                      (let ((_top10065_
                                                             _hd1003810060_))
                                                        (let ((_sub10067_
                                                               _tl1003910062_))
                                                          (if '#t
                                                              '#t
                                                              (_E1003310045_))))))
                                                  (_E1003310045_))
                                              (_E1003310045_))))
                                      (_E1003310045_)))))
                           (let () (_E1003210069_))))))))
              (let ((_import-runtime?9688_
                     (lambda (_hd9987_)
                       (let ((_e99889998_ _hd9987_))
                         (let ((_E999010002_ (lambda () '#f)))
                           (let ((_E998910026_
                                  (lambda ()
                                    (if (gx#stx-pair? _e99889998_)
                                        (let ((_e999110006_
                                               (gx#syntax-e _e99889998_)))
                                          (let ((_hd999210009_
                                                 (##car _e999110006_))
                                                (_tl999310011_
                                                 (##cdr _e999110006_)))
                                            (if (eq? (gx#stx-e _hd999210009_)
                                                     'runtime:)
                                                (if (gx#stx-pair?
                                                     _tl999310011_)
                                                    (let ((_e999410014_
                                                           (gx#syntax-e
                                                            _tl999310011_)))
                                                      (let ((_hd999510017_
                                                             (##car _e999410014_))
                                                            (_tl999610019_
                                                             (##cdr _e999410014_)))
                                                        (let ((_top10022_
                                                               _hd999510017_))
                                                          (let ((_spath10024_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl999610019_))
                    (if '#t '#t (_E999010002_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E999010002_))
                                                (_E999010002_))))
                                        (_E999010002_)))))
                             (let () (_E998910026_))))))))
                (let ((_import-spec-source9692_
                       (lambda (_spath9758_)
                         (gx#core-import-nested-module
                          _spath9758_
                          _stx9681_))))
                  (let ((_import!9693_
                         (lambda (_rbody9706_)
                           (let ((_current-ctx9708_
                                  (gx#current-expander-context)))
                             (let ((_deps9709_ (make-hash-table-eq)))
                               (let ((_bind!9710_
                                      (lambda (_hd9756_)
                                        (begin
                                          (gx#core-bind-import!__1
                                           _hd9756_
                                           _current-ctx9708_)
                                          (if (if (fxpositive?
                                                   (##structure-ref
                                                    _hd9756_
                                                    '3
                                                    gx#module-import::t
                                                    '#f))
                                                  (fxzero? (##structure-ref
                                                            (##structure-ref
                                                             _hd9756_
                                                             '1
                                                             gx#module-import::t
                                                             '#f)
                                                            '3
                                                            gx#module-export::t
                                                            '#f))
                                                  '#f)
                                              (table-set!
                                               _deps9709_
                                               (##structure-ref
                                                (##structure-ref
                                                 _hd9756_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)
                                                '1
                                                gx#module-export::t
                                                '#f)
                                               '#t)
                                              '#!void)))))
                                 (let ((_fold-e9711_
                                        (lambda (_in9753_ _r9754_)
                                          (if (##structure-direct-instance-of?
                                               _in9753_
                                               'gx#module-import::t)
                                              (cons _in9753_ _r9754_)
                                              (if (##structure-direct-instance-of?
                                                   _in9753_
                                                   'gx#import-set::t)
                                                  (foldl1 cons
                                                          _r9754_
                                                          (##structure-ref
                                                           _in9753_
                                                           '3
                                                           gx#import-set::t
                                                           '#f))
                                                  _r9754_)))))
                                   ((letrec ((_lp9713_
                                              (lambda (_rest9715_ _body9716_)
                                                (let ((_rest97179725_
                                                       _rest9715_))
                                                  (let ((_E97209729_
                                                         (lambda ()
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _rest97179725_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_else97199735_
                                                           (lambda ()
                                                             (begin
                                                               (if (##structure-instance-of?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _current-ctx9708_
                            'gx#module-context::t)
                           (##structure-set!
                            _current-ctx9708_
                            (foldl1 _fold-e9711_
                                    (##structure-ref
                                     _current-ctx9708_
                                     '8
                                     gx#module-context::t
                                     '#f)
                                    _body9716_)
                            '8
                            gx#module-context::t
                            '#f)
                           '#!void)
                       (table-for-each
                        (lambda (_ctx9733_ _g11527_)
                          (gx#eval-module _ctx9733_))
                        _deps9709_)
                       _body9716_))))
              (let ((_K97219741_
                     (lambda (_rest9738_ _hd9739_)
                       (begin
                         (if (##structure-direct-instance-of?
                              _hd9739_
                              'gx#module-import::t)
                             (_bind!9710_ _hd9739_)
                             (if (##structure-direct-instance-of?
                                  _hd9739_
                                  'gx#import-set::t)
                                 (for-each
                                  _bind!9710_
                                  (##structure-ref
                                   _hd9739_
                                   '3
                                   gx#import-set::t
                                   '#f))
                                 (if (##structure-instance-of?
                                      _hd9739_
                                      'gx#module-context::t)
                                     '#!void
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Unexpected import"
                                      _stx9681_
                                      _hd9739_))))
                         (_lp9713_ _rest9738_ (cons _hd9739_ _body9716_))))))
                (if (##pair? _rest97179725_)
                    (let ((_hd97229744_ (##car _rest97179725_))
                          (_tl97239746_ (##cdr _rest97179725_)))
                      (let ((_hd9749_ _hd97229744_))
                        (let ((_rest9751_ _tl97239746_))
                          (_K97219741_ _rest9751_ _hd9749_))))
                    (_else97199735_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _lp9713_)
                                    _rbody9706_
                                    '()))))))))
                    (let ((_expanded-import?9694_
                           (lambda (_e9698_)
                             (let ((_$e9700_
                                    (##structure-direct-instance-of?
                                     _e9698_
                                     'gx#import-set::t)))
                               (if _$e9700_
                                   _$e9700_
                                   (let ((_$e9703_
                                          (##structure-direct-instance-of?
                                           _e9698_
                                           'gx#module-import::t)))
                                     (if _$e9703_
                                         _$e9703_
                                         (##structure-instance-of?
                                          _e9698_
                                          'gx#module-context::t))))))))
                      (let ((_import-submodule9689_
                             (lambda (_hd9954_ _K9955_ _rest9956_ _r9957_)
                               (let ((_e99589965_ _hd9954_))
                                 (let ((_E99609969_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _e99589965_))))
                                   (let ((_E99599983_
                                          (lambda ()
                                            (if (gx#stx-pair? _e99589965_)
                                                (let ((_e99619973_
                                                       (gx#syntax-e
                                                        _e99589965_)))
                                                  (let ((_hd99629976_
                                                         (##car _e99619973_))
                                                        (_tl99639978_
                                                         (##cdr _e99619973_)))
                                                    (let ((_spath9981_
                                                           _tl99639978_))
                                                      (if '#t
                                                          (_import19685_
                                                           (_import-spec-source9692_
                                                            _spath9981_)
                                                           _K9955_
                                                           _rest9956_
                                                           _r9957_)
                                                          (_E99609969_)))))
                                                (_E99609969_)))))
                                     (let () (_E99599983_))))))))
                        (let ((_import-runtime9690_
                               (lambda (_hd9921_ _K9922_ _rest9923_ _r9924_)
                                 (let ((_e99259932_ _hd9921_))
                                   (let ((_E99279936_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _e99259932_))))
                                     (let ((_E99269950_
                                            (lambda ()
                                              (if (gx#stx-pair? _e99259932_)
                                                  (let ((_e99289940_
                                                         (gx#syntax-e
                                                          _e99259932_)))
                                                    (let ((_hd99299943_
                                                           (##car _e99289940_))
                                                          (_tl99309945_
                                                           (##cdr _e99289940_)))
                                                      (let ((_spath9948_
                                                             _tl99309945_))
                                                        (if '#t
                                                            (_K9922_ _rest9923_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (_import-spec-source9692_ _spath9948_)
                                   _r9924_))
                    (_E99279936_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E99279936_)))))
                                       (let () (_E99269950_))))))))
                          (let ((_import-spec9691_
                                 (lambda (_hd9760_ _K9761_ _rest9762_ _r9763_)
                                   (let ((_e97649781_ _hd9760_))
                                     (let ((_E97739785_
                                            (lambda ()
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _e97649781_))))
                                       (let ((_E97669895_
                                              (lambda ()
                                                (if (gx#stx-pair? _e97649781_)
                                                    (let ((_e97749789_
                                                           (gx#syntax-e
                                                            _e97649781_)))
                                                      (let ((_hd97759792_
                                                             (##car _e97749789_))
                                                            (_tl97769794_
                                                             (##cdr _e97749789_)))
                                                        (if (gx#stx-pair?
                                                             _tl97769794_)
                                                            (let ((_e97779797_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl97769794_)))
                      (let ((_hd97789800_ (##car _e97779797_))
                            (_tl97799802_ (##cdr _e97779797_)))
                        (let ((_path9805_ _hd97789800_))
                          (let ((_specs9807_ _tl97799802_))
                            (if '#t
                                (let ((_src-ctx9809_
                                       (_import-spec-source9692_ _path9805_))
                                      (_exports9810_ (make-table))
                                      (_specs9811_
                                       (gx#syntax->list _specs9807_)))
                                  (begin
                                    (for-each
                                     (lambda (_out9813_)
                                       (table-set!
                                        _exports9810_
                                        (cons (##structure-ref
                                               _out9813_
                                               '3
                                               gx#module-export::t
                                               '#f)
                                              (##structure-ref
                                               _out9813_
                                               '4
                                               gx#module-export::t
                                               '#f))
                                        _out9813_))
                                     (##structure-ref
                                      _src-ctx9809_
                                      '9
                                      gx#module-context::t
                                      '#f))
                                    (_K9761_ _rest9762_
                                             (foldl1 (lambda (_spec9815_
                                                              _r9816_)
                                                       (let ((_e98179833_
                                                              _spec9815_))
                                                         (let ((_E98199837_
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _e98179833_))))
                   (let ((_E98189891_
                          (lambda ()
                            (if (gx#stx-pair? _e98179833_)
                                (let ((_e98209841_ (gx#syntax-e _e98179833_)))
                                  (let ((_hd98219844_ (##car _e98209841_))
                                        (_tl98229846_ (##cdr _e98209841_)))
                                    (let ((_phi9849_ _hd98219844_))
                                      (if (gx#stx-pair? _tl98229846_)
                                          (let ((_e98239851_
                                                 (gx#syntax-e _tl98229846_)))
                                            (let ((_hd98249854_
                                                   (##car _e98239851_))
                                                  (_tl98259856_
                                                   (##cdr _e98239851_)))
                                              (let ((_name9859_ _hd98249854_))
                                                (if (gx#stx-pair? _tl98259856_)
                                                    (let ((_e98269861_
                                                           (gx#syntax-e
                                                            _tl98259856_)))
                                                      (let ((_hd98279864_
                                                             (##car _e98269861_))
                                                            (_tl98289866_
                                                             (##cdr _e98269861_)))
                                                        (let ((_src-phi9869_
                                                               _hd98279864_))
                                                          (if (gx#stx-pair?
                                                               _tl98289866_)
                                                              (let ((_e98299871_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl98289866_)))
                        (let ((_hd98309874_ (##car _e98299871_))
                              (_tl98319876_ (##cdr _e98299871_)))
                          (let ((_src-name9879_ _hd98309874_))
                            (if (gx#stx-null? _tl98319876_)
                                (if (if (gx#stx-fixnum? _src-phi9869_)
                                        (if (gx#identifier? _src-name9879_)
                                            (if (gx#stx-fixnum? _phi9849_)
                                                (gx#identifier? _name9859_)
                                                '#f)
                                            '#f)
                                        '#f)
                                    (let ((_src-phi9881_
                                           (gx#stx-e _src-phi9869_))
                                          (_src-name9882_
                                           (gx#core-identifier-key
                                            _src-name9879_))
                                          (_phi9883_ (gx#stx-e _phi9849_))
                                          (_name9884_
                                           (gx#core-identifier-key
                                            _name9859_)))
                                      (let ((_$e9886_
                                             (table-ref
                                              _exports9810_
                                              (cons _src-phi9881_
                                                    _src-name9882_)
                                              '#f)))
                                        (if _$e9886_
                                            ((lambda (_out9889_)
                                               (cons (gx#core-module-export->import__opt-lambda10607
                                                      _out9889_
                                                      _name9884_
                                                      (fx- _phi9883_
                                                           _src-phi9881_))
                                                     _r9816_))
                                             _$e9886_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; no matching export"
                                             _stx9681_
                                             _hd9760_))))
                                    (_E98199837_))
                                (_E98199837_)))))
                      (_E98199837_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E98199837_)))))
                                          (_E98199837_)))))
                                (_E98199837_)))))
                     (let () (_E98189891_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _r9763_
                                                     _specs9811_))))
                                (_E97739785_))))))
                    (_E97739785_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E97739785_)))))
                                         (let ((_E97659917_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _e97649781_)
                                                      (let ((_e97679899_
                                                             (gx#syntax-e
                                                              _e97649781_)))
                                                        (let ((_hd97689902_
                                                               (##car _e97679899_))
                                                              (_tl97699904_
                                                               (##cdr _e97679899_)))
                                                          (if (gx#stx-pair?
                                                               _tl97699904_)
                                                              (let ((_e97709907_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl97699904_)))
                        (let ((_hd97719910_ (##car _e97709907_))
                              (_tl97729912_ (##cdr _e97709907_)))
                          (let ((_path9915_ _hd97719910_))
                            (if (gx#stx-null? _tl97729912_)
                                (if '#t
                                    (_K9761_ _rest9762_
                                             (cons (_import-spec-source9692_
                                                    _path9915_)
                                                   _r9763_))
                                    (_E97669895_))
                                (_E97669895_)))))
                      (_E97669895_))))
              (_E97669895_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let () (_E97659917_)))))))))
                            (let ((_expand19684_
                                   (lambda (_hd10127_
                                            _K10128_
                                            _rest10129_
                                            _r10130_)
                                     (if (gx#core-bound-module? _hd10127_)
                                         (_import19685_
                                          (gx#syntax-local-e__0 _hd10127_)
                                          _K10128_
                                          _rest10129_
                                          _r10130_)
                                         (if (gx#core-library-module-path?
                                              _hd10127_)
                                             (_import19685_
                                              (gx#import-module__0
                                               (gx#core-resolve-library-module-path
                                                _hd10127_))
                                              _K10128_
                                              _rest10129_
                                              _r10130_)
                                             (if (gx#stx-string? _hd10127_)
                                                 (_import19685_
                                                  (gx#import-module__0
                                                   (gx#core-resolve-module-path__opt-lambda10967
                                                    _hd10127_
                                                    (gx#stx-source _stx9681_)))
                                                  _K10128_
                                                  _rest10129_
                                                  _r10130_)
                                                 (if (##structure-instance-of?
                                                      (gx#stx-e _hd10127_)
                                                      'gx#module-context::t)
                                                     (_K10128_
                                                      _rest10129_
                                                      (cons (gx#stx-e
                                                             _hd10127_)
                                                            _r10130_))
                                                     (if (_import-spec?9686_
                                                          _hd10127_)
                                                         (_import-spec9691_
                                                          _hd10127_
                                                          _K10128_
                                                          _rest10129_
                                                          _r10130_)
                                                         (if (_import-submodule?9687_
                                                              _hd10127_)
                                                             (_import-submodule9689_
                                                              _hd10127_
                                                              _K10128_
                                                              _rest10129_
                                                              _r10130_)
                                                             (if (_import-runtime?9688_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd10127_)
                         (_import-runtime9690_
                          _hd10127_
                          _K10128_
                          _rest10129_
                          _r10130_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; illegal import"
                          _stx9681_
                          _hd10127_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (let ((_rbody9696_
                                     (gx#core-expand-import/export
                                      _stx9681_
                                      _expanded-import?9694_
                                      'apply-import-expander
                                      gx#current-import-expander-phi
                                      _expand19684_)))
                                (if _internal-expand?9682_
                                    (reverse _rbody9696_)
                                    (gx#core-quote-syntax__1
                                     (gx#core-cons
                                      '%#import
                                      (_import!9693_ _rbody9696_))
                                     (gx#stx-source _stx9681_)))))))))))))))))
    (begin
      (define gx#core-expand-import%__0
        (lambda (_stx10135_)
          (let ((_internal-expand?10137_ '#f))
            (gx#core-expand-import%__opt-lambda9679
             _stx10135_
             _internal-expand?10137_))))
      (define gx#core-expand-import%
        (lambda _g11529_
          (let ((_g11528_ (length _g11529_)))
            (cond ((fx= _g11528_ 1) (apply gx#core-expand-import%__0 _g11529_))
                  ((fx= _g11528_ 2)
                   (apply gx#core-expand-import%__opt-lambda9679 _g11529_))
                  (else (error "No clause matching arguments" _g11529_))))))))
  (define gx#core-import-nested-module
    (lambda (_spath9608_ _where9609_)
      (let ((_e96109617_ _spath9608_))
        (let ((_E96129621_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e96109617_))))
          (let ((_E96119676_
                 (lambda ()
                   (if (gx#stx-pair? _e96109617_)
                       (let ((_e96139625_ (gx#syntax-e _e96109617_)))
                         (let ((_hd96149628_ (##car _e96139625_))
                               (_tl96159630_ (##cdr _e96139625_)))
                           (let ((_origin9633_ _hd96149628_))
                             (let ((_sub9635_ _tl96159630_))
                               (if '#t
                                   (let ((_origin-ctx9637_
                                          (if (gx#stx-false? _origin9633_)
                                              (gx#current-expander-context)
                                              (gx#import-module__0
                                               _origin9633_))))
                                     ((letrec ((_lp9639_
                                                (lambda (_rest9641_ _ctx9642_)
                                                  (let ((_e96439650_
                                                         _rest9641_))
                                                    (let ((_E96459654_
                                                           (lambda ()
                                                             _ctx9642_)))
                                                      (let ((_E96449672_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _e96439650_)
                           (let ((_e96469658_ (gx#syntax-e _e96439650_)))
                             (let ((_hd96479661_ (##car _e96469658_))
                                   (_tl96489663_ (##cdr _e96469658_)))
                               (let ((_id9666_ _hd96479661_))
                                 (let ((_rest9668_ _tl96489663_))
                                   (if '#t
                                       (let ((_bind9670_
                                              (gx#resolve-identifier__opt-lambda4754
                                               _id9666_
                                               '0
                                               _ctx9642_)))
                                         (begin
                                           (if (if (##structure-direct-instance-of?
                                                    _bind9670_
                                                    'gx#syntax-binding::t)
                                                   (##structure-instance-of?
                                                    (##structure-ref
                                                     _bind9670_
                                                     '4
                                                     gx#syntax-binding::t
                                                     '#f)
                                                    'gx#module-context::t)
                                                   '#f)
                                               '#!void
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; not bound as module"
                                                _where9609_
                                                _spath9608_
                                                _id9666_))
                                           (_lp9639_
                                            _rest9668_
                                            (##structure-ref
                                             _bind9670_
                                             '4
                                             gx#syntax-binding::t
                                             '#f))))
                                       (_E96459654_))))))
                           (_E96459654_)))))
                (let () (_E96449672_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _lp9639_)
                                      _sub9635_
                                      _origin-ctx9637_))
                                   (_E96129621_))))))
                       (_E96129621_)))))
            (let () (_E96119676_)))))))
  (define gx#core-expand-import-source
    (lambda (_hd9606_)
      (gx#core-expand-import%__opt-lambda9679
       (cons 'import-internal% (cons _hd9606_ '()))
       '#t)))
  (begin
    (define gx#core-expand-export%__opt-lambda9188
      (lambda (_stx9190_ _internal-expand?9191_)
        (let ((_make-export__opt-lambda9552__1149711498_
               (lambda (_bind9554_ _phi9555_ _ctx9556_ _name9557_)
                 (let ((_key9559_
                        (##structure-ref _bind9554_ '2 gx#binding::t '#f)))
                   (let ((_export-key9561_
                          (if _name9557_
                              (gx#core-identifier-key _name9557_)
                              _key9559_)))
                     (let ()
                       (##structure
                        gx#module-export::t
                        _ctx9556_
                        _key9559_
                        _phi9555_
                        _export-key9561_
                        (let ((_$e9564_
                               (##structure-instance-of?
                                _bind9554_
                                'gx#extern-binding::t)))
                          (if _$e9564_
                              _$e9564_
                              (##structure-direct-instance-of?
                               _bind9554_
                               'gx#import-binding::t))))))))))
          (let ((_make-export__0__1149911502_
                 (lambda (_bind9570_)
                   (let ((_phi9572_ (gx#current-export-expander-phi)))
                     (let ((_ctx9574_ (gx#current-expander-context)))
                       (let ((_name9576_ '#f))
                         (_make-export__opt-lambda9552__1149711498_
                          _bind9570_
                          _phi9572_
                          _ctx9574_
                          _name9576_)))))))
            (let ((_make-export__1__1150011503_
                   (lambda (_bind9578_ _phi9579_)
                     (let ((_ctx9581_ (gx#current-expander-context)))
                       (let ((_name9583_ '#f))
                         (_make-export__opt-lambda9552__1149711498_
                          _bind9578_
                          _phi9579_
                          _ctx9581_
                          _name9583_))))))
              (let ((_make-export__2__1150111504_
                     (lambda (_bind9585_ _phi9586_ _ctx9587_)
                       (let ((_name9589_ '#f))
                         (_make-export__opt-lambda9552__1149711498_
                          _bind9585_
                          _phi9586_
                          _ctx9587_
                          _name9589_)))))
                (let ((_make-export9193_
                       (lambda _g11531_
                         (let ((_g11530_ (length _g11531_)))
                           (cond ((fx= _g11530_ 1)
                                  (apply _make-export__0__1149911502_
                                         _g11531_))
                                 ((fx= _g11530_ 2)
                                  (apply _make-export__1__1150011503_
                                         _g11531_))
                                 ((fx= _g11530_ 3)
                                  (apply _make-export__2__1150111504_
                                         _g11531_))
                                 ((fx= _g11530_ 4)
                                  (apply _make-export__opt-lambda9552__1149711498_
                                         _g11531_))
                                 (else
                                  (error "No clause matching arguments"
                                         _g11531_)))))))
                  (let ((_export-imports9195_
                         (lambda (_src9216_ _r9217_)
                           (let ((_current-ctx9219_
                                  (gx#current-expander-context)))
                             (let ((_current-phi9220_
                                    (gx#current-export-expander-phi)))
                               (let ((_import->export9221_
                                      (lambda (_in9229_)
                                        (let ((_in92309238_ _in9229_))
                                          (let ((_E92329242_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _in92309238_))))
                                            (let ((_K92339249_
                                                   (lambda (_phi9245_
                                                            _key9246_
                                                            _out9247_)
                                                     (if (fx= _phi9245_
                                                              _current-phi9220_)
                                                         (if (eq? _src9216_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##structure-ref
                           _out9247_
                           '1
                           gx#module-export::t
                           '#f))
                     (##structure
                      gx#module-export::t
                      _current-ctx9219_
                      _key9246_
                      _phi9245_
                      _key9246_
                      '#t)
                     '#f)
                 '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##structure-direct-instance-of?
                                                   _in92309238_
                                                   (##type-id
                                                    gx#module-import::t))
                                                  (let ((_e92349252_
                                                         (##vector-ref
                                                          _in92309238_
                                                          '1)))
                                                    (let ((_out9255_
                                                           _e92349252_))
                                                      (let ((_e92359257_
                                                             (##vector-ref
                                                              _in92309238_
                                                              '2)))
                                                        (let ((_key9260_
                                                               _e92359257_))
                                                          (let ((_e92369262_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref _in92309238_ '3)))
                    (let ((_phi9265_ _e92369262_))
                      (_K92339249_ _phi9265_ _key9260_ _out9255_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E92329242_))))))))
                                 (let ((_fold-e9222_
                                        (lambda (_in9224_ _r9225_)
                                          (let ((_out9227_
                                                 (_import->export9221_
                                                  _in9224_)))
                                            (if _out9227_
                                                (cons _out9227_ _r9225_)
                                                _r9225_)))))
                                   (cons (##structure
                                          gx#export-set::t
                                          _src9216_
                                          _current-phi9220_
                                          (foldl1 _fold-e9222_
                                                  '()
                                                  (##structure-ref
                                                   _current-ctx9219_
                                                   '8
                                                   gx#module-context::t
                                                   '#f)))
                                         _r9217_))))))))
                    (let ((_export!9196_
                           (lambda (_rbody9206_)
                             (let ((_current-ctx9208_
                                    (gx#current-expander-context)))
                               (let ((_fold-e9209_
                                      (lambda (_out9213_ _r9214_)
                                        (if (##structure-direct-instance-of?
                                             _out9213_
                                             'gx#module-export::t)
                                            (cons _out9213_ _r9214_)
                                            (if (##structure-direct-instance-of?
                                                 _out9213_
                                                 'gx#export-set::t)
                                                (foldl1 cons
                                                        _r9214_
                                                        (##structure-ref
                                                         _out9213_
                                                         '3
                                                         gx#export-set::t
                                                         '#f))
                                                _r9214_)))))
                                 (let ((_body9211_ (reverse _rbody9206_)))
                                   (begin
                                     (##structure-set!
                                      _current-ctx9208_
                                      (foldl1 _fold-e9209_
                                              (##structure-ref
                                               _current-ctx9208_
                                               '9
                                               gx#module-context::t
                                               '#f)
                                              _body9211_)
                                      '9
                                      gx#module-context::t
                                      '#f)
                                     _body9211_)))))))
                      (let ((_expanded-export?9197_
                             (lambda (_e9201_)
                               (let ((_$e9203_
                                      (##structure-direct-instance-of?
                                       _e9201_
                                       'gx#module-export::t)))
                                 (if _$e9203_
                                     _$e9203_
                                     (##structure-direct-instance-of?
                                      _e9201_
                                      'gx#export-set::t))))))
                        (let ((_expand19194_
                               (lambda (_hd9267_ _K9268_ _rest9269_ _r9270_)
                                 (let ((_e92719303_ _hd9267_))
                                   (let ((_E92989307_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; illegal export"
                                             _stx9190_
                                             _hd9267_))))
                                     (let ((_E92889386_
                                            (lambda ()
                                              (if (gx#stx-pair? _e92719303_)
                                                  (let ((_e92999311_
                                                         (gx#syntax-e
                                                          _e92719303_)))
                                                    (let ((_hd93009314_
                                                           (##car _e92999311_))
                                                          (_tl93019316_
                                                           (##cdr _e92999311_)))
                                                      (if (eq? (gx#stx-e
                                                                _hd93009314_)
                                                               'import:)
                                                          (let ((_in9319_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl93019316_))
                    (if (gx#stx-list? _in9319_)
                        ((letrec ((_lp9321_
                                   (lambda (_in-rest9323_ _r9324_)
                                     (let ((_e93259332_ _in-rest9323_))
                                       (let ((_E93279336_
                                              (lambda ()
                                                (_K9268_ _rest9269_ _r9324_))))
                                         (let ((_E93269382_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _e93259332_)
                                                      (let ((_e93289340_
                                                             (gx#syntax-e
                                                              _e93259332_)))
                                                        (let ((_hd93299343_
                                                               (##car _e93289340_))
                                                              (_tl93309345_
                                                               (##cdr _e93289340_)))
                                                          (let ((_hd9348_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd93299343_))
                    (let ((_in-rest9350_ _tl93309345_))
                      (if '#t
                          (let ((_src9380_
                                 (if (gx#core-bound-module? _hd9348_)
                                     (gx#syntax-local-e__0 _hd9348_)
                                     (if (gx#core-library-module-path?
                                          _hd9348_)
                                         (gx#import-module__0
                                          (gx#core-resolve-library-module-path
                                           _hd9348_))
                                         (if (gx#stx-string? _hd9348_)
                                             (gx#import-module__0
                                              (gx#core-resolve-module-path__opt-lambda10967
                                               _hd9348_
                                               (gx#stx-source _stx9190_)))
                                             (let ((_e93519358_ _hd9348_))
                                               (let ((_E93539362_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; illegal re-export"
                                                         _stx9190_
                                                         _hd9348_))))
                                                 (let ((_E93529376_
                                                        (lambda ()
                                                          (if (gx#stx-pair?
                                                               _e93519358_)
                                                              (let ((_e93549366_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _e93519358_)))
                        (let ((_hd93559369_ (##car _e93549366_))
                              (_tl93569371_ (##cdr _e93549366_)))
                          (if (eq? (gx#stx-e _hd93559369_) 'in:)
                              (let ((_spath9374_ _tl93569371_))
                                (if '#t
                                    (gx#core-import-nested-module
                                     _spath9374_
                                     _stx9190_)
                                    (_E93539362_)))
                              (_E93539362_))))
                      (_E93539362_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (_E93529376_))))))))))
                            (_lp9321_
                             _in-rest9350_
                             (_export-imports9195_ _src9380_ _r9324_)))
                          (_E93279336_))))))
              (_E93279336_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let () (_E93269382_))))))))
                           _lp9321_)
                         _in9319_
                         _r9270_)
                        (_E92989307_)))
                  (_E92989307_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E92989307_)))))
                                       (let ((_E92759425_
                                              (lambda ()
                                                (if (gx#stx-pair? _e92719303_)
                                                    (let ((_e92899390_
                                                           (gx#syntax-e
                                                            _e92719303_)))
                                                      (let ((_hd92909393_
                                                             (##car _e92899390_))
                                                            (_tl92919395_
                                                             (##cdr _e92899390_)))
                                                        (if (eq? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd92909393_)
                         'rename:)
                    (if (gx#stx-pair? _tl92919395_)
                        (let ((_e92929398_ (gx#syntax-e _tl92919395_)))
                          (let ((_hd92939401_ (##car _e92929398_))
                                (_tl92949403_ (##cdr _e92929398_)))
                            (let ((_id9406_ _hd92939401_))
                              (if (gx#stx-pair? _tl92949403_)
                                  (let ((_e92959408_
                                         (gx#syntax-e _tl92949403_)))
                                    (let ((_hd92969411_ (##car _e92959408_))
                                          (_tl92979413_ (##cdr _e92959408_)))
                                      (let ((_name9416_ _hd92969411_))
                                        (if (gx#stx-null? _tl92979413_)
                                            (if '#t
                                                (let ((_phi9418_
                                                       (gx#current-export-expander-phi)))
                                                  (let ((_$e9420_
                                                         (gx#core-resolve-identifier__1
                                                          _id9406_
                                                          _phi9418_)))
                                                    (if _$e9420_
                                                        ((lambda (_bind9423_)
                                                           (_K9268_ _rest9269_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (_make-export__opt-lambda9552__1149711498_
                                   _bind9423_
                                   _phi9418_
                                   (gx#current-expander-context)
                                   _name9416_)
                                  _r9270_)))
                 _$e9420_)
                (gx#raise-syntax-error
                 '#f
                 '"Reference to unbound identifier"
                 _stx9190_
                 _hd9267_
                 _id9406_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E92889386_))
                                            (_E92889386_)))))
                                  (_E92889386_)))))
                        (_E92889386_))
                    (_E92889386_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E92889386_)))))
                                         (let ((_E92749474_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _e92719303_)
                                                      (let ((_e92769429_
                                                             (gx#syntax-e
                                                              _e92719303_)))
                                                        (let ((_hd92779432_
                                                               (##car _e92769429_))
                                                              (_tl92789434_
                                                               (##cdr _e92769429_)))
                                                          (if (eq? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd92779432_)
                           'spec:)
                      (if (gx#stx-pair? _tl92789434_)
                          (let ((_e92799437_ (gx#syntax-e _tl92789434_)))
                            (let ((_hd92809440_ (##car _e92799437_))
                                  (_tl92819442_ (##cdr _e92799437_)))
                              (let ((_phi9445_ _hd92809440_))
                                (if (gx#stx-pair? _tl92819442_)
                                    (let ((_e92829447_
                                           (gx#syntax-e _tl92819442_)))
                                      (let ((_hd92839450_ (##car _e92829447_))
                                            (_tl92849452_ (##cdr _e92829447_)))
                                        (let ((_id9455_ _hd92839450_))
                                          (if (gx#stx-pair? _tl92849452_)
                                              (let ((_e92859457_
                                                     (gx#syntax-e
                                                      _tl92849452_)))
                                                (let ((_hd92869460_
                                                       (##car _e92859457_))
                                                      (_tl92879462_
                                                       (##cdr _e92859457_)))
                                                  (let ((_name9465_
                                                         _hd92869460_))
                                                    (if (gx#stx-null?
                                                         _tl92879462_)
                                                        (if (if (gx#stx-fixnum?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _phi9445_)
                        (if (gx#identifier? _id9455_)
                            (gx#identifier? _name9465_)
                            '#f)
                        '#f)
                    (let ((_phi9467_ (gx#stx-e _phi9445_)))
                      (let ((_$e9469_
                             (gx#core-resolve-identifier__1
                              _id9455_
                              _phi9467_)))
                        (if _$e9469_
                            ((lambda (_bind9472_)
                               (_K9268_ _rest9269_
                                        (cons (_make-export__opt-lambda9552__1149711498_
                                               _bind9472_
                                               _phi9467_
                                               (gx#current-expander-context)
                                               _name9465_)
                                              _r9270_)))
                             _$e9469_)
                            (gx#raise-syntax-error
                             '#f
                             '"Reference to unbound identifier"
                             _stx9190_
                             _hd9267_
                             _id9455_))))
                    (_E92759425_))
                (_E92759425_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E92759425_)))))
                                    (_E92759425_)))))
                          (_E92759425_))
                      (_E92759425_))))
              (_E92759425_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_E92739485_
                                                  (lambda ()
                                                    (let ((_id9478_
                                                           _e92719303_))
                                                      (if (gx#identifier?
                                                           _id9478_)
                                                          (let ((_$e9480_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-resolve-identifier__1
                          _id9478_
                          (gx#current-export-expander-phi))))
                    (if _$e9480_
                        ((lambda (_bind9483_)
                           (_K9268_ _rest9269_
                                    (cons (_make-export__0__1149911502_
                                           _bind9483_)
                                          _r9270_)))
                         _$e9480_)
                        (gx#raise-syntax-error
                         '#f
                         '"Reference to unbound identifier"
                         _stx9190_
                         _hd9267_)))
                  (_E92749474_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_E92729549_
                                                    (lambda ()
                                                      (if (eq? (gx#stx-e
                                                                _e92719303_)
                                                               '#t)
                                                          (if '#t
                                                              (let ((_current-ctx9489_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#current-expander-context)))
                        (let ((_current-phi9491_
                               (gx#current-export-expander-phi)))
                          (let ((_phi-ctx9493_
                                 (gx#core-context-shift
                                  _current-ctx9489_
                                  _current-phi9491_)))
                            (let ((_phi-bind9495_
                                   (table->list
                                    (##structure-ref
                                     _phi-ctx9493_
                                     '2
                                     gx#expander-context::t
                                     '#f))))
                              (let ()
                                ((letrec ((_lp9498_
                                           (lambda (_bind-rest9500_ _set9501_)
                                             (let ((_bind-rest95029512_
                                                    _bind-rest9500_))
                                               (let ((_E95059516_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _bind-rest95029512_))))
                                                 (let ((_else95049520_
                                                        (lambda ()
                                                          (_K9268_ _rest9269_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (##structure
                                  gx#export-set::t
                                  '#f
                                  _current-phi9491_
                                  _set9501_)
                                 _r9270_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_K95069530_
                                                          (lambda (_bind-rest9523_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _bind9524_
                           _key9525_)
                    (if (let ((_$e9527_
                               (##structure-direct-instance-of?
                                _bind9524_
                                'gx#import-binding::t)))
                          (if _$e9527_
                              _$e9527_
                              (gx#private-feature-binding? _bind9524_)))
                        (_lp9498_ _bind-rest9523_ _set9501_)
                        (_lp9498_
                         _bind-rest9523_
                         (cons (_make-export__2__1150111504_
                                _bind9524_
                                _current-phi9491_
                                _current-ctx9489_)
                               _set9501_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##pair? _bind-rest95029512_)
                                                         (let ((_hd95079533_
                                                                (##car _bind-rest95029512_))
                                                               (_tl95089535_
                                                                (##cdr _bind-rest95029512_)))
                                                           (if (##pair? _hd95079533_)
                                                               (let ((_hd95099538_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##car _hd95079533_))
                             (_tl95109540_ (##cdr _hd95079533_)))
                         (let ((_key9543_ _hd95099538_))
                           (let ((_bind9545_ _tl95109540_))
                             (let ((_bind-rest9547_ _tl95089535_))
                               (_K95069530_
                                _bind-rest9547_
                                _bind9545_
                                _key9543_)))))
                       (_else95049520_)))
                 (_else95049520_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _lp9498_)
                                 _phi-bind9495_
                                 '()))))))
                      (_E92739485_))
                  (_E92739485_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let () (_E92729549_))))))))))))
                          (let ((_rbody9199_
                                 (gx#core-expand-import/export
                                  _stx9190_
                                  _expanded-export?9197_
                                  'apply-export-expander
                                  gx#current-export-expander-phi
                                  _expand19194_)))
                            (if _internal-expand?9191_
                                (reverse _rbody9199_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#export
                                  (_export!9196_ _rbody9199_))
                                 (gx#stx-source _stx9190_)))))))))))))))
    (begin
      (define gx#core-expand-export%__0
        (lambda (_stx9599_)
          (let ((_internal-expand?9601_ '#f))
            (gx#core-expand-export%__opt-lambda9188
             _stx9599_
             _internal-expand?9601_))))
      (define gx#core-expand-export%
        (lambda _g11533_
          (let ((_g11532_ (length _g11533_)))
            (cond ((fx= _g11532_ 1) (apply gx#core-expand-export%__0 _g11533_))
                  ((fx= _g11532_ 2)
                   (apply gx#core-expand-export%__opt-lambda9188 _g11533_))
                  (else (error "No clause matching arguments" _g11533_))))))))
  (define gx#core-expand-export-source
    (lambda (_hd9187_)
      (gx#core-expand-export%__opt-lambda9188
       (cons 'export-macro% (cons _hd9187_ '()))
       '#t)))
  (define gx#core-expand-provide%
    (lambda (_stx9157_)
      (let ((_e91589165_ _stx9157_))
        (let ((_E91609169_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e91589165_))))
          (let ((_E91599183_
                 (lambda ()
                   (if (gx#stx-pair? _e91589165_)
                       (let ((_e91619173_ (gx#syntax-e _e91589165_)))
                         (let ((_hd91629176_ (##car _e91619173_))
                               (_tl91639178_ (##cdr _e91619173_)))
                           (let ((_body9181_ _tl91639178_))
                             (if (gx#identifier-list? _body9181_)
                                 (begin
                                   (gx#stx-for-each1
                                    gx#core-bind-feature!
                                    _body9181_)
                                   (gx#core-quote-syntax__1
                                    (gx#core-cons
                                     '%#provide
                                     (gx#stx-map1
                                      gx#core-quote-syntax
                                      _body9181_))
                                    (gx#stx-source _stx9157_)))
                                 (_E91609169_)))))
                       (_E91609169_)))))
            (let () (_E91599183_)))))))
  (begin
    (define gx#core-bind-feature!__opt-lambda9121
      (lambda (_id9123_ _private?9124_ _phi9125_ _ctx9126_)
        (gx#core-bind-syntax!__opt-lambda6217
         _id9123_
         ((if _private?9124_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id9123_))
         _private?9124_
         _phi9125_
         _ctx9126_)))
    (begin
      (define gx#core-bind-feature!__0
        (lambda (_id9131_)
          (let ((_private?9133_ '#f))
            (let ((_phi9135_ (gx#current-expander-phi)))
              (let ((_ctx9137_ (gx#current-expander-context)))
                (gx#core-bind-feature!__opt-lambda9121
                 _id9131_
                 _private?9133_
                 _phi9135_
                 _ctx9137_))))))
      (define gx#core-bind-feature!__1
        (lambda (_id9139_ _private?9140_)
          (let ((_phi9142_ (gx#current-expander-phi)))
            (let ((_ctx9144_ (gx#current-expander-context)))
              (gx#core-bind-feature!__opt-lambda9121
               _id9139_
               _private?9140_
               _phi9142_
               _ctx9144_)))))
      (define gx#core-bind-feature!__2
        (lambda (_id9146_ _private?9147_ _phi9148_)
          (let ((_ctx9150_ (gx#current-expander-context)))
            (gx#core-bind-feature!__opt-lambda9121
             _id9146_
             _private?9147_
             _phi9148_
             _ctx9150_))))
      (define gx#core-bind-feature!
        (lambda _g11535_
          (let ((_g11534_ (length _g11535_)))
            (cond ((fx= _g11534_ 1) (apply gx#core-bind-feature!__0 _g11535_))
                  ((fx= _g11534_ 2) (apply gx#core-bind-feature!__1 _g11535_))
                  ((fx= _g11534_ 3) (apply gx#core-bind-feature!__2 _g11535_))
                  ((fx= _g11534_ 4)
                   (apply gx#core-bind-feature!__opt-lambda9121 _g11535_))
                  (else (error "No clause matching arguments" _g11535_)))))))))
