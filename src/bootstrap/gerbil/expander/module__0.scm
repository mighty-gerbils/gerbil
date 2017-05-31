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
    (lambda _$args11490_
      (apply make-struct-instance gx#module-import::t _$args11490_)))
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
    (lambda _$args11487_
      (apply make-struct-instance gx#module-export::t _$args11487_)))
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
    (lambda _$args11484_
      (apply make-struct-instance gx#import-set::t _$args11484_)))
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
    (lambda _$args11481_
      (apply make-struct-instance gx#export-set::t _$args11481_)))
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
    (lambda _$args11478_
      (apply make-struct-instance gx#import-expander::t _$args11478_)))
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
    (lambda _$args11475_
      (apply make-struct-instance gx#export-expander::t _$args11475_)))
  (define gx#current-import-expander-phi (make-parameter '#f))
  (define gx#current-export-expander-phi (make-parameter '#f))
  (define gx#current-module-reader-path (make-parameter '#f))
  (define gx#current-module-reader-args (make-parameter '#f))
  (define gx#module-context:::init!
    (lambda (_self11469_ _id11470_ _super11471_ _ns11472_ _path11473_)
      (direct-struct-instance-init!
       _self11469_
       _id11470_
       (make-hash-table-eq)
       _super11471_
       '#f
       '#f
       _ns11472_
       _path11473_
       '()
       '()
       '#f
       '#f)))
  (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
  (begin
    (define gx#prelude-context:::init!__opt-lambda11433
      (lambda (_self11435_ _ctx11436_ _root11437_)
        (let ((_super11445_
               (let ((_$e11439_ _root11437_))
                 (if _$e11439_
                     _$e11439_
                     (let ((_$e11442_ (gx#core-context-root__0)))
                       (if _$e11442_
                           _$e11442_
                           (make-struct-instance gx#root-context::t)))))))
          (if _ctx11436_
              (let ((_id11448_
                     (##structure-ref
                      _ctx11436_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path11449_
                     (##structure-ref _ctx11436_ '7 gx#module-context::t '#f))
                    (_in11450_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx11436_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e11451_
                     (make-promise (lambda () (gx#eval-module _ctx11436_)))))
                (begin
                  (direct-struct-instance-init!
                   _self11435_
                   _id11448_
                   (make-hash-table-eq)
                   _super11445_
                   '#f
                   '#f
                   _path11449_
                   _in11450_
                   _e11451_)
                  (for-each
                   (lambda (_g1145211454_)
                     (gx#core-bind-weak-import!__opt-lambda10787
                      _g1145211454_
                      _self11435_))
                   _in11450_)))
              (direct-struct-instance-init!
               _self11435_
               '#f
               (make-hash-table-eq)
               _super11445_
               '#f
               '#f
               '#f
               '()
               '#f)))))
    (begin
      (define gx#prelude-context:::init!__0
        (lambda (_self11460_ _ctx11461_)
          (let ((_root11463_ '#f))
            (gx#prelude-context:::init!__opt-lambda11433
             _self11460_
             _ctx11461_
             _root11463_))))
      (define gx#prelude-context:::init!
        (lambda _g11506_
          (let ((_g11505_ (length _g11506_)))
            (cond ((fx= _g11505_ 2)
                   (apply gx#prelude-context:::init!__0 _g11506_))
                  ((fx= _g11505_ 3)
                   (apply gx#prelude-context:::init!__opt-lambda11433
                          _g11506_))
                  (else (error "No clause matching arguments" _g11506_))))))))
  (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
  (define gx#import-expander:::init!
    (lambda (_self11431_ _e11432_)
      (direct-struct-instance-init!
       _self11431_
       _e11432_
       (gx#current-expander-context)
       (fx- (gx#current-expander-phi) '1))))
  (bind-method! gx#import-expander::t ':init! gx#import-expander:::init! '#f)
  (define gx#export-expander:::init!
    (lambda (_self11428_ _e11429_)
      (direct-struct-instance-init!
       _self11428_
       _e11429_
       (gx#current-expander-context)
       (fx- (gx#current-expander-phi) '1))))
  (bind-method! gx#export-expander::t ':init! gx#export-expander:::init! '#f)
  (define gx#import-expander::apply-import-expander
    (lambda (_g1142011423_ _g1142111425_)
      (gx#core-apply-user-expander__opt-lambda4786
       _g1142011423_
       _g1142111425_
       'apply-import-expander)))
  (bind-method!
   gx#import-expander::t
   'apply-import-expander
   gx#import-expander::apply-import-expander
   '#f)
  (define gx#export-expander::apply-export-expander
    (lambda (_g1141311416_ _g1141411418_)
      (gx#core-apply-user-expander__opt-lambda4786
       _g1141311416_
       _g1141411418_
       'apply-export-expander)))
  (bind-method!
   gx#export-expander::t
   'apply-export-expander
   gx#export-expander::apply-export-expander
   '#f)
  (define gx#module-source-path
    (lambda (_ctx11407_)
      (let ((_path11409_
             (##structure-ref _ctx11407_ '7 gx#module-context::t '#f)))
        (let ((_path11411_
               (if (pair? _path11409_) (last _path11409_) _path11409_)))
          (let () (if (string? _path11411_) _path11411_ '#f))))))
  (begin
    (define gx#import-module__opt-lambda11381
      (lambda (_path11383_ _reload?11384_ _eval?11385_)
        (let ((_ctx11387_
               ((gx#current-expander-module-import)
                _path11383_
                _reload?11384_)))
          (begin
            (if (if _ctx11387_ _eval?11385_ '#f)
                (gx#eval-module _ctx11387_)
                '#!void)
            _ctx11387_))))
    (begin
      (define gx#import-module__0
        (lambda (_path11392_)
          (let ((_reload?11394_ '#f))
            (let ((_eval?11396_ '#f))
              (gx#import-module__opt-lambda11381
               _path11392_
               _reload?11394_
               _eval?11396_)))))
      (define gx#import-module__1
        (lambda (_path11398_ _reload?11399_)
          (let ((_eval?11401_ '#f))
            (gx#import-module__opt-lambda11381
             _path11398_
             _reload?11399_
             _eval?11401_))))
      (define gx#import-module
        (lambda _g11508_
          (let ((_g11507_ (length _g11508_)))
            (cond ((fx= _g11507_ 1) (apply gx#import-module__0 _g11508_))
                  ((fx= _g11507_ 2) (apply gx#import-module__1 _g11508_))
                  ((fx= _g11507_ 3)
                   (apply gx#import-module__opt-lambda11381 _g11508_))
                  (else (error "No clause matching arguments" _g11508_))))))))
  (define gx#eval-module
    (lambda (_mod11380_) ((gx#current-expander-module-eval) _mod11380_)))
  (define gx#core-eval-module
    (lambda (_obj11365_)
      (let ((_force-e11367_
             (lambda (_getf11376_ _e11377_)
               (call-with-parameters
                (lambda () (force (_getf11376_ _e11377_)))
                gx#current-expander-context
                _e11377_
                gx#current-expander-phi
                '0))))
        ((letrec ((_recur11369_
                   (lambda (_e11371_)
                     (if (##structure-instance-of?
                          _e11371_
                          'gx#module-context::t)
                         (begin
                           (let ((_$e11373_
                                  (gx#core-context-prelude__opt-lambda11346
                                   _e11371_)))
                             (if _$e11373_ (_recur11369_ _$e11373_) '#!void))
                           (_force-e11367_ gx#module-context-e _e11371_))
                         (if (##structure-instance-of?
                              _e11371_
                              'gx#prelude-context::t)
                             (_force-e11367_ gx#prelude-context-e _e11371_)
                             (if (gx#stx-string? _e11371_)
                                 (_recur11369_
                                  (gx#import-module__0
                                   (gx#core-resolve-module-path__0 _e11371_)))
                                 (if (gx#core-library-module-path? _e11371_)
                                     (_recur11369_
                                      (gx#import-module__0
                                       (gx#core-resolve-library-module-path
                                        _e11371_)))
                                     (error '"Cannot eval module"
                                            _obj11365_))))))))
           _recur11369_)
         _obj11365_))))
  (begin
    (define gx#core-context-prelude__opt-lambda11346
      (lambda (_ctx11348_)
        ((letrec ((_lp11350_
                   (lambda (_e11352_)
                     (if (let ((_$e11354_
                                (##structure-instance-of?
                                 _e11352_
                                 'gx#module-context::t)))
                           (if _$e11354_
                               _$e11354_
                               (##structure-instance-of?
                                _e11352_
                                'gx#local-context::t)))
                         (_lp11350_
                          (##structure-ref _e11352_ '3 gx#phi-context::t '#f))
                         (if (##structure-instance-of?
                              _e11352_
                              'gx#prelude-context::t)
                             _e11352_
                             '#f)))))
           _lp11350_)
         _ctx11348_)))
    (begin
      (define gx#core-context-prelude__0
        (lambda ()
          (let ((_ctx11361_ (gx#current-expander-context)))
            (gx#core-context-prelude__opt-lambda11346 _ctx11361_))))
      (define gx#core-context-prelude
        (lambda _g11510_
          (let ((_g11509_ (length _g11510_)))
            (cond ((fx= _g11509_ 0)
                   (apply gx#core-context-prelude__0 _g11510_))
                  ((fx= _g11509_ 1)
                   (apply gx#core-context-prelude__opt-lambda11346 _g11510_))
                  (else (error "No clause matching arguments" _g11510_))))))))
  (define gx#core-module->prelude-context
    (lambda (_ctx11338_)
      (let ((_ht11340_ (gx#current-expander-module-registry)))
        (let ((_$e11342_ (table-ref _ht11340_ _ctx11338_ '#f)))
          (if _$e11342_
              (values _$e11342_)
              (let ((_pre11345_
                     (let ((__obj11501 (make-object gx#prelude-context::t '8)))
                       (begin
                         (gx#prelude-context:::init!__0 __obj11501 _ctx11338_)
                         __obj11501))))
                (begin
                  (table-set! _ht11340_ _ctx11338_ _pre11345_)
                  _pre11345_)))))))
  (begin
    (define gx#core-import-module__opt-lambda11290
      (lambda (_rpath11292_ _reload?11293_)
        (let ((_import-source11295_
               (lambda (_path11307_)
                 (begin
                   (if (member _path11307_ (gx#current-expander-path))
                       (error '"Cyclic expansion" _path11307_)
                       '#!void)
                   (call-with-parameters
                    (lambda ()
                      (let ((_g11511_ (gx#core-read-module _path11307_)))
                        (begin
                          (let ((_g11512_ (values-count _g11511_)))
                            (if (not (fx= _g11512_ 4))
                                (error "Context expects 4 values" _g11512_)))
                          (let ((_pre11310_ (values-ref _g11511_ 0))
                                (_id11311_ (values-ref _g11511_ 1))
                                (_ns11312_ (values-ref _g11511_ 2))
                                (_body11313_ (values-ref _g11511_ 3)))
                            (let ((_prelude11318_
                                   (if (##structure-instance-of?
                                        _pre11310_
                                        'gx#prelude-context::t)
                                       _pre11310_
                                       (if (##structure-instance-of?
                                            _pre11310_
                                            'gx#module-context::t)
                                           (gx#core-module->prelude-context
                                            _pre11310_)
                                           (if (string? _pre11310_)
                                               (gx#core-module->prelude-context
                                                (gx#core-import-module__0
                                                 _pre11310_))
                                               (if (not _pre11310_)
                                                   (let ((_$e11315_
                                                          (gx#current-expander-module-prelude)))
                                                     (if _$e11315_
                                                         _$e11315_
                                                         (let ((__obj11502
                                                                (make-object
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#prelude-context::t
                         '8)))
                   (begin
                     (gx#prelude-context:::init!__0 __obj11502 '#f)
                     __obj11502))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (error '"Cannot import module; unknown prelude"
                                                          _rpath11292_
                                                          _pre11310_)))))))
                              (let ((_ctx11320_
                                     (let ((__obj11503
                                            (make-object
                                             gx#module-context::t
                                             '11)))
                                       (begin
                                         (gx#module-context:::init!
                                          __obj11503
                                          _id11311_
                                          _prelude11318_
                                          _ns11312_
                                          _path11307_)
                                         __obj11503))))
                                (let ((_body11322_
                                       (gx#core-expand-module-begin
                                        _body11313_
                                        _ctx11320_)))
                                  (let ((_body11324_
                                         (gx#core-quote-syntax__opt-lambda4145
                                          (gx#core-cons '%#begin _body11322_)
                                          _path11307_
                                          _ctx11320_
                                          '())))
                                    (let ()
                                      (begin
                                        (##structure-set!
                                         _ctx11320_
                                         (make-promise
                                          (lambda ()
                                            (gx#eval-syntax* _body11324_)))
                                         '10
                                         gx#module-context::t
                                         '#f)
                                        (##structure-set!
                                         _ctx11320_
                                         _body11324_
                                         '11
                                         gx#module-context::t
                                         '#f)
                                        (table-set!
                                         (gx#current-expander-module-registry)
                                         _path11307_
                                         _ctx11320_)
                                        (table-set!
                                         (gx#current-expander-module-registry)
                                         _id11311_
                                         _ctx11320_)
                                        _ctx11320_))))))))))
                    gx#current-expander-context
                    (gx#core-context-root__0)
                    gx#current-expander-marks
                    '()
                    gx#current-expander-phi
                    '0
                    gx#current-expander-path
                    (cons _path11307_ (gx#current-expander-path))
                    gx#current-import-expander-phi
                    '#f
                    gx#current-export-expander-phi
                    '#f)))))
          (let ((_$e11297_
                 (if (not _reload?11293_)
                     (table-ref
                      (gx#current-expander-module-registry)
                      _rpath11292_
                      '#f)
                     '#f)))
            (if _$e11297_
                (values _$e11297_)
                (if (gx#core-library-module-path? _rpath11292_)
                    (let ((_ctx11300_
                           (gx#core-import-module__opt-lambda11290
                            (gx#core-resolve-library-module-path _rpath11292_)
                            _reload?11293_)))
                      (begin
                        (table-set!
                         (gx#current-expander-module-registry)
                         _rpath11292_
                         _ctx11300_)
                        _ctx11300_))
                    (let ((_npath11302_ (path-normalize _rpath11292_)))
                      (let ((_$e11304_
                             (if (not _reload?11293_)
                                 (table-ref
                                  (gx#current-expander-module-registry)
                                  _npath11302_
                                  '#f)
                                 '#f)))
                        (if _$e11304_
                            (values _$e11304_)
                            (_import-source11295_ _npath11302_))))))))))
    (begin
      (define gx#core-import-module__0
        (lambda (_rpath11331_)
          (let ((_reload?11333_ '#f))
            (gx#core-import-module__opt-lambda11290
             _rpath11331_
             _reload?11333_))))
      (define gx#core-import-module
        (lambda _g11514_
          (let ((_g11513_ (length _g11514_)))
            (cond ((fx= _g11513_ 1) (apply gx#core-import-module__0 _g11514_))
                  ((fx= _g11513_ 2)
                   (apply gx#core-import-module__opt-lambda11290 _g11514_))
                  (else (error "No clause matching arguments" _g11514_))))))))
  (define gx#core-read-module
    (lambda (_path11286_)
      (with-catch
       (lambda (_exn11288_)
         (if (if (datum-parsing-exception? _exn11288_)
                 (eq? (datum-parsing-exception-filepos _exn11288_) '0)
                 '#f)
             (gx#core-read-module/lang _path11286_)
             (raise _exn11288_)))
       (lambda () (gx#core-read-module/sexp _path11286_)))))
  (define gx#core-read-module/sexp
    (lambda (_path11150_)
      ((letrec ((_lp11152_
                 (lambda (_body11154_ _pre11155_ _ns11156_ _pkg11157_)
                   (let ((_e1115811182_ _body11154_))
                     (let ((_E1117411200_
                            (lambda ()
                              (let ((_prelude11186_
                                     (if (gx#core-bound-module-prelude?
                                          _pre11155_)
                                         (gx#syntax-local-e__0 _pre11155_)
                                         (if (gx#core-library-module-path?
                                              _pre11155_)
                                             (gx#core-resolve-library-module-path
                                              _pre11155_)
                                             (if (gx#stx-string? _pre11155_)
                                                 (gx#core-resolve-module-path__opt-lambda10963
                                                  _pre11155_
                                                  _path11150_)
                                                 (gx#stx-e _pre11155_))))))
                                (let ((_path-id11188_
                                       (gx#core-module-path->namespace
                                        _path11150_)))
                                  (let ((_pkg-id11190_
                                         (if _pkg11157_
                                             (string-append
                                              _pkg11157_
                                              '"/"
                                              _path-id11188_)
                                             _path-id11188_)))
                                    (let ((_module-id11192_
                                           (string->symbol _pkg-id11190_)))
                                      (let ((_module-ns11197_
                                             (let ((_$e11194_ _ns11156_))
                                               (if _$e11194_
                                                   _$e11194_
                                                   _pkg-id11190_))))
                                        (let ()
                                          (values _prelude11186_
                                                  _module-id11192_
                                                  _module-ns11197_
                                                  _body11154_))))))))))
                       (let ((_E1116711229_
                              (lambda ()
                                (if (gx#stx-pair? _e1115811182_)
                                    (let ((_e1117511204_
                                           (gx#syntax-e _e1115811182_)))
                                      (let ((_hd1117611207_
                                             (##car _e1117511204_))
                                            (_tl1117711209_
                                             (##cdr _e1117511204_)))
                                        (if (eq? (gx#stx-e _hd1117611207_)
                                                 'package:)
                                            (if (gx#stx-pair? _tl1117711209_)
                                                (let ((_e1117811212_
                                                       (gx#syntax-e
                                                        _tl1117711209_)))
                                                  (let ((_hd1117911215_
                                                         (##car _e1117811212_))
                                                        (_tl1118011217_
                                                         (##cdr _e1117811212_)))
                                                    (let ((_pkg11220_
                                                           _hd1117911215_))
                                                      (let ((_rest11222_
                                                             _tl1118011217_))
                                                        (if '#t
                                                            (let ((_pkg11227_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if (gx#identifier? _pkg11220_)
                               (symbol->string (gx#stx-e _pkg11220_))
                               (if (let ((_$e11224_
                                          (gx#stx-string? _pkg11220_)))
                                     (if _$e11224_
                                         _$e11224_
                                         (gx#stx-false? _pkg11220_)))
                                   (gx#stx-e _pkg11220_)
                                   (gx#raise-syntax-error
                                    'import
                                    '"Bad syntax; Illegal package name"
                                    _pkg11220_)))))
                      (_lp11152_ _rest11222_ _pre11155_ _ns11156_ _pkg11227_))
                    (_E1117411200_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1117411200_))
                                            (_E1117411200_))))
                                    (_E1117411200_)))))
                         (let ((_E1116011258_
                                (lambda ()
                                  (if (gx#stx-pair? _e1115811182_)
                                      (let ((_e1116811233_
                                             (gx#syntax-e _e1115811182_)))
                                        (let ((_hd1116911236_
                                               (##car _e1116811233_))
                                              (_tl1117011238_
                                               (##cdr _e1116811233_)))
                                          (if (eq? (gx#stx-e _hd1116911236_)
                                                   'namespace:)
                                              (if (gx#stx-pair? _tl1117011238_)
                                                  (let ((_e1117111241_
                                                         (gx#syntax-e
                                                          _tl1117011238_)))
                                                    (let ((_hd1117211244_
                                                           (##car _e1117111241_))
                                                          (_tl1117311246_
                                                           (##cdr _e1117111241_)))
                                                      (let ((_ns11249_
                                                             _hd1117211244_))
                                                        (let ((_rest11251_
                                                               _tl1117311246_))
                                                          (if '#t
                                                              (let ((_ns11256_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (gx#identifier? _ns11249_)
                                 (symbol->string (gx#stx-e _ns11249_))
                                 (if (let ((_$e11253_
                                            (gx#stx-string? _ns11249_)))
                                       (if _$e11253_
                                           _$e11253_
                                           (gx#stx-false? _ns11249_)))
                                     (gx#stx-e _ns11249_)
                                     (gx#raise-syntax-error
                                      'import
                                      '"Bad syntax; illegal namespace"
                                      _ns11249_)))))
                        (_lp11152_
                         _rest11251_
                         _pre11155_
                         _ns11256_
                         _pkg11157_))
                      (_E1116711229_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1116711229_))
                                              (_E1116711229_))))
                                      (_E1116711229_)))))
                           (let ((_E1115911282_
                                  (lambda ()
                                    (if (gx#stx-pair? _e1115811182_)
                                        (let ((_e1116111262_
                                               (gx#syntax-e _e1115811182_)))
                                          (let ((_hd1116211265_
                                                 (##car _e1116111262_))
                                                (_tl1116311267_
                                                 (##cdr _e1116111262_)))
                                            (if (eq? (gx#stx-e _hd1116211265_)
                                                     'prelude:)
                                                (if (gx#stx-pair?
                                                     _tl1116311267_)
                                                    (let ((_e1116411270_
                                                           (gx#syntax-e
                                                            _tl1116311267_)))
                                                      (let ((_hd1116511273_
                                                             (##car _e1116411270_))
                                                            (_tl1116611275_
                                                             (##cdr _e1116411270_)))
                                                        (let ((_prelude11278_
                                                               _hd1116511273_))
                                                          (let ((_rest11280_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1116611275_))
                    (if '#t
                        (_lp11152_
                         _rest11280_
                         _prelude11278_
                         _ns11156_
                         _pkg11157_)
                        (_E1116011258_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1116011258_))
                                                (_E1116011258_))))
                                        (_E1116011258_)))))
                             (let () (_E1115911282_))))))))))
         _lp11152_)
       (read-syntax-from-file _path11150_)
       '#f
       '#f
       '#f)))
  (define gx#core-read-module/lang
    (lambda (_path10990_)
      (let ((_read-body10992_
             (lambda (_inp11073_ _pre11074_ _pkg11075_ _ns11076_ _args11077_)
               (let ((_prelude11079_ (gx#import-module__0 _pre11074_)))
                 (let ((_read-module-body11133_
                        (let ((_$e11125_
                               (find (lambda (_e1108011082_)
                                       (let ((_g1108411094_ _e1108011082_))
                                         (let ((_E1108711098_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _g1108411094_))))
                                           (let ((_else1108611102_
                                                  (lambda () '#f)))
                                             (let ((_K1108811106_
                                                    (lambda () '#t)))
                                               (if (##structure-direct-instance-of?
                                                    _g1108411094_
                                                    (##type-id
                                                     gx#module-export::t))
                                                   (let ((_e1108911109_
                                                          (##vector-ref
                                                           _g1108411094_
                                                           '1)))
                                                     (let ((_e1109011112_
                                                            (##vector-ref
                                                             _g1108411094_
                                                             '2)))
                                                       (let ((_e1109111115_
                                                              (##vector-ref
                                                               _g1108411094_
                                                               '3)))
                                                         (if (##eq? _e1109111115_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                     (let ((_e1109211118_ (##vector-ref _g1108411094_ '4)))
                       (if ((lambda (_g1112011122_)
                              (eq? _g1112011122_ 'read-module-body))
                            _e1109211118_)
                           (_K1108811106_)
                           (_else1108611102_)))
                     (_else1108611102_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_else1108611102_)))))))
                                     (##structure-ref
                                      _prelude11079_
                                      '9
                                      gx#module-context::t
                                      '#f))))
                          (if _$e11125_
                              ((lambda (_xport11128_)
                                 (let ((_proc11131_
                                        (with-catch
                                         void
                                         (lambda ()
                                           (gx#eval-syntax__0
                                            (##structure-ref
                                             (gx#core-resolve-module-export
                                              _xport11128_)
                                             '1
                                             gx#binding::t
                                             '#f))))))
                                   (if (procedure? _proc11131_)
                                       _proc11131_
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Illegal #lang prelude; read-module-body is not a procedure"
                                        _path10990_
                                        _pre11074_
                                        _proc11131_))))
                               _$e11125_)
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang prelude; does not export read-module-body for syntax"
                               _path10990_
                               _pre11074_)))))
                   (let ((_path-id11135_
                          (gx#core-module-path->namespace _path10990_)))
                     (let ((_pkg-id11137_
                            (if _pkg11075_
                                (string-append _pkg11075_ '"/" _path-id11135_)
                                _path-id11135_)))
                       (let ((_module-id11139_ (string->symbol _pkg-id11137_)))
                         (let ((_module-ns11144_
                                (let ((_$e11141_ _ns11076_))
                                  (if _$e11141_ _$e11141_ _pkg-id11137_))))
                           (let ((_body11147_
                                  (call-with-parameters
                                   (lambda ()
                                     (_read-module-body11133_ _inp11073_))
                                   gx#current-module-reader-path
                                   _path10990_
                                   gx#current-module-reader-args
                                   _args11077_)))
                             (let ()
                               (values _prelude11079_
                                       _module-id11139_
                                       _module-ns11144_
                                       _body11147_))))))))))))
        (let ((_string-e10993_
               (lambda (_obj11070_ _what11071_)
                 (if (string? _obj11070_)
                     _obj11070_
                     (if (symbol? _obj11070_)
                         (symbol->string _obj11070_)
                         (gx#raise-syntax-error
                          '#f
                          (string-append '"Illegal module " _what11071_)
                          _path10990_
                          _obj11070_))))))
          (let ((_read-lang-args10994_
                 (lambda (_inp11025_ _args11026_)
                   (let ((_args1102711035_ _args11026_))
                     (let ((_E1103011039_
                            (lambda ()
                              (error '"No clause matching" _args1102711035_))))
                       (let ((_else1102911043_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Illegal #lang arguments; missing prelude"
                                 _path10990_))))
                         (let ((_K1103111058_
                                (lambda (_args11046_ _prelude11047_)
                                  (let ((_pkg11049_
                                         (pgetq 'package: _args11046_)))
                                    (let ((_pkg11051_
                                           (if _pkg11049_
                                               (_string-e10993_
                                                _pkg11049_
                                                '"package")
                                               '#f)))
                                      (let ((_ns11053_
                                             (pgetq 'namespace: _args11046_)))
                                        (let ((_ns11055_
                                               (if _ns11053_
                                                   (_string-e10993_
                                                    _ns11053_
                                                    '"namespace")
                                                   '#f)))
                                          (let ()
                                            (_read-body10992_
                                             _inp11025_
                                             _prelude11047_
                                             _pkg11051_
                                             _ns11055_
                                             _args11046_)))))))))
                           (if (##pair? _args1102711035_)
                               (let ((_hd1103211061_ (##car _args1102711035_))
                                     (_tl1103311063_ (##cdr _args1102711035_)))
                                 (let ((_prelude11066_ _hd1103211061_))
                                   (let ((_args11068_ _tl1103311063_))
                                     (_K1103111058_
                                      _args11068_
                                      _prelude11066_))))
                               (_else1102911043_)))))))))
            (let ((_read-lang10995_
                   (lambda (_inp11000_)
                     (let ((_head11002_ (read-line _inp11000_)))
                       (let ((_$e11004_ (string-index _head11002_ '#\space)))
                         (if _$e11004_
                             ((lambda (_ix11007_)
                                (let ((_lang11009_
                                       (substring _head11002_ '0 _ix11007_)))
                                  (if (equal? _lang11009_ '"#lang")
                                      (let ((_rest11011_
                                             (substring
                                              _head11002_
                                              (fx+ _ix11007_ '1)
                                              (string-length _head11002_))))
                                        (let ((_args11022_
                                               (with-catch
                                                (lambda (_g1101211014_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Illegal #lang arguments"
                                                   _path10990_
                                                   _g1101211014_))
                                                (lambda ()
                                                  (call-with-input-string
                                                   _rest11011_
                                                   (lambda (_g1101711019_)
                                                     (read-all
                                                      _g1101711019_
                                                      read)))))))
                                          (let ()
                                            (_read-lang-args10994_
                                             _inp11000_
                                             _args11022_))))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Illegal module syntax"
                                       _path10990_))))
                              _$e11004_)
                             (gx#raise-syntax-error
                              '#f
                              '"Illegal module syntax"
                              _path10990_)))))))
              (let ((_read-e10996_
                     (lambda (_inp10998_)
                       (if (eq? (peek-char _inp10998_) '#\#)
                           (_read-lang10995_ _inp10998_)
                           (gx#raise-syntax-error
                            '#f
                            '"Illegal module syntax"
                            _path10990_)))))
                (call-with-input-file _path10990_ _read-e10996_))))))))
  (define gx#core-module-path->namespace
    (lambda (_path10988_)
      (path-strip-extension (path-strip-directory _path10988_))))
  (define gx#core-module-path->id
    (lambda (_path10986_)
      (string->symbol (gx#core-module-path->namespace _path10986_))))
  (begin
    (define gx#core-resolve-module-path__opt-lambda10963
      (lambda (_stx-path10965_ _rel10966_)
        (let ((_path10968_ (gx#stx-e _stx-path10965_)))
          (let ((_path10970_
                 (if (string-empty? (path-extension _path10968_))
                     (string-append _path10968_ '".ss")
                     _path10968_)))
            (let ()
              (gx#core-resolve-path__opt-lambda4109
               _path10970_
               (let ((_$e10973_ (gx#stx-source _stx-path10965_)))
                 (if _$e10973_ _$e10973_ _rel10966_))))))))
    (begin
      (define gx#core-resolve-module-path__0
        (lambda (_stx-path10979_)
          (let ((_rel10981_ '#f))
            (gx#core-resolve-module-path__opt-lambda10963
             _stx-path10979_
             _rel10981_))))
      (define gx#core-resolve-module-path
        (lambda _g11516_
          (let ((_g11515_ (length _g11516_)))
            (cond ((fx= _g11515_ 1)
                   (apply gx#core-resolve-module-path__0 _g11516_))
                  ((fx= _g11515_ 2)
                   (apply gx#core-resolve-module-path__opt-lambda10963
                          _g11516_))
                  (else (error "No clause matching arguments" _g11516_))))))))
  (define gx#core-resolve-library-module-path
    (lambda (_libpath10905_)
      (let ((_spath10907_ (symbol->string (gx#stx-e _libpath10905_))))
        (let ((_spath10909_
               (substring _spath10907_ '1 (string-length _spath10907_))))
          (let ((_ext10911_ (path-extension _spath10909_)))
            (let ((_ssi10913_
                   (if (string-empty? _ext10911_)
                       (string-append _spath10909_ '".ssi")
                       (string-append
                        (path-strip-extension _spath10909_)
                        '".ssi"))))
              (let ((_src10915_
                     (if (string-empty? _ext10911_)
                         (string-append _spath10909_ '".ss")
                         _spath10909_)))
                (let ()
                  ((letrec ((_lp10918_
                             (lambda (_rest10920_)
                               (let ((_rest1092110930_ _rest10920_))
                                 (let ((_E1092410934_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _rest1092110930_))))
                                   (let ((_try-match1092310942_
                                          (lambda ()
                                            (let ((_K1092510939_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Cannot find library module"
                                                      _libpath10905_))))
                                              (if (##null? _rest1092110930_)
                                                  (_K1092510939_)
                                                  (_E1092410934_))))))
                                     (let ((_K1092610952_
                                            (lambda (_rest10945_ _dir10946_)
                                              (let ((_compiled-path10948_
                                                     (path-expand
                                                      _ssi10913_
                                                      _dir10946_)))
                                                (if (file-exists?
                                                     _compiled-path10948_)
                                                    (path-normalize
                                                     _compiled-path10948_)
                                                    (let ((_src-path10950_
                                                           (path-expand
                                                            _src10915_
                                                            _dir10946_)))
                                                      (if (file-exists?
                                                           _src-path10950_)
                                                          (path-normalize
                                                           _src-path10950_)
                                                          (_lp10918_
                                                           _rest10945_))))))))
                                       (if (##pair? _rest1092110930_)
                                           (let ((_hd1092710955_
                                                  (##car _rest1092110930_))
                                                 (_tl1092810957_
                                                  (##cdr _rest1092110930_)))
                                             (let ((_dir10960_ _hd1092710955_))
                                               (let ((_rest10962_
                                                      _tl1092810957_))
                                                 (_K1092610952_
                                                  _rest10962_
                                                  _dir10960_))))
                                           (_try-match1092310942_)))))))))
                     _lp10918_)
                   (gx#current-expander-module-library-path))))))))))
  (define gx#core-library-module-path?
    (lambda (_stx10903_) (gx#core-special-module-path? _stx10903_ '#\:)))
  (define gx#core-special-module-path?
    (lambda (_stx10898_ _char10899_)
      (if (gx#identifier? _stx10898_)
          (if (interned-symbol? (gx#stx-e _stx10898_))
              (let ((_str10901_ (symbol->string (gx#stx-e _stx10898_))))
                (if (fx> (string-length _str10901_) '1)
                    (eq? (string-ref _str10901_ '0) _char10899_)
                    '#f))
              '#f)
          '#f)))
  (define gx#core-bound-prelude?
    (lambda (_stx10892_)
      (gx#core-bound-identifier?__opt-lambda4199
       _stx10892_
       (lambda (_g1089310895_)
         (gx#expander-binding?__opt-lambda4230
          _g1089310895_
          gx#prelude-context?)))))
  (define gx#core-bound-module?
    (lambda (_stx10886_)
      (gx#core-bound-identifier?__opt-lambda4199
       _stx10886_
       (lambda (_g1088710889_)
         (gx#expander-binding?__opt-lambda4230
          _g1088710889_
          gx#module-context?)))))
  (define gx#core-bound-module-prelude?
    (lambda (_stx10873_)
      (let ((_module-prelude?10875_
             (lambda (_e10881_)
               (let ((_$e10883_
                      (##structure-instance-of?
                       _e10881_
                       'gx#module-context::t)))
                 (if _$e10883_
                     _$e10883_
                     (##structure-instance-of?
                      _e10881_
                      'gx#prelude-context::t))))))
        (gx#core-bound-identifier?__opt-lambda4199
         _stx10873_
         (lambda (_g1087610878_)
           (gx#expander-binding?__opt-lambda4230
            _g1087610878_
            _module-prelude?10875_))))))
  (begin
    (define gx#core-bind-import!__opt-lambda10801
      (lambda (_in10803_ _ctx10804_ _force-weak?10805_)
        (let ((_in1080610815_ _in10803_))
          (let ((_E1080810819_
                 (lambda () (error '"No clause matching" _in1080610815_))))
            (let ((_K1080910832_
                   (lambda (_weak?10822_ _phi10823_ _key10824_ _source10825_)
                     (gx#core-bind!__opt-lambda4469
                      _key10824_
                      (let ((_e10827_
                             (gx#core-resolve-module-export _source10825_)))
                        (##structure
                         gx#import-binding::t
                         (##structure-ref _e10827_ '1 gx#binding::t '#f)
                         _key10824_
                         _phi10823_
                         _e10827_
                         (##structure-ref
                          _source10825_
                          '1
                          gx#module-export::t
                          '#f)
                         (let ((_$e10829_ _force-weak?10805_))
                           (if _$e10829_ _$e10829_ _weak?10822_))))
                      gx#core-context-rebind?
                      _phi10823_
                      _ctx10804_))))
              (if (##structure-direct-instance-of?
                   _in1080610815_
                   (##type-id gx#module-import::t))
                  (let ((_e1081010835_ (##vector-ref _in1080610815_ '1)))
                    (let ((_source10838_ _e1081010835_))
                      (let ((_e1081110840_ (##vector-ref _in1080610815_ '2)))
                        (let ((_key10843_ _e1081110840_))
                          (let ((_e1081210845_
                                 (##vector-ref _in1080610815_ '3)))
                            (let ((_phi10848_ _e1081210845_))
                              (let ((_e1081310850_
                                     (##vector-ref _in1080610815_ '4)))
                                (let ((_weak?10853_ _e1081310850_))
                                  (_K1080910832_
                                   _weak?10853_
                                   _phi10848_
                                   _key10843_
                                   _source10838_)))))))))
                  (_E1080810819_)))))))
    (begin
      (define gx#core-bind-import!__0
        (lambda (_in10858_)
          (let ((_ctx10860_ (gx#current-expander-context)))
            (let ((_force-weak?10862_ '#f))
              (gx#core-bind-import!__opt-lambda10801
               _in10858_
               _ctx10860_
               _force-weak?10862_)))))
      (define gx#core-bind-import!__1
        (lambda (_in10864_ _ctx10865_)
          (let ((_force-weak?10867_ '#f))
            (gx#core-bind-import!__opt-lambda10801
             _in10864_
             _ctx10865_
             _force-weak?10867_))))
      (define gx#core-bind-import!
        (lambda _g11518_
          (let ((_g11517_ (length _g11518_)))
            (cond ((fx= _g11517_ 1) (apply gx#core-bind-import!__0 _g11518_))
                  ((fx= _g11517_ 2) (apply gx#core-bind-import!__1 _g11518_))
                  ((fx= _g11517_ 3)
                   (apply gx#core-bind-import!__opt-lambda10801 _g11518_))
                  (else (error "No clause matching arguments" _g11518_))))))))
  (begin
    (define gx#core-bind-weak-import!__opt-lambda10787
      (lambda (_in10789_ _ctx10790_)
        (gx#core-bind-import!__opt-lambda10801 _in10789_ _ctx10790_ '#t)))
    (begin
      (define gx#core-bind-weak-import!__0
        (lambda (_in10795_)
          (let ((_ctx10797_ (gx#current-expander-context)))
            (gx#core-bind-weak-import!__opt-lambda10787
             _in10795_
             _ctx10797_))))
      (define gx#core-bind-weak-import!
        (lambda _g11520_
          (let ((_g11519_ (length _g11520_)))
            (cond ((fx= _g11519_ 1)
                   (apply gx#core-bind-weak-import!__0 _g11520_))
                  ((fx= _g11519_ 2)
                   (apply gx#core-bind-weak-import!__opt-lambda10787 _g11520_))
                  (else (error "No clause matching arguments" _g11520_))))))))
  (define gx#core-resolve-module-export
    (lambda (_out10680_)
      (let ((_subst10682_
             (lambda (_key10728_)
               (let ((_key1072910737_ _key10728_))
                 (let ((_E1073210741_
                        (lambda ()
                          (error '"No clause matching" _key1072910737_))))
                   (let ((_else1073110745_ (lambda () _key10728_)))
                     (let ((_K1073310776_
                            (lambda (_mark10748_ _id10749_)
                              (let ((_mark1075010756_ _mark10748_))
                                (let ((_E1075210760_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _mark1075010756_))))
                                  (let ((_K1075310768_
                                         (lambda (_subst10763_)
                                           (let ((_$e10765_
                                                  (if _subst10763_
                                                      (table-ref
                                                       _subst10763_
                                                       _id10749_
                                                       '#f)
                                                      '#f)))
                                             (if _$e10765_
                                                 _$e10765_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal key; missing substitution"
                                                  _key10728_))))))
                                    (if (##structure-instance-of?
                                         _mark1075010756_
                                         (##type-id gx#expander-mark::t))
                                        (let ((_e1075410771_
                                               (##vector-ref
                                                _mark1075010756_
                                                '1)))
                                          (let ((_subst10774_ _e1075410771_))
                                            (_K1075310768_ _subst10774_)))
                                        (_E1075210760_))))))))
                       (if (##pair? _key1072910737_)
                           (let ((_hd1073410779_ (##car _key1072910737_))
                                 (_tl1073510781_ (##cdr _key1072910737_)))
                             (let ((_id10784_ _hd1073410779_))
                               (let ((_mark10786_ _tl1073510781_))
                                 (_K1073310776_ _mark10786_ _id10784_))))
                           (_else1073110745_)))))))))
        (let ((_out1068310693_ _out10680_))
          (let ((_E1068510697_
                 (lambda () (error '"No clause matching" _out1068310693_))))
            (let ((_K1068610704_
                   (lambda (_phi10700_ _key10701_ _ctx10702_)
                     (gx#core-context-resolve
                      (gx#core-context-shift _ctx10702_ _phi10700_)
                      (_subst10682_ _key10701_)))))
              (if (##structure-direct-instance-of?
                   _out1068310693_
                   (##type-id gx#module-export::t))
                  (let ((_e1068710707_ (##vector-ref _out1068310693_ '1)))
                    (let ((_ctx10710_ _e1068710707_))
                      (let ((_e1068810712_ (##vector-ref _out1068310693_ '2)))
                        (let ((_key10715_ _e1068810712_))
                          (let ((_e1068910717_
                                 (##vector-ref _out1068310693_ '3)))
                            (let ((_phi10720_ _e1068910717_))
                              (let ((_e1069010722_
                                     (##vector-ref _out1068310693_ '4)))
                                (let ((_e1069110725_
                                       (##vector-ref _out1068310693_ '5)))
                                  (_K1068610704_
                                   _phi10720_
                                   _key10715_
                                   _ctx10710_)))))))))
                  (_E1068510697_))))))))
  (begin
    (define gx#core-module-export->import__opt-lambda10603
      (lambda (_out10605_ _rename10606_ _dphi10607_)
        (let ((_out1060810618_ _out10605_))
          (let ((_E1061010622_
                 (lambda () (error '"No clause matching" _out1060810618_))))
            (let ((_K1061110634_
                   (lambda (_weak?10625_
                            _name10626_
                            _phi10627_
                            _key10628_
                            _ctx10629_)
                     (##structure
                      gx#module-import::t
                      _out10605_
                      (let ((_$e10631_ _rename10606_))
                        (if _$e10631_ _$e10631_ _name10626_))
                      (fx+ _phi10627_ _dphi10607_)
                      _weak?10625_))))
              (if (##structure-direct-instance-of?
                   _out1060810618_
                   (##type-id gx#module-export::t))
                  (let ((_e1061210637_ (##vector-ref _out1060810618_ '1)))
                    (let ((_ctx10640_ _e1061210637_))
                      (let ((_e1061310642_ (##vector-ref _out1060810618_ '2)))
                        (let ((_key10645_ _e1061310642_))
                          (let ((_e1061410647_
                                 (##vector-ref _out1060810618_ '3)))
                            (let ((_phi10650_ _e1061410647_))
                              (let ((_e1061510652_
                                     (##vector-ref _out1060810618_ '4)))
                                (let ((_name10655_ _e1061510652_))
                                  (let ((_e1061610657_
                                         (##vector-ref _out1060810618_ '5)))
                                    (let ((_weak?10660_ _e1061610657_))
                                      (_K1061110634_
                                       _weak?10660_
                                       _name10655_
                                       _phi10650_
                                       _key10645_
                                       _ctx10640_)))))))))))
                  (_E1061010622_)))))))
    (begin
      (define gx#core-module-export->import__0
        (lambda (_out10665_)
          (let ((_rename10667_ '#f))
            (let ((_dphi10669_ '0))
              (gx#core-module-export->import__opt-lambda10603
               _out10665_
               _rename10667_
               _dphi10669_)))))
      (define gx#core-module-export->import__1
        (lambda (_out10671_ _rename10672_)
          (let ((_dphi10674_ '0))
            (gx#core-module-export->import__opt-lambda10603
             _out10671_
             _rename10672_
             _dphi10674_))))
      (define gx#core-module-export->import
        (lambda _g11522_
          (let ((_g11521_ (length _g11522_)))
            (cond ((fx= _g11521_ 1)
                   (apply gx#core-module-export->import__0 _g11522_))
                  ((fx= _g11521_ 2)
                   (apply gx#core-module-export->import__1 _g11522_))
                  ((fx= _g11521_ 3)
                   (apply gx#core-module-export->import__opt-lambda10603
                          _g11522_))
                  (else (error "No clause matching arguments" _g11522_))))))))
  (define gx#core-expand-module%
    (lambda (_stx10533_)
      (let ((_make-context10535_
             (lambda (_id10586_)
               (let ((_super10588_ (gx#current-expander-context)))
                 (let ((_bind-id10590_ (gx#stx-e _id10586_)))
                   (let ((_mod-id10592_
                          (if (##structure-instance-of?
                               _super10588_
                               'gx#module-context::t)
                              (make-symbol
                               (##structure-ref
                                _super10588_
                                '1
                                gx#expander-context::t
                                '#f)
                               '"::"
                               _bind-id10590_)
                              _bind-id10590_)))
                     (let ((_ns10594_ (symbol->string _mod-id10592_)))
                       (let ((_path10601_
                              (if (##structure-instance-of?
                                   _super10588_
                                   'gx#module-context::t)
                                  (let ((_path10596_
                                         (##structure-ref
                                          _super10588_
                                          '7
                                          gx#module-context::t
                                          '#f)))
                                    (if (let ((_$e10598_ (pair? _path10596_)))
                                          (if _$e10598_
                                              _$e10598_
                                              (null? _path10596_)))
                                        (cons _bind-id10590_ _path10596_)
                                        (if (not _path10596_)
                                            _bind-id10590_
                                            (cons _bind-id10590_
                                                  (cons _path10596_ '())))))
                                  _bind-id10590_)))
                         (let ()
                           (let ((__obj11504
                                  (make-object gx#module-context::t '11)))
                             (begin
                               (gx#module-context:::init!
                                __obj11504
                                _mod-id10592_
                                _super10588_
                                _ns10594_
                                _path10601_)
                               __obj11504)))))))))))
        (let ((_e1053610546_ _stx10533_))
          (let ((_E1053810550_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e1053610546_))))
            (let ((_E1053710582_
                   (lambda ()
                     (if (gx#stx-pair? _e1053610546_)
                         (let ((_e1053910554_ (gx#syntax-e _e1053610546_)))
                           (let ((_hd1054010557_ (##car _e1053910554_))
                                 (_tl1054110559_ (##cdr _e1053910554_)))
                             (if (gx#stx-pair? _tl1054110559_)
                                 (let ((_e1054210562_
                                        (gx#syntax-e _tl1054110559_)))
                                   (let ((_hd1054310565_ (##car _e1054210562_))
                                         (_tl1054410567_
                                          (##cdr _e1054210562_)))
                                     (let ((_id10570_ _hd1054310565_))
                                       (let ((_body10572_ _tl1054410567_))
                                         (if (if (gx#identifier? _id10570_)
                                                 (gx#stx-list? _body10572_)
                                                 '#f)
                                             (let ((_ctx10574_
                                                    (_make-context10535_
                                                     _id10570_)))
                                               (let ((_body10576_
                                                      (gx#core-expand-module-begin
                                                       _body10572_
                                                       _ctx10574_)))
                                                 (let ((_body10578_
                                                        (gx#core-quote-syntax__1
                                                         (gx#core-cons
                                                          '%#begin
                                                          _body10576_)
                                                         (gx#stx-source
                                                          _stx10533_))))
                                                   (let ()
                                                     (begin
                                                       (##structure-set!
                                                        _ctx10574_
                                                        (make-promise
                                                         (lambda ()
                                                           (gx#eval-syntax*
                                                            _body10578_)))
                                                        '10
                                                        gx#module-context::t
                                                        '#f)
                                                       (##structure-set!
                                                        _ctx10574_
                                                        _body10578_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)
                                                       (gx#core-bind-syntax!__0
                                                        _id10570_
                                                        _ctx10574_)
                                                       (gx#core-quote-syntax__1
                                                        (gx#core-list
                                                         '%#module
                                                         (gx#core-quote-syntax__0
                                                          _id10570_)
                                                         _body10578_)
                                                        (gx#stx-source
                                                         _stx10533_)))))))
                                             (_E1053810550_))))))
                                 (_E1053810550_))))
                         (_E1053810550_)))))
              (let () (_E1053710582_))))))))
  (define gx#core-expand-module-begin
    (lambda (_body10499_ _ctx10500_)
      (call-with-parameters
       (lambda ()
         (begin
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let ((_stx10503_
                  (gx#core-expand-head (cons '%%begin-module _body10499_))))
             (let ((_e1050410511_ _stx10503_))
               (let ((_E1050610515_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module body expansion"
                         _stx10503_))))
                 (let ((_E1050510529_
                        (lambda ()
                          (if (gx#stx-pair? _e1050410511_)
                              (let ((_e1050710519_
                                     (gx#syntax-e _e1050410511_)))
                                (let ((_hd1050810522_ (##car _e1050710519_))
                                      (_tl1050910524_ (##cdr _e1050710519_)))
                                  (if (if (gx#identifier? _hd1050810522_)
                                          (gx#core-identifier=?
                                           _hd1050810522_
                                           '%#begin-module)
                                          '#f)
                                      (let ((_body10527_ _tl1050910524_))
                                        (if '#t
                                            (if (gx#sealed-syntax? _stx10503_)
                                                _body10527_
                                                (gx#core-expand-module-body
                                                 _body10527_))
                                            (_E1050610515_)))
                                      (_E1050610515_))))
                              (_E1050610515_)))))
                   (let () (_E1050510529_))))))))
       gx#current-expander-context
       _ctx10500_
       gx#current-expander-phi
       '0)))
  (define gx#core-expand-module-body
    (lambda (_body10295_)
      (let ((_expand-special10297_
             (lambda (_hd10426_ _K10427_ _rest10428_ _r10429_)
               (let ((_e1043010447_ _hd10426_))
                 (let ((_E1044210451_
                        (lambda ()
                          (_K10427_
                           _rest10428_
                           (cons (gx#core-expand-top _hd10426_) _r10429_)))))
                   (let ((_E1043210463_
                          (lambda ()
                            (if (gx#stx-pair? _e1043010447_)
                                (let ((_e1044310455_
                                       (gx#syntax-e _e1043010447_)))
                                  (let ((_hd1044410458_ (##car _e1044310455_))
                                        (_tl1044510460_ (##cdr _e1044310455_)))
                                    (if (if (gx#identifier? _hd1044410458_)
                                            (gx#core-identifier=?
                                             _hd1044410458_
                                             '%#export)
                                            '#f)
                                        (if '#t
                                            (_K10427_
                                             _rest10428_
                                             (cons _hd10426_ _r10429_))
                                            (_E1044210451_))
                                        (_E1044210451_))))
                                (_E1044210451_)))))
                     (let ((_E1043110495_
                            (lambda ()
                              (if (gx#stx-pair? _e1043010447_)
                                  (let ((_e1043310467_
                                         (gx#syntax-e _e1043010447_)))
                                    (let ((_hd1043410470_
                                           (##car _e1043310467_))
                                          (_tl1043510472_
                                           (##cdr _e1043310467_)))
                                      (if (if (gx#identifier? _hd1043410470_)
                                              (gx#core-identifier=?
                                               _hd1043410470_
                                               '%#define-values)
                                              '#f)
                                          (if (gx#stx-pair? _tl1043510472_)
                                              (let ((_e1043610475_
                                                     (gx#syntax-e
                                                      _tl1043510472_)))
                                                (let ((_hd1043710478_
                                                       (##car _e1043610475_))
                                                      (_tl1043810480_
                                                       (##cdr _e1043610475_)))
                                                  (let ((_hd-bind10483_
                                                         _hd1043710478_))
                                                    (if (gx#stx-pair?
                                                         _tl1043810480_)
                                                        (let ((_e1043910485_
                                                               (gx#syntax-e
                                                                _tl1043810480_)))
                                                          (let ((_hd1044010488_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1043910485_))
                        (_tl1044110490_ (##cdr _e1043910485_)))
                    (let ((_expr10493_ _hd1044010488_))
                      (if (gx#stx-null? _tl1044110490_)
                          (if (gx#core-bind-values? _hd-bind10483_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind10483_)
                                (_K10427_
                                 _rest10428_
                                 (cons _hd10426_ _r10429_)))
                              (_E1043210463_))
                          (_E1043210463_)))))
                (_E1043210463_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1043210463_))
                                          (_E1043210463_))))
                                  (_E1043210463_)))))
                       (let () (_E1043110495_)))))))))
        (let ((_expand-body10298_
               (lambda (_rbody10300_)
                 ((letrec ((_lp10302_
                            (lambda (_rest10304_ _body10305_)
                              (let ((_rest1030610314_ _rest10304_))
                                (let ((_E1030910318_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _rest1030610314_))))
                                  (let ((_else1030810322_
                                         (lambda () _body10305_)))
                                    (let ((_K1031010414_
                                           (lambda (_rest10325_ _hd10326_)
                                             (let ((_e1032710348_ _hd10326_))
                                               (let ((_E1034310352_
                                                      (lambda ()
                                                        (_lp10302_
                                                         _rest10325_
                                                         (cons (gx#core-expand-expression
                                                                _hd10326_)
                                                               _body10305_)))))
                                                 (let ((_E1033910366_
                                                        (lambda ()
                                                          (if (gx#stx-pair?
                                                               _e1032710348_)
                                                              (let ((_e1034410356_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _e1032710348_)))
                        (let ((_hd1034510359_ (##car _e1034410356_))
                              (_tl1034610361_ (##cdr _e1034410356_)))
                          (let ((_form10364_ _hd1034510359_))
                            (if (gx#core-bound-identifier?__opt-lambda4199
                                 _form10364_
                                 gx#special-form-binding?)
                                (_lp10302_
                                 _rest10325_
                                 (cons _hd10326_ _body10305_))
                                (_E1034310352_)))))
                      (_E1034310352_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_E1032910378_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e1032710348_)
                        (let ((_e1034010370_ (gx#syntax-e _e1032710348_)))
                          (let ((_hd1034110373_ (##car _e1034010370_))
                                (_tl1034210375_ (##cdr _e1034010370_)))
                            (if (if (gx#identifier? _hd1034110373_)
                                    (gx#core-identifier=?
                                     _hd1034110373_
                                     '%#export)
                                    '#f)
                                (if '#t
                                    (_lp10302_
                                     _rest10325_
                                     (cons (gx#core-expand-export%__0
                                            _hd10326_)
                                           _body10305_))
                                    (_E1033910366_))
                                (_E1033910366_))))
                        (_E1033910366_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_E1032810410_
                                                            (lambda ()
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e1032710348_)
                          (let ((_e1033010382_ (gx#syntax-e _e1032710348_)))
                            (let ((_hd1033110385_ (##car _e1033010382_))
                                  (_tl1033210387_ (##cdr _e1033010382_)))
                              (if (if (gx#identifier? _hd1033110385_)
                                      (gx#core-identifier=?
                                       _hd1033110385_
                                       '%#define-values)
                                      '#f)
                                  (if (gx#stx-pair? _tl1033210387_)
                                      (let ((_e1033310390_
                                             (gx#syntax-e _tl1033210387_)))
                                        (let ((_hd1033410393_
                                               (##car _e1033310390_))
                                              (_tl1033510395_
                                               (##cdr _e1033310390_)))
                                          (let ((_hd-bind10398_
                                                 _hd1033410393_))
                                            (if (gx#stx-pair? _tl1033510395_)
                                                (let ((_e1033610400_
                                                       (gx#syntax-e
                                                        _tl1033510395_)))
                                                  (let ((_hd1033710403_
                                                         (##car _e1033610400_))
                                                        (_tl1033810405_
                                                         (##cdr _e1033610400_)))
                                                    (let ((_expr10408_
                                                           _hd1033710403_))
                                                      (if (gx#stx-null?
                                                           _tl1033810405_)
                                                          (if '#t
                                                              (_lp10302_
                                                               _rest10325_
                                                               (cons (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#core-list
                               '%#define-values
                               (gx#core-quote-bind-values _hd-bind10398_)
                               (gx#core-expand-expression _expr10408_))
                              (gx#stx-source _hd10326_))
                             _body10305_))
                      (_E1032910378_))
                  (_E1032910378_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1032910378_)))))
                                      (_E1032910378_))
                                  (_E1032910378_))))
                          (_E1032910378_)))))
               (let () (_E1032810410_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (##pair? _rest1030610314_)
                                          (let ((_hd1031110417_
                                                 (##car _rest1030610314_))
                                                (_tl1031210419_
                                                 (##cdr _rest1030610314_)))
                                            (let ((_hd10422_ _hd1031110417_))
                                              (let ((_rest10424_
                                                     _tl1031210419_))
                                                (_K1031010414_
                                                 _rest10424_
                                                 _hd10422_))))
                                          (_else1030810322_)))))))))
                    _lp10302_)
                  _rbody10300_
                  '()))))
          (_expand-body10298_
           (gx#core-expand-block__opt-lambda5247
            (cons '%#begin-module _body10295_)
            _expand-special10297_
            '#f
            values))))))
  (define gx#core-expand-import/export
    (lambda (_stx10138_
             _expanded?10139_
             _method10140_
             _current-phi10141_
             _expand110142_)
      (letrec ((_K10144_
                (lambda (_rest10262_ _r10263_)
                  (let ((_e1026410271_ _rest10262_))
                    (let ((_E1026610275_ (lambda () _r10263_)))
                      (let ((_E1026510291_
                             (lambda ()
                               (if (gx#stx-pair? _e1026410271_)
                                   (let ((_e1026710279_
                                          (gx#syntax-e _e1026410271_)))
                                     (let ((_hd1026810282_
                                            (##car _e1026710279_))
                                           (_tl1026910284_
                                            (##cdr _e1026710279_)))
                                       (let ((_hd10287_ _hd1026810282_))
                                         (let ((_rest10289_ _tl1026910284_))
                                           (if '#t
                                               (_step10145_
                                                _hd10287_
                                                _rest10289_
                                                _r10263_)
                                               (_E1026610275_))))))
                                   (_E1026610275_)))))
                        (let () (_E1026510291_)))))))
               (_step10145_
                (lambda (_hd10176_ _rest10177_ _r10178_)
                  (let ((_e1017910197_ _hd10176_))
                    (let ((_E1019210201_
                           (lambda ()
                             (if (_expanded?10139_ (gx#stx-e _hd10176_))
                                 (_K10144_
                                  _rest10177_
                                  (cons (gx#stx-e _hd10176_) _r10178_))
                                 (_expand110142_
                                  _hd10176_
                                  _K10144_
                                  _rest10177_
                                  _r10178_)))))
                      (let ((_E1018810217_
                             (lambda ()
                               (if (gx#stx-pair? _e1017910197_)
                                   (let ((_e1019310205_
                                          (gx#syntax-e _e1017910197_)))
                                     (let ((_hd1019410208_
                                            (##car _e1019310205_))
                                           (_tl1019510210_
                                            (##cdr _e1019310205_)))
                                       (let ((_macro10213_ _hd1019410208_))
                                         (let ((_body10215_ _tl1019510210_))
                                           (if (gx#core-bound-identifier?__opt-lambda4199
                                                _macro10213_
                                                gx#syntax-binding?)
                                               (_K10144_
                                                (cons (gx#core-apply-expander__opt-lambda4965
                                                       (gx#syntax-local-e__0
                                                        _macro10213_)
                                                       _hd10176_
                                                       _method10140_)
                                                      _rest10177_)
                                                _r10178_)
                                               (_E1019210201_))))))
                                   (_E1019210201_)))))
                        (let ((_E1018110231_
                               (lambda ()
                                 (if (gx#stx-pair? _e1017910197_)
                                     (let ((_e1018910221_
                                            (gx#syntax-e _e1017910197_)))
                                       (let ((_hd1019010224_
                                              (##car _e1018910221_))
                                             (_tl1019110226_
                                              (##cdr _e1018910221_)))
                                         (if (eq? (gx#stx-e _hd1019010224_)
                                                  'begin:)
                                             (let ((_body10229_
                                                    _tl1019110226_))
                                               (if '#t
                                                   (_K10144_
                                                    (gx#stx-foldr
                                                     cons
                                                     _rest10177_
                                                     _body10229_)
                                                    _r10178_)
                                                   (_E1018810217_)))
                                             (_E1018810217_))))
                                     (_E1018810217_)))))
                          (let ((_E1018010258_
                                 (lambda ()
                                   (if (gx#stx-pair? _e1017910197_)
                                       (let ((_e1018210235_
                                              (gx#syntax-e _e1017910197_)))
                                         (let ((_hd1018310238_
                                                (##car _e1018210235_))
                                               (_tl1018410240_
                                                (##cdr _e1018210235_)))
                                           (if (eq? (gx#stx-e _hd1018310238_)
                                                    'phi:)
                                               (if (gx#stx-pair?
                                                    _tl1018410240_)
                                                   (let ((_e1018510243_
                                                          (gx#syntax-e
                                                           _tl1018410240_)))
                                                     (let ((_hd1018610246_
                                                            (##car _e1018510243_))
                                                           (_tl1018710248_
                                                            (##cdr _e1018510243_)))
                                                       (let ((_dphi10251_
                                                              _hd1018610246_))
                                                         (let ((_body10253_
                                                                _tl1018710248_))
                                                           (if (gx#stx-fixnum?
                                                                _dphi10251_)
                                                               (let ((_rbody10256_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (call-with-parameters
                               (lambda () (_K10144_ _body10253_ '()))
                               _current-phi10141_
                               (fx+ (gx#stx-e _dphi10251_)
                                    (_current-phi10141_)))))
                         (_K10144_
                          _rest10177_
                          (foldr1 cons _r10178_ _rbody10256_)))
                       (_E1018110231_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1018110231_))
                                               (_E1018110231_))))
                                       (_E1018110231_)))))
                            (let () (_E1018010258_))))))))))
        (let ((_e1014610153_ _stx10138_))
          (let ((_E1014810157_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e1014610153_))))
            (let ((_E1014710172_
                   (lambda ()
                     (if (gx#stx-pair? _e1014610153_)
                         (let ((_e1014910161_ (gx#syntax-e _e1014610153_)))
                           (let ((_hd1015010164_ (##car _e1014910161_))
                                 (_tl1015110166_ (##cdr _e1014910161_)))
                             (let ((_body10169_ _tl1015110166_))
                               (if '#t
                                   (if (_current-phi10141_)
                                       (_K10144_ _body10169_ '())
                                       (call-with-parameters
                                        (lambda () (_K10144_ _body10169_ '()))
                                        _current-phi10141_
                                        (gx#current-expander-phi)))
                                   (_E1014810157_)))))
                         (_E1014810157_)))))
              (let () (_E1014710172_))))))))
  (begin
    (define gx#core-expand-import%__opt-lambda9675
      (lambda (_stx9677_ _internal-expand?9678_)
        (let ((_import19681_
               (lambda (_ctx10112_ _K10113_ _rest10114_ _r10115_)
                 (let ((_dphi10117_
                        (fx- (gx#current-import-expander-phi)
                             (gx#current-expander-phi))))
                   (_K10113_
                    _rest10114_
                    (cons (##structure
                           gx#import-set::t
                           _ctx10112_
                           _dphi10117_
                           (map (lambda (_g1011810120_)
                                  (gx#core-module-export->import__opt-lambda10603
                                   _g1011810120_
                                   '#f
                                   _dphi10117_))
                                (##structure-ref
                                 _ctx10112_
                                 '9
                                 gx#module-context::t
                                 '#f)))
                          _r10115_))))))
          (let ((_import-spec?9682_
                 (lambda (_hd10069_)
                   (let ((_e1007010080_ _hd10069_))
                     (let ((_E1007210084_ (lambda () '#f)))
                       (let ((_E1007110108_
                              (lambda ()
                                (if (gx#stx-pair? _e1007010080_)
                                    (let ((_e1007310088_
                                           (gx#syntax-e _e1007010080_)))
                                      (let ((_hd1007410091_
                                             (##car _e1007310088_))
                                            (_tl1007510093_
                                             (##cdr _e1007310088_)))
                                        (if (eq? (gx#stx-e _hd1007410091_)
                                                 'spec:)
                                            (if (gx#stx-pair? _tl1007510093_)
                                                (let ((_e1007610096_
                                                       (gx#syntax-e
                                                        _tl1007510093_)))
                                                  (let ((_hd1007710099_
                                                         (##car _e1007610096_))
                                                        (_tl1007810101_
                                                         (##cdr _e1007610096_)))
                                                    (let ((_spath10104_
                                                           _hd1007710099_))
                                                      (let ((_specs10106_
                                                             _tl1007810101_))
                                                        (if '#t
                                                            '#t
                                                            (_E1007210084_))))))
                                                (_E1007210084_))
                                            (_E1007210084_))))
                                    (_E1007210084_)))))
                         (let () (_E1007110108_))))))))
            (let ((_import-submodule?9683_
                   (lambda (_hd10026_)
                     (let ((_e1002710037_ _hd10026_))
                       (let ((_E1002910041_ (lambda () '#f)))
                         (let ((_E1002810065_
                                (lambda ()
                                  (if (gx#stx-pair? _e1002710037_)
                                      (let ((_e1003010045_
                                             (gx#syntax-e _e1002710037_)))
                                        (let ((_hd1003110048_
                                               (##car _e1003010045_))
                                              (_tl1003210050_
                                               (##cdr _e1003010045_)))
                                          (if (eq? (gx#stx-e _hd1003110048_)
                                                   'in:)
                                              (if (gx#stx-pair? _tl1003210050_)
                                                  (let ((_e1003310053_
                                                         (gx#syntax-e
                                                          _tl1003210050_)))
                                                    (let ((_hd1003410056_
                                                           (##car _e1003310053_))
                                                          (_tl1003510058_
                                                           (##cdr _e1003310053_)))
                                                      (let ((_top10061_
                                                             _hd1003410056_))
                                                        (let ((_sub10063_
                                                               _tl1003510058_))
                                                          (if '#t
                                                              '#t
                                                              (_E1002910041_))))))
                                                  (_E1002910041_))
                                              (_E1002910041_))))
                                      (_E1002910041_)))))
                           (let () (_E1002810065_))))))))
              (let ((_import-runtime?9684_
                     (lambda (_hd9983_)
                       (let ((_e99849994_ _hd9983_))
                         (let ((_E99869998_ (lambda () '#f)))
                           (let ((_E998510022_
                                  (lambda ()
                                    (if (gx#stx-pair? _e99849994_)
                                        (let ((_e998710002_
                                               (gx#syntax-e _e99849994_)))
                                          (let ((_hd998810005_
                                                 (##car _e998710002_))
                                                (_tl998910007_
                                                 (##cdr _e998710002_)))
                                            (if (eq? (gx#stx-e _hd998810005_)
                                                     'runtime:)
                                                (if (gx#stx-pair?
                                                     _tl998910007_)
                                                    (let ((_e999010010_
                                                           (gx#syntax-e
                                                            _tl998910007_)))
                                                      (let ((_hd999110013_
                                                             (##car _e999010010_))
                                                            (_tl999210015_
                                                             (##cdr _e999010010_)))
                                                        (let ((_top10018_
                                                               _hd999110013_))
                                                          (let ((_spath10020_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl999210015_))
                    (if '#t '#t (_E99869998_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E99869998_))
                                                (_E99869998_))))
                                        (_E99869998_)))))
                             (let () (_E998510022_))))))))
                (let ((_import-spec-source9688_
                       (lambda (_spath9754_)
                         (gx#core-import-nested-module
                          _spath9754_
                          _stx9677_))))
                  (let ((_import!9689_
                         (lambda (_rbody9702_)
                           (let ((_current-ctx9704_
                                  (gx#current-expander-context)))
                             (let ((_deps9705_ (make-hash-table-eq)))
                               (let ((_bind!9706_
                                      (lambda (_hd9752_)
                                        (begin
                                          (gx#core-bind-import!__1
                                           _hd9752_
                                           _current-ctx9704_)
                                          (if (if (fxpositive?
                                                   (##structure-ref
                                                    _hd9752_
                                                    '3
                                                    gx#module-import::t
                                                    '#f))
                                                  (fxzero? (##structure-ref
                                                            (##structure-ref
                                                             _hd9752_
                                                             '1
                                                             gx#module-import::t
                                                             '#f)
                                                            '3
                                                            gx#module-export::t
                                                            '#f))
                                                  '#f)
                                              (table-set!
                                               _deps9705_
                                               (##structure-ref
                                                (##structure-ref
                                                 _hd9752_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)
                                                '1
                                                gx#module-export::t
                                                '#f)
                                               '#t)
                                              '#!void)))))
                                 (let ((_fold-e9707_
                                        (lambda (_in9749_ _r9750_)
                                          (if (##structure-direct-instance-of?
                                               _in9749_
                                               'gx#module-import::t)
                                              (cons _in9749_ _r9750_)
                                              (if (##structure-direct-instance-of?
                                                   _in9749_
                                                   'gx#import-set::t)
                                                  (foldl1 cons
                                                          _r9750_
                                                          (##structure-ref
                                                           _in9749_
                                                           '3
                                                           gx#import-set::t
                                                           '#f))
                                                  _r9750_)))))
                                   ((letrec ((_lp9709_
                                              (lambda (_rest9711_ _body9712_)
                                                (let ((_rest97139721_
                                                       _rest9711_))
                                                  (let ((_E97169725_
                                                         (lambda ()
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _rest97139721_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_else97159731_
                                                           (lambda ()
                                                             (begin
                                                               (if (##structure-instance-of?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _current-ctx9704_
                            'gx#module-context::t)
                           (##structure-set!
                            _current-ctx9704_
                            (foldl1 _fold-e9707_
                                    (##structure-ref
                                     _current-ctx9704_
                                     '8
                                     gx#module-context::t
                                     '#f)
                                    _body9712_)
                            '8
                            gx#module-context::t
                            '#f)
                           '#!void)
                       (table-for-each
                        (lambda (_ctx9729_ _g11523_)
                          (gx#eval-module _ctx9729_))
                        _deps9705_)
                       _body9712_))))
              (let ((_K97179737_
                     (lambda (_rest9734_ _hd9735_)
                       (begin
                         (if (##structure-direct-instance-of?
                              _hd9735_
                              'gx#module-import::t)
                             (_bind!9706_ _hd9735_)
                             (if (##structure-direct-instance-of?
                                  _hd9735_
                                  'gx#import-set::t)
                                 (for-each
                                  _bind!9706_
                                  (##structure-ref
                                   _hd9735_
                                   '3
                                   gx#import-set::t
                                   '#f))
                                 (if (##structure-instance-of?
                                      _hd9735_
                                      'gx#module-context::t)
                                     '#!void
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Unexpected import"
                                      _stx9677_
                                      _hd9735_))))
                         (_lp9709_ _rest9734_ (cons _hd9735_ _body9712_))))))
                (if (##pair? _rest97139721_)
                    (let ((_hd97189740_ (##car _rest97139721_))
                          (_tl97199742_ (##cdr _rest97139721_)))
                      (let ((_hd9745_ _hd97189740_))
                        (let ((_rest9747_ _tl97199742_))
                          (_K97179737_ _rest9747_ _hd9745_))))
                    (_else97159731_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _lp9709_)
                                    _rbody9702_
                                    '()))))))))
                    (let ((_expanded-import?9690_
                           (lambda (_e9694_)
                             (let ((_$e9696_
                                    (##structure-direct-instance-of?
                                     _e9694_
                                     'gx#import-set::t)))
                               (if _$e9696_
                                   _$e9696_
                                   (let ((_$e9699_
                                          (##structure-direct-instance-of?
                                           _e9694_
                                           'gx#module-import::t)))
                                     (if _$e9699_
                                         _$e9699_
                                         (##structure-instance-of?
                                          _e9694_
                                          'gx#module-context::t))))))))
                      (let ((_import-submodule9685_
                             (lambda (_hd9950_ _K9951_ _rest9952_ _r9953_)
                               (let ((_e99549961_ _hd9950_))
                                 (let ((_E99569965_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _e99549961_))))
                                   (let ((_E99559979_
                                          (lambda ()
                                            (if (gx#stx-pair? _e99549961_)
                                                (let ((_e99579969_
                                                       (gx#syntax-e
                                                        _e99549961_)))
                                                  (let ((_hd99589972_
                                                         (##car _e99579969_))
                                                        (_tl99599974_
                                                         (##cdr _e99579969_)))
                                                    (let ((_spath9977_
                                                           _tl99599974_))
                                                      (if '#t
                                                          (_import19681_
                                                           (_import-spec-source9688_
                                                            _spath9977_)
                                                           _K9951_
                                                           _rest9952_
                                                           _r9953_)
                                                          (_E99569965_)))))
                                                (_E99569965_)))))
                                     (let () (_E99559979_))))))))
                        (let ((_import-runtime9686_
                               (lambda (_hd9917_ _K9918_ _rest9919_ _r9920_)
                                 (let ((_e99219928_ _hd9917_))
                                   (let ((_E99239932_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _e99219928_))))
                                     (let ((_E99229946_
                                            (lambda ()
                                              (if (gx#stx-pair? _e99219928_)
                                                  (let ((_e99249936_
                                                         (gx#syntax-e
                                                          _e99219928_)))
                                                    (let ((_hd99259939_
                                                           (##car _e99249936_))
                                                          (_tl99269941_
                                                           (##cdr _e99249936_)))
                                                      (let ((_spath9944_
                                                             _tl99269941_))
                                                        (if '#t
                                                            (_K9918_ _rest9919_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (_import-spec-source9688_ _spath9944_)
                                   _r9920_))
                    (_E99239932_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E99239932_)))))
                                       (let () (_E99229946_))))))))
                          (let ((_import-spec9687_
                                 (lambda (_hd9756_ _K9757_ _rest9758_ _r9759_)
                                   (let ((_e97609777_ _hd9756_))
                                     (let ((_E97699781_
                                            (lambda ()
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _e97609777_))))
                                       (let ((_E97629891_
                                              (lambda ()
                                                (if (gx#stx-pair? _e97609777_)
                                                    (let ((_e97709785_
                                                           (gx#syntax-e
                                                            _e97609777_)))
                                                      (let ((_hd97719788_
                                                             (##car _e97709785_))
                                                            (_tl97729790_
                                                             (##cdr _e97709785_)))
                                                        (if (gx#stx-pair?
                                                             _tl97729790_)
                                                            (let ((_e97739793_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl97729790_)))
                      (let ((_hd97749796_ (##car _e97739793_))
                            (_tl97759798_ (##cdr _e97739793_)))
                        (let ((_path9801_ _hd97749796_))
                          (let ((_specs9803_ _tl97759798_))
                            (if '#t
                                (let ((_src-ctx9805_
                                       (_import-spec-source9688_ _path9801_))
                                      (_exports9806_ (make-table))
                                      (_specs9807_
                                       (gx#syntax->list _specs9803_)))
                                  (begin
                                    (for-each
                                     (lambda (_out9809_)
                                       (table-set!
                                        _exports9806_
                                        (cons (##structure-ref
                                               _out9809_
                                               '3
                                               gx#module-export::t
                                               '#f)
                                              (##structure-ref
                                               _out9809_
                                               '4
                                               gx#module-export::t
                                               '#f))
                                        _out9809_))
                                     (##structure-ref
                                      _src-ctx9805_
                                      '9
                                      gx#module-context::t
                                      '#f))
                                    (_K9757_ _rest9758_
                                             (foldl1 (lambda (_spec9811_
                                                              _r9812_)
                                                       (let ((_e98139829_
                                                              _spec9811_))
                                                         (let ((_E98159833_
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _e98139829_))))
                   (let ((_E98149887_
                          (lambda ()
                            (if (gx#stx-pair? _e98139829_)
                                (let ((_e98169837_ (gx#syntax-e _e98139829_)))
                                  (let ((_hd98179840_ (##car _e98169837_))
                                        (_tl98189842_ (##cdr _e98169837_)))
                                    (let ((_phi9845_ _hd98179840_))
                                      (if (gx#stx-pair? _tl98189842_)
                                          (let ((_e98199847_
                                                 (gx#syntax-e _tl98189842_)))
                                            (let ((_hd98209850_
                                                   (##car _e98199847_))
                                                  (_tl98219852_
                                                   (##cdr _e98199847_)))
                                              (let ((_name9855_ _hd98209850_))
                                                (if (gx#stx-pair? _tl98219852_)
                                                    (let ((_e98229857_
                                                           (gx#syntax-e
                                                            _tl98219852_)))
                                                      (let ((_hd98239860_
                                                             (##car _e98229857_))
                                                            (_tl98249862_
                                                             (##cdr _e98229857_)))
                                                        (let ((_src-phi9865_
                                                               _hd98239860_))
                                                          (if (gx#stx-pair?
                                                               _tl98249862_)
                                                              (let ((_e98259867_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl98249862_)))
                        (let ((_hd98269870_ (##car _e98259867_))
                              (_tl98279872_ (##cdr _e98259867_)))
                          (let ((_src-name9875_ _hd98269870_))
                            (if (gx#stx-null? _tl98279872_)
                                (if (if (gx#stx-fixnum? _src-phi9865_)
                                        (if (gx#identifier? _src-name9875_)
                                            (if (gx#stx-fixnum? _phi9845_)
                                                (gx#identifier? _name9855_)
                                                '#f)
                                            '#f)
                                        '#f)
                                    (let ((_src-phi9877_
                                           (gx#stx-e _src-phi9865_))
                                          (_src-name9878_
                                           (gx#core-identifier-key
                                            _src-name9875_))
                                          (_phi9879_ (gx#stx-e _phi9845_))
                                          (_name9880_
                                           (gx#core-identifier-key
                                            _name9855_)))
                                      (let ((_$e9882_
                                             (table-ref
                                              _exports9806_
                                              (cons _src-phi9877_
                                                    _src-name9878_)
                                              '#f)))
                                        (if _$e9882_
                                            ((lambda (_out9885_)
                                               (cons (gx#core-module-export->import__opt-lambda10603
                                                      _out9885_
                                                      _name9880_
                                                      (fx- _phi9879_
                                                           _src-phi9877_))
                                                     _r9812_))
                                             _$e9882_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; no matching export"
                                             _stx9677_
                                             _hd9756_))))
                                    (_E98159833_))
                                (_E98159833_)))))
                      (_E98159833_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E98159833_)))))
                                          (_E98159833_)))))
                                (_E98159833_)))))
                     (let () (_E98149887_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _r9759_
                                                     _specs9807_))))
                                (_E97699781_))))))
                    (_E97699781_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E97699781_)))))
                                         (let ((_E97619913_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _e97609777_)
                                                      (let ((_e97639895_
                                                             (gx#syntax-e
                                                              _e97609777_)))
                                                        (let ((_hd97649898_
                                                               (##car _e97639895_))
                                                              (_tl97659900_
                                                               (##cdr _e97639895_)))
                                                          (if (gx#stx-pair?
                                                               _tl97659900_)
                                                              (let ((_e97669903_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl97659900_)))
                        (let ((_hd97679906_ (##car _e97669903_))
                              (_tl97689908_ (##cdr _e97669903_)))
                          (let ((_path9911_ _hd97679906_))
                            (if (gx#stx-null? _tl97689908_)
                                (if '#t
                                    (_K9757_ _rest9758_
                                             (cons (_import-spec-source9688_
                                                    _path9911_)
                                                   _r9759_))
                                    (_E97629891_))
                                (_E97629891_)))))
                      (_E97629891_))))
              (_E97629891_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let () (_E97619913_)))))))))
                            (let ((_expand19680_
                                   (lambda (_hd10123_
                                            _K10124_
                                            _rest10125_
                                            _r10126_)
                                     (if (gx#core-bound-module? _hd10123_)
                                         (_import19681_
                                          (gx#syntax-local-e__0 _hd10123_)
                                          _K10124_
                                          _rest10125_
                                          _r10126_)
                                         (if (gx#core-library-module-path?
                                              _hd10123_)
                                             (_import19681_
                                              (gx#import-module__0
                                               (gx#core-resolve-library-module-path
                                                _hd10123_))
                                              _K10124_
                                              _rest10125_
                                              _r10126_)
                                             (if (gx#stx-string? _hd10123_)
                                                 (_import19681_
                                                  (gx#import-module__0
                                                   (gx#core-resolve-module-path__opt-lambda10963
                                                    _hd10123_
                                                    (gx#stx-source _stx9677_)))
                                                  _K10124_
                                                  _rest10125_
                                                  _r10126_)
                                                 (if (##structure-instance-of?
                                                      (gx#stx-e _hd10123_)
                                                      'gx#module-context::t)
                                                     (_K10124_
                                                      _rest10125_
                                                      (cons (gx#stx-e
                                                             _hd10123_)
                                                            _r10126_))
                                                     (if (_import-spec?9682_
                                                          _hd10123_)
                                                         (_import-spec9687_
                                                          _hd10123_
                                                          _K10124_
                                                          _rest10125_
                                                          _r10126_)
                                                         (if (_import-submodule?9683_
                                                              _hd10123_)
                                                             (_import-submodule9685_
                                                              _hd10123_
                                                              _K10124_
                                                              _rest10125_
                                                              _r10126_)
                                                             (if (_import-runtime?9684_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd10123_)
                         (_import-runtime9686_
                          _hd10123_
                          _K10124_
                          _rest10125_
                          _r10126_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; illegal import"
                          _stx9677_
                          _hd10123_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (let ((_rbody9692_
                                     (gx#core-expand-import/export
                                      _stx9677_
                                      _expanded-import?9690_
                                      'apply-import-expander
                                      gx#current-import-expander-phi
                                      _expand19680_)))
                                (if _internal-expand?9678_
                                    (reverse _rbody9692_)
                                    (gx#core-quote-syntax__1
                                     (gx#core-cons
                                      '%#import
                                      (_import!9689_ _rbody9692_))
                                     (gx#stx-source _stx9677_)))))))))))))))))
    (begin
      (define gx#core-expand-import%__0
        (lambda (_stx10131_)
          (let ((_internal-expand?10133_ '#f))
            (gx#core-expand-import%__opt-lambda9675
             _stx10131_
             _internal-expand?10133_))))
      (define gx#core-expand-import%
        (lambda _g11525_
          (let ((_g11524_ (length _g11525_)))
            (cond ((fx= _g11524_ 1) (apply gx#core-expand-import%__0 _g11525_))
                  ((fx= _g11524_ 2)
                   (apply gx#core-expand-import%__opt-lambda9675 _g11525_))
                  (else (error "No clause matching arguments" _g11525_))))))))
  (define gx#core-import-nested-module
    (lambda (_spath9604_ _where9605_)
      (let ((_e96069613_ _spath9604_))
        (let ((_E96089617_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e96069613_))))
          (let ((_E96079672_
                 (lambda ()
                   (if (gx#stx-pair? _e96069613_)
                       (let ((_e96099621_ (gx#syntax-e _e96069613_)))
                         (let ((_hd96109624_ (##car _e96099621_))
                               (_tl96119626_ (##cdr _e96099621_)))
                           (let ((_origin9629_ _hd96109624_))
                             (let ((_sub9631_ _tl96119626_))
                               (if '#t
                                   (let ((_origin-ctx9633_
                                          (if (gx#stx-false? _origin9629_)
                                              (gx#current-expander-context)
                                              (gx#import-module__0
                                               _origin9629_))))
                                     ((letrec ((_lp9635_
                                                (lambda (_rest9637_ _ctx9638_)
                                                  (let ((_e96399646_
                                                         _rest9637_))
                                                    (let ((_E96419650_
                                                           (lambda ()
                                                             _ctx9638_)))
                                                      (let ((_E96409668_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _e96399646_)
                           (let ((_e96429654_ (gx#syntax-e _e96399646_)))
                             (let ((_hd96439657_ (##car _e96429654_))
                                   (_tl96449659_ (##cdr _e96429654_)))
                               (let ((_id9662_ _hd96439657_))
                                 (let ((_rest9664_ _tl96449659_))
                                   (if '#t
                                       (let ((_bind9666_
                                              (gx#resolve-identifier__opt-lambda4750
                                               _id9662_
                                               '0
                                               _ctx9638_)))
                                         (begin
                                           (if (if (##structure-direct-instance-of?
                                                    _bind9666_
                                                    'gx#syntax-binding::t)
                                                   (##structure-instance-of?
                                                    (##structure-ref
                                                     _bind9666_
                                                     '4
                                                     gx#syntax-binding::t
                                                     '#f)
                                                    'gx#module-context::t)
                                                   '#f)
                                               '#!void
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; not bound as module"
                                                _where9605_
                                                _spath9604_
                                                _id9662_))
                                           (_lp9635_
                                            _rest9664_
                                            (##structure-ref
                                             _bind9666_
                                             '4
                                             gx#syntax-binding::t
                                             '#f))))
                                       (_E96419650_))))))
                           (_E96419650_)))))
                (let () (_E96409668_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _lp9635_)
                                      _sub9631_
                                      _origin-ctx9633_))
                                   (_E96089617_))))))
                       (_E96089617_)))))
            (let () (_E96079672_)))))))
  (define gx#core-expand-import-source
    (lambda (_hd9602_)
      (gx#core-expand-import%__opt-lambda9675
       (cons 'import-internal% (cons _hd9602_ '()))
       '#t)))
  (begin
    (define gx#core-expand-export%__opt-lambda9184
      (lambda (_stx9186_ _internal-expand?9187_)
        (let ((_make-export__opt-lambda9548__1149311494_
               (lambda (_bind9550_ _phi9551_ _ctx9552_ _name9553_)
                 (let ((_key9555_
                        (##structure-ref _bind9550_ '2 gx#binding::t '#f)))
                   (let ((_export-key9557_
                          (if _name9553_
                              (gx#core-identifier-key _name9553_)
                              _key9555_)))
                     (let ()
                       (##structure
                        gx#module-export::t
                        _ctx9552_
                        _key9555_
                        _phi9551_
                        _export-key9557_
                        (let ((_$e9560_
                               (##structure-instance-of?
                                _bind9550_
                                'gx#extern-binding::t)))
                          (if _$e9560_
                              _$e9560_
                              (##structure-direct-instance-of?
                               _bind9550_
                               'gx#import-binding::t))))))))))
          (let ((_make-export__0__1149511498_
                 (lambda (_bind9566_)
                   (let ((_phi9568_ (gx#current-export-expander-phi)))
                     (let ((_ctx9570_ (gx#current-expander-context)))
                       (let ((_name9572_ '#f))
                         (_make-export__opt-lambda9548__1149311494_
                          _bind9566_
                          _phi9568_
                          _ctx9570_
                          _name9572_)))))))
            (let ((_make-export__1__1149611499_
                   (lambda (_bind9574_ _phi9575_)
                     (let ((_ctx9577_ (gx#current-expander-context)))
                       (let ((_name9579_ '#f))
                         (_make-export__opt-lambda9548__1149311494_
                          _bind9574_
                          _phi9575_
                          _ctx9577_
                          _name9579_))))))
              (let ((_make-export__2__1149711500_
                     (lambda (_bind9581_ _phi9582_ _ctx9583_)
                       (let ((_name9585_ '#f))
                         (_make-export__opt-lambda9548__1149311494_
                          _bind9581_
                          _phi9582_
                          _ctx9583_
                          _name9585_)))))
                (let ((_make-export9189_
                       (lambda _g11527_
                         (let ((_g11526_ (length _g11527_)))
                           (cond ((fx= _g11526_ 1)
                                  (apply _make-export__0__1149511498_
                                         _g11527_))
                                 ((fx= _g11526_ 2)
                                  (apply _make-export__1__1149611499_
                                         _g11527_))
                                 ((fx= _g11526_ 3)
                                  (apply _make-export__2__1149711500_
                                         _g11527_))
                                 ((fx= _g11526_ 4)
                                  (apply _make-export__opt-lambda9548__1149311494_
                                         _g11527_))
                                 (else
                                  (error "No clause matching arguments"
                                         _g11527_)))))))
                  (let ((_export-imports9191_
                         (lambda (_src9212_ _r9213_)
                           (let ((_current-ctx9215_
                                  (gx#current-expander-context)))
                             (let ((_current-phi9216_
                                    (gx#current-export-expander-phi)))
                               (let ((_import->export9217_
                                      (lambda (_in9225_)
                                        (let ((_in92269234_ _in9225_))
                                          (let ((_E92289238_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _in92269234_))))
                                            (let ((_K92299245_
                                                   (lambda (_phi9241_
                                                            _key9242_
                                                            _out9243_)
                                                     (if (fx= _phi9241_
                                                              _current-phi9216_)
                                                         (if (eq? _src9212_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##structure-ref
                           _out9243_
                           '1
                           gx#module-export::t
                           '#f))
                     (##structure
                      gx#module-export::t
                      _current-ctx9215_
                      _key9242_
                      _phi9241_
                      _key9242_
                      '#t)
                     '#f)
                 '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##structure-direct-instance-of?
                                                   _in92269234_
                                                   (##type-id
                                                    gx#module-import::t))
                                                  (let ((_e92309248_
                                                         (##vector-ref
                                                          _in92269234_
                                                          '1)))
                                                    (let ((_out9251_
                                                           _e92309248_))
                                                      (let ((_e92319253_
                                                             (##vector-ref
                                                              _in92269234_
                                                              '2)))
                                                        (let ((_key9256_
                                                               _e92319253_))
                                                          (let ((_e92329258_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref _in92269234_ '3)))
                    (let ((_phi9261_ _e92329258_))
                      (_K92299245_ _phi9261_ _key9256_ _out9251_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E92289238_))))))))
                                 (let ((_fold-e9218_
                                        (lambda (_in9220_ _r9221_)
                                          (let ((_out9223_
                                                 (_import->export9217_
                                                  _in9220_)))
                                            (if _out9223_
                                                (cons _out9223_ _r9221_)
                                                _r9221_)))))
                                   (cons (##structure
                                          gx#export-set::t
                                          _src9212_
                                          _current-phi9216_
                                          (foldl1 _fold-e9218_
                                                  '()
                                                  (##structure-ref
                                                   _current-ctx9215_
                                                   '8
                                                   gx#module-context::t
                                                   '#f)))
                                         _r9213_))))))))
                    (let ((_export!9192_
                           (lambda (_rbody9202_)
                             (let ((_current-ctx9204_
                                    (gx#current-expander-context)))
                               (let ((_fold-e9205_
                                      (lambda (_out9209_ _r9210_)
                                        (if (##structure-direct-instance-of?
                                             _out9209_
                                             'gx#module-export::t)
                                            (cons _out9209_ _r9210_)
                                            (if (##structure-direct-instance-of?
                                                 _out9209_
                                                 'gx#export-set::t)
                                                (foldl1 cons
                                                        _r9210_
                                                        (##structure-ref
                                                         _out9209_
                                                         '3
                                                         gx#export-set::t
                                                         '#f))
                                                _r9210_)))))
                                 (let ((_body9207_ (reverse _rbody9202_)))
                                   (begin
                                     (##structure-set!
                                      _current-ctx9204_
                                      (foldl1 _fold-e9205_
                                              (##structure-ref
                                               _current-ctx9204_
                                               '9
                                               gx#module-context::t
                                               '#f)
                                              _body9207_)
                                      '9
                                      gx#module-context::t
                                      '#f)
                                     _body9207_)))))))
                      (let ((_expanded-export?9193_
                             (lambda (_e9197_)
                               (let ((_$e9199_
                                      (##structure-direct-instance-of?
                                       _e9197_
                                       'gx#module-export::t)))
                                 (if _$e9199_
                                     _$e9199_
                                     (##structure-direct-instance-of?
                                      _e9197_
                                      'gx#export-set::t))))))
                        (let ((_expand19190_
                               (lambda (_hd9263_ _K9264_ _rest9265_ _r9266_)
                                 (let ((_e92679299_ _hd9263_))
                                   (let ((_E92949303_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; illegal export"
                                             _stx9186_
                                             _hd9263_))))
                                     (let ((_E92849382_
                                            (lambda ()
                                              (if (gx#stx-pair? _e92679299_)
                                                  (let ((_e92959307_
                                                         (gx#syntax-e
                                                          _e92679299_)))
                                                    (let ((_hd92969310_
                                                           (##car _e92959307_))
                                                          (_tl92979312_
                                                           (##cdr _e92959307_)))
                                                      (if (eq? (gx#stx-e
                                                                _hd92969310_)
                                                               'import:)
                                                          (let ((_in9315_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl92979312_))
                    (if (gx#stx-list? _in9315_)
                        ((letrec ((_lp9317_
                                   (lambda (_in-rest9319_ _r9320_)
                                     (let ((_e93219328_ _in-rest9319_))
                                       (let ((_E93239332_
                                              (lambda ()
                                                (_K9264_ _rest9265_ _r9320_))))
                                         (let ((_E93229378_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _e93219328_)
                                                      (let ((_e93249336_
                                                             (gx#syntax-e
                                                              _e93219328_)))
                                                        (let ((_hd93259339_
                                                               (##car _e93249336_))
                                                              (_tl93269341_
                                                               (##cdr _e93249336_)))
                                                          (let ((_hd9344_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd93259339_))
                    (let ((_in-rest9346_ _tl93269341_))
                      (if '#t
                          (let ((_src9376_
                                 (if (gx#core-bound-module? _hd9344_)
                                     (gx#syntax-local-e__0 _hd9344_)
                                     (if (gx#core-library-module-path?
                                          _hd9344_)
                                         (gx#import-module__0
                                          (gx#core-resolve-library-module-path
                                           _hd9344_))
                                         (if (gx#stx-string? _hd9344_)
                                             (gx#import-module__0
                                              (gx#core-resolve-module-path__opt-lambda10963
                                               _hd9344_
                                               (gx#stx-source _stx9186_)))
                                             (let ((_e93479354_ _hd9344_))
                                               (let ((_E93499358_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; illegal re-export"
                                                         _stx9186_
                                                         _hd9344_))))
                                                 (let ((_E93489372_
                                                        (lambda ()
                                                          (if (gx#stx-pair?
                                                               _e93479354_)
                                                              (let ((_e93509362_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _e93479354_)))
                        (let ((_hd93519365_ (##car _e93509362_))
                              (_tl93529367_ (##cdr _e93509362_)))
                          (if (eq? (gx#stx-e _hd93519365_) 'in:)
                              (let ((_spath9370_ _tl93529367_))
                                (if '#t
                                    (gx#core-import-nested-module
                                     _spath9370_
                                     _stx9186_)
                                    (_E93499358_)))
                              (_E93499358_))))
                      (_E93499358_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (_E93489372_))))))))))
                            (_lp9317_
                             _in-rest9346_
                             (_export-imports9191_ _src9376_ _r9320_)))
                          (_E93239332_))))))
              (_E93239332_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let () (_E93229378_))))))))
                           _lp9317_)
                         _in9315_
                         _r9266_)
                        (_E92949303_)))
                  (_E92949303_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E92949303_)))))
                                       (let ((_E92719421_
                                              (lambda ()
                                                (if (gx#stx-pair? _e92679299_)
                                                    (let ((_e92859386_
                                                           (gx#syntax-e
                                                            _e92679299_)))
                                                      (let ((_hd92869389_
                                                             (##car _e92859386_))
                                                            (_tl92879391_
                                                             (##cdr _e92859386_)))
                                                        (if (eq? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd92869389_)
                         'rename:)
                    (if (gx#stx-pair? _tl92879391_)
                        (let ((_e92889394_ (gx#syntax-e _tl92879391_)))
                          (let ((_hd92899397_ (##car _e92889394_))
                                (_tl92909399_ (##cdr _e92889394_)))
                            (let ((_id9402_ _hd92899397_))
                              (if (gx#stx-pair? _tl92909399_)
                                  (let ((_e92919404_
                                         (gx#syntax-e _tl92909399_)))
                                    (let ((_hd92929407_ (##car _e92919404_))
                                          (_tl92939409_ (##cdr _e92919404_)))
                                      (let ((_name9412_ _hd92929407_))
                                        (if (gx#stx-null? _tl92939409_)
                                            (if '#t
                                                (let ((_phi9414_
                                                       (gx#current-export-expander-phi)))
                                                  (let ((_$e9416_
                                                         (gx#core-resolve-identifier__1
                                                          _id9402_
                                                          _phi9414_)))
                                                    (if _$e9416_
                                                        ((lambda (_bind9419_)
                                                           (_K9264_ _rest9265_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (_make-export__opt-lambda9548__1149311494_
                                   _bind9419_
                                   _phi9414_
                                   (gx#current-expander-context)
                                   _name9412_)
                                  _r9266_)))
                 _$e9416_)
                (gx#raise-syntax-error
                 '#f
                 '"Reference to unbound identifier"
                 _stx9186_
                 _hd9263_
                 _id9402_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E92849382_))
                                            (_E92849382_)))))
                                  (_E92849382_)))))
                        (_E92849382_))
                    (_E92849382_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E92849382_)))))
                                         (let ((_E92709470_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _e92679299_)
                                                      (let ((_e92729425_
                                                             (gx#syntax-e
                                                              _e92679299_)))
                                                        (let ((_hd92739428_
                                                               (##car _e92729425_))
                                                              (_tl92749430_
                                                               (##cdr _e92729425_)))
                                                          (if (eq? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd92739428_)
                           'spec:)
                      (if (gx#stx-pair? _tl92749430_)
                          (let ((_e92759433_ (gx#syntax-e _tl92749430_)))
                            (let ((_hd92769436_ (##car _e92759433_))
                                  (_tl92779438_ (##cdr _e92759433_)))
                              (let ((_phi9441_ _hd92769436_))
                                (if (gx#stx-pair? _tl92779438_)
                                    (let ((_e92789443_
                                           (gx#syntax-e _tl92779438_)))
                                      (let ((_hd92799446_ (##car _e92789443_))
                                            (_tl92809448_ (##cdr _e92789443_)))
                                        (let ((_id9451_ _hd92799446_))
                                          (if (gx#stx-pair? _tl92809448_)
                                              (let ((_e92819453_
                                                     (gx#syntax-e
                                                      _tl92809448_)))
                                                (let ((_hd92829456_
                                                       (##car _e92819453_))
                                                      (_tl92839458_
                                                       (##cdr _e92819453_)))
                                                  (let ((_name9461_
                                                         _hd92829456_))
                                                    (if (gx#stx-null?
                                                         _tl92839458_)
                                                        (if (if (gx#stx-fixnum?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _phi9441_)
                        (if (gx#identifier? _id9451_)
                            (gx#identifier? _name9461_)
                            '#f)
                        '#f)
                    (let ((_phi9463_ (gx#stx-e _phi9441_)))
                      (let ((_$e9465_
                             (gx#core-resolve-identifier__1
                              _id9451_
                              _phi9463_)))
                        (if _$e9465_
                            ((lambda (_bind9468_)
                               (_K9264_ _rest9265_
                                        (cons (_make-export__opt-lambda9548__1149311494_
                                               _bind9468_
                                               _phi9463_
                                               (gx#current-expander-context)
                                               _name9461_)
                                              _r9266_)))
                             _$e9465_)
                            (gx#raise-syntax-error
                             '#f
                             '"Reference to unbound identifier"
                             _stx9186_
                             _hd9263_
                             _id9451_))))
                    (_E92719421_))
                (_E92719421_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E92719421_)))))
                                    (_E92719421_)))))
                          (_E92719421_))
                      (_E92719421_))))
              (_E92719421_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_E92699481_
                                                  (lambda ()
                                                    (let ((_id9474_
                                                           _e92679299_))
                                                      (if (gx#identifier?
                                                           _id9474_)
                                                          (let ((_$e9476_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-resolve-identifier__1
                          _id9474_
                          (gx#current-export-expander-phi))))
                    (if _$e9476_
                        ((lambda (_bind9479_)
                           (_K9264_ _rest9265_
                                    (cons (_make-export__0__1149511498_
                                           _bind9479_)
                                          _r9266_)))
                         _$e9476_)
                        (gx#raise-syntax-error
                         '#f
                         '"Reference to unbound identifier"
                         _stx9186_
                         _hd9263_)))
                  (_E92709470_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_E92689545_
                                                    (lambda ()
                                                      (if (eq? (gx#stx-e
                                                                _e92679299_)
                                                               '#t)
                                                          (if '#t
                                                              (let ((_current-ctx9485_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#current-expander-context)))
                        (let ((_current-phi9487_
                               (gx#current-export-expander-phi)))
                          (let ((_phi-ctx9489_
                                 (gx#core-context-shift
                                  _current-ctx9485_
                                  _current-phi9487_)))
                            (let ((_phi-bind9491_
                                   (table->list
                                    (##structure-ref
                                     _phi-ctx9489_
                                     '2
                                     gx#expander-context::t
                                     '#f))))
                              (let ()
                                ((letrec ((_lp9494_
                                           (lambda (_bind-rest9496_ _set9497_)
                                             (let ((_bind-rest94989508_
                                                    _bind-rest9496_))
                                               (let ((_E95019512_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _bind-rest94989508_))))
                                                 (let ((_else95009516_
                                                        (lambda ()
                                                          (_K9264_ _rest9265_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (##structure
                                  gx#export-set::t
                                  '#f
                                  _current-phi9487_
                                  _set9497_)
                                 _r9266_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_K95029526_
                                                          (lambda (_bind-rest9519_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _bind9520_
                           _key9521_)
                    (if (let ((_$e9523_
                               (##structure-direct-instance-of?
                                _bind9520_
                                'gx#import-binding::t)))
                          (if _$e9523_
                              _$e9523_
                              (gx#private-feature-binding? _bind9520_)))
                        (_lp9494_ _bind-rest9519_ _set9497_)
                        (_lp9494_
                         _bind-rest9519_
                         (cons (_make-export__2__1149711500_
                                _bind9520_
                                _current-phi9487_
                                _current-ctx9485_)
                               _set9497_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##pair? _bind-rest94989508_)
                                                         (let ((_hd95039529_
                                                                (##car _bind-rest94989508_))
                                                               (_tl95049531_
                                                                (##cdr _bind-rest94989508_)))
                                                           (if (##pair? _hd95039529_)
                                                               (let ((_hd95059534_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##car _hd95039529_))
                             (_tl95069536_ (##cdr _hd95039529_)))
                         (let ((_key9539_ _hd95059534_))
                           (let ((_bind9541_ _tl95069536_))
                             (let ((_bind-rest9543_ _tl95049531_))
                               (_K95029526_
                                _bind-rest9543_
                                _bind9541_
                                _key9539_)))))
                       (_else95009516_)))
                 (_else95009516_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _lp9494_)
                                 _phi-bind9491_
                                 '()))))))
                      (_E92699481_))
                  (_E92699481_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let () (_E92689545_))))))))))))
                          (let ((_rbody9195_
                                 (gx#core-expand-import/export
                                  _stx9186_
                                  _expanded-export?9193_
                                  'apply-export-expander
                                  gx#current-export-expander-phi
                                  _expand19190_)))
                            (if _internal-expand?9187_
                                (reverse _rbody9195_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#export
                                  (_export!9192_ _rbody9195_))
                                 (gx#stx-source _stx9186_)))))))))))))))
    (begin
      (define gx#core-expand-export%__0
        (lambda (_stx9595_)
          (let ((_internal-expand?9597_ '#f))
            (gx#core-expand-export%__opt-lambda9184
             _stx9595_
             _internal-expand?9597_))))
      (define gx#core-expand-export%
        (lambda _g11529_
          (let ((_g11528_ (length _g11529_)))
            (cond ((fx= _g11528_ 1) (apply gx#core-expand-export%__0 _g11529_))
                  ((fx= _g11528_ 2)
                   (apply gx#core-expand-export%__opt-lambda9184 _g11529_))
                  (else (error "No clause matching arguments" _g11529_))))))))
  (define gx#core-expand-export-source
    (lambda (_hd9183_)
      (gx#core-expand-export%__opt-lambda9184
       (cons 'export-macro% (cons _hd9183_ '()))
       '#t)))
  (define gx#core-expand-provide%
    (lambda (_stx9153_)
      (let ((_e91549161_ _stx9153_))
        (let ((_E91569165_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e91549161_))))
          (let ((_E91559179_
                 (lambda ()
                   (if (gx#stx-pair? _e91549161_)
                       (let ((_e91579169_ (gx#syntax-e _e91549161_)))
                         (let ((_hd91589172_ (##car _e91579169_))
                               (_tl91599174_ (##cdr _e91579169_)))
                           (let ((_body9177_ _tl91599174_))
                             (if (gx#identifier-list? _body9177_)
                                 (begin
                                   (gx#stx-for-each1
                                    gx#core-bind-feature!
                                    _body9177_)
                                   (gx#core-quote-syntax__1
                                    (gx#core-cons
                                     '%#provide
                                     (gx#stx-map1
                                      gx#core-quote-syntax
                                      _body9177_))
                                    (gx#stx-source _stx9153_)))
                                 (_E91569165_)))))
                       (_E91569165_)))))
            (let () (_E91559179_)))))))
  (begin
    (define gx#core-bind-feature!__opt-lambda9117
      (lambda (_id9119_ _private?9120_ _phi9121_ _ctx9122_)
        (gx#core-bind-syntax!__opt-lambda6213
         _id9119_
         ((if _private?9120_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id9119_))
         _private?9120_
         _phi9121_
         _ctx9122_)))
    (begin
      (define gx#core-bind-feature!__0
        (lambda (_id9127_)
          (let ((_private?9129_ '#f))
            (let ((_phi9131_ (gx#current-expander-phi)))
              (let ((_ctx9133_ (gx#current-expander-context)))
                (gx#core-bind-feature!__opt-lambda9117
                 _id9127_
                 _private?9129_
                 _phi9131_
                 _ctx9133_))))))
      (define gx#core-bind-feature!__1
        (lambda (_id9135_ _private?9136_)
          (let ((_phi9138_ (gx#current-expander-phi)))
            (let ((_ctx9140_ (gx#current-expander-context)))
              (gx#core-bind-feature!__opt-lambda9117
               _id9135_
               _private?9136_
               _phi9138_
               _ctx9140_)))))
      (define gx#core-bind-feature!__2
        (lambda (_id9142_ _private?9143_ _phi9144_)
          (let ((_ctx9146_ (gx#current-expander-context)))
            (gx#core-bind-feature!__opt-lambda9117
             _id9142_
             _private?9143_
             _phi9144_
             _ctx9146_))))
      (define gx#core-bind-feature!
        (lambda _g11531_
          (let ((_g11530_ (length _g11531_)))
            (cond ((fx= _g11530_ 1) (apply gx#core-bind-feature!__0 _g11531_))
                  ((fx= _g11530_ 2) (apply gx#core-bind-feature!__1 _g11531_))
                  ((fx= _g11530_ 3) (apply gx#core-bind-feature!__2 _g11531_))
                  ((fx= _g11530_ 4)
                   (apply gx#core-bind-feature!__opt-lambda9117 _g11531_))
                  (else (error "No clause matching arguments" _g11531_)))))))))
