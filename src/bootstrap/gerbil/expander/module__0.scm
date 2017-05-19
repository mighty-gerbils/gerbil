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
    (lambda _$args11393_
      (apply make-struct-instance gx#module-import::t _$args11393_)))
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
    (lambda _$args11390_
      (apply make-struct-instance gx#module-export::t _$args11390_)))
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
    (lambda _$args11387_
      (apply make-struct-instance gx#import-set::t _$args11387_)))
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
    (lambda _$args11384_
      (apply make-struct-instance gx#export-set::t _$args11384_)))
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
    (lambda _$args11381_
      (apply make-struct-instance gx#import-expander::t _$args11381_)))
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
    (lambda _$args11378_
      (apply make-struct-instance gx#export-expander::t _$args11378_)))
  (define gx#current-import-expander-phi (make-parameter '#f))
  (define gx#current-export-expander-phi (make-parameter '#f))
  (define gx#current-module-reader-path (make-parameter '#f))
  (define gx#module-context:::init!
    (lambda (_self11372_ _id11373_ _super11374_ _ns11375_ _path11376_)
      (direct-struct-instance-init!
       _self11372_
       _id11373_
       (make-hash-table-eq)
       _super11374_
       '#f
       '#f
       _ns11375_
       _path11376_
       '()
       '()
       '#f
       '#f)))
  (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
  (begin
    (define gx#prelude-context:::init!__opt-lambda11336
      (lambda (_self11338_ _ctx11339_ _root11340_)
        (let ((_super11348_
               (let ((_$e11342_ _root11340_))
                 (if _$e11342_
                     _$e11342_
                     (let ((_$e11345_ (gx#core-context-root__0)))
                       (if _$e11345_
                           _$e11345_
                           (make-struct-instance gx#root-context::t)))))))
          (if _ctx11339_
              (let ((_id11351_
                     (##structure-ref
                      _ctx11339_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path11352_
                     (##structure-ref _ctx11339_ '7 gx#module-context::t '#f))
                    (_in11353_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx11339_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e11354_
                     (make-promise (lambda () (gx#eval-module _ctx11339_)))))
                (begin
                  (direct-struct-instance-init!
                   _self11338_
                   _id11351_
                   (make-hash-table-eq)
                   _super11348_
                   '#f
                   '#f
                   _path11352_
                   _in11353_
                   _e11354_)
                  (for-each
                   (lambda (_g1135511357_)
                     (gx#core-bind-weak-import!__opt-lambda10627
                      _g1135511357_
                      _self11338_))
                   _in11353_)))
              (direct-struct-instance-init!
               _self11338_
               '#f
               (make-hash-table-eq)
               _super11348_
               '#f
               '#f
               '#f
               '()
               '#f)))))
    (begin
      (define gx#prelude-context:::init!__0
        (lambda (_self11363_ _ctx11364_)
          (let ((_root11366_ '#f))
            (gx#prelude-context:::init!__opt-lambda11336
             _self11363_
             _ctx11364_
             _root11366_))))
      (define gx#prelude-context:::init!
        (lambda _g11409_
          (let ((_g11408_ (length _g11409_)))
            (cond ((fx= _g11408_ 2)
                   (apply gx#prelude-context:::init!__0 _g11409_))
                  ((fx= _g11408_ 3)
                   (apply gx#prelude-context:::init!__opt-lambda11336
                          _g11409_))
                  (else (error "No clause matching arguments" _g11409_))))))))
  (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
  (define gx#import-expander:::init!
    (lambda (_self11334_ _e11335_)
      (direct-struct-instance-init!
       _self11334_
       _e11335_
       (gx#current-expander-context)
       (fx- (gx#current-expander-phi) '1))))
  (bind-method! gx#import-expander::t ':init! gx#import-expander:::init! '#f)
  (define gx#export-expander:::init!
    (lambda (_self11331_ _e11332_)
      (direct-struct-instance-init!
       _self11331_
       _e11332_
       (gx#current-expander-context)
       (fx- (gx#current-expander-phi) '1))))
  (bind-method! gx#export-expander::t ':init! gx#export-expander:::init! '#f)
  (define gx#import-expander::apply-import-expander
    (lambda (_g1132311326_ _g1132411328_)
      (gx#core-apply-user-expander__opt-lambda4623
       _g1132311326_
       _g1132411328_
       'apply-import-expander)))
  (bind-method!
   gx#import-expander::t
   'apply-import-expander
   gx#import-expander::apply-import-expander
   '#f)
  (define gx#export-expander::apply-export-expander
    (lambda (_g1131611319_ _g1131711321_)
      (gx#core-apply-user-expander__opt-lambda4623
       _g1131611319_
       _g1131711321_
       'apply-export-expander)))
  (bind-method!
   gx#export-expander::t
   'apply-export-expander
   gx#export-expander::apply-export-expander
   '#f)
  (define gx#module-source-path
    (lambda (_ctx11310_)
      (let ((_path11312_
             (##structure-ref _ctx11310_ '7 gx#module-context::t '#f)))
        (let ((_path11314_
               (if (pair? _path11312_) (last _path11312_) _path11312_)))
          (let () (if (string? _path11314_) _path11314_ '#f))))))
  (begin
    (define gx#import-module__opt-lambda11284
      (lambda (_path11286_ _reload?11287_ _eval?11288_)
        (let ((_ctx11290_
               ((gx#current-expander-module-import)
                _path11286_
                _reload?11287_)))
          (begin
            (if (if _ctx11290_ _eval?11288_ '#f)
                (gx#eval-module _ctx11290_)
                '#!void)
            _ctx11290_))))
    (begin
      (define gx#import-module__0
        (lambda (_path11295_)
          (let ((_reload?11297_ '#f))
            (let ((_eval?11299_ '#f))
              (gx#import-module__opt-lambda11284
               _path11295_
               _reload?11297_
               _eval?11299_)))))
      (define gx#import-module__1
        (lambda (_path11301_ _reload?11302_)
          (let ((_eval?11304_ '#f))
            (gx#import-module__opt-lambda11284
             _path11301_
             _reload?11302_
             _eval?11304_))))
      (define gx#import-module
        (lambda _g11411_
          (let ((_g11410_ (length _g11411_)))
            (cond ((fx= _g11410_ 1) (apply gx#import-module__0 _g11411_))
                  ((fx= _g11410_ 2) (apply gx#import-module__1 _g11411_))
                  ((fx= _g11410_ 3)
                   (apply gx#import-module__opt-lambda11284 _g11411_))
                  (else (error "No clause matching arguments" _g11411_))))))))
  (define gx#eval-module
    (lambda (_mod11283_) ((gx#current-expander-module-eval) _mod11283_)))
  (define gx#core-eval-module
    (lambda (_obj11268_)
      (let ((_force-e11270_
             (lambda (_getf11279_ _e11280_)
               (call-with-parameters
                (lambda () (force (_getf11279_ _e11280_)))
                gx#current-expander-context
                _e11280_
                gx#current-expander-phi
                '0))))
        ((letrec ((_recur11272_
                   (lambda (_e11274_)
                     (if (##structure-instance-of?
                          _e11274_
                          'gx#module-context::t)
                         (begin
                           (let ((_$e11276_
                                  (gx#core-context-prelude__opt-lambda11249
                                   _e11274_)))
                             (if _$e11276_ (_recur11272_ _$e11276_) '#!void))
                           (_force-e11270_ gx#module-context-e _e11274_))
                         (if (##structure-instance-of?
                              _e11274_
                              'gx#prelude-context::t)
                             (_force-e11270_ gx#prelude-context-e _e11274_)
                             (if (gx#stx-string? _e11274_)
                                 (_recur11272_
                                  (gx#import-module__0
                                   (gx#core-resolve-module-path__0 _e11274_)))
                                 (if (gx#core-library-module-path? _e11274_)
                                     (_recur11272_
                                      (gx#import-module__0
                                       (gx#core-resolve-library-module-path
                                        _e11274_)))
                                     (error '"Cannot eval module"
                                            _obj11268_))))))))
           _recur11272_)
         _obj11268_))))
  (begin
    (define gx#core-context-prelude__opt-lambda11249
      (lambda (_ctx11251_)
        ((letrec ((_lp11253_
                   (lambda (_e11255_)
                     (if (let ((_$e11257_
                                (##structure-instance-of?
                                 _e11255_
                                 'gx#module-context::t)))
                           (if _$e11257_
                               _$e11257_
                               (##structure-instance-of?
                                _e11255_
                                'gx#local-context::t)))
                         (_lp11253_
                          (##structure-ref _e11255_ '3 gx#phi-context::t '#f))
                         (if (##structure-instance-of?
                              _e11255_
                              'gx#prelude-context::t)
                             _e11255_
                             '#f)))))
           _lp11253_)
         _ctx11251_)))
    (begin
      (define gx#core-context-prelude__0
        (lambda ()
          (let ((_ctx11264_ (gx#current-expander-context)))
            (gx#core-context-prelude__opt-lambda11249 _ctx11264_))))
      (define gx#core-context-prelude
        (lambda _g11413_
          (let ((_g11412_ (length _g11413_)))
            (cond ((fx= _g11412_ 0)
                   (apply gx#core-context-prelude__0 _g11413_))
                  ((fx= _g11412_ 1)
                   (apply gx#core-context-prelude__opt-lambda11249 _g11413_))
                  (else (error "No clause matching arguments" _g11413_))))))))
  (define gx#core-module->prelude-context
    (lambda (_ctx11241_)
      (let ((_ht11243_ (gx#current-expander-module-registry)))
        (let ((_$e11245_ (table-ref _ht11243_ _ctx11241_ '#f)))
          (if _$e11245_
              (values _$e11245_)
              (let ((_pre11248_
                     (let ((__obj11404 (make-object gx#prelude-context::t '8)))
                       (begin
                         (gx#prelude-context:::init!__0 __obj11404 _ctx11241_)
                         __obj11404))))
                (begin
                  (table-set! _ht11243_ _ctx11241_ _pre11248_)
                  _pre11248_)))))))
  (begin
    (define gx#core-import-module__opt-lambda11193
      (lambda (_rpath11195_ _reload?11196_)
        (let ((_import-source11198_
               (lambda (_path11210_)
                 (begin
                   (if (member _path11210_ (gx#current-expander-path))
                       (error '"Cyclic expansion" _path11210_)
                       '#!void)
                   (call-with-parameters
                    (lambda ()
                      (let ((_g11414_ (gx#core-read-module _path11210_)))
                        (begin
                          (let ((_g11415_ (values-count _g11414_)))
                            (if (not (fx= _g11415_ 4))
                                (error "Context expects 4 values" _g11415_)))
                          (let ((_pre11213_ (values-ref _g11414_ 0))
                                (_id11214_ (values-ref _g11414_ 1))
                                (_ns11215_ (values-ref _g11414_ 2))
                                (_body11216_ (values-ref _g11414_ 3)))
                            (let ((_prelude11221_
                                   (if (##structure-instance-of?
                                        _pre11213_
                                        'gx#prelude-context::t)
                                       _pre11213_
                                       (if (##structure-instance-of?
                                            _pre11213_
                                            'gx#module-context::t)
                                           (gx#core-module->prelude-context
                                            _pre11213_)
                                           (if (string? _pre11213_)
                                               (gx#core-module->prelude-context
                                                (gx#core-import-module__0
                                                 _pre11213_))
                                               (if (not _pre11213_)
                                                   (let ((_$e11218_
                                                          (gx#current-expander-module-prelude)))
                                                     (if _$e11218_
                                                         _$e11218_
                                                         (let ((__obj11405
                                                                (make-object
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#prelude-context::t
                         '8)))
                   (begin
                     (gx#prelude-context:::init!__0 __obj11405 '#f)
                     __obj11405))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (error '"Cannot import module; unknown prelude"
                                                          _rpath11195_
                                                          _pre11213_)))))))
                              (let ((_ctx11223_
                                     (let ((__obj11406
                                            (make-object
                                             gx#module-context::t
                                             '11)))
                                       (begin
                                         (gx#module-context:::init!
                                          __obj11406
                                          _id11214_
                                          _prelude11221_
                                          _ns11215_
                                          _path11210_)
                                         __obj11406))))
                                (let ((_body11225_
                                       (gx#core-expand-module-begin
                                        _body11216_
                                        _ctx11223_)))
                                  (let ((_body11227_
                                         (gx#core-quote-syntax__opt-lambda3983
                                          (gx#core-cons '%#begin _body11225_)
                                          _path11210_
                                          _ctx11223_
                                          '())))
                                    (let ()
                                      (begin
                                        (##structure-set!
                                         _ctx11223_
                                         (make-promise
                                          (lambda ()
                                            (gx#eval-syntax* _body11227_)))
                                         '10
                                         gx#module-context::t
                                         '#f)
                                        (##structure-set!
                                         _ctx11223_
                                         _body11227_
                                         '11
                                         gx#module-context::t
                                         '#f)
                                        (table-set!
                                         (gx#current-expander-module-registry)
                                         _path11210_
                                         _ctx11223_)
                                        (table-set!
                                         (gx#current-expander-module-registry)
                                         _id11214_
                                         _ctx11223_)
                                        _ctx11223_))))))))))
                    gx#current-expander-context
                    (gx#core-context-root__0)
                    gx#current-expander-marks
                    '()
                    gx#current-expander-phi
                    '0
                    gx#current-expander-path
                    (cons _path11210_ (gx#current-expander-path))
                    gx#current-import-expander-phi
                    '#f
                    gx#current-export-expander-phi
                    '#f)))))
          (let ((_$e11200_
                 (if (not _reload?11196_)
                     (table-ref
                      (gx#current-expander-module-registry)
                      _rpath11195_
                      '#f)
                     '#f)))
            (if _$e11200_
                (values _$e11200_)
                (if (gx#core-library-module-path? _rpath11195_)
                    (let ((_ctx11203_
                           (gx#core-import-module__opt-lambda11193
                            (gx#core-resolve-library-module-path _rpath11195_)
                            _reload?11196_)))
                      (begin
                        (table-set!
                         (gx#current-expander-module-registry)
                         _rpath11195_
                         _ctx11203_)
                        _ctx11203_))
                    (let ((_npath11205_ (path-normalize _rpath11195_)))
                      (let ((_$e11207_
                             (if (not _reload?11196_)
                                 (table-ref
                                  (gx#current-expander-module-registry)
                                  _npath11205_
                                  '#f)
                                 '#f)))
                        (if _$e11207_
                            (values _$e11207_)
                            (_import-source11198_ _npath11205_))))))))))
    (begin
      (define gx#core-import-module__0
        (lambda (_rpath11234_)
          (let ((_reload?11236_ '#f))
            (gx#core-import-module__opt-lambda11193
             _rpath11234_
             _reload?11236_))))
      (define gx#core-import-module
        (lambda _g11417_
          (let ((_g11416_ (length _g11417_)))
            (cond ((fx= _g11416_ 1) (apply gx#core-import-module__0 _g11417_))
                  ((fx= _g11416_ 2)
                   (apply gx#core-import-module__opt-lambda11193 _g11417_))
                  (else (error "No clause matching arguments" _g11417_))))))))
  (define gx#core-read-module
    (lambda (_path11189_)
      (with-catch
       (lambda (_exn11191_)
         (if (if (datum-parsing-exception? _exn11191_)
                 (eq? (datum-parsing-exception-filepos _exn11191_) '0)
                 '#f)
             (gx#core-read-module/lang _path11189_)
             (raise _exn11191_)))
       (lambda () (gx#core-read-module/sexp _path11189_)))))
  (define gx#core-read-module/sexp
    (lambda (_path11053_)
      ((letrec ((_lp11055_
                 (lambda (_body11057_ _pre11058_ _ns11059_ _pkg11060_)
                   (let ((_e1106111085_ _body11057_))
                     (let ((_E1107711103_
                            (lambda ()
                              (let ((_prelude11089_
                                     (if (gx#core-bound-module-prelude?
                                          _pre11058_)
                                         (gx#syntax-local-e__0 _pre11058_)
                                         (if (gx#core-library-module-path?
                                              _pre11058_)
                                             (gx#core-resolve-library-module-path
                                              _pre11058_)
                                             (if (gx#stx-string? _pre11058_)
                                                 (gx#core-resolve-module-path__opt-lambda10803
                                                  _pre11058_
                                                  _path11053_)
                                                 (gx#stx-e _pre11058_))))))
                                (let ((_path-id11091_
                                       (gx#core-module-path->namespace
                                        _path11053_)))
                                  (let ((_pkg-id11093_
                                         (if _pkg11060_
                                             (string-append
                                              _pkg11060_
                                              '"/"
                                              _path-id11091_)
                                             _path-id11091_)))
                                    (let ((_module-id11095_
                                           (string->symbol _pkg-id11093_)))
                                      (let ((_module-ns11100_
                                             (let ((_$e11097_ _ns11059_))
                                               (if _$e11097_
                                                   _$e11097_
                                                   _pkg-id11093_))))
                                        (let ()
                                          (values _prelude11089_
                                                  _module-id11095_
                                                  _module-ns11100_
                                                  _body11057_))))))))))
                       (let ((_E1107011132_
                              (lambda ()
                                (if (gx#stx-pair? _e1106111085_)
                                    (let ((_e1107811107_
                                           (gx#syntax-e _e1106111085_)))
                                      (let ((_hd1107911110_
                                             (##car _e1107811107_))
                                            (_tl1108011112_
                                             (##cdr _e1107811107_)))
                                        (if (eq? (gx#stx-e _hd1107911110_)
                                                 'package:)
                                            (if (gx#stx-pair? _tl1108011112_)
                                                (let ((_e1108111115_
                                                       (gx#syntax-e
                                                        _tl1108011112_)))
                                                  (let ((_hd1108211118_
                                                         (##car _e1108111115_))
                                                        (_tl1108311120_
                                                         (##cdr _e1108111115_)))
                                                    (let ((_pkg11123_
                                                           _hd1108211118_))
                                                      (let ((_rest11125_
                                                             _tl1108311120_))
                                                        (if '#t
                                                            (let ((_pkg11130_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if (gx#identifier? _pkg11123_)
                               (symbol->string (gx#stx-e _pkg11123_))
                               (if (let ((_$e11127_
                                          (gx#stx-string? _pkg11123_)))
                                     (if _$e11127_
                                         _$e11127_
                                         (gx#stx-false? _pkg11123_)))
                                   (gx#stx-e _pkg11123_)
                                   (gx#raise-syntax-error
                                    'import
                                    '"Bad syntax; Illegal package name"
                                    _pkg11123_)))))
                      (_lp11055_ _rest11125_ _pre11058_ _ns11059_ _pkg11130_))
                    (_E1107711103_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1107711103_))
                                            (_E1107711103_))))
                                    (_E1107711103_)))))
                         (let ((_E1106311161_
                                (lambda ()
                                  (if (gx#stx-pair? _e1106111085_)
                                      (let ((_e1107111136_
                                             (gx#syntax-e _e1106111085_)))
                                        (let ((_hd1107211139_
                                               (##car _e1107111136_))
                                              (_tl1107311141_
                                               (##cdr _e1107111136_)))
                                          (if (eq? (gx#stx-e _hd1107211139_)
                                                   'namespace:)
                                              (if (gx#stx-pair? _tl1107311141_)
                                                  (let ((_e1107411144_
                                                         (gx#syntax-e
                                                          _tl1107311141_)))
                                                    (let ((_hd1107511147_
                                                           (##car _e1107411144_))
                                                          (_tl1107611149_
                                                           (##cdr _e1107411144_)))
                                                      (let ((_ns11152_
                                                             _hd1107511147_))
                                                        (let ((_rest11154_
                                                               _tl1107611149_))
                                                          (if '#t
                                                              (let ((_ns11159_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (gx#identifier? _ns11152_)
                                 (symbol->string (gx#stx-e _ns11152_))
                                 (if (let ((_$e11156_
                                            (gx#stx-string? _ns11152_)))
                                       (if _$e11156_
                                           _$e11156_
                                           (gx#stx-false? _ns11152_)))
                                     (gx#stx-e _ns11152_)
                                     (gx#raise-syntax-error
                                      'import
                                      '"Bad syntax; illegal namespace"
                                      _ns11152_)))))
                        (_lp11055_
                         _rest11154_
                         _pre11058_
                         _ns11159_
                         _pkg11060_))
                      (_E1107011132_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1107011132_))
                                              (_E1107011132_))))
                                      (_E1107011132_)))))
                           (let ((_E1106211185_
                                  (lambda ()
                                    (if (gx#stx-pair? _e1106111085_)
                                        (let ((_e1106411165_
                                               (gx#syntax-e _e1106111085_)))
                                          (let ((_hd1106511168_
                                                 (##car _e1106411165_))
                                                (_tl1106611170_
                                                 (##cdr _e1106411165_)))
                                            (if (eq? (gx#stx-e _hd1106511168_)
                                                     'prelude:)
                                                (if (gx#stx-pair?
                                                     _tl1106611170_)
                                                    (let ((_e1106711173_
                                                           (gx#syntax-e
                                                            _tl1106611170_)))
                                                      (let ((_hd1106811176_
                                                             (##car _e1106711173_))
                                                            (_tl1106911178_
                                                             (##cdr _e1106711173_)))
                                                        (let ((_prelude11181_
                                                               _hd1106811176_))
                                                          (let ((_rest11183_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1106911178_))
                    (if '#t
                        (_lp11055_
                         _rest11183_
                         _prelude11181_
                         _ns11059_
                         _pkg11060_)
                        (_E1106311161_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1106311161_))
                                                (_E1106311161_))))
                                        (_E1106311161_)))))
                             (let () (_E1106211185_))))))))))
         _lp11055_)
       (read-syntax-from-file _path11053_)
       '#f
       '#f
       '#f)))
  (define gx#core-read-module/lang
    (lambda (_path10830_)
      (let ((_read-body10832_
             (lambda (_inp10973_ _pre10974_ _pkg10975_ _ns10976_)
               (let ((_pre10980_
                      (let ((_len10978_ (string-length _pre10974_)))
                        (if (if (fx> _len10978_ '1)
                                (if (eq? (string-ref _pre10974_ '0) '#\")
                                    (eq? (string-ref
                                          _pre10974_
                                          (fx- _len10978_ '1))
                                         '#\")
                                    '#f)
                                '#f)
                            (substring _pre10974_ '1 (fx- _len10978_ '1))
                            (string->symbol _pre10974_)))))
                 (let ((_prelude10982_ (gx#import-module__0 _pre10980_)))
                   (let ((_read-module-body11036_
                          (let ((_$e11028_
                                 (find (lambda (_e1098310985_)
                                         (let ((_g1098710997_ _e1098310985_))
                                           (let ((_E1099011001_
                                                  (lambda ()
                                                    (error '"No clause matching"
                                                           _g1098710997_))))
                                             (let ((_else1098911005_
                                                    (lambda () '#f)))
                                               (let ((_K1099111009_
                                                      (lambda () '#t)))
                                                 (if (direct-struct-instance?
                                                      gx#module-export::t
                                                      _g1098710997_)
                                                     (let ((_e1099211012_
                                                            (##vector-ref
                                                             _g1098710997_
                                                             '1)))
                                                       (let ((_e1099311015_
                                                              (##vector-ref
                                                               _g1098710997_
                                                               '2)))
                                                         (let ((_e1099411018_
                                                                (##vector-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1098710997_
                         '3)))
                   (if (##eq? _e1099411018_ '1)
                       (let ((_e1099511021_ (##vector-ref _g1098710997_ '4)))
                         (if ((lambda (_g1102311025_)
                                (eq? _g1102311025_ 'read-module-body))
                              _e1099511021_)
                             (_K1099111009_)
                             (_else1098911005_)))
                       (_else1098911005_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_else1098911005_)))))))
                                       (##structure-ref
                                        _prelude10982_
                                        '9
                                        gx#module-context::t
                                        '#f))))
                            (if _$e11028_
                                ((lambda (_xport11031_)
                                   (let ((_proc11034_
                                          (with-catch
                                           void
                                           (lambda ()
                                             (gx#eval-syntax__0
                                              (##structure-ref
                                               (gx#core-resolve-module-export
                                                _xport11031_)
                                               '1
                                               gx#binding::t
                                               '#f))))))
                                     (if (procedure? _proc11034_)
                                         _proc11034_
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Illegal lang prelude; read-module-body is not a procedure"
                                          _path10830_
                                          _proc11034_))))
                                 _$e11028_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Illegal lang prelude; does not export read-module-body for syntax"
                                 _path10830_)))))
                     (let ((_path-id11038_
                            (gx#core-module-path->namespace _path10830_)))
                       (let ((_pkg-id11040_
                              (if _pkg10975_
                                  (string-append
                                   _pkg10975_
                                   '"/"
                                   _path-id11038_)
                                  _path-id11038_)))
                         (let ((_module-id11042_
                                (string->symbol _pkg-id11040_)))
                           (let ((_module-ns11047_
                                  (let ((_$e11044_ _ns10976_))
                                    (if _$e11044_ _$e11044_ _pkg-id11040_))))
                             (let ((_body11050_
                                    (call-with-parameters
                                     (lambda ()
                                       (_read-module-body11036_ _inp10973_))
                                     gx#current-module-reader-path
                                     _path10830_)))
                               (let ()
                                 (values _prelude10982_
                                         _module-id11042_
                                         _module-ns11047_
                                         _body11050_)))))))))))))
        (let ((_read-lang10833_
               (lambda (_inp10838_)
                 (let ((_head10840_ (read-line _inp10838_)))
                   (let ((_tokens10844_
                          (filter (lambda (_str10842_)
                                    (not (string-empty? _str10842_)))
                                  (string-split _head10840_ '#\space))))
                     (let ()
                       (let ((_tokens1084610856_ _tokens10844_))
                         (let ((_E1084910860_
                                (lambda ()
                                  (error '"No clause matching"
                                         _tokens1084610856_))))
                           (let ((_else1084810864_
                                  (lambda ()
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Illegal module syntax"
                                     _path10830_))))
                             (let ((_K1085010956_
                                    (lambda (_args10867_ _prelude10868_)
                                      ((letrec ((_lp10870_
                                                 (lambda (_rest10872_
                                                          _pkg10873_
                                                          _ns10874_)
                                                   (let ((_rest1087510893_
                                                          _rest10872_))
                                                     (let ((_E1088010897_
                                                            (lambda ()
                                                              (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _rest1087510893_))))
               (let ((_else1087910901_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal #lang arguments"
                         _path10830_
                         _rest10872_))))
                 (let ((_try-match1087810909_
                        (lambda ()
                          (let ((_K1088110906_
                                 (lambda ()
                                   (_read-body10832_
                                    _inp10838_
                                    _prelude10868_
                                    _pkg10873_
                                    _ns10874_))))
                            (if (##null? _rest1087510893_)
                                (_K1088110906_)
                                (_else1087910901_))))))
                   (let ((_try-match1087710933_
                          (lambda ()
                            (let ((_K1088210916_
                                   (lambda (_rest10913_ _ns10914_)
                                     (_lp10870_
                                      _rest10913_
                                      _pkg10873_
                                      _ns10914_))))
                              (if (##pair? _rest1087510893_)
                                  (let ((_hd1088310919_
                                         (##car _rest1087510893_))
                                        (_tl1088410921_
                                         (##cdr _rest1087510893_)))
                                    (if (equal? _hd1088310919_ '"namespace:")
                                        (if (##pair? _tl1088410921_)
                                            (let ((_hd1088510924_
                                                   (##car _tl1088410921_))
                                                  (_tl1088610926_
                                                   (##cdr _tl1088410921_)))
                                              (let ((_ns10929_ _hd1088510924_))
                                                (let ((_rest10931_
                                                       _tl1088610926_))
                                                  (_K1088210916_
                                                   _rest10931_
                                                   _ns10929_))))
                                            (_try-match1087810909_))
                                        (_try-match1087810909_)))
                                  (_try-match1087810909_))))))
                     (let ((_K1088710939_
                            (lambda (_rest10936_ _pkg10937_)
                              (_lp10870_ _rest10936_ _pkg10937_ _ns10874_))))
                       (if (##pair? _rest1087510893_)
                           (let ((_hd1088810942_ (##car _rest1087510893_))
                                 (_tl1088910944_ (##cdr _rest1087510893_)))
                             (if (equal? _hd1088810942_ '"package:")
                                 (if (##pair? _tl1088910944_)
                                     (let ((_hd1089010947_
                                            (##car _tl1088910944_))
                                           (_tl1089110949_
                                            (##cdr _tl1088910944_)))
                                       (let ((_pkg10952_ _hd1089010947_))
                                         (let ((_rest10954_ _tl1089110949_))
                                           (_K1088710939_
                                            _rest10954_
                                            _pkg10952_))))
                                     (_try-match1087710933_))
                                 (_try-match1087710933_)))
                           (_try-match1087710933_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _lp10870_)
                                       _args10867_
                                       '#f
                                       '#f))))
                               (if (##pair? _tokens1084610856_)
                                   (let ((_hd1085110959_
                                          (##car _tokens1084610856_))
                                         (_tl1085210961_
                                          (##cdr _tokens1084610856_)))
                                     (if (equal? _hd1085110959_ '"#lang")
                                         (if (##pair? _tl1085210961_)
                                             (let ((_hd1085310964_
                                                    (##car _tl1085210961_))
                                                   (_tl1085410966_
                                                    (##cdr _tl1085210961_)))
                                               (let ((_prelude10969_
                                                      _hd1085310964_))
                                                 (let ((_args10971_
                                                        _tl1085410966_))
                                                   (_K1085010956_
                                                    _args10971_
                                                    _prelude10969_))))
                                             (_else1084810864_))
                                         (_else1084810864_)))
                                   (_else1084810864_))))))))))))
          (let ((_read-e10834_
                 (lambda (_inp10836_)
                   (if (eq? (peek-char _inp10836_) '#\#)
                       (_read-lang10833_ _inp10836_)
                       (gx#raise-syntax-error
                        '#f
                        '"Illegal module syntax"
                        _path10830_)))))
            (call-with-input-file _path10830_ _read-e10834_))))))
  (define gx#core-module-path->namespace
    (lambda (_path10828_)
      (path-strip-extension (path-strip-directory _path10828_))))
  (define gx#core-module-path->id
    (lambda (_path10826_)
      (string->symbol (gx#core-module-path->namespace _path10826_))))
  (begin
    (define gx#core-resolve-module-path__opt-lambda10803
      (lambda (_stx-path10805_ _rel10806_)
        (let ((_path10808_ (gx#stx-e _stx-path10805_)))
          (let ((_path10810_
                 (if (string-empty? (path-extension _path10808_))
                     (string-append _path10808_ '".ss")
                     _path10808_)))
            (let ()
              (gx#core-resolve-path__opt-lambda3947
               _path10810_
               (let ((_$e10813_ (gx#stx-source _stx-path10805_)))
                 (if _$e10813_ _$e10813_ _rel10806_))))))))
    (begin
      (define gx#core-resolve-module-path__0
        (lambda (_stx-path10819_)
          (let ((_rel10821_ '#f))
            (gx#core-resolve-module-path__opt-lambda10803
             _stx-path10819_
             _rel10821_))))
      (define gx#core-resolve-module-path
        (lambda _g11419_
          (let ((_g11418_ (length _g11419_)))
            (cond ((fx= _g11418_ 1)
                   (apply gx#core-resolve-module-path__0 _g11419_))
                  ((fx= _g11418_ 2)
                   (apply gx#core-resolve-module-path__opt-lambda10803
                          _g11419_))
                  (else (error "No clause matching arguments" _g11419_))))))))
  (define gx#core-resolve-library-module-path
    (lambda (_libpath10745_)
      (let ((_spath10747_ (symbol->string (gx#stx-e _libpath10745_))))
        (let ((_spath10749_
               (substring _spath10747_ '1 (string-length _spath10747_))))
          (let ((_ext10751_ (path-extension _spath10749_)))
            (let ((_ssi10753_
                   (if (string-empty? _ext10751_)
                       (string-append _spath10749_ '".ssi")
                       (string-append
                        (path-strip-extension _spath10749_)
                        '".ssi"))))
              (let ((_src10755_
                     (if (string-empty? _ext10751_)
                         (string-append _spath10749_ '".ss")
                         _spath10749_)))
                (let ()
                  ((letrec ((_lp10758_
                             (lambda (_rest10760_)
                               (let ((_rest1076110770_ _rest10760_))
                                 (let ((_E1076410774_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _rest1076110770_))))
                                   (let ((_try-match1076310782_
                                          (lambda ()
                                            (let ((_K1076510779_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Cannot find library module"
                                                      _libpath10745_))))
                                              (if (##null? _rest1076110770_)
                                                  (_K1076510779_)
                                                  (_E1076410774_))))))
                                     (let ((_K1076610792_
                                            (lambda (_rest10785_ _dir10786_)
                                              (let ((_compiled-path10788_
                                                     (path-expand
                                                      _ssi10753_
                                                      _dir10786_)))
                                                (if (file-exists?
                                                     _compiled-path10788_)
                                                    (path-normalize
                                                     _compiled-path10788_)
                                                    (let ((_src-path10790_
                                                           (path-expand
                                                            _src10755_
                                                            _dir10786_)))
                                                      (if (file-exists?
                                                           _src-path10790_)
                                                          (path-normalize
                                                           _src-path10790_)
                                                          (_lp10758_
                                                           _rest10785_))))))))
                                       (if (##pair? _rest1076110770_)
                                           (let ((_hd1076710795_
                                                  (##car _rest1076110770_))
                                                 (_tl1076810797_
                                                  (##cdr _rest1076110770_)))
                                             (let ((_dir10800_ _hd1076710795_))
                                               (let ((_rest10802_
                                                      _tl1076810797_))
                                                 (_K1076610792_
                                                  _rest10802_
                                                  _dir10800_))))
                                           (_try-match1076310782_)))))))))
                     _lp10758_)
                   (gx#current-expander-module-library-path))))))))))
  (define gx#core-library-module-path?
    (lambda (_stx10743_) (gx#core-special-module-path? _stx10743_ '#\:)))
  (define gx#core-special-module-path?
    (lambda (_stx10738_ _char10739_)
      (if (gx#identifier? _stx10738_)
          (if (interned-symbol? (gx#stx-e _stx10738_))
              (let ((_str10741_ (symbol->string (gx#stx-e _stx10738_))))
                (if (fx> (string-length _str10741_) '1)
                    (eq? (string-ref _str10741_ '0) _char10739_)
                    '#f))
              '#f)
          '#f)))
  (define gx#core-bound-prelude?
    (lambda (_stx10732_)
      (gx#core-bound-identifier?__opt-lambda4037
       _stx10732_
       (lambda (_g1073310735_)
         (gx#expander-binding?__opt-lambda4068
          _g1073310735_
          gx#prelude-context?)))))
  (define gx#core-bound-module?
    (lambda (_stx10726_)
      (gx#core-bound-identifier?__opt-lambda4037
       _stx10726_
       (lambda (_g1072710729_)
         (gx#expander-binding?__opt-lambda4068
          _g1072710729_
          gx#module-context?)))))
  (define gx#core-bound-module-prelude?
    (lambda (_stx10713_)
      (let ((_module-prelude?10715_
             (lambda (_e10721_)
               (let ((_$e10723_
                      (##structure-instance-of?
                       _e10721_
                       'gx#module-context::t)))
                 (if _$e10723_
                     _$e10723_
                     (##structure-instance-of?
                      _e10721_
                      'gx#prelude-context::t))))))
        (gx#core-bound-identifier?__opt-lambda4037
         _stx10713_
         (lambda (_g1071610718_)
           (gx#expander-binding?__opt-lambda4068
            _g1071610718_
            _module-prelude?10715_))))))
  (begin
    (define gx#core-bind-import!__opt-lambda10641
      (lambda (_in10643_ _ctx10644_ _force-weak?10645_)
        (let ((_in1064610655_ _in10643_))
          (let ((_E1064810659_
                 (lambda () (error '"No clause matching" _in1064610655_))))
            (let ((_K1064910672_
                   (lambda (_weak?10662_ _phi10663_ _key10664_ _source10665_)
                     (gx#core-bind!__opt-lambda4307
                      _key10664_
                      (let ((_e10667_
                             (gx#core-resolve-module-export _source10665_)))
                        (##structure
                         gx#import-binding::t
                         (##structure-ref _e10667_ '1 gx#binding::t '#f)
                         _key10664_
                         _phi10663_
                         _e10667_
                         (##structure-ref
                          _source10665_
                          '1
                          gx#module-export::t
                          '#f)
                         (let ((_$e10669_ _force-weak?10645_))
                           (if _$e10669_ _$e10669_ _weak?10662_))))
                      gx#core-context-rebind?
                      _phi10663_
                      _ctx10644_))))
              (if (direct-struct-instance? gx#module-import::t _in1064610655_)
                  (let ((_e1065010675_ (##vector-ref _in1064610655_ '1)))
                    (let ((_source10678_ _e1065010675_))
                      (let ((_e1065110680_ (##vector-ref _in1064610655_ '2)))
                        (let ((_key10683_ _e1065110680_))
                          (let ((_e1065210685_
                                 (##vector-ref _in1064610655_ '3)))
                            (let ((_phi10688_ _e1065210685_))
                              (let ((_e1065310690_
                                     (##vector-ref _in1064610655_ '4)))
                                (let ((_weak?10693_ _e1065310690_))
                                  (_K1064910672_
                                   _weak?10693_
                                   _phi10688_
                                   _key10683_
                                   _source10678_)))))))))
                  (_E1064810659_)))))))
    (begin
      (define gx#core-bind-import!__0
        (lambda (_in10698_)
          (let ((_ctx10700_ (gx#current-expander-context)))
            (let ((_force-weak?10702_ '#f))
              (gx#core-bind-import!__opt-lambda10641
               _in10698_
               _ctx10700_
               _force-weak?10702_)))))
      (define gx#core-bind-import!__1
        (lambda (_in10704_ _ctx10705_)
          (let ((_force-weak?10707_ '#f))
            (gx#core-bind-import!__opt-lambda10641
             _in10704_
             _ctx10705_
             _force-weak?10707_))))
      (define gx#core-bind-import!
        (lambda _g11421_
          (let ((_g11420_ (length _g11421_)))
            (cond ((fx= _g11420_ 1) (apply gx#core-bind-import!__0 _g11421_))
                  ((fx= _g11420_ 2) (apply gx#core-bind-import!__1 _g11421_))
                  ((fx= _g11420_ 3)
                   (apply gx#core-bind-import!__opt-lambda10641 _g11421_))
                  (else (error "No clause matching arguments" _g11421_))))))))
  (begin
    (define gx#core-bind-weak-import!__opt-lambda10627
      (lambda (_in10629_ _ctx10630_)
        (gx#core-bind-import!__opt-lambda10641 _in10629_ _ctx10630_ '#t)))
    (begin
      (define gx#core-bind-weak-import!__0
        (lambda (_in10635_)
          (let ((_ctx10637_ (gx#current-expander-context)))
            (gx#core-bind-weak-import!__opt-lambda10627
             _in10635_
             _ctx10637_))))
      (define gx#core-bind-weak-import!
        (lambda _g11423_
          (let ((_g11422_ (length _g11423_)))
            (cond ((fx= _g11422_ 1)
                   (apply gx#core-bind-weak-import!__0 _g11423_))
                  ((fx= _g11422_ 2)
                   (apply gx#core-bind-weak-import!__opt-lambda10627 _g11423_))
                  (else (error "No clause matching arguments" _g11423_))))))))
  (define gx#core-resolve-module-export
    (lambda (_out10520_)
      (let ((_subst10522_
             (lambda (_key10568_)
               (let ((_key1056910577_ _key10568_))
                 (let ((_E1057210581_
                        (lambda ()
                          (error '"No clause matching" _key1056910577_))))
                   (let ((_else1057110585_ (lambda () _key10568_)))
                     (let ((_K1057310616_
                            (lambda (_mark10588_ _id10589_)
                              (let ((_mark1059010596_ _mark10588_))
                                (let ((_E1059210600_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _mark1059010596_))))
                                  (let ((_K1059310608_
                                         (lambda (_subst10603_)
                                           (let ((_$e10605_
                                                  (if _subst10603_
                                                      (table-ref
                                                       _subst10603_
                                                       _id10589_
                                                       '#f)
                                                      '#f)))
                                             (if _$e10605_
                                                 _$e10605_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal key; missing substitution"
                                                  _key10568_))))))
                                    (if (struct-instance?
                                         gx#expander-mark::t
                                         _mark1059010596_)
                                        (let ((_e1059410611_
                                               (##vector-ref
                                                _mark1059010596_
                                                '1)))
                                          (let ((_subst10614_ _e1059410611_))
                                            (_K1059310608_ _subst10614_)))
                                        (_E1059210600_))))))))
                       (if (##pair? _key1056910577_)
                           (let ((_hd1057410619_ (##car _key1056910577_))
                                 (_tl1057510621_ (##cdr _key1056910577_)))
                             (let ((_id10624_ _hd1057410619_))
                               (let ((_mark10626_ _tl1057510621_))
                                 (_K1057310616_ _mark10626_ _id10624_))))
                           (_else1057110585_)))))))))
        (let ((_out1052310533_ _out10520_))
          (let ((_E1052510537_
                 (lambda () (error '"No clause matching" _out1052310533_))))
            (let ((_K1052610544_
                   (lambda (_phi10540_ _key10541_ _ctx10542_)
                     (gx#core-context-resolve
                      (gx#core-context-shift _ctx10542_ _phi10540_)
                      (_subst10522_ _key10541_)))))
              (if (direct-struct-instance? gx#module-export::t _out1052310533_)
                  (let ((_e1052710547_ (##vector-ref _out1052310533_ '1)))
                    (let ((_ctx10550_ _e1052710547_))
                      (let ((_e1052810552_ (##vector-ref _out1052310533_ '2)))
                        (let ((_key10555_ _e1052810552_))
                          (let ((_e1052910557_
                                 (##vector-ref _out1052310533_ '3)))
                            (let ((_phi10560_ _e1052910557_))
                              (let ((_e1053010562_
                                     (##vector-ref _out1052310533_ '4)))
                                (let ((_e1053110565_
                                       (##vector-ref _out1052310533_ '5)))
                                  (_K1052610544_
                                   _phi10560_
                                   _key10555_
                                   _ctx10550_)))))))))
                  (_E1052510537_))))))))
  (begin
    (define gx#core-module-export->import__opt-lambda10443
      (lambda (_out10445_ _rename10446_ _dphi10447_)
        (let ((_out1044810458_ _out10445_))
          (let ((_E1045010462_
                 (lambda () (error '"No clause matching" _out1044810458_))))
            (let ((_K1045110474_
                   (lambda (_weak?10465_
                            _name10466_
                            _phi10467_
                            _key10468_
                            _ctx10469_)
                     (##structure
                      gx#module-import::t
                      _out10445_
                      (let ((_$e10471_ _rename10446_))
                        (if _$e10471_ _$e10471_ _name10466_))
                      (fx+ _phi10467_ _dphi10447_)
                      _weak?10465_))))
              (if (direct-struct-instance? gx#module-export::t _out1044810458_)
                  (let ((_e1045210477_ (##vector-ref _out1044810458_ '1)))
                    (let ((_ctx10480_ _e1045210477_))
                      (let ((_e1045310482_ (##vector-ref _out1044810458_ '2)))
                        (let ((_key10485_ _e1045310482_))
                          (let ((_e1045410487_
                                 (##vector-ref _out1044810458_ '3)))
                            (let ((_phi10490_ _e1045410487_))
                              (let ((_e1045510492_
                                     (##vector-ref _out1044810458_ '4)))
                                (let ((_name10495_ _e1045510492_))
                                  (let ((_e1045610497_
                                         (##vector-ref _out1044810458_ '5)))
                                    (let ((_weak?10500_ _e1045610497_))
                                      (_K1045110474_
                                       _weak?10500_
                                       _name10495_
                                       _phi10490_
                                       _key10485_
                                       _ctx10480_)))))))))))
                  (_E1045010462_)))))))
    (begin
      (define gx#core-module-export->import__0
        (lambda (_out10505_)
          (let ((_rename10507_ '#f))
            (let ((_dphi10509_ '0))
              (gx#core-module-export->import__opt-lambda10443
               _out10505_
               _rename10507_
               _dphi10509_)))))
      (define gx#core-module-export->import__1
        (lambda (_out10511_ _rename10512_)
          (let ((_dphi10514_ '0))
            (gx#core-module-export->import__opt-lambda10443
             _out10511_
             _rename10512_
             _dphi10514_))))
      (define gx#core-module-export->import
        (lambda _g11425_
          (let ((_g11424_ (length _g11425_)))
            (cond ((fx= _g11424_ 1)
                   (apply gx#core-module-export->import__0 _g11425_))
                  ((fx= _g11424_ 2)
                   (apply gx#core-module-export->import__1 _g11425_))
                  ((fx= _g11424_ 3)
                   (apply gx#core-module-export->import__opt-lambda10443
                          _g11425_))
                  (else (error "No clause matching arguments" _g11425_))))))))
  (define gx#core-expand-module%
    (lambda (_stx10373_)
      (let ((_make-context10375_
             (lambda (_id10426_)
               (let ((_super10428_ (gx#current-expander-context)))
                 (let ((_bind-id10430_ (gx#stx-e _id10426_)))
                   (let ((_mod-id10432_
                          (if (##structure-instance-of?
                               _super10428_
                               'gx#module-context::t)
                              (make-symbol
                               (##structure-ref
                                _super10428_
                                '1
                                gx#expander-context::t
                                '#f)
                               '"::"
                               _bind-id10430_)
                              _bind-id10430_)))
                     (let ((_ns10434_ (symbol->string _mod-id10432_)))
                       (let ((_path10441_
                              (if (##structure-instance-of?
                                   _super10428_
                                   'gx#module-context::t)
                                  (let ((_path10436_
                                         (##structure-ref
                                          _super10428_
                                          '7
                                          gx#module-context::t
                                          '#f)))
                                    (if (let ((_$e10438_ (pair? _path10436_)))
                                          (if _$e10438_
                                              _$e10438_
                                              (null? _path10436_)))
                                        (cons _bind-id10430_ _path10436_)
                                        (if (not _path10436_)
                                            _bind-id10430_
                                            (cons _bind-id10430_
                                                  (cons _path10436_ '())))))
                                  _bind-id10430_)))
                         (let ()
                           (let ((__obj11407
                                  (make-object gx#module-context::t '11)))
                             (begin
                               (gx#module-context:::init!
                                __obj11407
                                _mod-id10432_
                                _super10428_
                                _ns10434_
                                _path10441_)
                               __obj11407)))))))))))
        (let ((_e1037610386_ _stx10373_))
          (let ((_E1037810390_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e1037610386_))))
            (let ((_E1037710422_
                   (lambda ()
                     (if (gx#stx-pair? _e1037610386_)
                         (let ((_e1037910394_ (gx#syntax-e _e1037610386_)))
                           (let ((_hd1038010397_ (##car _e1037910394_))
                                 (_tl1038110399_ (##cdr _e1037910394_)))
                             (if (gx#stx-pair? _tl1038110399_)
                                 (let ((_e1038210402_
                                        (gx#syntax-e _tl1038110399_)))
                                   (let ((_hd1038310405_ (##car _e1038210402_))
                                         (_tl1038410407_
                                          (##cdr _e1038210402_)))
                                     (let ((_id10410_ _hd1038310405_))
                                       (let ((_body10412_ _tl1038410407_))
                                         (if (if (gx#identifier? _id10410_)
                                                 (gx#stx-list? _body10412_)
                                                 '#f)
                                             (let ((_ctx10414_
                                                    (_make-context10375_
                                                     _id10410_)))
                                               (let ((_body10416_
                                                      (gx#core-expand-module-begin
                                                       _body10412_
                                                       _ctx10414_)))
                                                 (let ((_body10418_
                                                        (gx#core-quote-syntax__1
                                                         (gx#core-cons
                                                          '%#begin
                                                          _body10416_)
                                                         (gx#stx-source
                                                          _stx10373_))))
                                                   (let ()
                                                     (begin
                                                       (##structure-set!
                                                        _ctx10414_
                                                        (make-promise
                                                         (lambda ()
                                                           (gx#eval-syntax*
                                                            _body10418_)))
                                                        '10
                                                        gx#module-context::t
                                                        '#f)
                                                       (##structure-set!
                                                        _ctx10414_
                                                        _body10418_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)
                                                       (gx#core-bind-syntax!__0
                                                        _id10410_
                                                        _ctx10414_)
                                                       (gx#core-quote-syntax__1
                                                        (gx#core-list
                                                         '%#module
                                                         (gx#core-quote-syntax__0
                                                          _id10410_)
                                                         _body10418_)
                                                        (gx#stx-source
                                                         _stx10373_)))))))
                                             (_E1037810390_))))))
                                 (_E1037810390_))))
                         (_E1037810390_)))))
              (let () (_E1037710422_))))))))
  (define gx#core-expand-module-begin
    (lambda (_body10339_ _ctx10340_)
      (call-with-parameters
       (lambda ()
         (begin
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let ((_stx10343_
                  (gx#core-expand-head (cons '%%begin-module _body10339_))))
             (let ((_e1034410351_ _stx10343_))
               (let ((_E1034610355_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module body expansion"
                         _stx10343_))))
                 (let ((_E1034510369_
                        (lambda ()
                          (if (gx#stx-pair? _e1034410351_)
                              (let ((_e1034710359_
                                     (gx#syntax-e _e1034410351_)))
                                (let ((_hd1034810362_ (##car _e1034710359_))
                                      (_tl1034910364_ (##cdr _e1034710359_)))
                                  (if (if (gx#identifier? _hd1034810362_)
                                          (gx#core-identifier=?
                                           _hd1034810362_
                                           '%#begin-module)
                                          '#f)
                                      (let ((_body10367_ _tl1034910364_))
                                        (if '#t
                                            (if (gx#sealed-syntax? _stx10343_)
                                                _body10367_
                                                (gx#core-expand-module-body
                                                 _body10367_))
                                            (_E1034610355_)))
                                      (_E1034610355_))))
                              (_E1034610355_)))))
                   (let () (_E1034510369_))))))))
       gx#current-expander-context
       _ctx10340_
       gx#current-expander-phi
       '0)))
  (define gx#core-expand-module-body
    (lambda (_body10135_)
      (let ((_expand-special10137_
             (lambda (_hd10266_ _K10267_ _rest10268_ _r10269_)
               (let ((_e1027010287_ _hd10266_))
                 (let ((_E1028210291_
                        (lambda ()
                          (_K10267_
                           _rest10268_
                           (cons (gx#core-expand-top _hd10266_) _r10269_)))))
                   (let ((_E1027210303_
                          (lambda ()
                            (if (gx#stx-pair? _e1027010287_)
                                (let ((_e1028310295_
                                       (gx#syntax-e _e1027010287_)))
                                  (let ((_hd1028410298_ (##car _e1028310295_))
                                        (_tl1028510300_ (##cdr _e1028310295_)))
                                    (if (if (gx#identifier? _hd1028410298_)
                                            (gx#core-identifier=?
                                             _hd1028410298_
                                             '%#export)
                                            '#f)
                                        (if '#t
                                            (_K10267_
                                             _rest10268_
                                             (cons _hd10266_ _r10269_))
                                            (_E1028210291_))
                                        (_E1028210291_))))
                                (_E1028210291_)))))
                     (let ((_E1027110335_
                            (lambda ()
                              (if (gx#stx-pair? _e1027010287_)
                                  (let ((_e1027310307_
                                         (gx#syntax-e _e1027010287_)))
                                    (let ((_hd1027410310_
                                           (##car _e1027310307_))
                                          (_tl1027510312_
                                           (##cdr _e1027310307_)))
                                      (if (if (gx#identifier? _hd1027410310_)
                                              (gx#core-identifier=?
                                               _hd1027410310_
                                               '%#define-values)
                                              '#f)
                                          (if (gx#stx-pair? _tl1027510312_)
                                              (let ((_e1027610315_
                                                     (gx#syntax-e
                                                      _tl1027510312_)))
                                                (let ((_hd1027710318_
                                                       (##car _e1027610315_))
                                                      (_tl1027810320_
                                                       (##cdr _e1027610315_)))
                                                  (let ((_hd-bind10323_
                                                         _hd1027710318_))
                                                    (if (gx#stx-pair?
                                                         _tl1027810320_)
                                                        (let ((_e1027910325_
                                                               (gx#syntax-e
                                                                _tl1027810320_)))
                                                          (let ((_hd1028010328_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1027910325_))
                        (_tl1028110330_ (##cdr _e1027910325_)))
                    (let ((_expr10333_ _hd1028010328_))
                      (if (gx#stx-null? _tl1028110330_)
                          (if (gx#core-bind-values? _hd-bind10323_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind10323_)
                                (_K10267_
                                 _rest10268_
                                 (cons _hd10266_ _r10269_)))
                              (_E1027210303_))
                          (_E1027210303_)))))
                (_E1027210303_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1027210303_))
                                          (_E1027210303_))))
                                  (_E1027210303_)))))
                       (let () (_E1027110335_)))))))))
        (let ((_expand-body10138_
               (lambda (_rbody10140_)
                 ((letrec ((_lp10142_
                            (lambda (_rest10144_ _body10145_)
                              (let ((_rest1014610154_ _rest10144_))
                                (let ((_E1014910158_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _rest1014610154_))))
                                  (let ((_else1014810162_
                                         (lambda () _body10145_)))
                                    (let ((_K1015010254_
                                           (lambda (_rest10165_ _hd10166_)
                                             (let ((_e1016710188_ _hd10166_))
                                               (let ((_E1018310192_
                                                      (lambda ()
                                                        (_lp10142_
                                                         _rest10165_
                                                         (cons (gx#core-expand-expression
                                                                _hd10166_)
                                                               _body10145_)))))
                                                 (let ((_E1017910206_
                                                        (lambda ()
                                                          (if (gx#stx-pair?
                                                               _e1016710188_)
                                                              (let ((_e1018410196_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _e1016710188_)))
                        (let ((_hd1018510199_ (##car _e1018410196_))
                              (_tl1018610201_ (##cdr _e1018410196_)))
                          (let ((_form10204_ _hd1018510199_))
                            (if (gx#core-bound-identifier?__opt-lambda4037
                                 _form10204_
                                 gx#special-form-binding?)
                                (_lp10142_
                                 _rest10165_
                                 (cons _hd10166_ _body10145_))
                                (_E1018310192_)))))
                      (_E1018310192_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_E1016910218_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e1016710188_)
                        (let ((_e1018010210_ (gx#syntax-e _e1016710188_)))
                          (let ((_hd1018110213_ (##car _e1018010210_))
                                (_tl1018210215_ (##cdr _e1018010210_)))
                            (if (if (gx#identifier? _hd1018110213_)
                                    (gx#core-identifier=?
                                     _hd1018110213_
                                     '%#export)
                                    '#f)
                                (if '#t
                                    (_lp10142_
                                     _rest10165_
                                     (cons (gx#core-expand-export%__0
                                            _hd10166_)
                                           _body10145_))
                                    (_E1017910206_))
                                (_E1017910206_))))
                        (_E1017910206_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_E1016810250_
                                                            (lambda ()
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e1016710188_)
                          (let ((_e1017010222_ (gx#syntax-e _e1016710188_)))
                            (let ((_hd1017110225_ (##car _e1017010222_))
                                  (_tl1017210227_ (##cdr _e1017010222_)))
                              (if (if (gx#identifier? _hd1017110225_)
                                      (gx#core-identifier=?
                                       _hd1017110225_
                                       '%#define-values)
                                      '#f)
                                  (if (gx#stx-pair? _tl1017210227_)
                                      (let ((_e1017310230_
                                             (gx#syntax-e _tl1017210227_)))
                                        (let ((_hd1017410233_
                                               (##car _e1017310230_))
                                              (_tl1017510235_
                                               (##cdr _e1017310230_)))
                                          (let ((_hd-bind10238_
                                                 _hd1017410233_))
                                            (if (gx#stx-pair? _tl1017510235_)
                                                (let ((_e1017610240_
                                                       (gx#syntax-e
                                                        _tl1017510235_)))
                                                  (let ((_hd1017710243_
                                                         (##car _e1017610240_))
                                                        (_tl1017810245_
                                                         (##cdr _e1017610240_)))
                                                    (let ((_expr10248_
                                                           _hd1017710243_))
                                                      (if (gx#stx-null?
                                                           _tl1017810245_)
                                                          (if '#t
                                                              (_lp10142_
                                                               _rest10165_
                                                               (cons (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#core-list
                               '%#define-values
                               (gx#core-quote-bind-values _hd-bind10238_)
                               (gx#core-expand-expression _expr10248_))
                              (gx#stx-source _hd10166_))
                             _body10145_))
                      (_E1016910218_))
                  (_E1016910218_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1016910218_)))))
                                      (_E1016910218_))
                                  (_E1016910218_))))
                          (_E1016910218_)))))
               (let () (_E1016810250_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (##pair? _rest1014610154_)
                                          (let ((_hd1015110257_
                                                 (##car _rest1014610154_))
                                                (_tl1015210259_
                                                 (##cdr _rest1014610154_)))
                                            (let ((_hd10262_ _hd1015110257_))
                                              (let ((_rest10264_
                                                     _tl1015210259_))
                                                (_K1015010254_
                                                 _rest10264_
                                                 _hd10262_))))
                                          (_else1014810162_)))))))))
                    _lp10142_)
                  _rbody10140_
                  '()))))
          (_expand-body10138_
           (gx#core-expand-block__opt-lambda5084
            (cons '%#begin-module _body10135_)
            _expand-special10137_
            '#f
            values))))))
  (define gx#core-expand-import/export
    (lambda (_stx9978_
             _expanded?9979_
             _method9980_
             _current-phi9981_
             _expand19982_)
      (letrec ((_K9984_ (lambda (_rest10102_ _r10103_)
                          (let ((_e1010410111_ _rest10102_))
                            (let ((_E1010610115_ (lambda () _r10103_)))
                              (let ((_E1010510131_
                                     (lambda ()
                                       (if (gx#stx-pair? _e1010410111_)
                                           (let ((_e1010710119_
                                                  (gx#syntax-e _e1010410111_)))
                                             (let ((_hd1010810122_
                                                    (##car _e1010710119_))
                                                   (_tl1010910124_
                                                    (##cdr _e1010710119_)))
                                               (let ((_hd10127_
                                                      _hd1010810122_))
                                                 (let ((_rest10129_
                                                        _tl1010910124_))
                                                   (if '#t
                                                       (_step9985_
                                                        _hd10127_
                                                        _rest10129_
                                                        _r10103_)
                                                       (_E1010610115_))))))
                                           (_E1010610115_)))))
                                (let () (_E1010510131_)))))))
               (_step9985_
                (lambda (_hd10016_ _rest10017_ _r10018_)
                  (let ((_e1001910037_ _hd10016_))
                    (let ((_E1003210041_
                           (lambda ()
                             (if (_expanded?9979_ (gx#stx-e _hd10016_))
                                 (_K9984_ _rest10017_
                                          (cons (gx#stx-e _hd10016_) _r10018_))
                                 (_expand19982_
                                  _hd10016_
                                  _K9984_
                                  _rest10017_
                                  _r10018_)))))
                      (let ((_E1002810057_
                             (lambda ()
                               (if (gx#stx-pair? _e1001910037_)
                                   (let ((_e1003310045_
                                          (gx#syntax-e _e1001910037_)))
                                     (let ((_hd1003410048_
                                            (##car _e1003310045_))
                                           (_tl1003510050_
                                            (##cdr _e1003310045_)))
                                       (let ((_macro10053_ _hd1003410048_))
                                         (let ((_body10055_ _tl1003510050_))
                                           (if (gx#core-bound-identifier?__opt-lambda4037
                                                _macro10053_
                                                gx#syntax-binding?)
                                               (_K9984_ (cons (gx#core-apply-expander__opt-lambda4802
                                                               (gx#syntax-local-e__0
                                                                _macro10053_)
                                                               _hd10016_
                                                               _method9980_)
                                                              _rest10017_)
                                                        _r10018_)
                                               (_E1003210041_))))))
                                   (_E1003210041_)))))
                        (let ((_E1002110071_
                               (lambda ()
                                 (if (gx#stx-pair? _e1001910037_)
                                     (let ((_e1002910061_
                                            (gx#syntax-e _e1001910037_)))
                                       (let ((_hd1003010064_
                                              (##car _e1002910061_))
                                             (_tl1003110066_
                                              (##cdr _e1002910061_)))
                                         (if (eq? (gx#stx-e _hd1003010064_)
                                                  'begin:)
                                             (let ((_body10069_
                                                    _tl1003110066_))
                                               (if '#t
                                                   (_K9984_ (gx#stx-foldr
                                                             cons
                                                             _rest10017_
                                                             _body10069_)
                                                            _r10018_)
                                                   (_E1002810057_)))
                                             (_E1002810057_))))
                                     (_E1002810057_)))))
                          (let ((_E1002010098_
                                 (lambda ()
                                   (if (gx#stx-pair? _e1001910037_)
                                       (let ((_e1002210075_
                                              (gx#syntax-e _e1001910037_)))
                                         (let ((_hd1002310078_
                                                (##car _e1002210075_))
                                               (_tl1002410080_
                                                (##cdr _e1002210075_)))
                                           (if (eq? (gx#stx-e _hd1002310078_)
                                                    'phi:)
                                               (if (gx#stx-pair?
                                                    _tl1002410080_)
                                                   (let ((_e1002510083_
                                                          (gx#syntax-e
                                                           _tl1002410080_)))
                                                     (let ((_hd1002610086_
                                                            (##car _e1002510083_))
                                                           (_tl1002710088_
                                                            (##cdr _e1002510083_)))
                                                       (let ((_dphi10091_
                                                              _hd1002610086_))
                                                         (let ((_body10093_
                                                                _tl1002710088_))
                                                           (if (gx#stx-fixnum?
                                                                _dphi10091_)
                                                               (let ((_rbody10096_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (call-with-parameters
                               (lambda () (_K9984_ _body10093_ '()))
                               _current-phi9981_
                               (fx+ (gx#stx-e _dphi10091_)
                                    (_current-phi9981_)))))
                         (_K9984_ _rest10017_
                                  (foldr1 cons _r10018_ _rbody10096_)))
                       (_E1002110071_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1002110071_))
                                               (_E1002110071_))))
                                       (_E1002110071_)))))
                            (let () (_E1002010098_))))))))))
        (let ((_e99869993_ _stx9978_))
          (let ((_E99889997_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e99869993_))))
            (let ((_E998710012_
                   (lambda ()
                     (if (gx#stx-pair? _e99869993_)
                         (let ((_e998910001_ (gx#syntax-e _e99869993_)))
                           (let ((_hd999010004_ (##car _e998910001_))
                                 (_tl999110006_ (##cdr _e998910001_)))
                             (let ((_body10009_ _tl999110006_))
                               (if '#t
                                   (if (_current-phi9981_)
                                       (_K9984_ _body10009_ '())
                                       (call-with-parameters
                                        (lambda () (_K9984_ _body10009_ '()))
                                        _current-phi9981_
                                        (gx#current-expander-phi)))
                                   (_E99889997_)))))
                         (_E99889997_)))))
              (let () (_E998710012_))))))))
  (begin
    (define gx#core-expand-import%__opt-lambda9515
      (lambda (_stx9517_ _internal-expand?9518_)
        (let ((_import19521_
               (lambda (_ctx9952_ _K9953_ _rest9954_ _r9955_)
                 (let ((_dphi9957_
                        (fx- (gx#current-import-expander-phi)
                             (gx#current-expander-phi))))
                   (_K9953_ _rest9954_
                            (cons (##structure
                                   gx#import-set::t
                                   _ctx9952_
                                   _dphi9957_
                                   (map (lambda (_g99589960_)
                                          (gx#core-module-export->import__opt-lambda10443
                                           _g99589960_
                                           '#f
                                           _dphi9957_))
                                        (##structure-ref
                                         _ctx9952_
                                         '9
                                         gx#module-context::t
                                         '#f)))
                                  _r9955_))))))
          (let ((_import-spec?9522_
                 (lambda (_hd9909_)
                   (let ((_e99109920_ _hd9909_))
                     (let ((_E99129924_ (lambda () '#f)))
                       (let ((_E99119948_
                              (lambda ()
                                (if (gx#stx-pair? _e99109920_)
                                    (let ((_e99139928_
                                           (gx#syntax-e _e99109920_)))
                                      (let ((_hd99149931_ (##car _e99139928_))
                                            (_tl99159933_ (##cdr _e99139928_)))
                                        (if (eq? (gx#stx-e _hd99149931_)
                                                 'spec:)
                                            (if (gx#stx-pair? _tl99159933_)
                                                (let ((_e99169936_
                                                       (gx#syntax-e
                                                        _tl99159933_)))
                                                  (let ((_hd99179939_
                                                         (##car _e99169936_))
                                                        (_tl99189941_
                                                         (##cdr _e99169936_)))
                                                    (let ((_spath9944_
                                                           _hd99179939_))
                                                      (let ((_specs9946_
                                                             _tl99189941_))
                                                        (if '#t
                                                            '#t
                                                            (_E99129924_))))))
                                                (_E99129924_))
                                            (_E99129924_))))
                                    (_E99129924_)))))
                         (let () (_E99119948_))))))))
            (let ((_import-submodule?9523_
                   (lambda (_hd9866_)
                     (let ((_e98679877_ _hd9866_))
                       (let ((_E98699881_ (lambda () '#f)))
                         (let ((_E98689905_
                                (lambda ()
                                  (if (gx#stx-pair? _e98679877_)
                                      (let ((_e98709885_
                                             (gx#syntax-e _e98679877_)))
                                        (let ((_hd98719888_
                                               (##car _e98709885_))
                                              (_tl98729890_
                                               (##cdr _e98709885_)))
                                          (if (eq? (gx#stx-e _hd98719888_)
                                                   'in:)
                                              (if (gx#stx-pair? _tl98729890_)
                                                  (let ((_e98739893_
                                                         (gx#syntax-e
                                                          _tl98729890_)))
                                                    (let ((_hd98749896_
                                                           (##car _e98739893_))
                                                          (_tl98759898_
                                                           (##cdr _e98739893_)))
                                                      (let ((_top9901_
                                                             _hd98749896_))
                                                        (let ((_sub9903_
                                                               _tl98759898_))
                                                          (if '#t
                                                              '#t
                                                              (_E98699881_))))))
                                                  (_E98699881_))
                                              (_E98699881_))))
                                      (_E98699881_)))))
                           (let () (_E98689905_))))))))
              (let ((_import-runtime?9524_
                     (lambda (_hd9823_)
                       (let ((_e98249834_ _hd9823_))
                         (let ((_E98269838_ (lambda () '#f)))
                           (let ((_E98259862_
                                  (lambda ()
                                    (if (gx#stx-pair? _e98249834_)
                                        (let ((_e98279842_
                                               (gx#syntax-e _e98249834_)))
                                          (let ((_hd98289845_
                                                 (##car _e98279842_))
                                                (_tl98299847_
                                                 (##cdr _e98279842_)))
                                            (if (eq? (gx#stx-e _hd98289845_)
                                                     'runtime:)
                                                (if (gx#stx-pair? _tl98299847_)
                                                    (let ((_e98309850_
                                                           (gx#syntax-e
                                                            _tl98299847_)))
                                                      (let ((_hd98319853_
                                                             (##car _e98309850_))
                                                            (_tl98329855_
                                                             (##cdr _e98309850_)))
                                                        (let ((_top9858_
                                                               _hd98319853_))
                                                          (let ((_spath9860_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl98329855_))
                    (if '#t '#t (_E98269838_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E98269838_))
                                                (_E98269838_))))
                                        (_E98269838_)))))
                             (let () (_E98259862_))))))))
                (let ((_import-spec-source9528_
                       (lambda (_spath9594_)
                         (gx#core-import-nested-module
                          _spath9594_
                          _stx9517_))))
                  (let ((_import!9529_
                         (lambda (_rbody9542_)
                           (let ((_current-ctx9544_
                                  (gx#current-expander-context)))
                             (let ((_deps9545_ (make-hash-table-eq)))
                               (let ((_bind!9546_
                                      (lambda (_hd9592_)
                                        (begin
                                          (gx#core-bind-import!__1
                                           _hd9592_
                                           _current-ctx9544_)
                                          (if (if (fxpositive?
                                                   (##structure-ref
                                                    _hd9592_
                                                    '3
                                                    gx#module-import::t
                                                    '#f))
                                                  (fxzero? (##structure-ref
                                                            (##structure-ref
                                                             _hd9592_
                                                             '1
                                                             gx#module-import::t
                                                             '#f)
                                                            '3
                                                            gx#module-export::t
                                                            '#f))
                                                  '#f)
                                              (table-set!
                                               _deps9545_
                                               (##structure-ref
                                                (##structure-ref
                                                 _hd9592_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)
                                                '1
                                                gx#module-export::t
                                                '#f)
                                               '#t)
                                              '#!void)))))
                                 (let ((_fold-e9547_
                                        (lambda (_in9589_ _r9590_)
                                          (if (##structure-direct-instance-of?
                                               _in9589_
                                               'gx#module-import::t)
                                              (cons _in9589_ _r9590_)
                                              (if (##structure-direct-instance-of?
                                                   _in9589_
                                                   'gx#import-set::t)
                                                  (foldl1 cons
                                                          _r9590_
                                                          (##structure-ref
                                                           _in9589_
                                                           '3
                                                           gx#import-set::t
                                                           '#f))
                                                  _r9590_)))))
                                   ((letrec ((_lp9549_
                                              (lambda (_rest9551_ _body9552_)
                                                (let ((_rest95539561_
                                                       _rest9551_))
                                                  (let ((_E95569565_
                                                         (lambda ()
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _rest95539561_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_else95559571_
                                                           (lambda ()
                                                             (begin
                                                               (if (##structure-instance-of?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _current-ctx9544_
                            'gx#module-context::t)
                           (##structure-set!
                            _current-ctx9544_
                            (foldl1 _fold-e9547_
                                    (##structure-ref
                                     _current-ctx9544_
                                     '8
                                     gx#module-context::t
                                     '#f)
                                    _body9552_)
                            '8
                            gx#module-context::t
                            '#f)
                           '#!void)
                       (table-for-each
                        (lambda (_ctx9569_ _g11426_)
                          (gx#eval-module _ctx9569_))
                        _deps9545_)
                       _body9552_))))
              (let ((_K95579577_
                     (lambda (_rest9574_ _hd9575_)
                       (begin
                         (if (##structure-direct-instance-of?
                              _hd9575_
                              'gx#module-import::t)
                             (_bind!9546_ _hd9575_)
                             (if (##structure-direct-instance-of?
                                  _hd9575_
                                  'gx#import-set::t)
                                 (for-each
                                  _bind!9546_
                                  (##structure-ref
                                   _hd9575_
                                   '3
                                   gx#import-set::t
                                   '#f))
                                 (if (##structure-instance-of?
                                      _hd9575_
                                      'gx#module-context::t)
                                     '#!void
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Unexpected import"
                                      _stx9517_
                                      _hd9575_))))
                         (_lp9549_ _rest9574_ (cons _hd9575_ _body9552_))))))
                (if (##pair? _rest95539561_)
                    (let ((_hd95589580_ (##car _rest95539561_))
                          (_tl95599582_ (##cdr _rest95539561_)))
                      (let ((_hd9585_ _hd95589580_))
                        (let ((_rest9587_ _tl95599582_))
                          (_K95579577_ _rest9587_ _hd9585_))))
                    (_else95559571_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _lp9549_)
                                    _rbody9542_
                                    '()))))))))
                    (let ((_expanded-import?9530_
                           (lambda (_e9534_)
                             (let ((_$e9536_
                                    (##structure-direct-instance-of?
                                     _e9534_
                                     'gx#import-set::t)))
                               (if _$e9536_
                                   _$e9536_
                                   (let ((_$e9539_
                                          (##structure-direct-instance-of?
                                           _e9534_
                                           'gx#module-import::t)))
                                     (if _$e9539_
                                         _$e9539_
                                         (##structure-instance-of?
                                          _e9534_
                                          'gx#module-context::t))))))))
                      (let ((_import-submodule9525_
                             (lambda (_hd9790_ _K9791_ _rest9792_ _r9793_)
                               (let ((_e97949801_ _hd9790_))
                                 (let ((_E97969805_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _e97949801_))))
                                   (let ((_E97959819_
                                          (lambda ()
                                            (if (gx#stx-pair? _e97949801_)
                                                (let ((_e97979809_
                                                       (gx#syntax-e
                                                        _e97949801_)))
                                                  (let ((_hd97989812_
                                                         (##car _e97979809_))
                                                        (_tl97999814_
                                                         (##cdr _e97979809_)))
                                                    (let ((_spath9817_
                                                           _tl97999814_))
                                                      (if '#t
                                                          (_import19521_
                                                           (_import-spec-source9528_
                                                            _spath9817_)
                                                           _K9791_
                                                           _rest9792_
                                                           _r9793_)
                                                          (_E97969805_)))))
                                                (_E97969805_)))))
                                     (let () (_E97959819_))))))))
                        (let ((_import-runtime9526_
                               (lambda (_hd9757_ _K9758_ _rest9759_ _r9760_)
                                 (let ((_e97619768_ _hd9757_))
                                   (let ((_E97639772_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _e97619768_))))
                                     (let ((_E97629786_
                                            (lambda ()
                                              (if (gx#stx-pair? _e97619768_)
                                                  (let ((_e97649776_
                                                         (gx#syntax-e
                                                          _e97619768_)))
                                                    (let ((_hd97659779_
                                                           (##car _e97649776_))
                                                          (_tl97669781_
                                                           (##cdr _e97649776_)))
                                                      (let ((_spath9784_
                                                             _tl97669781_))
                                                        (if '#t
                                                            (_K9758_ _rest9759_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (_import-spec-source9528_ _spath9784_)
                                   _r9760_))
                    (_E97639772_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E97639772_)))))
                                       (let () (_E97629786_))))))))
                          (let ((_import-spec9527_
                                 (lambda (_hd9596_ _K9597_ _rest9598_ _r9599_)
                                   (let ((_e96009617_ _hd9596_))
                                     (let ((_E96099621_
                                            (lambda ()
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _e96009617_))))
                                       (let ((_E96029731_
                                              (lambda ()
                                                (if (gx#stx-pair? _e96009617_)
                                                    (let ((_e96109625_
                                                           (gx#syntax-e
                                                            _e96009617_)))
                                                      (let ((_hd96119628_
                                                             (##car _e96109625_))
                                                            (_tl96129630_
                                                             (##cdr _e96109625_)))
                                                        (if (gx#stx-pair?
                                                             _tl96129630_)
                                                            (let ((_e96139633_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl96129630_)))
                      (let ((_hd96149636_ (##car _e96139633_))
                            (_tl96159638_ (##cdr _e96139633_)))
                        (let ((_path9641_ _hd96149636_))
                          (let ((_specs9643_ _tl96159638_))
                            (if '#t
                                (let ((_src-ctx9645_
                                       (_import-spec-source9528_ _path9641_))
                                      (_exports9646_ (make-table))
                                      (_specs9647_
                                       (gx#syntax->list _specs9643_)))
                                  (begin
                                    (for-each
                                     (lambda (_out9649_)
                                       (table-set!
                                        _exports9646_
                                        (cons (##structure-ref
                                               _out9649_
                                               '3
                                               gx#module-export::t
                                               '#f)
                                              (##structure-ref
                                               _out9649_
                                               '4
                                               gx#module-export::t
                                               '#f))
                                        _out9649_))
                                     (##structure-ref
                                      _src-ctx9645_
                                      '9
                                      gx#module-context::t
                                      '#f))
                                    (_K9597_ _rest9598_
                                             (foldl1 (lambda (_spec9651_
                                                              _r9652_)
                                                       (let ((_e96539669_
                                                              _spec9651_))
                                                         (let ((_E96559673_
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _e96539669_))))
                   (let ((_E96549727_
                          (lambda ()
                            (if (gx#stx-pair? _e96539669_)
                                (let ((_e96569677_ (gx#syntax-e _e96539669_)))
                                  (let ((_hd96579680_ (##car _e96569677_))
                                        (_tl96589682_ (##cdr _e96569677_)))
                                    (let ((_phi9685_ _hd96579680_))
                                      (if (gx#stx-pair? _tl96589682_)
                                          (let ((_e96599687_
                                                 (gx#syntax-e _tl96589682_)))
                                            (let ((_hd96609690_
                                                   (##car _e96599687_))
                                                  (_tl96619692_
                                                   (##cdr _e96599687_)))
                                              (let ((_name9695_ _hd96609690_))
                                                (if (gx#stx-pair? _tl96619692_)
                                                    (let ((_e96629697_
                                                           (gx#syntax-e
                                                            _tl96619692_)))
                                                      (let ((_hd96639700_
                                                             (##car _e96629697_))
                                                            (_tl96649702_
                                                             (##cdr _e96629697_)))
                                                        (let ((_src-phi9705_
                                                               _hd96639700_))
                                                          (if (gx#stx-pair?
                                                               _tl96649702_)
                                                              (let ((_e96659707_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl96649702_)))
                        (let ((_hd96669710_ (##car _e96659707_))
                              (_tl96679712_ (##cdr _e96659707_)))
                          (let ((_src-name9715_ _hd96669710_))
                            (if (gx#stx-null? _tl96679712_)
                                (if (if (gx#stx-fixnum? _src-phi9705_)
                                        (if (gx#identifier? _src-name9715_)
                                            (if (gx#stx-fixnum? _phi9685_)
                                                (gx#identifier? _name9695_)
                                                '#f)
                                            '#f)
                                        '#f)
                                    (let ((_src-phi9717_
                                           (gx#stx-e _src-phi9705_))
                                          (_src-name9718_
                                           (gx#core-identifier-key
                                            _src-name9715_))
                                          (_phi9719_ (gx#stx-e _phi9685_))
                                          (_name9720_
                                           (gx#core-identifier-key
                                            _name9695_)))
                                      (let ((_$e9722_
                                             (table-ref
                                              _exports9646_
                                              (cons _src-phi9717_
                                                    _src-name9718_)
                                              '#f)))
                                        (if _$e9722_
                                            ((lambda (_out9725_)
                                               (cons (gx#core-module-export->import__opt-lambda10443
                                                      _out9725_
                                                      _name9720_
                                                      (fx- _phi9719_
                                                           _src-phi9717_))
                                                     _r9652_))
                                             _$e9722_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; no matching export"
                                             _stx9517_
                                             _hd9596_))))
                                    (_E96559673_))
                                (_E96559673_)))))
                      (_E96559673_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E96559673_)))))
                                          (_E96559673_)))))
                                (_E96559673_)))))
                     (let () (_E96549727_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _r9599_
                                                     _specs9647_))))
                                (_E96099621_))))))
                    (_E96099621_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E96099621_)))))
                                         (let ((_E96019753_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _e96009617_)
                                                      (let ((_e96039735_
                                                             (gx#syntax-e
                                                              _e96009617_)))
                                                        (let ((_hd96049738_
                                                               (##car _e96039735_))
                                                              (_tl96059740_
                                                               (##cdr _e96039735_)))
                                                          (if (gx#stx-pair?
                                                               _tl96059740_)
                                                              (let ((_e96069743_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl96059740_)))
                        (let ((_hd96079746_ (##car _e96069743_))
                              (_tl96089748_ (##cdr _e96069743_)))
                          (let ((_path9751_ _hd96079746_))
                            (if (gx#stx-null? _tl96089748_)
                                (if '#t
                                    (_K9597_ _rest9598_
                                             (cons (_import-spec-source9528_
                                                    _path9751_)
                                                   _r9599_))
                                    (_E96029731_))
                                (_E96029731_)))))
                      (_E96029731_))))
              (_E96029731_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let () (_E96019753_)))))))))
                            (let ((_expand19520_
                                   (lambda (_hd9963_
                                            _K9964_
                                            _rest9965_
                                            _r9966_)
                                     (if (gx#core-bound-module? _hd9963_)
                                         (_import19521_
                                          (gx#syntax-local-e__0 _hd9963_)
                                          _K9964_
                                          _rest9965_
                                          _r9966_)
                                         (if (gx#core-library-module-path?
                                              _hd9963_)
                                             (_import19521_
                                              (gx#import-module__0
                                               (gx#core-resolve-library-module-path
                                                _hd9963_))
                                              _K9964_
                                              _rest9965_
                                              _r9966_)
                                             (if (gx#stx-string? _hd9963_)
                                                 (_import19521_
                                                  (gx#import-module__0
                                                   (gx#core-resolve-module-path__opt-lambda10803
                                                    _hd9963_
                                                    (gx#stx-source _stx9517_)))
                                                  _K9964_
                                                  _rest9965_
                                                  _r9966_)
                                                 (if (##structure-instance-of?
                                                      (gx#stx-e _hd9963_)
                                                      'gx#module-context::t)
                                                     (_K9964_ _rest9965_
                                                              (cons (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd9963_)
                            _r9966_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (_import-spec?9522_
                                                          _hd9963_)
                                                         (_import-spec9527_
                                                          _hd9963_
                                                          _K9964_
                                                          _rest9965_
                                                          _r9966_)
                                                         (if (_import-submodule?9523_
                                                              _hd9963_)
                                                             (_import-submodule9525_
                                                              _hd9963_
                                                              _K9964_
                                                              _rest9965_
                                                              _r9966_)
                                                             (if (_import-runtime?9524_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd9963_)
                         (_import-runtime9526_
                          _hd9963_
                          _K9964_
                          _rest9965_
                          _r9966_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; illegal import"
                          _stx9517_
                          _hd9963_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (let ((_rbody9532_
                                     (gx#core-expand-import/export
                                      _stx9517_
                                      _expanded-import?9530_
                                      'apply-import-expander
                                      gx#current-import-expander-phi
                                      _expand19520_)))
                                (if _internal-expand?9518_
                                    (reverse _rbody9532_)
                                    (gx#core-quote-syntax__1
                                     (gx#core-cons
                                      '%#import
                                      (_import!9529_ _rbody9532_))
                                     (gx#stx-source _stx9517_)))))))))))))))))
    (begin
      (define gx#core-expand-import%__0
        (lambda (_stx9971_)
          (let ((_internal-expand?9973_ '#f))
            (gx#core-expand-import%__opt-lambda9515
             _stx9971_
             _internal-expand?9973_))))
      (define gx#core-expand-import%
        (lambda _g11428_
          (let ((_g11427_ (length _g11428_)))
            (cond ((fx= _g11427_ 1) (apply gx#core-expand-import%__0 _g11428_))
                  ((fx= _g11427_ 2)
                   (apply gx#core-expand-import%__opt-lambda9515 _g11428_))
                  (else (error "No clause matching arguments" _g11428_))))))))
  (define gx#core-import-nested-module
    (lambda (_spath9444_ _where9445_)
      (let ((_e94469453_ _spath9444_))
        (let ((_E94489457_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e94469453_))))
          (let ((_E94479512_
                 (lambda ()
                   (if (gx#stx-pair? _e94469453_)
                       (let ((_e94499461_ (gx#syntax-e _e94469453_)))
                         (let ((_hd94509464_ (##car _e94499461_))
                               (_tl94519466_ (##cdr _e94499461_)))
                           (let ((_origin9469_ _hd94509464_))
                             (let ((_sub9471_ _tl94519466_))
                               (if '#t
                                   (let ((_origin-ctx9473_
                                          (if (gx#stx-false? _origin9469_)
                                              (gx#current-expander-context)
                                              (gx#import-module__0
                                               _origin9469_))))
                                     ((letrec ((_lp9475_
                                                (lambda (_rest9477_ _ctx9478_)
                                                  (let ((_e94799486_
                                                         _rest9477_))
                                                    (let ((_E94819490_
                                                           (lambda ()
                                                             _ctx9478_)))
                                                      (let ((_E94809508_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _e94799486_)
                           (let ((_e94829494_ (gx#syntax-e _e94799486_)))
                             (let ((_hd94839497_ (##car _e94829494_))
                                   (_tl94849499_ (##cdr _e94829494_)))
                               (let ((_id9502_ _hd94839497_))
                                 (let ((_rest9504_ _tl94849499_))
                                   (if '#t
                                       (let ((_bind9506_
                                              (gx#resolve-identifier__opt-lambda4587
                                               _id9502_
                                               '0
                                               _ctx9478_)))
                                         (begin
                                           (if (if (##structure-direct-instance-of?
                                                    _bind9506_
                                                    'gx#syntax-binding::t)
                                                   (##structure-instance-of?
                                                    (##structure-ref
                                                     _bind9506_
                                                     '4
                                                     gx#syntax-binding::t
                                                     '#f)
                                                    'gx#module-context::t)
                                                   '#f)
                                               '#!void
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; not bound as module"
                                                _where9445_
                                                _spath9444_
                                                _id9502_))
                                           (_lp9475_
                                            _rest9504_
                                            (##structure-ref
                                             _bind9506_
                                             '4
                                             gx#syntax-binding::t
                                             '#f))))
                                       (_E94819490_))))))
                           (_E94819490_)))))
                (let () (_E94809508_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _lp9475_)
                                      _sub9471_
                                      _origin-ctx9473_))
                                   (_E94489457_))))))
                       (_E94489457_)))))
            (let () (_E94479512_)))))))
  (define gx#core-expand-import-source
    (lambda (_hd9442_)
      (gx#core-expand-import%__opt-lambda9515
       (cons 'import-internal% (cons _hd9442_ '()))
       '#t)))
  (begin
    (define gx#core-expand-export%__opt-lambda9024
      (lambda (_stx9026_ _internal-expand?9027_)
        (let ((_make-export__opt-lambda9388__1139611397_
               (lambda (_bind9390_ _phi9391_ _ctx9392_ _name9393_)
                 (let ((_key9395_
                        (##structure-ref _bind9390_ '2 gx#binding::t '#f)))
                   (let ((_export-key9397_
                          (if _name9393_
                              (gx#core-identifier-key _name9393_)
                              _key9395_)))
                     (let ()
                       (##structure
                        gx#module-export::t
                        _ctx9392_
                        _key9395_
                        _phi9391_
                        _export-key9397_
                        (let ((_$e9400_
                               (##structure-instance-of?
                                _bind9390_
                                'gx#extern-binding::t)))
                          (if _$e9400_
                              _$e9400_
                              (##structure-direct-instance-of?
                               _bind9390_
                               'gx#import-binding::t))))))))))
          (let ((_make-export__0__1139811401_
                 (lambda (_bind9406_)
                   (let ((_phi9408_ (gx#current-export-expander-phi)))
                     (let ((_ctx9410_ (gx#current-expander-context)))
                       (let ((_name9412_ '#f))
                         (_make-export__opt-lambda9388__1139611397_
                          _bind9406_
                          _phi9408_
                          _ctx9410_
                          _name9412_)))))))
            (let ((_make-export__1__1139911402_
                   (lambda (_bind9414_ _phi9415_)
                     (let ((_ctx9417_ (gx#current-expander-context)))
                       (let ((_name9419_ '#f))
                         (_make-export__opt-lambda9388__1139611397_
                          _bind9414_
                          _phi9415_
                          _ctx9417_
                          _name9419_))))))
              (let ((_make-export__2__1140011403_
                     (lambda (_bind9421_ _phi9422_ _ctx9423_)
                       (let ((_name9425_ '#f))
                         (_make-export__opt-lambda9388__1139611397_
                          _bind9421_
                          _phi9422_
                          _ctx9423_
                          _name9425_)))))
                (let ((_make-export9029_
                       (lambda _g11430_
                         (let ((_g11429_ (length _g11430_)))
                           (cond ((fx= _g11429_ 1)
                                  (apply _make-export__0__1139811401_
                                         _g11430_))
                                 ((fx= _g11429_ 2)
                                  (apply _make-export__1__1139911402_
                                         _g11430_))
                                 ((fx= _g11429_ 3)
                                  (apply _make-export__2__1140011403_
                                         _g11430_))
                                 ((fx= _g11429_ 4)
                                  (apply _make-export__opt-lambda9388__1139611397_
                                         _g11430_))
                                 (else
                                  (error "No clause matching arguments"
                                         _g11430_)))))))
                  (let ((_export-imports9031_
                         (lambda (_src9052_ _r9053_)
                           (let ((_current-ctx9055_
                                  (gx#current-expander-context)))
                             (let ((_current-phi9056_
                                    (gx#current-export-expander-phi)))
                               (let ((_import->export9057_
                                      (lambda (_in9065_)
                                        (let ((_in90669074_ _in9065_))
                                          (let ((_E90689078_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _in90669074_))))
                                            (let ((_K90699085_
                                                   (lambda (_phi9081_
                                                            _key9082_
                                                            _out9083_)
                                                     (if (fx= _phi9081_
                                                              _current-phi9056_)
                                                         (if (eq? _src9052_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##structure-ref
                           _out9083_
                           '1
                           gx#module-export::t
                           '#f))
                     (##structure
                      gx#module-export::t
                      _current-ctx9055_
                      _key9082_
                      _phi9081_
                      _key9082_
                      '#t)
                     '#f)
                 '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (direct-struct-instance?
                                                   gx#module-import::t
                                                   _in90669074_)
                                                  (let ((_e90709088_
                                                         (##vector-ref
                                                          _in90669074_
                                                          '1)))
                                                    (let ((_out9091_
                                                           _e90709088_))
                                                      (let ((_e90719093_
                                                             (##vector-ref
                                                              _in90669074_
                                                              '2)))
                                                        (let ((_key9096_
                                                               _e90719093_))
                                                          (let ((_e90729098_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref _in90669074_ '3)))
                    (let ((_phi9101_ _e90729098_))
                      (_K90699085_ _phi9101_ _key9096_ _out9091_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E90689078_))))))))
                                 (let ((_fold-e9058_
                                        (lambda (_in9060_ _r9061_)
                                          (let ((_out9063_
                                                 (_import->export9057_
                                                  _in9060_)))
                                            (if _out9063_
                                                (cons _out9063_ _r9061_)
                                                _r9061_)))))
                                   (cons (##structure
                                          gx#export-set::t
                                          _src9052_
                                          _current-phi9056_
                                          (foldl1 _fold-e9058_
                                                  '()
                                                  (##structure-ref
                                                   _current-ctx9055_
                                                   '8
                                                   gx#module-context::t
                                                   '#f)))
                                         _r9053_))))))))
                    (let ((_export!9032_
                           (lambda (_rbody9042_)
                             (let ((_current-ctx9044_
                                    (gx#current-expander-context)))
                               (let ((_fold-e9045_
                                      (lambda (_out9049_ _r9050_)
                                        (if (##structure-direct-instance-of?
                                             _out9049_
                                             'gx#module-export::t)
                                            (cons _out9049_ _r9050_)
                                            (if (##structure-direct-instance-of?
                                                 _out9049_
                                                 'gx#export-set::t)
                                                (foldl1 cons
                                                        _r9050_
                                                        (##structure-ref
                                                         _out9049_
                                                         '3
                                                         gx#export-set::t
                                                         '#f))
                                                _r9050_)))))
                                 (let ((_body9047_ (reverse _rbody9042_)))
                                   (begin
                                     (##structure-set!
                                      _current-ctx9044_
                                      (foldl1 _fold-e9045_
                                              (##structure-ref
                                               _current-ctx9044_
                                               '9
                                               gx#module-context::t
                                               '#f)
                                              _body9047_)
                                      '9
                                      gx#module-context::t
                                      '#f)
                                     _body9047_)))))))
                      (let ((_expanded-export?9033_
                             (lambda (_e9037_)
                               (let ((_$e9039_
                                      (##structure-direct-instance-of?
                                       _e9037_
                                       'gx#module-export::t)))
                                 (if _$e9039_
                                     _$e9039_
                                     (##structure-direct-instance-of?
                                      _e9037_
                                      'gx#export-set::t))))))
                        (let ((_expand19030_
                               (lambda (_hd9103_ _K9104_ _rest9105_ _r9106_)
                                 (let ((_e91079139_ _hd9103_))
                                   (let ((_E91349143_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; illegal export"
                                             _stx9026_
                                             _hd9103_))))
                                     (let ((_E91249222_
                                            (lambda ()
                                              (if (gx#stx-pair? _e91079139_)
                                                  (let ((_e91359147_
                                                         (gx#syntax-e
                                                          _e91079139_)))
                                                    (let ((_hd91369150_
                                                           (##car _e91359147_))
                                                          (_tl91379152_
                                                           (##cdr _e91359147_)))
                                                      (if (eq? (gx#stx-e
                                                                _hd91369150_)
                                                               'import:)
                                                          (let ((_in9155_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl91379152_))
                    (if (gx#stx-list? _in9155_)
                        ((letrec ((_lp9157_
                                   (lambda (_in-rest9159_ _r9160_)
                                     (let ((_e91619168_ _in-rest9159_))
                                       (let ((_E91639172_
                                              (lambda ()
                                                (_K9104_ _rest9105_ _r9160_))))
                                         (let ((_E91629218_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _e91619168_)
                                                      (let ((_e91649176_
                                                             (gx#syntax-e
                                                              _e91619168_)))
                                                        (let ((_hd91659179_
                                                               (##car _e91649176_))
                                                              (_tl91669181_
                                                               (##cdr _e91649176_)))
                                                          (let ((_hd9184_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd91659179_))
                    (let ((_in-rest9186_ _tl91669181_))
                      (if '#t
                          (let ((_src9216_
                                 (if (gx#core-bound-module? _hd9184_)
                                     (gx#syntax-local-e__0 _hd9184_)
                                     (if (gx#core-library-module-path?
                                          _hd9184_)
                                         (gx#import-module__0
                                          (gx#core-resolve-library-module-path
                                           _hd9184_))
                                         (if (gx#stx-string? _hd9184_)
                                             (gx#import-module__0
                                              (gx#core-resolve-module-path__opt-lambda10803
                                               _hd9184_
                                               (gx#stx-source _stx9026_)))
                                             (let ((_e91879194_ _hd9184_))
                                               (let ((_E91899198_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; illegal re-export"
                                                         _stx9026_
                                                         _hd9184_))))
                                                 (let ((_E91889212_
                                                        (lambda ()
                                                          (if (gx#stx-pair?
                                                               _e91879194_)
                                                              (let ((_e91909202_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _e91879194_)))
                        (let ((_hd91919205_ (##car _e91909202_))
                              (_tl91929207_ (##cdr _e91909202_)))
                          (if (eq? (gx#stx-e _hd91919205_) 'in:)
                              (let ((_spath9210_ _tl91929207_))
                                (if '#t
                                    (gx#core-import-nested-module
                                     _spath9210_
                                     _stx9026_)
                                    (_E91899198_)))
                              (_E91899198_))))
                      (_E91899198_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (_E91889212_))))))))))
                            (_lp9157_
                             _in-rest9186_
                             (_export-imports9031_ _src9216_ _r9160_)))
                          (_E91639172_))))))
              (_E91639172_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let () (_E91629218_))))))))
                           _lp9157_)
                         _in9155_
                         _r9106_)
                        (_E91349143_)))
                  (_E91349143_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E91349143_)))))
                                       (let ((_E91119261_
                                              (lambda ()
                                                (if (gx#stx-pair? _e91079139_)
                                                    (let ((_e91259226_
                                                           (gx#syntax-e
                                                            _e91079139_)))
                                                      (let ((_hd91269229_
                                                             (##car _e91259226_))
                                                            (_tl91279231_
                                                             (##cdr _e91259226_)))
                                                        (if (eq? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd91269229_)
                         'rename:)
                    (if (gx#stx-pair? _tl91279231_)
                        (let ((_e91289234_ (gx#syntax-e _tl91279231_)))
                          (let ((_hd91299237_ (##car _e91289234_))
                                (_tl91309239_ (##cdr _e91289234_)))
                            (let ((_id9242_ _hd91299237_))
                              (if (gx#stx-pair? _tl91309239_)
                                  (let ((_e91319244_
                                         (gx#syntax-e _tl91309239_)))
                                    (let ((_hd91329247_ (##car _e91319244_))
                                          (_tl91339249_ (##cdr _e91319244_)))
                                      (let ((_name9252_ _hd91329247_))
                                        (if (gx#stx-null? _tl91339249_)
                                            (if '#t
                                                (let ((_phi9254_
                                                       (gx#current-export-expander-phi)))
                                                  (let ((_$e9256_
                                                         (gx#core-resolve-identifier__1
                                                          _id9242_
                                                          _phi9254_)))
                                                    (if _$e9256_
                                                        ((lambda (_bind9259_)
                                                           (_K9104_ _rest9105_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (_make-export__opt-lambda9388__1139611397_
                                   _bind9259_
                                   _phi9254_
                                   (gx#current-expander-context)
                                   _name9252_)
                                  _r9106_)))
                 _$e9256_)
                (gx#raise-syntax-error
                 '#f
                 '"Reference to unbound identifier"
                 _stx9026_
                 _hd9103_
                 _id9242_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E91249222_))
                                            (_E91249222_)))))
                                  (_E91249222_)))))
                        (_E91249222_))
                    (_E91249222_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E91249222_)))))
                                         (let ((_E91109310_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _e91079139_)
                                                      (let ((_e91129265_
                                                             (gx#syntax-e
                                                              _e91079139_)))
                                                        (let ((_hd91139268_
                                                               (##car _e91129265_))
                                                              (_tl91149270_
                                                               (##cdr _e91129265_)))
                                                          (if (eq? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd91139268_)
                           'spec:)
                      (if (gx#stx-pair? _tl91149270_)
                          (let ((_e91159273_ (gx#syntax-e _tl91149270_)))
                            (let ((_hd91169276_ (##car _e91159273_))
                                  (_tl91179278_ (##cdr _e91159273_)))
                              (let ((_phi9281_ _hd91169276_))
                                (if (gx#stx-pair? _tl91179278_)
                                    (let ((_e91189283_
                                           (gx#syntax-e _tl91179278_)))
                                      (let ((_hd91199286_ (##car _e91189283_))
                                            (_tl91209288_ (##cdr _e91189283_)))
                                        (let ((_id9291_ _hd91199286_))
                                          (if (gx#stx-pair? _tl91209288_)
                                              (let ((_e91219293_
                                                     (gx#syntax-e
                                                      _tl91209288_)))
                                                (let ((_hd91229296_
                                                       (##car _e91219293_))
                                                      (_tl91239298_
                                                       (##cdr _e91219293_)))
                                                  (let ((_name9301_
                                                         _hd91229296_))
                                                    (if (gx#stx-null?
                                                         _tl91239298_)
                                                        (if (if (gx#stx-fixnum?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _phi9281_)
                        (if (gx#identifier? _id9291_)
                            (gx#identifier? _name9301_)
                            '#f)
                        '#f)
                    (let ((_phi9303_ (gx#stx-e _phi9281_)))
                      (let ((_$e9305_
                             (gx#core-resolve-identifier__1
                              _id9291_
                              _phi9303_)))
                        (if _$e9305_
                            ((lambda (_bind9308_)
                               (_K9104_ _rest9105_
                                        (cons (_make-export__opt-lambda9388__1139611397_
                                               _bind9308_
                                               _phi9303_
                                               (gx#current-expander-context)
                                               _name9301_)
                                              _r9106_)))
                             _$e9305_)
                            (gx#raise-syntax-error
                             '#f
                             '"Reference to unbound identifier"
                             _stx9026_
                             _hd9103_
                             _id9291_))))
                    (_E91119261_))
                (_E91119261_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E91119261_)))))
                                    (_E91119261_)))))
                          (_E91119261_))
                      (_E91119261_))))
              (_E91119261_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_E91099321_
                                                  (lambda ()
                                                    (let ((_id9314_
                                                           _e91079139_))
                                                      (if (gx#identifier?
                                                           _id9314_)
                                                          (let ((_$e9316_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-resolve-identifier__1
                          _id9314_
                          (gx#current-export-expander-phi))))
                    (if _$e9316_
                        ((lambda (_bind9319_)
                           (_K9104_ _rest9105_
                                    (cons (_make-export__0__1139811401_
                                           _bind9319_)
                                          _r9106_)))
                         _$e9316_)
                        (gx#raise-syntax-error
                         '#f
                         '"Reference to unbound identifier"
                         _stx9026_
                         _hd9103_)))
                  (_E91109310_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_E91089385_
                                                    (lambda ()
                                                      (if (eq? (gx#stx-e
                                                                _e91079139_)
                                                               '#t)
                                                          (if '#t
                                                              (let ((_current-ctx9325_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#current-expander-context)))
                        (let ((_current-phi9327_
                               (gx#current-export-expander-phi)))
                          (let ((_phi-ctx9329_
                                 (gx#core-context-shift
                                  _current-ctx9325_
                                  _current-phi9327_)))
                            (let ((_phi-bind9331_
                                   (table->list
                                    (##structure-ref
                                     _phi-ctx9329_
                                     '2
                                     gx#expander-context::t
                                     '#f))))
                              (let ()
                                ((letrec ((_lp9334_
                                           (lambda (_bind-rest9336_ _set9337_)
                                             (let ((_bind-rest93389348_
                                                    _bind-rest9336_))
                                               (let ((_E93419352_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _bind-rest93389348_))))
                                                 (let ((_else93409356_
                                                        (lambda ()
                                                          (_K9104_ _rest9105_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (##structure
                                  gx#export-set::t
                                  '#f
                                  _current-phi9327_
                                  _set9337_)
                                 _r9106_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_K93429366_
                                                          (lambda (_bind-rest9359_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _bind9360_
                           _key9361_)
                    (if (let ((_$e9363_
                               (##structure-direct-instance-of?
                                _bind9360_
                                'gx#import-binding::t)))
                          (if _$e9363_
                              _$e9363_
                              (gx#private-feature-binding? _bind9360_)))
                        (_lp9334_ _bind-rest9359_ _set9337_)
                        (_lp9334_
                         _bind-rest9359_
                         (cons (_make-export__2__1140011403_
                                _bind9360_
                                _current-phi9327_
                                _current-ctx9325_)
                               _set9337_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##pair? _bind-rest93389348_)
                                                         (let ((_hd93439369_
                                                                (##car _bind-rest93389348_))
                                                               (_tl93449371_
                                                                (##cdr _bind-rest93389348_)))
                                                           (if (##pair? _hd93439369_)
                                                               (let ((_hd93459374_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##car _hd93439369_))
                             (_tl93469376_ (##cdr _hd93439369_)))
                         (let ((_key9379_ _hd93459374_))
                           (let ((_bind9381_ _tl93469376_))
                             (let ((_bind-rest9383_ _tl93449371_))
                               (_K93429366_
                                _bind-rest9383_
                                _bind9381_
                                _key9379_)))))
                       (_else93409356_)))
                 (_else93409356_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _lp9334_)
                                 _phi-bind9331_
                                 '()))))))
                      (_E91099321_))
                  (_E91099321_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let () (_E91089385_))))))))))))
                          (let ((_rbody9035_
                                 (gx#core-expand-import/export
                                  _stx9026_
                                  gx#module-export?
                                  'apply-export-expander
                                  gx#current-export-expander-phi
                                  _expand19030_)))
                            (if _internal-expand?9027_
                                (reverse _rbody9035_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#export
                                  (_export!9032_ _rbody9035_))
                                 (gx#stx-source _stx9026_)))))))))))))))
    (begin
      (define gx#core-expand-export%__0
        (lambda (_stx9435_)
          (let ((_internal-expand?9437_ '#f))
            (gx#core-expand-export%__opt-lambda9024
             _stx9435_
             _internal-expand?9437_))))
      (define gx#core-expand-export%
        (lambda _g11432_
          (let ((_g11431_ (length _g11432_)))
            (cond ((fx= _g11431_ 1) (apply gx#core-expand-export%__0 _g11432_))
                  ((fx= _g11431_ 2)
                   (apply gx#core-expand-export%__opt-lambda9024 _g11432_))
                  (else (error "No clause matching arguments" _g11432_))))))))
  (define gx#core-expand-export-source
    (lambda (_hd9023_)
      (gx#core-expand-export%__opt-lambda9024
       (cons 'export-macro% (cons _hd9023_ '()))
       '#t)))
  (define gx#core-expand-provide%
    (lambda (_stx8993_)
      (let ((_e89949001_ _stx8993_))
        (let ((_E89969005_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e89949001_))))
          (let ((_E89959019_
                 (lambda ()
                   (if (gx#stx-pair? _e89949001_)
                       (let ((_e89979009_ (gx#syntax-e _e89949001_)))
                         (let ((_hd89989012_ (##car _e89979009_))
                               (_tl89999014_ (##cdr _e89979009_)))
                           (let ((_body9017_ _tl89999014_))
                             (if (gx#identifier-list? _body9017_)
                                 (begin
                                   (gx#stx-for-each1
                                    gx#core-bind-feature!
                                    _body9017_)
                                   (gx#core-quote-syntax__1
                                    (gx#core-cons
                                     '%#provide
                                     (gx#stx-map1
                                      gx#core-quote-syntax
                                      _body9017_))
                                    (gx#stx-source _stx8993_)))
                                 (_E89969005_)))))
                       (_E89969005_)))))
            (let () (_E89959019_)))))))
  (begin
    (define gx#core-bind-feature!__opt-lambda8957
      (lambda (_id8959_ _private?8960_ _phi8961_ _ctx8962_)
        (gx#core-bind-syntax!__opt-lambda6050
         _id8959_
         ((if _private?8960_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id8959_))
         _private?8960_
         _phi8961_
         _ctx8962_)))
    (begin
      (define gx#core-bind-feature!__0
        (lambda (_id8967_)
          (let ((_private?8969_ '#f))
            (let ((_phi8971_ (gx#current-expander-phi)))
              (let ((_ctx8973_ (gx#current-expander-context)))
                (gx#core-bind-feature!__opt-lambda8957
                 _id8967_
                 _private?8969_
                 _phi8971_
                 _ctx8973_))))))
      (define gx#core-bind-feature!__1
        (lambda (_id8975_ _private?8976_)
          (let ((_phi8978_ (gx#current-expander-phi)))
            (let ((_ctx8980_ (gx#current-expander-context)))
              (gx#core-bind-feature!__opt-lambda8957
               _id8975_
               _private?8976_
               _phi8978_
               _ctx8980_)))))
      (define gx#core-bind-feature!__2
        (lambda (_id8982_ _private?8983_ _phi8984_)
          (let ((_ctx8986_ (gx#current-expander-context)))
            (gx#core-bind-feature!__opt-lambda8957
             _id8982_
             _private?8983_
             _phi8984_
             _ctx8986_))))
      (define gx#core-bind-feature!
        (lambda _g11434_
          (let ((_g11433_ (length _g11434_)))
            (cond ((fx= _g11433_ 1) (apply gx#core-bind-feature!__0 _g11434_))
                  ((fx= _g11433_ 2) (apply gx#core-bind-feature!__1 _g11434_))
                  ((fx= _g11433_ 3) (apply gx#core-bind-feature!__2 _g11434_))
                  ((fx= _g11433_ 4)
                   (apply gx#core-bind-feature!__opt-lambda8957 _g11434_))
                  (else (error "No clause matching arguments" _g11434_)))))))))
