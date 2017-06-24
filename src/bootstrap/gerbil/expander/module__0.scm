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
    (lambda _$args11501_
      (apply make-struct-instance gx#module-import::t _$args11501_)))
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
    (lambda _$args11498_
      (apply make-struct-instance gx#module-export::t _$args11498_)))
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
    (lambda _$args11495_
      (apply make-struct-instance gx#import-set::t _$args11495_)))
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
    (lambda _$args11492_
      (apply make-struct-instance gx#export-set::t _$args11492_)))
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
    (lambda _$args11489_
      (apply make-struct-instance gx#import-expander::t _$args11489_)))
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
    (lambda _$args11486_
      (apply make-struct-instance gx#export-expander::t _$args11486_)))
  (define gx#current-import-expander-phi (make-parameter '#f))
  (define gx#current-export-expander-phi (make-parameter '#f))
  (define gx#current-module-reader-path (make-parameter '#f))
  (define gx#current-module-reader-args (make-parameter '#f))
  (define gx#module-context:::init!
    (lambda (_self11480_ _id11481_ _super11482_ _ns11483_ _path11484_)
      (struct-instance-init!
       _self11480_
       _id11481_
       (make-hash-table-eq)
       _super11482_
       '#f
       '#f
       _ns11483_
       _path11484_
       '()
       '()
       '#f
       '#f)))
  (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
  (begin
    (define gx#prelude-context:::init!__opt-lambda11444
      (lambda (_self11446_ _ctx11447_ _root11448_)
        (let ((_super11456_
               (let ((_$e11450_ _root11448_))
                 (if _$e11450_
                     _$e11450_
                     (let ((_$e11453_ (gx#core-context-root__0)))
                       (if _$e11453_
                           _$e11453_
                           (make-struct-instance gx#root-context::t)))))))
          (if _ctx11447_
              (let ((_id11459_
                     (##structure-ref
                      _ctx11447_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path11460_
                     (##structure-ref _ctx11447_ '7 gx#module-context::t '#f))
                    (_in11461_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx11447_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e11462_
                     (make-promise (lambda () (gx#eval-module _ctx11447_)))))
                (begin
                  (struct-instance-init!
                   _self11446_
                   _id11459_
                   (make-hash-table-eq)
                   _super11456_
                   '#f
                   '#f
                   _path11460_
                   _in11461_
                   _e11462_)
                  (for-each
                   (lambda (_g1146311465_)
                     (gx#core-bind-weak-import!__opt-lambda10798
                      _g1146311465_
                      _self11446_))
                   _in11461_)))
              (struct-instance-init!
               _self11446_
               '#f
               (make-hash-table-eq)
               _super11456_
               '#f
               '#f
               '#f
               '()
               '#f)))))
    (begin
      (define gx#prelude-context:::init!__0
        (lambda (_self11471_ _ctx11472_)
          (let ((_root11474_ '#f))
            (gx#prelude-context:::init!__opt-lambda11444
             _self11471_
             _ctx11472_
             _root11474_))))
      (define gx#prelude-context:::init!
        (lambda _g11517_
          (let ((_g11516_ (length _g11517_)))
            (cond ((fx= _g11516_ 2)
                   (apply gx#prelude-context:::init!__0 _g11517_))
                  ((fx= _g11516_ 3)
                   (apply gx#prelude-context:::init!__opt-lambda11444
                          _g11517_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#prelude-context:::init!
                    _g11517_))))))))
  (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
  (define gx#import-expander:::init!
    (lambda (_self11442_ _e11443_)
      (struct-instance-init!
       _self11442_
       _e11443_
       (gx#current-expander-context)
       (fx- (gx#current-expander-phi) '1))))
  (bind-method! gx#import-expander::t ':init! gx#import-expander:::init! '#f)
  (define gx#export-expander:::init!
    (lambda (_self11439_ _e11440_)
      (struct-instance-init!
       _self11439_
       _e11440_
       (gx#current-expander-context)
       (fx- (gx#current-expander-phi) '1))))
  (bind-method! gx#export-expander::t ':init! gx#export-expander:::init! '#f)
  (define gx#import-expander::apply-import-expander
    (lambda (_g1143111434_ _g1143211436_)
      (gx#core-apply-user-expander__opt-lambda4797
       _g1143111434_
       _g1143211436_
       'apply-import-expander)))
  (bind-method!
   gx#import-expander::t
   'apply-import-expander
   gx#import-expander::apply-import-expander
   '#f)
  (define gx#export-expander::apply-export-expander
    (lambda (_g1142411427_ _g1142511429_)
      (gx#core-apply-user-expander__opt-lambda4797
       _g1142411427_
       _g1142511429_
       'apply-export-expander)))
  (bind-method!
   gx#export-expander::t
   'apply-export-expander
   gx#export-expander::apply-export-expander
   '#f)
  (define gx#module-source-path
    (lambda (_ctx11418_)
      (let ((_path11420_
             (##structure-ref _ctx11418_ '7 gx#module-context::t '#f)))
        (let ((_path11422_
               (if (pair? _path11420_) (last _path11420_) _path11420_)))
          (let () (if (string? _path11422_) _path11422_ '#f))))))
  (begin
    (define gx#import-module__opt-lambda11392
      (lambda (_path11394_ _reload?11395_ _eval?11396_)
        (let ((_ctx11398_
               ((gx#current-expander-module-import)
                _path11394_
                _reload?11395_)))
          (begin
            (if (if _ctx11398_ _eval?11396_ '#f)
                (gx#eval-module _ctx11398_)
                '#!void)
            _ctx11398_))))
    (begin
      (define gx#import-module__0
        (lambda (_path11403_)
          (let ((_reload?11405_ '#f))
            (let ((_eval?11407_ '#f))
              (gx#import-module__opt-lambda11392
               _path11403_
               _reload?11405_
               _eval?11407_)))))
      (define gx#import-module__1
        (lambda (_path11409_ _reload?11410_)
          (let ((_eval?11412_ '#f))
            (gx#import-module__opt-lambda11392
             _path11409_
             _reload?11410_
             _eval?11412_))))
      (define gx#import-module
        (lambda _g11519_
          (let ((_g11518_ (length _g11519_)))
            (cond ((fx= _g11518_ 1) (apply gx#import-module__0 _g11519_))
                  ((fx= _g11518_ 2) (apply gx#import-module__1 _g11519_))
                  ((fx= _g11518_ 3)
                   (apply gx#import-module__opt-lambda11392 _g11519_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#import-module
                    _g11519_))))))))
  (define gx#eval-module
    (lambda (_mod11391_) ((gx#current-expander-module-eval) _mod11391_)))
  (define gx#core-eval-module
    (lambda (_obj11376_)
      (let ((_force-e11378_
             (lambda (_getf11387_ _e11388_)
               (call-with-parameters
                (lambda () (force (_getf11387_ _e11388_)))
                gx#current-expander-context
                _e11388_
                gx#current-expander-phi
                '0))))
        ((letrec ((_recur11380_
                   (lambda (_e11382_)
                     (if (##structure-instance-of?
                          _e11382_
                          'gx#module-context::t)
                         (begin
                           (let ((_$e11384_
                                  (gx#core-context-prelude__opt-lambda11357
                                   _e11382_)))
                             (if _$e11384_ (_recur11380_ _$e11384_) '#!void))
                           (_force-e11378_ gx#module-context-e _e11382_))
                         (if (##structure-instance-of?
                              _e11382_
                              'gx#prelude-context::t)
                             (_force-e11378_ gx#prelude-context-e _e11382_)
                             (if (gx#stx-string? _e11382_)
                                 (_recur11380_
                                  (gx#import-module__0
                                   (gx#core-resolve-module-path__0 _e11382_)))
                                 (if (gx#core-library-module-path? _e11382_)
                                     (_recur11380_
                                      (gx#import-module__0
                                       (gx#core-resolve-library-module-path
                                        _e11382_)))
                                     (error '"Cannot eval module"
                                            _obj11376_))))))))
           _recur11380_)
         _obj11376_))))
  (begin
    (define gx#core-context-prelude__opt-lambda11357
      (lambda (_ctx11359_)
        ((letrec ((_lp11361_
                   (lambda (_e11363_)
                     (if (let ((_$e11365_
                                (##structure-instance-of?
                                 _e11363_
                                 'gx#module-context::t)))
                           (if _$e11365_
                               _$e11365_
                               (##structure-instance-of?
                                _e11363_
                                'gx#local-context::t)))
                         (_lp11361_
                          (##structure-ref _e11363_ '3 gx#phi-context::t '#f))
                         (if (##structure-instance-of?
                              _e11363_
                              'gx#prelude-context::t)
                             _e11363_
                             '#f)))))
           _lp11361_)
         _ctx11359_)))
    (begin
      (define gx#core-context-prelude__0
        (lambda ()
          (let ((_ctx11372_ (gx#current-expander-context)))
            (gx#core-context-prelude__opt-lambda11357 _ctx11372_))))
      (define gx#core-context-prelude
        (lambda _g11521_
          (let ((_g11520_ (length _g11521_)))
            (cond ((fx= _g11520_ 0)
                   (apply gx#core-context-prelude__0 _g11521_))
                  ((fx= _g11520_ 1)
                   (apply gx#core-context-prelude__opt-lambda11357 _g11521_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-prelude
                    _g11521_))))))))
  (define gx#core-module->prelude-context
    (lambda (_ctx11349_)
      (let ((_ht11351_ (gx#current-expander-module-registry)))
        (let ((_$e11353_ (table-ref _ht11351_ _ctx11349_ '#f)))
          (if _$e11353_
              (values _$e11353_)
              (let ((_pre11356_
                     (let ((__obj11512 (make-object gx#prelude-context::t '8)))
                       (begin
                         (gx#prelude-context:::init!__0 __obj11512 _ctx11349_)
                         __obj11512))))
                (begin
                  (table-set! _ht11351_ _ctx11349_ _pre11356_)
                  _pre11356_)))))))
  (begin
    (define gx#core-import-module__opt-lambda11301
      (lambda (_rpath11303_ _reload?11304_)
        (let ((_import-source11306_
               (lambda (_path11318_)
                 (begin
                   (if (member _path11318_ (gx#current-expander-path))
                       (error '"Cyclic expansion" _path11318_)
                       '#!void)
                   (call-with-parameters
                    (lambda ()
                      (let ((_g11522_ (gx#core-read-module _path11318_)))
                        (begin
                          (let ((_g11523_ (values-count _g11522_)))
                            (if (not (fx= _g11523_ 4))
                                (error "Context expects 4 values" _g11523_)))
                          (let ((_pre11321_ (values-ref _g11522_ 0))
                                (_id11322_ (values-ref _g11522_ 1))
                                (_ns11323_ (values-ref _g11522_ 2))
                                (_body11324_ (values-ref _g11522_ 3)))
                            (let ((_prelude11329_
                                   (if (##structure-instance-of?
                                        _pre11321_
                                        'gx#prelude-context::t)
                                       _pre11321_
                                       (if (##structure-instance-of?
                                            _pre11321_
                                            'gx#module-context::t)
                                           (gx#core-module->prelude-context
                                            _pre11321_)
                                           (if (string? _pre11321_)
                                               (gx#core-module->prelude-context
                                                (gx#core-import-module__0
                                                 _pre11321_))
                                               (if (not _pre11321_)
                                                   (let ((_$e11326_
                                                          (gx#current-expander-module-prelude)))
                                                     (if _$e11326_
                                                         _$e11326_
                                                         (let ((__obj11513
                                                                (make-object
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#prelude-context::t
                         '8)))
                   (begin
                     (gx#prelude-context:::init!__0 __obj11513 '#f)
                     __obj11513))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (error '"Cannot import module; unknown prelude"
                                                          _rpath11303_
                                                          _pre11321_)))))))
                              (let ((_ctx11331_
                                     (let ((__obj11514
                                            (make-object
                                             gx#module-context::t
                                             '11)))
                                       (begin
                                         (gx#module-context:::init!
                                          __obj11514
                                          _id11322_
                                          _prelude11329_
                                          _ns11323_
                                          _path11318_)
                                         __obj11514))))
                                (let ((_body11333_
                                       (gx#core-expand-module-begin
                                        _body11324_
                                        _ctx11331_)))
                                  (let ((_body11335_
                                         (gx#core-quote-syntax__opt-lambda4150
                                          (gx#core-cons '%#begin _body11333_)
                                          _path11318_
                                          _ctx11331_
                                          '())))
                                    (let ()
                                      (begin
                                        (##structure-set!
                                         _ctx11331_
                                         (make-promise
                                          (lambda ()
                                            (gx#eval-syntax* _body11335_)))
                                         '10
                                         gx#module-context::t
                                         '#f)
                                        (##structure-set!
                                         _ctx11331_
                                         _body11335_
                                         '11
                                         gx#module-context::t
                                         '#f)
                                        (table-set!
                                         (gx#current-expander-module-registry)
                                         _path11318_
                                         _ctx11331_)
                                        (table-set!
                                         (gx#current-expander-module-registry)
                                         _id11322_
                                         _ctx11331_)
                                        _ctx11331_))))))))))
                    gx#current-expander-context
                    (gx#core-context-root__0)
                    gx#current-expander-marks
                    '()
                    gx#current-expander-phi
                    '0
                    gx#current-expander-path
                    (cons _path11318_ (gx#current-expander-path))
                    gx#current-import-expander-phi
                    '#f
                    gx#current-export-expander-phi
                    '#f)))))
          (let ((_$e11308_
                 (if (not _reload?11304_)
                     (table-ref
                      (gx#current-expander-module-registry)
                      _rpath11303_
                      '#f)
                     '#f)))
            (if _$e11308_
                (values _$e11308_)
                (if (gx#core-library-module-path? _rpath11303_)
                    (let ((_ctx11311_
                           (gx#core-import-module__opt-lambda11301
                            (gx#core-resolve-library-module-path _rpath11303_)
                            _reload?11304_)))
                      (begin
                        (table-set!
                         (gx#current-expander-module-registry)
                         _rpath11303_
                         _ctx11311_)
                        _ctx11311_))
                    (let ((_npath11313_ (path-normalize _rpath11303_)))
                      (let ((_$e11315_
                             (if (not _reload?11304_)
                                 (table-ref
                                  (gx#current-expander-module-registry)
                                  _npath11313_
                                  '#f)
                                 '#f)))
                        (if _$e11315_
                            (values _$e11315_)
                            (_import-source11306_ _npath11313_))))))))))
    (begin
      (define gx#core-import-module__0
        (lambda (_rpath11342_)
          (let ((_reload?11344_ '#f))
            (gx#core-import-module__opt-lambda11301
             _rpath11342_
             _reload?11344_))))
      (define gx#core-import-module
        (lambda _g11525_
          (let ((_g11524_ (length _g11525_)))
            (cond ((fx= _g11524_ 1) (apply gx#core-import-module__0 _g11525_))
                  ((fx= _g11524_ 2)
                   (apply gx#core-import-module__opt-lambda11301 _g11525_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-import-module
                    _g11525_))))))))
  (define gx#core-read-module
    (lambda (_path11297_)
      (with-exception-catcher
       (lambda (_exn11299_)
         (if (if (datum-parsing-exception? _exn11299_)
                 (eq? (datum-parsing-exception-filepos _exn11299_) '0)
                 '#f)
             (gx#core-read-module/lang _path11297_)
             (raise _exn11299_)))
       (lambda () (gx#core-read-module/sexp _path11297_)))))
  (define gx#core-read-module/sexp
    (lambda (_path11161_)
      ((letrec ((_lp11163_
                 (lambda (_body11165_ _pre11166_ _ns11167_ _pkg11168_)
                   (let ((_e1116911193_ _body11165_))
                     (let ((_E1118511211_
                            (lambda ()
                              (let ((_prelude11197_
                                     (if (gx#core-bound-module-prelude?
                                          _pre11166_)
                                         (gx#syntax-local-e__0 _pre11166_)
                                         (if (gx#core-library-module-path?
                                              _pre11166_)
                                             (gx#core-resolve-library-module-path
                                              _pre11166_)
                                             (if (gx#stx-string? _pre11166_)
                                                 (gx#core-resolve-module-path__opt-lambda10974
                                                  _pre11166_
                                                  _path11161_)
                                                 (gx#stx-e _pre11166_))))))
                                (let ((_path-id11199_
                                       (gx#core-module-path->namespace
                                        _path11161_)))
                                  (let ((_pkg-id11201_
                                         (if _pkg11168_
                                             (string-append
                                              _pkg11168_
                                              '"/"
                                              _path-id11199_)
                                             _path-id11199_)))
                                    (let ((_module-id11203_
                                           (string->symbol _pkg-id11201_)))
                                      (let ((_module-ns11208_
                                             (let ((_$e11205_ _ns11167_))
                                               (if _$e11205_
                                                   _$e11205_
                                                   _pkg-id11201_))))
                                        (let ()
                                          (values _prelude11197_
                                                  _module-id11203_
                                                  _module-ns11208_
                                                  _body11165_))))))))))
                       (let ((_E1117811240_
                              (lambda ()
                                (if (gx#stx-pair? _e1116911193_)
                                    (let ((_e1118611215_
                                           (gx#syntax-e _e1116911193_)))
                                      (let ((_hd1118711218_
                                             (##car _e1118611215_))
                                            (_tl1118811220_
                                             (##cdr _e1118611215_)))
                                        (if (eq? (gx#stx-e _hd1118711218_)
                                                 'package:)
                                            (if (gx#stx-pair? _tl1118811220_)
                                                (let ((_e1118911223_
                                                       (gx#syntax-e
                                                        _tl1118811220_)))
                                                  (let ((_hd1119011226_
                                                         (##car _e1118911223_))
                                                        (_tl1119111228_
                                                         (##cdr _e1118911223_)))
                                                    (let ((_pkg11231_
                                                           _hd1119011226_))
                                                      (let ((_rest11233_
                                                             _tl1119111228_))
                                                        (if '#t
                                                            (let ((_pkg11238_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if (gx#identifier? _pkg11231_)
                               (symbol->string (gx#stx-e _pkg11231_))
                               (if (let ((_$e11235_
                                          (gx#stx-string? _pkg11231_)))
                                     (if _$e11235_
                                         _$e11235_
                                         (gx#stx-false? _pkg11231_)))
                                   (gx#stx-e _pkg11231_)
                                   (gx#raise-syntax-error
                                    'import
                                    '"Bad syntax; Illegal package name"
                                    _pkg11231_)))))
                      (_lp11163_ _rest11233_ _pre11166_ _ns11167_ _pkg11238_))
                    (_E1118511211_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1118511211_))
                                            (_E1118511211_))))
                                    (_E1118511211_)))))
                         (let ((_E1117111269_
                                (lambda ()
                                  (if (gx#stx-pair? _e1116911193_)
                                      (let ((_e1117911244_
                                             (gx#syntax-e _e1116911193_)))
                                        (let ((_hd1118011247_
                                               (##car _e1117911244_))
                                              (_tl1118111249_
                                               (##cdr _e1117911244_)))
                                          (if (eq? (gx#stx-e _hd1118011247_)
                                                   'namespace:)
                                              (if (gx#stx-pair? _tl1118111249_)
                                                  (let ((_e1118211252_
                                                         (gx#syntax-e
                                                          _tl1118111249_)))
                                                    (let ((_hd1118311255_
                                                           (##car _e1118211252_))
                                                          (_tl1118411257_
                                                           (##cdr _e1118211252_)))
                                                      (let ((_ns11260_
                                                             _hd1118311255_))
                                                        (let ((_rest11262_
                                                               _tl1118411257_))
                                                          (if '#t
                                                              (let ((_ns11267_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (gx#identifier? _ns11260_)
                                 (symbol->string (gx#stx-e _ns11260_))
                                 (if (let ((_$e11264_
                                            (gx#stx-string? _ns11260_)))
                                       (if _$e11264_
                                           _$e11264_
                                           (gx#stx-false? _ns11260_)))
                                     (gx#stx-e _ns11260_)
                                     (gx#raise-syntax-error
                                      'import
                                      '"Bad syntax; illegal namespace"
                                      _ns11260_)))))
                        (_lp11163_
                         _rest11262_
                         _pre11166_
                         _ns11267_
                         _pkg11168_))
                      (_E1117811240_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1117811240_))
                                              (_E1117811240_))))
                                      (_E1117811240_)))))
                           (let ((_E1117011293_
                                  (lambda ()
                                    (if (gx#stx-pair? _e1116911193_)
                                        (let ((_e1117211273_
                                               (gx#syntax-e _e1116911193_)))
                                          (let ((_hd1117311276_
                                                 (##car _e1117211273_))
                                                (_tl1117411278_
                                                 (##cdr _e1117211273_)))
                                            (if (eq? (gx#stx-e _hd1117311276_)
                                                     'prelude:)
                                                (if (gx#stx-pair?
                                                     _tl1117411278_)
                                                    (let ((_e1117511281_
                                                           (gx#syntax-e
                                                            _tl1117411278_)))
                                                      (let ((_hd1117611284_
                                                             (##car _e1117511281_))
                                                            (_tl1117711286_
                                                             (##cdr _e1117511281_)))
                                                        (let ((_prelude11289_
                                                               _hd1117611284_))
                                                          (let ((_rest11291_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1117711286_))
                    (if '#t
                        (_lp11163_
                         _rest11291_
                         _prelude11289_
                         _ns11167_
                         _pkg11168_)
                        (_E1117111269_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1117111269_))
                                                (_E1117111269_))))
                                        (_E1117111269_)))))
                             (let () (_E1117011293_))))))))))
         _lp11163_)
       (read-syntax-from-file _path11161_)
       '#f
       '#f
       '#f)))
  (define gx#core-read-module/lang
    (lambda (_path11001_)
      (let ((_read-body11003_
             (lambda (_inp11084_ _pre11085_ _pkg11086_ _ns11087_ _args11088_)
               (let ((_prelude11090_ (gx#import-module__0 _pre11085_)))
                 (let ((_read-module-body11144_
                        (let ((_$e11136_
                               (find (lambda (_e1109111093_)
                                       (let ((_g1109511105_ _e1109111093_))
                                         (let ((_E1109811109_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _g1109511105_))))
                                           (let ((_else1109711113_
                                                  (lambda () '#f)))
                                             (let ((_K1109911117_
                                                    (lambda () '#t)))
                                               (if (##structure-direct-instance-of?
                                                    _g1109511105_
                                                    (##type-id
                                                     gx#module-export::t))
                                                   (let ((_e1110011120_
                                                          (##vector-ref
                                                           _g1109511105_
                                                           '1)))
                                                     (let ((_e1110111123_
                                                            (##vector-ref
                                                             _g1109511105_
                                                             '2)))
                                                       (let ((_e1110211126_
                                                              (##vector-ref
                                                               _g1109511105_
                                                               '3)))
                                                         (if (##eq? _e1110211126_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                     (let ((_e1110311129_ (##vector-ref _g1109511105_ '4)))
                       (if ((lambda (_g1113111133_)
                              (eq? _g1113111133_ 'read-module-body))
                            _e1110311129_)
                           (_K1109911117_)
                           (_else1109711113_)))
                     (_else1109711113_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_else1109711113_)))))))
                                     (##structure-ref
                                      _prelude11090_
                                      '9
                                      gx#module-context::t
                                      '#f))))
                          (if _$e11136_
                              ((lambda (_xport11139_)
                                 (let ((_proc11142_
                                        (with-exception-catcher
                                         void
                                         (lambda ()
                                           (gx#eval-syntax__0
                                            (##structure-ref
                                             (gx#core-resolve-module-export
                                              _xport11139_)
                                             '1
                                             gx#binding::t
                                             '#f))))))
                                   (if (procedure? _proc11142_)
                                       _proc11142_
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Illegal #lang prelude; read-module-body is not a procedure"
                                        _path11001_
                                        _pre11085_
                                        _proc11142_))))
                               _$e11136_)
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang prelude; does not export read-module-body for syntax"
                               _path11001_
                               _pre11085_)))))
                   (let ((_path-id11146_
                          (gx#core-module-path->namespace _path11001_)))
                     (let ((_pkg-id11148_
                            (if _pkg11086_
                                (string-append _pkg11086_ '"/" _path-id11146_)
                                _path-id11146_)))
                       (let ((_module-id11150_ (string->symbol _pkg-id11148_)))
                         (let ((_module-ns11155_
                                (let ((_$e11152_ _ns11087_))
                                  (if _$e11152_ _$e11152_ _pkg-id11148_))))
                           (let ((_body11158_
                                  (call-with-parameters
                                   (lambda ()
                                     (_read-module-body11144_ _inp11084_))
                                   gx#current-module-reader-path
                                   _path11001_
                                   gx#current-module-reader-args
                                   _args11088_)))
                             (let ()
                               (values _prelude11090_
                                       _module-id11150_
                                       _module-ns11155_
                                       _body11158_))))))))))))
        (let ((_string-e11004_
               (lambda (_obj11081_ _what11082_)
                 (if (string? _obj11081_)
                     _obj11081_
                     (if (symbol? _obj11081_)
                         (symbol->string _obj11081_)
                         (gx#raise-syntax-error
                          '#f
                          (string-append '"Illegal module " _what11082_)
                          _path11001_
                          _obj11081_))))))
          (let ((_read-lang-args11005_
                 (lambda (_inp11036_ _args11037_)
                   (let ((_args1103811046_ _args11037_))
                     (let ((_E1104111050_
                            (lambda ()
                              (error '"No clause matching" _args1103811046_))))
                       (let ((_else1104011054_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Illegal #lang arguments; missing prelude"
                                 _path11001_))))
                         (let ((_K1104211069_
                                (lambda (_args11057_ _prelude11058_)
                                  (let ((_pkg11060_
                                         (pgetq 'package: _args11057_)))
                                    (let ((_pkg11062_
                                           (if _pkg11060_
                                               (_string-e11004_
                                                _pkg11060_
                                                '"package")
                                               '#f)))
                                      (let ((_ns11064_
                                             (pgetq 'namespace: _args11057_)))
                                        (let ((_ns11066_
                                               (if _ns11064_
                                                   (_string-e11004_
                                                    _ns11064_
                                                    '"namespace")
                                                   '#f)))
                                          (let ()
                                            (_read-body11003_
                                             _inp11036_
                                             _prelude11058_
                                             _pkg11062_
                                             _ns11066_
                                             _args11057_)))))))))
                           (if (##pair? _args1103811046_)
                               (let ((_hd1104311072_ (##car _args1103811046_))
                                     (_tl1104411074_ (##cdr _args1103811046_)))
                                 (let ((_prelude11077_ _hd1104311072_))
                                   (let ((_args11079_ _tl1104411074_))
                                     (_K1104211069_
                                      _args11079_
                                      _prelude11077_))))
                               (_else1104011054_)))))))))
            (let ((_read-lang11006_
                   (lambda (_inp11011_)
                     (let ((_head11013_ (read-line _inp11011_)))
                       (let ((_$e11015_ (string-index _head11013_ '#\space)))
                         (if _$e11015_
                             ((lambda (_ix11018_)
                                (let ((_lang11020_
                                       (substring _head11013_ '0 _ix11018_)))
                                  (if (equal? _lang11020_ '"#lang")
                                      (let ((_rest11022_
                                             (substring
                                              _head11013_
                                              (fx+ _ix11018_ '1)
                                              (string-length _head11013_))))
                                        (let ((_args11033_
                                               (with-exception-catcher
                                                (lambda (_g1102311025_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Illegal #lang arguments"
                                                   _path11001_
                                                   _g1102311025_))
                                                (lambda ()
                                                  (call-with-input-string
                                                   _rest11022_
                                                   (lambda (_g1102811030_)
                                                     (read-all
                                                      _g1102811030_
                                                      read)))))))
                                          (let ()
                                            (_read-lang-args11005_
                                             _inp11011_
                                             _args11033_))))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Illegal module syntax"
                                       _path11001_))))
                              _$e11015_)
                             (gx#raise-syntax-error
                              '#f
                              '"Illegal module syntax"
                              _path11001_)))))))
              (let ((_read-e11007_
                     (lambda (_inp11009_)
                       (if (eq? (peek-char _inp11009_) '#\#)
                           (_read-lang11006_ _inp11009_)
                           (gx#raise-syntax-error
                            '#f
                            '"Illegal module syntax"
                            _path11001_)))))
                (call-with-input-file _path11001_ _read-e11007_))))))))
  (define gx#core-module-path->namespace
    (lambda (_path10999_)
      (path-strip-extension (path-strip-directory _path10999_))))
  (define gx#core-module-path->id
    (lambda (_path10997_)
      (string->symbol (gx#core-module-path->namespace _path10997_))))
  (begin
    (define gx#core-resolve-module-path__opt-lambda10974
      (lambda (_stx-path10976_ _rel10977_)
        (let ((_path10979_ (gx#stx-e _stx-path10976_)))
          (let ((_path10981_
                 (if (string-empty? (path-extension _path10979_))
                     (string-append _path10979_ '".ss")
                     _path10979_)))
            (let ()
              (gx#core-resolve-path__opt-lambda4114
               _path10981_
               (let ((_$e10984_ (gx#stx-source _stx-path10976_)))
                 (if _$e10984_ _$e10984_ _rel10977_))))))))
    (begin
      (define gx#core-resolve-module-path__0
        (lambda (_stx-path10990_)
          (let ((_rel10992_ '#f))
            (gx#core-resolve-module-path__opt-lambda10974
             _stx-path10990_
             _rel10992_))))
      (define gx#core-resolve-module-path
        (lambda _g11527_
          (let ((_g11526_ (length _g11527_)))
            (cond ((fx= _g11526_ 1)
                   (apply gx#core-resolve-module-path__0 _g11527_))
                  ((fx= _g11526_ 2)
                   (apply gx#core-resolve-module-path__opt-lambda10974
                          _g11527_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-resolve-module-path
                    _g11527_))))))))
  (define gx#core-resolve-library-module-path
    (lambda (_libpath10916_)
      (let ((_spath10918_ (symbol->string (gx#stx-e _libpath10916_))))
        (let ((_spath10920_
               (substring _spath10918_ '1 (string-length _spath10918_))))
          (let ((_ext10922_ (path-extension _spath10920_)))
            (let ((_ssi10924_
                   (if (string-empty? _ext10922_)
                       (string-append _spath10920_ '".ssi")
                       (string-append
                        (path-strip-extension _spath10920_)
                        '".ssi"))))
              (let ((_src10926_
                     (if (string-empty? _ext10922_)
                         (string-append _spath10920_ '".ss")
                         _spath10920_)))
                (let ()
                  ((letrec ((_lp10929_
                             (lambda (_rest10931_)
                               (let ((_rest1093210941_ _rest10931_))
                                 (let ((_E1093510945_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _rest1093210941_))))
                                   (let ((_try-match1093410953_
                                          (lambda ()
                                            (let ((_K1093610950_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Cannot find library module"
                                                      _libpath10916_))))
                                              (if (##null? _rest1093210941_)
                                                  (_K1093610950_)
                                                  (_E1093510945_))))))
                                     (let ((_K1093710963_
                                            (lambda (_rest10956_ _dir10957_)
                                              (let ((_compiled-path10959_
                                                     (path-expand
                                                      _ssi10924_
                                                      _dir10957_)))
                                                (if (file-exists?
                                                     _compiled-path10959_)
                                                    (path-normalize
                                                     _compiled-path10959_)
                                                    (let ((_src-path10961_
                                                           (path-expand
                                                            _src10926_
                                                            _dir10957_)))
                                                      (if (file-exists?
                                                           _src-path10961_)
                                                          (path-normalize
                                                           _src-path10961_)
                                                          (_lp10929_
                                                           _rest10956_))))))))
                                       (if (##pair? _rest1093210941_)
                                           (let ((_hd1093810966_
                                                  (##car _rest1093210941_))
                                                 (_tl1093910968_
                                                  (##cdr _rest1093210941_)))
                                             (let ((_dir10971_ _hd1093810966_))
                                               (let ((_rest10973_
                                                      _tl1093910968_))
                                                 (_K1093710963_
                                                  _rest10973_
                                                  _dir10971_))))
                                           (_try-match1093410953_)))))))))
                     _lp10929_)
                   (gx#current-expander-module-library-path))))))))))
  (define gx#core-library-module-path?
    (lambda (_stx10914_) (gx#core-special-module-path? _stx10914_ '#\:)))
  (define gx#core-special-module-path?
    (lambda (_stx10909_ _char10910_)
      (if (gx#identifier? _stx10909_)
          (if (interned-symbol? (gx#stx-e _stx10909_))
              (let ((_str10912_ (symbol->string (gx#stx-e _stx10909_))))
                (if (fx> (string-length _str10912_) '1)
                    (eq? (string-ref _str10912_ '0) _char10910_)
                    '#f))
              '#f)
          '#f)))
  (define gx#core-bound-prelude?
    (lambda (_stx10903_)
      (gx#core-bound-identifier?__opt-lambda4204
       _stx10903_
       (lambda (_g1090410906_)
         (gx#expander-binding?__opt-lambda4241
          _g1090410906_
          gx#prelude-context?)))))
  (define gx#core-bound-module?
    (lambda (_stx10897_)
      (gx#core-bound-identifier?__opt-lambda4204
       _stx10897_
       (lambda (_g1089810900_)
         (gx#expander-binding?__opt-lambda4241
          _g1089810900_
          gx#module-context?)))))
  (define gx#core-bound-module-prelude?
    (lambda (_stx10884_)
      (let ((_module-prelude?10886_
             (lambda (_e10892_)
               (let ((_$e10894_
                      (##structure-instance-of?
                       _e10892_
                       'gx#module-context::t)))
                 (if _$e10894_
                     _$e10894_
                     (##structure-instance-of?
                      _e10892_
                      'gx#prelude-context::t))))))
        (gx#core-bound-identifier?__opt-lambda4204
         _stx10884_
         (lambda (_g1088710889_)
           (gx#expander-binding?__opt-lambda4241
            _g1088710889_
            _module-prelude?10886_))))))
  (begin
    (define gx#core-bind-import!__opt-lambda10812
      (lambda (_in10814_ _ctx10815_ _force-weak?10816_)
        (let ((_in1081710826_ _in10814_))
          (let ((_E1081910830_
                 (lambda () (error '"No clause matching" _in1081710826_))))
            (let ((_K1082010843_
                   (lambda (_weak?10833_ _phi10834_ _key10835_ _source10836_)
                     (gx#core-bind!__opt-lambda4480
                      _key10835_
                      (let ((_e10838_
                             (gx#core-resolve-module-export _source10836_)))
                        (##structure
                         gx#import-binding::t
                         (##structure-ref _e10838_ '1 gx#binding::t '#f)
                         _key10835_
                         _phi10834_
                         _e10838_
                         (##direct-structure-ref
                          _source10836_
                          '1
                          gx#module-export::t
                          '#f)
                         (let ((_$e10840_ _force-weak?10816_))
                           (if _$e10840_ _$e10840_ _weak?10833_))))
                      gx#core-context-rebind?
                      _phi10834_
                      _ctx10815_))))
              (if (##structure-direct-instance-of?
                   _in1081710826_
                   (##type-id gx#module-import::t))
                  (let ((_e1082110846_ (##vector-ref _in1081710826_ '1)))
                    (let ((_source10849_ _e1082110846_))
                      (let ((_e1082210851_ (##vector-ref _in1081710826_ '2)))
                        (let ((_key10854_ _e1082210851_))
                          (let ((_e1082310856_
                                 (##vector-ref _in1081710826_ '3)))
                            (let ((_phi10859_ _e1082310856_))
                              (let ((_e1082410861_
                                     (##vector-ref _in1081710826_ '4)))
                                (let ((_weak?10864_ _e1082410861_))
                                  (_K1082010843_
                                   _weak?10864_
                                   _phi10859_
                                   _key10854_
                                   _source10849_)))))))))
                  (_E1081910830_)))))))
    (begin
      (define gx#core-bind-import!__0
        (lambda (_in10869_)
          (let ((_ctx10871_ (gx#current-expander-context)))
            (let ((_force-weak?10873_ '#f))
              (gx#core-bind-import!__opt-lambda10812
               _in10869_
               _ctx10871_
               _force-weak?10873_)))))
      (define gx#core-bind-import!__1
        (lambda (_in10875_ _ctx10876_)
          (let ((_force-weak?10878_ '#f))
            (gx#core-bind-import!__opt-lambda10812
             _in10875_
             _ctx10876_
             _force-weak?10878_))))
      (define gx#core-bind-import!
        (lambda _g11529_
          (let ((_g11528_ (length _g11529_)))
            (cond ((fx= _g11528_ 1) (apply gx#core-bind-import!__0 _g11529_))
                  ((fx= _g11528_ 2) (apply gx#core-bind-import!__1 _g11529_))
                  ((fx= _g11528_ 3)
                   (apply gx#core-bind-import!__opt-lambda10812 _g11529_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-import!
                    _g11529_))))))))
  (begin
    (define gx#core-bind-weak-import!__opt-lambda10798
      (lambda (_in10800_ _ctx10801_)
        (gx#core-bind-import!__opt-lambda10812 _in10800_ _ctx10801_ '#t)))
    (begin
      (define gx#core-bind-weak-import!__0
        (lambda (_in10806_)
          (let ((_ctx10808_ (gx#current-expander-context)))
            (gx#core-bind-weak-import!__opt-lambda10798
             _in10806_
             _ctx10808_))))
      (define gx#core-bind-weak-import!
        (lambda _g11531_
          (let ((_g11530_ (length _g11531_)))
            (cond ((fx= _g11530_ 1)
                   (apply gx#core-bind-weak-import!__0 _g11531_))
                  ((fx= _g11530_ 2)
                   (apply gx#core-bind-weak-import!__opt-lambda10798 _g11531_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-weak-import!
                    _g11531_))))))))
  (define gx#core-resolve-module-export
    (lambda (_out10691_)
      (let ((_subst10693_
             (lambda (_key10739_)
               (let ((_key1074010748_ _key10739_))
                 (let ((_E1074310752_
                        (lambda ()
                          (error '"No clause matching" _key1074010748_))))
                   (let ((_else1074210756_ (lambda () _key10739_)))
                     (let ((_K1074410787_
                            (lambda (_mark10759_ _id10760_)
                              (let ((_mark1076110767_ _mark10759_))
                                (let ((_E1076310771_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _mark1076110767_))))
                                  (let ((_K1076410779_
                                         (lambda (_subst10774_)
                                           (let ((_$e10776_
                                                  (if _subst10774_
                                                      (table-ref
                                                       _subst10774_
                                                       _id10760_
                                                       '#f)
                                                      '#f)))
                                             (if _$e10776_
                                                 _$e10776_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal key; missing substitution"
                                                  _key10739_))))))
                                    (if (##structure-instance-of?
                                         _mark1076110767_
                                         (##type-id gx#expander-mark::t))
                                        (let ((_e1076510782_
                                               (##vector-ref
                                                _mark1076110767_
                                                '1)))
                                          (let ((_subst10785_ _e1076510782_))
                                            (_K1076410779_ _subst10785_)))
                                        (_E1076310771_))))))))
                       (if (##pair? _key1074010748_)
                           (let ((_hd1074510790_ (##car _key1074010748_))
                                 (_tl1074610792_ (##cdr _key1074010748_)))
                             (let ((_id10795_ _hd1074510790_))
                               (let ((_mark10797_ _tl1074610792_))
                                 (_K1074410787_ _mark10797_ _id10795_))))
                           (_else1074210756_)))))))))
        (let ((_out1069410704_ _out10691_))
          (let ((_E1069610708_
                 (lambda () (error '"No clause matching" _out1069410704_))))
            (let ((_K1069710715_
                   (lambda (_phi10711_ _key10712_ _ctx10713_)
                     (gx#core-context-resolve
                      (gx#core-context-shift _ctx10713_ _phi10711_)
                      (_subst10693_ _key10712_)))))
              (if (##structure-direct-instance-of?
                   _out1069410704_
                   (##type-id gx#module-export::t))
                  (let ((_e1069810718_ (##vector-ref _out1069410704_ '1)))
                    (let ((_ctx10721_ _e1069810718_))
                      (let ((_e1069910723_ (##vector-ref _out1069410704_ '2)))
                        (let ((_key10726_ _e1069910723_))
                          (let ((_e1070010728_
                                 (##vector-ref _out1069410704_ '3)))
                            (let ((_phi10731_ _e1070010728_))
                              (let ((_e1070110733_
                                     (##vector-ref _out1069410704_ '4)))
                                (let ((_e1070210736_
                                       (##vector-ref _out1069410704_ '5)))
                                  (_K1069710715_
                                   _phi10731_
                                   _key10726_
                                   _ctx10721_)))))))))
                  (_E1069610708_))))))))
  (begin
    (define gx#core-module-export->import__opt-lambda10614
      (lambda (_out10616_ _rename10617_ _dphi10618_)
        (let ((_out1061910629_ _out10616_))
          (let ((_E1062110633_
                 (lambda () (error '"No clause matching" _out1061910629_))))
            (let ((_K1062210645_
                   (lambda (_weak?10636_
                            _name10637_
                            _phi10638_
                            _key10639_
                            _ctx10640_)
                     (##structure
                      gx#module-import::t
                      _out10616_
                      (let ((_$e10642_ _rename10617_))
                        (if _$e10642_ _$e10642_ _name10637_))
                      (fx+ _phi10638_ _dphi10618_)
                      _weak?10636_))))
              (if (##structure-direct-instance-of?
                   _out1061910629_
                   (##type-id gx#module-export::t))
                  (let ((_e1062310648_ (##vector-ref _out1061910629_ '1)))
                    (let ((_ctx10651_ _e1062310648_))
                      (let ((_e1062410653_ (##vector-ref _out1061910629_ '2)))
                        (let ((_key10656_ _e1062410653_))
                          (let ((_e1062510658_
                                 (##vector-ref _out1061910629_ '3)))
                            (let ((_phi10661_ _e1062510658_))
                              (let ((_e1062610663_
                                     (##vector-ref _out1061910629_ '4)))
                                (let ((_name10666_ _e1062610663_))
                                  (let ((_e1062710668_
                                         (##vector-ref _out1061910629_ '5)))
                                    (let ((_weak?10671_ _e1062710668_))
                                      (_K1062210645_
                                       _weak?10671_
                                       _name10666_
                                       _phi10661_
                                       _key10656_
                                       _ctx10651_)))))))))))
                  (_E1062110633_)))))))
    (begin
      (define gx#core-module-export->import__0
        (lambda (_out10676_)
          (let ((_rename10678_ '#f))
            (let ((_dphi10680_ '0))
              (gx#core-module-export->import__opt-lambda10614
               _out10676_
               _rename10678_
               _dphi10680_)))))
      (define gx#core-module-export->import__1
        (lambda (_out10682_ _rename10683_)
          (let ((_dphi10685_ '0))
            (gx#core-module-export->import__opt-lambda10614
             _out10682_
             _rename10683_
             _dphi10685_))))
      (define gx#core-module-export->import
        (lambda _g11533_
          (let ((_g11532_ (length _g11533_)))
            (cond ((fx= _g11532_ 1)
                   (apply gx#core-module-export->import__0 _g11533_))
                  ((fx= _g11532_ 2)
                   (apply gx#core-module-export->import__1 _g11533_))
                  ((fx= _g11532_ 3)
                   (apply gx#core-module-export->import__opt-lambda10614
                          _g11533_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-module-export->import
                    _g11533_))))))))
  (define gx#core-expand-module%
    (lambda (_stx10544_)
      (let ((_make-context10546_
             (lambda (_id10597_)
               (let ((_super10599_ (gx#current-expander-context)))
                 (let ((_bind-id10601_ (gx#stx-e _id10597_)))
                   (let ((_mod-id10603_
                          (if (##structure-instance-of?
                               _super10599_
                               'gx#module-context::t)
                              (make-symbol
                               (##structure-ref
                                _super10599_
                                '1
                                gx#expander-context::t
                                '#f)
                               '"::"
                               _bind-id10601_)
                              _bind-id10601_)))
                     (let ((_ns10605_ (symbol->string _mod-id10603_)))
                       (let ((_path10612_
                              (if (##structure-instance-of?
                                   _super10599_
                                   'gx#module-context::t)
                                  (let ((_path10607_
                                         (##structure-ref
                                          _super10599_
                                          '7
                                          gx#module-context::t
                                          '#f)))
                                    (if (let ((_$e10609_ (pair? _path10607_)))
                                          (if _$e10609_
                                              _$e10609_
                                              (null? _path10607_)))
                                        (cons _bind-id10601_ _path10607_)
                                        (if (not _path10607_)
                                            _bind-id10601_
                                            (cons _bind-id10601_
                                                  (cons _path10607_ '())))))
                                  _bind-id10601_)))
                         (let ()
                           (let ((__obj11515
                                  (make-object gx#module-context::t '11)))
                             (begin
                               (gx#module-context:::init!
                                __obj11515
                                _mod-id10603_
                                _super10599_
                                _ns10605_
                                _path10612_)
                               __obj11515)))))))))))
        (let ((_e1054710557_ _stx10544_))
          (let ((_E1054910561_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e1054710557_))))
            (let ((_E1054810593_
                   (lambda ()
                     (if (gx#stx-pair? _e1054710557_)
                         (let ((_e1055010565_ (gx#syntax-e _e1054710557_)))
                           (let ((_hd1055110568_ (##car _e1055010565_))
                                 (_tl1055210570_ (##cdr _e1055010565_)))
                             (if (gx#stx-pair? _tl1055210570_)
                                 (let ((_e1055310573_
                                        (gx#syntax-e _tl1055210570_)))
                                   (let ((_hd1055410576_ (##car _e1055310573_))
                                         (_tl1055510578_
                                          (##cdr _e1055310573_)))
                                     (let ((_id10581_ _hd1055410576_))
                                       (let ((_body10583_ _tl1055510578_))
                                         (if (if (gx#identifier? _id10581_)
                                                 (gx#stx-list? _body10583_)
                                                 '#f)
                                             (let ((_ctx10585_
                                                    (_make-context10546_
                                                     _id10581_)))
                                               (let ((_body10587_
                                                      (gx#core-expand-module-begin
                                                       _body10583_
                                                       _ctx10585_)))
                                                 (let ((_body10589_
                                                        (gx#core-quote-syntax__1
                                                         (gx#core-cons
                                                          '%#begin
                                                          _body10587_)
                                                         (gx#stx-source
                                                          _stx10544_))))
                                                   (let ()
                                                     (begin
                                                       (##structure-set!
                                                        _ctx10585_
                                                        (make-promise
                                                         (lambda ()
                                                           (gx#eval-syntax*
                                                            _body10589_)))
                                                        '10
                                                        gx#module-context::t
                                                        '#f)
                                                       (##structure-set!
                                                        _ctx10585_
                                                        _body10589_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)
                                                       (gx#core-bind-syntax!__0
                                                        _id10581_
                                                        _ctx10585_)
                                                       (gx#core-quote-syntax__1
                                                        (gx#core-list
                                                         '%#module
                                                         (gx#core-quote-syntax__0
                                                          _id10581_)
                                                         _body10589_)
                                                        (gx#stx-source
                                                         _stx10544_)))))))
                                             (_E1054910561_))))))
                                 (_E1054910561_))))
                         (_E1054910561_)))))
              (let () (_E1054810593_))))))))
  (define gx#core-expand-module-begin
    (lambda (_body10510_ _ctx10511_)
      (call-with-parameters
       (lambda ()
         (begin
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let ((_stx10514_
                  (gx#core-expand-head (cons '%%begin-module _body10510_))))
             (let ((_e1051510522_ _stx10514_))
               (let ((_E1051710526_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module body expansion"
                         _stx10514_))))
                 (let ((_E1051610540_
                        (lambda ()
                          (if (gx#stx-pair? _e1051510522_)
                              (let ((_e1051810530_
                                     (gx#syntax-e _e1051510522_)))
                                (let ((_hd1051910533_ (##car _e1051810530_))
                                      (_tl1052010535_ (##cdr _e1051810530_)))
                                  (if (if (gx#identifier? _hd1051910533_)
                                          (gx#core-identifier=?
                                           _hd1051910533_
                                           '%#begin-module)
                                          '#f)
                                      (let ((_body10538_ _tl1052010535_))
                                        (if '#t
                                            (if (gx#sealed-syntax? _stx10514_)
                                                _body10538_
                                                (gx#core-expand-module-body
                                                 _body10538_))
                                            (_E1051710526_)))
                                      (_E1051710526_))))
                              (_E1051710526_)))))
                   (let () (_E1051610540_))))))))
       gx#current-expander-context
       _ctx10511_
       gx#current-expander-phi
       '0)))
  (define gx#core-expand-module-body
    (lambda (_body10306_)
      (let ((_expand-special10308_
             (lambda (_hd10437_ _K10438_ _rest10439_ _r10440_)
               (let ((_e1044110458_ _hd10437_))
                 (let ((_E1045310462_
                        (lambda ()
                          (_K10438_
                           _rest10439_
                           (cons (gx#core-expand-top _hd10437_) _r10440_)))))
                   (let ((_E1044310474_
                          (lambda ()
                            (if (gx#stx-pair? _e1044110458_)
                                (let ((_e1045410466_
                                       (gx#syntax-e _e1044110458_)))
                                  (let ((_hd1045510469_ (##car _e1045410466_))
                                        (_tl1045610471_ (##cdr _e1045410466_)))
                                    (if (if (gx#identifier? _hd1045510469_)
                                            (gx#core-identifier=?
                                             _hd1045510469_
                                             '%#export)
                                            '#f)
                                        (if '#t
                                            (_K10438_
                                             _rest10439_
                                             (cons _hd10437_ _r10440_))
                                            (_E1045310462_))
                                        (_E1045310462_))))
                                (_E1045310462_)))))
                     (let ((_E1044210506_
                            (lambda ()
                              (if (gx#stx-pair? _e1044110458_)
                                  (let ((_e1044410478_
                                         (gx#syntax-e _e1044110458_)))
                                    (let ((_hd1044510481_
                                           (##car _e1044410478_))
                                          (_tl1044610483_
                                           (##cdr _e1044410478_)))
                                      (if (if (gx#identifier? _hd1044510481_)
                                              (gx#core-identifier=?
                                               _hd1044510481_
                                               '%#define-values)
                                              '#f)
                                          (if (gx#stx-pair? _tl1044610483_)
                                              (let ((_e1044710486_
                                                     (gx#syntax-e
                                                      _tl1044610483_)))
                                                (let ((_hd1044810489_
                                                       (##car _e1044710486_))
                                                      (_tl1044910491_
                                                       (##cdr _e1044710486_)))
                                                  (let ((_hd-bind10494_
                                                         _hd1044810489_))
                                                    (if (gx#stx-pair?
                                                         _tl1044910491_)
                                                        (let ((_e1045010496_
                                                               (gx#syntax-e
                                                                _tl1044910491_)))
                                                          (let ((_hd1045110499_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1045010496_))
                        (_tl1045210501_ (##cdr _e1045010496_)))
                    (let ((_expr10504_ _hd1045110499_))
                      (if (gx#stx-null? _tl1045210501_)
                          (if (gx#core-bind-values? _hd-bind10494_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind10494_)
                                (_K10438_
                                 _rest10439_
                                 (cons _hd10437_ _r10440_)))
                              (_E1044310474_))
                          (_E1044310474_)))))
                (_E1044310474_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1044310474_))
                                          (_E1044310474_))))
                                  (_E1044310474_)))))
                       (let () (_E1044210506_)))))))))
        (let ((_expand-body10309_
               (lambda (_rbody10311_)
                 ((letrec ((_lp10313_
                            (lambda (_rest10315_ _body10316_)
                              (let ((_rest1031710325_ _rest10315_))
                                (let ((_E1032010329_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _rest1031710325_))))
                                  (let ((_else1031910333_
                                         (lambda () _body10316_)))
                                    (let ((_K1032110425_
                                           (lambda (_rest10336_ _hd10337_)
                                             (let ((_e1033810359_ _hd10337_))
                                               (let ((_E1035410363_
                                                      (lambda ()
                                                        (_lp10313_
                                                         _rest10336_
                                                         (cons (gx#core-expand-expression
                                                                _hd10337_)
                                                               _body10316_)))))
                                                 (let ((_E1035010377_
                                                        (lambda ()
                                                          (if (gx#stx-pair?
                                                               _e1033810359_)
                                                              (let ((_e1035510367_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _e1033810359_)))
                        (let ((_hd1035610370_ (##car _e1035510367_))
                              (_tl1035710372_ (##cdr _e1035510367_)))
                          (let ((_form10375_ _hd1035610370_))
                            (if (gx#core-bound-identifier?__opt-lambda4204
                                 _form10375_
                                 gx#special-form-binding?)
                                (_lp10313_
                                 _rest10336_
                                 (cons _hd10337_ _body10316_))
                                (_E1035410363_)))))
                      (_E1035410363_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_E1034010389_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e1033810359_)
                        (let ((_e1035110381_ (gx#syntax-e _e1033810359_)))
                          (let ((_hd1035210384_ (##car _e1035110381_))
                                (_tl1035310386_ (##cdr _e1035110381_)))
                            (if (if (gx#identifier? _hd1035210384_)
                                    (gx#core-identifier=?
                                     _hd1035210384_
                                     '%#export)
                                    '#f)
                                (if '#t
                                    (_lp10313_
                                     _rest10336_
                                     (cons (gx#core-expand-export%__0
                                            _hd10337_)
                                           _body10316_))
                                    (_E1035010377_))
                                (_E1035010377_))))
                        (_E1035010377_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_E1033910421_
                                                            (lambda ()
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e1033810359_)
                          (let ((_e1034110393_ (gx#syntax-e _e1033810359_)))
                            (let ((_hd1034210396_ (##car _e1034110393_))
                                  (_tl1034310398_ (##cdr _e1034110393_)))
                              (if (if (gx#identifier? _hd1034210396_)
                                      (gx#core-identifier=?
                                       _hd1034210396_
                                       '%#define-values)
                                      '#f)
                                  (if (gx#stx-pair? _tl1034310398_)
                                      (let ((_e1034410401_
                                             (gx#syntax-e _tl1034310398_)))
                                        (let ((_hd1034510404_
                                               (##car _e1034410401_))
                                              (_tl1034610406_
                                               (##cdr _e1034410401_)))
                                          (let ((_hd-bind10409_
                                                 _hd1034510404_))
                                            (if (gx#stx-pair? _tl1034610406_)
                                                (let ((_e1034710411_
                                                       (gx#syntax-e
                                                        _tl1034610406_)))
                                                  (let ((_hd1034810414_
                                                         (##car _e1034710411_))
                                                        (_tl1034910416_
                                                         (##cdr _e1034710411_)))
                                                    (let ((_expr10419_
                                                           _hd1034810414_))
                                                      (if (gx#stx-null?
                                                           _tl1034910416_)
                                                          (if '#t
                                                              (_lp10313_
                                                               _rest10336_
                                                               (cons (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#core-list
                               '%#define-values
                               (gx#core-quote-bind-values _hd-bind10409_)
                               (gx#core-expand-expression _expr10419_))
                              (gx#stx-source _hd10337_))
                             _body10316_))
                      (_E1034010389_))
                  (_E1034010389_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1034010389_)))))
                                      (_E1034010389_))
                                  (_E1034010389_))))
                          (_E1034010389_)))))
               (let () (_E1033910421_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (##pair? _rest1031710325_)
                                          (let ((_hd1032210428_
                                                 (##car _rest1031710325_))
                                                (_tl1032310430_
                                                 (##cdr _rest1031710325_)))
                                            (let ((_hd10433_ _hd1032210428_))
                                              (let ((_rest10435_
                                                     _tl1032310430_))
                                                (_K1032110425_
                                                 _rest10435_
                                                 _hd10433_))))
                                          (_else1031910333_)))))))))
                    _lp10313_)
                  _rbody10311_
                  '()))))
          (_expand-body10309_
           (gx#core-expand-block__opt-lambda5258
            (cons '%#begin-module _body10306_)
            _expand-special10308_
            '#f
            values))))))
  (define gx#core-expand-import/export
    (lambda (_stx10149_
             _expanded?10150_
             _method10151_
             _current-phi10152_
             _expand110153_)
      (letrec ((_K10155_
                (lambda (_rest10273_ _r10274_)
                  (let ((_e1027510282_ _rest10273_))
                    (let ((_E1027710286_ (lambda () _r10274_)))
                      (let ((_E1027610302_
                             (lambda ()
                               (if (gx#stx-pair? _e1027510282_)
                                   (let ((_e1027810290_
                                          (gx#syntax-e _e1027510282_)))
                                     (let ((_hd1027910293_
                                            (##car _e1027810290_))
                                           (_tl1028010295_
                                            (##cdr _e1027810290_)))
                                       (let ((_hd10298_ _hd1027910293_))
                                         (let ((_rest10300_ _tl1028010295_))
                                           (if '#t
                                               (_step10156_
                                                _hd10298_
                                                _rest10300_
                                                _r10274_)
                                               (_E1027710286_))))))
                                   (_E1027710286_)))))
                        (let () (_E1027610302_)))))))
               (_step10156_
                (lambda (_hd10187_ _rest10188_ _r10189_)
                  (let ((_e1019010208_ _hd10187_))
                    (let ((_E1020310212_
                           (lambda ()
                             (if (_expanded?10150_ (gx#stx-e _hd10187_))
                                 (_K10155_
                                  _rest10188_
                                  (cons (gx#stx-e _hd10187_) _r10189_))
                                 (_expand110153_
                                  _hd10187_
                                  _K10155_
                                  _rest10188_
                                  _r10189_)))))
                      (let ((_E1019910228_
                             (lambda ()
                               (if (gx#stx-pair? _e1019010208_)
                                   (let ((_e1020410216_
                                          (gx#syntax-e _e1019010208_)))
                                     (let ((_hd1020510219_
                                            (##car _e1020410216_))
                                           (_tl1020610221_
                                            (##cdr _e1020410216_)))
                                       (let ((_macro10224_ _hd1020510219_))
                                         (let ((_body10226_ _tl1020610221_))
                                           (if (gx#core-bound-identifier?__opt-lambda4204
                                                _macro10224_
                                                gx#syntax-binding?)
                                               (_K10155_
                                                (cons (gx#core-apply-expander__opt-lambda4976
                                                       (gx#syntax-local-e__0
                                                        _macro10224_)
                                                       _hd10187_
                                                       _method10151_)
                                                      _rest10188_)
                                                _r10189_)
                                               (_E1020310212_))))))
                                   (_E1020310212_)))))
                        (let ((_E1019210242_
                               (lambda ()
                                 (if (gx#stx-pair? _e1019010208_)
                                     (let ((_e1020010232_
                                            (gx#syntax-e _e1019010208_)))
                                       (let ((_hd1020110235_
                                              (##car _e1020010232_))
                                             (_tl1020210237_
                                              (##cdr _e1020010232_)))
                                         (if (eq? (gx#stx-e _hd1020110235_)
                                                  'begin:)
                                             (let ((_body10240_
                                                    _tl1020210237_))
                                               (if '#t
                                                   (_K10155_
                                                    (gx#stx-foldr
                                                     cons
                                                     _rest10188_
                                                     _body10240_)
                                                    _r10189_)
                                                   (_E1019910228_)))
                                             (_E1019910228_))))
                                     (_E1019910228_)))))
                          (let ((_E1019110269_
                                 (lambda ()
                                   (if (gx#stx-pair? _e1019010208_)
                                       (let ((_e1019310246_
                                              (gx#syntax-e _e1019010208_)))
                                         (let ((_hd1019410249_
                                                (##car _e1019310246_))
                                               (_tl1019510251_
                                                (##cdr _e1019310246_)))
                                           (if (eq? (gx#stx-e _hd1019410249_)
                                                    'phi:)
                                               (if (gx#stx-pair?
                                                    _tl1019510251_)
                                                   (let ((_e1019610254_
                                                          (gx#syntax-e
                                                           _tl1019510251_)))
                                                     (let ((_hd1019710257_
                                                            (##car _e1019610254_))
                                                           (_tl1019810259_
                                                            (##cdr _e1019610254_)))
                                                       (let ((_dphi10262_
                                                              _hd1019710257_))
                                                         (let ((_body10264_
                                                                _tl1019810259_))
                                                           (if (gx#stx-fixnum?
                                                                _dphi10262_)
                                                               (let ((_rbody10267_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (call-with-parameters
                               (lambda () (_K10155_ _body10264_ '()))
                               _current-phi10152_
                               (fx+ (gx#stx-e _dphi10262_)
                                    (_current-phi10152_)))))
                         (_K10155_
                          _rest10188_
                          (foldr1 cons _r10189_ _rbody10267_)))
                       (_E1019210242_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1019210242_))
                                               (_E1019210242_))))
                                       (_E1019210242_)))))
                            (let () (_E1019110269_))))))))))
        (let ((_e1015710164_ _stx10149_))
          (let ((_E1015910168_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e1015710164_))))
            (let ((_E1015810183_
                   (lambda ()
                     (if (gx#stx-pair? _e1015710164_)
                         (let ((_e1016010172_ (gx#syntax-e _e1015710164_)))
                           (let ((_hd1016110175_ (##car _e1016010172_))
                                 (_tl1016210177_ (##cdr _e1016010172_)))
                             (let ((_body10180_ _tl1016210177_))
                               (if '#t
                                   (if (_current-phi10152_)
                                       (_K10155_ _body10180_ '())
                                       (call-with-parameters
                                        (lambda () (_K10155_ _body10180_ '()))
                                        _current-phi10152_
                                        (gx#current-expander-phi)))
                                   (_E1015910168_)))))
                         (_E1015910168_)))))
              (let () (_E1015810183_))))))))
  (begin
    (define gx#core-expand-import%__opt-lambda9686
      (lambda (_stx9688_ _internal-expand?9689_)
        (let ((_import19692_
               (lambda (_ctx10123_ _K10124_ _rest10125_ _r10126_)
                 (let ((_dphi10128_
                        (fx- (gx#current-import-expander-phi)
                             (gx#current-expander-phi))))
                   (_K10124_
                    _rest10125_
                    (cons (##structure
                           gx#import-set::t
                           _ctx10123_
                           _dphi10128_
                           (map (lambda (_g1012910131_)
                                  (gx#core-module-export->import__opt-lambda10614
                                   _g1012910131_
                                   '#f
                                   _dphi10128_))
                                (##structure-ref
                                 _ctx10123_
                                 '9
                                 gx#module-context::t
                                 '#f)))
                          _r10126_))))))
          (let ((_import-spec?9693_
                 (lambda (_hd10080_)
                   (let ((_e1008110091_ _hd10080_))
                     (let ((_E1008310095_ (lambda () '#f)))
                       (let ((_E1008210119_
                              (lambda ()
                                (if (gx#stx-pair? _e1008110091_)
                                    (let ((_e1008410099_
                                           (gx#syntax-e _e1008110091_)))
                                      (let ((_hd1008510102_
                                             (##car _e1008410099_))
                                            (_tl1008610104_
                                             (##cdr _e1008410099_)))
                                        (if (eq? (gx#stx-e _hd1008510102_)
                                                 'spec:)
                                            (if (gx#stx-pair? _tl1008610104_)
                                                (let ((_e1008710107_
                                                       (gx#syntax-e
                                                        _tl1008610104_)))
                                                  (let ((_hd1008810110_
                                                         (##car _e1008710107_))
                                                        (_tl1008910112_
                                                         (##cdr _e1008710107_)))
                                                    (let ((_spath10115_
                                                           _hd1008810110_))
                                                      (let ((_specs10117_
                                                             _tl1008910112_))
                                                        (if '#t
                                                            '#t
                                                            (_E1008310095_))))))
                                                (_E1008310095_))
                                            (_E1008310095_))))
                                    (_E1008310095_)))))
                         (let () (_E1008210119_))))))))
            (let ((_import-submodule?9694_
                   (lambda (_hd10037_)
                     (let ((_e1003810048_ _hd10037_))
                       (let ((_E1004010052_ (lambda () '#f)))
                         (let ((_E1003910076_
                                (lambda ()
                                  (if (gx#stx-pair? _e1003810048_)
                                      (let ((_e1004110056_
                                             (gx#syntax-e _e1003810048_)))
                                        (let ((_hd1004210059_
                                               (##car _e1004110056_))
                                              (_tl1004310061_
                                               (##cdr _e1004110056_)))
                                          (if (eq? (gx#stx-e _hd1004210059_)
                                                   'in:)
                                              (if (gx#stx-pair? _tl1004310061_)
                                                  (let ((_e1004410064_
                                                         (gx#syntax-e
                                                          _tl1004310061_)))
                                                    (let ((_hd1004510067_
                                                           (##car _e1004410064_))
                                                          (_tl1004610069_
                                                           (##cdr _e1004410064_)))
                                                      (let ((_top10072_
                                                             _hd1004510067_))
                                                        (let ((_sub10074_
                                                               _tl1004610069_))
                                                          (if '#t
                                                              '#t
                                                              (_E1004010052_))))))
                                                  (_E1004010052_))
                                              (_E1004010052_))))
                                      (_E1004010052_)))))
                           (let () (_E1003910076_))))))))
              (let ((_import-runtime?9695_
                     (lambda (_hd9994_)
                       (let ((_e999510005_ _hd9994_))
                         (let ((_E999710009_ (lambda () '#f)))
                           (let ((_E999610033_
                                  (lambda ()
                                    (if (gx#stx-pair? _e999510005_)
                                        (let ((_e999810013_
                                               (gx#syntax-e _e999510005_)))
                                          (let ((_hd999910016_
                                                 (##car _e999810013_))
                                                (_tl1000010018_
                                                 (##cdr _e999810013_)))
                                            (if (eq? (gx#stx-e _hd999910016_)
                                                     'runtime:)
                                                (if (gx#stx-pair?
                                                     _tl1000010018_)
                                                    (let ((_e1000110021_
                                                           (gx#syntax-e
                                                            _tl1000010018_)))
                                                      (let ((_hd1000210024_
                                                             (##car _e1000110021_))
                                                            (_tl1000310026_
                                                             (##cdr _e1000110021_)))
                                                        (let ((_top10029_
                                                               _hd1000210024_))
                                                          (let ((_spath10031_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1000310026_))
                    (if '#t '#t (_E999710009_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E999710009_))
                                                (_E999710009_))))
                                        (_E999710009_)))))
                             (let () (_E999610033_))))))))
                (let ((_import-spec-source9699_
                       (lambda (_spath9765_)
                         (gx#core-import-nested-module
                          _spath9765_
                          _stx9688_))))
                  (let ((_import!9700_
                         (lambda (_rbody9713_)
                           (let ((_current-ctx9715_
                                  (gx#current-expander-context)))
                             (let ((_deps9716_ (make-hash-table-eq)))
                               (let ((_bind!9717_
                                      (lambda (_hd9763_)
                                        (begin
                                          (gx#core-bind-import!__1
                                           _hd9763_
                                           _current-ctx9715_)
                                          (if (if (fxpositive?
                                                   (##direct-structure-ref
                                                    _hd9763_
                                                    '3
                                                    gx#module-import::t
                                                    '#f))
                                                  (fxzero? (##direct-structure-ref
                                                            (##direct-structure-ref
                                                             _hd9763_
                                                             '1
                                                             gx#module-import::t
                                                             '#f)
                                                            '3
                                                            gx#module-export::t
                                                            '#f))
                                                  '#f)
                                              (table-set!
                                               _deps9716_
                                               (##direct-structure-ref
                                                (##direct-structure-ref
                                                 _hd9763_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)
                                                '1
                                                gx#module-export::t
                                                '#f)
                                               '#t)
                                              '#!void)))))
                                 (let ((_fold-e9718_
                                        (lambda (_in9760_ _r9761_)
                                          (if (##structure-direct-instance-of?
                                               _in9760_
                                               'gx#module-import::t)
                                              (cons _in9760_ _r9761_)
                                              (if (##structure-direct-instance-of?
                                                   _in9760_
                                                   'gx#import-set::t)
                                                  (foldl1 cons
                                                          _r9761_
                                                          (##direct-structure-ref
                                                           _in9760_
                                                           '3
                                                           gx#import-set::t
                                                           '#f))
                                                  _r9761_)))))
                                   ((letrec ((_lp9720_
                                              (lambda (_rest9722_ _body9723_)
                                                (let ((_rest97249732_
                                                       _rest9722_))
                                                  (let ((_E97279736_
                                                         (lambda ()
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _rest97249732_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_else97269742_
                                                           (lambda ()
                                                             (begin
                                                               (if (##structure-instance-of?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _current-ctx9715_
                            'gx#module-context::t)
                           (##structure-set!
                            _current-ctx9715_
                            (foldl1 _fold-e9718_
                                    (##structure-ref
                                     _current-ctx9715_
                                     '8
                                     gx#module-context::t
                                     '#f)
                                    _body9723_)
                            '8
                            gx#module-context::t
                            '#f)
                           '#!void)
                       (table-for-each
                        (lambda (_ctx9740_ _g11534_)
                          (gx#eval-module _ctx9740_))
                        _deps9716_)
                       _body9723_))))
              (let ((_K97289748_
                     (lambda (_rest9745_ _hd9746_)
                       (begin
                         (if (##structure-direct-instance-of?
                              _hd9746_
                              'gx#module-import::t)
                             (_bind!9717_ _hd9746_)
                             (if (##structure-direct-instance-of?
                                  _hd9746_
                                  'gx#import-set::t)
                                 (for-each
                                  _bind!9717_
                                  (##direct-structure-ref
                                   _hd9746_
                                   '3
                                   gx#import-set::t
                                   '#f))
                                 (if (##structure-instance-of?
                                      _hd9746_
                                      'gx#module-context::t)
                                     '#!void
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Unexpected import"
                                      _stx9688_
                                      _hd9746_))))
                         (_lp9720_ _rest9745_ (cons _hd9746_ _body9723_))))))
                (if (##pair? _rest97249732_)
                    (let ((_hd97299751_ (##car _rest97249732_))
                          (_tl97309753_ (##cdr _rest97249732_)))
                      (let ((_hd9756_ _hd97299751_))
                        (let ((_rest9758_ _tl97309753_))
                          (_K97289748_ _rest9758_ _hd9756_))))
                    (_else97269742_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _lp9720_)
                                    _rbody9713_
                                    '()))))))))
                    (let ((_expanded-import?9701_
                           (lambda (_e9705_)
                             (let ((_$e9707_
                                    (##structure-direct-instance-of?
                                     _e9705_
                                     'gx#import-set::t)))
                               (if _$e9707_
                                   _$e9707_
                                   (let ((_$e9710_
                                          (##structure-direct-instance-of?
                                           _e9705_
                                           'gx#module-import::t)))
                                     (if _$e9710_
                                         _$e9710_
                                         (##structure-instance-of?
                                          _e9705_
                                          'gx#module-context::t))))))))
                      (let ((_import-submodule9696_
                             (lambda (_hd9961_ _K9962_ _rest9963_ _r9964_)
                               (let ((_e99659972_ _hd9961_))
                                 (let ((_E99679976_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _e99659972_))))
                                   (let ((_E99669990_
                                          (lambda ()
                                            (if (gx#stx-pair? _e99659972_)
                                                (let ((_e99689980_
                                                       (gx#syntax-e
                                                        _e99659972_)))
                                                  (let ((_hd99699983_
                                                         (##car _e99689980_))
                                                        (_tl99709985_
                                                         (##cdr _e99689980_)))
                                                    (let ((_spath9988_
                                                           _tl99709985_))
                                                      (if '#t
                                                          (_import19692_
                                                           (_import-spec-source9699_
                                                            _spath9988_)
                                                           _K9962_
                                                           _rest9963_
                                                           _r9964_)
                                                          (_E99679976_)))))
                                                (_E99679976_)))))
                                     (let () (_E99669990_))))))))
                        (let ((_import-runtime9697_
                               (lambda (_hd9928_ _K9929_ _rest9930_ _r9931_)
                                 (let ((_e99329939_ _hd9928_))
                                   (let ((_E99349943_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _e99329939_))))
                                     (let ((_E99339957_
                                            (lambda ()
                                              (if (gx#stx-pair? _e99329939_)
                                                  (let ((_e99359947_
                                                         (gx#syntax-e
                                                          _e99329939_)))
                                                    (let ((_hd99369950_
                                                           (##car _e99359947_))
                                                          (_tl99379952_
                                                           (##cdr _e99359947_)))
                                                      (let ((_spath9955_
                                                             _tl99379952_))
                                                        (if '#t
                                                            (_K9929_ _rest9930_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (_import-spec-source9699_ _spath9955_)
                                   _r9931_))
                    (_E99349943_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E99349943_)))))
                                       (let () (_E99339957_))))))))
                          (let ((_import-spec9698_
                                 (lambda (_hd9767_ _K9768_ _rest9769_ _r9770_)
                                   (let ((_e97719788_ _hd9767_))
                                     (let ((_E97809792_
                                            (lambda ()
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _e97719788_))))
                                       (let ((_E97739902_
                                              (lambda ()
                                                (if (gx#stx-pair? _e97719788_)
                                                    (let ((_e97819796_
                                                           (gx#syntax-e
                                                            _e97719788_)))
                                                      (let ((_hd97829799_
                                                             (##car _e97819796_))
                                                            (_tl97839801_
                                                             (##cdr _e97819796_)))
                                                        (if (gx#stx-pair?
                                                             _tl97839801_)
                                                            (let ((_e97849804_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl97839801_)))
                      (let ((_hd97859807_ (##car _e97849804_))
                            (_tl97869809_ (##cdr _e97849804_)))
                        (let ((_path9812_ _hd97859807_))
                          (let ((_specs9814_ _tl97869809_))
                            (if '#t
                                (let ((_src-ctx9816_
                                       (_import-spec-source9699_ _path9812_))
                                      (_exports9817_ (make-table))
                                      (_specs9818_
                                       (gx#syntax->list _specs9814_)))
                                  (begin
                                    (for-each
                                     (lambda (_out9820_)
                                       (table-set!
                                        _exports9817_
                                        (cons (##direct-structure-ref
                                               _out9820_
                                               '3
                                               gx#module-export::t
                                               '#f)
                                              (##direct-structure-ref
                                               _out9820_
                                               '4
                                               gx#module-export::t
                                               '#f))
                                        _out9820_))
                                     (##structure-ref
                                      _src-ctx9816_
                                      '9
                                      gx#module-context::t
                                      '#f))
                                    (_K9768_ _rest9769_
                                             (foldl1 (lambda (_spec9822_
                                                              _r9823_)
                                                       (let ((_e98249840_
                                                              _spec9822_))
                                                         (let ((_E98269844_
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _e98249840_))))
                   (let ((_E98259898_
                          (lambda ()
                            (if (gx#stx-pair? _e98249840_)
                                (let ((_e98279848_ (gx#syntax-e _e98249840_)))
                                  (let ((_hd98289851_ (##car _e98279848_))
                                        (_tl98299853_ (##cdr _e98279848_)))
                                    (let ((_phi9856_ _hd98289851_))
                                      (if (gx#stx-pair? _tl98299853_)
                                          (let ((_e98309858_
                                                 (gx#syntax-e _tl98299853_)))
                                            (let ((_hd98319861_
                                                   (##car _e98309858_))
                                                  (_tl98329863_
                                                   (##cdr _e98309858_)))
                                              (let ((_name9866_ _hd98319861_))
                                                (if (gx#stx-pair? _tl98329863_)
                                                    (let ((_e98339868_
                                                           (gx#syntax-e
                                                            _tl98329863_)))
                                                      (let ((_hd98349871_
                                                             (##car _e98339868_))
                                                            (_tl98359873_
                                                             (##cdr _e98339868_)))
                                                        (let ((_src-phi9876_
                                                               _hd98349871_))
                                                          (if (gx#stx-pair?
                                                               _tl98359873_)
                                                              (let ((_e98369878_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl98359873_)))
                        (let ((_hd98379881_ (##car _e98369878_))
                              (_tl98389883_ (##cdr _e98369878_)))
                          (let ((_src-name9886_ _hd98379881_))
                            (if (gx#stx-null? _tl98389883_)
                                (if (if (gx#stx-fixnum? _src-phi9876_)
                                        (if (gx#identifier? _src-name9886_)
                                            (if (gx#stx-fixnum? _phi9856_)
                                                (gx#identifier? _name9866_)
                                                '#f)
                                            '#f)
                                        '#f)
                                    (let ((_src-phi9888_
                                           (gx#stx-e _src-phi9876_))
                                          (_src-name9889_
                                           (gx#core-identifier-key
                                            _src-name9886_))
                                          (_phi9890_ (gx#stx-e _phi9856_))
                                          (_name9891_
                                           (gx#core-identifier-key
                                            _name9866_)))
                                      (let ((_$e9893_
                                             (table-ref
                                              _exports9817_
                                              (cons _src-phi9888_
                                                    _src-name9889_)
                                              '#f)))
                                        (if _$e9893_
                                            ((lambda (_out9896_)
                                               (cons (gx#core-module-export->import__opt-lambda10614
                                                      _out9896_
                                                      _name9891_
                                                      (fx- _phi9890_
                                                           _src-phi9888_))
                                                     _r9823_))
                                             _$e9893_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; no matching export"
                                             _stx9688_
                                             _hd9767_))))
                                    (_E98269844_))
                                (_E98269844_)))))
                      (_E98269844_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E98269844_)))))
                                          (_E98269844_)))))
                                (_E98269844_)))))
                     (let () (_E98259898_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _r9770_
                                                     _specs9818_))))
                                (_E97809792_))))))
                    (_E97809792_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E97809792_)))))
                                         (let ((_E97729924_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _e97719788_)
                                                      (let ((_e97749906_
                                                             (gx#syntax-e
                                                              _e97719788_)))
                                                        (let ((_hd97759909_
                                                               (##car _e97749906_))
                                                              (_tl97769911_
                                                               (##cdr _e97749906_)))
                                                          (if (gx#stx-pair?
                                                               _tl97769911_)
                                                              (let ((_e97779914_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl97769911_)))
                        (let ((_hd97789917_ (##car _e97779914_))
                              (_tl97799919_ (##cdr _e97779914_)))
                          (let ((_path9922_ _hd97789917_))
                            (if (gx#stx-null? _tl97799919_)
                                (if '#t
                                    (_K9768_ _rest9769_
                                             (cons (_import-spec-source9699_
                                                    _path9922_)
                                                   _r9770_))
                                    (_E97739902_))
                                (_E97739902_)))))
                      (_E97739902_))))
              (_E97739902_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let () (_E97729924_)))))))))
                            (let ((_expand19691_
                                   (lambda (_hd10134_
                                            _K10135_
                                            _rest10136_
                                            _r10137_)
                                     (if (gx#core-bound-module? _hd10134_)
                                         (_import19692_
                                          (gx#syntax-local-e__0 _hd10134_)
                                          _K10135_
                                          _rest10136_
                                          _r10137_)
                                         (if (gx#core-library-module-path?
                                              _hd10134_)
                                             (_import19692_
                                              (gx#import-module__0
                                               (gx#core-resolve-library-module-path
                                                _hd10134_))
                                              _K10135_
                                              _rest10136_
                                              _r10137_)
                                             (if (gx#stx-string? _hd10134_)
                                                 (_import19692_
                                                  (gx#import-module__0
                                                   (gx#core-resolve-module-path__opt-lambda10974
                                                    _hd10134_
                                                    (gx#stx-source _stx9688_)))
                                                  _K10135_
                                                  _rest10136_
                                                  _r10137_)
                                                 (if (##structure-instance-of?
                                                      (gx#stx-e _hd10134_)
                                                      'gx#module-context::t)
                                                     (_K10135_
                                                      _rest10136_
                                                      (cons (gx#stx-e
                                                             _hd10134_)
                                                            _r10137_))
                                                     (if (_import-spec?9693_
                                                          _hd10134_)
                                                         (_import-spec9698_
                                                          _hd10134_
                                                          _K10135_
                                                          _rest10136_
                                                          _r10137_)
                                                         (if (_import-submodule?9694_
                                                              _hd10134_)
                                                             (_import-submodule9696_
                                                              _hd10134_
                                                              _K10135_
                                                              _rest10136_
                                                              _r10137_)
                                                             (if (_import-runtime?9695_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd10134_)
                         (_import-runtime9697_
                          _hd10134_
                          _K10135_
                          _rest10136_
                          _r10137_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; illegal import"
                          _stx9688_
                          _hd10134_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (let ((_rbody9703_
                                     (gx#core-expand-import/export
                                      _stx9688_
                                      _expanded-import?9701_
                                      'apply-import-expander
                                      gx#current-import-expander-phi
                                      _expand19691_)))
                                (if _internal-expand?9689_
                                    (reverse _rbody9703_)
                                    (gx#core-quote-syntax__1
                                     (gx#core-cons
                                      '%#import
                                      (_import!9700_ _rbody9703_))
                                     (gx#stx-source _stx9688_)))))))))))))))))
    (begin
      (define gx#core-expand-import%__0
        (lambda (_stx10142_)
          (let ((_internal-expand?10144_ '#f))
            (gx#core-expand-import%__opt-lambda9686
             _stx10142_
             _internal-expand?10144_))))
      (define gx#core-expand-import%
        (lambda _g11536_
          (let ((_g11535_ (length _g11536_)))
            (cond ((fx= _g11535_ 1) (apply gx#core-expand-import%__0 _g11536_))
                  ((fx= _g11535_ 2)
                   (apply gx#core-expand-import%__opt-lambda9686 _g11536_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-import%
                    _g11536_))))))))
  (define gx#core-import-nested-module
    (lambda (_spath9615_ _where9616_)
      (let ((_e96179624_ _spath9615_))
        (let ((_E96199628_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e96179624_))))
          (let ((_E96189683_
                 (lambda ()
                   (if (gx#stx-pair? _e96179624_)
                       (let ((_e96209632_ (gx#syntax-e _e96179624_)))
                         (let ((_hd96219635_ (##car _e96209632_))
                               (_tl96229637_ (##cdr _e96209632_)))
                           (let ((_origin9640_ _hd96219635_))
                             (let ((_sub9642_ _tl96229637_))
                               (if '#t
                                   (let ((_origin-ctx9644_
                                          (if (gx#stx-false? _origin9640_)
                                              (gx#current-expander-context)
                                              (gx#import-module__0
                                               _origin9640_))))
                                     ((letrec ((_lp9646_
                                                (lambda (_rest9648_ _ctx9649_)
                                                  (let ((_e96509657_
                                                         _rest9648_))
                                                    (let ((_E96529661_
                                                           (lambda ()
                                                             _ctx9649_)))
                                                      (let ((_E96519679_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _e96509657_)
                           (let ((_e96539665_ (gx#syntax-e _e96509657_)))
                             (let ((_hd96549668_ (##car _e96539665_))
                                   (_tl96559670_ (##cdr _e96539665_)))
                               (let ((_id9673_ _hd96549668_))
                                 (let ((_rest9675_ _tl96559670_))
                                   (if '#t
                                       (let ((_bind9677_
                                              (gx#resolve-identifier__opt-lambda4761
                                               _id9673_
                                               '0
                                               _ctx9649_)))
                                         (begin
                                           (if (if (##structure-direct-instance-of?
                                                    _bind9677_
                                                    'gx#syntax-binding::t)
                                                   (##structure-instance-of?
                                                    (##direct-structure-ref
                                                     _bind9677_
                                                     '4
                                                     gx#syntax-binding::t
                                                     '#f)
                                                    'gx#module-context::t)
                                                   '#f)
                                               '#!void
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; not bound as module"
                                                _where9616_
                                                _spath9615_
                                                _id9673_))
                                           (_lp9646_
                                            _rest9675_
                                            (##direct-structure-ref
                                             _bind9677_
                                             '4
                                             gx#syntax-binding::t
                                             '#f))))
                                       (_E96529661_))))))
                           (_E96529661_)))))
                (let () (_E96519679_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _lp9646_)
                                      _sub9642_
                                      _origin-ctx9644_))
                                   (_E96199628_))))))
                       (_E96199628_)))))
            (let () (_E96189683_)))))))
  (define gx#core-expand-import-source
    (lambda (_hd9613_)
      (gx#core-expand-import%__opt-lambda9686
       (cons 'import-internal% (cons _hd9613_ '()))
       '#t)))
  (begin
    (define gx#core-expand-export%__opt-lambda9195
      (lambda (_stx9197_ _internal-expand?9198_)
        (let ((_make-export__opt-lambda9559__1150411505_
               (lambda (_bind9561_ _phi9562_ _ctx9563_ _name9564_)
                 (let ((_key9566_
                        (##structure-ref _bind9561_ '2 gx#binding::t '#f)))
                   (let ((_export-key9568_
                          (if _name9564_
                              (gx#core-identifier-key _name9564_)
                              _key9566_)))
                     (let ()
                       (##structure
                        gx#module-export::t
                        _ctx9563_
                        _key9566_
                        _phi9562_
                        _export-key9568_
                        (let ((_$e9571_
                               (##structure-instance-of?
                                _bind9561_
                                'gx#extern-binding::t)))
                          (if _$e9571_
                              _$e9571_
                              (##structure-direct-instance-of?
                               _bind9561_
                               'gx#import-binding::t))))))))))
          (let ((_make-export__0__1150611509_
                 (lambda (_bind9577_)
                   (let ((_phi9579_ (gx#current-export-expander-phi)))
                     (let ((_ctx9581_ (gx#current-expander-context)))
                       (let ((_name9583_ '#f))
                         (_make-export__opt-lambda9559__1150411505_
                          _bind9577_
                          _phi9579_
                          _ctx9581_
                          _name9583_)))))))
            (let ((_make-export__1__1150711510_
                   (lambda (_bind9585_ _phi9586_)
                     (let ((_ctx9588_ (gx#current-expander-context)))
                       (let ((_name9590_ '#f))
                         (_make-export__opt-lambda9559__1150411505_
                          _bind9585_
                          _phi9586_
                          _ctx9588_
                          _name9590_))))))
              (let ((_make-export__2__1150811511_
                     (lambda (_bind9592_ _phi9593_ _ctx9594_)
                       (let ((_name9596_ '#f))
                         (_make-export__opt-lambda9559__1150411505_
                          _bind9592_
                          _phi9593_
                          _ctx9594_
                          _name9596_)))))
                (let ((_make-export9200_
                       (lambda _g11538_
                         (let ((_g11537_ (length _g11538_)))
                           (cond ((fx= _g11537_ 1)
                                  (apply _make-export__0__1150611509_
                                         _g11538_))
                                 ((fx= _g11537_ 2)
                                  (apply _make-export__1__1150711510_
                                         _g11538_))
                                 ((fx= _g11537_ 3)
                                  (apply _make-export__2__1150811511_
                                         _g11538_))
                                 ((fx= _g11537_ 4)
                                  (apply _make-export__opt-lambda9559__1150411505_
                                         _g11538_))
                                 (else
                                  (##raise-wrong-number-of-arguments-exception
                                   'case-lambda-dispatch
                                   _g11538_)))))))
                  (let ((_export-imports9202_
                         (lambda (_src9223_ _r9224_)
                           (let ((_current-ctx9226_
                                  (gx#current-expander-context)))
                             (let ((_current-phi9227_
                                    (gx#current-export-expander-phi)))
                               (let ((_import->export9228_
                                      (lambda (_in9236_)
                                        (let ((_in92379245_ _in9236_))
                                          (let ((_E92399249_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _in92379245_))))
                                            (let ((_K92409256_
                                                   (lambda (_phi9252_
                                                            _key9253_
                                                            _out9254_)
                                                     (if (fx= _phi9252_
                                                              _current-phi9227_)
                                                         (if (eq? _src9223_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##direct-structure-ref
                           _out9254_
                           '1
                           gx#module-export::t
                           '#f))
                     (##structure
                      gx#module-export::t
                      _current-ctx9226_
                      _key9253_
                      _phi9252_
                      _key9253_
                      '#t)
                     '#f)
                 '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##structure-direct-instance-of?
                                                   _in92379245_
                                                   (##type-id
                                                    gx#module-import::t))
                                                  (let ((_e92419259_
                                                         (##vector-ref
                                                          _in92379245_
                                                          '1)))
                                                    (let ((_out9262_
                                                           _e92419259_))
                                                      (let ((_e92429264_
                                                             (##vector-ref
                                                              _in92379245_
                                                              '2)))
                                                        (let ((_key9267_
                                                               _e92429264_))
                                                          (let ((_e92439269_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref _in92379245_ '3)))
                    (let ((_phi9272_ _e92439269_))
                      (_K92409256_ _phi9272_ _key9267_ _out9262_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E92399249_))))))))
                                 (let ((_fold-e9229_
                                        (lambda (_in9231_ _r9232_)
                                          (let ((_out9234_
                                                 (_import->export9228_
                                                  _in9231_)))
                                            (if _out9234_
                                                (cons _out9234_ _r9232_)
                                                _r9232_)))))
                                   (cons (##structure
                                          gx#export-set::t
                                          _src9223_
                                          _current-phi9227_
                                          (foldl1 _fold-e9229_
                                                  '()
                                                  (##structure-ref
                                                   _current-ctx9226_
                                                   '8
                                                   gx#module-context::t
                                                   '#f)))
                                         _r9224_))))))))
                    (let ((_export!9203_
                           (lambda (_rbody9213_)
                             (let ((_current-ctx9215_
                                    (gx#current-expander-context)))
                               (let ((_fold-e9216_
                                      (lambda (_out9220_ _r9221_)
                                        (if (##structure-direct-instance-of?
                                             _out9220_
                                             'gx#module-export::t)
                                            (cons _out9220_ _r9221_)
                                            (if (##structure-direct-instance-of?
                                                 _out9220_
                                                 'gx#export-set::t)
                                                (foldl1 cons
                                                        _r9221_
                                                        (##direct-structure-ref
                                                         _out9220_
                                                         '3
                                                         gx#export-set::t
                                                         '#f))
                                                _r9221_)))))
                                 (let ((_body9218_ (reverse _rbody9213_)))
                                   (begin
                                     (##structure-set!
                                      _current-ctx9215_
                                      (foldl1 _fold-e9216_
                                              (##structure-ref
                                               _current-ctx9215_
                                               '9
                                               gx#module-context::t
                                               '#f)
                                              _body9218_)
                                      '9
                                      gx#module-context::t
                                      '#f)
                                     _body9218_)))))))
                      (let ((_expanded-export?9204_
                             (lambda (_e9208_)
                               (let ((_$e9210_
                                      (##structure-direct-instance-of?
                                       _e9208_
                                       'gx#module-export::t)))
                                 (if _$e9210_
                                     _$e9210_
                                     (##structure-direct-instance-of?
                                      _e9208_
                                      'gx#export-set::t))))))
                        (let ((_expand19201_
                               (lambda (_hd9274_ _K9275_ _rest9276_ _r9277_)
                                 (let ((_e92789310_ _hd9274_))
                                   (let ((_E93059314_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; illegal export"
                                             _stx9197_
                                             _hd9274_))))
                                     (let ((_E92959393_
                                            (lambda ()
                                              (if (gx#stx-pair? _e92789310_)
                                                  (let ((_e93069318_
                                                         (gx#syntax-e
                                                          _e92789310_)))
                                                    (let ((_hd93079321_
                                                           (##car _e93069318_))
                                                          (_tl93089323_
                                                           (##cdr _e93069318_)))
                                                      (if (eq? (gx#stx-e
                                                                _hd93079321_)
                                                               'import:)
                                                          (let ((_in9326_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl93089323_))
                    (if (gx#stx-list? _in9326_)
                        ((letrec ((_lp9328_
                                   (lambda (_in-rest9330_ _r9331_)
                                     (let ((_e93329339_ _in-rest9330_))
                                       (let ((_E93349343_
                                              (lambda ()
                                                (_K9275_ _rest9276_ _r9331_))))
                                         (let ((_E93339389_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _e93329339_)
                                                      (let ((_e93359347_
                                                             (gx#syntax-e
                                                              _e93329339_)))
                                                        (let ((_hd93369350_
                                                               (##car _e93359347_))
                                                              (_tl93379352_
                                                               (##cdr _e93359347_)))
                                                          (let ((_hd9355_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd93369350_))
                    (let ((_in-rest9357_ _tl93379352_))
                      (if '#t
                          (let ((_src9387_
                                 (if (gx#core-bound-module? _hd9355_)
                                     (gx#syntax-local-e__0 _hd9355_)
                                     (if (gx#core-library-module-path?
                                          _hd9355_)
                                         (gx#import-module__0
                                          (gx#core-resolve-library-module-path
                                           _hd9355_))
                                         (if (gx#stx-string? _hd9355_)
                                             (gx#import-module__0
                                              (gx#core-resolve-module-path__opt-lambda10974
                                               _hd9355_
                                               (gx#stx-source _stx9197_)))
                                             (let ((_e93589365_ _hd9355_))
                                               (let ((_E93609369_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; illegal re-export"
                                                         _stx9197_
                                                         _hd9355_))))
                                                 (let ((_E93599383_
                                                        (lambda ()
                                                          (if (gx#stx-pair?
                                                               _e93589365_)
                                                              (let ((_e93619373_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _e93589365_)))
                        (let ((_hd93629376_ (##car _e93619373_))
                              (_tl93639378_ (##cdr _e93619373_)))
                          (if (eq? (gx#stx-e _hd93629376_) 'in:)
                              (let ((_spath9381_ _tl93639378_))
                                (if '#t
                                    (gx#core-import-nested-module
                                     _spath9381_
                                     _stx9197_)
                                    (_E93609369_)))
                              (_E93609369_))))
                      (_E93609369_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (_E93599383_))))))))))
                            (_lp9328_
                             _in-rest9357_
                             (_export-imports9202_ _src9387_ _r9331_)))
                          (_E93349343_))))))
              (_E93349343_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let () (_E93339389_))))))))
                           _lp9328_)
                         _in9326_
                         _r9277_)
                        (_E93059314_)))
                  (_E93059314_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E93059314_)))))
                                       (let ((_E92829432_
                                              (lambda ()
                                                (if (gx#stx-pair? _e92789310_)
                                                    (let ((_e92969397_
                                                           (gx#syntax-e
                                                            _e92789310_)))
                                                      (let ((_hd92979400_
                                                             (##car _e92969397_))
                                                            (_tl92989402_
                                                             (##cdr _e92969397_)))
                                                        (if (eq? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd92979400_)
                         'rename:)
                    (if (gx#stx-pair? _tl92989402_)
                        (let ((_e92999405_ (gx#syntax-e _tl92989402_)))
                          (let ((_hd93009408_ (##car _e92999405_))
                                (_tl93019410_ (##cdr _e92999405_)))
                            (let ((_id9413_ _hd93009408_))
                              (if (gx#stx-pair? _tl93019410_)
                                  (let ((_e93029415_
                                         (gx#syntax-e _tl93019410_)))
                                    (let ((_hd93039418_ (##car _e93029415_))
                                          (_tl93049420_ (##cdr _e93029415_)))
                                      (let ((_name9423_ _hd93039418_))
                                        (if (gx#stx-null? _tl93049420_)
                                            (if '#t
                                                (let ((_phi9425_
                                                       (gx#current-export-expander-phi)))
                                                  (let ((_$e9427_
                                                         (gx#core-resolve-identifier__1
                                                          _id9413_
                                                          _phi9425_)))
                                                    (if _$e9427_
                                                        ((lambda (_bind9430_)
                                                           (_K9275_ _rest9276_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (_make-export__opt-lambda9559__1150411505_
                                   _bind9430_
                                   _phi9425_
                                   (gx#current-expander-context)
                                   _name9423_)
                                  _r9277_)))
                 _$e9427_)
                (gx#raise-syntax-error
                 '#f
                 '"Reference to unbound identifier"
                 _stx9197_
                 _hd9274_
                 _id9413_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E92959393_))
                                            (_E92959393_)))))
                                  (_E92959393_)))))
                        (_E92959393_))
                    (_E92959393_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E92959393_)))))
                                         (let ((_E92819481_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _e92789310_)
                                                      (let ((_e92839436_
                                                             (gx#syntax-e
                                                              _e92789310_)))
                                                        (let ((_hd92849439_
                                                               (##car _e92839436_))
                                                              (_tl92859441_
                                                               (##cdr _e92839436_)))
                                                          (if (eq? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd92849439_)
                           'spec:)
                      (if (gx#stx-pair? _tl92859441_)
                          (let ((_e92869444_ (gx#syntax-e _tl92859441_)))
                            (let ((_hd92879447_ (##car _e92869444_))
                                  (_tl92889449_ (##cdr _e92869444_)))
                              (let ((_phi9452_ _hd92879447_))
                                (if (gx#stx-pair? _tl92889449_)
                                    (let ((_e92899454_
                                           (gx#syntax-e _tl92889449_)))
                                      (let ((_hd92909457_ (##car _e92899454_))
                                            (_tl92919459_ (##cdr _e92899454_)))
                                        (let ((_id9462_ _hd92909457_))
                                          (if (gx#stx-pair? _tl92919459_)
                                              (let ((_e92929464_
                                                     (gx#syntax-e
                                                      _tl92919459_)))
                                                (let ((_hd92939467_
                                                       (##car _e92929464_))
                                                      (_tl92949469_
                                                       (##cdr _e92929464_)))
                                                  (let ((_name9472_
                                                         _hd92939467_))
                                                    (if (gx#stx-null?
                                                         _tl92949469_)
                                                        (if (if (gx#stx-fixnum?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _phi9452_)
                        (if (gx#identifier? _id9462_)
                            (gx#identifier? _name9472_)
                            '#f)
                        '#f)
                    (let ((_phi9474_ (gx#stx-e _phi9452_)))
                      (let ((_$e9476_
                             (gx#core-resolve-identifier__1
                              _id9462_
                              _phi9474_)))
                        (if _$e9476_
                            ((lambda (_bind9479_)
                               (_K9275_ _rest9276_
                                        (cons (_make-export__opt-lambda9559__1150411505_
                                               _bind9479_
                                               _phi9474_
                                               (gx#current-expander-context)
                                               _name9472_)
                                              _r9277_)))
                             _$e9476_)
                            (gx#raise-syntax-error
                             '#f
                             '"Reference to unbound identifier"
                             _stx9197_
                             _hd9274_
                             _id9462_))))
                    (_E92829432_))
                (_E92829432_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E92829432_)))))
                                    (_E92829432_)))))
                          (_E92829432_))
                      (_E92829432_))))
              (_E92829432_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_E92809492_
                                                  (lambda ()
                                                    (let ((_id9485_
                                                           _e92789310_))
                                                      (if (gx#identifier?
                                                           _id9485_)
                                                          (let ((_$e9487_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-resolve-identifier__1
                          _id9485_
                          (gx#current-export-expander-phi))))
                    (if _$e9487_
                        ((lambda (_bind9490_)
                           (_K9275_ _rest9276_
                                    (cons (_make-export__0__1150611509_
                                           _bind9490_)
                                          _r9277_)))
                         _$e9487_)
                        (gx#raise-syntax-error
                         '#f
                         '"Reference to unbound identifier"
                         _stx9197_
                         _hd9274_)))
                  (_E92819481_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_E92799556_
                                                    (lambda ()
                                                      (if (eq? (gx#stx-e
                                                                _e92789310_)
                                                               '#t)
                                                          (if '#t
                                                              (let ((_current-ctx9496_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#current-expander-context)))
                        (let ((_current-phi9498_
                               (gx#current-export-expander-phi)))
                          (let ((_phi-ctx9500_
                                 (gx#core-context-shift
                                  _current-ctx9496_
                                  _current-phi9498_)))
                            (let ((_phi-bind9502_
                                   (table->list
                                    (##structure-ref
                                     _phi-ctx9500_
                                     '2
                                     gx#expander-context::t
                                     '#f))))
                              (let ()
                                ((letrec ((_lp9505_
                                           (lambda (_bind-rest9507_ _set9508_)
                                             (let ((_bind-rest95099519_
                                                    _bind-rest9507_))
                                               (let ((_E95129523_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _bind-rest95099519_))))
                                                 (let ((_else95119527_
                                                        (lambda ()
                                                          (_K9275_ _rest9276_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (##structure
                                  gx#export-set::t
                                  '#f
                                  _current-phi9498_
                                  _set9508_)
                                 _r9277_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_K95139537_
                                                          (lambda (_bind-rest9530_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _bind9531_
                           _key9532_)
                    (if (let ((_$e9534_
                               (##structure-direct-instance-of?
                                _bind9531_
                                'gx#import-binding::t)))
                          (if _$e9534_
                              _$e9534_
                              (gx#private-feature-binding? _bind9531_)))
                        (_lp9505_ _bind-rest9530_ _set9508_)
                        (_lp9505_
                         _bind-rest9530_
                         (cons (_make-export__2__1150811511_
                                _bind9531_
                                _current-phi9498_
                                _current-ctx9496_)
                               _set9508_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##pair? _bind-rest95099519_)
                                                         (let ((_hd95149540_
                                                                (##car _bind-rest95099519_))
                                                               (_tl95159542_
                                                                (##cdr _bind-rest95099519_)))
                                                           (if (##pair? _hd95149540_)
                                                               (let ((_hd95169545_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##car _hd95149540_))
                             (_tl95179547_ (##cdr _hd95149540_)))
                         (let ((_key9550_ _hd95169545_))
                           (let ((_bind9552_ _tl95179547_))
                             (let ((_bind-rest9554_ _tl95159542_))
                               (_K95139537_
                                _bind-rest9554_
                                _bind9552_
                                _key9550_)))))
                       (_else95119527_)))
                 (_else95119527_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _lp9505_)
                                 _phi-bind9502_
                                 '()))))))
                      (_E92809492_))
                  (_E92809492_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let () (_E92799556_))))))))))))
                          (let ((_rbody9206_
                                 (gx#core-expand-import/export
                                  _stx9197_
                                  _expanded-export?9204_
                                  'apply-export-expander
                                  gx#current-export-expander-phi
                                  _expand19201_)))
                            (if _internal-expand?9198_
                                (reverse _rbody9206_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#export
                                  (_export!9203_ _rbody9206_))
                                 (gx#stx-source _stx9197_)))))))))))))))
    (begin
      (define gx#core-expand-export%__0
        (lambda (_stx9606_)
          (let ((_internal-expand?9608_ '#f))
            (gx#core-expand-export%__opt-lambda9195
             _stx9606_
             _internal-expand?9608_))))
      (define gx#core-expand-export%
        (lambda _g11540_
          (let ((_g11539_ (length _g11540_)))
            (cond ((fx= _g11539_ 1) (apply gx#core-expand-export%__0 _g11540_))
                  ((fx= _g11539_ 2)
                   (apply gx#core-expand-export%__opt-lambda9195 _g11540_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-export%
                    _g11540_))))))))
  (define gx#core-expand-export-source
    (lambda (_hd9194_)
      (gx#core-expand-export%__opt-lambda9195
       (cons 'export-macro% (cons _hd9194_ '()))
       '#t)))
  (define gx#core-expand-provide%
    (lambda (_stx9164_)
      (let ((_e91659172_ _stx9164_))
        (let ((_E91679176_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e91659172_))))
          (let ((_E91669190_
                 (lambda ()
                   (if (gx#stx-pair? _e91659172_)
                       (let ((_e91689180_ (gx#syntax-e _e91659172_)))
                         (let ((_hd91699183_ (##car _e91689180_))
                               (_tl91709185_ (##cdr _e91689180_)))
                           (let ((_body9188_ _tl91709185_))
                             (if (gx#identifier-list? _body9188_)
                                 (begin
                                   (gx#stx-for-each1
                                    gx#core-bind-feature!
                                    _body9188_)
                                   (gx#core-quote-syntax__1
                                    (gx#core-cons
                                     '%#provide
                                     (gx#stx-map1
                                      gx#core-quote-syntax
                                      _body9188_))
                                    (gx#stx-source _stx9164_)))
                                 (_E91679176_)))))
                       (_E91679176_)))))
            (let () (_E91669190_)))))))
  (begin
    (define gx#core-bind-feature!__opt-lambda9128
      (lambda (_id9130_ _private?9131_ _phi9132_ _ctx9133_)
        (gx#core-bind-syntax!__opt-lambda6224
         _id9130_
         ((if _private?9131_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id9130_))
         _private?9131_
         _phi9132_
         _ctx9133_)))
    (begin
      (define gx#core-bind-feature!__0
        (lambda (_id9138_)
          (let ((_private?9140_ '#f))
            (let ((_phi9142_ (gx#current-expander-phi)))
              (let ((_ctx9144_ (gx#current-expander-context)))
                (gx#core-bind-feature!__opt-lambda9128
                 _id9138_
                 _private?9140_
                 _phi9142_
                 _ctx9144_))))))
      (define gx#core-bind-feature!__1
        (lambda (_id9146_ _private?9147_)
          (let ((_phi9149_ (gx#current-expander-phi)))
            (let ((_ctx9151_ (gx#current-expander-context)))
              (gx#core-bind-feature!__opt-lambda9128
               _id9146_
               _private?9147_
               _phi9149_
               _ctx9151_)))))
      (define gx#core-bind-feature!__2
        (lambda (_id9153_ _private?9154_ _phi9155_)
          (let ((_ctx9157_ (gx#current-expander-context)))
            (gx#core-bind-feature!__opt-lambda9128
             _id9153_
             _private?9154_
             _phi9155_
             _ctx9157_))))
      (define gx#core-bind-feature!
        (lambda _g11542_
          (let ((_g11541_ (length _g11542_)))
            (cond ((fx= _g11541_ 1) (apply gx#core-bind-feature!__0 _g11542_))
                  ((fx= _g11541_ 2) (apply gx#core-bind-feature!__1 _g11542_))
                  ((fx= _g11541_ 3) (apply gx#core-bind-feature!__2 _g11542_))
                  ((fx= _g11541_ 4)
                   (apply gx#core-bind-feature!__opt-lambda9128 _g11542_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-feature!
                    _g11542_)))))))))
