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
    (lambda _$args11492_
      (apply make-struct-instance gx#module-import::t _$args11492_)))
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
    (lambda _$args11489_
      (apply make-struct-instance gx#module-export::t _$args11489_)))
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
    (lambda _$args11486_
      (apply make-struct-instance gx#import-set::t _$args11486_)))
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
    (lambda _$args11483_
      (apply make-struct-instance gx#export-set::t _$args11483_)))
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
    (lambda _$args11480_
      (apply make-struct-instance gx#import-expander::t _$args11480_)))
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
    (lambda _$args11477_
      (apply make-struct-instance gx#export-expander::t _$args11477_)))
  (define gx#current-import-expander-phi (make-parameter '#f))
  (define gx#current-export-expander-phi (make-parameter '#f))
  (define gx#current-module-reader-path (make-parameter '#f))
  (define gx#current-module-reader-args (make-parameter '#f))
  (define gx#module-context:::init!
    (lambda (_self11471_ _id11472_ _super11473_ _ns11474_ _path11475_)
      (direct-struct-instance-init!
       _self11471_
       _id11472_
       (make-hash-table-eq)
       _super11473_
       '#f
       '#f
       _ns11474_
       _path11475_
       '()
       '()
       '#f
       '#f)))
  (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
  (begin
    (define gx#prelude-context:::init!__opt-lambda11435
      (lambda (_self11437_ _ctx11438_ _root11439_)
        (let ((_super11447_
               (let ((_$e11441_ _root11439_))
                 (if _$e11441_
                     _$e11441_
                     (let ((_$e11444_ (gx#core-context-root__0)))
                       (if _$e11444_
                           _$e11444_
                           (make-struct-instance gx#root-context::t)))))))
          (if _ctx11438_
              (let ((_id11450_
                     (##structure-ref
                      _ctx11438_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path11451_
                     (##structure-ref _ctx11438_ '7 gx#module-context::t '#f))
                    (_in11452_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx11438_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e11453_
                     (make-promise (lambda () (gx#eval-module _ctx11438_)))))
                (begin
                  (direct-struct-instance-init!
                   _self11437_
                   _id11450_
                   (make-hash-table-eq)
                   _super11447_
                   '#f
                   '#f
                   _path11451_
                   _in11452_
                   _e11453_)
                  (for-each
                   (lambda (_g1145411456_)
                     (gx#core-bind-weak-import!__opt-lambda10789
                      _g1145411456_
                      _self11437_))
                   _in11452_)))
              (direct-struct-instance-init!
               _self11437_
               '#f
               (make-hash-table-eq)
               _super11447_
               '#f
               '#f
               '#f
               '()
               '#f)))))
    (begin
      (define gx#prelude-context:::init!__0
        (lambda (_self11462_ _ctx11463_)
          (let ((_root11465_ '#f))
            (gx#prelude-context:::init!__opt-lambda11435
             _self11462_
             _ctx11463_
             _root11465_))))
      (define gx#prelude-context:::init!
        (lambda _g11508_
          (let ((_g11507_ (length _g11508_)))
            (cond ((fx= _g11507_ 2)
                   (apply gx#prelude-context:::init!__0 _g11508_))
                  ((fx= _g11507_ 3)
                   (apply gx#prelude-context:::init!__opt-lambda11435
                          _g11508_))
                  (else (error "No clause matching arguments" _g11508_))))))))
  (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
  (define gx#import-expander:::init!
    (lambda (_self11433_ _e11434_)
      (direct-struct-instance-init!
       _self11433_
       _e11434_
       (gx#current-expander-context)
       (fx- (gx#current-expander-phi) '1))))
  (bind-method! gx#import-expander::t ':init! gx#import-expander:::init! '#f)
  (define gx#export-expander:::init!
    (lambda (_self11430_ _e11431_)
      (direct-struct-instance-init!
       _self11430_
       _e11431_
       (gx#current-expander-context)
       (fx- (gx#current-expander-phi) '1))))
  (bind-method! gx#export-expander::t ':init! gx#export-expander:::init! '#f)
  (define gx#import-expander::apply-import-expander
    (lambda (_g1142211425_ _g1142311427_)
      (gx#core-apply-user-expander__opt-lambda4785
       _g1142211425_
       _g1142311427_
       'apply-import-expander)))
  (bind-method!
   gx#import-expander::t
   'apply-import-expander
   gx#import-expander::apply-import-expander
   '#f)
  (define gx#export-expander::apply-export-expander
    (lambda (_g1141511418_ _g1141611420_)
      (gx#core-apply-user-expander__opt-lambda4785
       _g1141511418_
       _g1141611420_
       'apply-export-expander)))
  (bind-method!
   gx#export-expander::t
   'apply-export-expander
   gx#export-expander::apply-export-expander
   '#f)
  (define gx#module-source-path
    (lambda (_ctx11409_)
      (let ((_path11411_
             (##structure-ref _ctx11409_ '7 gx#module-context::t '#f)))
        (let ((_path11413_
               (if (pair? _path11411_) (last _path11411_) _path11411_)))
          (let () (if (string? _path11413_) _path11413_ '#f))))))
  (begin
    (define gx#import-module__opt-lambda11383
      (lambda (_path11385_ _reload?11386_ _eval?11387_)
        (let ((_ctx11389_
               ((gx#current-expander-module-import)
                _path11385_
                _reload?11386_)))
          (begin
            (if (if _ctx11389_ _eval?11387_ '#f)
                (gx#eval-module _ctx11389_)
                '#!void)
            _ctx11389_))))
    (begin
      (define gx#import-module__0
        (lambda (_path11394_)
          (let ((_reload?11396_ '#f))
            (let ((_eval?11398_ '#f))
              (gx#import-module__opt-lambda11383
               _path11394_
               _reload?11396_
               _eval?11398_)))))
      (define gx#import-module__1
        (lambda (_path11400_ _reload?11401_)
          (let ((_eval?11403_ '#f))
            (gx#import-module__opt-lambda11383
             _path11400_
             _reload?11401_
             _eval?11403_))))
      (define gx#import-module
        (lambda _g11510_
          (let ((_g11509_ (length _g11510_)))
            (cond ((fx= _g11509_ 1) (apply gx#import-module__0 _g11510_))
                  ((fx= _g11509_ 2) (apply gx#import-module__1 _g11510_))
                  ((fx= _g11509_ 3)
                   (apply gx#import-module__opt-lambda11383 _g11510_))
                  (else (error "No clause matching arguments" _g11510_))))))))
  (define gx#eval-module
    (lambda (_mod11382_) ((gx#current-expander-module-eval) _mod11382_)))
  (define gx#core-eval-module
    (lambda (_obj11367_)
      (let ((_force-e11369_
             (lambda (_getf11378_ _e11379_)
               (call-with-parameters
                (lambda () (force (_getf11378_ _e11379_)))
                gx#current-expander-context
                _e11379_
                gx#current-expander-phi
                '0))))
        ((letrec ((_recur11371_
                   (lambda (_e11373_)
                     (if (##structure-instance-of?
                          _e11373_
                          'gx#module-context::t)
                         (begin
                           (let ((_$e11375_
                                  (gx#core-context-prelude__opt-lambda11348
                                   _e11373_)))
                             (if _$e11375_ (_recur11371_ _$e11375_) '#!void))
                           (_force-e11369_ gx#module-context-e _e11373_))
                         (if (##structure-instance-of?
                              _e11373_
                              'gx#prelude-context::t)
                             (_force-e11369_ gx#prelude-context-e _e11373_)
                             (if (gx#stx-string? _e11373_)
                                 (_recur11371_
                                  (gx#import-module__0
                                   (gx#core-resolve-module-path__0 _e11373_)))
                                 (if (gx#core-library-module-path? _e11373_)
                                     (_recur11371_
                                      (gx#import-module__0
                                       (gx#core-resolve-library-module-path
                                        _e11373_)))
                                     (error '"Cannot eval module"
                                            _obj11367_))))))))
           _recur11371_)
         _obj11367_))))
  (begin
    (define gx#core-context-prelude__opt-lambda11348
      (lambda (_ctx11350_)
        ((letrec ((_lp11352_
                   (lambda (_e11354_)
                     (if (let ((_$e11356_
                                (##structure-instance-of?
                                 _e11354_
                                 'gx#module-context::t)))
                           (if _$e11356_
                               _$e11356_
                               (##structure-instance-of?
                                _e11354_
                                'gx#local-context::t)))
                         (_lp11352_
                          (##structure-ref _e11354_ '3 gx#phi-context::t '#f))
                         (if (##structure-instance-of?
                              _e11354_
                              'gx#prelude-context::t)
                             _e11354_
                             '#f)))))
           _lp11352_)
         _ctx11350_)))
    (begin
      (define gx#core-context-prelude__0
        (lambda ()
          (let ((_ctx11363_ (gx#current-expander-context)))
            (gx#core-context-prelude__opt-lambda11348 _ctx11363_))))
      (define gx#core-context-prelude
        (lambda _g11512_
          (let ((_g11511_ (length _g11512_)))
            (cond ((fx= _g11511_ 0)
                   (apply gx#core-context-prelude__0 _g11512_))
                  ((fx= _g11511_ 1)
                   (apply gx#core-context-prelude__opt-lambda11348 _g11512_))
                  (else (error "No clause matching arguments" _g11512_))))))))
  (define gx#core-module->prelude-context
    (lambda (_ctx11340_)
      (let ((_ht11342_ (gx#current-expander-module-registry)))
        (let ((_$e11344_ (table-ref _ht11342_ _ctx11340_ '#f)))
          (if _$e11344_
              (values _$e11344_)
              (let ((_pre11347_
                     (let ((__obj11503 (make-object gx#prelude-context::t '8)))
                       (begin
                         (gx#prelude-context:::init!__0 __obj11503 _ctx11340_)
                         __obj11503))))
                (begin
                  (table-set! _ht11342_ _ctx11340_ _pre11347_)
                  _pre11347_)))))))
  (begin
    (define gx#core-import-module__opt-lambda11292
      (lambda (_rpath11294_ _reload?11295_)
        (let ((_import-source11297_
               (lambda (_path11309_)
                 (begin
                   (if (member _path11309_ (gx#current-expander-path))
                       (error '"Cyclic expansion" _path11309_)
                       '#!void)
                   (call-with-parameters
                    (lambda ()
                      (let ((_g11513_ (gx#core-read-module _path11309_)))
                        (begin
                          (let ((_g11514_ (values-count _g11513_)))
                            (if (not (fx= _g11514_ 4))
                                (error "Context expects 4 values" _g11514_)))
                          (let ((_pre11312_ (values-ref _g11513_ 0))
                                (_id11313_ (values-ref _g11513_ 1))
                                (_ns11314_ (values-ref _g11513_ 2))
                                (_body11315_ (values-ref _g11513_ 3)))
                            (let ((_prelude11320_
                                   (if (##structure-instance-of?
                                        _pre11312_
                                        'gx#prelude-context::t)
                                       _pre11312_
                                       (if (##structure-instance-of?
                                            _pre11312_
                                            'gx#module-context::t)
                                           (gx#core-module->prelude-context
                                            _pre11312_)
                                           (if (string? _pre11312_)
                                               (gx#core-module->prelude-context
                                                (gx#core-import-module__0
                                                 _pre11312_))
                                               (if (not _pre11312_)
                                                   (let ((_$e11317_
                                                          (gx#current-expander-module-prelude)))
                                                     (if _$e11317_
                                                         _$e11317_
                                                         (let ((__obj11504
                                                                (make-object
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#prelude-context::t
                         '8)))
                   (begin
                     (gx#prelude-context:::init!__0 __obj11504 '#f)
                     __obj11504))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (error '"Cannot import module; unknown prelude"
                                                          _rpath11294_
                                                          _pre11312_)))))))
                              (let ((_ctx11322_
                                     (let ((__obj11505
                                            (make-object
                                             gx#module-context::t
                                             '11)))
                                       (begin
                                         (gx#module-context:::init!
                                          __obj11505
                                          _id11313_
                                          _prelude11320_
                                          _ns11314_
                                          _path11309_)
                                         __obj11505))))
                                (let ((_body11324_
                                       (gx#core-expand-module-begin
                                        _body11315_
                                        _ctx11322_)))
                                  (let ((_body11326_
                                         (gx#core-quote-syntax__opt-lambda4145
                                          (gx#core-cons '%#begin _body11324_)
                                          _path11309_
                                          _ctx11322_
                                          '())))
                                    (let ()
                                      (begin
                                        (##structure-set!
                                         _ctx11322_
                                         (make-promise
                                          (lambda ()
                                            (gx#eval-syntax* _body11326_)))
                                         '10
                                         gx#module-context::t
                                         '#f)
                                        (##structure-set!
                                         _ctx11322_
                                         _body11326_
                                         '11
                                         gx#module-context::t
                                         '#f)
                                        (table-set!
                                         (gx#current-expander-module-registry)
                                         _path11309_
                                         _ctx11322_)
                                        (table-set!
                                         (gx#current-expander-module-registry)
                                         _id11313_
                                         _ctx11322_)
                                        _ctx11322_))))))))))
                    gx#current-expander-context
                    (gx#core-context-root__0)
                    gx#current-expander-marks
                    '()
                    gx#current-expander-phi
                    '0
                    gx#current-expander-path
                    (cons _path11309_ (gx#current-expander-path))
                    gx#current-import-expander-phi
                    '#f
                    gx#current-export-expander-phi
                    '#f)))))
          (let ((_$e11299_
                 (if (not _reload?11295_)
                     (table-ref
                      (gx#current-expander-module-registry)
                      _rpath11294_
                      '#f)
                     '#f)))
            (if _$e11299_
                (values _$e11299_)
                (if (gx#core-library-module-path? _rpath11294_)
                    (let ((_ctx11302_
                           (gx#core-import-module__opt-lambda11292
                            (gx#core-resolve-library-module-path _rpath11294_)
                            _reload?11295_)))
                      (begin
                        (table-set!
                         (gx#current-expander-module-registry)
                         _rpath11294_
                         _ctx11302_)
                        _ctx11302_))
                    (let ((_npath11304_ (path-normalize _rpath11294_)))
                      (let ((_$e11306_
                             (if (not _reload?11295_)
                                 (table-ref
                                  (gx#current-expander-module-registry)
                                  _npath11304_
                                  '#f)
                                 '#f)))
                        (if _$e11306_
                            (values _$e11306_)
                            (_import-source11297_ _npath11304_))))))))))
    (begin
      (define gx#core-import-module__0
        (lambda (_rpath11333_)
          (let ((_reload?11335_ '#f))
            (gx#core-import-module__opt-lambda11292
             _rpath11333_
             _reload?11335_))))
      (define gx#core-import-module
        (lambda _g11516_
          (let ((_g11515_ (length _g11516_)))
            (cond ((fx= _g11515_ 1) (apply gx#core-import-module__0 _g11516_))
                  ((fx= _g11515_ 2)
                   (apply gx#core-import-module__opt-lambda11292 _g11516_))
                  (else (error "No clause matching arguments" _g11516_))))))))
  (define gx#core-read-module
    (lambda (_path11288_)
      (with-catch
       (lambda (_exn11290_)
         (if (if (datum-parsing-exception? _exn11290_)
                 (eq? (datum-parsing-exception-filepos _exn11290_) '0)
                 '#f)
             (gx#core-read-module/lang _path11288_)
             (raise _exn11290_)))
       (lambda () (gx#core-read-module/sexp _path11288_)))))
  (define gx#core-read-module/sexp
    (lambda (_path11152_)
      ((letrec ((_lp11154_
                 (lambda (_body11156_ _pre11157_ _ns11158_ _pkg11159_)
                   (let ((_e1116011184_ _body11156_))
                     (let ((_E1117611202_
                            (lambda ()
                              (let ((_prelude11188_
                                     (if (gx#core-bound-module-prelude?
                                          _pre11157_)
                                         (gx#syntax-local-e__0 _pre11157_)
                                         (if (gx#core-library-module-path?
                                              _pre11157_)
                                             (gx#core-resolve-library-module-path
                                              _pre11157_)
                                             (if (gx#stx-string? _pre11157_)
                                                 (gx#core-resolve-module-path__opt-lambda10965
                                                  _pre11157_
                                                  _path11152_)
                                                 (gx#stx-e _pre11157_))))))
                                (let ((_path-id11190_
                                       (gx#core-module-path->namespace
                                        _path11152_)))
                                  (let ((_pkg-id11192_
                                         (if _pkg11159_
                                             (string-append
                                              _pkg11159_
                                              '"/"
                                              _path-id11190_)
                                             _path-id11190_)))
                                    (let ((_module-id11194_
                                           (string->symbol _pkg-id11192_)))
                                      (let ((_module-ns11199_
                                             (let ((_$e11196_ _ns11158_))
                                               (if _$e11196_
                                                   _$e11196_
                                                   _pkg-id11192_))))
                                        (let ()
                                          (values _prelude11188_
                                                  _module-id11194_
                                                  _module-ns11199_
                                                  _body11156_))))))))))
                       (let ((_E1116911231_
                              (lambda ()
                                (if (gx#stx-pair? _e1116011184_)
                                    (let ((_e1117711206_
                                           (gx#syntax-e _e1116011184_)))
                                      (let ((_hd1117811209_
                                             (##car _e1117711206_))
                                            (_tl1117911211_
                                             (##cdr _e1117711206_)))
                                        (if (eq? (gx#stx-e _hd1117811209_)
                                                 'package:)
                                            (if (gx#stx-pair? _tl1117911211_)
                                                (let ((_e1118011214_
                                                       (gx#syntax-e
                                                        _tl1117911211_)))
                                                  (let ((_hd1118111217_
                                                         (##car _e1118011214_))
                                                        (_tl1118211219_
                                                         (##cdr _e1118011214_)))
                                                    (let ((_pkg11222_
                                                           _hd1118111217_))
                                                      (let ((_rest11224_
                                                             _tl1118211219_))
                                                        (if '#t
                                                            (let ((_pkg11229_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if (gx#identifier? _pkg11222_)
                               (symbol->string (gx#stx-e _pkg11222_))
                               (if (let ((_$e11226_
                                          (gx#stx-string? _pkg11222_)))
                                     (if _$e11226_
                                         _$e11226_
                                         (gx#stx-false? _pkg11222_)))
                                   (gx#stx-e _pkg11222_)
                                   (gx#raise-syntax-error
                                    'import
                                    '"Bad syntax; Illegal package name"
                                    _pkg11222_)))))
                      (_lp11154_ _rest11224_ _pre11157_ _ns11158_ _pkg11229_))
                    (_E1117611202_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1117611202_))
                                            (_E1117611202_))))
                                    (_E1117611202_)))))
                         (let ((_E1116211260_
                                (lambda ()
                                  (if (gx#stx-pair? _e1116011184_)
                                      (let ((_e1117011235_
                                             (gx#syntax-e _e1116011184_)))
                                        (let ((_hd1117111238_
                                               (##car _e1117011235_))
                                              (_tl1117211240_
                                               (##cdr _e1117011235_)))
                                          (if (eq? (gx#stx-e _hd1117111238_)
                                                   'namespace:)
                                              (if (gx#stx-pair? _tl1117211240_)
                                                  (let ((_e1117311243_
                                                         (gx#syntax-e
                                                          _tl1117211240_)))
                                                    (let ((_hd1117411246_
                                                           (##car _e1117311243_))
                                                          (_tl1117511248_
                                                           (##cdr _e1117311243_)))
                                                      (let ((_ns11251_
                                                             _hd1117411246_))
                                                        (let ((_rest11253_
                                                               _tl1117511248_))
                                                          (if '#t
                                                              (let ((_ns11258_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (gx#identifier? _ns11251_)
                                 (symbol->string (gx#stx-e _ns11251_))
                                 (if (let ((_$e11255_
                                            (gx#stx-string? _ns11251_)))
                                       (if _$e11255_
                                           _$e11255_
                                           (gx#stx-false? _ns11251_)))
                                     (gx#stx-e _ns11251_)
                                     (gx#raise-syntax-error
                                      'import
                                      '"Bad syntax; illegal namespace"
                                      _ns11251_)))))
                        (_lp11154_
                         _rest11253_
                         _pre11157_
                         _ns11258_
                         _pkg11159_))
                      (_E1116911231_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1116911231_))
                                              (_E1116911231_))))
                                      (_E1116911231_)))))
                           (let ((_E1116111284_
                                  (lambda ()
                                    (if (gx#stx-pair? _e1116011184_)
                                        (let ((_e1116311264_
                                               (gx#syntax-e _e1116011184_)))
                                          (let ((_hd1116411267_
                                                 (##car _e1116311264_))
                                                (_tl1116511269_
                                                 (##cdr _e1116311264_)))
                                            (if (eq? (gx#stx-e _hd1116411267_)
                                                     'prelude:)
                                                (if (gx#stx-pair?
                                                     _tl1116511269_)
                                                    (let ((_e1116611272_
                                                           (gx#syntax-e
                                                            _tl1116511269_)))
                                                      (let ((_hd1116711275_
                                                             (##car _e1116611272_))
                                                            (_tl1116811277_
                                                             (##cdr _e1116611272_)))
                                                        (let ((_prelude11280_
                                                               _hd1116711275_))
                                                          (let ((_rest11282_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1116811277_))
                    (if '#t
                        (_lp11154_
                         _rest11282_
                         _prelude11280_
                         _ns11158_
                         _pkg11159_)
                        (_E1116211260_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1116211260_))
                                                (_E1116211260_))))
                                        (_E1116211260_)))))
                             (let () (_E1116111284_))))))))))
         _lp11154_)
       (read-syntax-from-file _path11152_)
       '#f
       '#f
       '#f)))
  (define gx#core-read-module/lang
    (lambda (_path10992_)
      (let ((_read-body10994_
             (lambda (_inp11075_ _pre11076_ _pkg11077_ _ns11078_ _args11079_)
               (let ((_prelude11081_ (gx#import-module__0 _pre11076_)))
                 (let ((_read-module-body11135_
                        (let ((_$e11127_
                               (find (lambda (_e1108211084_)
                                       (let ((_g1108611096_ _e1108211084_))
                                         (let ((_E1108911100_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _g1108611096_))))
                                           (let ((_else1108811104_
                                                  (lambda () '#f)))
                                             (let ((_K1109011108_
                                                    (lambda () '#t)))
                                               (if (##structure-direct-instance-of?
                                                    _g1108611096_
                                                    (##type-id
                                                     gx#module-export::t))
                                                   (let ((_e1109111111_
                                                          (##vector-ref
                                                           _g1108611096_
                                                           '1)))
                                                     (let ((_e1109211114_
                                                            (##vector-ref
                                                             _g1108611096_
                                                             '2)))
                                                       (let ((_e1109311117_
                                                              (##vector-ref
                                                               _g1108611096_
                                                               '3)))
                                                         (if (##eq? _e1109311117_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                     (let ((_e1109411120_ (##vector-ref _g1108611096_ '4)))
                       (if ((lambda (_g1112211124_)
                              (eq? _g1112211124_ 'read-module-body))
                            _e1109411120_)
                           (_K1109011108_)
                           (_else1108811104_)))
                     (_else1108811104_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_else1108811104_)))))))
                                     (##structure-ref
                                      _prelude11081_
                                      '9
                                      gx#module-context::t
                                      '#f))))
                          (if _$e11127_
                              ((lambda (_xport11130_)
                                 (let ((_proc11133_
                                        (with-catch
                                         void
                                         (lambda ()
                                           (gx#eval-syntax__0
                                            (##structure-ref
                                             (gx#core-resolve-module-export
                                              _xport11130_)
                                             '1
                                             gx#binding::t
                                             '#f))))))
                                   (if (procedure? _proc11133_)
                                       _proc11133_
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Illegal #lang prelude; read-module-body is not a procedure"
                                        _path10992_
                                        _pre11076_
                                        _proc11133_))))
                               _$e11127_)
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang prelude; does not export read-module-body for syntax"
                               _path10992_
                               _pre11076_)))))
                   (let ((_path-id11137_
                          (gx#core-module-path->namespace _path10992_)))
                     (let ((_pkg-id11139_
                            (if _pkg11077_
                                (string-append _pkg11077_ '"/" _path-id11137_)
                                _path-id11137_)))
                       (let ((_module-id11141_ (string->symbol _pkg-id11139_)))
                         (let ((_module-ns11146_
                                (let ((_$e11143_ _ns11078_))
                                  (if _$e11143_ _$e11143_ _pkg-id11139_))))
                           (let ((_body11149_
                                  (call-with-parameters
                                   (lambda ()
                                     (_read-module-body11135_ _inp11075_))
                                   gx#current-module-reader-path
                                   _path10992_
                                   gx#current-module-reader-args
                                   _args11079_)))
                             (let ()
                               (values _prelude11081_
                                       _module-id11141_
                                       _module-ns11146_
                                       _body11149_))))))))))))
        (let ((_string-e10995_
               (lambda (_obj11072_ _what11073_)
                 (if (string? _obj11072_)
                     _obj11072_
                     (if (symbol? _obj11072_)
                         (symbol->string _obj11072_)
                         (gx#raise-syntax-error
                          '#f
                          (string-append '"Illegal module " _what11073_)
                          _path10992_
                          _obj11072_))))))
          (let ((_read-lang-args10996_
                 (lambda (_inp11027_ _args11028_)
                   (let ((_args1102911037_ _args11028_))
                     (let ((_E1103211041_
                            (lambda ()
                              (error '"No clause matching" _args1102911037_))))
                       (let ((_else1103111045_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Illegal #lang arguments; missing prelude"
                                 _path10992_))))
                         (let ((_K1103311060_
                                (lambda (_args11048_ _prelude11049_)
                                  (let ((_pkg11051_
                                         (pgetq 'package: _args11048_)))
                                    (let ((_pkg11053_
                                           (if _pkg11051_
                                               (_string-e10995_
                                                _pkg11051_
                                                '"package")
                                               '#f)))
                                      (let ((_ns11055_
                                             (pgetq 'namespace: _args11048_)))
                                        (let ((_ns11057_
                                               (if _ns11055_
                                                   (_string-e10995_
                                                    _ns11055_
                                                    '"namespace")
                                                   '#f)))
                                          (let ()
                                            (_read-body10994_
                                             _inp11027_
                                             _prelude11049_
                                             _pkg11053_
                                             _ns11057_
                                             _args11048_)))))))))
                           (if (##pair? _args1102911037_)
                               (let ((_hd1103411063_ (##car _args1102911037_))
                                     (_tl1103511065_ (##cdr _args1102911037_)))
                                 (let ((_prelude11068_ _hd1103411063_))
                                   (let ((_args11070_ _tl1103511065_))
                                     (_K1103311060_
                                      _args11070_
                                      _prelude11068_))))
                               (_else1103111045_)))))))))
            (let ((_read-lang10997_
                   (lambda (_inp11002_)
                     (let ((_head11004_ (read-line _inp11002_)))
                       (let ((_$e11006_ (string-index _head11004_ '#\space)))
                         (if _$e11006_
                             ((lambda (_ix11009_)
                                (let ((_lang11011_
                                       (substring _head11004_ '0 _ix11009_)))
                                  (if (equal? _lang11011_ '"#lang")
                                      (let ((_rest11013_
                                             (substring
                                              _head11004_
                                              (fx+ _ix11009_ '1)
                                              (string-length _head11004_))))
                                        (let ((_args11024_
                                               (with-catch
                                                (lambda (_g1101411016_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Illegal #lang arguments"
                                                   _path10992_
                                                   _g1101411016_))
                                                (lambda ()
                                                  (call-with-input-string
                                                   _rest11013_
                                                   (lambda (_g1101911021_)
                                                     (read-all
                                                      _g1101911021_
                                                      read)))))))
                                          (let ()
                                            (_read-lang-args10996_
                                             _inp11002_
                                             _args11024_))))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Illegal module syntax"
                                       _path10992_))))
                              _$e11006_)
                             (gx#raise-syntax-error
                              '#f
                              '"Illegal module syntax"
                              _path10992_)))))))
              (let ((_read-e10998_
                     (lambda (_inp11000_)
                       (if (eq? (peek-char _inp11000_) '#\#)
                           (_read-lang10997_ _inp11000_)
                           (gx#raise-syntax-error
                            '#f
                            '"Illegal module syntax"
                            _path10992_)))))
                (call-with-input-file _path10992_ _read-e10998_))))))))
  (define gx#core-module-path->namespace
    (lambda (_path10990_)
      (path-strip-extension (path-strip-directory _path10990_))))
  (define gx#core-module-path->id
    (lambda (_path10988_)
      (string->symbol (gx#core-module-path->namespace _path10988_))))
  (begin
    (define gx#core-resolve-module-path__opt-lambda10965
      (lambda (_stx-path10967_ _rel10968_)
        (let ((_path10970_ (gx#stx-e _stx-path10967_)))
          (let ((_path10972_
                 (if (string-empty? (path-extension _path10970_))
                     (string-append _path10970_ '".ss")
                     _path10970_)))
            (let ()
              (gx#core-resolve-path__opt-lambda4109
               _path10972_
               (let ((_$e10975_ (gx#stx-source _stx-path10967_)))
                 (if _$e10975_ _$e10975_ _rel10968_))))))))
    (begin
      (define gx#core-resolve-module-path__0
        (lambda (_stx-path10981_)
          (let ((_rel10983_ '#f))
            (gx#core-resolve-module-path__opt-lambda10965
             _stx-path10981_
             _rel10983_))))
      (define gx#core-resolve-module-path
        (lambda _g11518_
          (let ((_g11517_ (length _g11518_)))
            (cond ((fx= _g11517_ 1)
                   (apply gx#core-resolve-module-path__0 _g11518_))
                  ((fx= _g11517_ 2)
                   (apply gx#core-resolve-module-path__opt-lambda10965
                          _g11518_))
                  (else (error "No clause matching arguments" _g11518_))))))))
  (define gx#core-resolve-library-module-path
    (lambda (_libpath10907_)
      (let ((_spath10909_ (symbol->string (gx#stx-e _libpath10907_))))
        (let ((_spath10911_
               (substring _spath10909_ '1 (string-length _spath10909_))))
          (let ((_ext10913_ (path-extension _spath10911_)))
            (let ((_ssi10915_
                   (if (string-empty? _ext10913_)
                       (string-append _spath10911_ '".ssi")
                       (string-append
                        (path-strip-extension _spath10911_)
                        '".ssi"))))
              (let ((_src10917_
                     (if (string-empty? _ext10913_)
                         (string-append _spath10911_ '".ss")
                         _spath10911_)))
                (let ()
                  ((letrec ((_lp10920_
                             (lambda (_rest10922_)
                               (let ((_rest1092310932_ _rest10922_))
                                 (let ((_E1092610936_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _rest1092310932_))))
                                   (let ((_try-match1092510944_
                                          (lambda ()
                                            (let ((_K1092710941_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Cannot find library module"
                                                      _libpath10907_))))
                                              (if (##null? _rest1092310932_)
                                                  (_K1092710941_)
                                                  (_E1092610936_))))))
                                     (let ((_K1092810954_
                                            (lambda (_rest10947_ _dir10948_)
                                              (let ((_compiled-path10950_
                                                     (path-expand
                                                      _ssi10915_
                                                      _dir10948_)))
                                                (if (file-exists?
                                                     _compiled-path10950_)
                                                    (path-normalize
                                                     _compiled-path10950_)
                                                    (let ((_src-path10952_
                                                           (path-expand
                                                            _src10917_
                                                            _dir10948_)))
                                                      (if (file-exists?
                                                           _src-path10952_)
                                                          (path-normalize
                                                           _src-path10952_)
                                                          (_lp10920_
                                                           _rest10947_))))))))
                                       (if (##pair? _rest1092310932_)
                                           (let ((_hd1092910957_
                                                  (##car _rest1092310932_))
                                                 (_tl1093010959_
                                                  (##cdr _rest1092310932_)))
                                             (let ((_dir10962_ _hd1092910957_))
                                               (let ((_rest10964_
                                                      _tl1093010959_))
                                                 (_K1092810954_
                                                  _rest10964_
                                                  _dir10962_))))
                                           (_try-match1092510944_)))))))))
                     _lp10920_)
                   (gx#current-expander-module-library-path))))))))))
  (define gx#core-library-module-path?
    (lambda (_stx10905_) (gx#core-special-module-path? _stx10905_ '#\:)))
  (define gx#core-special-module-path?
    (lambda (_stx10900_ _char10901_)
      (if (gx#identifier? _stx10900_)
          (if (interned-symbol? (gx#stx-e _stx10900_))
              (let ((_str10903_ (symbol->string (gx#stx-e _stx10900_))))
                (if (fx> (string-length _str10903_) '1)
                    (eq? (string-ref _str10903_ '0) _char10901_)
                    '#f))
              '#f)
          '#f)))
  (define gx#core-bound-prelude?
    (lambda (_stx10894_)
      (gx#core-bound-identifier?__opt-lambda4199
       _stx10894_
       (lambda (_g1089510897_)
         (gx#expander-binding?__opt-lambda4230
          _g1089510897_
          gx#prelude-context?)))))
  (define gx#core-bound-module?
    (lambda (_stx10888_)
      (gx#core-bound-identifier?__opt-lambda4199
       _stx10888_
       (lambda (_g1088910891_)
         (gx#expander-binding?__opt-lambda4230
          _g1088910891_
          gx#module-context?)))))
  (define gx#core-bound-module-prelude?
    (lambda (_stx10875_)
      (let ((_module-prelude?10877_
             (lambda (_e10883_)
               (let ((_$e10885_
                      (##structure-instance-of?
                       _e10883_
                       'gx#module-context::t)))
                 (if _$e10885_
                     _$e10885_
                     (##structure-instance-of?
                      _e10883_
                      'gx#prelude-context::t))))))
        (gx#core-bound-identifier?__opt-lambda4199
         _stx10875_
         (lambda (_g1087810880_)
           (gx#expander-binding?__opt-lambda4230
            _g1087810880_
            _module-prelude?10877_))))))
  (begin
    (define gx#core-bind-import!__opt-lambda10803
      (lambda (_in10805_ _ctx10806_ _force-weak?10807_)
        (let ((_in1080810817_ _in10805_))
          (let ((_E1081010821_
                 (lambda () (error '"No clause matching" _in1080810817_))))
            (let ((_K1081110834_
                   (lambda (_weak?10824_ _phi10825_ _key10826_ _source10827_)
                     (gx#core-bind!__opt-lambda4469
                      _key10826_
                      (let ((_e10829_
                             (gx#core-resolve-module-export _source10827_)))
                        (##structure
                         gx#import-binding::t
                         (##structure-ref _e10829_ '1 gx#binding::t '#f)
                         _key10826_
                         _phi10825_
                         _e10829_
                         (##structure-ref
                          _source10827_
                          '1
                          gx#module-export::t
                          '#f)
                         (let ((_$e10831_ _force-weak?10807_))
                           (if _$e10831_ _$e10831_ _weak?10824_))))
                      gx#core-context-rebind?
                      _phi10825_
                      _ctx10806_))))
              (if (##structure-direct-instance-of?
                   _in1080810817_
                   (##type-id gx#module-import::t))
                  (let ((_e1081210837_ (##vector-ref _in1080810817_ '1)))
                    (let ((_source10840_ _e1081210837_))
                      (let ((_e1081310842_ (##vector-ref _in1080810817_ '2)))
                        (let ((_key10845_ _e1081310842_))
                          (let ((_e1081410847_
                                 (##vector-ref _in1080810817_ '3)))
                            (let ((_phi10850_ _e1081410847_))
                              (let ((_e1081510852_
                                     (##vector-ref _in1080810817_ '4)))
                                (let ((_weak?10855_ _e1081510852_))
                                  (_K1081110834_
                                   _weak?10855_
                                   _phi10850_
                                   _key10845_
                                   _source10840_)))))))))
                  (_E1081010821_)))))))
    (begin
      (define gx#core-bind-import!__0
        (lambda (_in10860_)
          (let ((_ctx10862_ (gx#current-expander-context)))
            (let ((_force-weak?10864_ '#f))
              (gx#core-bind-import!__opt-lambda10803
               _in10860_
               _ctx10862_
               _force-weak?10864_)))))
      (define gx#core-bind-import!__1
        (lambda (_in10866_ _ctx10867_)
          (let ((_force-weak?10869_ '#f))
            (gx#core-bind-import!__opt-lambda10803
             _in10866_
             _ctx10867_
             _force-weak?10869_))))
      (define gx#core-bind-import!
        (lambda _g11520_
          (let ((_g11519_ (length _g11520_)))
            (cond ((fx= _g11519_ 1) (apply gx#core-bind-import!__0 _g11520_))
                  ((fx= _g11519_ 2) (apply gx#core-bind-import!__1 _g11520_))
                  ((fx= _g11519_ 3)
                   (apply gx#core-bind-import!__opt-lambda10803 _g11520_))
                  (else (error "No clause matching arguments" _g11520_))))))))
  (begin
    (define gx#core-bind-weak-import!__opt-lambda10789
      (lambda (_in10791_ _ctx10792_)
        (gx#core-bind-import!__opt-lambda10803 _in10791_ _ctx10792_ '#t)))
    (begin
      (define gx#core-bind-weak-import!__0
        (lambda (_in10797_)
          (let ((_ctx10799_ (gx#current-expander-context)))
            (gx#core-bind-weak-import!__opt-lambda10789
             _in10797_
             _ctx10799_))))
      (define gx#core-bind-weak-import!
        (lambda _g11522_
          (let ((_g11521_ (length _g11522_)))
            (cond ((fx= _g11521_ 1)
                   (apply gx#core-bind-weak-import!__0 _g11522_))
                  ((fx= _g11521_ 2)
                   (apply gx#core-bind-weak-import!__opt-lambda10789 _g11522_))
                  (else (error "No clause matching arguments" _g11522_))))))))
  (define gx#core-resolve-module-export
    (lambda (_out10682_)
      (let ((_subst10684_
             (lambda (_key10730_)
               (let ((_key1073110739_ _key10730_))
                 (let ((_E1073410743_
                        (lambda ()
                          (error '"No clause matching" _key1073110739_))))
                   (let ((_else1073310747_ (lambda () _key10730_)))
                     (let ((_K1073510778_
                            (lambda (_mark10750_ _id10751_)
                              (let ((_mark1075210758_ _mark10750_))
                                (let ((_E1075410762_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _mark1075210758_))))
                                  (let ((_K1075510770_
                                         (lambda (_subst10765_)
                                           (let ((_$e10767_
                                                  (if _subst10765_
                                                      (table-ref
                                                       _subst10765_
                                                       _id10751_
                                                       '#f)
                                                      '#f)))
                                             (if _$e10767_
                                                 _$e10767_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal key; missing substitution"
                                                  _key10730_))))))
                                    (if (##structure-instance-of?
                                         _mark1075210758_
                                         (##type-id gx#expander-mark::t))
                                        (let ((_e1075610773_
                                               (##vector-ref
                                                _mark1075210758_
                                                '1)))
                                          (let ((_subst10776_ _e1075610773_))
                                            (_K1075510770_ _subst10776_)))
                                        (_E1075410762_))))))))
                       (if (##pair? _key1073110739_)
                           (let ((_hd1073610781_ (##car _key1073110739_))
                                 (_tl1073710783_ (##cdr _key1073110739_)))
                             (let ((_id10786_ _hd1073610781_))
                               (let ((_mark10788_ _tl1073710783_))
                                 (_K1073510778_ _mark10788_ _id10786_))))
                           (_else1073310747_)))))))))
        (let ((_out1068510695_ _out10682_))
          (let ((_E1068710699_
                 (lambda () (error '"No clause matching" _out1068510695_))))
            (let ((_K1068810706_
                   (lambda (_phi10702_ _key10703_ _ctx10704_)
                     (gx#core-context-resolve
                      (gx#core-context-shift _ctx10704_ _phi10702_)
                      (_subst10684_ _key10703_)))))
              (if (##structure-direct-instance-of?
                   _out1068510695_
                   (##type-id gx#module-export::t))
                  (let ((_e1068910709_ (##vector-ref _out1068510695_ '1)))
                    (let ((_ctx10712_ _e1068910709_))
                      (let ((_e1069010714_ (##vector-ref _out1068510695_ '2)))
                        (let ((_key10717_ _e1069010714_))
                          (let ((_e1069110719_
                                 (##vector-ref _out1068510695_ '3)))
                            (let ((_phi10722_ _e1069110719_))
                              (let ((_e1069210724_
                                     (##vector-ref _out1068510695_ '4)))
                                (let ((_e1069310727_
                                       (##vector-ref _out1068510695_ '5)))
                                  (_K1068810706_
                                   _phi10722_
                                   _key10717_
                                   _ctx10712_)))))))))
                  (_E1068710699_))))))))
  (begin
    (define gx#core-module-export->import__opt-lambda10605
      (lambda (_out10607_ _rename10608_ _dphi10609_)
        (let ((_out1061010620_ _out10607_))
          (let ((_E1061210624_
                 (lambda () (error '"No clause matching" _out1061010620_))))
            (let ((_K1061310636_
                   (lambda (_weak?10627_
                            _name10628_
                            _phi10629_
                            _key10630_
                            _ctx10631_)
                     (##structure
                      gx#module-import::t
                      _out10607_
                      (let ((_$e10633_ _rename10608_))
                        (if _$e10633_ _$e10633_ _name10628_))
                      (fx+ _phi10629_ _dphi10609_)
                      _weak?10627_))))
              (if (##structure-direct-instance-of?
                   _out1061010620_
                   (##type-id gx#module-export::t))
                  (let ((_e1061410639_ (##vector-ref _out1061010620_ '1)))
                    (let ((_ctx10642_ _e1061410639_))
                      (let ((_e1061510644_ (##vector-ref _out1061010620_ '2)))
                        (let ((_key10647_ _e1061510644_))
                          (let ((_e1061610649_
                                 (##vector-ref _out1061010620_ '3)))
                            (let ((_phi10652_ _e1061610649_))
                              (let ((_e1061710654_
                                     (##vector-ref _out1061010620_ '4)))
                                (let ((_name10657_ _e1061710654_))
                                  (let ((_e1061810659_
                                         (##vector-ref _out1061010620_ '5)))
                                    (let ((_weak?10662_ _e1061810659_))
                                      (_K1061310636_
                                       _weak?10662_
                                       _name10657_
                                       _phi10652_
                                       _key10647_
                                       _ctx10642_)))))))))))
                  (_E1061210624_)))))))
    (begin
      (define gx#core-module-export->import__0
        (lambda (_out10667_)
          (let ((_rename10669_ '#f))
            (let ((_dphi10671_ '0))
              (gx#core-module-export->import__opt-lambda10605
               _out10667_
               _rename10669_
               _dphi10671_)))))
      (define gx#core-module-export->import__1
        (lambda (_out10673_ _rename10674_)
          (let ((_dphi10676_ '0))
            (gx#core-module-export->import__opt-lambda10605
             _out10673_
             _rename10674_
             _dphi10676_))))
      (define gx#core-module-export->import
        (lambda _g11524_
          (let ((_g11523_ (length _g11524_)))
            (cond ((fx= _g11523_ 1)
                   (apply gx#core-module-export->import__0 _g11524_))
                  ((fx= _g11523_ 2)
                   (apply gx#core-module-export->import__1 _g11524_))
                  ((fx= _g11523_ 3)
                   (apply gx#core-module-export->import__opt-lambda10605
                          _g11524_))
                  (else (error "No clause matching arguments" _g11524_))))))))
  (define gx#core-expand-module%
    (lambda (_stx10535_)
      (let ((_make-context10537_
             (lambda (_id10588_)
               (let ((_super10590_ (gx#current-expander-context)))
                 (let ((_bind-id10592_ (gx#stx-e _id10588_)))
                   (let ((_mod-id10594_
                          (if (##structure-instance-of?
                               _super10590_
                               'gx#module-context::t)
                              (make-symbol
                               (##structure-ref
                                _super10590_
                                '1
                                gx#expander-context::t
                                '#f)
                               '"::"
                               _bind-id10592_)
                              _bind-id10592_)))
                     (let ((_ns10596_ (symbol->string _mod-id10594_)))
                       (let ((_path10603_
                              (if (##structure-instance-of?
                                   _super10590_
                                   'gx#module-context::t)
                                  (let ((_path10598_
                                         (##structure-ref
                                          _super10590_
                                          '7
                                          gx#module-context::t
                                          '#f)))
                                    (if (let ((_$e10600_ (pair? _path10598_)))
                                          (if _$e10600_
                                              _$e10600_
                                              (null? _path10598_)))
                                        (cons _bind-id10592_ _path10598_)
                                        (if (not _path10598_)
                                            _bind-id10592_
                                            (cons _bind-id10592_
                                                  (cons _path10598_ '())))))
                                  _bind-id10592_)))
                         (let ()
                           (let ((__obj11506
                                  (make-object gx#module-context::t '11)))
                             (begin
                               (gx#module-context:::init!
                                __obj11506
                                _mod-id10594_
                                _super10590_
                                _ns10596_
                                _path10603_)
                               __obj11506)))))))))))
        (let ((_e1053810548_ _stx10535_))
          (let ((_E1054010552_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e1053810548_))))
            (let ((_E1053910584_
                   (lambda ()
                     (if (gx#stx-pair? _e1053810548_)
                         (let ((_e1054110556_ (gx#syntax-e _e1053810548_)))
                           (let ((_hd1054210559_ (##car _e1054110556_))
                                 (_tl1054310561_ (##cdr _e1054110556_)))
                             (if (gx#stx-pair? _tl1054310561_)
                                 (let ((_e1054410564_
                                        (gx#syntax-e _tl1054310561_)))
                                   (let ((_hd1054510567_ (##car _e1054410564_))
                                         (_tl1054610569_
                                          (##cdr _e1054410564_)))
                                     (let ((_id10572_ _hd1054510567_))
                                       (let ((_body10574_ _tl1054610569_))
                                         (if (if (gx#identifier? _id10572_)
                                                 (gx#stx-list? _body10574_)
                                                 '#f)
                                             (let ((_ctx10576_
                                                    (_make-context10537_
                                                     _id10572_)))
                                               (let ((_body10578_
                                                      (gx#core-expand-module-begin
                                                       _body10574_
                                                       _ctx10576_)))
                                                 (let ((_body10580_
                                                        (gx#core-quote-syntax__1
                                                         (gx#core-cons
                                                          '%#begin
                                                          _body10578_)
                                                         (gx#stx-source
                                                          _stx10535_))))
                                                   (let ()
                                                     (begin
                                                       (##structure-set!
                                                        _ctx10576_
                                                        (make-promise
                                                         (lambda ()
                                                           (gx#eval-syntax*
                                                            _body10580_)))
                                                        '10
                                                        gx#module-context::t
                                                        '#f)
                                                       (##structure-set!
                                                        _ctx10576_
                                                        _body10580_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)
                                                       (gx#core-bind-syntax!__0
                                                        _id10572_
                                                        _ctx10576_)
                                                       (gx#core-quote-syntax__1
                                                        (gx#core-list
                                                         '%#module
                                                         (gx#core-quote-syntax__0
                                                          _id10572_)
                                                         _body10580_)
                                                        (gx#stx-source
                                                         _stx10535_)))))))
                                             (_E1054010552_))))))
                                 (_E1054010552_))))
                         (_E1054010552_)))))
              (let () (_E1053910584_))))))))
  (define gx#core-expand-module-begin
    (lambda (_body10501_ _ctx10502_)
      (call-with-parameters
       (lambda ()
         (begin
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let ((_stx10505_
                  (gx#core-expand-head (cons '%%begin-module _body10501_))))
             (let ((_e1050610513_ _stx10505_))
               (let ((_E1050810517_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module body expansion"
                         _stx10505_))))
                 (let ((_E1050710531_
                        (lambda ()
                          (if (gx#stx-pair? _e1050610513_)
                              (let ((_e1050910521_
                                     (gx#syntax-e _e1050610513_)))
                                (let ((_hd1051010524_ (##car _e1050910521_))
                                      (_tl1051110526_ (##cdr _e1050910521_)))
                                  (if (if (gx#identifier? _hd1051010524_)
                                          (gx#core-identifier=?
                                           _hd1051010524_
                                           '%#begin-module)
                                          '#f)
                                      (let ((_body10529_ _tl1051110526_))
                                        (if '#t
                                            (if (gx#sealed-syntax? _stx10505_)
                                                _body10529_
                                                (gx#core-expand-module-body
                                                 _body10529_))
                                            (_E1050810517_)))
                                      (_E1050810517_))))
                              (_E1050810517_)))))
                   (let () (_E1050710531_))))))))
       gx#current-expander-context
       _ctx10502_
       gx#current-expander-phi
       '0)))
  (define gx#core-expand-module-body
    (lambda (_body10297_)
      (let ((_expand-special10299_
             (lambda (_hd10428_ _K10429_ _rest10430_ _r10431_)
               (let ((_e1043210449_ _hd10428_))
                 (let ((_E1044410453_
                        (lambda ()
                          (_K10429_
                           _rest10430_
                           (cons (gx#core-expand-top _hd10428_) _r10431_)))))
                   (let ((_E1043410465_
                          (lambda ()
                            (if (gx#stx-pair? _e1043210449_)
                                (let ((_e1044510457_
                                       (gx#syntax-e _e1043210449_)))
                                  (let ((_hd1044610460_ (##car _e1044510457_))
                                        (_tl1044710462_ (##cdr _e1044510457_)))
                                    (if (if (gx#identifier? _hd1044610460_)
                                            (gx#core-identifier=?
                                             _hd1044610460_
                                             '%#export)
                                            '#f)
                                        (if '#t
                                            (_K10429_
                                             _rest10430_
                                             (cons _hd10428_ _r10431_))
                                            (_E1044410453_))
                                        (_E1044410453_))))
                                (_E1044410453_)))))
                     (let ((_E1043310497_
                            (lambda ()
                              (if (gx#stx-pair? _e1043210449_)
                                  (let ((_e1043510469_
                                         (gx#syntax-e _e1043210449_)))
                                    (let ((_hd1043610472_
                                           (##car _e1043510469_))
                                          (_tl1043710474_
                                           (##cdr _e1043510469_)))
                                      (if (if (gx#identifier? _hd1043610472_)
                                              (gx#core-identifier=?
                                               _hd1043610472_
                                               '%#define-values)
                                              '#f)
                                          (if (gx#stx-pair? _tl1043710474_)
                                              (let ((_e1043810477_
                                                     (gx#syntax-e
                                                      _tl1043710474_)))
                                                (let ((_hd1043910480_
                                                       (##car _e1043810477_))
                                                      (_tl1044010482_
                                                       (##cdr _e1043810477_)))
                                                  (let ((_hd-bind10485_
                                                         _hd1043910480_))
                                                    (if (gx#stx-pair?
                                                         _tl1044010482_)
                                                        (let ((_e1044110487_
                                                               (gx#syntax-e
                                                                _tl1044010482_)))
                                                          (let ((_hd1044210490_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1044110487_))
                        (_tl1044310492_ (##cdr _e1044110487_)))
                    (let ((_expr10495_ _hd1044210490_))
                      (if (gx#stx-null? _tl1044310492_)
                          (if (gx#core-bind-values? _hd-bind10485_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind10485_)
                                (_K10429_
                                 _rest10430_
                                 (cons _hd10428_ _r10431_)))
                              (_E1043410465_))
                          (_E1043410465_)))))
                (_E1043410465_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1043410465_))
                                          (_E1043410465_))))
                                  (_E1043410465_)))))
                       (let () (_E1043310497_)))))))))
        (let ((_expand-body10300_
               (lambda (_rbody10302_)
                 ((letrec ((_lp10304_
                            (lambda (_rest10306_ _body10307_)
                              (let ((_rest1030810316_ _rest10306_))
                                (let ((_E1031110320_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _rest1030810316_))))
                                  (let ((_else1031010324_
                                         (lambda () _body10307_)))
                                    (let ((_K1031210416_
                                           (lambda (_rest10327_ _hd10328_)
                                             (let ((_e1032910350_ _hd10328_))
                                               (let ((_E1034510354_
                                                      (lambda ()
                                                        (_lp10304_
                                                         _rest10327_
                                                         (cons (gx#core-expand-expression
                                                                _hd10328_)
                                                               _body10307_)))))
                                                 (let ((_E1034110368_
                                                        (lambda ()
                                                          (if (gx#stx-pair?
                                                               _e1032910350_)
                                                              (let ((_e1034610358_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _e1032910350_)))
                        (let ((_hd1034710361_ (##car _e1034610358_))
                              (_tl1034810363_ (##cdr _e1034610358_)))
                          (let ((_form10366_ _hd1034710361_))
                            (if (gx#core-bound-identifier?__opt-lambda4199
                                 _form10366_
                                 gx#special-form-binding?)
                                (_lp10304_
                                 _rest10327_
                                 (cons _hd10328_ _body10307_))
                                (_E1034510354_)))))
                      (_E1034510354_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_E1033110380_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e1032910350_)
                        (let ((_e1034210372_ (gx#syntax-e _e1032910350_)))
                          (let ((_hd1034310375_ (##car _e1034210372_))
                                (_tl1034410377_ (##cdr _e1034210372_)))
                            (if (if (gx#identifier? _hd1034310375_)
                                    (gx#core-identifier=?
                                     _hd1034310375_
                                     '%#export)
                                    '#f)
                                (if '#t
                                    (_lp10304_
                                     _rest10327_
                                     (cons (gx#core-expand-export%__0
                                            _hd10328_)
                                           _body10307_))
                                    (_E1034110368_))
                                (_E1034110368_))))
                        (_E1034110368_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_E1033010412_
                                                            (lambda ()
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e1032910350_)
                          (let ((_e1033210384_ (gx#syntax-e _e1032910350_)))
                            (let ((_hd1033310387_ (##car _e1033210384_))
                                  (_tl1033410389_ (##cdr _e1033210384_)))
                              (if (if (gx#identifier? _hd1033310387_)
                                      (gx#core-identifier=?
                                       _hd1033310387_
                                       '%#define-values)
                                      '#f)
                                  (if (gx#stx-pair? _tl1033410389_)
                                      (let ((_e1033510392_
                                             (gx#syntax-e _tl1033410389_)))
                                        (let ((_hd1033610395_
                                               (##car _e1033510392_))
                                              (_tl1033710397_
                                               (##cdr _e1033510392_)))
                                          (let ((_hd-bind10400_
                                                 _hd1033610395_))
                                            (if (gx#stx-pair? _tl1033710397_)
                                                (let ((_e1033810402_
                                                       (gx#syntax-e
                                                        _tl1033710397_)))
                                                  (let ((_hd1033910405_
                                                         (##car _e1033810402_))
                                                        (_tl1034010407_
                                                         (##cdr _e1033810402_)))
                                                    (let ((_expr10410_
                                                           _hd1033910405_))
                                                      (if (gx#stx-null?
                                                           _tl1034010407_)
                                                          (if '#t
                                                              (_lp10304_
                                                               _rest10327_
                                                               (cons (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#core-list
                               '%#define-values
                               (gx#core-quote-bind-values _hd-bind10400_)
                               (gx#core-expand-expression _expr10410_))
                              (gx#stx-source _hd10328_))
                             _body10307_))
                      (_E1033110380_))
                  (_E1033110380_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1033110380_)))))
                                      (_E1033110380_))
                                  (_E1033110380_))))
                          (_E1033110380_)))))
               (let () (_E1033010412_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (##pair? _rest1030810316_)
                                          (let ((_hd1031310419_
                                                 (##car _rest1030810316_))
                                                (_tl1031410421_
                                                 (##cdr _rest1030810316_)))
                                            (let ((_hd10424_ _hd1031310419_))
                                              (let ((_rest10426_
                                                     _tl1031410421_))
                                                (_K1031210416_
                                                 _rest10426_
                                                 _hd10424_))))
                                          (_else1031010324_)))))))))
                    _lp10304_)
                  _rbody10302_
                  '()))))
          (_expand-body10300_
           (gx#core-expand-block__opt-lambda5246
            (cons '%#begin-module _body10297_)
            _expand-special10299_
            '#f
            values))))))
  (define gx#core-expand-import/export
    (lambda (_stx10140_
             _expanded?10141_
             _method10142_
             _current-phi10143_
             _expand110144_)
      (letrec ((_K10146_
                (lambda (_rest10264_ _r10265_)
                  (let ((_e1026610273_ _rest10264_))
                    (let ((_E1026810277_ (lambda () _r10265_)))
                      (let ((_E1026710293_
                             (lambda ()
                               (if (gx#stx-pair? _e1026610273_)
                                   (let ((_e1026910281_
                                          (gx#syntax-e _e1026610273_)))
                                     (let ((_hd1027010284_
                                            (##car _e1026910281_))
                                           (_tl1027110286_
                                            (##cdr _e1026910281_)))
                                       (let ((_hd10289_ _hd1027010284_))
                                         (let ((_rest10291_ _tl1027110286_))
                                           (if '#t
                                               (_step10147_
                                                _hd10289_
                                                _rest10291_
                                                _r10265_)
                                               (_E1026810277_))))))
                                   (_E1026810277_)))))
                        (let () (_E1026710293_)))))))
               (_step10147_
                (lambda (_hd10178_ _rest10179_ _r10180_)
                  (let ((_e1018110199_ _hd10178_))
                    (let ((_E1019410203_
                           (lambda ()
                             (if (_expanded?10141_ (gx#stx-e _hd10178_))
                                 (_K10146_
                                  _rest10179_
                                  (cons (gx#stx-e _hd10178_) _r10180_))
                                 (_expand110144_
                                  _hd10178_
                                  _K10146_
                                  _rest10179_
                                  _r10180_)))))
                      (let ((_E1019010219_
                             (lambda ()
                               (if (gx#stx-pair? _e1018110199_)
                                   (let ((_e1019510207_
                                          (gx#syntax-e _e1018110199_)))
                                     (let ((_hd1019610210_
                                            (##car _e1019510207_))
                                           (_tl1019710212_
                                            (##cdr _e1019510207_)))
                                       (let ((_macro10215_ _hd1019610210_))
                                         (let ((_body10217_ _tl1019710212_))
                                           (if (gx#core-bound-identifier?__opt-lambda4199
                                                _macro10215_
                                                gx#syntax-binding?)
                                               (_K10146_
                                                (cons (gx#core-apply-expander__opt-lambda4964
                                                       (gx#syntax-local-e__0
                                                        _macro10215_)
                                                       _hd10178_
                                                       _method10142_)
                                                      _rest10179_)
                                                _r10180_)
                                               (_E1019410203_))))))
                                   (_E1019410203_)))))
                        (let ((_E1018310233_
                               (lambda ()
                                 (if (gx#stx-pair? _e1018110199_)
                                     (let ((_e1019110223_
                                            (gx#syntax-e _e1018110199_)))
                                       (let ((_hd1019210226_
                                              (##car _e1019110223_))
                                             (_tl1019310228_
                                              (##cdr _e1019110223_)))
                                         (if (eq? (gx#stx-e _hd1019210226_)
                                                  'begin:)
                                             (let ((_body10231_
                                                    _tl1019310228_))
                                               (if '#t
                                                   (_K10146_
                                                    (gx#stx-foldr
                                                     cons
                                                     _rest10179_
                                                     _body10231_)
                                                    _r10180_)
                                                   (_E1019010219_)))
                                             (_E1019010219_))))
                                     (_E1019010219_)))))
                          (let ((_E1018210260_
                                 (lambda ()
                                   (if (gx#stx-pair? _e1018110199_)
                                       (let ((_e1018410237_
                                              (gx#syntax-e _e1018110199_)))
                                         (let ((_hd1018510240_
                                                (##car _e1018410237_))
                                               (_tl1018610242_
                                                (##cdr _e1018410237_)))
                                           (if (eq? (gx#stx-e _hd1018510240_)
                                                    'phi:)
                                               (if (gx#stx-pair?
                                                    _tl1018610242_)
                                                   (let ((_e1018710245_
                                                          (gx#syntax-e
                                                           _tl1018610242_)))
                                                     (let ((_hd1018810248_
                                                            (##car _e1018710245_))
                                                           (_tl1018910250_
                                                            (##cdr _e1018710245_)))
                                                       (let ((_dphi10253_
                                                              _hd1018810248_))
                                                         (let ((_body10255_
                                                                _tl1018910250_))
                                                           (if (gx#stx-fixnum?
                                                                _dphi10253_)
                                                               (let ((_rbody10258_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (call-with-parameters
                               (lambda () (_K10146_ _body10255_ '()))
                               _current-phi10143_
                               (fx+ (gx#stx-e _dphi10253_)
                                    (_current-phi10143_)))))
                         (_K10146_
                          _rest10179_
                          (foldr1 cons _r10180_ _rbody10258_)))
                       (_E1018310233_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1018310233_))
                                               (_E1018310233_))))
                                       (_E1018310233_)))))
                            (let () (_E1018210260_))))))))))
        (let ((_e1014810155_ _stx10140_))
          (let ((_E1015010159_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e1014810155_))))
            (let ((_E1014910174_
                   (lambda ()
                     (if (gx#stx-pair? _e1014810155_)
                         (let ((_e1015110163_ (gx#syntax-e _e1014810155_)))
                           (let ((_hd1015210166_ (##car _e1015110163_))
                                 (_tl1015310168_ (##cdr _e1015110163_)))
                             (let ((_body10171_ _tl1015310168_))
                               (if '#t
                                   (if (_current-phi10143_)
                                       (_K10146_ _body10171_ '())
                                       (call-with-parameters
                                        (lambda () (_K10146_ _body10171_ '()))
                                        _current-phi10143_
                                        (gx#current-expander-phi)))
                                   (_E1015010159_)))))
                         (_E1015010159_)))))
              (let () (_E1014910174_))))))))
  (begin
    (define gx#core-expand-import%__opt-lambda9677
      (lambda (_stx9679_ _internal-expand?9680_)
        (let ((_import19683_
               (lambda (_ctx10114_ _K10115_ _rest10116_ _r10117_)
                 (let ((_dphi10119_
                        (fx- (gx#current-import-expander-phi)
                             (gx#current-expander-phi))))
                   (_K10115_
                    _rest10116_
                    (cons (##structure
                           gx#import-set::t
                           _ctx10114_
                           _dphi10119_
                           (map (lambda (_g1012010122_)
                                  (gx#core-module-export->import__opt-lambda10605
                                   _g1012010122_
                                   '#f
                                   _dphi10119_))
                                (##structure-ref
                                 _ctx10114_
                                 '9
                                 gx#module-context::t
                                 '#f)))
                          _r10117_))))))
          (let ((_import-spec?9684_
                 (lambda (_hd10071_)
                   (let ((_e1007210082_ _hd10071_))
                     (let ((_E1007410086_ (lambda () '#f)))
                       (let ((_E1007310110_
                              (lambda ()
                                (if (gx#stx-pair? _e1007210082_)
                                    (let ((_e1007510090_
                                           (gx#syntax-e _e1007210082_)))
                                      (let ((_hd1007610093_
                                             (##car _e1007510090_))
                                            (_tl1007710095_
                                             (##cdr _e1007510090_)))
                                        (if (eq? (gx#stx-e _hd1007610093_)
                                                 'spec:)
                                            (if (gx#stx-pair? _tl1007710095_)
                                                (let ((_e1007810098_
                                                       (gx#syntax-e
                                                        _tl1007710095_)))
                                                  (let ((_hd1007910101_
                                                         (##car _e1007810098_))
                                                        (_tl1008010103_
                                                         (##cdr _e1007810098_)))
                                                    (let ((_spath10106_
                                                           _hd1007910101_))
                                                      (let ((_specs10108_
                                                             _tl1008010103_))
                                                        (if '#t
                                                            '#t
                                                            (_E1007410086_))))))
                                                (_E1007410086_))
                                            (_E1007410086_))))
                                    (_E1007410086_)))))
                         (let () (_E1007310110_))))))))
            (let ((_import-submodule?9685_
                   (lambda (_hd10028_)
                     (let ((_e1002910039_ _hd10028_))
                       (let ((_E1003110043_ (lambda () '#f)))
                         (let ((_E1003010067_
                                (lambda ()
                                  (if (gx#stx-pair? _e1002910039_)
                                      (let ((_e1003210047_
                                             (gx#syntax-e _e1002910039_)))
                                        (let ((_hd1003310050_
                                               (##car _e1003210047_))
                                              (_tl1003410052_
                                               (##cdr _e1003210047_)))
                                          (if (eq? (gx#stx-e _hd1003310050_)
                                                   'in:)
                                              (if (gx#stx-pair? _tl1003410052_)
                                                  (let ((_e1003510055_
                                                         (gx#syntax-e
                                                          _tl1003410052_)))
                                                    (let ((_hd1003610058_
                                                           (##car _e1003510055_))
                                                          (_tl1003710060_
                                                           (##cdr _e1003510055_)))
                                                      (let ((_top10063_
                                                             _hd1003610058_))
                                                        (let ((_sub10065_
                                                               _tl1003710060_))
                                                          (if '#t
                                                              '#t
                                                              (_E1003110043_))))))
                                                  (_E1003110043_))
                                              (_E1003110043_))))
                                      (_E1003110043_)))))
                           (let () (_E1003010067_))))))))
              (let ((_import-runtime?9686_
                     (lambda (_hd9985_)
                       (let ((_e99869996_ _hd9985_))
                         (let ((_E998810000_ (lambda () '#f)))
                           (let ((_E998710024_
                                  (lambda ()
                                    (if (gx#stx-pair? _e99869996_)
                                        (let ((_e998910004_
                                               (gx#syntax-e _e99869996_)))
                                          (let ((_hd999010007_
                                                 (##car _e998910004_))
                                                (_tl999110009_
                                                 (##cdr _e998910004_)))
                                            (if (eq? (gx#stx-e _hd999010007_)
                                                     'runtime:)
                                                (if (gx#stx-pair?
                                                     _tl999110009_)
                                                    (let ((_e999210012_
                                                           (gx#syntax-e
                                                            _tl999110009_)))
                                                      (let ((_hd999310015_
                                                             (##car _e999210012_))
                                                            (_tl999410017_
                                                             (##cdr _e999210012_)))
                                                        (let ((_top10020_
                                                               _hd999310015_))
                                                          (let ((_spath10022_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl999410017_))
                    (if '#t '#t (_E998810000_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E998810000_))
                                                (_E998810000_))))
                                        (_E998810000_)))))
                             (let () (_E998710024_))))))))
                (let ((_import-spec-source9690_
                       (lambda (_spath9756_)
                         (gx#core-import-nested-module
                          _spath9756_
                          _stx9679_))))
                  (let ((_import!9691_
                         (lambda (_rbody9704_)
                           (let ((_current-ctx9706_
                                  (gx#current-expander-context)))
                             (let ((_deps9707_ (make-hash-table-eq)))
                               (let ((_bind!9708_
                                      (lambda (_hd9754_)
                                        (begin
                                          (gx#core-bind-import!__1
                                           _hd9754_
                                           _current-ctx9706_)
                                          (if (if (fxpositive?
                                                   (##structure-ref
                                                    _hd9754_
                                                    '3
                                                    gx#module-import::t
                                                    '#f))
                                                  (fxzero? (##structure-ref
                                                            (##structure-ref
                                                             _hd9754_
                                                             '1
                                                             gx#module-import::t
                                                             '#f)
                                                            '3
                                                            gx#module-export::t
                                                            '#f))
                                                  '#f)
                                              (table-set!
                                               _deps9707_
                                               (##structure-ref
                                                (##structure-ref
                                                 _hd9754_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)
                                                '1
                                                gx#module-export::t
                                                '#f)
                                               '#t)
                                              '#!void)))))
                                 (let ((_fold-e9709_
                                        (lambda (_in9751_ _r9752_)
                                          (if (##structure-direct-instance-of?
                                               _in9751_
                                               'gx#module-import::t)
                                              (cons _in9751_ _r9752_)
                                              (if (##structure-direct-instance-of?
                                                   _in9751_
                                                   'gx#import-set::t)
                                                  (foldl1 cons
                                                          _r9752_
                                                          (##structure-ref
                                                           _in9751_
                                                           '3
                                                           gx#import-set::t
                                                           '#f))
                                                  _r9752_)))))
                                   ((letrec ((_lp9711_
                                              (lambda (_rest9713_ _body9714_)
                                                (let ((_rest97159723_
                                                       _rest9713_))
                                                  (let ((_E97189727_
                                                         (lambda ()
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _rest97159723_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_else97179733_
                                                           (lambda ()
                                                             (begin
                                                               (if (##structure-instance-of?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _current-ctx9706_
                            'gx#module-context::t)
                           (##structure-set!
                            _current-ctx9706_
                            (foldl1 _fold-e9709_
                                    (##structure-ref
                                     _current-ctx9706_
                                     '8
                                     gx#module-context::t
                                     '#f)
                                    _body9714_)
                            '8
                            gx#module-context::t
                            '#f)
                           '#!void)
                       (table-for-each
                        (lambda (_ctx9731_ _g11525_)
                          (gx#eval-module _ctx9731_))
                        _deps9707_)
                       _body9714_))))
              (let ((_K97199739_
                     (lambda (_rest9736_ _hd9737_)
                       (begin
                         (if (##structure-direct-instance-of?
                              _hd9737_
                              'gx#module-import::t)
                             (_bind!9708_ _hd9737_)
                             (if (##structure-direct-instance-of?
                                  _hd9737_
                                  'gx#import-set::t)
                                 (for-each
                                  _bind!9708_
                                  (##structure-ref
                                   _hd9737_
                                   '3
                                   gx#import-set::t
                                   '#f))
                                 (if (##structure-instance-of?
                                      _hd9737_
                                      'gx#module-context::t)
                                     '#!void
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Unexpected import"
                                      _stx9679_
                                      _hd9737_))))
                         (_lp9711_ _rest9736_ (cons _hd9737_ _body9714_))))))
                (if (##pair? _rest97159723_)
                    (let ((_hd97209742_ (##car _rest97159723_))
                          (_tl97219744_ (##cdr _rest97159723_)))
                      (let ((_hd9747_ _hd97209742_))
                        (let ((_rest9749_ _tl97219744_))
                          (_K97199739_ _rest9749_ _hd9747_))))
                    (_else97179733_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _lp9711_)
                                    _rbody9704_
                                    '()))))))))
                    (let ((_expanded-import?9692_
                           (lambda (_e9696_)
                             (let ((_$e9698_
                                    (##structure-direct-instance-of?
                                     _e9696_
                                     'gx#import-set::t)))
                               (if _$e9698_
                                   _$e9698_
                                   (let ((_$e9701_
                                          (##structure-direct-instance-of?
                                           _e9696_
                                           'gx#module-import::t)))
                                     (if _$e9701_
                                         _$e9701_
                                         (##structure-instance-of?
                                          _e9696_
                                          'gx#module-context::t))))))))
                      (let ((_import-submodule9687_
                             (lambda (_hd9952_ _K9953_ _rest9954_ _r9955_)
                               (let ((_e99569963_ _hd9952_))
                                 (let ((_E99589967_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _e99569963_))))
                                   (let ((_E99579981_
                                          (lambda ()
                                            (if (gx#stx-pair? _e99569963_)
                                                (let ((_e99599971_
                                                       (gx#syntax-e
                                                        _e99569963_)))
                                                  (let ((_hd99609974_
                                                         (##car _e99599971_))
                                                        (_tl99619976_
                                                         (##cdr _e99599971_)))
                                                    (let ((_spath9979_
                                                           _tl99619976_))
                                                      (if '#t
                                                          (_import19683_
                                                           (_import-spec-source9690_
                                                            _spath9979_)
                                                           _K9953_
                                                           _rest9954_
                                                           _r9955_)
                                                          (_E99589967_)))))
                                                (_E99589967_)))))
                                     (let () (_E99579981_))))))))
                        (let ((_import-runtime9688_
                               (lambda (_hd9919_ _K9920_ _rest9921_ _r9922_)
                                 (let ((_e99239930_ _hd9919_))
                                   (let ((_E99259934_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _e99239930_))))
                                     (let ((_E99249948_
                                            (lambda ()
                                              (if (gx#stx-pair? _e99239930_)
                                                  (let ((_e99269938_
                                                         (gx#syntax-e
                                                          _e99239930_)))
                                                    (let ((_hd99279941_
                                                           (##car _e99269938_))
                                                          (_tl99289943_
                                                           (##cdr _e99269938_)))
                                                      (let ((_spath9946_
                                                             _tl99289943_))
                                                        (if '#t
                                                            (_K9920_ _rest9921_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (_import-spec-source9690_ _spath9946_)
                                   _r9922_))
                    (_E99259934_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E99259934_)))))
                                       (let () (_E99249948_))))))))
                          (let ((_import-spec9689_
                                 (lambda (_hd9758_ _K9759_ _rest9760_ _r9761_)
                                   (let ((_e97629779_ _hd9758_))
                                     (let ((_E97719783_
                                            (lambda ()
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _e97629779_))))
                                       (let ((_E97649893_
                                              (lambda ()
                                                (if (gx#stx-pair? _e97629779_)
                                                    (let ((_e97729787_
                                                           (gx#syntax-e
                                                            _e97629779_)))
                                                      (let ((_hd97739790_
                                                             (##car _e97729787_))
                                                            (_tl97749792_
                                                             (##cdr _e97729787_)))
                                                        (if (gx#stx-pair?
                                                             _tl97749792_)
                                                            (let ((_e97759795_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl97749792_)))
                      (let ((_hd97769798_ (##car _e97759795_))
                            (_tl97779800_ (##cdr _e97759795_)))
                        (let ((_path9803_ _hd97769798_))
                          (let ((_specs9805_ _tl97779800_))
                            (if '#t
                                (let ((_src-ctx9807_
                                       (_import-spec-source9690_ _path9803_))
                                      (_exports9808_ (make-table))
                                      (_specs9809_
                                       (gx#syntax->list _specs9805_)))
                                  (begin
                                    (for-each
                                     (lambda (_out9811_)
                                       (table-set!
                                        _exports9808_
                                        (cons (##structure-ref
                                               _out9811_
                                               '3
                                               gx#module-export::t
                                               '#f)
                                              (##structure-ref
                                               _out9811_
                                               '4
                                               gx#module-export::t
                                               '#f))
                                        _out9811_))
                                     (##structure-ref
                                      _src-ctx9807_
                                      '9
                                      gx#module-context::t
                                      '#f))
                                    (_K9759_ _rest9760_
                                             (foldl1 (lambda (_spec9813_
                                                              _r9814_)
                                                       (let ((_e98159831_
                                                              _spec9813_))
                                                         (let ((_E98179835_
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _e98159831_))))
                   (let ((_E98169889_
                          (lambda ()
                            (if (gx#stx-pair? _e98159831_)
                                (let ((_e98189839_ (gx#syntax-e _e98159831_)))
                                  (let ((_hd98199842_ (##car _e98189839_))
                                        (_tl98209844_ (##cdr _e98189839_)))
                                    (let ((_phi9847_ _hd98199842_))
                                      (if (gx#stx-pair? _tl98209844_)
                                          (let ((_e98219849_
                                                 (gx#syntax-e _tl98209844_)))
                                            (let ((_hd98229852_
                                                   (##car _e98219849_))
                                                  (_tl98239854_
                                                   (##cdr _e98219849_)))
                                              (let ((_name9857_ _hd98229852_))
                                                (if (gx#stx-pair? _tl98239854_)
                                                    (let ((_e98249859_
                                                           (gx#syntax-e
                                                            _tl98239854_)))
                                                      (let ((_hd98259862_
                                                             (##car _e98249859_))
                                                            (_tl98269864_
                                                             (##cdr _e98249859_)))
                                                        (let ((_src-phi9867_
                                                               _hd98259862_))
                                                          (if (gx#stx-pair?
                                                               _tl98269864_)
                                                              (let ((_e98279869_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl98269864_)))
                        (let ((_hd98289872_ (##car _e98279869_))
                              (_tl98299874_ (##cdr _e98279869_)))
                          (let ((_src-name9877_ _hd98289872_))
                            (if (gx#stx-null? _tl98299874_)
                                (if (if (gx#stx-fixnum? _src-phi9867_)
                                        (if (gx#identifier? _src-name9877_)
                                            (if (gx#stx-fixnum? _phi9847_)
                                                (gx#identifier? _name9857_)
                                                '#f)
                                            '#f)
                                        '#f)
                                    (let ((_src-phi9879_
                                           (gx#stx-e _src-phi9867_))
                                          (_src-name9880_
                                           (gx#core-identifier-key
                                            _src-name9877_))
                                          (_phi9881_ (gx#stx-e _phi9847_))
                                          (_name9882_
                                           (gx#core-identifier-key
                                            _name9857_)))
                                      (let ((_$e9884_
                                             (table-ref
                                              _exports9808_
                                              (cons _src-phi9879_
                                                    _src-name9880_)
                                              '#f)))
                                        (if _$e9884_
                                            ((lambda (_out9887_)
                                               (cons (gx#core-module-export->import__opt-lambda10605
                                                      _out9887_
                                                      _name9882_
                                                      (fx- _phi9881_
                                                           _src-phi9879_))
                                                     _r9814_))
                                             _$e9884_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; no matching export"
                                             _stx9679_
                                             _hd9758_))))
                                    (_E98179835_))
                                (_E98179835_)))))
                      (_E98179835_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E98179835_)))))
                                          (_E98179835_)))))
                                (_E98179835_)))))
                     (let () (_E98169889_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _r9761_
                                                     _specs9809_))))
                                (_E97719783_))))))
                    (_E97719783_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E97719783_)))))
                                         (let ((_E97639915_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _e97629779_)
                                                      (let ((_e97659897_
                                                             (gx#syntax-e
                                                              _e97629779_)))
                                                        (let ((_hd97669900_
                                                               (##car _e97659897_))
                                                              (_tl97679902_
                                                               (##cdr _e97659897_)))
                                                          (if (gx#stx-pair?
                                                               _tl97679902_)
                                                              (let ((_e97689905_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl97679902_)))
                        (let ((_hd97699908_ (##car _e97689905_))
                              (_tl97709910_ (##cdr _e97689905_)))
                          (let ((_path9913_ _hd97699908_))
                            (if (gx#stx-null? _tl97709910_)
                                (if '#t
                                    (_K9759_ _rest9760_
                                             (cons (_import-spec-source9690_
                                                    _path9913_)
                                                   _r9761_))
                                    (_E97649893_))
                                (_E97649893_)))))
                      (_E97649893_))))
              (_E97649893_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let () (_E97639915_)))))))))
                            (let ((_expand19682_
                                   (lambda (_hd10125_
                                            _K10126_
                                            _rest10127_
                                            _r10128_)
                                     (if (gx#core-bound-module? _hd10125_)
                                         (_import19683_
                                          (gx#syntax-local-e__0 _hd10125_)
                                          _K10126_
                                          _rest10127_
                                          _r10128_)
                                         (if (gx#core-library-module-path?
                                              _hd10125_)
                                             (_import19683_
                                              (gx#import-module__0
                                               (gx#core-resolve-library-module-path
                                                _hd10125_))
                                              _K10126_
                                              _rest10127_
                                              _r10128_)
                                             (if (gx#stx-string? _hd10125_)
                                                 (_import19683_
                                                  (gx#import-module__0
                                                   (gx#core-resolve-module-path__opt-lambda10965
                                                    _hd10125_
                                                    (gx#stx-source _stx9679_)))
                                                  _K10126_
                                                  _rest10127_
                                                  _r10128_)
                                                 (if (##structure-instance-of?
                                                      (gx#stx-e _hd10125_)
                                                      'gx#module-context::t)
                                                     (_K10126_
                                                      _rest10127_
                                                      (cons (gx#stx-e
                                                             _hd10125_)
                                                            _r10128_))
                                                     (if (_import-spec?9684_
                                                          _hd10125_)
                                                         (_import-spec9689_
                                                          _hd10125_
                                                          _K10126_
                                                          _rest10127_
                                                          _r10128_)
                                                         (if (_import-submodule?9685_
                                                              _hd10125_)
                                                             (_import-submodule9687_
                                                              _hd10125_
                                                              _K10126_
                                                              _rest10127_
                                                              _r10128_)
                                                             (if (_import-runtime?9686_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd10125_)
                         (_import-runtime9688_
                          _hd10125_
                          _K10126_
                          _rest10127_
                          _r10128_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; illegal import"
                          _stx9679_
                          _hd10125_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (let ((_rbody9694_
                                     (gx#core-expand-import/export
                                      _stx9679_
                                      _expanded-import?9692_
                                      'apply-import-expander
                                      gx#current-import-expander-phi
                                      _expand19682_)))
                                (if _internal-expand?9680_
                                    (reverse _rbody9694_)
                                    (gx#core-quote-syntax__1
                                     (gx#core-cons
                                      '%#import
                                      (_import!9691_ _rbody9694_))
                                     (gx#stx-source _stx9679_)))))))))))))))))
    (begin
      (define gx#core-expand-import%__0
        (lambda (_stx10133_)
          (let ((_internal-expand?10135_ '#f))
            (gx#core-expand-import%__opt-lambda9677
             _stx10133_
             _internal-expand?10135_))))
      (define gx#core-expand-import%
        (lambda _g11527_
          (let ((_g11526_ (length _g11527_)))
            (cond ((fx= _g11526_ 1) (apply gx#core-expand-import%__0 _g11527_))
                  ((fx= _g11526_ 2)
                   (apply gx#core-expand-import%__opt-lambda9677 _g11527_))
                  (else (error "No clause matching arguments" _g11527_))))))))
  (define gx#core-import-nested-module
    (lambda (_spath9606_ _where9607_)
      (let ((_e96089615_ _spath9606_))
        (let ((_E96109619_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e96089615_))))
          (let ((_E96099674_
                 (lambda ()
                   (if (gx#stx-pair? _e96089615_)
                       (let ((_e96119623_ (gx#syntax-e _e96089615_)))
                         (let ((_hd96129626_ (##car _e96119623_))
                               (_tl96139628_ (##cdr _e96119623_)))
                           (let ((_origin9631_ _hd96129626_))
                             (let ((_sub9633_ _tl96139628_))
                               (if '#t
                                   (let ((_origin-ctx9635_
                                          (if (gx#stx-false? _origin9631_)
                                              (gx#current-expander-context)
                                              (gx#import-module__0
                                               _origin9631_))))
                                     ((letrec ((_lp9637_
                                                (lambda (_rest9639_ _ctx9640_)
                                                  (let ((_e96419648_
                                                         _rest9639_))
                                                    (let ((_E96439652_
                                                           (lambda ()
                                                             _ctx9640_)))
                                                      (let ((_E96429670_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _e96419648_)
                           (let ((_e96449656_ (gx#syntax-e _e96419648_)))
                             (let ((_hd96459659_ (##car _e96449656_))
                                   (_tl96469661_ (##cdr _e96449656_)))
                               (let ((_id9664_ _hd96459659_))
                                 (let ((_rest9666_ _tl96469661_))
                                   (if '#t
                                       (let ((_bind9668_
                                              (gx#resolve-identifier__opt-lambda4749
                                               _id9664_
                                               '0
                                               _ctx9640_)))
                                         (begin
                                           (if (if (##structure-direct-instance-of?
                                                    _bind9668_
                                                    'gx#syntax-binding::t)
                                                   (##structure-instance-of?
                                                    (##structure-ref
                                                     _bind9668_
                                                     '4
                                                     gx#syntax-binding::t
                                                     '#f)
                                                    'gx#module-context::t)
                                                   '#f)
                                               '#!void
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; not bound as module"
                                                _where9607_
                                                _spath9606_
                                                _id9664_))
                                           (_lp9637_
                                            _rest9666_
                                            (##structure-ref
                                             _bind9668_
                                             '4
                                             gx#syntax-binding::t
                                             '#f))))
                                       (_E96439652_))))))
                           (_E96439652_)))))
                (let () (_E96429670_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _lp9637_)
                                      _sub9633_
                                      _origin-ctx9635_))
                                   (_E96109619_))))))
                       (_E96109619_)))))
            (let () (_E96099674_)))))))
  (define gx#core-expand-import-source
    (lambda (_hd9604_)
      (gx#core-expand-import%__opt-lambda9677
       (cons 'import-internal% (cons _hd9604_ '()))
       '#t)))
  (begin
    (define gx#core-expand-export%__opt-lambda9186
      (lambda (_stx9188_ _internal-expand?9189_)
        (let ((_make-export__opt-lambda9550__1149511496_
               (lambda (_bind9552_ _phi9553_ _ctx9554_ _name9555_)
                 (let ((_key9557_
                        (##structure-ref _bind9552_ '2 gx#binding::t '#f)))
                   (let ((_export-key9559_
                          (if _name9555_
                              (gx#core-identifier-key _name9555_)
                              _key9557_)))
                     (let ()
                       (##structure
                        gx#module-export::t
                        _ctx9554_
                        _key9557_
                        _phi9553_
                        _export-key9559_
                        (let ((_$e9562_
                               (##structure-instance-of?
                                _bind9552_
                                'gx#extern-binding::t)))
                          (if _$e9562_
                              _$e9562_
                              (##structure-direct-instance-of?
                               _bind9552_
                               'gx#import-binding::t))))))))))
          (let ((_make-export__0__1149711500_
                 (lambda (_bind9568_)
                   (let ((_phi9570_ (gx#current-export-expander-phi)))
                     (let ((_ctx9572_ (gx#current-expander-context)))
                       (let ((_name9574_ '#f))
                         (_make-export__opt-lambda9550__1149511496_
                          _bind9568_
                          _phi9570_
                          _ctx9572_
                          _name9574_)))))))
            (let ((_make-export__1__1149811501_
                   (lambda (_bind9576_ _phi9577_)
                     (let ((_ctx9579_ (gx#current-expander-context)))
                       (let ((_name9581_ '#f))
                         (_make-export__opt-lambda9550__1149511496_
                          _bind9576_
                          _phi9577_
                          _ctx9579_
                          _name9581_))))))
              (let ((_make-export__2__1149911502_
                     (lambda (_bind9583_ _phi9584_ _ctx9585_)
                       (let ((_name9587_ '#f))
                         (_make-export__opt-lambda9550__1149511496_
                          _bind9583_
                          _phi9584_
                          _ctx9585_
                          _name9587_)))))
                (let ((_make-export9191_
                       (lambda _g11529_
                         (let ((_g11528_ (length _g11529_)))
                           (cond ((fx= _g11528_ 1)
                                  (apply _make-export__0__1149711500_
                                         _g11529_))
                                 ((fx= _g11528_ 2)
                                  (apply _make-export__1__1149811501_
                                         _g11529_))
                                 ((fx= _g11528_ 3)
                                  (apply _make-export__2__1149911502_
                                         _g11529_))
                                 ((fx= _g11528_ 4)
                                  (apply _make-export__opt-lambda9550__1149511496_
                                         _g11529_))
                                 (else
                                  (error "No clause matching arguments"
                                         _g11529_)))))))
                  (let ((_export-imports9193_
                         (lambda (_src9214_ _r9215_)
                           (let ((_current-ctx9217_
                                  (gx#current-expander-context)))
                             (let ((_current-phi9218_
                                    (gx#current-export-expander-phi)))
                               (let ((_import->export9219_
                                      (lambda (_in9227_)
                                        (let ((_in92289236_ _in9227_))
                                          (let ((_E92309240_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _in92289236_))))
                                            (let ((_K92319247_
                                                   (lambda (_phi9243_
                                                            _key9244_
                                                            _out9245_)
                                                     (if (fx= _phi9243_
                                                              _current-phi9218_)
                                                         (if (eq? _src9214_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##structure-ref
                           _out9245_
                           '1
                           gx#module-export::t
                           '#f))
                     (##structure
                      gx#module-export::t
                      _current-ctx9217_
                      _key9244_
                      _phi9243_
                      _key9244_
                      '#t)
                     '#f)
                 '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##structure-direct-instance-of?
                                                   _in92289236_
                                                   (##type-id
                                                    gx#module-import::t))
                                                  (let ((_e92329250_
                                                         (##vector-ref
                                                          _in92289236_
                                                          '1)))
                                                    (let ((_out9253_
                                                           _e92329250_))
                                                      (let ((_e92339255_
                                                             (##vector-ref
                                                              _in92289236_
                                                              '2)))
                                                        (let ((_key9258_
                                                               _e92339255_))
                                                          (let ((_e92349260_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref _in92289236_ '3)))
                    (let ((_phi9263_ _e92349260_))
                      (_K92319247_ _phi9263_ _key9258_ _out9253_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E92309240_))))))))
                                 (let ((_fold-e9220_
                                        (lambda (_in9222_ _r9223_)
                                          (let ((_out9225_
                                                 (_import->export9219_
                                                  _in9222_)))
                                            (if _out9225_
                                                (cons _out9225_ _r9223_)
                                                _r9223_)))))
                                   (cons (##structure
                                          gx#export-set::t
                                          _src9214_
                                          _current-phi9218_
                                          (foldl1 _fold-e9220_
                                                  '()
                                                  (##structure-ref
                                                   _current-ctx9217_
                                                   '8
                                                   gx#module-context::t
                                                   '#f)))
                                         _r9215_))))))))
                    (let ((_export!9194_
                           (lambda (_rbody9204_)
                             (let ((_current-ctx9206_
                                    (gx#current-expander-context)))
                               (let ((_fold-e9207_
                                      (lambda (_out9211_ _r9212_)
                                        (if (##structure-direct-instance-of?
                                             _out9211_
                                             'gx#module-export::t)
                                            (cons _out9211_ _r9212_)
                                            (if (##structure-direct-instance-of?
                                                 _out9211_
                                                 'gx#export-set::t)
                                                (foldl1 cons
                                                        _r9212_
                                                        (##structure-ref
                                                         _out9211_
                                                         '3
                                                         gx#export-set::t
                                                         '#f))
                                                _r9212_)))))
                                 (let ((_body9209_ (reverse _rbody9204_)))
                                   (begin
                                     (##structure-set!
                                      _current-ctx9206_
                                      (foldl1 _fold-e9207_
                                              (##structure-ref
                                               _current-ctx9206_
                                               '9
                                               gx#module-context::t
                                               '#f)
                                              _body9209_)
                                      '9
                                      gx#module-context::t
                                      '#f)
                                     _body9209_)))))))
                      (let ((_expanded-export?9195_
                             (lambda (_e9199_)
                               (let ((_$e9201_
                                      (##structure-direct-instance-of?
                                       _e9199_
                                       'gx#module-export::t)))
                                 (if _$e9201_
                                     _$e9201_
                                     (##structure-direct-instance-of?
                                      _e9199_
                                      'gx#export-set::t))))))
                        (let ((_expand19192_
                               (lambda (_hd9265_ _K9266_ _rest9267_ _r9268_)
                                 (let ((_e92699301_ _hd9265_))
                                   (let ((_E92969305_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; illegal export"
                                             _stx9188_
                                             _hd9265_))))
                                     (let ((_E92869384_
                                            (lambda ()
                                              (if (gx#stx-pair? _e92699301_)
                                                  (let ((_e92979309_
                                                         (gx#syntax-e
                                                          _e92699301_)))
                                                    (let ((_hd92989312_
                                                           (##car _e92979309_))
                                                          (_tl92999314_
                                                           (##cdr _e92979309_)))
                                                      (if (eq? (gx#stx-e
                                                                _hd92989312_)
                                                               'import:)
                                                          (let ((_in9317_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl92999314_))
                    (if (gx#stx-list? _in9317_)
                        ((letrec ((_lp9319_
                                   (lambda (_in-rest9321_ _r9322_)
                                     (let ((_e93239330_ _in-rest9321_))
                                       (let ((_E93259334_
                                              (lambda ()
                                                (_K9266_ _rest9267_ _r9322_))))
                                         (let ((_E93249380_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _e93239330_)
                                                      (let ((_e93269338_
                                                             (gx#syntax-e
                                                              _e93239330_)))
                                                        (let ((_hd93279341_
                                                               (##car _e93269338_))
                                                              (_tl93289343_
                                                               (##cdr _e93269338_)))
                                                          (let ((_hd9346_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd93279341_))
                    (let ((_in-rest9348_ _tl93289343_))
                      (if '#t
                          (let ((_src9378_
                                 (if (gx#core-bound-module? _hd9346_)
                                     (gx#syntax-local-e__0 _hd9346_)
                                     (if (gx#core-library-module-path?
                                          _hd9346_)
                                         (gx#import-module__0
                                          (gx#core-resolve-library-module-path
                                           _hd9346_))
                                         (if (gx#stx-string? _hd9346_)
                                             (gx#import-module__0
                                              (gx#core-resolve-module-path__opt-lambda10965
                                               _hd9346_
                                               (gx#stx-source _stx9188_)))
                                             (let ((_e93499356_ _hd9346_))
                                               (let ((_E93519360_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; illegal re-export"
                                                         _stx9188_
                                                         _hd9346_))))
                                                 (let ((_E93509374_
                                                        (lambda ()
                                                          (if (gx#stx-pair?
                                                               _e93499356_)
                                                              (let ((_e93529364_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _e93499356_)))
                        (let ((_hd93539367_ (##car _e93529364_))
                              (_tl93549369_ (##cdr _e93529364_)))
                          (if (eq? (gx#stx-e _hd93539367_) 'in:)
                              (let ((_spath9372_ _tl93549369_))
                                (if '#t
                                    (gx#core-import-nested-module
                                     _spath9372_
                                     _stx9188_)
                                    (_E93519360_)))
                              (_E93519360_))))
                      (_E93519360_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (_E93509374_))))))))))
                            (_lp9319_
                             _in-rest9348_
                             (_export-imports9193_ _src9378_ _r9322_)))
                          (_E93259334_))))))
              (_E93259334_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let () (_E93249380_))))))))
                           _lp9319_)
                         _in9317_
                         _r9268_)
                        (_E92969305_)))
                  (_E92969305_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E92969305_)))))
                                       (let ((_E92739423_
                                              (lambda ()
                                                (if (gx#stx-pair? _e92699301_)
                                                    (let ((_e92879388_
                                                           (gx#syntax-e
                                                            _e92699301_)))
                                                      (let ((_hd92889391_
                                                             (##car _e92879388_))
                                                            (_tl92899393_
                                                             (##cdr _e92879388_)))
                                                        (if (eq? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd92889391_)
                         'rename:)
                    (if (gx#stx-pair? _tl92899393_)
                        (let ((_e92909396_ (gx#syntax-e _tl92899393_)))
                          (let ((_hd92919399_ (##car _e92909396_))
                                (_tl92929401_ (##cdr _e92909396_)))
                            (let ((_id9404_ _hd92919399_))
                              (if (gx#stx-pair? _tl92929401_)
                                  (let ((_e92939406_
                                         (gx#syntax-e _tl92929401_)))
                                    (let ((_hd92949409_ (##car _e92939406_))
                                          (_tl92959411_ (##cdr _e92939406_)))
                                      (let ((_name9414_ _hd92949409_))
                                        (if (gx#stx-null? _tl92959411_)
                                            (if '#t
                                                (let ((_phi9416_
                                                       (gx#current-export-expander-phi)))
                                                  (let ((_$e9418_
                                                         (gx#core-resolve-identifier__1
                                                          _id9404_
                                                          _phi9416_)))
                                                    (if _$e9418_
                                                        ((lambda (_bind9421_)
                                                           (_K9266_ _rest9267_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (_make-export__opt-lambda9550__1149511496_
                                   _bind9421_
                                   _phi9416_
                                   (gx#current-expander-context)
                                   _name9414_)
                                  _r9268_)))
                 _$e9418_)
                (gx#raise-syntax-error
                 '#f
                 '"Reference to unbound identifier"
                 _stx9188_
                 _hd9265_
                 _id9404_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E92869384_))
                                            (_E92869384_)))))
                                  (_E92869384_)))))
                        (_E92869384_))
                    (_E92869384_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E92869384_)))))
                                         (let ((_E92729472_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _e92699301_)
                                                      (let ((_e92749427_
                                                             (gx#syntax-e
                                                              _e92699301_)))
                                                        (let ((_hd92759430_
                                                               (##car _e92749427_))
                                                              (_tl92769432_
                                                               (##cdr _e92749427_)))
                                                          (if (eq? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd92759430_)
                           'spec:)
                      (if (gx#stx-pair? _tl92769432_)
                          (let ((_e92779435_ (gx#syntax-e _tl92769432_)))
                            (let ((_hd92789438_ (##car _e92779435_))
                                  (_tl92799440_ (##cdr _e92779435_)))
                              (let ((_phi9443_ _hd92789438_))
                                (if (gx#stx-pair? _tl92799440_)
                                    (let ((_e92809445_
                                           (gx#syntax-e _tl92799440_)))
                                      (let ((_hd92819448_ (##car _e92809445_))
                                            (_tl92829450_ (##cdr _e92809445_)))
                                        (let ((_id9453_ _hd92819448_))
                                          (if (gx#stx-pair? _tl92829450_)
                                              (let ((_e92839455_
                                                     (gx#syntax-e
                                                      _tl92829450_)))
                                                (let ((_hd92849458_
                                                       (##car _e92839455_))
                                                      (_tl92859460_
                                                       (##cdr _e92839455_)))
                                                  (let ((_name9463_
                                                         _hd92849458_))
                                                    (if (gx#stx-null?
                                                         _tl92859460_)
                                                        (if (if (gx#stx-fixnum?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _phi9443_)
                        (if (gx#identifier? _id9453_)
                            (gx#identifier? _name9463_)
                            '#f)
                        '#f)
                    (let ((_phi9465_ (gx#stx-e _phi9443_)))
                      (let ((_$e9467_
                             (gx#core-resolve-identifier__1
                              _id9453_
                              _phi9465_)))
                        (if _$e9467_
                            ((lambda (_bind9470_)
                               (_K9266_ _rest9267_
                                        (cons (_make-export__opt-lambda9550__1149511496_
                                               _bind9470_
                                               _phi9465_
                                               (gx#current-expander-context)
                                               _name9463_)
                                              _r9268_)))
                             _$e9467_)
                            (gx#raise-syntax-error
                             '#f
                             '"Reference to unbound identifier"
                             _stx9188_
                             _hd9265_
                             _id9453_))))
                    (_E92739423_))
                (_E92739423_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E92739423_)))))
                                    (_E92739423_)))))
                          (_E92739423_))
                      (_E92739423_))))
              (_E92739423_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_E92719483_
                                                  (lambda ()
                                                    (let ((_id9476_
                                                           _e92699301_))
                                                      (if (gx#identifier?
                                                           _id9476_)
                                                          (let ((_$e9478_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-resolve-identifier__1
                          _id9476_
                          (gx#current-export-expander-phi))))
                    (if _$e9478_
                        ((lambda (_bind9481_)
                           (_K9266_ _rest9267_
                                    (cons (_make-export__0__1149711500_
                                           _bind9481_)
                                          _r9268_)))
                         _$e9478_)
                        (gx#raise-syntax-error
                         '#f
                         '"Reference to unbound identifier"
                         _stx9188_
                         _hd9265_)))
                  (_E92729472_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_E92709547_
                                                    (lambda ()
                                                      (if (eq? (gx#stx-e
                                                                _e92699301_)
                                                               '#t)
                                                          (if '#t
                                                              (let ((_current-ctx9487_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#current-expander-context)))
                        (let ((_current-phi9489_
                               (gx#current-export-expander-phi)))
                          (let ((_phi-ctx9491_
                                 (gx#core-context-shift
                                  _current-ctx9487_
                                  _current-phi9489_)))
                            (let ((_phi-bind9493_
                                   (table->list
                                    (##structure-ref
                                     _phi-ctx9491_
                                     '2
                                     gx#expander-context::t
                                     '#f))))
                              (let ()
                                ((letrec ((_lp9496_
                                           (lambda (_bind-rest9498_ _set9499_)
                                             (let ((_bind-rest95009510_
                                                    _bind-rest9498_))
                                               (let ((_E95039514_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _bind-rest95009510_))))
                                                 (let ((_else95029518_
                                                        (lambda ()
                                                          (_K9266_ _rest9267_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (##structure
                                  gx#export-set::t
                                  '#f
                                  _current-phi9489_
                                  _set9499_)
                                 _r9268_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_K95049528_
                                                          (lambda (_bind-rest9521_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _bind9522_
                           _key9523_)
                    (if (let ((_$e9525_
                               (##structure-direct-instance-of?
                                _bind9522_
                                'gx#import-binding::t)))
                          (if _$e9525_
                              _$e9525_
                              (gx#private-feature-binding? _bind9522_)))
                        (_lp9496_ _bind-rest9521_ _set9499_)
                        (_lp9496_
                         _bind-rest9521_
                         (cons (_make-export__2__1149911502_
                                _bind9522_
                                _current-phi9489_
                                _current-ctx9487_)
                               _set9499_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##pair? _bind-rest95009510_)
                                                         (let ((_hd95059531_
                                                                (##car _bind-rest95009510_))
                                                               (_tl95069533_
                                                                (##cdr _bind-rest95009510_)))
                                                           (if (##pair? _hd95059531_)
                                                               (let ((_hd95079536_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##car _hd95059531_))
                             (_tl95089538_ (##cdr _hd95059531_)))
                         (let ((_key9541_ _hd95079536_))
                           (let ((_bind9543_ _tl95089538_))
                             (let ((_bind-rest9545_ _tl95069533_))
                               (_K95049528_
                                _bind-rest9545_
                                _bind9543_
                                _key9541_)))))
                       (_else95029518_)))
                 (_else95029518_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _lp9496_)
                                 _phi-bind9493_
                                 '()))))))
                      (_E92719483_))
                  (_E92719483_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let () (_E92709547_))))))))))))
                          (let ((_rbody9197_
                                 (gx#core-expand-import/export
                                  _stx9188_
                                  gx#module-export?
                                  'apply-export-expander
                                  gx#current-export-expander-phi
                                  _expand19192_)))
                            (if _internal-expand?9189_
                                (reverse _rbody9197_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#export
                                  (_export!9194_ _rbody9197_))
                                 (gx#stx-source _stx9188_)))))))))))))))
    (begin
      (define gx#core-expand-export%__0
        (lambda (_stx9597_)
          (let ((_internal-expand?9599_ '#f))
            (gx#core-expand-export%__opt-lambda9186
             _stx9597_
             _internal-expand?9599_))))
      (define gx#core-expand-export%
        (lambda _g11531_
          (let ((_g11530_ (length _g11531_)))
            (cond ((fx= _g11530_ 1) (apply gx#core-expand-export%__0 _g11531_))
                  ((fx= _g11530_ 2)
                   (apply gx#core-expand-export%__opt-lambda9186 _g11531_))
                  (else (error "No clause matching arguments" _g11531_))))))))
  (define gx#core-expand-export-source
    (lambda (_hd9185_)
      (gx#core-expand-export%__opt-lambda9186
       (cons 'export-macro% (cons _hd9185_ '()))
       '#t)))
  (define gx#core-expand-provide%
    (lambda (_stx9155_)
      (let ((_e91569163_ _stx9155_))
        (let ((_E91589167_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e91569163_))))
          (let ((_E91579181_
                 (lambda ()
                   (if (gx#stx-pair? _e91569163_)
                       (let ((_e91599171_ (gx#syntax-e _e91569163_)))
                         (let ((_hd91609174_ (##car _e91599171_))
                               (_tl91619176_ (##cdr _e91599171_)))
                           (let ((_body9179_ _tl91619176_))
                             (if (gx#identifier-list? _body9179_)
                                 (begin
                                   (gx#stx-for-each1
                                    gx#core-bind-feature!
                                    _body9179_)
                                   (gx#core-quote-syntax__1
                                    (gx#core-cons
                                     '%#provide
                                     (gx#stx-map1
                                      gx#core-quote-syntax
                                      _body9179_))
                                    (gx#stx-source _stx9155_)))
                                 (_E91589167_)))))
                       (_E91589167_)))))
            (let () (_E91579181_)))))))
  (begin
    (define gx#core-bind-feature!__opt-lambda9119
      (lambda (_id9121_ _private?9122_ _phi9123_ _ctx9124_)
        (gx#core-bind-syntax!__opt-lambda6212
         _id9121_
         ((if _private?9122_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id9121_))
         _private?9122_
         _phi9123_
         _ctx9124_)))
    (begin
      (define gx#core-bind-feature!__0
        (lambda (_id9129_)
          (let ((_private?9131_ '#f))
            (let ((_phi9133_ (gx#current-expander-phi)))
              (let ((_ctx9135_ (gx#current-expander-context)))
                (gx#core-bind-feature!__opt-lambda9119
                 _id9129_
                 _private?9131_
                 _phi9133_
                 _ctx9135_))))))
      (define gx#core-bind-feature!__1
        (lambda (_id9137_ _private?9138_)
          (let ((_phi9140_ (gx#current-expander-phi)))
            (let ((_ctx9142_ (gx#current-expander-context)))
              (gx#core-bind-feature!__opt-lambda9119
               _id9137_
               _private?9138_
               _phi9140_
               _ctx9142_)))))
      (define gx#core-bind-feature!__2
        (lambda (_id9144_ _private?9145_ _phi9146_)
          (let ((_ctx9148_ (gx#current-expander-context)))
            (gx#core-bind-feature!__opt-lambda9119
             _id9144_
             _private?9145_
             _phi9146_
             _ctx9148_))))
      (define gx#core-bind-feature!
        (lambda _g11533_
          (let ((_g11532_ (length _g11533_)))
            (cond ((fx= _g11532_ 1) (apply gx#core-bind-feature!__0 _g11533_))
                  ((fx= _g11532_ 2) (apply gx#core-bind-feature!__1 _g11533_))
                  ((fx= _g11532_ 3) (apply gx#core-bind-feature!__2 _g11533_))
                  ((fx= _g11532_ 4)
                   (apply gx#core-bind-feature!__opt-lambda9119 _g11533_))
                  (else (error "No clause matching arguments" _g11533_)))))))))
