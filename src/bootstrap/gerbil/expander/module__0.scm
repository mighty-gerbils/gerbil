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
    (lambda _$args11493_
      (apply make-struct-instance gx#module-import::t _$args11493_)))
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
    (lambda _$args11490_
      (apply make-struct-instance gx#module-export::t _$args11490_)))
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
    (lambda _$args11487_
      (apply make-struct-instance gx#import-set::t _$args11487_)))
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
    (lambda _$args11484_
      (apply make-struct-instance gx#export-set::t _$args11484_)))
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
    (lambda _$args11481_
      (apply make-struct-instance gx#import-expander::t _$args11481_)))
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
    (lambda _$args11478_
      (apply make-struct-instance gx#export-expander::t _$args11478_)))
  (define gx#current-import-expander-phi (make-parameter '#f))
  (define gx#current-export-expander-phi (make-parameter '#f))
  (define gx#current-module-reader-path (make-parameter '#f))
  (define gx#current-module-reader-args (make-parameter '#f))
  (define gx#module-context:::init!
    (lambda (_self11472_ _id11473_ _super11474_ _ns11475_ _path11476_)
      (direct-struct-instance-init!
       _self11472_
       _id11473_
       (make-hash-table-eq)
       _super11474_
       '#f
       '#f
       _ns11475_
       _path11476_
       '()
       '()
       '#f
       '#f)))
  (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
  (begin
    (define gx#prelude-context:::init!__opt-lambda11436
      (lambda (_self11438_ _ctx11439_ _root11440_)
        (let ((_super11448_
               (let ((_$e11442_ _root11440_))
                 (if _$e11442_
                     _$e11442_
                     (let ((_$e11445_ (gx#core-context-root__0)))
                       (if _$e11445_
                           _$e11445_
                           (make-struct-instance gx#root-context::t)))))))
          (if _ctx11439_
              (let ((_id11451_
                     (##structure-ref
                      _ctx11439_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path11452_
                     (##structure-ref _ctx11439_ '7 gx#module-context::t '#f))
                    (_in11453_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx11439_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e11454_
                     (make-promise (lambda () (gx#eval-module _ctx11439_)))))
                (begin
                  (direct-struct-instance-init!
                   _self11438_
                   _id11451_
                   (make-hash-table-eq)
                   _super11448_
                   '#f
                   '#f
                   _path11452_
                   _in11453_
                   _e11454_)
                  (for-each
                   (lambda (_g1145511457_)
                     (gx#core-bind-weak-import!__opt-lambda10790
                      _g1145511457_
                      _self11438_))
                   _in11453_)))
              (direct-struct-instance-init!
               _self11438_
               '#f
               (make-hash-table-eq)
               _super11448_
               '#f
               '#f
               '#f
               '()
               '#f)))))
    (begin
      (define gx#prelude-context:::init!__0
        (lambda (_self11463_ _ctx11464_)
          (let ((_root11466_ '#f))
            (gx#prelude-context:::init!__opt-lambda11436
             _self11463_
             _ctx11464_
             _root11466_))))
      (define gx#prelude-context:::init!
        (lambda _g11509_
          (let ((_g11508_ (length _g11509_)))
            (cond ((fx= _g11508_ 2)
                   (apply gx#prelude-context:::init!__0 _g11509_))
                  ((fx= _g11508_ 3)
                   (apply gx#prelude-context:::init!__opt-lambda11436
                          _g11509_))
                  (else (error "No clause matching arguments" _g11509_))))))))
  (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
  (define gx#import-expander:::init!
    (lambda (_self11434_ _e11435_)
      (direct-struct-instance-init!
       _self11434_
       _e11435_
       (gx#current-expander-context)
       (fx- (gx#current-expander-phi) '1))))
  (bind-method! gx#import-expander::t ':init! gx#import-expander:::init! '#f)
  (define gx#export-expander:::init!
    (lambda (_self11431_ _e11432_)
      (direct-struct-instance-init!
       _self11431_
       _e11432_
       (gx#current-expander-context)
       (fx- (gx#current-expander-phi) '1))))
  (bind-method! gx#export-expander::t ':init! gx#export-expander:::init! '#f)
  (define gx#import-expander::apply-import-expander
    (lambda (_g1142311426_ _g1142411428_)
      (gx#core-apply-user-expander__opt-lambda4786
       _g1142311426_
       _g1142411428_
       'apply-import-expander)))
  (bind-method!
   gx#import-expander::t
   'apply-import-expander
   gx#import-expander::apply-import-expander
   '#f)
  (define gx#export-expander::apply-export-expander
    (lambda (_g1141611419_ _g1141711421_)
      (gx#core-apply-user-expander__opt-lambda4786
       _g1141611419_
       _g1141711421_
       'apply-export-expander)))
  (bind-method!
   gx#export-expander::t
   'apply-export-expander
   gx#export-expander::apply-export-expander
   '#f)
  (define gx#module-source-path
    (lambda (_ctx11410_)
      (let ((_path11412_
             (##structure-ref _ctx11410_ '7 gx#module-context::t '#f)))
        (let ((_path11414_
               (if (pair? _path11412_) (last _path11412_) _path11412_)))
          (let () (if (string? _path11414_) _path11414_ '#f))))))
  (begin
    (define gx#import-module__opt-lambda11384
      (lambda (_path11386_ _reload?11387_ _eval?11388_)
        (let ((_ctx11390_
               ((gx#current-expander-module-import)
                _path11386_
                _reload?11387_)))
          (begin
            (if (if _ctx11390_ _eval?11388_ '#f)
                (gx#eval-module _ctx11390_)
                '#!void)
            _ctx11390_))))
    (begin
      (define gx#import-module__0
        (lambda (_path11395_)
          (let ((_reload?11397_ '#f))
            (let ((_eval?11399_ '#f))
              (gx#import-module__opt-lambda11384
               _path11395_
               _reload?11397_
               _eval?11399_)))))
      (define gx#import-module__1
        (lambda (_path11401_ _reload?11402_)
          (let ((_eval?11404_ '#f))
            (gx#import-module__opt-lambda11384
             _path11401_
             _reload?11402_
             _eval?11404_))))
      (define gx#import-module
        (lambda _g11511_
          (let ((_g11510_ (length _g11511_)))
            (cond ((fx= _g11510_ 1) (apply gx#import-module__0 _g11511_))
                  ((fx= _g11510_ 2) (apply gx#import-module__1 _g11511_))
                  ((fx= _g11510_ 3)
                   (apply gx#import-module__opt-lambda11384 _g11511_))
                  (else (error "No clause matching arguments" _g11511_))))))))
  (define gx#eval-module
    (lambda (_mod11383_) ((gx#current-expander-module-eval) _mod11383_)))
  (define gx#core-eval-module
    (lambda (_obj11368_)
      (let ((_force-e11370_
             (lambda (_getf11379_ _e11380_)
               (call-with-parameters
                (lambda () (force (_getf11379_ _e11380_)))
                gx#current-expander-context
                _e11380_
                gx#current-expander-phi
                '0))))
        ((letrec ((_recur11372_
                   (lambda (_e11374_)
                     (if (##structure-instance-of?
                          _e11374_
                          'gx#module-context::t)
                         (begin
                           (let ((_$e11376_
                                  (gx#core-context-prelude__opt-lambda11349
                                   _e11374_)))
                             (if _$e11376_ (_recur11372_ _$e11376_) '#!void))
                           (_force-e11370_ gx#module-context-e _e11374_))
                         (if (##structure-instance-of?
                              _e11374_
                              'gx#prelude-context::t)
                             (_force-e11370_ gx#prelude-context-e _e11374_)
                             (if (gx#stx-string? _e11374_)
                                 (_recur11372_
                                  (gx#import-module__0
                                   (gx#core-resolve-module-path__0 _e11374_)))
                                 (if (gx#core-library-module-path? _e11374_)
                                     (_recur11372_
                                      (gx#import-module__0
                                       (gx#core-resolve-library-module-path
                                        _e11374_)))
                                     (error '"Cannot eval module"
                                            _obj11368_))))))))
           _recur11372_)
         _obj11368_))))
  (begin
    (define gx#core-context-prelude__opt-lambda11349
      (lambda (_ctx11351_)
        ((letrec ((_lp11353_
                   (lambda (_e11355_)
                     (if (let ((_$e11357_
                                (##structure-instance-of?
                                 _e11355_
                                 'gx#module-context::t)))
                           (if _$e11357_
                               _$e11357_
                               (##structure-instance-of?
                                _e11355_
                                'gx#local-context::t)))
                         (_lp11353_
                          (##structure-ref _e11355_ '3 gx#phi-context::t '#f))
                         (if (##structure-instance-of?
                              _e11355_
                              'gx#prelude-context::t)
                             _e11355_
                             '#f)))))
           _lp11353_)
         _ctx11351_)))
    (begin
      (define gx#core-context-prelude__0
        (lambda ()
          (let ((_ctx11364_ (gx#current-expander-context)))
            (gx#core-context-prelude__opt-lambda11349 _ctx11364_))))
      (define gx#core-context-prelude
        (lambda _g11513_
          (let ((_g11512_ (length _g11513_)))
            (cond ((fx= _g11512_ 0)
                   (apply gx#core-context-prelude__0 _g11513_))
                  ((fx= _g11512_ 1)
                   (apply gx#core-context-prelude__opt-lambda11349 _g11513_))
                  (else (error "No clause matching arguments" _g11513_))))))))
  (define gx#core-module->prelude-context
    (lambda (_ctx11341_)
      (let ((_ht11343_ (gx#current-expander-module-registry)))
        (let ((_$e11345_ (table-ref _ht11343_ _ctx11341_ '#f)))
          (if _$e11345_
              (values _$e11345_)
              (let ((_pre11348_
                     (let ((__obj11504 (make-object gx#prelude-context::t '8)))
                       (begin
                         (gx#prelude-context:::init!__0 __obj11504 _ctx11341_)
                         __obj11504))))
                (begin
                  (table-set! _ht11343_ _ctx11341_ _pre11348_)
                  _pre11348_)))))))
  (begin
    (define gx#core-import-module__opt-lambda11293
      (lambda (_rpath11295_ _reload?11296_)
        (let ((_import-source11298_
               (lambda (_path11310_)
                 (begin
                   (if (member _path11310_ (gx#current-expander-path))
                       (error '"Cyclic expansion" _path11310_)
                       '#!void)
                   (call-with-parameters
                    (lambda ()
                      (let ((_g11514_ (gx#core-read-module _path11310_)))
                        (begin
                          (let ((_g11515_ (values-count _g11514_)))
                            (if (not (fx= _g11515_ 4))
                                (error "Context expects 4 values" _g11515_)))
                          (let ((_pre11313_ (values-ref _g11514_ 0))
                                (_id11314_ (values-ref _g11514_ 1))
                                (_ns11315_ (values-ref _g11514_ 2))
                                (_body11316_ (values-ref _g11514_ 3)))
                            (let ((_prelude11321_
                                   (if (##structure-instance-of?
                                        _pre11313_
                                        'gx#prelude-context::t)
                                       _pre11313_
                                       (if (##structure-instance-of?
                                            _pre11313_
                                            'gx#module-context::t)
                                           (gx#core-module->prelude-context
                                            _pre11313_)
                                           (if (string? _pre11313_)
                                               (gx#core-module->prelude-context
                                                (gx#core-import-module__0
                                                 _pre11313_))
                                               (if (not _pre11313_)
                                                   (let ((_$e11318_
                                                          (gx#current-expander-module-prelude)))
                                                     (if _$e11318_
                                                         _$e11318_
                                                         (let ((__obj11505
                                                                (make-object
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#prelude-context::t
                         '8)))
                   (begin
                     (gx#prelude-context:::init!__0 __obj11505 '#f)
                     __obj11505))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (error '"Cannot import module; unknown prelude"
                                                          _rpath11295_
                                                          _pre11313_)))))))
                              (let ((_ctx11323_
                                     (let ((__obj11506
                                            (make-object
                                             gx#module-context::t
                                             '11)))
                                       (begin
                                         (gx#module-context:::init!
                                          __obj11506
                                          _id11314_
                                          _prelude11321_
                                          _ns11315_
                                          _path11310_)
                                         __obj11506))))
                                (let ((_body11325_
                                       (gx#core-expand-module-begin
                                        _body11316_
                                        _ctx11323_)))
                                  (let ((_body11327_
                                         (gx#core-quote-syntax__opt-lambda4145
                                          (gx#core-cons '%#begin _body11325_)
                                          _path11310_
                                          _ctx11323_
                                          '())))
                                    (let ()
                                      (begin
                                        (##structure-set!
                                         _ctx11323_
                                         (make-promise
                                          (lambda ()
                                            (gx#eval-syntax* _body11327_)))
                                         '10
                                         gx#module-context::t
                                         '#f)
                                        (##structure-set!
                                         _ctx11323_
                                         _body11327_
                                         '11
                                         gx#module-context::t
                                         '#f)
                                        (table-set!
                                         (gx#current-expander-module-registry)
                                         _path11310_
                                         _ctx11323_)
                                        (table-set!
                                         (gx#current-expander-module-registry)
                                         _id11314_
                                         _ctx11323_)
                                        _ctx11323_))))))))))
                    gx#current-expander-context
                    (gx#core-context-root__0)
                    gx#current-expander-marks
                    '()
                    gx#current-expander-phi
                    '0
                    gx#current-expander-path
                    (cons _path11310_ (gx#current-expander-path))
                    gx#current-import-expander-phi
                    '#f
                    gx#current-export-expander-phi
                    '#f)))))
          (let ((_$e11300_
                 (if (not _reload?11296_)
                     (table-ref
                      (gx#current-expander-module-registry)
                      _rpath11295_
                      '#f)
                     '#f)))
            (if _$e11300_
                (values _$e11300_)
                (if (gx#core-library-module-path? _rpath11295_)
                    (let ((_ctx11303_
                           (gx#core-import-module__opt-lambda11293
                            (gx#core-resolve-library-module-path _rpath11295_)
                            _reload?11296_)))
                      (begin
                        (table-set!
                         (gx#current-expander-module-registry)
                         _rpath11295_
                         _ctx11303_)
                        _ctx11303_))
                    (let ((_npath11305_ (path-normalize _rpath11295_)))
                      (let ((_$e11307_
                             (if (not _reload?11296_)
                                 (table-ref
                                  (gx#current-expander-module-registry)
                                  _npath11305_
                                  '#f)
                                 '#f)))
                        (if _$e11307_
                            (values _$e11307_)
                            (_import-source11298_ _npath11305_))))))))))
    (begin
      (define gx#core-import-module__0
        (lambda (_rpath11334_)
          (let ((_reload?11336_ '#f))
            (gx#core-import-module__opt-lambda11293
             _rpath11334_
             _reload?11336_))))
      (define gx#core-import-module
        (lambda _g11517_
          (let ((_g11516_ (length _g11517_)))
            (cond ((fx= _g11516_ 1) (apply gx#core-import-module__0 _g11517_))
                  ((fx= _g11516_ 2)
                   (apply gx#core-import-module__opt-lambda11293 _g11517_))
                  (else (error "No clause matching arguments" _g11517_))))))))
  (define gx#core-read-module
    (lambda (_path11289_)
      (with-catch
       (lambda (_exn11291_)
         (if (if (datum-parsing-exception? _exn11291_)
                 (eq? (datum-parsing-exception-filepos _exn11291_) '0)
                 '#f)
             (gx#core-read-module/lang _path11289_)
             (raise _exn11291_)))
       (lambda () (gx#core-read-module/sexp _path11289_)))))
  (define gx#core-read-module/sexp
    (lambda (_path11153_)
      ((letrec ((_lp11155_
                 (lambda (_body11157_ _pre11158_ _ns11159_ _pkg11160_)
                   (let ((_e1116111185_ _body11157_))
                     (let ((_E1117711203_
                            (lambda ()
                              (let ((_prelude11189_
                                     (if (gx#core-bound-module-prelude?
                                          _pre11158_)
                                         (gx#syntax-local-e__0 _pre11158_)
                                         (if (gx#core-library-module-path?
                                              _pre11158_)
                                             (gx#core-resolve-library-module-path
                                              _pre11158_)
                                             (if (gx#stx-string? _pre11158_)
                                                 (gx#core-resolve-module-path__opt-lambda10966
                                                  _pre11158_
                                                  _path11153_)
                                                 (gx#stx-e _pre11158_))))))
                                (let ((_path-id11191_
                                       (gx#core-module-path->namespace
                                        _path11153_)))
                                  (let ((_pkg-id11193_
                                         (if _pkg11160_
                                             (string-append
                                              _pkg11160_
                                              '"/"
                                              _path-id11191_)
                                             _path-id11191_)))
                                    (let ((_module-id11195_
                                           (string->symbol _pkg-id11193_)))
                                      (let ((_module-ns11200_
                                             (let ((_$e11197_ _ns11159_))
                                               (if _$e11197_
                                                   _$e11197_
                                                   _pkg-id11193_))))
                                        (let ()
                                          (values _prelude11189_
                                                  _module-id11195_
                                                  _module-ns11200_
                                                  _body11157_))))))))))
                       (let ((_E1117011232_
                              (lambda ()
                                (if (gx#stx-pair? _e1116111185_)
                                    (let ((_e1117811207_
                                           (gx#syntax-e _e1116111185_)))
                                      (let ((_hd1117911210_
                                             (##car _e1117811207_))
                                            (_tl1118011212_
                                             (##cdr _e1117811207_)))
                                        (if (eq? (gx#stx-e _hd1117911210_)
                                                 'package:)
                                            (if (gx#stx-pair? _tl1118011212_)
                                                (let ((_e1118111215_
                                                       (gx#syntax-e
                                                        _tl1118011212_)))
                                                  (let ((_hd1118211218_
                                                         (##car _e1118111215_))
                                                        (_tl1118311220_
                                                         (##cdr _e1118111215_)))
                                                    (let ((_pkg11223_
                                                           _hd1118211218_))
                                                      (let ((_rest11225_
                                                             _tl1118311220_))
                                                        (if '#t
                                                            (let ((_pkg11230_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if (gx#identifier? _pkg11223_)
                               (symbol->string (gx#stx-e _pkg11223_))
                               (if (let ((_$e11227_
                                          (gx#stx-string? _pkg11223_)))
                                     (if _$e11227_
                                         _$e11227_
                                         (gx#stx-false? _pkg11223_)))
                                   (gx#stx-e _pkg11223_)
                                   (gx#raise-syntax-error
                                    'import
                                    '"Bad syntax; Illegal package name"
                                    _pkg11223_)))))
                      (_lp11155_ _rest11225_ _pre11158_ _ns11159_ _pkg11230_))
                    (_E1117711203_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1117711203_))
                                            (_E1117711203_))))
                                    (_E1117711203_)))))
                         (let ((_E1116311261_
                                (lambda ()
                                  (if (gx#stx-pair? _e1116111185_)
                                      (let ((_e1117111236_
                                             (gx#syntax-e _e1116111185_)))
                                        (let ((_hd1117211239_
                                               (##car _e1117111236_))
                                              (_tl1117311241_
                                               (##cdr _e1117111236_)))
                                          (if (eq? (gx#stx-e _hd1117211239_)
                                                   'namespace:)
                                              (if (gx#stx-pair? _tl1117311241_)
                                                  (let ((_e1117411244_
                                                         (gx#syntax-e
                                                          _tl1117311241_)))
                                                    (let ((_hd1117511247_
                                                           (##car _e1117411244_))
                                                          (_tl1117611249_
                                                           (##cdr _e1117411244_)))
                                                      (let ((_ns11252_
                                                             _hd1117511247_))
                                                        (let ((_rest11254_
                                                               _tl1117611249_))
                                                          (if '#t
                                                              (let ((_ns11259_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (gx#identifier? _ns11252_)
                                 (symbol->string (gx#stx-e _ns11252_))
                                 (if (let ((_$e11256_
                                            (gx#stx-string? _ns11252_)))
                                       (if _$e11256_
                                           _$e11256_
                                           (gx#stx-false? _ns11252_)))
                                     (gx#stx-e _ns11252_)
                                     (gx#raise-syntax-error
                                      'import
                                      '"Bad syntax; illegal namespace"
                                      _ns11252_)))))
                        (_lp11155_
                         _rest11254_
                         _pre11158_
                         _ns11259_
                         _pkg11160_))
                      (_E1117011232_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1117011232_))
                                              (_E1117011232_))))
                                      (_E1117011232_)))))
                           (let ((_E1116211285_
                                  (lambda ()
                                    (if (gx#stx-pair? _e1116111185_)
                                        (let ((_e1116411265_
                                               (gx#syntax-e _e1116111185_)))
                                          (let ((_hd1116511268_
                                                 (##car _e1116411265_))
                                                (_tl1116611270_
                                                 (##cdr _e1116411265_)))
                                            (if (eq? (gx#stx-e _hd1116511268_)
                                                     'prelude:)
                                                (if (gx#stx-pair?
                                                     _tl1116611270_)
                                                    (let ((_e1116711273_
                                                           (gx#syntax-e
                                                            _tl1116611270_)))
                                                      (let ((_hd1116811276_
                                                             (##car _e1116711273_))
                                                            (_tl1116911278_
                                                             (##cdr _e1116711273_)))
                                                        (let ((_prelude11281_
                                                               _hd1116811276_))
                                                          (let ((_rest11283_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1116911278_))
                    (if '#t
                        (_lp11155_
                         _rest11283_
                         _prelude11281_
                         _ns11159_
                         _pkg11160_)
                        (_E1116311261_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1116311261_))
                                                (_E1116311261_))))
                                        (_E1116311261_)))))
                             (let () (_E1116211285_))))))))))
         _lp11155_)
       (read-syntax-from-file _path11153_)
       '#f
       '#f
       '#f)))
  (define gx#core-read-module/lang
    (lambda (_path10993_)
      (let ((_read-body10995_
             (lambda (_inp11076_ _pre11077_ _pkg11078_ _ns11079_ _args11080_)
               (let ((_prelude11082_ (gx#import-module__0 _pre11077_)))
                 (let ((_read-module-body11136_
                        (let ((_$e11128_
                               (find (lambda (_e1108311085_)
                                       (let ((_g1108711097_ _e1108311085_))
                                         (let ((_E1109011101_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _g1108711097_))))
                                           (let ((_else1108911105_
                                                  (lambda () '#f)))
                                             (let ((_K1109111109_
                                                    (lambda () '#t)))
                                               (if (##structure-direct-instance-of?
                                                    _g1108711097_
                                                    (##type-id
                                                     gx#module-export::t))
                                                   (let ((_e1109211112_
                                                          (##vector-ref
                                                           _g1108711097_
                                                           '1)))
                                                     (let ((_e1109311115_
                                                            (##vector-ref
                                                             _g1108711097_
                                                             '2)))
                                                       (let ((_e1109411118_
                                                              (##vector-ref
                                                               _g1108711097_
                                                               '3)))
                                                         (if (##eq? _e1109411118_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                     (let ((_e1109511121_ (##vector-ref _g1108711097_ '4)))
                       (if ((lambda (_g1112311125_)
                              (eq? _g1112311125_ 'read-module-body))
                            _e1109511121_)
                           (_K1109111109_)
                           (_else1108911105_)))
                     (_else1108911105_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_else1108911105_)))))))
                                     (##structure-ref
                                      _prelude11082_
                                      '9
                                      gx#module-context::t
                                      '#f))))
                          (if _$e11128_
                              ((lambda (_xport11131_)
                                 (let ((_proc11134_
                                        (with-catch
                                         void
                                         (lambda ()
                                           (gx#eval-syntax__0
                                            (##structure-ref
                                             (gx#core-resolve-module-export
                                              _xport11131_)
                                             '1
                                             gx#binding::t
                                             '#f))))))
                                   (if (procedure? _proc11134_)
                                       _proc11134_
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Illegal #lang prelude; read-module-body is not a procedure"
                                        _path10993_
                                        _pre11077_
                                        _proc11134_))))
                               _$e11128_)
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang prelude; does not export read-module-body for syntax"
                               _path10993_
                               _pre11077_)))))
                   (let ((_path-id11138_
                          (gx#core-module-path->namespace _path10993_)))
                     (let ((_pkg-id11140_
                            (if _pkg11078_
                                (string-append _pkg11078_ '"/" _path-id11138_)
                                _path-id11138_)))
                       (let ((_module-id11142_ (string->symbol _pkg-id11140_)))
                         (let ((_module-ns11147_
                                (let ((_$e11144_ _ns11079_))
                                  (if _$e11144_ _$e11144_ _pkg-id11140_))))
                           (let ((_body11150_
                                  (call-with-parameters
                                   (lambda ()
                                     (_read-module-body11136_ _inp11076_))
                                   gx#current-module-reader-path
                                   _path10993_
                                   gx#current-module-reader-args
                                   _args11080_)))
                             (let ()
                               (values _prelude11082_
                                       _module-id11142_
                                       _module-ns11147_
                                       _body11150_))))))))))))
        (let ((_string-e10996_
               (lambda (_obj11073_ _what11074_)
                 (if (string? _obj11073_)
                     _obj11073_
                     (if (symbol? _obj11073_)
                         (symbol->string _obj11073_)
                         (gx#raise-syntax-error
                          '#f
                          (string-append '"Illegal module " _what11074_)
                          _path10993_
                          _obj11073_))))))
          (let ((_read-lang-args10997_
                 (lambda (_inp11028_ _args11029_)
                   (let ((_args1103011038_ _args11029_))
                     (let ((_E1103311042_
                            (lambda ()
                              (error '"No clause matching" _args1103011038_))))
                       (let ((_else1103211046_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Illegal #lang arguments; missing prelude"
                                 _path10993_))))
                         (let ((_K1103411061_
                                (lambda (_args11049_ _prelude11050_)
                                  (let ((_pkg11052_
                                         (pgetq 'package: _args11049_)))
                                    (let ((_pkg11054_
                                           (if _pkg11052_
                                               (_string-e10996_
                                                _pkg11052_
                                                '"package")
                                               '#f)))
                                      (let ((_ns11056_
                                             (pgetq 'namespace: _args11049_)))
                                        (let ((_ns11058_
                                               (if _ns11056_
                                                   (_string-e10996_
                                                    _ns11056_
                                                    '"namespace")
                                                   '#f)))
                                          (let ()
                                            (_read-body10995_
                                             _inp11028_
                                             _prelude11050_
                                             _pkg11054_
                                             _ns11058_
                                             _args11049_)))))))))
                           (if (##pair? _args1103011038_)
                               (let ((_hd1103511064_ (##car _args1103011038_))
                                     (_tl1103611066_ (##cdr _args1103011038_)))
                                 (let ((_prelude11069_ _hd1103511064_))
                                   (let ((_args11071_ _tl1103611066_))
                                     (_K1103411061_
                                      _args11071_
                                      _prelude11069_))))
                               (_else1103211046_)))))))))
            (let ((_read-lang10998_
                   (lambda (_inp11003_)
                     (let ((_head11005_ (read-line _inp11003_)))
                       (let ((_$e11007_ (string-index _head11005_ '#\space)))
                         (if _$e11007_
                             ((lambda (_ix11010_)
                                (let ((_lang11012_
                                       (substring _head11005_ '0 _ix11010_)))
                                  (if (equal? _lang11012_ '"#lang")
                                      (let ((_rest11014_
                                             (substring
                                              _head11005_
                                              (fx+ _ix11010_ '1)
                                              (string-length _head11005_))))
                                        (let ((_args11025_
                                               (with-catch
                                                (lambda (_g1101511017_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Illegal #lang arguments"
                                                   _path10993_
                                                   _g1101511017_))
                                                (lambda ()
                                                  (call-with-input-string
                                                   _rest11014_
                                                   (lambda (_g1102011022_)
                                                     (read-all
                                                      _g1102011022_
                                                      read)))))))
                                          (let ()
                                            (_read-lang-args10997_
                                             _inp11003_
                                             _args11025_))))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Illegal module syntax"
                                       _path10993_))))
                              _$e11007_)
                             (gx#raise-syntax-error
                              '#f
                              '"Illegal module syntax"
                              _path10993_)))))))
              (let ((_read-e10999_
                     (lambda (_inp11001_)
                       (if (eq? (peek-char _inp11001_) '#\#)
                           (_read-lang10998_ _inp11001_)
                           (gx#raise-syntax-error
                            '#f
                            '"Illegal module syntax"
                            _path10993_)))))
                (call-with-input-file _path10993_ _read-e10999_))))))))
  (define gx#core-module-path->namespace
    (lambda (_path10991_)
      (path-strip-extension (path-strip-directory _path10991_))))
  (define gx#core-module-path->id
    (lambda (_path10989_)
      (string->symbol (gx#core-module-path->namespace _path10989_))))
  (begin
    (define gx#core-resolve-module-path__opt-lambda10966
      (lambda (_stx-path10968_ _rel10969_)
        (let ((_path10971_ (gx#stx-e _stx-path10968_)))
          (let ((_path10973_
                 (if (string-empty? (path-extension _path10971_))
                     (string-append _path10971_ '".ss")
                     _path10971_)))
            (let ()
              (gx#core-resolve-path__opt-lambda4109
               _path10973_
               (let ((_$e10976_ (gx#stx-source _stx-path10968_)))
                 (if _$e10976_ _$e10976_ _rel10969_))))))))
    (begin
      (define gx#core-resolve-module-path__0
        (lambda (_stx-path10982_)
          (let ((_rel10984_ '#f))
            (gx#core-resolve-module-path__opt-lambda10966
             _stx-path10982_
             _rel10984_))))
      (define gx#core-resolve-module-path
        (lambda _g11519_
          (let ((_g11518_ (length _g11519_)))
            (cond ((fx= _g11518_ 1)
                   (apply gx#core-resolve-module-path__0 _g11519_))
                  ((fx= _g11518_ 2)
                   (apply gx#core-resolve-module-path__opt-lambda10966
                          _g11519_))
                  (else (error "No clause matching arguments" _g11519_))))))))
  (define gx#core-resolve-library-module-path
    (lambda (_libpath10908_)
      (let ((_spath10910_ (symbol->string (gx#stx-e _libpath10908_))))
        (let ((_spath10912_
               (substring _spath10910_ '1 (string-length _spath10910_))))
          (let ((_ext10914_ (path-extension _spath10912_)))
            (let ((_ssi10916_
                   (if (string-empty? _ext10914_)
                       (string-append _spath10912_ '".ssi")
                       (string-append
                        (path-strip-extension _spath10912_)
                        '".ssi"))))
              (let ((_src10918_
                     (if (string-empty? _ext10914_)
                         (string-append _spath10912_ '".ss")
                         _spath10912_)))
                (let ()
                  ((letrec ((_lp10921_
                             (lambda (_rest10923_)
                               (let ((_rest1092410933_ _rest10923_))
                                 (let ((_E1092710937_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _rest1092410933_))))
                                   (let ((_try-match1092610945_
                                          (lambda ()
                                            (let ((_K1092810942_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Cannot find library module"
                                                      _libpath10908_))))
                                              (if (##null? _rest1092410933_)
                                                  (_K1092810942_)
                                                  (_E1092710937_))))))
                                     (let ((_K1092910955_
                                            (lambda (_rest10948_ _dir10949_)
                                              (let ((_compiled-path10951_
                                                     (path-expand
                                                      _ssi10916_
                                                      _dir10949_)))
                                                (if (file-exists?
                                                     _compiled-path10951_)
                                                    (path-normalize
                                                     _compiled-path10951_)
                                                    (let ((_src-path10953_
                                                           (path-expand
                                                            _src10918_
                                                            _dir10949_)))
                                                      (if (file-exists?
                                                           _src-path10953_)
                                                          (path-normalize
                                                           _src-path10953_)
                                                          (_lp10921_
                                                           _rest10948_))))))))
                                       (if (##pair? _rest1092410933_)
                                           (let ((_hd1093010958_
                                                  (##car _rest1092410933_))
                                                 (_tl1093110960_
                                                  (##cdr _rest1092410933_)))
                                             (let ((_dir10963_ _hd1093010958_))
                                               (let ((_rest10965_
                                                      _tl1093110960_))
                                                 (_K1092910955_
                                                  _rest10965_
                                                  _dir10963_))))
                                           (_try-match1092610945_)))))))))
                     _lp10921_)
                   (gx#current-expander-module-library-path))))))))))
  (define gx#core-library-module-path?
    (lambda (_stx10906_) (gx#core-special-module-path? _stx10906_ '#\:)))
  (define gx#core-special-module-path?
    (lambda (_stx10901_ _char10902_)
      (if (gx#identifier? _stx10901_)
          (if (interned-symbol? (gx#stx-e _stx10901_))
              (let ((_str10904_ (symbol->string (gx#stx-e _stx10901_))))
                (if (fx> (string-length _str10904_) '1)
                    (eq? (string-ref _str10904_ '0) _char10902_)
                    '#f))
              '#f)
          '#f)))
  (define gx#core-bound-prelude?
    (lambda (_stx10895_)
      (gx#core-bound-identifier?__opt-lambda4199
       _stx10895_
       (lambda (_g1089610898_)
         (gx#expander-binding?__opt-lambda4230
          _g1089610898_
          gx#prelude-context?)))))
  (define gx#core-bound-module?
    (lambda (_stx10889_)
      (gx#core-bound-identifier?__opt-lambda4199
       _stx10889_
       (lambda (_g1089010892_)
         (gx#expander-binding?__opt-lambda4230
          _g1089010892_
          gx#module-context?)))))
  (define gx#core-bound-module-prelude?
    (lambda (_stx10876_)
      (let ((_module-prelude?10878_
             (lambda (_e10884_)
               (let ((_$e10886_
                      (##structure-instance-of?
                       _e10884_
                       'gx#module-context::t)))
                 (if _$e10886_
                     _$e10886_
                     (##structure-instance-of?
                      _e10884_
                      'gx#prelude-context::t))))))
        (gx#core-bound-identifier?__opt-lambda4199
         _stx10876_
         (lambda (_g1087910881_)
           (gx#expander-binding?__opt-lambda4230
            _g1087910881_
            _module-prelude?10878_))))))
  (begin
    (define gx#core-bind-import!__opt-lambda10804
      (lambda (_in10806_ _ctx10807_ _force-weak?10808_)
        (let ((_in1080910818_ _in10806_))
          (let ((_E1081110822_
                 (lambda () (error '"No clause matching" _in1080910818_))))
            (let ((_K1081210835_
                   (lambda (_weak?10825_ _phi10826_ _key10827_ _source10828_)
                     (gx#core-bind!__opt-lambda4469
                      _key10827_
                      (let ((_e10830_
                             (gx#core-resolve-module-export _source10828_)))
                        (##structure
                         gx#import-binding::t
                         (##structure-ref _e10830_ '1 gx#binding::t '#f)
                         _key10827_
                         _phi10826_
                         _e10830_
                         (##structure-ref
                          _source10828_
                          '1
                          gx#module-export::t
                          '#f)
                         (let ((_$e10832_ _force-weak?10808_))
                           (if _$e10832_ _$e10832_ _weak?10825_))))
                      gx#core-context-rebind?
                      _phi10826_
                      _ctx10807_))))
              (if (##structure-direct-instance-of?
                   _in1080910818_
                   (##type-id gx#module-import::t))
                  (let ((_e1081310838_ (##vector-ref _in1080910818_ '1)))
                    (let ((_source10841_ _e1081310838_))
                      (let ((_e1081410843_ (##vector-ref _in1080910818_ '2)))
                        (let ((_key10846_ _e1081410843_))
                          (let ((_e1081510848_
                                 (##vector-ref _in1080910818_ '3)))
                            (let ((_phi10851_ _e1081510848_))
                              (let ((_e1081610853_
                                     (##vector-ref _in1080910818_ '4)))
                                (let ((_weak?10856_ _e1081610853_))
                                  (_K1081210835_
                                   _weak?10856_
                                   _phi10851_
                                   _key10846_
                                   _source10841_)))))))))
                  (_E1081110822_)))))))
    (begin
      (define gx#core-bind-import!__0
        (lambda (_in10861_)
          (let ((_ctx10863_ (gx#current-expander-context)))
            (let ((_force-weak?10865_ '#f))
              (gx#core-bind-import!__opt-lambda10804
               _in10861_
               _ctx10863_
               _force-weak?10865_)))))
      (define gx#core-bind-import!__1
        (lambda (_in10867_ _ctx10868_)
          (let ((_force-weak?10870_ '#f))
            (gx#core-bind-import!__opt-lambda10804
             _in10867_
             _ctx10868_
             _force-weak?10870_))))
      (define gx#core-bind-import!
        (lambda _g11521_
          (let ((_g11520_ (length _g11521_)))
            (cond ((fx= _g11520_ 1) (apply gx#core-bind-import!__0 _g11521_))
                  ((fx= _g11520_ 2) (apply gx#core-bind-import!__1 _g11521_))
                  ((fx= _g11520_ 3)
                   (apply gx#core-bind-import!__opt-lambda10804 _g11521_))
                  (else (error "No clause matching arguments" _g11521_))))))))
  (begin
    (define gx#core-bind-weak-import!__opt-lambda10790
      (lambda (_in10792_ _ctx10793_)
        (gx#core-bind-import!__opt-lambda10804 _in10792_ _ctx10793_ '#t)))
    (begin
      (define gx#core-bind-weak-import!__0
        (lambda (_in10798_)
          (let ((_ctx10800_ (gx#current-expander-context)))
            (gx#core-bind-weak-import!__opt-lambda10790
             _in10798_
             _ctx10800_))))
      (define gx#core-bind-weak-import!
        (lambda _g11523_
          (let ((_g11522_ (length _g11523_)))
            (cond ((fx= _g11522_ 1)
                   (apply gx#core-bind-weak-import!__0 _g11523_))
                  ((fx= _g11522_ 2)
                   (apply gx#core-bind-weak-import!__opt-lambda10790 _g11523_))
                  (else (error "No clause matching arguments" _g11523_))))))))
  (define gx#core-resolve-module-export
    (lambda (_out10683_)
      (let ((_subst10685_
             (lambda (_key10731_)
               (let ((_key1073210740_ _key10731_))
                 (let ((_E1073510744_
                        (lambda ()
                          (error '"No clause matching" _key1073210740_))))
                   (let ((_else1073410748_ (lambda () _key10731_)))
                     (let ((_K1073610779_
                            (lambda (_mark10751_ _id10752_)
                              (let ((_mark1075310759_ _mark10751_))
                                (let ((_E1075510763_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _mark1075310759_))))
                                  (let ((_K1075610771_
                                         (lambda (_subst10766_)
                                           (let ((_$e10768_
                                                  (if _subst10766_
                                                      (table-ref
                                                       _subst10766_
                                                       _id10752_
                                                       '#f)
                                                      '#f)))
                                             (if _$e10768_
                                                 _$e10768_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal key; missing substitution"
                                                  _key10731_))))))
                                    (if (##structure-instance-of?
                                         _mark1075310759_
                                         (##type-id gx#expander-mark::t))
                                        (let ((_e1075710774_
                                               (##vector-ref
                                                _mark1075310759_
                                                '1)))
                                          (let ((_subst10777_ _e1075710774_))
                                            (_K1075610771_ _subst10777_)))
                                        (_E1075510763_))))))))
                       (if (##pair? _key1073210740_)
                           (let ((_hd1073710782_ (##car _key1073210740_))
                                 (_tl1073810784_ (##cdr _key1073210740_)))
                             (let ((_id10787_ _hd1073710782_))
                               (let ((_mark10789_ _tl1073810784_))
                                 (_K1073610779_ _mark10789_ _id10787_))))
                           (_else1073410748_)))))))))
        (let ((_out1068610696_ _out10683_))
          (let ((_E1068810700_
                 (lambda () (error '"No clause matching" _out1068610696_))))
            (let ((_K1068910707_
                   (lambda (_phi10703_ _key10704_ _ctx10705_)
                     (gx#core-context-resolve
                      (gx#core-context-shift _ctx10705_ _phi10703_)
                      (_subst10685_ _key10704_)))))
              (if (##structure-direct-instance-of?
                   _out1068610696_
                   (##type-id gx#module-export::t))
                  (let ((_e1069010710_ (##vector-ref _out1068610696_ '1)))
                    (let ((_ctx10713_ _e1069010710_))
                      (let ((_e1069110715_ (##vector-ref _out1068610696_ '2)))
                        (let ((_key10718_ _e1069110715_))
                          (let ((_e1069210720_
                                 (##vector-ref _out1068610696_ '3)))
                            (let ((_phi10723_ _e1069210720_))
                              (let ((_e1069310725_
                                     (##vector-ref _out1068610696_ '4)))
                                (let ((_e1069410728_
                                       (##vector-ref _out1068610696_ '5)))
                                  (_K1068910707_
                                   _phi10723_
                                   _key10718_
                                   _ctx10713_)))))))))
                  (_E1068810700_))))))))
  (begin
    (define gx#core-module-export->import__opt-lambda10606
      (lambda (_out10608_ _rename10609_ _dphi10610_)
        (let ((_out1061110621_ _out10608_))
          (let ((_E1061310625_
                 (lambda () (error '"No clause matching" _out1061110621_))))
            (let ((_K1061410637_
                   (lambda (_weak?10628_
                            _name10629_
                            _phi10630_
                            _key10631_
                            _ctx10632_)
                     (##structure
                      gx#module-import::t
                      _out10608_
                      (let ((_$e10634_ _rename10609_))
                        (if _$e10634_ _$e10634_ _name10629_))
                      (fx+ _phi10630_ _dphi10610_)
                      _weak?10628_))))
              (if (##structure-direct-instance-of?
                   _out1061110621_
                   (##type-id gx#module-export::t))
                  (let ((_e1061510640_ (##vector-ref _out1061110621_ '1)))
                    (let ((_ctx10643_ _e1061510640_))
                      (let ((_e1061610645_ (##vector-ref _out1061110621_ '2)))
                        (let ((_key10648_ _e1061610645_))
                          (let ((_e1061710650_
                                 (##vector-ref _out1061110621_ '3)))
                            (let ((_phi10653_ _e1061710650_))
                              (let ((_e1061810655_
                                     (##vector-ref _out1061110621_ '4)))
                                (let ((_name10658_ _e1061810655_))
                                  (let ((_e1061910660_
                                         (##vector-ref _out1061110621_ '5)))
                                    (let ((_weak?10663_ _e1061910660_))
                                      (_K1061410637_
                                       _weak?10663_
                                       _name10658_
                                       _phi10653_
                                       _key10648_
                                       _ctx10643_)))))))))))
                  (_E1061310625_)))))))
    (begin
      (define gx#core-module-export->import__0
        (lambda (_out10668_)
          (let ((_rename10670_ '#f))
            (let ((_dphi10672_ '0))
              (gx#core-module-export->import__opt-lambda10606
               _out10668_
               _rename10670_
               _dphi10672_)))))
      (define gx#core-module-export->import__1
        (lambda (_out10674_ _rename10675_)
          (let ((_dphi10677_ '0))
            (gx#core-module-export->import__opt-lambda10606
             _out10674_
             _rename10675_
             _dphi10677_))))
      (define gx#core-module-export->import
        (lambda _g11525_
          (let ((_g11524_ (length _g11525_)))
            (cond ((fx= _g11524_ 1)
                   (apply gx#core-module-export->import__0 _g11525_))
                  ((fx= _g11524_ 2)
                   (apply gx#core-module-export->import__1 _g11525_))
                  ((fx= _g11524_ 3)
                   (apply gx#core-module-export->import__opt-lambda10606
                          _g11525_))
                  (else (error "No clause matching arguments" _g11525_))))))))
  (define gx#core-expand-module%
    (lambda (_stx10536_)
      (let ((_make-context10538_
             (lambda (_id10589_)
               (let ((_super10591_ (gx#current-expander-context)))
                 (let ((_bind-id10593_ (gx#stx-e _id10589_)))
                   (let ((_mod-id10595_
                          (if (##structure-instance-of?
                               _super10591_
                               'gx#module-context::t)
                              (make-symbol
                               (##structure-ref
                                _super10591_
                                '1
                                gx#expander-context::t
                                '#f)
                               '"::"
                               _bind-id10593_)
                              _bind-id10593_)))
                     (let ((_ns10597_ (symbol->string _mod-id10595_)))
                       (let ((_path10604_
                              (if (##structure-instance-of?
                                   _super10591_
                                   'gx#module-context::t)
                                  (let ((_path10599_
                                         (##structure-ref
                                          _super10591_
                                          '7
                                          gx#module-context::t
                                          '#f)))
                                    (if (let ((_$e10601_ (pair? _path10599_)))
                                          (if _$e10601_
                                              _$e10601_
                                              (null? _path10599_)))
                                        (cons _bind-id10593_ _path10599_)
                                        (if (not _path10599_)
                                            _bind-id10593_
                                            (cons _bind-id10593_
                                                  (cons _path10599_ '())))))
                                  _bind-id10593_)))
                         (let ()
                           (let ((__obj11507
                                  (make-object gx#module-context::t '11)))
                             (begin
                               (gx#module-context:::init!
                                __obj11507
                                _mod-id10595_
                                _super10591_
                                _ns10597_
                                _path10604_)
                               __obj11507)))))))))))
        (let ((_e1053910549_ _stx10536_))
          (let ((_E1054110553_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e1053910549_))))
            (let ((_E1054010585_
                   (lambda ()
                     (if (gx#stx-pair? _e1053910549_)
                         (let ((_e1054210557_ (gx#syntax-e _e1053910549_)))
                           (let ((_hd1054310560_ (##car _e1054210557_))
                                 (_tl1054410562_ (##cdr _e1054210557_)))
                             (if (gx#stx-pair? _tl1054410562_)
                                 (let ((_e1054510565_
                                        (gx#syntax-e _tl1054410562_)))
                                   (let ((_hd1054610568_ (##car _e1054510565_))
                                         (_tl1054710570_
                                          (##cdr _e1054510565_)))
                                     (let ((_id10573_ _hd1054610568_))
                                       (let ((_body10575_ _tl1054710570_))
                                         (if (if (gx#identifier? _id10573_)
                                                 (gx#stx-list? _body10575_)
                                                 '#f)
                                             (let ((_ctx10577_
                                                    (_make-context10538_
                                                     _id10573_)))
                                               (let ((_body10579_
                                                      (gx#core-expand-module-begin
                                                       _body10575_
                                                       _ctx10577_)))
                                                 (let ((_body10581_
                                                        (gx#core-quote-syntax__1
                                                         (gx#core-cons
                                                          '%#begin
                                                          _body10579_)
                                                         (gx#stx-source
                                                          _stx10536_))))
                                                   (let ()
                                                     (begin
                                                       (##structure-set!
                                                        _ctx10577_
                                                        (make-promise
                                                         (lambda ()
                                                           (gx#eval-syntax*
                                                            _body10581_)))
                                                        '10
                                                        gx#module-context::t
                                                        '#f)
                                                       (##structure-set!
                                                        _ctx10577_
                                                        _body10581_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)
                                                       (gx#core-bind-syntax!__0
                                                        _id10573_
                                                        _ctx10577_)
                                                       (gx#core-quote-syntax__1
                                                        (gx#core-list
                                                         '%#module
                                                         (gx#core-quote-syntax__0
                                                          _id10573_)
                                                         _body10581_)
                                                        (gx#stx-source
                                                         _stx10536_)))))))
                                             (_E1054110553_))))))
                                 (_E1054110553_))))
                         (_E1054110553_)))))
              (let () (_E1054010585_))))))))
  (define gx#core-expand-module-begin
    (lambda (_body10502_ _ctx10503_)
      (call-with-parameters
       (lambda ()
         (begin
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let ((_stx10506_
                  (gx#core-expand-head (cons '%%begin-module _body10502_))))
             (let ((_e1050710514_ _stx10506_))
               (let ((_E1050910518_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module body expansion"
                         _stx10506_))))
                 (let ((_E1050810532_
                        (lambda ()
                          (if (gx#stx-pair? _e1050710514_)
                              (let ((_e1051010522_
                                     (gx#syntax-e _e1050710514_)))
                                (let ((_hd1051110525_ (##car _e1051010522_))
                                      (_tl1051210527_ (##cdr _e1051010522_)))
                                  (if (if (gx#identifier? _hd1051110525_)
                                          (gx#core-identifier=?
                                           _hd1051110525_
                                           '%#begin-module)
                                          '#f)
                                      (let ((_body10530_ _tl1051210527_))
                                        (if '#t
                                            (if (gx#sealed-syntax? _stx10506_)
                                                _body10530_
                                                (gx#core-expand-module-body
                                                 _body10530_))
                                            (_E1050910518_)))
                                      (_E1050910518_))))
                              (_E1050910518_)))))
                   (let () (_E1050810532_))))))))
       gx#current-expander-context
       _ctx10503_
       gx#current-expander-phi
       '0)))
  (define gx#core-expand-module-body
    (lambda (_body10298_)
      (let ((_expand-special10300_
             (lambda (_hd10429_ _K10430_ _rest10431_ _r10432_)
               (let ((_e1043310450_ _hd10429_))
                 (let ((_E1044510454_
                        (lambda ()
                          (_K10430_
                           _rest10431_
                           (cons (gx#core-expand-top _hd10429_) _r10432_)))))
                   (let ((_E1043510466_
                          (lambda ()
                            (if (gx#stx-pair? _e1043310450_)
                                (let ((_e1044610458_
                                       (gx#syntax-e _e1043310450_)))
                                  (let ((_hd1044710461_ (##car _e1044610458_))
                                        (_tl1044810463_ (##cdr _e1044610458_)))
                                    (if (if (gx#identifier? _hd1044710461_)
                                            (gx#core-identifier=?
                                             _hd1044710461_
                                             '%#export)
                                            '#f)
                                        (if '#t
                                            (_K10430_
                                             _rest10431_
                                             (cons _hd10429_ _r10432_))
                                            (_E1044510454_))
                                        (_E1044510454_))))
                                (_E1044510454_)))))
                     (let ((_E1043410498_
                            (lambda ()
                              (if (gx#stx-pair? _e1043310450_)
                                  (let ((_e1043610470_
                                         (gx#syntax-e _e1043310450_)))
                                    (let ((_hd1043710473_
                                           (##car _e1043610470_))
                                          (_tl1043810475_
                                           (##cdr _e1043610470_)))
                                      (if (if (gx#identifier? _hd1043710473_)
                                              (gx#core-identifier=?
                                               _hd1043710473_
                                               '%#define-values)
                                              '#f)
                                          (if (gx#stx-pair? _tl1043810475_)
                                              (let ((_e1043910478_
                                                     (gx#syntax-e
                                                      _tl1043810475_)))
                                                (let ((_hd1044010481_
                                                       (##car _e1043910478_))
                                                      (_tl1044110483_
                                                       (##cdr _e1043910478_)))
                                                  (let ((_hd-bind10486_
                                                         _hd1044010481_))
                                                    (if (gx#stx-pair?
                                                         _tl1044110483_)
                                                        (let ((_e1044210488_
                                                               (gx#syntax-e
                                                                _tl1044110483_)))
                                                          (let ((_hd1044310491_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1044210488_))
                        (_tl1044410493_ (##cdr _e1044210488_)))
                    (let ((_expr10496_ _hd1044310491_))
                      (if (gx#stx-null? _tl1044410493_)
                          (if (gx#core-bind-values? _hd-bind10486_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind10486_)
                                (_K10430_
                                 _rest10431_
                                 (cons _hd10429_ _r10432_)))
                              (_E1043510466_))
                          (_E1043510466_)))))
                (_E1043510466_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1043510466_))
                                          (_E1043510466_))))
                                  (_E1043510466_)))))
                       (let () (_E1043410498_)))))))))
        (let ((_expand-body10301_
               (lambda (_rbody10303_)
                 ((letrec ((_lp10305_
                            (lambda (_rest10307_ _body10308_)
                              (let ((_rest1030910317_ _rest10307_))
                                (let ((_E1031210321_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _rest1030910317_))))
                                  (let ((_else1031110325_
                                         (lambda () _body10308_)))
                                    (let ((_K1031310417_
                                           (lambda (_rest10328_ _hd10329_)
                                             (let ((_e1033010351_ _hd10329_))
                                               (let ((_E1034610355_
                                                      (lambda ()
                                                        (_lp10305_
                                                         _rest10328_
                                                         (cons (gx#core-expand-expression
                                                                _hd10329_)
                                                               _body10308_)))))
                                                 (let ((_E1034210369_
                                                        (lambda ()
                                                          (if (gx#stx-pair?
                                                               _e1033010351_)
                                                              (let ((_e1034710359_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _e1033010351_)))
                        (let ((_hd1034810362_ (##car _e1034710359_))
                              (_tl1034910364_ (##cdr _e1034710359_)))
                          (let ((_form10367_ _hd1034810362_))
                            (if (gx#core-bound-identifier?__opt-lambda4199
                                 _form10367_
                                 gx#special-form-binding?)
                                (_lp10305_
                                 _rest10328_
                                 (cons _hd10329_ _body10308_))
                                (_E1034610355_)))))
                      (_E1034610355_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_E1033210381_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e1033010351_)
                        (let ((_e1034310373_ (gx#syntax-e _e1033010351_)))
                          (let ((_hd1034410376_ (##car _e1034310373_))
                                (_tl1034510378_ (##cdr _e1034310373_)))
                            (if (if (gx#identifier? _hd1034410376_)
                                    (gx#core-identifier=?
                                     _hd1034410376_
                                     '%#export)
                                    '#f)
                                (if '#t
                                    (_lp10305_
                                     _rest10328_
                                     (cons (gx#core-expand-export%__0
                                            _hd10329_)
                                           _body10308_))
                                    (_E1034210369_))
                                (_E1034210369_))))
                        (_E1034210369_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_E1033110413_
                                                            (lambda ()
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e1033010351_)
                          (let ((_e1033310385_ (gx#syntax-e _e1033010351_)))
                            (let ((_hd1033410388_ (##car _e1033310385_))
                                  (_tl1033510390_ (##cdr _e1033310385_)))
                              (if (if (gx#identifier? _hd1033410388_)
                                      (gx#core-identifier=?
                                       _hd1033410388_
                                       '%#define-values)
                                      '#f)
                                  (if (gx#stx-pair? _tl1033510390_)
                                      (let ((_e1033610393_
                                             (gx#syntax-e _tl1033510390_)))
                                        (let ((_hd1033710396_
                                               (##car _e1033610393_))
                                              (_tl1033810398_
                                               (##cdr _e1033610393_)))
                                          (let ((_hd-bind10401_
                                                 _hd1033710396_))
                                            (if (gx#stx-pair? _tl1033810398_)
                                                (let ((_e1033910403_
                                                       (gx#syntax-e
                                                        _tl1033810398_)))
                                                  (let ((_hd1034010406_
                                                         (##car _e1033910403_))
                                                        (_tl1034110408_
                                                         (##cdr _e1033910403_)))
                                                    (let ((_expr10411_
                                                           _hd1034010406_))
                                                      (if (gx#stx-null?
                                                           _tl1034110408_)
                                                          (if '#t
                                                              (_lp10305_
                                                               _rest10328_
                                                               (cons (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#core-list
                               '%#define-values
                               (gx#core-quote-bind-values _hd-bind10401_)
                               (gx#core-expand-expression _expr10411_))
                              (gx#stx-source _hd10329_))
                             _body10308_))
                      (_E1033210381_))
                  (_E1033210381_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1033210381_)))))
                                      (_E1033210381_))
                                  (_E1033210381_))))
                          (_E1033210381_)))))
               (let () (_E1033110413_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (##pair? _rest1030910317_)
                                          (let ((_hd1031410420_
                                                 (##car _rest1030910317_))
                                                (_tl1031510422_
                                                 (##cdr _rest1030910317_)))
                                            (let ((_hd10425_ _hd1031410420_))
                                              (let ((_rest10427_
                                                     _tl1031510422_))
                                                (_K1031310417_
                                                 _rest10427_
                                                 _hd10425_))))
                                          (_else1031110325_)))))))))
                    _lp10305_)
                  _rbody10303_
                  '()))))
          (_expand-body10301_
           (gx#core-expand-block__opt-lambda5247
            (cons '%#begin-module _body10298_)
            _expand-special10300_
            '#f
            values))))))
  (define gx#core-expand-import/export
    (lambda (_stx10141_
             _expanded?10142_
             _method10143_
             _current-phi10144_
             _expand110145_)
      (letrec ((_K10147_
                (lambda (_rest10265_ _r10266_)
                  (let ((_e1026710274_ _rest10265_))
                    (let ((_E1026910278_ (lambda () _r10266_)))
                      (let ((_E1026810294_
                             (lambda ()
                               (if (gx#stx-pair? _e1026710274_)
                                   (let ((_e1027010282_
                                          (gx#syntax-e _e1026710274_)))
                                     (let ((_hd1027110285_
                                            (##car _e1027010282_))
                                           (_tl1027210287_
                                            (##cdr _e1027010282_)))
                                       (let ((_hd10290_ _hd1027110285_))
                                         (let ((_rest10292_ _tl1027210287_))
                                           (if '#t
                                               (_step10148_
                                                _hd10290_
                                                _rest10292_
                                                _r10266_)
                                               (_E1026910278_))))))
                                   (_E1026910278_)))))
                        (let () (_E1026810294_)))))))
               (_step10148_
                (lambda (_hd10179_ _rest10180_ _r10181_)
                  (let ((_e1018210200_ _hd10179_))
                    (let ((_E1019510204_
                           (lambda ()
                             (if (_expanded?10142_ (gx#stx-e _hd10179_))
                                 (_K10147_
                                  _rest10180_
                                  (cons (gx#stx-e _hd10179_) _r10181_))
                                 (_expand110145_
                                  _hd10179_
                                  _K10147_
                                  _rest10180_
                                  _r10181_)))))
                      (let ((_E1019110220_
                             (lambda ()
                               (if (gx#stx-pair? _e1018210200_)
                                   (let ((_e1019610208_
                                          (gx#syntax-e _e1018210200_)))
                                     (let ((_hd1019710211_
                                            (##car _e1019610208_))
                                           (_tl1019810213_
                                            (##cdr _e1019610208_)))
                                       (let ((_macro10216_ _hd1019710211_))
                                         (let ((_body10218_ _tl1019810213_))
                                           (if (gx#core-bound-identifier?__opt-lambda4199
                                                _macro10216_
                                                gx#syntax-binding?)
                                               (_K10147_
                                                (cons (gx#core-apply-expander__opt-lambda4965
                                                       (gx#syntax-local-e__0
                                                        _macro10216_)
                                                       _hd10179_
                                                       _method10143_)
                                                      _rest10180_)
                                                _r10181_)
                                               (_E1019510204_))))))
                                   (_E1019510204_)))))
                        (let ((_E1018410234_
                               (lambda ()
                                 (if (gx#stx-pair? _e1018210200_)
                                     (let ((_e1019210224_
                                            (gx#syntax-e _e1018210200_)))
                                       (let ((_hd1019310227_
                                              (##car _e1019210224_))
                                             (_tl1019410229_
                                              (##cdr _e1019210224_)))
                                         (if (eq? (gx#stx-e _hd1019310227_)
                                                  'begin:)
                                             (let ((_body10232_
                                                    _tl1019410229_))
                                               (if '#t
                                                   (_K10147_
                                                    (gx#stx-foldr
                                                     cons
                                                     _rest10180_
                                                     _body10232_)
                                                    _r10181_)
                                                   (_E1019110220_)))
                                             (_E1019110220_))))
                                     (_E1019110220_)))))
                          (let ((_E1018310261_
                                 (lambda ()
                                   (if (gx#stx-pair? _e1018210200_)
                                       (let ((_e1018510238_
                                              (gx#syntax-e _e1018210200_)))
                                         (let ((_hd1018610241_
                                                (##car _e1018510238_))
                                               (_tl1018710243_
                                                (##cdr _e1018510238_)))
                                           (if (eq? (gx#stx-e _hd1018610241_)
                                                    'phi:)
                                               (if (gx#stx-pair?
                                                    _tl1018710243_)
                                                   (let ((_e1018810246_
                                                          (gx#syntax-e
                                                           _tl1018710243_)))
                                                     (let ((_hd1018910249_
                                                            (##car _e1018810246_))
                                                           (_tl1019010251_
                                                            (##cdr _e1018810246_)))
                                                       (let ((_dphi10254_
                                                              _hd1018910249_))
                                                         (let ((_body10256_
                                                                _tl1019010251_))
                                                           (if (gx#stx-fixnum?
                                                                _dphi10254_)
                                                               (let ((_rbody10259_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (call-with-parameters
                               (lambda () (_K10147_ _body10256_ '()))
                               _current-phi10144_
                               (fx+ (gx#stx-e _dphi10254_)
                                    (_current-phi10144_)))))
                         (_K10147_
                          _rest10180_
                          (foldr1 cons _r10181_ _rbody10259_)))
                       (_E1018410234_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1018410234_))
                                               (_E1018410234_))))
                                       (_E1018410234_)))))
                            (let () (_E1018310261_))))))))))
        (let ((_e1014910156_ _stx10141_))
          (let ((_E1015110160_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e1014910156_))))
            (let ((_E1015010175_
                   (lambda ()
                     (if (gx#stx-pair? _e1014910156_)
                         (let ((_e1015210164_ (gx#syntax-e _e1014910156_)))
                           (let ((_hd1015310167_ (##car _e1015210164_))
                                 (_tl1015410169_ (##cdr _e1015210164_)))
                             (let ((_body10172_ _tl1015410169_))
                               (if '#t
                                   (if (_current-phi10144_)
                                       (_K10147_ _body10172_ '())
                                       (call-with-parameters
                                        (lambda () (_K10147_ _body10172_ '()))
                                        _current-phi10144_
                                        (gx#current-expander-phi)))
                                   (_E1015110160_)))))
                         (_E1015110160_)))))
              (let () (_E1015010175_))))))))
  (begin
    (define gx#core-expand-import%__opt-lambda9678
      (lambda (_stx9680_ _internal-expand?9681_)
        (let ((_import19684_
               (lambda (_ctx10115_ _K10116_ _rest10117_ _r10118_)
                 (let ((_dphi10120_
                        (fx- (gx#current-import-expander-phi)
                             (gx#current-expander-phi))))
                   (_K10116_
                    _rest10117_
                    (cons (##structure
                           gx#import-set::t
                           _ctx10115_
                           _dphi10120_
                           (map (lambda (_g1012110123_)
                                  (gx#core-module-export->import__opt-lambda10606
                                   _g1012110123_
                                   '#f
                                   _dphi10120_))
                                (##structure-ref
                                 _ctx10115_
                                 '9
                                 gx#module-context::t
                                 '#f)))
                          _r10118_))))))
          (let ((_import-spec?9685_
                 (lambda (_hd10072_)
                   (let ((_e1007310083_ _hd10072_))
                     (let ((_E1007510087_ (lambda () '#f)))
                       (let ((_E1007410111_
                              (lambda ()
                                (if (gx#stx-pair? _e1007310083_)
                                    (let ((_e1007610091_
                                           (gx#syntax-e _e1007310083_)))
                                      (let ((_hd1007710094_
                                             (##car _e1007610091_))
                                            (_tl1007810096_
                                             (##cdr _e1007610091_)))
                                        (if (eq? (gx#stx-e _hd1007710094_)
                                                 'spec:)
                                            (if (gx#stx-pair? _tl1007810096_)
                                                (let ((_e1007910099_
                                                       (gx#syntax-e
                                                        _tl1007810096_)))
                                                  (let ((_hd1008010102_
                                                         (##car _e1007910099_))
                                                        (_tl1008110104_
                                                         (##cdr _e1007910099_)))
                                                    (let ((_spath10107_
                                                           _hd1008010102_))
                                                      (let ((_specs10109_
                                                             _tl1008110104_))
                                                        (if '#t
                                                            '#t
                                                            (_E1007510087_))))))
                                                (_E1007510087_))
                                            (_E1007510087_))))
                                    (_E1007510087_)))))
                         (let () (_E1007410111_))))))))
            (let ((_import-submodule?9686_
                   (lambda (_hd10029_)
                     (let ((_e1003010040_ _hd10029_))
                       (let ((_E1003210044_ (lambda () '#f)))
                         (let ((_E1003110068_
                                (lambda ()
                                  (if (gx#stx-pair? _e1003010040_)
                                      (let ((_e1003310048_
                                             (gx#syntax-e _e1003010040_)))
                                        (let ((_hd1003410051_
                                               (##car _e1003310048_))
                                              (_tl1003510053_
                                               (##cdr _e1003310048_)))
                                          (if (eq? (gx#stx-e _hd1003410051_)
                                                   'in:)
                                              (if (gx#stx-pair? _tl1003510053_)
                                                  (let ((_e1003610056_
                                                         (gx#syntax-e
                                                          _tl1003510053_)))
                                                    (let ((_hd1003710059_
                                                           (##car _e1003610056_))
                                                          (_tl1003810061_
                                                           (##cdr _e1003610056_)))
                                                      (let ((_top10064_
                                                             _hd1003710059_))
                                                        (let ((_sub10066_
                                                               _tl1003810061_))
                                                          (if '#t
                                                              '#t
                                                              (_E1003210044_))))))
                                                  (_E1003210044_))
                                              (_E1003210044_))))
                                      (_E1003210044_)))))
                           (let () (_E1003110068_))))))))
              (let ((_import-runtime?9687_
                     (lambda (_hd9986_)
                       (let ((_e99879997_ _hd9986_))
                         (let ((_E998910001_ (lambda () '#f)))
                           (let ((_E998810025_
                                  (lambda ()
                                    (if (gx#stx-pair? _e99879997_)
                                        (let ((_e999010005_
                                               (gx#syntax-e _e99879997_)))
                                          (let ((_hd999110008_
                                                 (##car _e999010005_))
                                                (_tl999210010_
                                                 (##cdr _e999010005_)))
                                            (if (eq? (gx#stx-e _hd999110008_)
                                                     'runtime:)
                                                (if (gx#stx-pair?
                                                     _tl999210010_)
                                                    (let ((_e999310013_
                                                           (gx#syntax-e
                                                            _tl999210010_)))
                                                      (let ((_hd999410016_
                                                             (##car _e999310013_))
                                                            (_tl999510018_
                                                             (##cdr _e999310013_)))
                                                        (let ((_top10021_
                                                               _hd999410016_))
                                                          (let ((_spath10023_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl999510018_))
                    (if '#t '#t (_E998910001_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E998910001_))
                                                (_E998910001_))))
                                        (_E998910001_)))))
                             (let () (_E998810025_))))))))
                (let ((_import-spec-source9691_
                       (lambda (_spath9757_)
                         (gx#core-import-nested-module
                          _spath9757_
                          _stx9680_))))
                  (let ((_import!9692_
                         (lambda (_rbody9705_)
                           (let ((_current-ctx9707_
                                  (gx#current-expander-context)))
                             (let ((_deps9708_ (make-hash-table-eq)))
                               (let ((_bind!9709_
                                      (lambda (_hd9755_)
                                        (begin
                                          (gx#core-bind-import!__1
                                           _hd9755_
                                           _current-ctx9707_)
                                          (if (if (fxpositive?
                                                   (##structure-ref
                                                    _hd9755_
                                                    '3
                                                    gx#module-import::t
                                                    '#f))
                                                  (fxzero? (##structure-ref
                                                            (##structure-ref
                                                             _hd9755_
                                                             '1
                                                             gx#module-import::t
                                                             '#f)
                                                            '3
                                                            gx#module-export::t
                                                            '#f))
                                                  '#f)
                                              (table-set!
                                               _deps9708_
                                               (##structure-ref
                                                (##structure-ref
                                                 _hd9755_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)
                                                '1
                                                gx#module-export::t
                                                '#f)
                                               '#t)
                                              '#!void)))))
                                 (let ((_fold-e9710_
                                        (lambda (_in9752_ _r9753_)
                                          (if (##structure-direct-instance-of?
                                               _in9752_
                                               'gx#module-import::t)
                                              (cons _in9752_ _r9753_)
                                              (if (##structure-direct-instance-of?
                                                   _in9752_
                                                   'gx#import-set::t)
                                                  (foldl1 cons
                                                          _r9753_
                                                          (##structure-ref
                                                           _in9752_
                                                           '3
                                                           gx#import-set::t
                                                           '#f))
                                                  _r9753_)))))
                                   ((letrec ((_lp9712_
                                              (lambda (_rest9714_ _body9715_)
                                                (let ((_rest97169724_
                                                       _rest9714_))
                                                  (let ((_E97199728_
                                                         (lambda ()
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _rest97169724_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_else97189734_
                                                           (lambda ()
                                                             (begin
                                                               (if (##structure-instance-of?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _current-ctx9707_
                            'gx#module-context::t)
                           (##structure-set!
                            _current-ctx9707_
                            (foldl1 _fold-e9710_
                                    (##structure-ref
                                     _current-ctx9707_
                                     '8
                                     gx#module-context::t
                                     '#f)
                                    _body9715_)
                            '8
                            gx#module-context::t
                            '#f)
                           '#!void)
                       (table-for-each
                        (lambda (_ctx9732_ _g11526_)
                          (gx#eval-module _ctx9732_))
                        _deps9708_)
                       _body9715_))))
              (let ((_K97209740_
                     (lambda (_rest9737_ _hd9738_)
                       (begin
                         (if (##structure-direct-instance-of?
                              _hd9738_
                              'gx#module-import::t)
                             (_bind!9709_ _hd9738_)
                             (if (##structure-direct-instance-of?
                                  _hd9738_
                                  'gx#import-set::t)
                                 (for-each
                                  _bind!9709_
                                  (##structure-ref
                                   _hd9738_
                                   '3
                                   gx#import-set::t
                                   '#f))
                                 (if (##structure-instance-of?
                                      _hd9738_
                                      'gx#module-context::t)
                                     '#!void
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Unexpected import"
                                      _stx9680_
                                      _hd9738_))))
                         (_lp9712_ _rest9737_ (cons _hd9738_ _body9715_))))))
                (if (##pair? _rest97169724_)
                    (let ((_hd97219743_ (##car _rest97169724_))
                          (_tl97229745_ (##cdr _rest97169724_)))
                      (let ((_hd9748_ _hd97219743_))
                        (let ((_rest9750_ _tl97229745_))
                          (_K97209740_ _rest9750_ _hd9748_))))
                    (_else97189734_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _lp9712_)
                                    _rbody9705_
                                    '()))))))))
                    (let ((_expanded-import?9693_
                           (lambda (_e9697_)
                             (let ((_$e9699_
                                    (##structure-direct-instance-of?
                                     _e9697_
                                     'gx#import-set::t)))
                               (if _$e9699_
                                   _$e9699_
                                   (let ((_$e9702_
                                          (##structure-direct-instance-of?
                                           _e9697_
                                           'gx#module-import::t)))
                                     (if _$e9702_
                                         _$e9702_
                                         (##structure-instance-of?
                                          _e9697_
                                          'gx#module-context::t))))))))
                      (let ((_import-submodule9688_
                             (lambda (_hd9953_ _K9954_ _rest9955_ _r9956_)
                               (let ((_e99579964_ _hd9953_))
                                 (let ((_E99599968_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _e99579964_))))
                                   (let ((_E99589982_
                                          (lambda ()
                                            (if (gx#stx-pair? _e99579964_)
                                                (let ((_e99609972_
                                                       (gx#syntax-e
                                                        _e99579964_)))
                                                  (let ((_hd99619975_
                                                         (##car _e99609972_))
                                                        (_tl99629977_
                                                         (##cdr _e99609972_)))
                                                    (let ((_spath9980_
                                                           _tl99629977_))
                                                      (if '#t
                                                          (_import19684_
                                                           (_import-spec-source9691_
                                                            _spath9980_)
                                                           _K9954_
                                                           _rest9955_
                                                           _r9956_)
                                                          (_E99599968_)))))
                                                (_E99599968_)))))
                                     (let () (_E99589982_))))))))
                        (let ((_import-runtime9689_
                               (lambda (_hd9920_ _K9921_ _rest9922_ _r9923_)
                                 (let ((_e99249931_ _hd9920_))
                                   (let ((_E99269935_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _e99249931_))))
                                     (let ((_E99259949_
                                            (lambda ()
                                              (if (gx#stx-pair? _e99249931_)
                                                  (let ((_e99279939_
                                                         (gx#syntax-e
                                                          _e99249931_)))
                                                    (let ((_hd99289942_
                                                           (##car _e99279939_))
                                                          (_tl99299944_
                                                           (##cdr _e99279939_)))
                                                      (let ((_spath9947_
                                                             _tl99299944_))
                                                        (if '#t
                                                            (_K9921_ _rest9922_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (_import-spec-source9691_ _spath9947_)
                                   _r9923_))
                    (_E99269935_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E99269935_)))))
                                       (let () (_E99259949_))))))))
                          (let ((_import-spec9690_
                                 (lambda (_hd9759_ _K9760_ _rest9761_ _r9762_)
                                   (let ((_e97639780_ _hd9759_))
                                     (let ((_E97729784_
                                            (lambda ()
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _e97639780_))))
                                       (let ((_E97659894_
                                              (lambda ()
                                                (if (gx#stx-pair? _e97639780_)
                                                    (let ((_e97739788_
                                                           (gx#syntax-e
                                                            _e97639780_)))
                                                      (let ((_hd97749791_
                                                             (##car _e97739788_))
                                                            (_tl97759793_
                                                             (##cdr _e97739788_)))
                                                        (if (gx#stx-pair?
                                                             _tl97759793_)
                                                            (let ((_e97769796_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl97759793_)))
                      (let ((_hd97779799_ (##car _e97769796_))
                            (_tl97789801_ (##cdr _e97769796_)))
                        (let ((_path9804_ _hd97779799_))
                          (let ((_specs9806_ _tl97789801_))
                            (if '#t
                                (let ((_src-ctx9808_
                                       (_import-spec-source9691_ _path9804_))
                                      (_exports9809_ (make-table))
                                      (_specs9810_
                                       (gx#syntax->list _specs9806_)))
                                  (begin
                                    (for-each
                                     (lambda (_out9812_)
                                       (table-set!
                                        _exports9809_
                                        (cons (##structure-ref
                                               _out9812_
                                               '3
                                               gx#module-export::t
                                               '#f)
                                              (##structure-ref
                                               _out9812_
                                               '4
                                               gx#module-export::t
                                               '#f))
                                        _out9812_))
                                     (##structure-ref
                                      _src-ctx9808_
                                      '9
                                      gx#module-context::t
                                      '#f))
                                    (_K9760_ _rest9761_
                                             (foldl1 (lambda (_spec9814_
                                                              _r9815_)
                                                       (let ((_e98169832_
                                                              _spec9814_))
                                                         (let ((_E98189836_
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _e98169832_))))
                   (let ((_E98179890_
                          (lambda ()
                            (if (gx#stx-pair? _e98169832_)
                                (let ((_e98199840_ (gx#syntax-e _e98169832_)))
                                  (let ((_hd98209843_ (##car _e98199840_))
                                        (_tl98219845_ (##cdr _e98199840_)))
                                    (let ((_phi9848_ _hd98209843_))
                                      (if (gx#stx-pair? _tl98219845_)
                                          (let ((_e98229850_
                                                 (gx#syntax-e _tl98219845_)))
                                            (let ((_hd98239853_
                                                   (##car _e98229850_))
                                                  (_tl98249855_
                                                   (##cdr _e98229850_)))
                                              (let ((_name9858_ _hd98239853_))
                                                (if (gx#stx-pair? _tl98249855_)
                                                    (let ((_e98259860_
                                                           (gx#syntax-e
                                                            _tl98249855_)))
                                                      (let ((_hd98269863_
                                                             (##car _e98259860_))
                                                            (_tl98279865_
                                                             (##cdr _e98259860_)))
                                                        (let ((_src-phi9868_
                                                               _hd98269863_))
                                                          (if (gx#stx-pair?
                                                               _tl98279865_)
                                                              (let ((_e98289870_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl98279865_)))
                        (let ((_hd98299873_ (##car _e98289870_))
                              (_tl98309875_ (##cdr _e98289870_)))
                          (let ((_src-name9878_ _hd98299873_))
                            (if (gx#stx-null? _tl98309875_)
                                (if (if (gx#stx-fixnum? _src-phi9868_)
                                        (if (gx#identifier? _src-name9878_)
                                            (if (gx#stx-fixnum? _phi9848_)
                                                (gx#identifier? _name9858_)
                                                '#f)
                                            '#f)
                                        '#f)
                                    (let ((_src-phi9880_
                                           (gx#stx-e _src-phi9868_))
                                          (_src-name9881_
                                           (gx#core-identifier-key
                                            _src-name9878_))
                                          (_phi9882_ (gx#stx-e _phi9848_))
                                          (_name9883_
                                           (gx#core-identifier-key
                                            _name9858_)))
                                      (let ((_$e9885_
                                             (table-ref
                                              _exports9809_
                                              (cons _src-phi9880_
                                                    _src-name9881_)
                                              '#f)))
                                        (if _$e9885_
                                            ((lambda (_out9888_)
                                               (cons (gx#core-module-export->import__opt-lambda10606
                                                      _out9888_
                                                      _name9883_
                                                      (fx- _phi9882_
                                                           _src-phi9880_))
                                                     _r9815_))
                                             _$e9885_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; no matching export"
                                             _stx9680_
                                             _hd9759_))))
                                    (_E98189836_))
                                (_E98189836_)))))
                      (_E98189836_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E98189836_)))))
                                          (_E98189836_)))))
                                (_E98189836_)))))
                     (let () (_E98179890_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _r9762_
                                                     _specs9810_))))
                                (_E97729784_))))))
                    (_E97729784_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E97729784_)))))
                                         (let ((_E97649916_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _e97639780_)
                                                      (let ((_e97669898_
                                                             (gx#syntax-e
                                                              _e97639780_)))
                                                        (let ((_hd97679901_
                                                               (##car _e97669898_))
                                                              (_tl97689903_
                                                               (##cdr _e97669898_)))
                                                          (if (gx#stx-pair?
                                                               _tl97689903_)
                                                              (let ((_e97699906_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl97689903_)))
                        (let ((_hd97709909_ (##car _e97699906_))
                              (_tl97719911_ (##cdr _e97699906_)))
                          (let ((_path9914_ _hd97709909_))
                            (if (gx#stx-null? _tl97719911_)
                                (if '#t
                                    (_K9760_ _rest9761_
                                             (cons (_import-spec-source9691_
                                                    _path9914_)
                                                   _r9762_))
                                    (_E97659894_))
                                (_E97659894_)))))
                      (_E97659894_))))
              (_E97659894_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let () (_E97649916_)))))))))
                            (let ((_expand19683_
                                   (lambda (_hd10126_
                                            _K10127_
                                            _rest10128_
                                            _r10129_)
                                     (if (gx#core-bound-module? _hd10126_)
                                         (_import19684_
                                          (gx#syntax-local-e__0 _hd10126_)
                                          _K10127_
                                          _rest10128_
                                          _r10129_)
                                         (if (gx#core-library-module-path?
                                              _hd10126_)
                                             (_import19684_
                                              (gx#import-module__0
                                               (gx#core-resolve-library-module-path
                                                _hd10126_))
                                              _K10127_
                                              _rest10128_
                                              _r10129_)
                                             (if (gx#stx-string? _hd10126_)
                                                 (_import19684_
                                                  (gx#import-module__0
                                                   (gx#core-resolve-module-path__opt-lambda10966
                                                    _hd10126_
                                                    (gx#stx-source _stx9680_)))
                                                  _K10127_
                                                  _rest10128_
                                                  _r10129_)
                                                 (if (##structure-instance-of?
                                                      (gx#stx-e _hd10126_)
                                                      'gx#module-context::t)
                                                     (_K10127_
                                                      _rest10128_
                                                      (cons (gx#stx-e
                                                             _hd10126_)
                                                            _r10129_))
                                                     (if (_import-spec?9685_
                                                          _hd10126_)
                                                         (_import-spec9690_
                                                          _hd10126_
                                                          _K10127_
                                                          _rest10128_
                                                          _r10129_)
                                                         (if (_import-submodule?9686_
                                                              _hd10126_)
                                                             (_import-submodule9688_
                                                              _hd10126_
                                                              _K10127_
                                                              _rest10128_
                                                              _r10129_)
                                                             (if (_import-runtime?9687_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd10126_)
                         (_import-runtime9689_
                          _hd10126_
                          _K10127_
                          _rest10128_
                          _r10129_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; illegal import"
                          _stx9680_
                          _hd10126_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (let ((_rbody9695_
                                     (gx#core-expand-import/export
                                      _stx9680_
                                      _expanded-import?9693_
                                      'apply-import-expander
                                      gx#current-import-expander-phi
                                      _expand19683_)))
                                (if _internal-expand?9681_
                                    (reverse _rbody9695_)
                                    (gx#core-quote-syntax__1
                                     (gx#core-cons
                                      '%#import
                                      (_import!9692_ _rbody9695_))
                                     (gx#stx-source _stx9680_)))))))))))))))))
    (begin
      (define gx#core-expand-import%__0
        (lambda (_stx10134_)
          (let ((_internal-expand?10136_ '#f))
            (gx#core-expand-import%__opt-lambda9678
             _stx10134_
             _internal-expand?10136_))))
      (define gx#core-expand-import%
        (lambda _g11528_
          (let ((_g11527_ (length _g11528_)))
            (cond ((fx= _g11527_ 1) (apply gx#core-expand-import%__0 _g11528_))
                  ((fx= _g11527_ 2)
                   (apply gx#core-expand-import%__opt-lambda9678 _g11528_))
                  (else (error "No clause matching arguments" _g11528_))))))))
  (define gx#core-import-nested-module
    (lambda (_spath9607_ _where9608_)
      (let ((_e96099616_ _spath9607_))
        (let ((_E96119620_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e96099616_))))
          (let ((_E96109675_
                 (lambda ()
                   (if (gx#stx-pair? _e96099616_)
                       (let ((_e96129624_ (gx#syntax-e _e96099616_)))
                         (let ((_hd96139627_ (##car _e96129624_))
                               (_tl96149629_ (##cdr _e96129624_)))
                           (let ((_origin9632_ _hd96139627_))
                             (let ((_sub9634_ _tl96149629_))
                               (if '#t
                                   (let ((_origin-ctx9636_
                                          (if (gx#stx-false? _origin9632_)
                                              (gx#current-expander-context)
                                              (gx#import-module__0
                                               _origin9632_))))
                                     ((letrec ((_lp9638_
                                                (lambda (_rest9640_ _ctx9641_)
                                                  (let ((_e96429649_
                                                         _rest9640_))
                                                    (let ((_E96449653_
                                                           (lambda ()
                                                             _ctx9641_)))
                                                      (let ((_E96439671_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _e96429649_)
                           (let ((_e96459657_ (gx#syntax-e _e96429649_)))
                             (let ((_hd96469660_ (##car _e96459657_))
                                   (_tl96479662_ (##cdr _e96459657_)))
                               (let ((_id9665_ _hd96469660_))
                                 (let ((_rest9667_ _tl96479662_))
                                   (if '#t
                                       (let ((_bind9669_
                                              (gx#resolve-identifier__opt-lambda4750
                                               _id9665_
                                               '0
                                               _ctx9641_)))
                                         (begin
                                           (if (if (##structure-direct-instance-of?
                                                    _bind9669_
                                                    'gx#syntax-binding::t)
                                                   (##structure-instance-of?
                                                    (##structure-ref
                                                     _bind9669_
                                                     '4
                                                     gx#syntax-binding::t
                                                     '#f)
                                                    'gx#module-context::t)
                                                   '#f)
                                               '#!void
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; not bound as module"
                                                _where9608_
                                                _spath9607_
                                                _id9665_))
                                           (_lp9638_
                                            _rest9667_
                                            (##structure-ref
                                             _bind9669_
                                             '4
                                             gx#syntax-binding::t
                                             '#f))))
                                       (_E96449653_))))))
                           (_E96449653_)))))
                (let () (_E96439671_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _lp9638_)
                                      _sub9634_
                                      _origin-ctx9636_))
                                   (_E96119620_))))))
                       (_E96119620_)))))
            (let () (_E96109675_)))))))
  (define gx#core-expand-import-source
    (lambda (_hd9605_)
      (gx#core-expand-import%__opt-lambda9678
       (cons 'import-internal% (cons _hd9605_ '()))
       '#t)))
  (begin
    (define gx#core-expand-export%__opt-lambda9187
      (lambda (_stx9189_ _internal-expand?9190_)
        (let ((_make-export__opt-lambda9551__1149611497_
               (lambda (_bind9553_ _phi9554_ _ctx9555_ _name9556_)
                 (let ((_key9558_
                        (##structure-ref _bind9553_ '2 gx#binding::t '#f)))
                   (let ((_export-key9560_
                          (if _name9556_
                              (gx#core-identifier-key _name9556_)
                              _key9558_)))
                     (let ()
                       (##structure
                        gx#module-export::t
                        _ctx9555_
                        _key9558_
                        _phi9554_
                        _export-key9560_
                        (let ((_$e9563_
                               (##structure-instance-of?
                                _bind9553_
                                'gx#extern-binding::t)))
                          (if _$e9563_
                              _$e9563_
                              (##structure-direct-instance-of?
                               _bind9553_
                               'gx#import-binding::t))))))))))
          (let ((_make-export__0__1149811501_
                 (lambda (_bind9569_)
                   (let ((_phi9571_ (gx#current-export-expander-phi)))
                     (let ((_ctx9573_ (gx#current-expander-context)))
                       (let ((_name9575_ '#f))
                         (_make-export__opt-lambda9551__1149611497_
                          _bind9569_
                          _phi9571_
                          _ctx9573_
                          _name9575_)))))))
            (let ((_make-export__1__1149911502_
                   (lambda (_bind9577_ _phi9578_)
                     (let ((_ctx9580_ (gx#current-expander-context)))
                       (let ((_name9582_ '#f))
                         (_make-export__opt-lambda9551__1149611497_
                          _bind9577_
                          _phi9578_
                          _ctx9580_
                          _name9582_))))))
              (let ((_make-export__2__1150011503_
                     (lambda (_bind9584_ _phi9585_ _ctx9586_)
                       (let ((_name9588_ '#f))
                         (_make-export__opt-lambda9551__1149611497_
                          _bind9584_
                          _phi9585_
                          _ctx9586_
                          _name9588_)))))
                (let ((_make-export9192_
                       (lambda _g11530_
                         (let ((_g11529_ (length _g11530_)))
                           (cond ((fx= _g11529_ 1)
                                  (apply _make-export__0__1149811501_
                                         _g11530_))
                                 ((fx= _g11529_ 2)
                                  (apply _make-export__1__1149911502_
                                         _g11530_))
                                 ((fx= _g11529_ 3)
                                  (apply _make-export__2__1150011503_
                                         _g11530_))
                                 ((fx= _g11529_ 4)
                                  (apply _make-export__opt-lambda9551__1149611497_
                                         _g11530_))
                                 (else
                                  (error "No clause matching arguments"
                                         _g11530_)))))))
                  (let ((_export-imports9194_
                         (lambda (_src9215_ _r9216_)
                           (let ((_current-ctx9218_
                                  (gx#current-expander-context)))
                             (let ((_current-phi9219_
                                    (gx#current-export-expander-phi)))
                               (let ((_import->export9220_
                                      (lambda (_in9228_)
                                        (let ((_in92299237_ _in9228_))
                                          (let ((_E92319241_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _in92299237_))))
                                            (let ((_K92329248_
                                                   (lambda (_phi9244_
                                                            _key9245_
                                                            _out9246_)
                                                     (if (fx= _phi9244_
                                                              _current-phi9219_)
                                                         (if (eq? _src9215_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##structure-ref
                           _out9246_
                           '1
                           gx#module-export::t
                           '#f))
                     (##structure
                      gx#module-export::t
                      _current-ctx9218_
                      _key9245_
                      _phi9244_
                      _key9245_
                      '#t)
                     '#f)
                 '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##structure-direct-instance-of?
                                                   _in92299237_
                                                   (##type-id
                                                    gx#module-import::t))
                                                  (let ((_e92339251_
                                                         (##vector-ref
                                                          _in92299237_
                                                          '1)))
                                                    (let ((_out9254_
                                                           _e92339251_))
                                                      (let ((_e92349256_
                                                             (##vector-ref
                                                              _in92299237_
                                                              '2)))
                                                        (let ((_key9259_
                                                               _e92349256_))
                                                          (let ((_e92359261_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref _in92299237_ '3)))
                    (let ((_phi9264_ _e92359261_))
                      (_K92329248_ _phi9264_ _key9259_ _out9254_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E92319241_))))))))
                                 (let ((_fold-e9221_
                                        (lambda (_in9223_ _r9224_)
                                          (let ((_out9226_
                                                 (_import->export9220_
                                                  _in9223_)))
                                            (if _out9226_
                                                (cons _out9226_ _r9224_)
                                                _r9224_)))))
                                   (cons (##structure
                                          gx#export-set::t
                                          _src9215_
                                          _current-phi9219_
                                          (foldl1 _fold-e9221_
                                                  '()
                                                  (##structure-ref
                                                   _current-ctx9218_
                                                   '8
                                                   gx#module-context::t
                                                   '#f)))
                                         _r9216_))))))))
                    (let ((_export!9195_
                           (lambda (_rbody9205_)
                             (let ((_current-ctx9207_
                                    (gx#current-expander-context)))
                               (let ((_fold-e9208_
                                      (lambda (_out9212_ _r9213_)
                                        (if (##structure-direct-instance-of?
                                             _out9212_
                                             'gx#module-export::t)
                                            (cons _out9212_ _r9213_)
                                            (if (##structure-direct-instance-of?
                                                 _out9212_
                                                 'gx#export-set::t)
                                                (foldl1 cons
                                                        _r9213_
                                                        (##structure-ref
                                                         _out9212_
                                                         '3
                                                         gx#export-set::t
                                                         '#f))
                                                _r9213_)))))
                                 (let ((_body9210_ (reverse _rbody9205_)))
                                   (begin
                                     (##structure-set!
                                      _current-ctx9207_
                                      (foldl1 _fold-e9208_
                                              (##structure-ref
                                               _current-ctx9207_
                                               '9
                                               gx#module-context::t
                                               '#f)
                                              _body9210_)
                                      '9
                                      gx#module-context::t
                                      '#f)
                                     _body9210_)))))))
                      (let ((_expanded-export?9196_
                             (lambda (_e9200_)
                               (let ((_$e9202_
                                      (##structure-direct-instance-of?
                                       _e9200_
                                       'gx#module-export::t)))
                                 (if _$e9202_
                                     _$e9202_
                                     (##structure-direct-instance-of?
                                      _e9200_
                                      'gx#export-set::t))))))
                        (let ((_expand19193_
                               (lambda (_hd9266_ _K9267_ _rest9268_ _r9269_)
                                 (let ((_e92709302_ _hd9266_))
                                   (let ((_E92979306_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; illegal export"
                                             _stx9189_
                                             _hd9266_))))
                                     (let ((_E92879385_
                                            (lambda ()
                                              (if (gx#stx-pair? _e92709302_)
                                                  (let ((_e92989310_
                                                         (gx#syntax-e
                                                          _e92709302_)))
                                                    (let ((_hd92999313_
                                                           (##car _e92989310_))
                                                          (_tl93009315_
                                                           (##cdr _e92989310_)))
                                                      (if (eq? (gx#stx-e
                                                                _hd92999313_)
                                                               'import:)
                                                          (let ((_in9318_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl93009315_))
                    (if (gx#stx-list? _in9318_)
                        ((letrec ((_lp9320_
                                   (lambda (_in-rest9322_ _r9323_)
                                     (let ((_e93249331_ _in-rest9322_))
                                       (let ((_E93269335_
                                              (lambda ()
                                                (_K9267_ _rest9268_ _r9323_))))
                                         (let ((_E93259381_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _e93249331_)
                                                      (let ((_e93279339_
                                                             (gx#syntax-e
                                                              _e93249331_)))
                                                        (let ((_hd93289342_
                                                               (##car _e93279339_))
                                                              (_tl93299344_
                                                               (##cdr _e93279339_)))
                                                          (let ((_hd9347_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd93289342_))
                    (let ((_in-rest9349_ _tl93299344_))
                      (if '#t
                          (let ((_src9379_
                                 (if (gx#core-bound-module? _hd9347_)
                                     (gx#syntax-local-e__0 _hd9347_)
                                     (if (gx#core-library-module-path?
                                          _hd9347_)
                                         (gx#import-module__0
                                          (gx#core-resolve-library-module-path
                                           _hd9347_))
                                         (if (gx#stx-string? _hd9347_)
                                             (gx#import-module__0
                                              (gx#core-resolve-module-path__opt-lambda10966
                                               _hd9347_
                                               (gx#stx-source _stx9189_)))
                                             (let ((_e93509357_ _hd9347_))
                                               (let ((_E93529361_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; illegal re-export"
                                                         _stx9189_
                                                         _hd9347_))))
                                                 (let ((_E93519375_
                                                        (lambda ()
                                                          (if (gx#stx-pair?
                                                               _e93509357_)
                                                              (let ((_e93539365_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _e93509357_)))
                        (let ((_hd93549368_ (##car _e93539365_))
                              (_tl93559370_ (##cdr _e93539365_)))
                          (if (eq? (gx#stx-e _hd93549368_) 'in:)
                              (let ((_spath9373_ _tl93559370_))
                                (if '#t
                                    (gx#core-import-nested-module
                                     _spath9373_
                                     _stx9189_)
                                    (_E93529361_)))
                              (_E93529361_))))
                      (_E93529361_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (_E93519375_))))))))))
                            (_lp9320_
                             _in-rest9349_
                             (_export-imports9194_ _src9379_ _r9323_)))
                          (_E93269335_))))))
              (_E93269335_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let () (_E93259381_))))))))
                           _lp9320_)
                         _in9318_
                         _r9269_)
                        (_E92979306_)))
                  (_E92979306_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E92979306_)))))
                                       (let ((_E92749424_
                                              (lambda ()
                                                (if (gx#stx-pair? _e92709302_)
                                                    (let ((_e92889389_
                                                           (gx#syntax-e
                                                            _e92709302_)))
                                                      (let ((_hd92899392_
                                                             (##car _e92889389_))
                                                            (_tl92909394_
                                                             (##cdr _e92889389_)))
                                                        (if (eq? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd92899392_)
                         'rename:)
                    (if (gx#stx-pair? _tl92909394_)
                        (let ((_e92919397_ (gx#syntax-e _tl92909394_)))
                          (let ((_hd92929400_ (##car _e92919397_))
                                (_tl92939402_ (##cdr _e92919397_)))
                            (let ((_id9405_ _hd92929400_))
                              (if (gx#stx-pair? _tl92939402_)
                                  (let ((_e92949407_
                                         (gx#syntax-e _tl92939402_)))
                                    (let ((_hd92959410_ (##car _e92949407_))
                                          (_tl92969412_ (##cdr _e92949407_)))
                                      (let ((_name9415_ _hd92959410_))
                                        (if (gx#stx-null? _tl92969412_)
                                            (if '#t
                                                (let ((_phi9417_
                                                       (gx#current-export-expander-phi)))
                                                  (let ((_$e9419_
                                                         (gx#core-resolve-identifier__1
                                                          _id9405_
                                                          _phi9417_)))
                                                    (if _$e9419_
                                                        ((lambda (_bind9422_)
                                                           (_K9267_ _rest9268_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (_make-export__opt-lambda9551__1149611497_
                                   _bind9422_
                                   _phi9417_
                                   (gx#current-expander-context)
                                   _name9415_)
                                  _r9269_)))
                 _$e9419_)
                (gx#raise-syntax-error
                 '#f
                 '"Reference to unbound identifier"
                 _stx9189_
                 _hd9266_
                 _id9405_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E92879385_))
                                            (_E92879385_)))))
                                  (_E92879385_)))))
                        (_E92879385_))
                    (_E92879385_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E92879385_)))))
                                         (let ((_E92739473_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _e92709302_)
                                                      (let ((_e92759428_
                                                             (gx#syntax-e
                                                              _e92709302_)))
                                                        (let ((_hd92769431_
                                                               (##car _e92759428_))
                                                              (_tl92779433_
                                                               (##cdr _e92759428_)))
                                                          (if (eq? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd92769431_)
                           'spec:)
                      (if (gx#stx-pair? _tl92779433_)
                          (let ((_e92789436_ (gx#syntax-e _tl92779433_)))
                            (let ((_hd92799439_ (##car _e92789436_))
                                  (_tl92809441_ (##cdr _e92789436_)))
                              (let ((_phi9444_ _hd92799439_))
                                (if (gx#stx-pair? _tl92809441_)
                                    (let ((_e92819446_
                                           (gx#syntax-e _tl92809441_)))
                                      (let ((_hd92829449_ (##car _e92819446_))
                                            (_tl92839451_ (##cdr _e92819446_)))
                                        (let ((_id9454_ _hd92829449_))
                                          (if (gx#stx-pair? _tl92839451_)
                                              (let ((_e92849456_
                                                     (gx#syntax-e
                                                      _tl92839451_)))
                                                (let ((_hd92859459_
                                                       (##car _e92849456_))
                                                      (_tl92869461_
                                                       (##cdr _e92849456_)))
                                                  (let ((_name9464_
                                                         _hd92859459_))
                                                    (if (gx#stx-null?
                                                         _tl92869461_)
                                                        (if (if (gx#stx-fixnum?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _phi9444_)
                        (if (gx#identifier? _id9454_)
                            (gx#identifier? _name9464_)
                            '#f)
                        '#f)
                    (let ((_phi9466_ (gx#stx-e _phi9444_)))
                      (let ((_$e9468_
                             (gx#core-resolve-identifier__1
                              _id9454_
                              _phi9466_)))
                        (if _$e9468_
                            ((lambda (_bind9471_)
                               (_K9267_ _rest9268_
                                        (cons (_make-export__opt-lambda9551__1149611497_
                                               _bind9471_
                                               _phi9466_
                                               (gx#current-expander-context)
                                               _name9464_)
                                              _r9269_)))
                             _$e9468_)
                            (gx#raise-syntax-error
                             '#f
                             '"Reference to unbound identifier"
                             _stx9189_
                             _hd9266_
                             _id9454_))))
                    (_E92749424_))
                (_E92749424_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E92749424_)))))
                                    (_E92749424_)))))
                          (_E92749424_))
                      (_E92749424_))))
              (_E92749424_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_E92729484_
                                                  (lambda ()
                                                    (let ((_id9477_
                                                           _e92709302_))
                                                      (if (gx#identifier?
                                                           _id9477_)
                                                          (let ((_$e9479_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-resolve-identifier__1
                          _id9477_
                          (gx#current-export-expander-phi))))
                    (if _$e9479_
                        ((lambda (_bind9482_)
                           (_K9267_ _rest9268_
                                    (cons (_make-export__0__1149811501_
                                           _bind9482_)
                                          _r9269_)))
                         _$e9479_)
                        (gx#raise-syntax-error
                         '#f
                         '"Reference to unbound identifier"
                         _stx9189_
                         _hd9266_)))
                  (_E92739473_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_E92719548_
                                                    (lambda ()
                                                      (if (eq? (gx#stx-e
                                                                _e92709302_)
                                                               '#t)
                                                          (if '#t
                                                              (let ((_current-ctx9488_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#current-expander-context)))
                        (let ((_current-phi9490_
                               (gx#current-export-expander-phi)))
                          (let ((_phi-ctx9492_
                                 (gx#core-context-shift
                                  _current-ctx9488_
                                  _current-phi9490_)))
                            (let ((_phi-bind9494_
                                   (table->list
                                    (##structure-ref
                                     _phi-ctx9492_
                                     '2
                                     gx#expander-context::t
                                     '#f))))
                              (let ()
                                ((letrec ((_lp9497_
                                           (lambda (_bind-rest9499_ _set9500_)
                                             (let ((_bind-rest95019511_
                                                    _bind-rest9499_))
                                               (let ((_E95049515_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _bind-rest95019511_))))
                                                 (let ((_else95039519_
                                                        (lambda ()
                                                          (_K9267_ _rest9268_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (##structure
                                  gx#export-set::t
                                  '#f
                                  _current-phi9490_
                                  _set9500_)
                                 _r9269_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_K95059529_
                                                          (lambda (_bind-rest9522_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _bind9523_
                           _key9524_)
                    (if (let ((_$e9526_
                               (##structure-direct-instance-of?
                                _bind9523_
                                'gx#import-binding::t)))
                          (if _$e9526_
                              _$e9526_
                              (gx#private-feature-binding? _bind9523_)))
                        (_lp9497_ _bind-rest9522_ _set9500_)
                        (_lp9497_
                         _bind-rest9522_
                         (cons (_make-export__2__1150011503_
                                _bind9523_
                                _current-phi9490_
                                _current-ctx9488_)
                               _set9500_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##pair? _bind-rest95019511_)
                                                         (let ((_hd95069532_
                                                                (##car _bind-rest95019511_))
                                                               (_tl95079534_
                                                                (##cdr _bind-rest95019511_)))
                                                           (if (##pair? _hd95069532_)
                                                               (let ((_hd95089537_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##car _hd95069532_))
                             (_tl95099539_ (##cdr _hd95069532_)))
                         (let ((_key9542_ _hd95089537_))
                           (let ((_bind9544_ _tl95099539_))
                             (let ((_bind-rest9546_ _tl95079534_))
                               (_K95059529_
                                _bind-rest9546_
                                _bind9544_
                                _key9542_)))))
                       (_else95039519_)))
                 (_else95039519_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _lp9497_)
                                 _phi-bind9494_
                                 '()))))))
                      (_E92729484_))
                  (_E92729484_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let () (_E92719548_))))))))))))
                          (let ((_rbody9198_
                                 (gx#core-expand-import/export
                                  _stx9189_
                                  _expanded-export?9196_
                                  'apply-export-expander
                                  gx#current-export-expander-phi
                                  _expand19193_)))
                            (if _internal-expand?9190_
                                (reverse _rbody9198_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#export
                                  (_export!9195_ _rbody9198_))
                                 (gx#stx-source _stx9189_)))))))))))))))
    (begin
      (define gx#core-expand-export%__0
        (lambda (_stx9598_)
          (let ((_internal-expand?9600_ '#f))
            (gx#core-expand-export%__opt-lambda9187
             _stx9598_
             _internal-expand?9600_))))
      (define gx#core-expand-export%
        (lambda _g11532_
          (let ((_g11531_ (length _g11532_)))
            (cond ((fx= _g11531_ 1) (apply gx#core-expand-export%__0 _g11532_))
                  ((fx= _g11531_ 2)
                   (apply gx#core-expand-export%__opt-lambda9187 _g11532_))
                  (else (error "No clause matching arguments" _g11532_))))))))
  (define gx#core-expand-export-source
    (lambda (_hd9186_)
      (gx#core-expand-export%__opt-lambda9187
       (cons 'export-macro% (cons _hd9186_ '()))
       '#t)))
  (define gx#core-expand-provide%
    (lambda (_stx9156_)
      (let ((_e91579164_ _stx9156_))
        (let ((_E91599168_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e91579164_))))
          (let ((_E91589182_
                 (lambda ()
                   (if (gx#stx-pair? _e91579164_)
                       (let ((_e91609172_ (gx#syntax-e _e91579164_)))
                         (let ((_hd91619175_ (##car _e91609172_))
                               (_tl91629177_ (##cdr _e91609172_)))
                           (let ((_body9180_ _tl91629177_))
                             (if (gx#identifier-list? _body9180_)
                                 (begin
                                   (gx#stx-for-each1
                                    gx#core-bind-feature!
                                    _body9180_)
                                   (gx#core-quote-syntax__1
                                    (gx#core-cons
                                     '%#provide
                                     (gx#stx-map1
                                      gx#core-quote-syntax
                                      _body9180_))
                                    (gx#stx-source _stx9156_)))
                                 (_E91599168_)))))
                       (_E91599168_)))))
            (let () (_E91589182_)))))))
  (begin
    (define gx#core-bind-feature!__opt-lambda9120
      (lambda (_id9122_ _private?9123_ _phi9124_ _ctx9125_)
        (gx#core-bind-syntax!__opt-lambda6213
         _id9122_
         ((if _private?9123_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id9122_))
         _private?9123_
         _phi9124_
         _ctx9125_)))
    (begin
      (define gx#core-bind-feature!__0
        (lambda (_id9130_)
          (let ((_private?9132_ '#f))
            (let ((_phi9134_ (gx#current-expander-phi)))
              (let ((_ctx9136_ (gx#current-expander-context)))
                (gx#core-bind-feature!__opt-lambda9120
                 _id9130_
                 _private?9132_
                 _phi9134_
                 _ctx9136_))))))
      (define gx#core-bind-feature!__1
        (lambda (_id9138_ _private?9139_)
          (let ((_phi9141_ (gx#current-expander-phi)))
            (let ((_ctx9143_ (gx#current-expander-context)))
              (gx#core-bind-feature!__opt-lambda9120
               _id9138_
               _private?9139_
               _phi9141_
               _ctx9143_)))))
      (define gx#core-bind-feature!__2
        (lambda (_id9145_ _private?9146_ _phi9147_)
          (let ((_ctx9149_ (gx#current-expander-context)))
            (gx#core-bind-feature!__opt-lambda9120
             _id9145_
             _private?9146_
             _phi9147_
             _ctx9149_))))
      (define gx#core-bind-feature!
        (lambda _g11534_
          (let ((_g11533_ (length _g11534_)))
            (cond ((fx= _g11533_ 1) (apply gx#core-bind-feature!__0 _g11534_))
                  ((fx= _g11533_ 2) (apply gx#core-bind-feature!__1 _g11534_))
                  ((fx= _g11533_ 3) (apply gx#core-bind-feature!__2 _g11534_))
                  ((fx= _g11533_ 4)
                   (apply gx#core-bind-feature!__opt-lambda9120 _g11534_))
                  (else (error "No clause matching arguments" _g11534_)))))))))
