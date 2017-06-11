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
    (lambda _$args11500_
      (apply make-struct-instance gx#module-import::t _$args11500_)))
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
    (lambda _$args11497_
      (apply make-struct-instance gx#module-export::t _$args11497_)))
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
    (lambda _$args11494_
      (apply make-struct-instance gx#import-set::t _$args11494_)))
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
    (lambda _$args11491_
      (apply make-struct-instance gx#export-set::t _$args11491_)))
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
    (lambda _$args11488_
      (apply make-struct-instance gx#import-expander::t _$args11488_)))
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
    (lambda _$args11485_
      (apply make-struct-instance gx#export-expander::t _$args11485_)))
  (define gx#current-import-expander-phi (make-parameter '#f))
  (define gx#current-export-expander-phi (make-parameter '#f))
  (define gx#current-module-reader-path (make-parameter '#f))
  (define gx#current-module-reader-args (make-parameter '#f))
  (define gx#module-context:::init!
    (lambda (_self11479_ _id11480_ _super11481_ _ns11482_ _path11483_)
      (struct-instance-init!
       _self11479_
       _id11480_
       (make-hash-table-eq)
       _super11481_
       '#f
       '#f
       _ns11482_
       _path11483_
       '()
       '()
       '#f
       '#f)))
  (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
  (begin
    (define gx#prelude-context:::init!__opt-lambda11443
      (lambda (_self11445_ _ctx11446_ _root11447_)
        (let ((_super11455_
               (let ((_$e11449_ _root11447_))
                 (if _$e11449_
                     _$e11449_
                     (let ((_$e11452_ (gx#core-context-root__0)))
                       (if _$e11452_
                           _$e11452_
                           (make-struct-instance gx#root-context::t)))))))
          (if _ctx11446_
              (let ((_id11458_
                     (##structure-ref
                      _ctx11446_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path11459_
                     (##structure-ref _ctx11446_ '7 gx#module-context::t '#f))
                    (_in11460_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx11446_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e11461_
                     (make-promise (lambda () (gx#eval-module _ctx11446_)))))
                (begin
                  (struct-instance-init!
                   _self11445_
                   _id11458_
                   (make-hash-table-eq)
                   _super11455_
                   '#f
                   '#f
                   _path11459_
                   _in11460_
                   _e11461_)
                  (for-each
                   (lambda (_g1146211464_)
                     (gx#core-bind-weak-import!__opt-lambda10797
                      _g1146211464_
                      _self11445_))
                   _in11460_)))
              (struct-instance-init!
               _self11445_
               '#f
               (make-hash-table-eq)
               _super11455_
               '#f
               '#f
               '#f
               '()
               '#f)))))
    (begin
      (define gx#prelude-context:::init!__0
        (lambda (_self11470_ _ctx11471_)
          (let ((_root11473_ '#f))
            (gx#prelude-context:::init!__opt-lambda11443
             _self11470_
             _ctx11471_
             _root11473_))))
      (define gx#prelude-context:::init!
        (lambda _g11516_
          (let ((_g11515_ (length _g11516_)))
            (cond ((fx= _g11515_ 2)
                   (apply gx#prelude-context:::init!__0 _g11516_))
                  ((fx= _g11515_ 3)
                   (apply gx#prelude-context:::init!__opt-lambda11443
                          _g11516_))
                  (else (error "No clause matching arguments" _g11516_))))))))
  (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
  (define gx#import-expander:::init!
    (lambda (_self11441_ _e11442_)
      (struct-instance-init!
       _self11441_
       _e11442_
       (gx#current-expander-context)
       (fx- (gx#current-expander-phi) '1))))
  (bind-method! gx#import-expander::t ':init! gx#import-expander:::init! '#f)
  (define gx#export-expander:::init!
    (lambda (_self11438_ _e11439_)
      (struct-instance-init!
       _self11438_
       _e11439_
       (gx#current-expander-context)
       (fx- (gx#current-expander-phi) '1))))
  (bind-method! gx#export-expander::t ':init! gx#export-expander:::init! '#f)
  (define gx#import-expander::apply-import-expander
    (lambda (_g1143011433_ _g1143111435_)
      (gx#core-apply-user-expander__opt-lambda4796
       _g1143011433_
       _g1143111435_
       'apply-import-expander)))
  (bind-method!
   gx#import-expander::t
   'apply-import-expander
   gx#import-expander::apply-import-expander
   '#f)
  (define gx#export-expander::apply-export-expander
    (lambda (_g1142311426_ _g1142411428_)
      (gx#core-apply-user-expander__opt-lambda4796
       _g1142311426_
       _g1142411428_
       'apply-export-expander)))
  (bind-method!
   gx#export-expander::t
   'apply-export-expander
   gx#export-expander::apply-export-expander
   '#f)
  (define gx#module-source-path
    (lambda (_ctx11417_)
      (let ((_path11419_
             (##structure-ref _ctx11417_ '7 gx#module-context::t '#f)))
        (let ((_path11421_
               (if (pair? _path11419_) (last _path11419_) _path11419_)))
          (let () (if (string? _path11421_) _path11421_ '#f))))))
  (begin
    (define gx#import-module__opt-lambda11391
      (lambda (_path11393_ _reload?11394_ _eval?11395_)
        (let ((_ctx11397_
               ((gx#current-expander-module-import)
                _path11393_
                _reload?11394_)))
          (begin
            (if (if _ctx11397_ _eval?11395_ '#f)
                (gx#eval-module _ctx11397_)
                '#!void)
            _ctx11397_))))
    (begin
      (define gx#import-module__0
        (lambda (_path11402_)
          (let ((_reload?11404_ '#f))
            (let ((_eval?11406_ '#f))
              (gx#import-module__opt-lambda11391
               _path11402_
               _reload?11404_
               _eval?11406_)))))
      (define gx#import-module__1
        (lambda (_path11408_ _reload?11409_)
          (let ((_eval?11411_ '#f))
            (gx#import-module__opt-lambda11391
             _path11408_
             _reload?11409_
             _eval?11411_))))
      (define gx#import-module
        (lambda _g11518_
          (let ((_g11517_ (length _g11518_)))
            (cond ((fx= _g11517_ 1) (apply gx#import-module__0 _g11518_))
                  ((fx= _g11517_ 2) (apply gx#import-module__1 _g11518_))
                  ((fx= _g11517_ 3)
                   (apply gx#import-module__opt-lambda11391 _g11518_))
                  (else (error "No clause matching arguments" _g11518_))))))))
  (define gx#eval-module
    (lambda (_mod11390_) ((gx#current-expander-module-eval) _mod11390_)))
  (define gx#core-eval-module
    (lambda (_obj11375_)
      (let ((_force-e11377_
             (lambda (_getf11386_ _e11387_)
               (call-with-parameters
                (lambda () (force (_getf11386_ _e11387_)))
                gx#current-expander-context
                _e11387_
                gx#current-expander-phi
                '0))))
        ((letrec ((_recur11379_
                   (lambda (_e11381_)
                     (if (##structure-instance-of?
                          _e11381_
                          'gx#module-context::t)
                         (begin
                           (let ((_$e11383_
                                  (gx#core-context-prelude__opt-lambda11356
                                   _e11381_)))
                             (if _$e11383_ (_recur11379_ _$e11383_) '#!void))
                           (_force-e11377_ gx#module-context-e _e11381_))
                         (if (##structure-instance-of?
                              _e11381_
                              'gx#prelude-context::t)
                             (_force-e11377_ gx#prelude-context-e _e11381_)
                             (if (gx#stx-string? _e11381_)
                                 (_recur11379_
                                  (gx#import-module__0
                                   (gx#core-resolve-module-path__0 _e11381_)))
                                 (if (gx#core-library-module-path? _e11381_)
                                     (_recur11379_
                                      (gx#import-module__0
                                       (gx#core-resolve-library-module-path
                                        _e11381_)))
                                     (error '"Cannot eval module"
                                            _obj11375_))))))))
           _recur11379_)
         _obj11375_))))
  (begin
    (define gx#core-context-prelude__opt-lambda11356
      (lambda (_ctx11358_)
        ((letrec ((_lp11360_
                   (lambda (_e11362_)
                     (if (let ((_$e11364_
                                (##structure-instance-of?
                                 _e11362_
                                 'gx#module-context::t)))
                           (if _$e11364_
                               _$e11364_
                               (##structure-instance-of?
                                _e11362_
                                'gx#local-context::t)))
                         (_lp11360_
                          (##structure-ref _e11362_ '3 gx#phi-context::t '#f))
                         (if (##structure-instance-of?
                              _e11362_
                              'gx#prelude-context::t)
                             _e11362_
                             '#f)))))
           _lp11360_)
         _ctx11358_)))
    (begin
      (define gx#core-context-prelude__0
        (lambda ()
          (let ((_ctx11371_ (gx#current-expander-context)))
            (gx#core-context-prelude__opt-lambda11356 _ctx11371_))))
      (define gx#core-context-prelude
        (lambda _g11520_
          (let ((_g11519_ (length _g11520_)))
            (cond ((fx= _g11519_ 0)
                   (apply gx#core-context-prelude__0 _g11520_))
                  ((fx= _g11519_ 1)
                   (apply gx#core-context-prelude__opt-lambda11356 _g11520_))
                  (else (error "No clause matching arguments" _g11520_))))))))
  (define gx#core-module->prelude-context
    (lambda (_ctx11348_)
      (let ((_ht11350_ (gx#current-expander-module-registry)))
        (let ((_$e11352_ (table-ref _ht11350_ _ctx11348_ '#f)))
          (if _$e11352_
              (values _$e11352_)
              (let ((_pre11355_
                     (let ((__obj11511 (make-object gx#prelude-context::t '8)))
                       (begin
                         (gx#prelude-context:::init!__0 __obj11511 _ctx11348_)
                         __obj11511))))
                (begin
                  (table-set! _ht11350_ _ctx11348_ _pre11355_)
                  _pre11355_)))))))
  (begin
    (define gx#core-import-module__opt-lambda11300
      (lambda (_rpath11302_ _reload?11303_)
        (let ((_import-source11305_
               (lambda (_path11317_)
                 (begin
                   (if (member _path11317_ (gx#current-expander-path))
                       (error '"Cyclic expansion" _path11317_)
                       '#!void)
                   (call-with-parameters
                    (lambda ()
                      (let ((_g11521_ (gx#core-read-module _path11317_)))
                        (begin
                          (let ((_g11522_ (values-count _g11521_)))
                            (if (not (fx= _g11522_ 4))
                                (error "Context expects 4 values" _g11522_)))
                          (let ((_pre11320_ (values-ref _g11521_ 0))
                                (_id11321_ (values-ref _g11521_ 1))
                                (_ns11322_ (values-ref _g11521_ 2))
                                (_body11323_ (values-ref _g11521_ 3)))
                            (let ((_prelude11328_
                                   (if (##structure-instance-of?
                                        _pre11320_
                                        'gx#prelude-context::t)
                                       _pre11320_
                                       (if (##structure-instance-of?
                                            _pre11320_
                                            'gx#module-context::t)
                                           (gx#core-module->prelude-context
                                            _pre11320_)
                                           (if (string? _pre11320_)
                                               (gx#core-module->prelude-context
                                                (gx#core-import-module__0
                                                 _pre11320_))
                                               (if (not _pre11320_)
                                                   (let ((_$e11325_
                                                          (gx#current-expander-module-prelude)))
                                                     (if _$e11325_
                                                         _$e11325_
                                                         (let ((__obj11512
                                                                (make-object
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#prelude-context::t
                         '8)))
                   (begin
                     (gx#prelude-context:::init!__0 __obj11512 '#f)
                     __obj11512))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (error '"Cannot import module; unknown prelude"
                                                          _rpath11302_
                                                          _pre11320_)))))))
                              (let ((_ctx11330_
                                     (let ((__obj11513
                                            (make-object
                                             gx#module-context::t
                                             '11)))
                                       (begin
                                         (gx#module-context:::init!
                                          __obj11513
                                          _id11321_
                                          _prelude11328_
                                          _ns11322_
                                          _path11317_)
                                         __obj11513))))
                                (let ((_body11332_
                                       (gx#core-expand-module-begin
                                        _body11323_
                                        _ctx11330_)))
                                  (let ((_body11334_
                                         (gx#core-quote-syntax__opt-lambda4149
                                          (gx#core-cons '%#begin _body11332_)
                                          _path11317_
                                          _ctx11330_
                                          '())))
                                    (let ()
                                      (begin
                                        (##structure-set!
                                         _ctx11330_
                                         (make-promise
                                          (lambda ()
                                            (gx#eval-syntax* _body11334_)))
                                         '10
                                         gx#module-context::t
                                         '#f)
                                        (##structure-set!
                                         _ctx11330_
                                         _body11334_
                                         '11
                                         gx#module-context::t
                                         '#f)
                                        (table-set!
                                         (gx#current-expander-module-registry)
                                         _path11317_
                                         _ctx11330_)
                                        (table-set!
                                         (gx#current-expander-module-registry)
                                         _id11321_
                                         _ctx11330_)
                                        _ctx11330_))))))))))
                    gx#current-expander-context
                    (gx#core-context-root__0)
                    gx#current-expander-marks
                    '()
                    gx#current-expander-phi
                    '0
                    gx#current-expander-path
                    (cons _path11317_ (gx#current-expander-path))
                    gx#current-import-expander-phi
                    '#f
                    gx#current-export-expander-phi
                    '#f)))))
          (let ((_$e11307_
                 (if (not _reload?11303_)
                     (table-ref
                      (gx#current-expander-module-registry)
                      _rpath11302_
                      '#f)
                     '#f)))
            (if _$e11307_
                (values _$e11307_)
                (if (gx#core-library-module-path? _rpath11302_)
                    (let ((_ctx11310_
                           (gx#core-import-module__opt-lambda11300
                            (gx#core-resolve-library-module-path _rpath11302_)
                            _reload?11303_)))
                      (begin
                        (table-set!
                         (gx#current-expander-module-registry)
                         _rpath11302_
                         _ctx11310_)
                        _ctx11310_))
                    (let ((_npath11312_ (path-normalize _rpath11302_)))
                      (let ((_$e11314_
                             (if (not _reload?11303_)
                                 (table-ref
                                  (gx#current-expander-module-registry)
                                  _npath11312_
                                  '#f)
                                 '#f)))
                        (if _$e11314_
                            (values _$e11314_)
                            (_import-source11305_ _npath11312_))))))))))
    (begin
      (define gx#core-import-module__0
        (lambda (_rpath11341_)
          (let ((_reload?11343_ '#f))
            (gx#core-import-module__opt-lambda11300
             _rpath11341_
             _reload?11343_))))
      (define gx#core-import-module
        (lambda _g11524_
          (let ((_g11523_ (length _g11524_)))
            (cond ((fx= _g11523_ 1) (apply gx#core-import-module__0 _g11524_))
                  ((fx= _g11523_ 2)
                   (apply gx#core-import-module__opt-lambda11300 _g11524_))
                  (else (error "No clause matching arguments" _g11524_))))))))
  (define gx#core-read-module
    (lambda (_path11296_)
      (with-exception-catcher
       (lambda (_exn11298_)
         (if (if (datum-parsing-exception? _exn11298_)
                 (eq? (datum-parsing-exception-filepos _exn11298_) '0)
                 '#f)
             (gx#core-read-module/lang _path11296_)
             (raise _exn11298_)))
       (lambda () (gx#core-read-module/sexp _path11296_)))))
  (define gx#core-read-module/sexp
    (lambda (_path11160_)
      ((letrec ((_lp11162_
                 (lambda (_body11164_ _pre11165_ _ns11166_ _pkg11167_)
                   (let ((_e1116811192_ _body11164_))
                     (let ((_E1118411210_
                            (lambda ()
                              (let ((_prelude11196_
                                     (if (gx#core-bound-module-prelude?
                                          _pre11165_)
                                         (gx#syntax-local-e__0 _pre11165_)
                                         (if (gx#core-library-module-path?
                                              _pre11165_)
                                             (gx#core-resolve-library-module-path
                                              _pre11165_)
                                             (if (gx#stx-string? _pre11165_)
                                                 (gx#core-resolve-module-path__opt-lambda10973
                                                  _pre11165_
                                                  _path11160_)
                                                 (gx#stx-e _pre11165_))))))
                                (let ((_path-id11198_
                                       (gx#core-module-path->namespace
                                        _path11160_)))
                                  (let ((_pkg-id11200_
                                         (if _pkg11167_
                                             (string-append
                                              _pkg11167_
                                              '"/"
                                              _path-id11198_)
                                             _path-id11198_)))
                                    (let ((_module-id11202_
                                           (string->symbol _pkg-id11200_)))
                                      (let ((_module-ns11207_
                                             (let ((_$e11204_ _ns11166_))
                                               (if _$e11204_
                                                   _$e11204_
                                                   _pkg-id11200_))))
                                        (let ()
                                          (values _prelude11196_
                                                  _module-id11202_
                                                  _module-ns11207_
                                                  _body11164_))))))))))
                       (let ((_E1117711239_
                              (lambda ()
                                (if (gx#stx-pair? _e1116811192_)
                                    (let ((_e1118511214_
                                           (gx#syntax-e _e1116811192_)))
                                      (let ((_hd1118611217_
                                             (##car _e1118511214_))
                                            (_tl1118711219_
                                             (##cdr _e1118511214_)))
                                        (if (eq? (gx#stx-e _hd1118611217_)
                                                 'package:)
                                            (if (gx#stx-pair? _tl1118711219_)
                                                (let ((_e1118811222_
                                                       (gx#syntax-e
                                                        _tl1118711219_)))
                                                  (let ((_hd1118911225_
                                                         (##car _e1118811222_))
                                                        (_tl1119011227_
                                                         (##cdr _e1118811222_)))
                                                    (let ((_pkg11230_
                                                           _hd1118911225_))
                                                      (let ((_rest11232_
                                                             _tl1119011227_))
                                                        (if '#t
                                                            (let ((_pkg11237_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if (gx#identifier? _pkg11230_)
                               (symbol->string (gx#stx-e _pkg11230_))
                               (if (let ((_$e11234_
                                          (gx#stx-string? _pkg11230_)))
                                     (if _$e11234_
                                         _$e11234_
                                         (gx#stx-false? _pkg11230_)))
                                   (gx#stx-e _pkg11230_)
                                   (gx#raise-syntax-error
                                    'import
                                    '"Bad syntax; Illegal package name"
                                    _pkg11230_)))))
                      (_lp11162_ _rest11232_ _pre11165_ _ns11166_ _pkg11237_))
                    (_E1118411210_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1118411210_))
                                            (_E1118411210_))))
                                    (_E1118411210_)))))
                         (let ((_E1117011268_
                                (lambda ()
                                  (if (gx#stx-pair? _e1116811192_)
                                      (let ((_e1117811243_
                                             (gx#syntax-e _e1116811192_)))
                                        (let ((_hd1117911246_
                                               (##car _e1117811243_))
                                              (_tl1118011248_
                                               (##cdr _e1117811243_)))
                                          (if (eq? (gx#stx-e _hd1117911246_)
                                                   'namespace:)
                                              (if (gx#stx-pair? _tl1118011248_)
                                                  (let ((_e1118111251_
                                                         (gx#syntax-e
                                                          _tl1118011248_)))
                                                    (let ((_hd1118211254_
                                                           (##car _e1118111251_))
                                                          (_tl1118311256_
                                                           (##cdr _e1118111251_)))
                                                      (let ((_ns11259_
                                                             _hd1118211254_))
                                                        (let ((_rest11261_
                                                               _tl1118311256_))
                                                          (if '#t
                                                              (let ((_ns11266_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (gx#identifier? _ns11259_)
                                 (symbol->string (gx#stx-e _ns11259_))
                                 (if (let ((_$e11263_
                                            (gx#stx-string? _ns11259_)))
                                       (if _$e11263_
                                           _$e11263_
                                           (gx#stx-false? _ns11259_)))
                                     (gx#stx-e _ns11259_)
                                     (gx#raise-syntax-error
                                      'import
                                      '"Bad syntax; illegal namespace"
                                      _ns11259_)))))
                        (_lp11162_
                         _rest11261_
                         _pre11165_
                         _ns11266_
                         _pkg11167_))
                      (_E1117711239_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1117711239_))
                                              (_E1117711239_))))
                                      (_E1117711239_)))))
                           (let ((_E1116911292_
                                  (lambda ()
                                    (if (gx#stx-pair? _e1116811192_)
                                        (let ((_e1117111272_
                                               (gx#syntax-e _e1116811192_)))
                                          (let ((_hd1117211275_
                                                 (##car _e1117111272_))
                                                (_tl1117311277_
                                                 (##cdr _e1117111272_)))
                                            (if (eq? (gx#stx-e _hd1117211275_)
                                                     'prelude:)
                                                (if (gx#stx-pair?
                                                     _tl1117311277_)
                                                    (let ((_e1117411280_
                                                           (gx#syntax-e
                                                            _tl1117311277_)))
                                                      (let ((_hd1117511283_
                                                             (##car _e1117411280_))
                                                            (_tl1117611285_
                                                             (##cdr _e1117411280_)))
                                                        (let ((_prelude11288_
                                                               _hd1117511283_))
                                                          (let ((_rest11290_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1117611285_))
                    (if '#t
                        (_lp11162_
                         _rest11290_
                         _prelude11288_
                         _ns11166_
                         _pkg11167_)
                        (_E1117011268_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1117011268_))
                                                (_E1117011268_))))
                                        (_E1117011268_)))))
                             (let () (_E1116911292_))))))))))
         _lp11162_)
       (read-syntax-from-file _path11160_)
       '#f
       '#f
       '#f)))
  (define gx#core-read-module/lang
    (lambda (_path11000_)
      (let ((_read-body11002_
             (lambda (_inp11083_ _pre11084_ _pkg11085_ _ns11086_ _args11087_)
               (let ((_prelude11089_ (gx#import-module__0 _pre11084_)))
                 (let ((_read-module-body11143_
                        (let ((_$e11135_
                               (find (lambda (_e1109011092_)
                                       (let ((_g1109411104_ _e1109011092_))
                                         (let ((_E1109711108_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _g1109411104_))))
                                           (let ((_else1109611112_
                                                  (lambda () '#f)))
                                             (let ((_K1109811116_
                                                    (lambda () '#t)))
                                               (if (##structure-direct-instance-of?
                                                    _g1109411104_
                                                    (##type-id
                                                     gx#module-export::t))
                                                   (let ((_e1109911119_
                                                          (##vector-ref
                                                           _g1109411104_
                                                           '1)))
                                                     (let ((_e1110011122_
                                                            (##vector-ref
                                                             _g1109411104_
                                                             '2)))
                                                       (let ((_e1110111125_
                                                              (##vector-ref
                                                               _g1109411104_
                                                               '3)))
                                                         (if (##eq? _e1110111125_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                     (let ((_e1110211128_ (##vector-ref _g1109411104_ '4)))
                       (if ((lambda (_g1113011132_)
                              (eq? _g1113011132_ 'read-module-body))
                            _e1110211128_)
                           (_K1109811116_)
                           (_else1109611112_)))
                     (_else1109611112_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_else1109611112_)))))))
                                     (##structure-ref
                                      _prelude11089_
                                      '9
                                      gx#module-context::t
                                      '#f))))
                          (if _$e11135_
                              ((lambda (_xport11138_)
                                 (let ((_proc11141_
                                        (with-exception-catcher
                                         void
                                         (lambda ()
                                           (gx#eval-syntax__0
                                            (##structure-ref
                                             (gx#core-resolve-module-export
                                              _xport11138_)
                                             '1
                                             gx#binding::t
                                             '#f))))))
                                   (if (procedure? _proc11141_)
                                       _proc11141_
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Illegal #lang prelude; read-module-body is not a procedure"
                                        _path11000_
                                        _pre11084_
                                        _proc11141_))))
                               _$e11135_)
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang prelude; does not export read-module-body for syntax"
                               _path11000_
                               _pre11084_)))))
                   (let ((_path-id11145_
                          (gx#core-module-path->namespace _path11000_)))
                     (let ((_pkg-id11147_
                            (if _pkg11085_
                                (string-append _pkg11085_ '"/" _path-id11145_)
                                _path-id11145_)))
                       (let ((_module-id11149_ (string->symbol _pkg-id11147_)))
                         (let ((_module-ns11154_
                                (let ((_$e11151_ _ns11086_))
                                  (if _$e11151_ _$e11151_ _pkg-id11147_))))
                           (let ((_body11157_
                                  (call-with-parameters
                                   (lambda ()
                                     (_read-module-body11143_ _inp11083_))
                                   gx#current-module-reader-path
                                   _path11000_
                                   gx#current-module-reader-args
                                   _args11087_)))
                             (let ()
                               (values _prelude11089_
                                       _module-id11149_
                                       _module-ns11154_
                                       _body11157_))))))))))))
        (let ((_string-e11003_
               (lambda (_obj11080_ _what11081_)
                 (if (string? _obj11080_)
                     _obj11080_
                     (if (symbol? _obj11080_)
                         (symbol->string _obj11080_)
                         (gx#raise-syntax-error
                          '#f
                          (string-append '"Illegal module " _what11081_)
                          _path11000_
                          _obj11080_))))))
          (let ((_read-lang-args11004_
                 (lambda (_inp11035_ _args11036_)
                   (let ((_args1103711045_ _args11036_))
                     (let ((_E1104011049_
                            (lambda ()
                              (error '"No clause matching" _args1103711045_))))
                       (let ((_else1103911053_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Illegal #lang arguments; missing prelude"
                                 _path11000_))))
                         (let ((_K1104111068_
                                (lambda (_args11056_ _prelude11057_)
                                  (let ((_pkg11059_
                                         (pgetq 'package: _args11056_)))
                                    (let ((_pkg11061_
                                           (if _pkg11059_
                                               (_string-e11003_
                                                _pkg11059_
                                                '"package")
                                               '#f)))
                                      (let ((_ns11063_
                                             (pgetq 'namespace: _args11056_)))
                                        (let ((_ns11065_
                                               (if _ns11063_
                                                   (_string-e11003_
                                                    _ns11063_
                                                    '"namespace")
                                                   '#f)))
                                          (let ()
                                            (_read-body11002_
                                             _inp11035_
                                             _prelude11057_
                                             _pkg11061_
                                             _ns11065_
                                             _args11056_)))))))))
                           (if (##pair? _args1103711045_)
                               (let ((_hd1104211071_ (##car _args1103711045_))
                                     (_tl1104311073_ (##cdr _args1103711045_)))
                                 (let ((_prelude11076_ _hd1104211071_))
                                   (let ((_args11078_ _tl1104311073_))
                                     (_K1104111068_
                                      _args11078_
                                      _prelude11076_))))
                               (_else1103911053_)))))))))
            (let ((_read-lang11005_
                   (lambda (_inp11010_)
                     (let ((_head11012_ (read-line _inp11010_)))
                       (let ((_$e11014_ (string-index _head11012_ '#\space)))
                         (if _$e11014_
                             ((lambda (_ix11017_)
                                (let ((_lang11019_
                                       (substring _head11012_ '0 _ix11017_)))
                                  (if (equal? _lang11019_ '"#lang")
                                      (let ((_rest11021_
                                             (substring
                                              _head11012_
                                              (fx+ _ix11017_ '1)
                                              (string-length _head11012_))))
                                        (let ((_args11032_
                                               (with-exception-catcher
                                                (lambda (_g1102211024_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Illegal #lang arguments"
                                                   _path11000_
                                                   _g1102211024_))
                                                (lambda ()
                                                  (call-with-input-string
                                                   _rest11021_
                                                   (lambda (_g1102711029_)
                                                     (read-all
                                                      _g1102711029_
                                                      read)))))))
                                          (let ()
                                            (_read-lang-args11004_
                                             _inp11010_
                                             _args11032_))))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Illegal module syntax"
                                       _path11000_))))
                              _$e11014_)
                             (gx#raise-syntax-error
                              '#f
                              '"Illegal module syntax"
                              _path11000_)))))))
              (let ((_read-e11006_
                     (lambda (_inp11008_)
                       (if (eq? (peek-char _inp11008_) '#\#)
                           (_read-lang11005_ _inp11008_)
                           (gx#raise-syntax-error
                            '#f
                            '"Illegal module syntax"
                            _path11000_)))))
                (call-with-input-file _path11000_ _read-e11006_))))))))
  (define gx#core-module-path->namespace
    (lambda (_path10998_)
      (path-strip-extension (path-strip-directory _path10998_))))
  (define gx#core-module-path->id
    (lambda (_path10996_)
      (string->symbol (gx#core-module-path->namespace _path10996_))))
  (begin
    (define gx#core-resolve-module-path__opt-lambda10973
      (lambda (_stx-path10975_ _rel10976_)
        (let ((_path10978_ (gx#stx-e _stx-path10975_)))
          (let ((_path10980_
                 (if (string-empty? (path-extension _path10978_))
                     (string-append _path10978_ '".ss")
                     _path10978_)))
            (let ()
              (gx#core-resolve-path__opt-lambda4113
               _path10980_
               (let ((_$e10983_ (gx#stx-source _stx-path10975_)))
                 (if _$e10983_ _$e10983_ _rel10976_))))))))
    (begin
      (define gx#core-resolve-module-path__0
        (lambda (_stx-path10989_)
          (let ((_rel10991_ '#f))
            (gx#core-resolve-module-path__opt-lambda10973
             _stx-path10989_
             _rel10991_))))
      (define gx#core-resolve-module-path
        (lambda _g11526_
          (let ((_g11525_ (length _g11526_)))
            (cond ((fx= _g11525_ 1)
                   (apply gx#core-resolve-module-path__0 _g11526_))
                  ((fx= _g11525_ 2)
                   (apply gx#core-resolve-module-path__opt-lambda10973
                          _g11526_))
                  (else (error "No clause matching arguments" _g11526_))))))))
  (define gx#core-resolve-library-module-path
    (lambda (_libpath10915_)
      (let ((_spath10917_ (symbol->string (gx#stx-e _libpath10915_))))
        (let ((_spath10919_
               (substring _spath10917_ '1 (string-length _spath10917_))))
          (let ((_ext10921_ (path-extension _spath10919_)))
            (let ((_ssi10923_
                   (if (string-empty? _ext10921_)
                       (string-append _spath10919_ '".ssi")
                       (string-append
                        (path-strip-extension _spath10919_)
                        '".ssi"))))
              (let ((_src10925_
                     (if (string-empty? _ext10921_)
                         (string-append _spath10919_ '".ss")
                         _spath10919_)))
                (let ()
                  ((letrec ((_lp10928_
                             (lambda (_rest10930_)
                               (let ((_rest1093110940_ _rest10930_))
                                 (let ((_E1093410944_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _rest1093110940_))))
                                   (let ((_try-match1093310952_
                                          (lambda ()
                                            (let ((_K1093510949_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Cannot find library module"
                                                      _libpath10915_))))
                                              (if (##null? _rest1093110940_)
                                                  (_K1093510949_)
                                                  (_E1093410944_))))))
                                     (let ((_K1093610962_
                                            (lambda (_rest10955_ _dir10956_)
                                              (let ((_compiled-path10958_
                                                     (path-expand
                                                      _ssi10923_
                                                      _dir10956_)))
                                                (if (file-exists?
                                                     _compiled-path10958_)
                                                    (path-normalize
                                                     _compiled-path10958_)
                                                    (let ((_src-path10960_
                                                           (path-expand
                                                            _src10925_
                                                            _dir10956_)))
                                                      (if (file-exists?
                                                           _src-path10960_)
                                                          (path-normalize
                                                           _src-path10960_)
                                                          (_lp10928_
                                                           _rest10955_))))))))
                                       (if (##pair? _rest1093110940_)
                                           (let ((_hd1093710965_
                                                  (##car _rest1093110940_))
                                                 (_tl1093810967_
                                                  (##cdr _rest1093110940_)))
                                             (let ((_dir10970_ _hd1093710965_))
                                               (let ((_rest10972_
                                                      _tl1093810967_))
                                                 (_K1093610962_
                                                  _rest10972_
                                                  _dir10970_))))
                                           (_try-match1093310952_)))))))))
                     _lp10928_)
                   (gx#current-expander-module-library-path))))))))))
  (define gx#core-library-module-path?
    (lambda (_stx10913_) (gx#core-special-module-path? _stx10913_ '#\:)))
  (define gx#core-special-module-path?
    (lambda (_stx10908_ _char10909_)
      (if (gx#identifier? _stx10908_)
          (if (interned-symbol? (gx#stx-e _stx10908_))
              (let ((_str10911_ (symbol->string (gx#stx-e _stx10908_))))
                (if (fx> (string-length _str10911_) '1)
                    (eq? (string-ref _str10911_ '0) _char10909_)
                    '#f))
              '#f)
          '#f)))
  (define gx#core-bound-prelude?
    (lambda (_stx10902_)
      (gx#core-bound-identifier?__opt-lambda4203
       _stx10902_
       (lambda (_g1090310905_)
         (gx#expander-binding?__opt-lambda4240
          _g1090310905_
          gx#prelude-context?)))))
  (define gx#core-bound-module?
    (lambda (_stx10896_)
      (gx#core-bound-identifier?__opt-lambda4203
       _stx10896_
       (lambda (_g1089710899_)
         (gx#expander-binding?__opt-lambda4240
          _g1089710899_
          gx#module-context?)))))
  (define gx#core-bound-module-prelude?
    (lambda (_stx10883_)
      (let ((_module-prelude?10885_
             (lambda (_e10891_)
               (let ((_$e10893_
                      (##structure-instance-of?
                       _e10891_
                       'gx#module-context::t)))
                 (if _$e10893_
                     _$e10893_
                     (##structure-instance-of?
                      _e10891_
                      'gx#prelude-context::t))))))
        (gx#core-bound-identifier?__opt-lambda4203
         _stx10883_
         (lambda (_g1088610888_)
           (gx#expander-binding?__opt-lambda4240
            _g1088610888_
            _module-prelude?10885_))))))
  (begin
    (define gx#core-bind-import!__opt-lambda10811
      (lambda (_in10813_ _ctx10814_ _force-weak?10815_)
        (let ((_in1081610825_ _in10813_))
          (let ((_E1081810829_
                 (lambda () (error '"No clause matching" _in1081610825_))))
            (let ((_K1081910842_
                   (lambda (_weak?10832_ _phi10833_ _key10834_ _source10835_)
                     (gx#core-bind!__opt-lambda4479
                      _key10834_
                      (let ((_e10837_
                             (gx#core-resolve-module-export _source10835_)))
                        (##structure
                         gx#import-binding::t
                         (##structure-ref _e10837_ '1 gx#binding::t '#f)
                         _key10834_
                         _phi10833_
                         _e10837_
                         (##structure-ref
                          _source10835_
                          '1
                          gx#module-export::t
                          '#f)
                         (let ((_$e10839_ _force-weak?10815_))
                           (if _$e10839_ _$e10839_ _weak?10832_))))
                      gx#core-context-rebind?
                      _phi10833_
                      _ctx10814_))))
              (if (##structure-direct-instance-of?
                   _in1081610825_
                   (##type-id gx#module-import::t))
                  (let ((_e1082010845_ (##vector-ref _in1081610825_ '1)))
                    (let ((_source10848_ _e1082010845_))
                      (let ((_e1082110850_ (##vector-ref _in1081610825_ '2)))
                        (let ((_key10853_ _e1082110850_))
                          (let ((_e1082210855_
                                 (##vector-ref _in1081610825_ '3)))
                            (let ((_phi10858_ _e1082210855_))
                              (let ((_e1082310860_
                                     (##vector-ref _in1081610825_ '4)))
                                (let ((_weak?10863_ _e1082310860_))
                                  (_K1081910842_
                                   _weak?10863_
                                   _phi10858_
                                   _key10853_
                                   _source10848_)))))))))
                  (_E1081810829_)))))))
    (begin
      (define gx#core-bind-import!__0
        (lambda (_in10868_)
          (let ((_ctx10870_ (gx#current-expander-context)))
            (let ((_force-weak?10872_ '#f))
              (gx#core-bind-import!__opt-lambda10811
               _in10868_
               _ctx10870_
               _force-weak?10872_)))))
      (define gx#core-bind-import!__1
        (lambda (_in10874_ _ctx10875_)
          (let ((_force-weak?10877_ '#f))
            (gx#core-bind-import!__opt-lambda10811
             _in10874_
             _ctx10875_
             _force-weak?10877_))))
      (define gx#core-bind-import!
        (lambda _g11528_
          (let ((_g11527_ (length _g11528_)))
            (cond ((fx= _g11527_ 1) (apply gx#core-bind-import!__0 _g11528_))
                  ((fx= _g11527_ 2) (apply gx#core-bind-import!__1 _g11528_))
                  ((fx= _g11527_ 3)
                   (apply gx#core-bind-import!__opt-lambda10811 _g11528_))
                  (else (error "No clause matching arguments" _g11528_))))))))
  (begin
    (define gx#core-bind-weak-import!__opt-lambda10797
      (lambda (_in10799_ _ctx10800_)
        (gx#core-bind-import!__opt-lambda10811 _in10799_ _ctx10800_ '#t)))
    (begin
      (define gx#core-bind-weak-import!__0
        (lambda (_in10805_)
          (let ((_ctx10807_ (gx#current-expander-context)))
            (gx#core-bind-weak-import!__opt-lambda10797
             _in10805_
             _ctx10807_))))
      (define gx#core-bind-weak-import!
        (lambda _g11530_
          (let ((_g11529_ (length _g11530_)))
            (cond ((fx= _g11529_ 1)
                   (apply gx#core-bind-weak-import!__0 _g11530_))
                  ((fx= _g11529_ 2)
                   (apply gx#core-bind-weak-import!__opt-lambda10797 _g11530_))
                  (else (error "No clause matching arguments" _g11530_))))))))
  (define gx#core-resolve-module-export
    (lambda (_out10690_)
      (let ((_subst10692_
             (lambda (_key10738_)
               (let ((_key1073910747_ _key10738_))
                 (let ((_E1074210751_
                        (lambda ()
                          (error '"No clause matching" _key1073910747_))))
                   (let ((_else1074110755_ (lambda () _key10738_)))
                     (let ((_K1074310786_
                            (lambda (_mark10758_ _id10759_)
                              (let ((_mark1076010766_ _mark10758_))
                                (let ((_E1076210770_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _mark1076010766_))))
                                  (let ((_K1076310778_
                                         (lambda (_subst10773_)
                                           (let ((_$e10775_
                                                  (if _subst10773_
                                                      (table-ref
                                                       _subst10773_
                                                       _id10759_
                                                       '#f)
                                                      '#f)))
                                             (if _$e10775_
                                                 _$e10775_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal key; missing substitution"
                                                  _key10738_))))))
                                    (if (##structure-instance-of?
                                         _mark1076010766_
                                         (##type-id gx#expander-mark::t))
                                        (let ((_e1076410781_
                                               (##vector-ref
                                                _mark1076010766_
                                                '1)))
                                          (let ((_subst10784_ _e1076410781_))
                                            (_K1076310778_ _subst10784_)))
                                        (_E1076210770_))))))))
                       (if (##pair? _key1073910747_)
                           (let ((_hd1074410789_ (##car _key1073910747_))
                                 (_tl1074510791_ (##cdr _key1073910747_)))
                             (let ((_id10794_ _hd1074410789_))
                               (let ((_mark10796_ _tl1074510791_))
                                 (_K1074310786_ _mark10796_ _id10794_))))
                           (_else1074110755_)))))))))
        (let ((_out1069310703_ _out10690_))
          (let ((_E1069510707_
                 (lambda () (error '"No clause matching" _out1069310703_))))
            (let ((_K1069610714_
                   (lambda (_phi10710_ _key10711_ _ctx10712_)
                     (gx#core-context-resolve
                      (gx#core-context-shift _ctx10712_ _phi10710_)
                      (_subst10692_ _key10711_)))))
              (if (##structure-direct-instance-of?
                   _out1069310703_
                   (##type-id gx#module-export::t))
                  (let ((_e1069710717_ (##vector-ref _out1069310703_ '1)))
                    (let ((_ctx10720_ _e1069710717_))
                      (let ((_e1069810722_ (##vector-ref _out1069310703_ '2)))
                        (let ((_key10725_ _e1069810722_))
                          (let ((_e1069910727_
                                 (##vector-ref _out1069310703_ '3)))
                            (let ((_phi10730_ _e1069910727_))
                              (let ((_e1070010732_
                                     (##vector-ref _out1069310703_ '4)))
                                (let ((_e1070110735_
                                       (##vector-ref _out1069310703_ '5)))
                                  (_K1069610714_
                                   _phi10730_
                                   _key10725_
                                   _ctx10720_)))))))))
                  (_E1069510707_))))))))
  (begin
    (define gx#core-module-export->import__opt-lambda10613
      (lambda (_out10615_ _rename10616_ _dphi10617_)
        (let ((_out1061810628_ _out10615_))
          (let ((_E1062010632_
                 (lambda () (error '"No clause matching" _out1061810628_))))
            (let ((_K1062110644_
                   (lambda (_weak?10635_
                            _name10636_
                            _phi10637_
                            _key10638_
                            _ctx10639_)
                     (##structure
                      gx#module-import::t
                      _out10615_
                      (let ((_$e10641_ _rename10616_))
                        (if _$e10641_ _$e10641_ _name10636_))
                      (fx+ _phi10637_ _dphi10617_)
                      _weak?10635_))))
              (if (##structure-direct-instance-of?
                   _out1061810628_
                   (##type-id gx#module-export::t))
                  (let ((_e1062210647_ (##vector-ref _out1061810628_ '1)))
                    (let ((_ctx10650_ _e1062210647_))
                      (let ((_e1062310652_ (##vector-ref _out1061810628_ '2)))
                        (let ((_key10655_ _e1062310652_))
                          (let ((_e1062410657_
                                 (##vector-ref _out1061810628_ '3)))
                            (let ((_phi10660_ _e1062410657_))
                              (let ((_e1062510662_
                                     (##vector-ref _out1061810628_ '4)))
                                (let ((_name10665_ _e1062510662_))
                                  (let ((_e1062610667_
                                         (##vector-ref _out1061810628_ '5)))
                                    (let ((_weak?10670_ _e1062610667_))
                                      (_K1062110644_
                                       _weak?10670_
                                       _name10665_
                                       _phi10660_
                                       _key10655_
                                       _ctx10650_)))))))))))
                  (_E1062010632_)))))))
    (begin
      (define gx#core-module-export->import__0
        (lambda (_out10675_)
          (let ((_rename10677_ '#f))
            (let ((_dphi10679_ '0))
              (gx#core-module-export->import__opt-lambda10613
               _out10675_
               _rename10677_
               _dphi10679_)))))
      (define gx#core-module-export->import__1
        (lambda (_out10681_ _rename10682_)
          (let ((_dphi10684_ '0))
            (gx#core-module-export->import__opt-lambda10613
             _out10681_
             _rename10682_
             _dphi10684_))))
      (define gx#core-module-export->import
        (lambda _g11532_
          (let ((_g11531_ (length _g11532_)))
            (cond ((fx= _g11531_ 1)
                   (apply gx#core-module-export->import__0 _g11532_))
                  ((fx= _g11531_ 2)
                   (apply gx#core-module-export->import__1 _g11532_))
                  ((fx= _g11531_ 3)
                   (apply gx#core-module-export->import__opt-lambda10613
                          _g11532_))
                  (else (error "No clause matching arguments" _g11532_))))))))
  (define gx#core-expand-module%
    (lambda (_stx10543_)
      (let ((_make-context10545_
             (lambda (_id10596_)
               (let ((_super10598_ (gx#current-expander-context)))
                 (let ((_bind-id10600_ (gx#stx-e _id10596_)))
                   (let ((_mod-id10602_
                          (if (##structure-instance-of?
                               _super10598_
                               'gx#module-context::t)
                              (make-symbol
                               (##structure-ref
                                _super10598_
                                '1
                                gx#expander-context::t
                                '#f)
                               '"::"
                               _bind-id10600_)
                              _bind-id10600_)))
                     (let ((_ns10604_ (symbol->string _mod-id10602_)))
                       (let ((_path10611_
                              (if (##structure-instance-of?
                                   _super10598_
                                   'gx#module-context::t)
                                  (let ((_path10606_
                                         (##structure-ref
                                          _super10598_
                                          '7
                                          gx#module-context::t
                                          '#f)))
                                    (if (let ((_$e10608_ (pair? _path10606_)))
                                          (if _$e10608_
                                              _$e10608_
                                              (null? _path10606_)))
                                        (cons _bind-id10600_ _path10606_)
                                        (if (not _path10606_)
                                            _bind-id10600_
                                            (cons _bind-id10600_
                                                  (cons _path10606_ '())))))
                                  _bind-id10600_)))
                         (let ()
                           (let ((__obj11514
                                  (make-object gx#module-context::t '11)))
                             (begin
                               (gx#module-context:::init!
                                __obj11514
                                _mod-id10602_
                                _super10598_
                                _ns10604_
                                _path10611_)
                               __obj11514)))))))))))
        (let ((_e1054610556_ _stx10543_))
          (let ((_E1054810560_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e1054610556_))))
            (let ((_E1054710592_
                   (lambda ()
                     (if (gx#stx-pair? _e1054610556_)
                         (let ((_e1054910564_ (gx#syntax-e _e1054610556_)))
                           (let ((_hd1055010567_ (##car _e1054910564_))
                                 (_tl1055110569_ (##cdr _e1054910564_)))
                             (if (gx#stx-pair? _tl1055110569_)
                                 (let ((_e1055210572_
                                        (gx#syntax-e _tl1055110569_)))
                                   (let ((_hd1055310575_ (##car _e1055210572_))
                                         (_tl1055410577_
                                          (##cdr _e1055210572_)))
                                     (let ((_id10580_ _hd1055310575_))
                                       (let ((_body10582_ _tl1055410577_))
                                         (if (if (gx#identifier? _id10580_)
                                                 (gx#stx-list? _body10582_)
                                                 '#f)
                                             (let ((_ctx10584_
                                                    (_make-context10545_
                                                     _id10580_)))
                                               (let ((_body10586_
                                                      (gx#core-expand-module-begin
                                                       _body10582_
                                                       _ctx10584_)))
                                                 (let ((_body10588_
                                                        (gx#core-quote-syntax__1
                                                         (gx#core-cons
                                                          '%#begin
                                                          _body10586_)
                                                         (gx#stx-source
                                                          _stx10543_))))
                                                   (let ()
                                                     (begin
                                                       (##structure-set!
                                                        _ctx10584_
                                                        (make-promise
                                                         (lambda ()
                                                           (gx#eval-syntax*
                                                            _body10588_)))
                                                        '10
                                                        gx#module-context::t
                                                        '#f)
                                                       (##structure-set!
                                                        _ctx10584_
                                                        _body10588_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)
                                                       (gx#core-bind-syntax!__0
                                                        _id10580_
                                                        _ctx10584_)
                                                       (gx#core-quote-syntax__1
                                                        (gx#core-list
                                                         '%#module
                                                         (gx#core-quote-syntax__0
                                                          _id10580_)
                                                         _body10588_)
                                                        (gx#stx-source
                                                         _stx10543_)))))))
                                             (_E1054810560_))))))
                                 (_E1054810560_))))
                         (_E1054810560_)))))
              (let () (_E1054710592_))))))))
  (define gx#core-expand-module-begin
    (lambda (_body10509_ _ctx10510_)
      (call-with-parameters
       (lambda ()
         (begin
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let ((_stx10513_
                  (gx#core-expand-head (cons '%%begin-module _body10509_))))
             (let ((_e1051410521_ _stx10513_))
               (let ((_E1051610525_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module body expansion"
                         _stx10513_))))
                 (let ((_E1051510539_
                        (lambda ()
                          (if (gx#stx-pair? _e1051410521_)
                              (let ((_e1051710529_
                                     (gx#syntax-e _e1051410521_)))
                                (let ((_hd1051810532_ (##car _e1051710529_))
                                      (_tl1051910534_ (##cdr _e1051710529_)))
                                  (if (if (gx#identifier? _hd1051810532_)
                                          (gx#core-identifier=?
                                           _hd1051810532_
                                           '%#begin-module)
                                          '#f)
                                      (let ((_body10537_ _tl1051910534_))
                                        (if '#t
                                            (if (gx#sealed-syntax? _stx10513_)
                                                _body10537_
                                                (gx#core-expand-module-body
                                                 _body10537_))
                                            (_E1051610525_)))
                                      (_E1051610525_))))
                              (_E1051610525_)))))
                   (let () (_E1051510539_))))))))
       gx#current-expander-context
       _ctx10510_
       gx#current-expander-phi
       '0)))
  (define gx#core-expand-module-body
    (lambda (_body10305_)
      (let ((_expand-special10307_
             (lambda (_hd10436_ _K10437_ _rest10438_ _r10439_)
               (let ((_e1044010457_ _hd10436_))
                 (let ((_E1045210461_
                        (lambda ()
                          (_K10437_
                           _rest10438_
                           (cons (gx#core-expand-top _hd10436_) _r10439_)))))
                   (let ((_E1044210473_
                          (lambda ()
                            (if (gx#stx-pair? _e1044010457_)
                                (let ((_e1045310465_
                                       (gx#syntax-e _e1044010457_)))
                                  (let ((_hd1045410468_ (##car _e1045310465_))
                                        (_tl1045510470_ (##cdr _e1045310465_)))
                                    (if (if (gx#identifier? _hd1045410468_)
                                            (gx#core-identifier=?
                                             _hd1045410468_
                                             '%#export)
                                            '#f)
                                        (if '#t
                                            (_K10437_
                                             _rest10438_
                                             (cons _hd10436_ _r10439_))
                                            (_E1045210461_))
                                        (_E1045210461_))))
                                (_E1045210461_)))))
                     (let ((_E1044110505_
                            (lambda ()
                              (if (gx#stx-pair? _e1044010457_)
                                  (let ((_e1044310477_
                                         (gx#syntax-e _e1044010457_)))
                                    (let ((_hd1044410480_
                                           (##car _e1044310477_))
                                          (_tl1044510482_
                                           (##cdr _e1044310477_)))
                                      (if (if (gx#identifier? _hd1044410480_)
                                              (gx#core-identifier=?
                                               _hd1044410480_
                                               '%#define-values)
                                              '#f)
                                          (if (gx#stx-pair? _tl1044510482_)
                                              (let ((_e1044610485_
                                                     (gx#syntax-e
                                                      _tl1044510482_)))
                                                (let ((_hd1044710488_
                                                       (##car _e1044610485_))
                                                      (_tl1044810490_
                                                       (##cdr _e1044610485_)))
                                                  (let ((_hd-bind10493_
                                                         _hd1044710488_))
                                                    (if (gx#stx-pair?
                                                         _tl1044810490_)
                                                        (let ((_e1044910495_
                                                               (gx#syntax-e
                                                                _tl1044810490_)))
                                                          (let ((_hd1045010498_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1044910495_))
                        (_tl1045110500_ (##cdr _e1044910495_)))
                    (let ((_expr10503_ _hd1045010498_))
                      (if (gx#stx-null? _tl1045110500_)
                          (if (gx#core-bind-values? _hd-bind10493_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind10493_)
                                (_K10437_
                                 _rest10438_
                                 (cons _hd10436_ _r10439_)))
                              (_E1044210473_))
                          (_E1044210473_)))))
                (_E1044210473_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1044210473_))
                                          (_E1044210473_))))
                                  (_E1044210473_)))))
                       (let () (_E1044110505_)))))))))
        (let ((_expand-body10308_
               (lambda (_rbody10310_)
                 ((letrec ((_lp10312_
                            (lambda (_rest10314_ _body10315_)
                              (let ((_rest1031610324_ _rest10314_))
                                (let ((_E1031910328_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _rest1031610324_))))
                                  (let ((_else1031810332_
                                         (lambda () _body10315_)))
                                    (let ((_K1032010424_
                                           (lambda (_rest10335_ _hd10336_)
                                             (let ((_e1033710358_ _hd10336_))
                                               (let ((_E1035310362_
                                                      (lambda ()
                                                        (_lp10312_
                                                         _rest10335_
                                                         (cons (gx#core-expand-expression
                                                                _hd10336_)
                                                               _body10315_)))))
                                                 (let ((_E1034910376_
                                                        (lambda ()
                                                          (if (gx#stx-pair?
                                                               _e1033710358_)
                                                              (let ((_e1035410366_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _e1033710358_)))
                        (let ((_hd1035510369_ (##car _e1035410366_))
                              (_tl1035610371_ (##cdr _e1035410366_)))
                          (let ((_form10374_ _hd1035510369_))
                            (if (gx#core-bound-identifier?__opt-lambda4203
                                 _form10374_
                                 gx#special-form-binding?)
                                (_lp10312_
                                 _rest10335_
                                 (cons _hd10336_ _body10315_))
                                (_E1035310362_)))))
                      (_E1035310362_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_E1033910388_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e1033710358_)
                        (let ((_e1035010380_ (gx#syntax-e _e1033710358_)))
                          (let ((_hd1035110383_ (##car _e1035010380_))
                                (_tl1035210385_ (##cdr _e1035010380_)))
                            (if (if (gx#identifier? _hd1035110383_)
                                    (gx#core-identifier=?
                                     _hd1035110383_
                                     '%#export)
                                    '#f)
                                (if '#t
                                    (_lp10312_
                                     _rest10335_
                                     (cons (gx#core-expand-export%__0
                                            _hd10336_)
                                           _body10315_))
                                    (_E1034910376_))
                                (_E1034910376_))))
                        (_E1034910376_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_E1033810420_
                                                            (lambda ()
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e1033710358_)
                          (let ((_e1034010392_ (gx#syntax-e _e1033710358_)))
                            (let ((_hd1034110395_ (##car _e1034010392_))
                                  (_tl1034210397_ (##cdr _e1034010392_)))
                              (if (if (gx#identifier? _hd1034110395_)
                                      (gx#core-identifier=?
                                       _hd1034110395_
                                       '%#define-values)
                                      '#f)
                                  (if (gx#stx-pair? _tl1034210397_)
                                      (let ((_e1034310400_
                                             (gx#syntax-e _tl1034210397_)))
                                        (let ((_hd1034410403_
                                               (##car _e1034310400_))
                                              (_tl1034510405_
                                               (##cdr _e1034310400_)))
                                          (let ((_hd-bind10408_
                                                 _hd1034410403_))
                                            (if (gx#stx-pair? _tl1034510405_)
                                                (let ((_e1034610410_
                                                       (gx#syntax-e
                                                        _tl1034510405_)))
                                                  (let ((_hd1034710413_
                                                         (##car _e1034610410_))
                                                        (_tl1034810415_
                                                         (##cdr _e1034610410_)))
                                                    (let ((_expr10418_
                                                           _hd1034710413_))
                                                      (if (gx#stx-null?
                                                           _tl1034810415_)
                                                          (if '#t
                                                              (_lp10312_
                                                               _rest10335_
                                                               (cons (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#core-list
                               '%#define-values
                               (gx#core-quote-bind-values _hd-bind10408_)
                               (gx#core-expand-expression _expr10418_))
                              (gx#stx-source _hd10336_))
                             _body10315_))
                      (_E1033910388_))
                  (_E1033910388_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1033910388_)))))
                                      (_E1033910388_))
                                  (_E1033910388_))))
                          (_E1033910388_)))))
               (let () (_E1033810420_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (##pair? _rest1031610324_)
                                          (let ((_hd1032110427_
                                                 (##car _rest1031610324_))
                                                (_tl1032210429_
                                                 (##cdr _rest1031610324_)))
                                            (let ((_hd10432_ _hd1032110427_))
                                              (let ((_rest10434_
                                                     _tl1032210429_))
                                                (_K1032010424_
                                                 _rest10434_
                                                 _hd10432_))))
                                          (_else1031810332_)))))))))
                    _lp10312_)
                  _rbody10310_
                  '()))))
          (_expand-body10308_
           (gx#core-expand-block__opt-lambda5257
            (cons '%#begin-module _body10305_)
            _expand-special10307_
            '#f
            values))))))
  (define gx#core-expand-import/export
    (lambda (_stx10148_
             _expanded?10149_
             _method10150_
             _current-phi10151_
             _expand110152_)
      (letrec ((_K10154_
                (lambda (_rest10272_ _r10273_)
                  (let ((_e1027410281_ _rest10272_))
                    (let ((_E1027610285_ (lambda () _r10273_)))
                      (let ((_E1027510301_
                             (lambda ()
                               (if (gx#stx-pair? _e1027410281_)
                                   (let ((_e1027710289_
                                          (gx#syntax-e _e1027410281_)))
                                     (let ((_hd1027810292_
                                            (##car _e1027710289_))
                                           (_tl1027910294_
                                            (##cdr _e1027710289_)))
                                       (let ((_hd10297_ _hd1027810292_))
                                         (let ((_rest10299_ _tl1027910294_))
                                           (if '#t
                                               (_step10155_
                                                _hd10297_
                                                _rest10299_
                                                _r10273_)
                                               (_E1027610285_))))))
                                   (_E1027610285_)))))
                        (let () (_E1027510301_)))))))
               (_step10155_
                (lambda (_hd10186_ _rest10187_ _r10188_)
                  (let ((_e1018910207_ _hd10186_))
                    (let ((_E1020210211_
                           (lambda ()
                             (if (_expanded?10149_ (gx#stx-e _hd10186_))
                                 (_K10154_
                                  _rest10187_
                                  (cons (gx#stx-e _hd10186_) _r10188_))
                                 (_expand110152_
                                  _hd10186_
                                  _K10154_
                                  _rest10187_
                                  _r10188_)))))
                      (let ((_E1019810227_
                             (lambda ()
                               (if (gx#stx-pair? _e1018910207_)
                                   (let ((_e1020310215_
                                          (gx#syntax-e _e1018910207_)))
                                     (let ((_hd1020410218_
                                            (##car _e1020310215_))
                                           (_tl1020510220_
                                            (##cdr _e1020310215_)))
                                       (let ((_macro10223_ _hd1020410218_))
                                         (let ((_body10225_ _tl1020510220_))
                                           (if (gx#core-bound-identifier?__opt-lambda4203
                                                _macro10223_
                                                gx#syntax-binding?)
                                               (_K10154_
                                                (cons (gx#core-apply-expander__opt-lambda4975
                                                       (gx#syntax-local-e__0
                                                        _macro10223_)
                                                       _hd10186_
                                                       _method10150_)
                                                      _rest10187_)
                                                _r10188_)
                                               (_E1020210211_))))))
                                   (_E1020210211_)))))
                        (let ((_E1019110241_
                               (lambda ()
                                 (if (gx#stx-pair? _e1018910207_)
                                     (let ((_e1019910231_
                                            (gx#syntax-e _e1018910207_)))
                                       (let ((_hd1020010234_
                                              (##car _e1019910231_))
                                             (_tl1020110236_
                                              (##cdr _e1019910231_)))
                                         (if (eq? (gx#stx-e _hd1020010234_)
                                                  'begin:)
                                             (let ((_body10239_
                                                    _tl1020110236_))
                                               (if '#t
                                                   (_K10154_
                                                    (gx#stx-foldr
                                                     cons
                                                     _rest10187_
                                                     _body10239_)
                                                    _r10188_)
                                                   (_E1019810227_)))
                                             (_E1019810227_))))
                                     (_E1019810227_)))))
                          (let ((_E1019010268_
                                 (lambda ()
                                   (if (gx#stx-pair? _e1018910207_)
                                       (let ((_e1019210245_
                                              (gx#syntax-e _e1018910207_)))
                                         (let ((_hd1019310248_
                                                (##car _e1019210245_))
                                               (_tl1019410250_
                                                (##cdr _e1019210245_)))
                                           (if (eq? (gx#stx-e _hd1019310248_)
                                                    'phi:)
                                               (if (gx#stx-pair?
                                                    _tl1019410250_)
                                                   (let ((_e1019510253_
                                                          (gx#syntax-e
                                                           _tl1019410250_)))
                                                     (let ((_hd1019610256_
                                                            (##car _e1019510253_))
                                                           (_tl1019710258_
                                                            (##cdr _e1019510253_)))
                                                       (let ((_dphi10261_
                                                              _hd1019610256_))
                                                         (let ((_body10263_
                                                                _tl1019710258_))
                                                           (if (gx#stx-fixnum?
                                                                _dphi10261_)
                                                               (let ((_rbody10266_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (call-with-parameters
                               (lambda () (_K10154_ _body10263_ '()))
                               _current-phi10151_
                               (fx+ (gx#stx-e _dphi10261_)
                                    (_current-phi10151_)))))
                         (_K10154_
                          _rest10187_
                          (foldr1 cons _r10188_ _rbody10266_)))
                       (_E1019110241_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1019110241_))
                                               (_E1019110241_))))
                                       (_E1019110241_)))))
                            (let () (_E1019010268_))))))))))
        (let ((_e1015610163_ _stx10148_))
          (let ((_E1015810167_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e1015610163_))))
            (let ((_E1015710182_
                   (lambda ()
                     (if (gx#stx-pair? _e1015610163_)
                         (let ((_e1015910171_ (gx#syntax-e _e1015610163_)))
                           (let ((_hd1016010174_ (##car _e1015910171_))
                                 (_tl1016110176_ (##cdr _e1015910171_)))
                             (let ((_body10179_ _tl1016110176_))
                               (if '#t
                                   (if (_current-phi10151_)
                                       (_K10154_ _body10179_ '())
                                       (call-with-parameters
                                        (lambda () (_K10154_ _body10179_ '()))
                                        _current-phi10151_
                                        (gx#current-expander-phi)))
                                   (_E1015810167_)))))
                         (_E1015810167_)))))
              (let () (_E1015710182_))))))))
  (begin
    (define gx#core-expand-import%__opt-lambda9685
      (lambda (_stx9687_ _internal-expand?9688_)
        (let ((_import19691_
               (lambda (_ctx10122_ _K10123_ _rest10124_ _r10125_)
                 (let ((_dphi10127_
                        (fx- (gx#current-import-expander-phi)
                             (gx#current-expander-phi))))
                   (_K10123_
                    _rest10124_
                    (cons (##structure
                           gx#import-set::t
                           _ctx10122_
                           _dphi10127_
                           (map (lambda (_g1012810130_)
                                  (gx#core-module-export->import__opt-lambda10613
                                   _g1012810130_
                                   '#f
                                   _dphi10127_))
                                (##structure-ref
                                 _ctx10122_
                                 '9
                                 gx#module-context::t
                                 '#f)))
                          _r10125_))))))
          (let ((_import-spec?9692_
                 (lambda (_hd10079_)
                   (let ((_e1008010090_ _hd10079_))
                     (let ((_E1008210094_ (lambda () '#f)))
                       (let ((_E1008110118_
                              (lambda ()
                                (if (gx#stx-pair? _e1008010090_)
                                    (let ((_e1008310098_
                                           (gx#syntax-e _e1008010090_)))
                                      (let ((_hd1008410101_
                                             (##car _e1008310098_))
                                            (_tl1008510103_
                                             (##cdr _e1008310098_)))
                                        (if (eq? (gx#stx-e _hd1008410101_)
                                                 'spec:)
                                            (if (gx#stx-pair? _tl1008510103_)
                                                (let ((_e1008610106_
                                                       (gx#syntax-e
                                                        _tl1008510103_)))
                                                  (let ((_hd1008710109_
                                                         (##car _e1008610106_))
                                                        (_tl1008810111_
                                                         (##cdr _e1008610106_)))
                                                    (let ((_spath10114_
                                                           _hd1008710109_))
                                                      (let ((_specs10116_
                                                             _tl1008810111_))
                                                        (if '#t
                                                            '#t
                                                            (_E1008210094_))))))
                                                (_E1008210094_))
                                            (_E1008210094_))))
                                    (_E1008210094_)))))
                         (let () (_E1008110118_))))))))
            (let ((_import-submodule?9693_
                   (lambda (_hd10036_)
                     (let ((_e1003710047_ _hd10036_))
                       (let ((_E1003910051_ (lambda () '#f)))
                         (let ((_E1003810075_
                                (lambda ()
                                  (if (gx#stx-pair? _e1003710047_)
                                      (let ((_e1004010055_
                                             (gx#syntax-e _e1003710047_)))
                                        (let ((_hd1004110058_
                                               (##car _e1004010055_))
                                              (_tl1004210060_
                                               (##cdr _e1004010055_)))
                                          (if (eq? (gx#stx-e _hd1004110058_)
                                                   'in:)
                                              (if (gx#stx-pair? _tl1004210060_)
                                                  (let ((_e1004310063_
                                                         (gx#syntax-e
                                                          _tl1004210060_)))
                                                    (let ((_hd1004410066_
                                                           (##car _e1004310063_))
                                                          (_tl1004510068_
                                                           (##cdr _e1004310063_)))
                                                      (let ((_top10071_
                                                             _hd1004410066_))
                                                        (let ((_sub10073_
                                                               _tl1004510068_))
                                                          (if '#t
                                                              '#t
                                                              (_E1003910051_))))))
                                                  (_E1003910051_))
                                              (_E1003910051_))))
                                      (_E1003910051_)))))
                           (let () (_E1003810075_))))))))
              (let ((_import-runtime?9694_
                     (lambda (_hd9993_)
                       (let ((_e999410004_ _hd9993_))
                         (let ((_E999610008_ (lambda () '#f)))
                           (let ((_E999510032_
                                  (lambda ()
                                    (if (gx#stx-pair? _e999410004_)
                                        (let ((_e999710012_
                                               (gx#syntax-e _e999410004_)))
                                          (let ((_hd999810015_
                                                 (##car _e999710012_))
                                                (_tl999910017_
                                                 (##cdr _e999710012_)))
                                            (if (eq? (gx#stx-e _hd999810015_)
                                                     'runtime:)
                                                (if (gx#stx-pair?
                                                     _tl999910017_)
                                                    (let ((_e1000010020_
                                                           (gx#syntax-e
                                                            _tl999910017_)))
                                                      (let ((_hd1000110023_
                                                             (##car _e1000010020_))
                                                            (_tl1000210025_
                                                             (##cdr _e1000010020_)))
                                                        (let ((_top10028_
                                                               _hd1000110023_))
                                                          (let ((_spath10030_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1000210025_))
                    (if '#t '#t (_E999610008_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E999610008_))
                                                (_E999610008_))))
                                        (_E999610008_)))))
                             (let () (_E999510032_))))))))
                (let ((_import-spec-source9698_
                       (lambda (_spath9764_)
                         (gx#core-import-nested-module
                          _spath9764_
                          _stx9687_))))
                  (let ((_import!9699_
                         (lambda (_rbody9712_)
                           (let ((_current-ctx9714_
                                  (gx#current-expander-context)))
                             (let ((_deps9715_ (make-hash-table-eq)))
                               (let ((_bind!9716_
                                      (lambda (_hd9762_)
                                        (begin
                                          (gx#core-bind-import!__1
                                           _hd9762_
                                           _current-ctx9714_)
                                          (if (if (fxpositive?
                                                   (##structure-ref
                                                    _hd9762_
                                                    '3
                                                    gx#module-import::t
                                                    '#f))
                                                  (fxzero? (##structure-ref
                                                            (##structure-ref
                                                             _hd9762_
                                                             '1
                                                             gx#module-import::t
                                                             '#f)
                                                            '3
                                                            gx#module-export::t
                                                            '#f))
                                                  '#f)
                                              (table-set!
                                               _deps9715_
                                               (##structure-ref
                                                (##structure-ref
                                                 _hd9762_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)
                                                '1
                                                gx#module-export::t
                                                '#f)
                                               '#t)
                                              '#!void)))))
                                 (let ((_fold-e9717_
                                        (lambda (_in9759_ _r9760_)
                                          (if (##structure-direct-instance-of?
                                               _in9759_
                                               'gx#module-import::t)
                                              (cons _in9759_ _r9760_)
                                              (if (##structure-direct-instance-of?
                                                   _in9759_
                                                   'gx#import-set::t)
                                                  (foldl1 cons
                                                          _r9760_
                                                          (##structure-ref
                                                           _in9759_
                                                           '3
                                                           gx#import-set::t
                                                           '#f))
                                                  _r9760_)))))
                                   ((letrec ((_lp9719_
                                              (lambda (_rest9721_ _body9722_)
                                                (let ((_rest97239731_
                                                       _rest9721_))
                                                  (let ((_E97269735_
                                                         (lambda ()
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _rest97239731_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_else97259741_
                                                           (lambda ()
                                                             (begin
                                                               (if (##structure-instance-of?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _current-ctx9714_
                            'gx#module-context::t)
                           (##structure-set!
                            _current-ctx9714_
                            (foldl1 _fold-e9717_
                                    (##structure-ref
                                     _current-ctx9714_
                                     '8
                                     gx#module-context::t
                                     '#f)
                                    _body9722_)
                            '8
                            gx#module-context::t
                            '#f)
                           '#!void)
                       (table-for-each
                        (lambda (_ctx9739_ _g11533_)
                          (gx#eval-module _ctx9739_))
                        _deps9715_)
                       _body9722_))))
              (let ((_K97279747_
                     (lambda (_rest9744_ _hd9745_)
                       (begin
                         (if (##structure-direct-instance-of?
                              _hd9745_
                              'gx#module-import::t)
                             (_bind!9716_ _hd9745_)
                             (if (##structure-direct-instance-of?
                                  _hd9745_
                                  'gx#import-set::t)
                                 (for-each
                                  _bind!9716_
                                  (##structure-ref
                                   _hd9745_
                                   '3
                                   gx#import-set::t
                                   '#f))
                                 (if (##structure-instance-of?
                                      _hd9745_
                                      'gx#module-context::t)
                                     '#!void
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Unexpected import"
                                      _stx9687_
                                      _hd9745_))))
                         (_lp9719_ _rest9744_ (cons _hd9745_ _body9722_))))))
                (if (##pair? _rest97239731_)
                    (let ((_hd97289750_ (##car _rest97239731_))
                          (_tl97299752_ (##cdr _rest97239731_)))
                      (let ((_hd9755_ _hd97289750_))
                        (let ((_rest9757_ _tl97299752_))
                          (_K97279747_ _rest9757_ _hd9755_))))
                    (_else97259741_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _lp9719_)
                                    _rbody9712_
                                    '()))))))))
                    (let ((_expanded-import?9700_
                           (lambda (_e9704_)
                             (let ((_$e9706_
                                    (##structure-direct-instance-of?
                                     _e9704_
                                     'gx#import-set::t)))
                               (if _$e9706_
                                   _$e9706_
                                   (let ((_$e9709_
                                          (##structure-direct-instance-of?
                                           _e9704_
                                           'gx#module-import::t)))
                                     (if _$e9709_
                                         _$e9709_
                                         (##structure-instance-of?
                                          _e9704_
                                          'gx#module-context::t))))))))
                      (let ((_import-submodule9695_
                             (lambda (_hd9960_ _K9961_ _rest9962_ _r9963_)
                               (let ((_e99649971_ _hd9960_))
                                 (let ((_E99669975_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _e99649971_))))
                                   (let ((_E99659989_
                                          (lambda ()
                                            (if (gx#stx-pair? _e99649971_)
                                                (let ((_e99679979_
                                                       (gx#syntax-e
                                                        _e99649971_)))
                                                  (let ((_hd99689982_
                                                         (##car _e99679979_))
                                                        (_tl99699984_
                                                         (##cdr _e99679979_)))
                                                    (let ((_spath9987_
                                                           _tl99699984_))
                                                      (if '#t
                                                          (_import19691_
                                                           (_import-spec-source9698_
                                                            _spath9987_)
                                                           _K9961_
                                                           _rest9962_
                                                           _r9963_)
                                                          (_E99669975_)))))
                                                (_E99669975_)))))
                                     (let () (_E99659989_))))))))
                        (let ((_import-runtime9696_
                               (lambda (_hd9927_ _K9928_ _rest9929_ _r9930_)
                                 (let ((_e99319938_ _hd9927_))
                                   (let ((_E99339942_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _e99319938_))))
                                     (let ((_E99329956_
                                            (lambda ()
                                              (if (gx#stx-pair? _e99319938_)
                                                  (let ((_e99349946_
                                                         (gx#syntax-e
                                                          _e99319938_)))
                                                    (let ((_hd99359949_
                                                           (##car _e99349946_))
                                                          (_tl99369951_
                                                           (##cdr _e99349946_)))
                                                      (let ((_spath9954_
                                                             _tl99369951_))
                                                        (if '#t
                                                            (_K9928_ _rest9929_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (_import-spec-source9698_ _spath9954_)
                                   _r9930_))
                    (_E99339942_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E99339942_)))))
                                       (let () (_E99329956_))))))))
                          (let ((_import-spec9697_
                                 (lambda (_hd9766_ _K9767_ _rest9768_ _r9769_)
                                   (let ((_e97709787_ _hd9766_))
                                     (let ((_E97799791_
                                            (lambda ()
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _e97709787_))))
                                       (let ((_E97729901_
                                              (lambda ()
                                                (if (gx#stx-pair? _e97709787_)
                                                    (let ((_e97809795_
                                                           (gx#syntax-e
                                                            _e97709787_)))
                                                      (let ((_hd97819798_
                                                             (##car _e97809795_))
                                                            (_tl97829800_
                                                             (##cdr _e97809795_)))
                                                        (if (gx#stx-pair?
                                                             _tl97829800_)
                                                            (let ((_e97839803_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl97829800_)))
                      (let ((_hd97849806_ (##car _e97839803_))
                            (_tl97859808_ (##cdr _e97839803_)))
                        (let ((_path9811_ _hd97849806_))
                          (let ((_specs9813_ _tl97859808_))
                            (if '#t
                                (let ((_src-ctx9815_
                                       (_import-spec-source9698_ _path9811_))
                                      (_exports9816_ (make-table))
                                      (_specs9817_
                                       (gx#syntax->list _specs9813_)))
                                  (begin
                                    (for-each
                                     (lambda (_out9819_)
                                       (table-set!
                                        _exports9816_
                                        (cons (##structure-ref
                                               _out9819_
                                               '3
                                               gx#module-export::t
                                               '#f)
                                              (##structure-ref
                                               _out9819_
                                               '4
                                               gx#module-export::t
                                               '#f))
                                        _out9819_))
                                     (##structure-ref
                                      _src-ctx9815_
                                      '9
                                      gx#module-context::t
                                      '#f))
                                    (_K9767_ _rest9768_
                                             (foldl1 (lambda (_spec9821_
                                                              _r9822_)
                                                       (let ((_e98239839_
                                                              _spec9821_))
                                                         (let ((_E98259843_
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _e98239839_))))
                   (let ((_E98249897_
                          (lambda ()
                            (if (gx#stx-pair? _e98239839_)
                                (let ((_e98269847_ (gx#syntax-e _e98239839_)))
                                  (let ((_hd98279850_ (##car _e98269847_))
                                        (_tl98289852_ (##cdr _e98269847_)))
                                    (let ((_phi9855_ _hd98279850_))
                                      (if (gx#stx-pair? _tl98289852_)
                                          (let ((_e98299857_
                                                 (gx#syntax-e _tl98289852_)))
                                            (let ((_hd98309860_
                                                   (##car _e98299857_))
                                                  (_tl98319862_
                                                   (##cdr _e98299857_)))
                                              (let ((_name9865_ _hd98309860_))
                                                (if (gx#stx-pair? _tl98319862_)
                                                    (let ((_e98329867_
                                                           (gx#syntax-e
                                                            _tl98319862_)))
                                                      (let ((_hd98339870_
                                                             (##car _e98329867_))
                                                            (_tl98349872_
                                                             (##cdr _e98329867_)))
                                                        (let ((_src-phi9875_
                                                               _hd98339870_))
                                                          (if (gx#stx-pair?
                                                               _tl98349872_)
                                                              (let ((_e98359877_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl98349872_)))
                        (let ((_hd98369880_ (##car _e98359877_))
                              (_tl98379882_ (##cdr _e98359877_)))
                          (let ((_src-name9885_ _hd98369880_))
                            (if (gx#stx-null? _tl98379882_)
                                (if (if (gx#stx-fixnum? _src-phi9875_)
                                        (if (gx#identifier? _src-name9885_)
                                            (if (gx#stx-fixnum? _phi9855_)
                                                (gx#identifier? _name9865_)
                                                '#f)
                                            '#f)
                                        '#f)
                                    (let ((_src-phi9887_
                                           (gx#stx-e _src-phi9875_))
                                          (_src-name9888_
                                           (gx#core-identifier-key
                                            _src-name9885_))
                                          (_phi9889_ (gx#stx-e _phi9855_))
                                          (_name9890_
                                           (gx#core-identifier-key
                                            _name9865_)))
                                      (let ((_$e9892_
                                             (table-ref
                                              _exports9816_
                                              (cons _src-phi9887_
                                                    _src-name9888_)
                                              '#f)))
                                        (if _$e9892_
                                            ((lambda (_out9895_)
                                               (cons (gx#core-module-export->import__opt-lambda10613
                                                      _out9895_
                                                      _name9890_
                                                      (fx- _phi9889_
                                                           _src-phi9887_))
                                                     _r9822_))
                                             _$e9892_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; no matching export"
                                             _stx9687_
                                             _hd9766_))))
                                    (_E98259843_))
                                (_E98259843_)))))
                      (_E98259843_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E98259843_)))))
                                          (_E98259843_)))))
                                (_E98259843_)))))
                     (let () (_E98249897_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _r9769_
                                                     _specs9817_))))
                                (_E97799791_))))))
                    (_E97799791_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E97799791_)))))
                                         (let ((_E97719923_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _e97709787_)
                                                      (let ((_e97739905_
                                                             (gx#syntax-e
                                                              _e97709787_)))
                                                        (let ((_hd97749908_
                                                               (##car _e97739905_))
                                                              (_tl97759910_
                                                               (##cdr _e97739905_)))
                                                          (if (gx#stx-pair?
                                                               _tl97759910_)
                                                              (let ((_e97769913_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl97759910_)))
                        (let ((_hd97779916_ (##car _e97769913_))
                              (_tl97789918_ (##cdr _e97769913_)))
                          (let ((_path9921_ _hd97779916_))
                            (if (gx#stx-null? _tl97789918_)
                                (if '#t
                                    (_K9767_ _rest9768_
                                             (cons (_import-spec-source9698_
                                                    _path9921_)
                                                   _r9769_))
                                    (_E97729901_))
                                (_E97729901_)))))
                      (_E97729901_))))
              (_E97729901_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let () (_E97719923_)))))))))
                            (let ((_expand19690_
                                   (lambda (_hd10133_
                                            _K10134_
                                            _rest10135_
                                            _r10136_)
                                     (if (gx#core-bound-module? _hd10133_)
                                         (_import19691_
                                          (gx#syntax-local-e__0 _hd10133_)
                                          _K10134_
                                          _rest10135_
                                          _r10136_)
                                         (if (gx#core-library-module-path?
                                              _hd10133_)
                                             (_import19691_
                                              (gx#import-module__0
                                               (gx#core-resolve-library-module-path
                                                _hd10133_))
                                              _K10134_
                                              _rest10135_
                                              _r10136_)
                                             (if (gx#stx-string? _hd10133_)
                                                 (_import19691_
                                                  (gx#import-module__0
                                                   (gx#core-resolve-module-path__opt-lambda10973
                                                    _hd10133_
                                                    (gx#stx-source _stx9687_)))
                                                  _K10134_
                                                  _rest10135_
                                                  _r10136_)
                                                 (if (##structure-instance-of?
                                                      (gx#stx-e _hd10133_)
                                                      'gx#module-context::t)
                                                     (_K10134_
                                                      _rest10135_
                                                      (cons (gx#stx-e
                                                             _hd10133_)
                                                            _r10136_))
                                                     (if (_import-spec?9692_
                                                          _hd10133_)
                                                         (_import-spec9697_
                                                          _hd10133_
                                                          _K10134_
                                                          _rest10135_
                                                          _r10136_)
                                                         (if (_import-submodule?9693_
                                                              _hd10133_)
                                                             (_import-submodule9695_
                                                              _hd10133_
                                                              _K10134_
                                                              _rest10135_
                                                              _r10136_)
                                                             (if (_import-runtime?9694_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd10133_)
                         (_import-runtime9696_
                          _hd10133_
                          _K10134_
                          _rest10135_
                          _r10136_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; illegal import"
                          _stx9687_
                          _hd10133_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (let ((_rbody9702_
                                     (gx#core-expand-import/export
                                      _stx9687_
                                      _expanded-import?9700_
                                      'apply-import-expander
                                      gx#current-import-expander-phi
                                      _expand19690_)))
                                (if _internal-expand?9688_
                                    (reverse _rbody9702_)
                                    (gx#core-quote-syntax__1
                                     (gx#core-cons
                                      '%#import
                                      (_import!9699_ _rbody9702_))
                                     (gx#stx-source _stx9687_)))))))))))))))))
    (begin
      (define gx#core-expand-import%__0
        (lambda (_stx10141_)
          (let ((_internal-expand?10143_ '#f))
            (gx#core-expand-import%__opt-lambda9685
             _stx10141_
             _internal-expand?10143_))))
      (define gx#core-expand-import%
        (lambda _g11535_
          (let ((_g11534_ (length _g11535_)))
            (cond ((fx= _g11534_ 1) (apply gx#core-expand-import%__0 _g11535_))
                  ((fx= _g11534_ 2)
                   (apply gx#core-expand-import%__opt-lambda9685 _g11535_))
                  (else (error "No clause matching arguments" _g11535_))))))))
  (define gx#core-import-nested-module
    (lambda (_spath9614_ _where9615_)
      (let ((_e96169623_ _spath9614_))
        (let ((_E96189627_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e96169623_))))
          (let ((_E96179682_
                 (lambda ()
                   (if (gx#stx-pair? _e96169623_)
                       (let ((_e96199631_ (gx#syntax-e _e96169623_)))
                         (let ((_hd96209634_ (##car _e96199631_))
                               (_tl96219636_ (##cdr _e96199631_)))
                           (let ((_origin9639_ _hd96209634_))
                             (let ((_sub9641_ _tl96219636_))
                               (if '#t
                                   (let ((_origin-ctx9643_
                                          (if (gx#stx-false? _origin9639_)
                                              (gx#current-expander-context)
                                              (gx#import-module__0
                                               _origin9639_))))
                                     ((letrec ((_lp9645_
                                                (lambda (_rest9647_ _ctx9648_)
                                                  (let ((_e96499656_
                                                         _rest9647_))
                                                    (let ((_E96519660_
                                                           (lambda ()
                                                             _ctx9648_)))
                                                      (let ((_E96509678_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _e96499656_)
                           (let ((_e96529664_ (gx#syntax-e _e96499656_)))
                             (let ((_hd96539667_ (##car _e96529664_))
                                   (_tl96549669_ (##cdr _e96529664_)))
                               (let ((_id9672_ _hd96539667_))
                                 (let ((_rest9674_ _tl96549669_))
                                   (if '#t
                                       (let ((_bind9676_
                                              (gx#resolve-identifier__opt-lambda4760
                                               _id9672_
                                               '0
                                               _ctx9648_)))
                                         (begin
                                           (if (if (##structure-direct-instance-of?
                                                    _bind9676_
                                                    'gx#syntax-binding::t)
                                                   (##structure-instance-of?
                                                    (##structure-ref
                                                     _bind9676_
                                                     '4
                                                     gx#syntax-binding::t
                                                     '#f)
                                                    'gx#module-context::t)
                                                   '#f)
                                               '#!void
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; not bound as module"
                                                _where9615_
                                                _spath9614_
                                                _id9672_))
                                           (_lp9645_
                                            _rest9674_
                                            (##structure-ref
                                             _bind9676_
                                             '4
                                             gx#syntax-binding::t
                                             '#f))))
                                       (_E96519660_))))))
                           (_E96519660_)))))
                (let () (_E96509678_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _lp9645_)
                                      _sub9641_
                                      _origin-ctx9643_))
                                   (_E96189627_))))))
                       (_E96189627_)))))
            (let () (_E96179682_)))))))
  (define gx#core-expand-import-source
    (lambda (_hd9612_)
      (gx#core-expand-import%__opt-lambda9685
       (cons 'import-internal% (cons _hd9612_ '()))
       '#t)))
  (begin
    (define gx#core-expand-export%__opt-lambda9194
      (lambda (_stx9196_ _internal-expand?9197_)
        (let ((_make-export__opt-lambda9558__1150311504_
               (lambda (_bind9560_ _phi9561_ _ctx9562_ _name9563_)
                 (let ((_key9565_
                        (##structure-ref _bind9560_ '2 gx#binding::t '#f)))
                   (let ((_export-key9567_
                          (if _name9563_
                              (gx#core-identifier-key _name9563_)
                              _key9565_)))
                     (let ()
                       (##structure
                        gx#module-export::t
                        _ctx9562_
                        _key9565_
                        _phi9561_
                        _export-key9567_
                        (let ((_$e9570_
                               (##structure-instance-of?
                                _bind9560_
                                'gx#extern-binding::t)))
                          (if _$e9570_
                              _$e9570_
                              (##structure-direct-instance-of?
                               _bind9560_
                               'gx#import-binding::t))))))))))
          (let ((_make-export__0__1150511508_
                 (lambda (_bind9576_)
                   (let ((_phi9578_ (gx#current-export-expander-phi)))
                     (let ((_ctx9580_ (gx#current-expander-context)))
                       (let ((_name9582_ '#f))
                         (_make-export__opt-lambda9558__1150311504_
                          _bind9576_
                          _phi9578_
                          _ctx9580_
                          _name9582_)))))))
            (let ((_make-export__1__1150611509_
                   (lambda (_bind9584_ _phi9585_)
                     (let ((_ctx9587_ (gx#current-expander-context)))
                       (let ((_name9589_ '#f))
                         (_make-export__opt-lambda9558__1150311504_
                          _bind9584_
                          _phi9585_
                          _ctx9587_
                          _name9589_))))))
              (let ((_make-export__2__1150711510_
                     (lambda (_bind9591_ _phi9592_ _ctx9593_)
                       (let ((_name9595_ '#f))
                         (_make-export__opt-lambda9558__1150311504_
                          _bind9591_
                          _phi9592_
                          _ctx9593_
                          _name9595_)))))
                (let ((_make-export9199_
                       (lambda _g11537_
                         (let ((_g11536_ (length _g11537_)))
                           (cond ((fx= _g11536_ 1)
                                  (apply _make-export__0__1150511508_
                                         _g11537_))
                                 ((fx= _g11536_ 2)
                                  (apply _make-export__1__1150611509_
                                         _g11537_))
                                 ((fx= _g11536_ 3)
                                  (apply _make-export__2__1150711510_
                                         _g11537_))
                                 ((fx= _g11536_ 4)
                                  (apply _make-export__opt-lambda9558__1150311504_
                                         _g11537_))
                                 (else
                                  (error "No clause matching arguments"
                                         _g11537_)))))))
                  (let ((_export-imports9201_
                         (lambda (_src9222_ _r9223_)
                           (let ((_current-ctx9225_
                                  (gx#current-expander-context)))
                             (let ((_current-phi9226_
                                    (gx#current-export-expander-phi)))
                               (let ((_import->export9227_
                                      (lambda (_in9235_)
                                        (let ((_in92369244_ _in9235_))
                                          (let ((_E92389248_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _in92369244_))))
                                            (let ((_K92399255_
                                                   (lambda (_phi9251_
                                                            _key9252_
                                                            _out9253_)
                                                     (if (fx= _phi9251_
                                                              _current-phi9226_)
                                                         (if (eq? _src9222_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##structure-ref
                           _out9253_
                           '1
                           gx#module-export::t
                           '#f))
                     (##structure
                      gx#module-export::t
                      _current-ctx9225_
                      _key9252_
                      _phi9251_
                      _key9252_
                      '#t)
                     '#f)
                 '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##structure-direct-instance-of?
                                                   _in92369244_
                                                   (##type-id
                                                    gx#module-import::t))
                                                  (let ((_e92409258_
                                                         (##vector-ref
                                                          _in92369244_
                                                          '1)))
                                                    (let ((_out9261_
                                                           _e92409258_))
                                                      (let ((_e92419263_
                                                             (##vector-ref
                                                              _in92369244_
                                                              '2)))
                                                        (let ((_key9266_
                                                               _e92419263_))
                                                          (let ((_e92429268_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref _in92369244_ '3)))
                    (let ((_phi9271_ _e92429268_))
                      (_K92399255_ _phi9271_ _key9266_ _out9261_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E92389248_))))))))
                                 (let ((_fold-e9228_
                                        (lambda (_in9230_ _r9231_)
                                          (let ((_out9233_
                                                 (_import->export9227_
                                                  _in9230_)))
                                            (if _out9233_
                                                (cons _out9233_ _r9231_)
                                                _r9231_)))))
                                   (cons (##structure
                                          gx#export-set::t
                                          _src9222_
                                          _current-phi9226_
                                          (foldl1 _fold-e9228_
                                                  '()
                                                  (##structure-ref
                                                   _current-ctx9225_
                                                   '8
                                                   gx#module-context::t
                                                   '#f)))
                                         _r9223_))))))))
                    (let ((_export!9202_
                           (lambda (_rbody9212_)
                             (let ((_current-ctx9214_
                                    (gx#current-expander-context)))
                               (let ((_fold-e9215_
                                      (lambda (_out9219_ _r9220_)
                                        (if (##structure-direct-instance-of?
                                             _out9219_
                                             'gx#module-export::t)
                                            (cons _out9219_ _r9220_)
                                            (if (##structure-direct-instance-of?
                                                 _out9219_
                                                 'gx#export-set::t)
                                                (foldl1 cons
                                                        _r9220_
                                                        (##structure-ref
                                                         _out9219_
                                                         '3
                                                         gx#export-set::t
                                                         '#f))
                                                _r9220_)))))
                                 (let ((_body9217_ (reverse _rbody9212_)))
                                   (begin
                                     (##structure-set!
                                      _current-ctx9214_
                                      (foldl1 _fold-e9215_
                                              (##structure-ref
                                               _current-ctx9214_
                                               '9
                                               gx#module-context::t
                                               '#f)
                                              _body9217_)
                                      '9
                                      gx#module-context::t
                                      '#f)
                                     _body9217_)))))))
                      (let ((_expanded-export?9203_
                             (lambda (_e9207_)
                               (let ((_$e9209_
                                      (##structure-direct-instance-of?
                                       _e9207_
                                       'gx#module-export::t)))
                                 (if _$e9209_
                                     _$e9209_
                                     (##structure-direct-instance-of?
                                      _e9207_
                                      'gx#export-set::t))))))
                        (let ((_expand19200_
                               (lambda (_hd9273_ _K9274_ _rest9275_ _r9276_)
                                 (let ((_e92779309_ _hd9273_))
                                   (let ((_E93049313_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; illegal export"
                                             _stx9196_
                                             _hd9273_))))
                                     (let ((_E92949392_
                                            (lambda ()
                                              (if (gx#stx-pair? _e92779309_)
                                                  (let ((_e93059317_
                                                         (gx#syntax-e
                                                          _e92779309_)))
                                                    (let ((_hd93069320_
                                                           (##car _e93059317_))
                                                          (_tl93079322_
                                                           (##cdr _e93059317_)))
                                                      (if (eq? (gx#stx-e
                                                                _hd93069320_)
                                                               'import:)
                                                          (let ((_in9325_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl93079322_))
                    (if (gx#stx-list? _in9325_)
                        ((letrec ((_lp9327_
                                   (lambda (_in-rest9329_ _r9330_)
                                     (let ((_e93319338_ _in-rest9329_))
                                       (let ((_E93339342_
                                              (lambda ()
                                                (_K9274_ _rest9275_ _r9330_))))
                                         (let ((_E93329388_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _e93319338_)
                                                      (let ((_e93349346_
                                                             (gx#syntax-e
                                                              _e93319338_)))
                                                        (let ((_hd93359349_
                                                               (##car _e93349346_))
                                                              (_tl93369351_
                                                               (##cdr _e93349346_)))
                                                          (let ((_hd9354_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd93359349_))
                    (let ((_in-rest9356_ _tl93369351_))
                      (if '#t
                          (let ((_src9386_
                                 (if (gx#core-bound-module? _hd9354_)
                                     (gx#syntax-local-e__0 _hd9354_)
                                     (if (gx#core-library-module-path?
                                          _hd9354_)
                                         (gx#import-module__0
                                          (gx#core-resolve-library-module-path
                                           _hd9354_))
                                         (if (gx#stx-string? _hd9354_)
                                             (gx#import-module__0
                                              (gx#core-resolve-module-path__opt-lambda10973
                                               _hd9354_
                                               (gx#stx-source _stx9196_)))
                                             (let ((_e93579364_ _hd9354_))
                                               (let ((_E93599368_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; illegal re-export"
                                                         _stx9196_
                                                         _hd9354_))))
                                                 (let ((_E93589382_
                                                        (lambda ()
                                                          (if (gx#stx-pair?
                                                               _e93579364_)
                                                              (let ((_e93609372_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _e93579364_)))
                        (let ((_hd93619375_ (##car _e93609372_))
                              (_tl93629377_ (##cdr _e93609372_)))
                          (if (eq? (gx#stx-e _hd93619375_) 'in:)
                              (let ((_spath9380_ _tl93629377_))
                                (if '#t
                                    (gx#core-import-nested-module
                                     _spath9380_
                                     _stx9196_)
                                    (_E93599368_)))
                              (_E93599368_))))
                      (_E93599368_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (_E93589382_))))))))))
                            (_lp9327_
                             _in-rest9356_
                             (_export-imports9201_ _src9386_ _r9330_)))
                          (_E93339342_))))))
              (_E93339342_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let () (_E93329388_))))))))
                           _lp9327_)
                         _in9325_
                         _r9276_)
                        (_E93049313_)))
                  (_E93049313_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E93049313_)))))
                                       (let ((_E92819431_
                                              (lambda ()
                                                (if (gx#stx-pair? _e92779309_)
                                                    (let ((_e92959396_
                                                           (gx#syntax-e
                                                            _e92779309_)))
                                                      (let ((_hd92969399_
                                                             (##car _e92959396_))
                                                            (_tl92979401_
                                                             (##cdr _e92959396_)))
                                                        (if (eq? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd92969399_)
                         'rename:)
                    (if (gx#stx-pair? _tl92979401_)
                        (let ((_e92989404_ (gx#syntax-e _tl92979401_)))
                          (let ((_hd92999407_ (##car _e92989404_))
                                (_tl93009409_ (##cdr _e92989404_)))
                            (let ((_id9412_ _hd92999407_))
                              (if (gx#stx-pair? _tl93009409_)
                                  (let ((_e93019414_
                                         (gx#syntax-e _tl93009409_)))
                                    (let ((_hd93029417_ (##car _e93019414_))
                                          (_tl93039419_ (##cdr _e93019414_)))
                                      (let ((_name9422_ _hd93029417_))
                                        (if (gx#stx-null? _tl93039419_)
                                            (if '#t
                                                (let ((_phi9424_
                                                       (gx#current-export-expander-phi)))
                                                  (let ((_$e9426_
                                                         (gx#core-resolve-identifier__1
                                                          _id9412_
                                                          _phi9424_)))
                                                    (if _$e9426_
                                                        ((lambda (_bind9429_)
                                                           (_K9274_ _rest9275_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (_make-export__opt-lambda9558__1150311504_
                                   _bind9429_
                                   _phi9424_
                                   (gx#current-expander-context)
                                   _name9422_)
                                  _r9276_)))
                 _$e9426_)
                (gx#raise-syntax-error
                 '#f
                 '"Reference to unbound identifier"
                 _stx9196_
                 _hd9273_
                 _id9412_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E92949392_))
                                            (_E92949392_)))))
                                  (_E92949392_)))))
                        (_E92949392_))
                    (_E92949392_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E92949392_)))))
                                         (let ((_E92809480_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _e92779309_)
                                                      (let ((_e92829435_
                                                             (gx#syntax-e
                                                              _e92779309_)))
                                                        (let ((_hd92839438_
                                                               (##car _e92829435_))
                                                              (_tl92849440_
                                                               (##cdr _e92829435_)))
                                                          (if (eq? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd92839438_)
                           'spec:)
                      (if (gx#stx-pair? _tl92849440_)
                          (let ((_e92859443_ (gx#syntax-e _tl92849440_)))
                            (let ((_hd92869446_ (##car _e92859443_))
                                  (_tl92879448_ (##cdr _e92859443_)))
                              (let ((_phi9451_ _hd92869446_))
                                (if (gx#stx-pair? _tl92879448_)
                                    (let ((_e92889453_
                                           (gx#syntax-e _tl92879448_)))
                                      (let ((_hd92899456_ (##car _e92889453_))
                                            (_tl92909458_ (##cdr _e92889453_)))
                                        (let ((_id9461_ _hd92899456_))
                                          (if (gx#stx-pair? _tl92909458_)
                                              (let ((_e92919463_
                                                     (gx#syntax-e
                                                      _tl92909458_)))
                                                (let ((_hd92929466_
                                                       (##car _e92919463_))
                                                      (_tl92939468_
                                                       (##cdr _e92919463_)))
                                                  (let ((_name9471_
                                                         _hd92929466_))
                                                    (if (gx#stx-null?
                                                         _tl92939468_)
                                                        (if (if (gx#stx-fixnum?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _phi9451_)
                        (if (gx#identifier? _id9461_)
                            (gx#identifier? _name9471_)
                            '#f)
                        '#f)
                    (let ((_phi9473_ (gx#stx-e _phi9451_)))
                      (let ((_$e9475_
                             (gx#core-resolve-identifier__1
                              _id9461_
                              _phi9473_)))
                        (if _$e9475_
                            ((lambda (_bind9478_)
                               (_K9274_ _rest9275_
                                        (cons (_make-export__opt-lambda9558__1150311504_
                                               _bind9478_
                                               _phi9473_
                                               (gx#current-expander-context)
                                               _name9471_)
                                              _r9276_)))
                             _$e9475_)
                            (gx#raise-syntax-error
                             '#f
                             '"Reference to unbound identifier"
                             _stx9196_
                             _hd9273_
                             _id9461_))))
                    (_E92819431_))
                (_E92819431_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E92819431_)))))
                                    (_E92819431_)))))
                          (_E92819431_))
                      (_E92819431_))))
              (_E92819431_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_E92799491_
                                                  (lambda ()
                                                    (let ((_id9484_
                                                           _e92779309_))
                                                      (if (gx#identifier?
                                                           _id9484_)
                                                          (let ((_$e9486_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-resolve-identifier__1
                          _id9484_
                          (gx#current-export-expander-phi))))
                    (if _$e9486_
                        ((lambda (_bind9489_)
                           (_K9274_ _rest9275_
                                    (cons (_make-export__0__1150511508_
                                           _bind9489_)
                                          _r9276_)))
                         _$e9486_)
                        (gx#raise-syntax-error
                         '#f
                         '"Reference to unbound identifier"
                         _stx9196_
                         _hd9273_)))
                  (_E92809480_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_E92789555_
                                                    (lambda ()
                                                      (if (eq? (gx#stx-e
                                                                _e92779309_)
                                                               '#t)
                                                          (if '#t
                                                              (let ((_current-ctx9495_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#current-expander-context)))
                        (let ((_current-phi9497_
                               (gx#current-export-expander-phi)))
                          (let ((_phi-ctx9499_
                                 (gx#core-context-shift
                                  _current-ctx9495_
                                  _current-phi9497_)))
                            (let ((_phi-bind9501_
                                   (table->list
                                    (##structure-ref
                                     _phi-ctx9499_
                                     '2
                                     gx#expander-context::t
                                     '#f))))
                              (let ()
                                ((letrec ((_lp9504_
                                           (lambda (_bind-rest9506_ _set9507_)
                                             (let ((_bind-rest95089518_
                                                    _bind-rest9506_))
                                               (let ((_E95119522_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _bind-rest95089518_))))
                                                 (let ((_else95109526_
                                                        (lambda ()
                                                          (_K9274_ _rest9275_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (##structure
                                  gx#export-set::t
                                  '#f
                                  _current-phi9497_
                                  _set9507_)
                                 _r9276_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_K95129536_
                                                          (lambda (_bind-rest9529_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _bind9530_
                           _key9531_)
                    (if (let ((_$e9533_
                               (##structure-direct-instance-of?
                                _bind9530_
                                'gx#import-binding::t)))
                          (if _$e9533_
                              _$e9533_
                              (gx#private-feature-binding? _bind9530_)))
                        (_lp9504_ _bind-rest9529_ _set9507_)
                        (_lp9504_
                         _bind-rest9529_
                         (cons (_make-export__2__1150711510_
                                _bind9530_
                                _current-phi9497_
                                _current-ctx9495_)
                               _set9507_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##pair? _bind-rest95089518_)
                                                         (let ((_hd95139539_
                                                                (##car _bind-rest95089518_))
                                                               (_tl95149541_
                                                                (##cdr _bind-rest95089518_)))
                                                           (if (##pair? _hd95139539_)
                                                               (let ((_hd95159544_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##car _hd95139539_))
                             (_tl95169546_ (##cdr _hd95139539_)))
                         (let ((_key9549_ _hd95159544_))
                           (let ((_bind9551_ _tl95169546_))
                             (let ((_bind-rest9553_ _tl95149541_))
                               (_K95129536_
                                _bind-rest9553_
                                _bind9551_
                                _key9549_)))))
                       (_else95109526_)))
                 (_else95109526_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _lp9504_)
                                 _phi-bind9501_
                                 '()))))))
                      (_E92799491_))
                  (_E92799491_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let () (_E92789555_))))))))))))
                          (let ((_rbody9205_
                                 (gx#core-expand-import/export
                                  _stx9196_
                                  _expanded-export?9203_
                                  'apply-export-expander
                                  gx#current-export-expander-phi
                                  _expand19200_)))
                            (if _internal-expand?9197_
                                (reverse _rbody9205_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#export
                                  (_export!9202_ _rbody9205_))
                                 (gx#stx-source _stx9196_)))))))))))))))
    (begin
      (define gx#core-expand-export%__0
        (lambda (_stx9605_)
          (let ((_internal-expand?9607_ '#f))
            (gx#core-expand-export%__opt-lambda9194
             _stx9605_
             _internal-expand?9607_))))
      (define gx#core-expand-export%
        (lambda _g11539_
          (let ((_g11538_ (length _g11539_)))
            (cond ((fx= _g11538_ 1) (apply gx#core-expand-export%__0 _g11539_))
                  ((fx= _g11538_ 2)
                   (apply gx#core-expand-export%__opt-lambda9194 _g11539_))
                  (else (error "No clause matching arguments" _g11539_))))))))
  (define gx#core-expand-export-source
    (lambda (_hd9193_)
      (gx#core-expand-export%__opt-lambda9194
       (cons 'export-macro% (cons _hd9193_ '()))
       '#t)))
  (define gx#core-expand-provide%
    (lambda (_stx9163_)
      (let ((_e91649171_ _stx9163_))
        (let ((_E91669175_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e91649171_))))
          (let ((_E91659189_
                 (lambda ()
                   (if (gx#stx-pair? _e91649171_)
                       (let ((_e91679179_ (gx#syntax-e _e91649171_)))
                         (let ((_hd91689182_ (##car _e91679179_))
                               (_tl91699184_ (##cdr _e91679179_)))
                           (let ((_body9187_ _tl91699184_))
                             (if (gx#identifier-list? _body9187_)
                                 (begin
                                   (gx#stx-for-each1
                                    gx#core-bind-feature!
                                    _body9187_)
                                   (gx#core-quote-syntax__1
                                    (gx#core-cons
                                     '%#provide
                                     (gx#stx-map1
                                      gx#core-quote-syntax
                                      _body9187_))
                                    (gx#stx-source _stx9163_)))
                                 (_E91669175_)))))
                       (_E91669175_)))))
            (let () (_E91659189_)))))))
  (begin
    (define gx#core-bind-feature!__opt-lambda9127
      (lambda (_id9129_ _private?9130_ _phi9131_ _ctx9132_)
        (gx#core-bind-syntax!__opt-lambda6223
         _id9129_
         ((if _private?9130_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id9129_))
         _private?9130_
         _phi9131_
         _ctx9132_)))
    (begin
      (define gx#core-bind-feature!__0
        (lambda (_id9137_)
          (let ((_private?9139_ '#f))
            (let ((_phi9141_ (gx#current-expander-phi)))
              (let ((_ctx9143_ (gx#current-expander-context)))
                (gx#core-bind-feature!__opt-lambda9127
                 _id9137_
                 _private?9139_
                 _phi9141_
                 _ctx9143_))))))
      (define gx#core-bind-feature!__1
        (lambda (_id9145_ _private?9146_)
          (let ((_phi9148_ (gx#current-expander-phi)))
            (let ((_ctx9150_ (gx#current-expander-context)))
              (gx#core-bind-feature!__opt-lambda9127
               _id9145_
               _private?9146_
               _phi9148_
               _ctx9150_)))))
      (define gx#core-bind-feature!__2
        (lambda (_id9152_ _private?9153_ _phi9154_)
          (let ((_ctx9156_ (gx#current-expander-context)))
            (gx#core-bind-feature!__opt-lambda9127
             _id9152_
             _private?9153_
             _phi9154_
             _ctx9156_))))
      (define gx#core-bind-feature!
        (lambda _g11541_
          (let ((_g11540_ (length _g11541_)))
            (cond ((fx= _g11540_ 1) (apply gx#core-bind-feature!__0 _g11541_))
                  ((fx= _g11540_ 2) (apply gx#core-bind-feature!__1 _g11541_))
                  ((fx= _g11540_ 3) (apply gx#core-bind-feature!__2 _g11541_))
                  ((fx= _g11540_ 4)
                   (apply gx#core-bind-feature!__opt-lambda9127 _g11541_))
                  (else (error "No clause matching arguments" _g11541_)))))))))
