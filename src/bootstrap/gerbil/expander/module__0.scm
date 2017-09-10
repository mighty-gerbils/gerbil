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
    (lambda _$args11502_
      (apply make-struct-instance gx#module-import::t _$args11502_)))
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
    (lambda _$args11499_
      (apply make-struct-instance gx#module-export::t _$args11499_)))
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
    (lambda _$args11496_
      (apply make-struct-instance gx#import-set::t _$args11496_)))
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
    (lambda _$args11493_
      (apply make-struct-instance gx#export-set::t _$args11493_)))
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
    (lambda _$args11490_
      (apply make-struct-instance gx#import-expander::t _$args11490_)))
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
    (lambda _$args11487_
      (apply make-struct-instance gx#export-expander::t _$args11487_)))
  (define gx#current-import-expander-phi (make-parameter '#f))
  (define gx#current-export-expander-phi (make-parameter '#f))
  (define gx#current-module-reader-path (make-parameter '#f))
  (define gx#current-module-reader-args (make-parameter '#f))
  (define gx#module-context:::init!
    (lambda (_self11481_ _id11482_ _super11483_ _ns11484_ _path11485_)
      (struct-instance-init!
       _self11481_
       _id11482_
       (make-hash-table-eq)
       _super11483_
       '#f
       '#f
       _ns11484_
       _path11485_
       '()
       '()
       '#f
       '#f)))
  (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
  (begin
    (define gx#prelude-context:::init!__opt-lambda11445
      (lambda (_self11447_ _ctx11448_ _root11449_)
        (let ((_super11457_
               (let ((_$e11451_ _root11449_))
                 (if _$e11451_
                     _$e11451_
                     (let ((_$e11454_ (gx#core-context-root__0)))
                       (if _$e11454_
                           _$e11454_
                           (make-struct-instance gx#root-context::t)))))))
          (if _ctx11448_
              (let ((_id11460_
                     (##structure-ref
                      _ctx11448_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path11461_
                     (##structure-ref _ctx11448_ '7 gx#module-context::t '#f))
                    (_in11462_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx11448_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e11463_
                     (make-promise (lambda () (gx#eval-module _ctx11448_)))))
                (begin
                  (struct-instance-init!
                   _self11447_
                   _id11460_
                   (make-hash-table-eq)
                   _super11457_
                   '#f
                   '#f
                   _path11461_
                   _in11462_
                   _e11463_)
                  (for-each
                   (lambda (_g1146411466_)
                     (gx#core-bind-weak-import!__opt-lambda10799
                      _g1146411466_
                      _self11447_))
                   _in11462_)))
              (struct-instance-init!
               _self11447_
               '#f
               (make-hash-table-eq)
               _super11457_
               '#f
               '#f
               '#f
               '()
               '#f)))))
    (begin
      (define gx#prelude-context:::init!__0
        (lambda (_self11472_ _ctx11473_)
          (let ((_root11475_ '#f))
            (gx#prelude-context:::init!__opt-lambda11445
             _self11472_
             _ctx11473_
             _root11475_))))
      (define gx#prelude-context:::init!
        (lambda _g11518_
          (let ((_g11517_ (length _g11518_)))
            (cond ((fx= _g11517_ 2)
                   (apply gx#prelude-context:::init!__0 _g11518_))
                  ((fx= _g11517_ 3)
                   (apply gx#prelude-context:::init!__opt-lambda11445
                          _g11518_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#prelude-context:::init!
                    _g11518_))))))))
  (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
  (define gx#import-expander:::init!
    (lambda (_self11443_ _e11444_)
      (struct-instance-init!
       _self11443_
       _e11444_
       (gx#current-expander-context)
       (fx- (gx#current-expander-phi) '1))))
  (bind-method! gx#import-expander::t ':init! gx#import-expander:::init! '#f)
  (define gx#export-expander:::init!
    (lambda (_self11440_ _e11441_)
      (struct-instance-init!
       _self11440_
       _e11441_
       (gx#current-expander-context)
       (fx- (gx#current-expander-phi) '1))))
  (bind-method! gx#export-expander::t ':init! gx#export-expander:::init! '#f)
  (define gx#import-expander::apply-import-expander
    (lambda (_g1143211435_ _g1143311437_)
      (gx#core-apply-user-expander__opt-lambda4798
       _g1143211435_
       _g1143311437_
       'apply-import-expander)))
  (bind-method!
   gx#import-expander::t
   'apply-import-expander
   gx#import-expander::apply-import-expander
   '#f)
  (define gx#export-expander::apply-export-expander
    (lambda (_g1142511428_ _g1142611430_)
      (gx#core-apply-user-expander__opt-lambda4798
       _g1142511428_
       _g1142611430_
       'apply-export-expander)))
  (bind-method!
   gx#export-expander::t
   'apply-export-expander
   gx#export-expander::apply-export-expander
   '#f)
  (define gx#module-source-path
    (lambda (_ctx11419_)
      (let* ((_path11421_
              (##structure-ref _ctx11419_ '7 gx#module-context::t '#f))
             (_path11423_
              (if (pair? _path11421_) (last _path11421_) _path11421_)))
        (if (string? _path11423_) _path11423_ '#f))))
  (begin
    (define gx#import-module__opt-lambda11393
      (lambda (_path11395_ _reload?11396_ _eval?11397_)
        (let ((_ctx11399_
               ((gx#current-expander-module-import)
                _path11395_
                _reload?11396_)))
          (begin
            (if (if _ctx11399_ _eval?11397_ '#f)
                (gx#eval-module _ctx11399_)
                '#!void)
            _ctx11399_))))
    (begin
      (define gx#import-module__0
        (lambda (_path11404_)
          (let* ((_reload?11406_ '#f) (_eval?11408_ '#f))
            (gx#import-module__opt-lambda11393
             _path11404_
             _reload?11406_
             _eval?11408_))))
      (define gx#import-module__1
        (lambda (_path11410_ _reload?11411_)
          (let ((_eval?11413_ '#f))
            (gx#import-module__opt-lambda11393
             _path11410_
             _reload?11411_
             _eval?11413_))))
      (define gx#import-module
        (lambda _g11520_
          (let ((_g11519_ (length _g11520_)))
            (cond ((fx= _g11519_ 1) (apply gx#import-module__0 _g11520_))
                  ((fx= _g11519_ 2) (apply gx#import-module__1 _g11520_))
                  ((fx= _g11519_ 3)
                   (apply gx#import-module__opt-lambda11393 _g11520_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#import-module
                    _g11520_))))))))
  (define gx#eval-module
    (lambda (_mod11392_) ((gx#current-expander-module-eval) _mod11392_)))
  (define gx#core-eval-module
    (lambda (_obj11377_)
      (letrec ((_force-e11379_
                (lambda (_getf11388_ _e11389_)
                  (call-with-parameters
                   (lambda () (force (_getf11388_ _e11389_)))
                   gx#current-expander-context
                   _e11389_
                   gx#current-expander-phi
                   '0))))
        (let _recur11381_ ((_e11383_ _obj11377_))
          (if (##structure-instance-of? _e11383_ 'gx#module-context::t)
              (begin
                (let ((_$e11385_
                       (gx#core-context-prelude__opt-lambda11358 _e11383_)))
                  (if _$e11385_ (_recur11381_ _$e11385_) '#!void))
                (_force-e11379_ gx#module-context-e _e11383_))
              (if (##structure-instance-of? _e11383_ 'gx#prelude-context::t)
                  (_force-e11379_ gx#prelude-context-e _e11383_)
                  (if (gx#stx-string? _e11383_)
                      (_recur11381_
                       (gx#import-module__0
                        (gx#core-resolve-module-path__0 _e11383_)))
                      (if (gx#core-library-module-path? _e11383_)
                          (_recur11381_
                           (gx#import-module__0
                            (gx#core-resolve-library-module-path _e11383_)))
                          (error '"Cannot eval module" _obj11377_)))))))))
  (begin
    (define gx#core-context-prelude__opt-lambda11358
      (lambda (_ctx11360_)
        (let _lp11362_ ((_e11364_ _ctx11360_))
          (if (let ((_$e11366_
                     (##structure-instance-of?
                      _e11364_
                      'gx#module-context::t)))
                (if _$e11366_
                    _$e11366_
                    (##structure-instance-of? _e11364_ 'gx#local-context::t)))
              (_lp11362_ (##structure-ref _e11364_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e11364_ 'gx#prelude-context::t)
                  _e11364_
                  '#f)))))
    (begin
      (define gx#core-context-prelude__0
        (lambda ()
          (let ((_ctx11373_ (gx#current-expander-context)))
            (gx#core-context-prelude__opt-lambda11358 _ctx11373_))))
      (define gx#core-context-prelude
        (lambda _g11522_
          (let ((_g11521_ (length _g11522_)))
            (cond ((fx= _g11521_ 0)
                   (apply gx#core-context-prelude__0 _g11522_))
                  ((fx= _g11521_ 1)
                   (apply gx#core-context-prelude__opt-lambda11358 _g11522_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-prelude
                    _g11522_))))))))
  (define gx#core-module->prelude-context
    (lambda (_ctx11350_)
      (let* ((_ht11352_ (gx#current-expander-module-registry))
             (_$e11354_ (table-ref _ht11352_ _ctx11350_ '#f)))
        (if _$e11354_
            (values _$e11354_)
            (let ((_pre11357_
                   (let ((__obj11513 (make-object gx#prelude-context::t '8)))
                     (begin
                       (gx#prelude-context:::init!__0 __obj11513 _ctx11350_)
                       __obj11513))))
              (begin
                (table-set! _ht11352_ _ctx11350_ _pre11357_)
                _pre11357_))))))
  (begin
    (define gx#core-import-module__opt-lambda11302
      (lambda (_rpath11304_ _reload?11305_)
        (letrec ((_import-source11307_
                  (lambda (_path11319_)
                    (begin
                      (if (member _path11319_ (gx#current-expander-path))
                          (error '"Cyclic expansion" _path11319_)
                          '#!void)
                      (call-with-parameters
                       (lambda ()
                         (let ((_g11523_ (gx#core-read-module _path11319_)))
                           (begin
                             (let ((_g11524_ (values-count _g11523_)))
                               (if (not (fx= _g11524_ 4))
                                   (error "Context expects 4 values"
                                          _g11524_)))
                             (let ((_pre11322_ (values-ref _g11523_ 0))
                                   (_id11323_ (values-ref _g11523_ 1))
                                   (_ns11324_ (values-ref _g11523_ 2))
                                   (_body11325_ (values-ref _g11523_ 3)))
                               (let* ((_prelude11330_
                                       (if (##structure-instance-of?
                                            _pre11322_
                                            'gx#prelude-context::t)
                                           _pre11322_
                                           (if (##structure-instance-of?
                                                _pre11322_
                                                'gx#module-context::t)
                                               (gx#core-module->prelude-context
                                                _pre11322_)
                                               (if (string? _pre11322_)
                                                   (gx#core-module->prelude-context
                                                    (gx#core-import-module__0
                                                     _pre11322_))
                                                   (if (not _pre11322_)
                                                       (let ((_$e11327_
                                                              (gx#current-expander-module-prelude)))
                                                         (if _$e11327_
                                                             _$e11327_
                                                             (let ((__obj11514
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (make-object gx#prelude-context::t '8)))
                       (begin
                         (gx#prelude-context:::init!__0 __obj11514 '#f)
                         __obj11514))))
               (error '"Cannot import module; unknown prelude"
                      _rpath11304_
                      _pre11322_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_ctx11332_
                                       (let ((__obj11515
                                              (make-object
                                               gx#module-context::t
                                               '11)))
                                         (begin
                                           (gx#module-context:::init!
                                            __obj11515
                                            _id11323_
                                            _prelude11330_
                                            _ns11324_
                                            _path11319_)
                                           __obj11515)))
                                      (_body11334_
                                       (gx#core-expand-module-begin
                                        _body11325_
                                        _ctx11332_))
                                      (_body11336_
                                       (gx#core-quote-syntax__opt-lambda4151
                                        (gx#core-cons '%#begin _body11334_)
                                        _path11319_
                                        _ctx11332_
                                        '())))
                                 (begin
                                   (##structure-set!
                                    _ctx11332_
                                    (make-promise
                                     (lambda () (gx#eval-syntax* _body11336_)))
                                    '10
                                    gx#module-context::t
                                    '#f)
                                   (##structure-set!
                                    _ctx11332_
                                    _body11336_
                                    '11
                                    gx#module-context::t
                                    '#f)
                                   (table-set!
                                    (gx#current-expander-module-registry)
                                    _path11319_
                                    _ctx11332_)
                                   (table-set!
                                    (gx#current-expander-module-registry)
                                    _id11323_
                                    _ctx11332_)
                                   _ctx11332_))))))
                       gx#current-expander-context
                       (gx#core-context-root__0)
                       gx#current-expander-marks
                       '()
                       gx#current-expander-phi
                       '0
                       gx#current-expander-path
                       (cons _path11319_ (gx#current-expander-path))
                       gx#current-import-expander-phi
                       '#f
                       gx#current-export-expander-phi
                       '#f)))))
          (let ((_$e11309_
                 (if (not _reload?11305_)
                     (table-ref
                      (gx#current-expander-module-registry)
                      _rpath11304_
                      '#f)
                     '#f)))
            (if _$e11309_
                (values _$e11309_)
                (if (gx#core-library-module-path? _rpath11304_)
                    (let ((_ctx11312_
                           (gx#core-import-module__opt-lambda11302
                            (gx#core-resolve-library-module-path _rpath11304_)
                            _reload?11305_)))
                      (begin
                        (table-set!
                         (gx#current-expander-module-registry)
                         _rpath11304_
                         _ctx11312_)
                        _ctx11312_))
                    (let* ((_npath11314_ (path-normalize _rpath11304_))
                           (_$e11316_
                            (if (not _reload?11305_)
                                (table-ref
                                 (gx#current-expander-module-registry)
                                 _npath11314_
                                 '#f)
                                '#f)))
                      (if _$e11316_
                          (values _$e11316_)
                          (_import-source11307_ _npath11314_)))))))))
    (begin
      (define gx#core-import-module__0
        (lambda (_rpath11343_)
          (let ((_reload?11345_ '#f))
            (gx#core-import-module__opt-lambda11302
             _rpath11343_
             _reload?11345_))))
      (define gx#core-import-module
        (lambda _g11526_
          (let ((_g11525_ (length _g11526_)))
            (cond ((fx= _g11525_ 1) (apply gx#core-import-module__0 _g11526_))
                  ((fx= _g11525_ 2)
                   (apply gx#core-import-module__opt-lambda11302 _g11526_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-import-module
                    _g11526_))))))))
  (define gx#core-read-module
    (lambda (_path11298_)
      (with-exception-catcher
       (lambda (_exn11300_)
         (if (if (datum-parsing-exception? _exn11300_)
                 (eq? (datum-parsing-exception-filepos _exn11300_) '0)
                 '#f)
             (gx#core-read-module/lang _path11298_)
             (raise _exn11300_)))
       (lambda () (gx#core-read-module/sexp _path11298_)))))
  (define gx#core-read-module/sexp
    (lambda (_path11162_)
      (let _lp11164_ ((_body11166_ (read-syntax-from-file _path11162_))
                      (_pre11167_ '#f)
                      (_ns11168_ '#f)
                      (_pkg11169_ '#f))
        (let* ((_e1117011194_ _body11166_)
               (_E1118611212_
                (lambda ()
                  (let* ((_prelude11198_
                          (if (gx#core-bound-module-prelude? _pre11167_)
                              (gx#syntax-local-e__0 _pre11167_)
                              (if (gx#core-library-module-path? _pre11167_)
                                  (gx#core-resolve-library-module-path
                                   _pre11167_)
                                  (if (gx#stx-string? _pre11167_)
                                      (gx#core-resolve-module-path__opt-lambda10975
                                       _pre11167_
                                       _path11162_)
                                      (gx#stx-e _pre11167_)))))
                         (_path-id11200_
                          (gx#core-module-path->namespace _path11162_))
                         (_pkg-id11202_
                          (if _pkg11169_
                              (string-append _pkg11169_ '"/" _path-id11200_)
                              _path-id11200_))
                         (_module-id11204_ (string->symbol _pkg-id11202_))
                         (_module-ns11209_
                          (let ((_$e11206_ _ns11168_))
                            (if _$e11206_ _$e11206_ _pkg-id11202_))))
                    (values _prelude11198_
                            _module-id11204_
                            _module-ns11209_
                            _body11166_))))
               (_E1117911241_
                (lambda ()
                  (if (gx#stx-pair? _e1117011194_)
                      (let ((_e1118711216_ (gx#syntax-e _e1117011194_)))
                        (let ((_hd1118811219_ (##car _e1118711216_))
                              (_tl1118911221_ (##cdr _e1118711216_)))
                          (if (eq? (gx#stx-e _hd1118811219_) 'package:)
                              (if (gx#stx-pair? _tl1118911221_)
                                  (let ((_e1119011224_
                                         (gx#syntax-e _tl1118911221_)))
                                    (let ((_hd1119111227_
                                           (##car _e1119011224_))
                                          (_tl1119211229_
                                           (##cdr _e1119011224_)))
                                      (let* ((_pkg11232_ _hd1119111227_)
                                             (_rest11234_ _tl1119211229_))
                                        (if '#t
                                            (let ((_pkg11239_
                                                   (if (gx#identifier?
                                                        _pkg11232_)
                                                       (symbol->string
                                                        (gx#stx-e _pkg11232_))
                                                       (if (let ((_$e11236_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-string? _pkg11232_)))
                     (if _$e11236_ _$e11236_ (gx#stx-false? _pkg11232_)))
                   (gx#stx-e _pkg11232_)
                   (gx#raise-syntax-error
                    'import
                    '"Bad syntax; Illegal package name"
                    _pkg11232_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_lp11164_
                                               _rest11234_
                                               _pre11167_
                                               _ns11168_
                                               _pkg11239_))
                                            (_E1118611212_)))))
                                  (_E1118611212_))
                              (_E1118611212_))))
                      (_E1118611212_))))
               (_E1117211270_
                (lambda ()
                  (if (gx#stx-pair? _e1117011194_)
                      (let ((_e1118011245_ (gx#syntax-e _e1117011194_)))
                        (let ((_hd1118111248_ (##car _e1118011245_))
                              (_tl1118211250_ (##cdr _e1118011245_)))
                          (if (eq? (gx#stx-e _hd1118111248_) 'namespace:)
                              (if (gx#stx-pair? _tl1118211250_)
                                  (let ((_e1118311253_
                                         (gx#syntax-e _tl1118211250_)))
                                    (let ((_hd1118411256_
                                           (##car _e1118311253_))
                                          (_tl1118511258_
                                           (##cdr _e1118311253_)))
                                      (let* ((_ns11261_ _hd1118411256_)
                                             (_rest11263_ _tl1118511258_))
                                        (if '#t
                                            (let ((_ns11268_
                                                   (if (gx#identifier?
                                                        _ns11261_)
                                                       (symbol->string
                                                        (gx#stx-e _ns11261_))
                                                       (if (let ((_$e11265_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-string? _ns11261_)))
                     (if _$e11265_ _$e11265_ (gx#stx-false? _ns11261_)))
                   (gx#stx-e _ns11261_)
                   (gx#raise-syntax-error
                    'import
                    '"Bad syntax; illegal namespace"
                    _ns11261_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_lp11164_
                                               _rest11263_
                                               _pre11167_
                                               _ns11268_
                                               _pkg11169_))
                                            (_E1117911241_)))))
                                  (_E1117911241_))
                              (_E1117911241_))))
                      (_E1117911241_))))
               (_E1117111294_
                (lambda ()
                  (if (gx#stx-pair? _e1117011194_)
                      (let ((_e1117311274_ (gx#syntax-e _e1117011194_)))
                        (let ((_hd1117411277_ (##car _e1117311274_))
                              (_tl1117511279_ (##cdr _e1117311274_)))
                          (if (eq? (gx#stx-e _hd1117411277_) 'prelude:)
                              (if (gx#stx-pair? _tl1117511279_)
                                  (let ((_e1117611282_
                                         (gx#syntax-e _tl1117511279_)))
                                    (let ((_hd1117711285_
                                           (##car _e1117611282_))
                                          (_tl1117811287_
                                           (##cdr _e1117611282_)))
                                      (let* ((_prelude11290_ _hd1117711285_)
                                             (_rest11292_ _tl1117811287_))
                                        (if '#t
                                            (_lp11164_
                                             _rest11292_
                                             _prelude11290_
                                             _ns11168_
                                             _pkg11169_)
                                            (_E1117211270_)))))
                                  (_E1117211270_))
                              (_E1117211270_))))
                      (_E1117211270_)))))
          (_E1117111294_)))))
  (define gx#core-read-module/lang
    (lambda (_path11002_)
      (letrec ((_read-body11004_
                (lambda (_inp11085_
                         _pre11086_
                         _pkg11087_
                         _ns11088_
                         _args11089_)
                  (let* ((_prelude11091_ (gx#import-module__0 _pre11086_))
                         (_read-module-body11145_
                          (let ((_$e11137_
                                 (find (lambda (_e1109211094_)
                                         (let* ((_g1109611106_ _e1109211094_)
                                                (_E1109911110_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _g1109611106_)))
                                                (_else1109811114_
                                                 (lambda () '#f))
                                                (_K1110011118_
                                                 (lambda () '#t)))
                                           (if (##structure-direct-instance-of?
                                                _g1109611106_
                                                (##type-id
                                                 gx#module-export::t))
                                               (let* ((_e1110111121_
                                                       (##vector-ref
                                                        _g1109611106_
                                                        '1))
                                                      (_e1110211124_
                                                       (##vector-ref
                                                        _g1109611106_
                                                        '2))
                                                      (_e1110311127_
                                                       (##vector-ref
                                                        _g1109611106_
                                                        '3)))
                                                 (if (##eq? _e1110311127_ '1)
                                                     (let ((_e1110411130_
                                                            (##vector-ref
                                                             _g1109611106_
                                                             '4)))
                                                       (if ((lambda (_g1113211134_)
                                                              (eq? _g1113211134_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'read-module-body))
                    _e1110411130_)
                   (_K1110011118_)
                   (_else1109811114_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_else1109811114_)))
                                               (_else1109811114_))))
                                       (##structure-ref
                                        _prelude11091_
                                        '9
                                        gx#module-context::t
                                        '#f))))
                            (if _$e11137_
                                ((lambda (_xport11140_)
                                   (let ((_proc11143_
                                          (with-exception-catcher
                                           void
                                           (lambda ()
                                             (gx#eval-syntax__0
                                              (##structure-ref
                                               (gx#core-resolve-module-export
                                                _xport11140_)
                                               '1
                                               gx#binding::t
                                               '#f))))))
                                     (if (procedure? _proc11143_)
                                         _proc11143_
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Illegal #lang prelude; read-module-body is not a procedure"
                                          _path11002_
                                          _pre11086_
                                          _proc11143_))))
                                 _$e11137_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Illegal #lang prelude; does not export read-module-body for syntax"
                                 _path11002_
                                 _pre11086_))))
                         (_path-id11147_
                          (gx#core-module-path->namespace _path11002_))
                         (_pkg-id11149_
                          (if _pkg11087_
                              (string-append _pkg11087_ '"/" _path-id11147_)
                              _path-id11147_))
                         (_module-id11151_ (string->symbol _pkg-id11149_))
                         (_module-ns11156_
                          (let ((_$e11153_ _ns11088_))
                            (if _$e11153_ _$e11153_ _pkg-id11149_)))
                         (_body11159_
                          (call-with-parameters
                           (lambda () (_read-module-body11145_ _inp11085_))
                           gx#current-module-reader-path
                           _path11002_
                           gx#current-module-reader-args
                           _args11089_)))
                    (values _prelude11091_
                            _module-id11151_
                            _module-ns11156_
                            _body11159_))))
               (_string-e11005_
                (lambda (_obj11082_ _what11083_)
                  (if (string? _obj11082_)
                      _obj11082_
                      (if (symbol? _obj11082_)
                          (symbol->string _obj11082_)
                          (gx#raise-syntax-error
                           '#f
                           (string-append '"Illegal module " _what11083_)
                           _path11002_
                           _obj11082_)))))
               (_read-lang-args11006_
                (lambda (_inp11037_ _args11038_)
                  (let* ((_args1103911047_ _args11038_)
                         (_E1104211051_
                          (lambda ()
                            (error '"No clause matching" _args1103911047_)))
                         (_else1104111055_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Illegal #lang arguments; missing prelude"
                             _path11002_)))
                         (_K1104311070_
                          (lambda (_args11058_ _prelude11059_)
                            (let* ((_pkg11061_ (pgetq 'package: _args11058_))
                                   (_pkg11063_
                                    (if _pkg11061_
                                        (_string-e11005_ _pkg11061_ '"package")
                                        '#f))
                                   (_ns11065_ (pgetq 'namespace: _args11058_))
                                   (_ns11067_
                                    (if _ns11065_
                                        (_string-e11005_
                                         _ns11065_
                                         '"namespace")
                                        '#f)))
                              (_read-body11004_
                               _inp11037_
                               _prelude11059_
                               _pkg11063_
                               _ns11067_
                               _args11058_)))))
                    (if (##pair? _args1103911047_)
                        (let ((_hd1104411073_ (##car _args1103911047_))
                              (_tl1104511075_ (##cdr _args1103911047_)))
                          (let* ((_prelude11078_ _hd1104411073_)
                                 (_args11080_ _tl1104511075_))
                            (_K1104311070_ _args11080_ _prelude11078_)))
                        (_else1104111055_)))))
               (_read-lang11007_
                (lambda (_inp11012_)
                  (let* ((_head11014_ (read-line _inp11012_))
                         (_$e11016_ (string-index _head11014_ '#\space)))
                    (if _$e11016_
                        ((lambda (_ix11019_)
                           (let ((_lang11021_
                                  (substring _head11014_ '0 _ix11019_)))
                             (if (equal? _lang11021_ '"#lang")
                                 (let* ((_rest11023_
                                         (substring
                                          _head11014_
                                          (fx+ _ix11019_ '1)
                                          (string-length _head11014_)))
                                        (_args11034_
                                         (with-exception-catcher
                                          (lambda (_g1102411026_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Illegal #lang arguments"
                                             _path11002_
                                             _g1102411026_))
                                          (lambda ()
                                            (call-with-input-string
                                             _rest11023_
                                             (lambda (_g1102911031_)
                                               (read-all
                                                _g1102911031_
                                                read)))))))
                                   (_read-lang-args11006_
                                    _inp11012_
                                    _args11034_))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Illegal module syntax"
                                  _path11002_))))
                         _$e11016_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path11002_)))))
               (_read-e11008_
                (lambda (_inp11010_)
                  (if (eq? (peek-char _inp11010_) '#\#)
                      (_read-lang11007_ _inp11010_)
                      (gx#raise-syntax-error
                       '#f
                       '"Illegal module syntax"
                       _path11002_)))))
        (call-with-input-file _path11002_ _read-e11008_))))
  (define gx#core-module-path->namespace
    (lambda (_path11000_)
      (path-strip-extension (path-strip-directory _path11000_))))
  (define gx#core-module-path->id
    (lambda (_path10998_)
      (string->symbol (gx#core-module-path->namespace _path10998_))))
  (begin
    (define gx#core-resolve-module-path__opt-lambda10975
      (lambda (_stx-path10977_ _rel10978_)
        (let* ((_path10980_ (gx#stx-e _stx-path10977_))
               (_path10982_
                (if (string-empty? (path-extension _path10980_))
                    (string-append _path10980_ '".ss")
                    _path10980_)))
          (gx#core-resolve-path__opt-lambda4115
           _path10982_
           (let ((_$e10985_ (gx#stx-source _stx-path10977_)))
             (if _$e10985_ _$e10985_ _rel10978_))))))
    (begin
      (define gx#core-resolve-module-path__0
        (lambda (_stx-path10991_)
          (let ((_rel10993_ '#f))
            (gx#core-resolve-module-path__opt-lambda10975
             _stx-path10991_
             _rel10993_))))
      (define gx#core-resolve-module-path
        (lambda _g11528_
          (let ((_g11527_ (length _g11528_)))
            (cond ((fx= _g11527_ 1)
                   (apply gx#core-resolve-module-path__0 _g11528_))
                  ((fx= _g11527_ 2)
                   (apply gx#core-resolve-module-path__opt-lambda10975
                          _g11528_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-resolve-module-path
                    _g11528_))))))))
  (define gx#core-resolve-library-module-path
    (lambda (_libpath10917_)
      (let* ((_spath10919_ (symbol->string (gx#stx-e _libpath10917_)))
             (_spath10921_
              (substring _spath10919_ '1 (string-length _spath10919_)))
             (_ext10923_ (path-extension _spath10921_))
             (_ssi10925_
              (if (string-empty? _ext10923_)
                  (string-append _spath10921_ '".ssi")
                  (string-append (path-strip-extension _spath10921_) '".ssi")))
             (_src10927_
              (if (string-empty? _ext10923_)
                  (string-append _spath10921_ '".ss")
                  _spath10921_)))
        (let _lp10930_ ((_rest10932_
                         (gx#current-expander-module-library-path)))
          (let* ((_rest1093310942_ _rest10932_)
                 (_E1093610946_
                  (lambda () (error '"No clause matching" _rest1093310942_)))
                 (_try-match1093510954_
                  (lambda ()
                    (let ((_K1093710951_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Cannot find library module"
                              _libpath10917_))))
                      (if (##null? _rest1093310942_)
                          (_K1093710951_)
                          (_E1093610946_)))))
                 (_K1093810964_
                  (lambda (_rest10957_ _dir10958_)
                    (let ((_compiled-path10960_
                           (path-expand _ssi10925_ _dir10958_)))
                      (if (file-exists? _compiled-path10960_)
                          (path-normalize _compiled-path10960_)
                          (let ((_src-path10962_
                                 (path-expand _src10927_ _dir10958_)))
                            (if (file-exists? _src-path10962_)
                                (path-normalize _src-path10962_)
                                (_lp10930_ _rest10957_))))))))
            (if (##pair? _rest1093310942_)
                (let ((_hd1093910967_ (##car _rest1093310942_))
                      (_tl1094010969_ (##cdr _rest1093310942_)))
                  (let* ((_dir10972_ _hd1093910967_)
                         (_rest10974_ _tl1094010969_))
                    (_K1093810964_ _rest10974_ _dir10972_)))
                (_try-match1093510954_)))))))
  (define gx#core-library-module-path?
    (lambda (_stx10915_) (gx#core-special-module-path? _stx10915_ '#\:)))
  (define gx#core-special-module-path?
    (lambda (_stx10910_ _char10911_)
      (if (gx#identifier? _stx10910_)
          (if (interned-symbol? (gx#stx-e _stx10910_))
              (let ((_str10913_ (symbol->string (gx#stx-e _stx10910_))))
                (if (fx> (string-length _str10913_) '1)
                    (eq? (string-ref _str10913_ '0) _char10911_)
                    '#f))
              '#f)
          '#f)))
  (define gx#core-bound-prelude?
    (lambda (_stx10904_)
      (gx#core-bound-identifier?__opt-lambda4205
       _stx10904_
       (lambda (_g1090510907_)
         (gx#expander-binding?__opt-lambda4242
          _g1090510907_
          gx#prelude-context?)))))
  (define gx#core-bound-module?
    (lambda (_stx10898_)
      (gx#core-bound-identifier?__opt-lambda4205
       _stx10898_
       (lambda (_g1089910901_)
         (gx#expander-binding?__opt-lambda4242
          _g1089910901_
          gx#module-context?)))))
  (define gx#core-bound-module-prelude?
    (lambda (_stx10885_)
      (letrec ((_module-prelude?10887_
                (lambda (_e10893_)
                  (let ((_$e10895_
                         (##structure-instance-of?
                          _e10893_
                          'gx#module-context::t)))
                    (if _$e10895_
                        _$e10895_
                        (##structure-instance-of?
                         _e10893_
                         'gx#prelude-context::t))))))
        (gx#core-bound-identifier?__opt-lambda4205
         _stx10885_
         (lambda (_g1088810890_)
           (gx#expander-binding?__opt-lambda4242
            _g1088810890_
            _module-prelude?10887_))))))
  (begin
    (define gx#core-bind-import!__opt-lambda10813
      (lambda (_in10815_ _ctx10816_ _force-weak?10817_)
        (let* ((_in1081810827_ _in10815_)
               (_E1082010831_
                (lambda () (error '"No clause matching" _in1081810827_)))
               (_K1082110844_
                (lambda (_weak?10834_ _phi10835_ _key10836_ _source10837_)
                  (gx#core-bind!__opt-lambda4481
                   _key10836_
                   (let ((_e10839_
                          (gx#core-resolve-module-export _source10837_)))
                     (##structure
                      gx#import-binding::t
                      (##structure-ref _e10839_ '1 gx#binding::t '#f)
                      _key10836_
                      _phi10835_
                      _e10839_
                      (##direct-structure-ref
                       _source10837_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e10841_ _force-weak?10817_))
                        (if _$e10841_ _$e10841_ _weak?10834_))))
                   gx#core-context-rebind?
                   _phi10835_
                   _ctx10816_))))
          (if (##structure-direct-instance-of?
               _in1081810827_
               (##type-id gx#module-import::t))
              (let* ((_e1082210847_ (##vector-ref _in1081810827_ '1))
                     (_source10850_ _e1082210847_)
                     (_e1082310852_ (##vector-ref _in1081810827_ '2))
                     (_key10855_ _e1082310852_)
                     (_e1082410857_ (##vector-ref _in1081810827_ '3))
                     (_phi10860_ _e1082410857_)
                     (_e1082510862_ (##vector-ref _in1081810827_ '4))
                     (_weak?10865_ _e1082510862_))
                (_K1082110844_
                 _weak?10865_
                 _phi10860_
                 _key10855_
                 _source10850_))
              (_E1082010831_)))))
    (begin
      (define gx#core-bind-import!__0
        (lambda (_in10870_)
          (let* ((_ctx10872_ (gx#current-expander-context))
                 (_force-weak?10874_ '#f))
            (gx#core-bind-import!__opt-lambda10813
             _in10870_
             _ctx10872_
             _force-weak?10874_))))
      (define gx#core-bind-import!__1
        (lambda (_in10876_ _ctx10877_)
          (let ((_force-weak?10879_ '#f))
            (gx#core-bind-import!__opt-lambda10813
             _in10876_
             _ctx10877_
             _force-weak?10879_))))
      (define gx#core-bind-import!
        (lambda _g11530_
          (let ((_g11529_ (length _g11530_)))
            (cond ((fx= _g11529_ 1) (apply gx#core-bind-import!__0 _g11530_))
                  ((fx= _g11529_ 2) (apply gx#core-bind-import!__1 _g11530_))
                  ((fx= _g11529_ 3)
                   (apply gx#core-bind-import!__opt-lambda10813 _g11530_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-import!
                    _g11530_))))))))
  (begin
    (define gx#core-bind-weak-import!__opt-lambda10799
      (lambda (_in10801_ _ctx10802_)
        (gx#core-bind-import!__opt-lambda10813 _in10801_ _ctx10802_ '#t)))
    (begin
      (define gx#core-bind-weak-import!__0
        (lambda (_in10807_)
          (let ((_ctx10809_ (gx#current-expander-context)))
            (gx#core-bind-weak-import!__opt-lambda10799
             _in10807_
             _ctx10809_))))
      (define gx#core-bind-weak-import!
        (lambda _g11532_
          (let ((_g11531_ (length _g11532_)))
            (cond ((fx= _g11531_ 1)
                   (apply gx#core-bind-weak-import!__0 _g11532_))
                  ((fx= _g11531_ 2)
                   (apply gx#core-bind-weak-import!__opt-lambda10799 _g11532_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-weak-import!
                    _g11532_))))))))
  (define gx#core-resolve-module-export
    (lambda (_out10692_)
      (letrec ((_subst10694_
                (lambda (_key10740_)
                  (let* ((_key1074110749_ _key10740_)
                         (_E1074410753_
                          (lambda ()
                            (error '"No clause matching" _key1074110749_)))
                         (_else1074310757_ (lambda () _key10740_))
                         (_K1074510788_
                          (lambda (_mark10760_ _id10761_)
                            (let* ((_mark1076210768_ _mark10760_)
                                   (_E1076410772_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _mark1076210768_)))
                                   (_K1076510780_
                                    (lambda (_subst10775_)
                                      (let ((_$e10777_
                                             (if _subst10775_
                                                 (table-ref
                                                  _subst10775_
                                                  _id10761_
                                                  '#f)
                                                 '#f)))
                                        (if _$e10777_
                                            _$e10777_
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Illegal key; missing substitution"
                                             _key10740_))))))
                              (if (##structure-instance-of?
                                   _mark1076210768_
                                   (##type-id gx#expander-mark::t))
                                  (let* ((_e1076610783_
                                          (##vector-ref _mark1076210768_ '1))
                                         (_subst10786_ _e1076610783_))
                                    (_K1076510780_ _subst10786_))
                                  (_E1076410772_))))))
                    (if (##pair? _key1074110749_)
                        (let ((_hd1074610791_ (##car _key1074110749_))
                              (_tl1074710793_ (##cdr _key1074110749_)))
                          (let* ((_id10796_ _hd1074610791_)
                                 (_mark10798_ _tl1074710793_))
                            (_K1074510788_ _mark10798_ _id10796_)))
                        (_else1074310757_))))))
        (let* ((_out1069510705_ _out10692_)
               (_E1069710709_
                (lambda () (error '"No clause matching" _out1069510705_)))
               (_K1069810716_
                (lambda (_phi10712_ _key10713_ _ctx10714_)
                  (gx#core-context-resolve
                   (gx#core-context-shift _ctx10714_ _phi10712_)
                   (_subst10694_ _key10713_)))))
          (if (##structure-direct-instance-of?
               _out1069510705_
               (##type-id gx#module-export::t))
              (let* ((_e1069910719_ (##vector-ref _out1069510705_ '1))
                     (_ctx10722_ _e1069910719_)
                     (_e1070010724_ (##vector-ref _out1069510705_ '2))
                     (_key10727_ _e1070010724_)
                     (_e1070110729_ (##vector-ref _out1069510705_ '3))
                     (_phi10732_ _e1070110729_)
                     (_e1070210734_ (##vector-ref _out1069510705_ '4))
                     (_e1070310737_ (##vector-ref _out1069510705_ '5)))
                (_K1069810716_ _phi10732_ _key10727_ _ctx10722_))
              (_E1069710709_))))))
  (begin
    (define gx#core-module-export->import__opt-lambda10615
      (lambda (_out10617_ _rename10618_ _dphi10619_)
        (let* ((_out1062010630_ _out10617_)
               (_E1062210634_
                (lambda () (error '"No clause matching" _out1062010630_)))
               (_K1062310646_
                (lambda (_weak?10637_
                         _name10638_
                         _phi10639_
                         _key10640_
                         _ctx10641_)
                  (##structure
                   gx#module-import::t
                   _out10617_
                   (let ((_$e10643_ _rename10618_))
                     (if _$e10643_ _$e10643_ _name10638_))
                   (fx+ _phi10639_ _dphi10619_)
                   _weak?10637_))))
          (if (##structure-direct-instance-of?
               _out1062010630_
               (##type-id gx#module-export::t))
              (let* ((_e1062410649_ (##vector-ref _out1062010630_ '1))
                     (_ctx10652_ _e1062410649_)
                     (_e1062510654_ (##vector-ref _out1062010630_ '2))
                     (_key10657_ _e1062510654_)
                     (_e1062610659_ (##vector-ref _out1062010630_ '3))
                     (_phi10662_ _e1062610659_)
                     (_e1062710664_ (##vector-ref _out1062010630_ '4))
                     (_name10667_ _e1062710664_)
                     (_e1062810669_ (##vector-ref _out1062010630_ '5))
                     (_weak?10672_ _e1062810669_))
                (_K1062310646_
                 _weak?10672_
                 _name10667_
                 _phi10662_
                 _key10657_
                 _ctx10652_))
              (_E1062210634_)))))
    (begin
      (define gx#core-module-export->import__0
        (lambda (_out10677_)
          (let* ((_rename10679_ '#f) (_dphi10681_ '0))
            (gx#core-module-export->import__opt-lambda10615
             _out10677_
             _rename10679_
             _dphi10681_))))
      (define gx#core-module-export->import__1
        (lambda (_out10683_ _rename10684_)
          (let ((_dphi10686_ '0))
            (gx#core-module-export->import__opt-lambda10615
             _out10683_
             _rename10684_
             _dphi10686_))))
      (define gx#core-module-export->import
        (lambda _g11534_
          (let ((_g11533_ (length _g11534_)))
            (cond ((fx= _g11533_ 1)
                   (apply gx#core-module-export->import__0 _g11534_))
                  ((fx= _g11533_ 2)
                   (apply gx#core-module-export->import__1 _g11534_))
                  ((fx= _g11533_ 3)
                   (apply gx#core-module-export->import__opt-lambda10615
                          _g11534_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-module-export->import
                    _g11534_))))))))
  (define gx#core-expand-module%
    (lambda (_stx10545_)
      (letrec ((_make-context10547_
                (lambda (_id10598_)
                  (let* ((_super10600_ (gx#current-expander-context))
                         (_bind-id10602_ (gx#stx-e _id10598_))
                         (_mod-id10604_
                          (if (##structure-instance-of?
                               _super10600_
                               'gx#module-context::t)
                              (make-symbol
                               (##structure-ref
                                _super10600_
                                '1
                                gx#expander-context::t
                                '#f)
                               '"::"
                               _bind-id10602_)
                              _bind-id10602_))
                         (_ns10606_ (symbol->string _mod-id10604_))
                         (_path10613_
                          (if (##structure-instance-of?
                               _super10600_
                               'gx#module-context::t)
                              (let ((_path10608_
                                     (##structure-ref
                                      _super10600_
                                      '7
                                      gx#module-context::t
                                      '#f)))
                                (if (let ((_$e10610_ (pair? _path10608_)))
                                      (if _$e10610_
                                          _$e10610_
                                          (null? _path10608_)))
                                    (cons _bind-id10602_ _path10608_)
                                    (if (not _path10608_)
                                        _bind-id10602_
                                        (cons _bind-id10602_
                                              (cons _path10608_ '())))))
                              _bind-id10602_)))
                    (let ((__obj11516 (make-object gx#module-context::t '11)))
                      (begin
                        (gx#module-context:::init!
                         __obj11516
                         _mod-id10604_
                         _super10600_
                         _ns10606_
                         _path10613_)
                        __obj11516))))))
        (let* ((_e1054810558_ _stx10545_)
               (_E1055010562_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1054810558_)))
               (_E1054910594_
                (lambda ()
                  (if (gx#stx-pair? _e1054810558_)
                      (let ((_e1055110566_ (gx#syntax-e _e1054810558_)))
                        (let ((_hd1055210569_ (##car _e1055110566_))
                              (_tl1055310571_ (##cdr _e1055110566_)))
                          (if (gx#stx-pair? _tl1055310571_)
                              (let ((_e1055410574_
                                     (gx#syntax-e _tl1055310571_)))
                                (let ((_hd1055510577_ (##car _e1055410574_))
                                      (_tl1055610579_ (##cdr _e1055410574_)))
                                  (let* ((_id10582_ _hd1055510577_)
                                         (_body10584_ _tl1055610579_))
                                    (if (if (gx#identifier? _id10582_)
                                            (gx#stx-list? _body10584_)
                                            '#f)
                                        (let* ((_ctx10586_
                                                (_make-context10547_
                                                 _id10582_))
                                               (_body10588_
                                                (gx#core-expand-module-begin
                                                 _body10584_
                                                 _ctx10586_))
                                               (_body10590_
                                                (gx#core-quote-syntax__1
                                                 (gx#core-cons
                                                  '%#begin
                                                  _body10588_)
                                                 (gx#stx-source _stx10545_))))
                                          (begin
                                            (##structure-set!
                                             _ctx10586_
                                             (make-promise
                                              (lambda ()
                                                (gx#eval-syntax* _body10590_)))
                                             '10
                                             gx#module-context::t
                                             '#f)
                                            (##structure-set!
                                             _ctx10586_
                                             _body10590_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            (gx#core-bind-syntax!__0
                                             _id10582_
                                             _ctx10586_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-list
                                              '%#module
                                              (gx#core-quote-syntax__0
                                               _id10582_)
                                              _body10590_)
                                             (gx#stx-source _stx10545_))))
                                        (_E1055010562_)))))
                              (_E1055010562_))))
                      (_E1055010562_)))))
          (_E1054910594_)))))
  (define gx#core-expand-module-begin
    (lambda (_body10511_ _ctx10512_)
      (call-with-parameters
       (lambda ()
         (begin
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx10515_
                   (gx#core-expand-head (cons '%%begin-module _body10511_)))
                  (_e1051610523_ _stx10515_)
                  (_E1051810527_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx10515_)))
                  (_E1051710541_
                   (lambda ()
                     (if (gx#stx-pair? _e1051610523_)
                         (let ((_e1051910531_ (gx#syntax-e _e1051610523_)))
                           (let ((_hd1052010534_ (##car _e1051910531_))
                                 (_tl1052110536_ (##cdr _e1051910531_)))
                             (if (if (gx#identifier? _hd1052010534_)
                                     (gx#core-identifier=?
                                      _hd1052010534_
                                      '%#begin-module)
                                     '#f)
                                 (let ((_body10539_ _tl1052110536_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx10515_)
                                           _body10539_
                                           (gx#core-expand-module-body
                                            _body10539_))
                                       (_E1051810527_)))
                                 (_E1051810527_))))
                         (_E1051810527_)))))
             (_E1051710541_))))
       gx#current-expander-context
       _ctx10512_
       gx#current-expander-phi
       '0)))
  (define gx#core-expand-module-body
    (lambda (_body10307_)
      (letrec ((_expand-special10309_
                (lambda (_hd10438_ _K10439_ _rest10440_ _r10441_)
                  (let* ((_e1044210459_ _hd10438_)
                         (_E1045410463_
                          (lambda ()
                            (_K10439_
                             _rest10440_
                             (cons (gx#core-expand-top _hd10438_) _r10441_))))
                         (_E1044410475_
                          (lambda ()
                            (if (gx#stx-pair? _e1044210459_)
                                (let ((_e1045510467_
                                       (gx#syntax-e _e1044210459_)))
                                  (let ((_hd1045610470_ (##car _e1045510467_))
                                        (_tl1045710472_ (##cdr _e1045510467_)))
                                    (if (if (gx#identifier? _hd1045610470_)
                                            (gx#core-identifier=?
                                             _hd1045610470_
                                             '%#export)
                                            '#f)
                                        (if '#t
                                            (_K10439_
                                             _rest10440_
                                             (cons _hd10438_ _r10441_))
                                            (_E1045410463_))
                                        (_E1045410463_))))
                                (_E1045410463_))))
                         (_E1044310507_
                          (lambda ()
                            (if (gx#stx-pair? _e1044210459_)
                                (let ((_e1044510479_
                                       (gx#syntax-e _e1044210459_)))
                                  (let ((_hd1044610482_ (##car _e1044510479_))
                                        (_tl1044710484_ (##cdr _e1044510479_)))
                                    (if (if (gx#identifier? _hd1044610482_)
                                            (gx#core-identifier=?
                                             _hd1044610482_
                                             '%#define-values)
                                            '#f)
                                        (if (gx#stx-pair? _tl1044710484_)
                                            (let ((_e1044810487_
                                                   (gx#syntax-e
                                                    _tl1044710484_)))
                                              (let ((_hd1044910490_
                                                     (##car _e1044810487_))
                                                    (_tl1045010492_
                                                     (##cdr _e1044810487_)))
                                                (let ((_hd-bind10495_
                                                       _hd1044910490_))
                                                  (if (gx#stx-pair?
                                                       _tl1045010492_)
                                                      (let ((_e1045110497_
                                                             (gx#syntax-e
                                                              _tl1045010492_)))
                                                        (let ((_hd1045210500_
                                                               (##car _e1045110497_))
                                                              (_tl1045310502_
                                                               (##cdr _e1045110497_)))
                                                          (let ((_expr10505_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1045210500_))
                    (if (gx#stx-null? _tl1045310502_)
                        (if (gx#core-bind-values? _hd-bind10495_)
                            (begin
                              (gx#core-bind-values!__0 _hd-bind10495_)
                              (_K10439_ _rest10440_ (cons _hd10438_ _r10441_)))
                            (_E1044410475_))
                        (_E1044410475_)))))
              (_E1044410475_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1044410475_))
                                        (_E1044410475_))))
                                (_E1044410475_)))))
                    (_E1044310507_))))
               (_expand-body10310_
                (lambda (_rbody10312_)
                  (let _lp10314_ ((_rest10316_ _rbody10312_) (_body10317_ '()))
                    (let* ((_rest1031810326_ _rest10316_)
                           (_E1032110330_
                            (lambda ()
                              (error '"No clause matching" _rest1031810326_)))
                           (_else1032010334_ (lambda () _body10317_))
                           (_K1032210426_
                            (lambda (_rest10337_ _hd10338_)
                              (let* ((_e1033910360_ _hd10338_)
                                     (_E1035510364_
                                      (lambda ()
                                        (_lp10314_
                                         _rest10337_
                                         (cons (gx#core-expand-expression
                                                _hd10338_)
                                               _body10317_))))
                                     (_E1035110378_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1033910360_)
                                            (let ((_e1035610368_
                                                   (gx#syntax-e
                                                    _e1033910360_)))
                                              (let ((_hd1035710371_
                                                     (##car _e1035610368_))
                                                    (_tl1035810373_
                                                     (##cdr _e1035610368_)))
                                                (let ((_form10376_
                                                       _hd1035710371_))
                                                  (if (gx#core-bound-identifier?__opt-lambda4205
                                                       _form10376_
                                                       gx#special-form-binding?)
                                                      (_lp10314_
                                                       _rest10337_
                                                       (cons _hd10338_
                                                             _body10317_))
                                                      (_E1035510364_)))))
                                            (_E1035510364_))))
                                     (_E1034110390_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1033910360_)
                                            (let ((_e1035210382_
                                                   (gx#syntax-e
                                                    _e1033910360_)))
                                              (let ((_hd1035310385_
                                                     (##car _e1035210382_))
                                                    (_tl1035410387_
                                                     (##cdr _e1035210382_)))
                                                (if (if (gx#identifier?
                                                         _hd1035310385_)
                                                        (gx#core-identifier=?
                                                         _hd1035310385_
                                                         '%#export)
                                                        '#f)
                                                    (if '#t
                                                        (_lp10314_
                                                         _rest10337_
                                                         (cons (gx#core-expand-export%__0
                                                                _hd10338_)
                                                               _body10317_))
                                                        (_E1035110378_))
                                                    (_E1035110378_))))
                                            (_E1035110378_))))
                                     (_E1034010422_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1033910360_)
                                            (let ((_e1034210394_
                                                   (gx#syntax-e
                                                    _e1033910360_)))
                                              (let ((_hd1034310397_
                                                     (##car _e1034210394_))
                                                    (_tl1034410399_
                                                     (##cdr _e1034210394_)))
                                                (if (if (gx#identifier?
                                                         _hd1034310397_)
                                                        (gx#core-identifier=?
                                                         _hd1034310397_
                                                         '%#define-values)
                                                        '#f)
                                                    (if (gx#stx-pair?
                                                         _tl1034410399_)
                                                        (let ((_e1034510402_
                                                               (gx#syntax-e
                                                                _tl1034410399_)))
                                                          (let ((_hd1034610405_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1034510402_))
                        (_tl1034710407_ (##cdr _e1034510402_)))
                    (let ((_hd-bind10410_ _hd1034610405_))
                      (if (gx#stx-pair? _tl1034710407_)
                          (let ((_e1034810412_ (gx#syntax-e _tl1034710407_)))
                            (let ((_hd1034910415_ (##car _e1034810412_))
                                  (_tl1035010417_ (##cdr _e1034810412_)))
                              (let ((_expr10420_ _hd1034910415_))
                                (if (gx#stx-null? _tl1035010417_)
                                    (if '#t
                                        (_lp10314_
                                         _rest10337_
                                         (cons (gx#core-quote-syntax__1
                                                (gx#core-list
                                                 '%#define-values
                                                 (gx#core-quote-bind-values
                                                  _hd-bind10410_)
                                                 (gx#core-expand-expression
                                                  _expr10420_))
                                                (gx#stx-source _hd10338_))
                                               _body10317_))
                                        (_E1034110390_))
                                    (_E1034110390_)))))
                          (_E1034110390_)))))
                (_E1034110390_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1034110390_))))
                                            (_E1034110390_)))))
                                (_E1034010422_)))))
                      (if (##pair? _rest1031810326_)
                          (let ((_hd1032310429_ (##car _rest1031810326_))
                                (_tl1032410431_ (##cdr _rest1031810326_)))
                            (let* ((_hd10434_ _hd1032310429_)
                                   (_rest10436_ _tl1032410431_))
                              (_K1032210426_ _rest10436_ _hd10434_)))
                          (_else1032010334_)))))))
        (_expand-body10310_
         (gx#core-expand-block__opt-lambda5259
          (cons '%#begin-module _body10307_)
          _expand-special10309_
          '#f
          values)))))
  (define gx#core-expand-import/export
    (lambda (_stx10150_
             _expanded?10151_
             _method10152_
             _current-phi10153_
             _expand110154_)
      (letrec ((_K10156_
                (lambda (_rest10274_ _r10275_)
                  (let* ((_e1027610283_ _rest10274_)
                         (_E1027810287_ (lambda () _r10275_))
                         (_E1027710303_
                          (lambda ()
                            (if (gx#stx-pair? _e1027610283_)
                                (let ((_e1027910291_
                                       (gx#syntax-e _e1027610283_)))
                                  (let ((_hd1028010294_ (##car _e1027910291_))
                                        (_tl1028110296_ (##cdr _e1027910291_)))
                                    (let* ((_hd10299_ _hd1028010294_)
                                           (_rest10301_ _tl1028110296_))
                                      (if '#t
                                          (_step10157_
                                           _hd10299_
                                           _rest10301_
                                           _r10275_)
                                          (_E1027810287_)))))
                                (_E1027810287_)))))
                    (_E1027710303_))))
               (_step10157_
                (lambda (_hd10188_ _rest10189_ _r10190_)
                  (let* ((_e1019110209_ _hd10188_)
                         (_E1020410213_
                          (lambda ()
                            (if (_expanded?10151_ (gx#stx-e _hd10188_))
                                (_K10156_
                                 _rest10189_
                                 (cons (gx#stx-e _hd10188_) _r10190_))
                                (_expand110154_
                                 _hd10188_
                                 _K10156_
                                 _rest10189_
                                 _r10190_))))
                         (_E1020010229_
                          (lambda ()
                            (if (gx#stx-pair? _e1019110209_)
                                (let ((_e1020510217_
                                       (gx#syntax-e _e1019110209_)))
                                  (let ((_hd1020610220_ (##car _e1020510217_))
                                        (_tl1020710222_ (##cdr _e1020510217_)))
                                    (let* ((_macro10225_ _hd1020610220_)
                                           (_body10227_ _tl1020710222_))
                                      (if (gx#core-bound-identifier?__opt-lambda4205
                                           _macro10225_
                                           gx#syntax-binding?)
                                          (_K10156_
                                           (cons (gx#core-apply-expander__opt-lambda4977
                                                  (gx#syntax-local-e__0
                                                   _macro10225_)
                                                  _hd10188_
                                                  _method10152_)
                                                 _rest10189_)
                                           _r10190_)
                                          (_E1020410213_)))))
                                (_E1020410213_))))
                         (_E1019310243_
                          (lambda ()
                            (if (gx#stx-pair? _e1019110209_)
                                (let ((_e1020110233_
                                       (gx#syntax-e _e1019110209_)))
                                  (let ((_hd1020210236_ (##car _e1020110233_))
                                        (_tl1020310238_ (##cdr _e1020110233_)))
                                    (if (eq? (gx#stx-e _hd1020210236_) 'begin:)
                                        (let ((_body10241_ _tl1020310238_))
                                          (if '#t
                                              (_K10156_
                                               (gx#stx-foldr
                                                cons
                                                _rest10189_
                                                _body10241_)
                                               _r10190_)
                                              (_E1020010229_)))
                                        (_E1020010229_))))
                                (_E1020010229_))))
                         (_E1019210270_
                          (lambda ()
                            (if (gx#stx-pair? _e1019110209_)
                                (let ((_e1019410247_
                                       (gx#syntax-e _e1019110209_)))
                                  (let ((_hd1019510250_ (##car _e1019410247_))
                                        (_tl1019610252_ (##cdr _e1019410247_)))
                                    (if (eq? (gx#stx-e _hd1019510250_) 'phi:)
                                        (if (gx#stx-pair? _tl1019610252_)
                                            (let ((_e1019710255_
                                                   (gx#syntax-e
                                                    _tl1019610252_)))
                                              (let ((_hd1019810258_
                                                     (##car _e1019710255_))
                                                    (_tl1019910260_
                                                     (##cdr _e1019710255_)))
                                                (let* ((_dphi10263_
                                                        _hd1019810258_)
                                                       (_body10265_
                                                        _tl1019910260_))
                                                  (if (gx#stx-fixnum?
                                                       _dphi10263_)
                                                      (let ((_rbody10268_
                                                             (call-with-parameters
                                                              (lambda ()
                                                                (_K10156_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body10265_
                         '()))
                      _current-phi10153_
                      (fx+ (gx#stx-e _dphi10263_) (_current-phi10153_)))))
                (_K10156_ _rest10189_ (foldr1 cons _r10190_ _rbody10268_)))
              (_E1019310243_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1019310243_))
                                        (_E1019310243_))))
                                (_E1019310243_)))))
                    (_E1019210270_)))))
        (let* ((_e1015810165_ _stx10150_)
               (_E1016010169_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1015810165_)))
               (_E1015910184_
                (lambda ()
                  (if (gx#stx-pair? _e1015810165_)
                      (let ((_e1016110173_ (gx#syntax-e _e1015810165_)))
                        (let ((_hd1016210176_ (##car _e1016110173_))
                              (_tl1016310178_ (##cdr _e1016110173_)))
                          (let ((_body10181_ _tl1016310178_))
                            (if '#t
                                (if (_current-phi10153_)
                                    (_K10156_ _body10181_ '())
                                    (call-with-parameters
                                     (lambda () (_K10156_ _body10181_ '()))
                                     _current-phi10153_
                                     (gx#current-expander-phi)))
                                (_E1016010169_)))))
                      (_E1016010169_)))))
          (_E1015910184_)))))
  (begin
    (define gx#core-expand-import%__opt-lambda9687
      (lambda (_stx9689_ _internal-expand?9690_)
        (letrec ((_expand19692_
                  (lambda (_hd10135_ _K10136_ _rest10137_ _r10138_)
                    (if (gx#core-bound-module? _hd10135_)
                        (_import19693_
                         (gx#syntax-local-e__0 _hd10135_)
                         _K10136_
                         _rest10137_
                         _r10138_)
                        (if (gx#core-library-module-path? _hd10135_)
                            (_import19693_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd10135_))
                             _K10136_
                             _rest10137_
                             _r10138_)
                            (if (gx#stx-string? _hd10135_)
                                (_import19693_
                                 (gx#import-module__0
                                  (gx#core-resolve-module-path__opt-lambda10975
                                   _hd10135_
                                   (gx#stx-source _stx9689_)))
                                 _K10136_
                                 _rest10137_
                                 _r10138_)
                                (if (##structure-instance-of?
                                     (gx#stx-e _hd10135_)
                                     'gx#module-context::t)
                                    (_K10136_
                                     _rest10137_
                                     (cons (gx#stx-e _hd10135_) _r10138_))
                                    (if (_import-spec?9694_ _hd10135_)
                                        (_import-spec9699_
                                         _hd10135_
                                         _K10136_
                                         _rest10137_
                                         _r10138_)
                                        (if (_import-submodule?9695_ _hd10135_)
                                            (_import-submodule9697_
                                             _hd10135_
                                             _K10136_
                                             _rest10137_
                                             _r10138_)
                                            (if (_import-runtime?9696_
                                                 _hd10135_)
                                                (_import-runtime9698_
                                                 _hd10135_
                                                 _K10136_
                                                 _rest10137_
                                                 _r10138_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; illegal import"
                                                 _stx9689_
                                                 _hd10135_))))))))))
                 (_import19693_
                  (lambda (_ctx10124_ _K10125_ _rest10126_ _r10127_)
                    (let ((_dphi10129_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K10125_
                       _rest10126_
                       (cons (##structure
                              gx#import-set::t
                              _ctx10124_
                              _dphi10129_
                              (map (lambda (_g1013010132_)
                                     (gx#core-module-export->import__opt-lambda10615
                                      _g1013010132_
                                      '#f
                                      _dphi10129_))
                                   (##structure-ref
                                    _ctx10124_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r10127_)))))
                 (_import-spec?9694_
                  (lambda (_hd10081_)
                    (let* ((_e1008210092_ _hd10081_)
                           (_E1008410096_ (lambda () '#f))
                           (_E1008310120_
                            (lambda ()
                              (if (gx#stx-pair? _e1008210092_)
                                  (let ((_e1008510100_
                                         (gx#syntax-e _e1008210092_)))
                                    (let ((_hd1008610103_
                                           (##car _e1008510100_))
                                          (_tl1008710105_
                                           (##cdr _e1008510100_)))
                                      (if (eq? (gx#stx-e _hd1008610103_)
                                               'spec:)
                                          (if (gx#stx-pair? _tl1008710105_)
                                              (let ((_e1008810108_
                                                     (gx#syntax-e
                                                      _tl1008710105_)))
                                                (let ((_hd1008910111_
                                                       (##car _e1008810108_))
                                                      (_tl1009010113_
                                                       (##cdr _e1008810108_)))
                                                  (let* ((_spath10116_
                                                          _hd1008910111_)
                                                         (_specs10118_
                                                          _tl1009010113_))
                                                    (if '#t
                                                        '#t
                                                        (_E1008410096_)))))
                                              (_E1008410096_))
                                          (_E1008410096_))))
                                  (_E1008410096_)))))
                      (_E1008310120_))))
                 (_import-submodule?9695_
                  (lambda (_hd10038_)
                    (let* ((_e1003910049_ _hd10038_)
                           (_E1004110053_ (lambda () '#f))
                           (_E1004010077_
                            (lambda ()
                              (if (gx#stx-pair? _e1003910049_)
                                  (let ((_e1004210057_
                                         (gx#syntax-e _e1003910049_)))
                                    (let ((_hd1004310060_
                                           (##car _e1004210057_))
                                          (_tl1004410062_
                                           (##cdr _e1004210057_)))
                                      (if (eq? (gx#stx-e _hd1004310060_) 'in:)
                                          (if (gx#stx-pair? _tl1004410062_)
                                              (let ((_e1004510065_
                                                     (gx#syntax-e
                                                      _tl1004410062_)))
                                                (let ((_hd1004610068_
                                                       (##car _e1004510065_))
                                                      (_tl1004710070_
                                                       (##cdr _e1004510065_)))
                                                  (let* ((_top10073_
                                                          _hd1004610068_)
                                                         (_sub10075_
                                                          _tl1004710070_))
                                                    (if '#t
                                                        '#t
                                                        (_E1004110053_)))))
                                              (_E1004110053_))
                                          (_E1004110053_))))
                                  (_E1004110053_)))))
                      (_E1004010077_))))
                 (_import-runtime?9696_
                  (lambda (_hd9995_)
                    (let* ((_e999610006_ _hd9995_)
                           (_E999810010_ (lambda () '#f))
                           (_E999710034_
                            (lambda ()
                              (if (gx#stx-pair? _e999610006_)
                                  (let ((_e999910014_
                                         (gx#syntax-e _e999610006_)))
                                    (let ((_hd1000010017_ (##car _e999910014_))
                                          (_tl1000110019_
                                           (##cdr _e999910014_)))
                                      (if (eq? (gx#stx-e _hd1000010017_)
                                               'runtime:)
                                          (if (gx#stx-pair? _tl1000110019_)
                                              (let ((_e1000210022_
                                                     (gx#syntax-e
                                                      _tl1000110019_)))
                                                (let ((_hd1000310025_
                                                       (##car _e1000210022_))
                                                      (_tl1000410027_
                                                       (##cdr _e1000210022_)))
                                                  (let* ((_top10030_
                                                          _hd1000310025_)
                                                         (_spath10032_
                                                          _tl1000410027_))
                                                    (if '#t
                                                        '#t
                                                        (_E999810010_)))))
                                              (_E999810010_))
                                          (_E999810010_))))
                                  (_E999810010_)))))
                      (_E999710034_))))
                 (_import-submodule9697_
                  (lambda (_hd9962_ _K9963_ _rest9964_ _r9965_)
                    (let* ((_e99669973_ _hd9962_)
                           (_E99689977_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e99669973_)))
                           (_E99679991_
                            (lambda ()
                              (if (gx#stx-pair? _e99669973_)
                                  (let ((_e99699981_
                                         (gx#syntax-e _e99669973_)))
                                    (let ((_hd99709984_ (##car _e99699981_))
                                          (_tl99719986_ (##cdr _e99699981_)))
                                      (let ((_spath9989_ _tl99719986_))
                                        (if '#t
                                            (_import19693_
                                             (_import-spec-source9700_
                                              _spath9989_)
                                             _K9963_
                                             _rest9964_
                                             _r9965_)
                                            (_E99689977_)))))
                                  (_E99689977_)))))
                      (_E99679991_))))
                 (_import-runtime9698_
                  (lambda (_hd9929_ _K9930_ _rest9931_ _r9932_)
                    (let* ((_e99339940_ _hd9929_)
                           (_E99359944_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e99339940_)))
                           (_E99349958_
                            (lambda ()
                              (if (gx#stx-pair? _e99339940_)
                                  (let ((_e99369948_
                                         (gx#syntax-e _e99339940_)))
                                    (let ((_hd99379951_ (##car _e99369948_))
                                          (_tl99389953_ (##cdr _e99369948_)))
                                      (let ((_spath9956_ _tl99389953_))
                                        (if '#t
                                            (_K9930_ _rest9931_
                                                     (cons (_import-spec-source9700_
                                                            _spath9956_)
                                                           _r9932_))
                                            (_E99359944_)))))
                                  (_E99359944_)))))
                      (_E99349958_))))
                 (_import-spec9699_
                  (lambda (_hd9768_ _K9769_ _rest9770_ _r9771_)
                    (let* ((_e97729789_ _hd9768_)
                           (_E97819793_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e97729789_)))
                           (_E97749903_
                            (lambda ()
                              (if (gx#stx-pair? _e97729789_)
                                  (let ((_e97829797_
                                         (gx#syntax-e _e97729789_)))
                                    (let ((_hd97839800_ (##car _e97829797_))
                                          (_tl97849802_ (##cdr _e97829797_)))
                                      (if (gx#stx-pair? _tl97849802_)
                                          (let ((_e97859805_
                                                 (gx#syntax-e _tl97849802_)))
                                            (let ((_hd97869808_
                                                   (##car _e97859805_))
                                                  (_tl97879810_
                                                   (##cdr _e97859805_)))
                                              (let* ((_path9813_ _hd97869808_)
                                                     (_specs9815_
                                                      _tl97879810_))
                                                (if '#t
                                                    (let ((_src-ctx9817_
                                                           (_import-spec-source9700_
                                                            _path9813_))
                                                          (_exports9818_
                                                           (make-table))
                                                          (_specs9819_
                                                           (gx#syntax->list
                                                            _specs9815_)))
                                                      (begin
                                                        (for-each
                                                         (lambda (_out9821_)
                                                           (table-set!
                                                            _exports9818_
                                                            (cons (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _out9821_
                           '3
                           gx#module-export::t
                           '#f)
                          (##direct-structure-ref
                           _out9821_
                           '4
                           gx#module-export::t
                           '#f))
                    _out9821_))
                 (##structure-ref _src-ctx9817_ '9 gx#module-context::t '#f))
                (_K9769_ _rest9770_
                         (foldl1 (lambda (_spec9823_ _r9824_)
                                   (let* ((_e98259841_ _spec9823_)
                                          (_E98279845_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _e98259841_)))
                                          (_E98269899_
                                           (lambda ()
                                             (if (gx#stx-pair? _e98259841_)
                                                 (let ((_e98289849_
                                                        (gx#syntax-e
                                                         _e98259841_)))
                                                   (let ((_hd98299852_
                                                          (##car _e98289849_))
                                                         (_tl98309854_
                                                          (##cdr _e98289849_)))
                                                     (let ((_phi9857_
                                                            _hd98299852_))
                                                       (if (gx#stx-pair?
                                                            _tl98309854_)
                                                           (let ((_e98319859_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl98309854_)))
                     (let ((_hd98329862_ (##car _e98319859_))
                           (_tl98339864_ (##cdr _e98319859_)))
                       (let ((_name9867_ _hd98329862_))
                         (if (gx#stx-pair? _tl98339864_)
                             (let ((_e98349869_ (gx#syntax-e _tl98339864_)))
                               (let ((_hd98359872_ (##car _e98349869_))
                                     (_tl98369874_ (##cdr _e98349869_)))
                                 (let ((_src-phi9877_ _hd98359872_))
                                   (if (gx#stx-pair? _tl98369874_)
                                       (let ((_e98379879_
                                              (gx#syntax-e _tl98369874_)))
                                         (let ((_hd98389882_
                                                (##car _e98379879_))
                                               (_tl98399884_
                                                (##cdr _e98379879_)))
                                           (let ((_src-name9887_ _hd98389882_))
                                             (if (gx#stx-null? _tl98399884_)
                                                 (if (if (gx#stx-fixnum?
                                                          _src-phi9877_)
                                                         (if (gx#identifier?
                                                              _src-name9887_)
                                                             (if (gx#stx-fixnum?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _phi9857_)
                         (gx#identifier? _name9867_)
                         '#f)
                     '#f)
                 '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_src-phi9889_
                                                            (gx#stx-e
                                                             _src-phi9877_))
                                                           (_src-name9890_
                                                            (gx#core-identifier-key
                                                             _src-name9887_))
                                                           (_phi9891_
                                                            (gx#stx-e
                                                             _phi9857_))
                                                           (_name9892_
                                                            (gx#core-identifier-key
                                                             _name9867_)))
                                                       (let ((_$e9894_
                                                              (table-ref
                                                               _exports9818_
                                                               (cons _src-phi9889_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _src-name9890_)
                       '#f)))
                 (if _$e9894_
                     ((lambda (_out9897_)
                        (cons (gx#core-module-export->import__opt-lambda10615
                               _out9897_
                               _name9892_
                               (fx- _phi9891_ _src-phi9889_))
                              _r9824_))
                      _$e9894_)
                     (gx#raise-syntax-error
                      '#f
                      '"Bad syntax; no matching export"
                      _stx9689_
                      _hd9768_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E98279845_))
                                                 (_E98279845_)))))
                                       (_E98279845_)))))
                             (_E98279845_)))))
                   (_E98279845_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E98279845_)))))
                                     (_E98269899_)))
                                 _r9771_
                                 _specs9819_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E97819793_)))))
                                          (_E97819793_))))
                                  (_E97819793_))))
                           (_E97739925_
                            (lambda ()
                              (if (gx#stx-pair? _e97729789_)
                                  (let ((_e97759907_
                                         (gx#syntax-e _e97729789_)))
                                    (let ((_hd97769910_ (##car _e97759907_))
                                          (_tl97779912_ (##cdr _e97759907_)))
                                      (if (gx#stx-pair? _tl97779912_)
                                          (let ((_e97789915_
                                                 (gx#syntax-e _tl97779912_)))
                                            (let ((_hd97799918_
                                                   (##car _e97789915_))
                                                  (_tl97809920_
                                                   (##cdr _e97789915_)))
                                              (let ((_path9923_ _hd97799918_))
                                                (if (gx#stx-null? _tl97809920_)
                                                    (if '#t
                                                        (_K9769_ _rest9770_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (_import-spec-source9700_ _path9923_) _r9771_))
                (_E97749903_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E97749903_)))))
                                          (_E97749903_))))
                                  (_E97749903_)))))
                      (_E97739925_))))
                 (_import-spec-source9700_
                  (lambda (_spath9766_)
                    (gx#core-import-nested-module _spath9766_ _stx9689_)))
                 (_import!9701_
                  (lambda (_rbody9714_)
                    (letrec* ((_current-ctx9716_ (gx#current-expander-context))
                              (_deps9717_ (make-hash-table-eq))
                              (_bind!9718_
                               (lambda (_hd9764_)
                                 (begin
                                   (gx#core-bind-import!__1
                                    _hd9764_
                                    _current-ctx9716_)
                                   (if (if (fxpositive?
                                            (##direct-structure-ref
                                             _hd9764_
                                             '3
                                             gx#module-import::t
                                             '#f))
                                           (fxzero? (##direct-structure-ref
                                                     (##direct-structure-ref
                                                      _hd9764_
                                                      '1
                                                      gx#module-import::t
                                                      '#f)
                                                     '3
                                                     gx#module-export::t
                                                     '#f))
                                           '#f)
                                       (table-set!
                                        _deps9717_
                                        (##direct-structure-ref
                                         (##direct-structure-ref
                                          _hd9764_
                                          '1
                                          gx#module-import::t
                                          '#f)
                                         '1
                                         gx#module-export::t
                                         '#f)
                                        '#t)
                                       '#!void))))
                              (_fold-e9719_
                               (lambda (_in9761_ _r9762_)
                                 (if (##structure-direct-instance-of?
                                      _in9761_
                                      'gx#module-import::t)
                                     (cons _in9761_ _r9762_)
                                     (if (##structure-direct-instance-of?
                                          _in9761_
                                          'gx#import-set::t)
                                         (foldl1 cons
                                                 _r9762_
                                                 (##direct-structure-ref
                                                  _in9761_
                                                  '3
                                                  gx#import-set::t
                                                  '#f))
                                         _r9762_)))))
                      (let _lp9721_ ((_rest9723_ _rbody9714_) (_body9724_ '()))
                        (let* ((_rest97259733_ _rest9723_)
                               (_E97289737_
                                (lambda ()
                                  (error '"No clause matching"
                                         _rest97259733_)))
                               (_else97279743_
                                (lambda ()
                                  (begin
                                    (if (##structure-instance-of?
                                         _current-ctx9716_
                                         'gx#module-context::t)
                                        (##structure-set!
                                         _current-ctx9716_
                                         (foldl1 _fold-e9719_
                                                 (##structure-ref
                                                  _current-ctx9716_
                                                  '8
                                                  gx#module-context::t
                                                  '#f)
                                                 _body9724_)
                                         '8
                                         gx#module-context::t
                                         '#f)
                                        '#!void)
                                    (table-for-each
                                     (lambda (_ctx9741_ _g11535_)
                                       (gx#eval-module _ctx9741_))
                                     _deps9717_)
                                    _body9724_)))
                               (_K97299749_
                                (lambda (_rest9746_ _hd9747_)
                                  (begin
                                    (if (##structure-direct-instance-of?
                                         _hd9747_
                                         'gx#module-import::t)
                                        (_bind!9718_ _hd9747_)
                                        (if (##structure-direct-instance-of?
                                             _hd9747_
                                             'gx#import-set::t)
                                            (for-each
                                             _bind!9718_
                                             (##direct-structure-ref
                                              _hd9747_
                                              '3
                                              gx#import-set::t
                                              '#f))
                                            (if (##structure-instance-of?
                                                 _hd9747_
                                                 'gx#module-context::t)
                                                '#!void
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _stx9689_
                                                 _hd9747_))))
                                    (_lp9721_
                                     _rest9746_
                                     (cons _hd9747_ _body9724_))))))
                          (if (##pair? _rest97259733_)
                              (let ((_hd97309752_ (##car _rest97259733_))
                                    (_tl97319754_ (##cdr _rest97259733_)))
                                (let* ((_hd9757_ _hd97309752_)
                                       (_rest9759_ _tl97319754_))
                                  (_K97299749_ _rest9759_ _hd9757_)))
                              (_else97279743_)))))))
                 (_expanded-import?9702_
                  (lambda (_e9706_)
                    (let ((_$e9708_
                           (##structure-direct-instance-of?
                            _e9706_
                            'gx#import-set::t)))
                      (if _$e9708_
                          _$e9708_
                          (let ((_$e9711_
                                 (##structure-direct-instance-of?
                                  _e9706_
                                  'gx#module-import::t)))
                            (if _$e9711_
                                _$e9711_
                                (##structure-instance-of?
                                 _e9706_
                                 'gx#module-context::t))))))))
          (let ((_rbody9704_
                 (gx#core-expand-import/export
                  _stx9689_
                  _expanded-import?9702_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand19692_)))
            (if _internal-expand?9690_
                (reverse _rbody9704_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!9701_ _rbody9704_))
                 (gx#stx-source _stx9689_)))))))
    (begin
      (define gx#core-expand-import%__0
        (lambda (_stx10143_)
          (let ((_internal-expand?10145_ '#f))
            (gx#core-expand-import%__opt-lambda9687
             _stx10143_
             _internal-expand?10145_))))
      (define gx#core-expand-import%
        (lambda _g11537_
          (let ((_g11536_ (length _g11537_)))
            (cond ((fx= _g11536_ 1) (apply gx#core-expand-import%__0 _g11537_))
                  ((fx= _g11536_ 2)
                   (apply gx#core-expand-import%__opt-lambda9687 _g11537_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-import%
                    _g11537_))))))))
  (define gx#core-import-nested-module
    (lambda (_spath9616_ _where9617_)
      (let* ((_e96189625_ _spath9616_)
             (_E96209629_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e96189625_)))
             (_E96199684_
              (lambda ()
                (if (gx#stx-pair? _e96189625_)
                    (let ((_e96219633_ (gx#syntax-e _e96189625_)))
                      (let ((_hd96229636_ (##car _e96219633_))
                            (_tl96239638_ (##cdr _e96219633_)))
                        (let* ((_origin9641_ _hd96229636_)
                               (_sub9643_ _tl96239638_))
                          (if '#t
                              (let ((_origin-ctx9645_
                                     (if (gx#stx-false? _origin9641_)
                                         (gx#current-expander-context)
                                         (gx#import-module__0 _origin9641_))))
                                (let _lp9647_ ((_rest9649_ _sub9643_)
                                               (_ctx9650_ _origin-ctx9645_))
                                  (let* ((_e96519658_ _rest9649_)
                                         (_E96539662_ (lambda () _ctx9650_))
                                         (_E96529680_
                                          (lambda ()
                                            (if (gx#stx-pair? _e96519658_)
                                                (let ((_e96549666_
                                                       (gx#syntax-e
                                                        _e96519658_)))
                                                  (let ((_hd96559669_
                                                         (##car _e96549666_))
                                                        (_tl96569671_
                                                         (##cdr _e96549666_)))
                                                    (let* ((_id9674_
                                                            _hd96559669_)
                                                           (_rest9676_
                                                            _tl96569671_))
                                                      (if '#t
                                                          (let ((_bind9678_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#resolve-identifier__opt-lambda4762
                          _id9674_
                          '0
                          _ctx9650_)))
                    (begin
                      (if (if (##structure-direct-instance-of?
                               _bind9678_
                               'gx#syntax-binding::t)
                              (##structure-instance-of?
                               (##direct-structure-ref
                                _bind9678_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               'gx#module-context::t)
                              '#f)
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where9617_
                           _spath9616_
                           _id9674_))
                      (_lp9647_
                       _rest9676_
                       (##direct-structure-ref
                        _bind9678_
                        '4
                        gx#syntax-binding::t
                        '#f))))
                  (_E96539662_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E96539662_)))))
                                    (_E96529680_))))
                              (_E96209629_)))))
                    (_E96209629_)))))
        (_E96199684_))))
  (define gx#core-expand-import-source
    (lambda (_hd9614_)
      (gx#core-expand-import%__opt-lambda9687
       (cons 'import-internal% (cons _hd9614_ '()))
       '#t)))
  (begin
    (define gx#core-expand-export%__opt-lambda9196
      (lambda (_stx9198_ _internal-expand?9199_)
        (letrec* ((_make-export__opt-lambda9560__1150511506_
                   (lambda (_bind9562_ _phi9563_ _ctx9564_ _name9565_)
                     (let* ((_key9567_
                             (##structure-ref _bind9562_ '2 gx#binding::t '#f))
                            (_export-key9569_
                             (if _name9565_
                                 (gx#core-identifier-key _name9565_)
                                 _key9567_)))
                       (##structure
                        gx#module-export::t
                        _ctx9564_
                        _key9567_
                        _phi9563_
                        _export-key9569_
                        (let ((_$e9572_
                               (##structure-instance-of?
                                _bind9562_
                                'gx#extern-binding::t)))
                          (if _$e9572_
                              _$e9572_
                              (##structure-direct-instance-of?
                               _bind9562_
                               'gx#import-binding::t)))))))
                  (_make-export__0__1150711510_
                   (lambda (_bind9578_)
                     (let* ((_phi9580_ (gx#current-export-expander-phi))
                            (_ctx9582_ (gx#current-expander-context))
                            (_name9584_ '#f))
                       (_make-export__opt-lambda9560__1150511506_
                        _bind9578_
                        _phi9580_
                        _ctx9582_
                        _name9584_))))
                  (_make-export__1__1150811511_
                   (lambda (_bind9586_ _phi9587_)
                     (let* ((_ctx9589_ (gx#current-expander-context))
                            (_name9591_ '#f))
                       (_make-export__opt-lambda9560__1150511506_
                        _bind9586_
                        _phi9587_
                        _ctx9589_
                        _name9591_))))
                  (_make-export__2__1150911512_
                   (lambda (_bind9593_ _phi9594_ _ctx9595_)
                     (let ((_name9597_ '#f))
                       (_make-export__opt-lambda9560__1150511506_
                        _bind9593_
                        _phi9594_
                        _ctx9595_
                        _name9597_))))
                  (_make-export9201_
                   (lambda _g11539_
                     (let ((_g11538_ (length _g11539_)))
                       (cond ((fx= _g11538_ 1)
                              (apply _make-export__0__1150711510_ _g11539_))
                             ((fx= _g11538_ 2)
                              (apply _make-export__1__1150811511_ _g11539_))
                             ((fx= _g11538_ 3)
                              (apply _make-export__2__1150911512_ _g11539_))
                             ((fx= _g11538_ 4)
                              (apply _make-export__opt-lambda9560__1150511506_
                                     _g11539_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g11539_))))))
                  (_expand19202_
                   (lambda (_hd9275_ _K9276_ _rest9277_ _r9278_)
                     (let* ((_e92799311_ _hd9275_)
                            (_E93069315_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx9198_
                                _hd9275_)))
                            (_E92969394_
                             (lambda ()
                               (if (gx#stx-pair? _e92799311_)
                                   (let ((_e93079319_
                                          (gx#syntax-e _e92799311_)))
                                     (let ((_hd93089322_ (##car _e93079319_))
                                           (_tl93099324_ (##cdr _e93079319_)))
                                       (if (eq? (gx#stx-e _hd93089322_)
                                                'import:)
                                           (let ((_in9327_ _tl93099324_))
                                             (if (gx#stx-list? _in9327_)
                                                 (let _lp9329_ ((_in-rest9331_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in9327_)
                        (_r9332_ _r9278_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e93339340_
                                                           _in-rest9331_)
                                                          (_E93359344_
                                                           (lambda ()
                                                             (_K9276_ _rest9277_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r9332_)))
                  (_E93349390_
                   (lambda ()
                     (if (gx#stx-pair? _e93339340_)
                         (let ((_e93369348_ (gx#syntax-e _e93339340_)))
                           (let ((_hd93379351_ (##car _e93369348_))
                                 (_tl93389353_ (##cdr _e93369348_)))
                             (let* ((_hd9356_ _hd93379351_)
                                    (_in-rest9358_ _tl93389353_))
                               (if '#t
                                   (let ((_src9388_
                                          (if (gx#core-bound-module? _hd9356_)
                                              (gx#syntax-local-e__0 _hd9356_)
                                              (if (gx#core-library-module-path?
                                                   _hd9356_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd9356_))
                                                  (if (gx#stx-string? _hd9356_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-module-path__opt-lambda10975
                                                        _hd9356_
                                                        (gx#stx-source
                                                         _stx9198_)))
                                                      (let* ((_e93599366_
                                                              _hd9356_)
                                                             (_E93619370_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; illegal re-export"
                         _stx9198_
                         _hd9356_)))
                     (_E93609384_
                      (lambda ()
                        (if (gx#stx-pair? _e93599366_)
                            (let ((_e93629374_ (gx#syntax-e _e93599366_)))
                              (let ((_hd93639377_ (##car _e93629374_))
                                    (_tl93649379_ (##cdr _e93629374_)))
                                (if (eq? (gx#stx-e _hd93639377_) 'in:)
                                    (let ((_spath9382_ _tl93649379_))
                                      (if '#t
                                          (gx#core-import-nested-module
                                           _spath9382_
                                           _stx9198_)
                                          (_E93619370_)))
                                    (_E93619370_))))
                            (_E93619370_)))))
                (_E93609384_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp9329_
                                      _in-rest9358_
                                      (_export-imports9203_
                                       _src9388_
                                       _r9332_)))
                                   (_E93359344_)))))
                         (_E93359344_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E93349390_)))
                                                 (_E93069315_)))
                                           (_E93069315_))))
                                   (_E93069315_))))
                            (_E92839433_
                             (lambda ()
                               (if (gx#stx-pair? _e92799311_)
                                   (let ((_e92979398_
                                          (gx#syntax-e _e92799311_)))
                                     (let ((_hd92989401_ (##car _e92979398_))
                                           (_tl92999403_ (##cdr _e92979398_)))
                                       (if (eq? (gx#stx-e _hd92989401_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl92999403_)
                                               (let ((_e93009406_
                                                      (gx#syntax-e
                                                       _tl92999403_)))
                                                 (let ((_hd93019409_
                                                        (##car _e93009406_))
                                                       (_tl93029411_
                                                        (##cdr _e93009406_)))
                                                   (let ((_id9414_
                                                          _hd93019409_))
                                                     (if (gx#stx-pair?
                                                          _tl93029411_)
                                                         (let ((_e93039416_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl93029411_)))
                   (let ((_hd93049419_ (##car _e93039416_))
                         (_tl93059421_ (##cdr _e93039416_)))
                     (let ((_name9424_ _hd93049419_))
                       (if (gx#stx-null? _tl93059421_)
                           (if '#t
                               (let* ((_phi9426_
                                       (gx#current-export-expander-phi))
                                      (_$e9428_
                                       (gx#core-resolve-identifier__1
                                        _id9414_
                                        _phi9426_)))
                                 (if _$e9428_
                                     ((lambda (_bind9431_)
                                        (_K9276_ _rest9277_
                                                 (cons (_make-export__opt-lambda9560__1150511506_
                                                        _bind9431_
                                                        _phi9426_
                                                        (gx#current-expander-context)
                                                        _name9424_)
                                                       _r9278_)))
                                      _$e9428_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx9198_
                                      _hd9275_
                                      _id9414_)))
                               (_E92969394_))
                           (_E92969394_)))))
                 (_E92969394_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E92969394_))
                                           (_E92969394_))))
                                   (_E92969394_))))
                            (_E92829482_
                             (lambda ()
                               (if (gx#stx-pair? _e92799311_)
                                   (let ((_e92849437_
                                          (gx#syntax-e _e92799311_)))
                                     (let ((_hd92859440_ (##car _e92849437_))
                                           (_tl92869442_ (##cdr _e92849437_)))
                                       (if (eq? (gx#stx-e _hd92859440_) 'spec:)
                                           (if (gx#stx-pair? _tl92869442_)
                                               (let ((_e92879445_
                                                      (gx#syntax-e
                                                       _tl92869442_)))
                                                 (let ((_hd92889448_
                                                        (##car _e92879445_))
                                                       (_tl92899450_
                                                        (##cdr _e92879445_)))
                                                   (let ((_phi9453_
                                                          _hd92889448_))
                                                     (if (gx#stx-pair?
                                                          _tl92899450_)
                                                         (let ((_e92909455_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl92899450_)))
                   (let ((_hd92919458_ (##car _e92909455_))
                         (_tl92929460_ (##cdr _e92909455_)))
                     (let ((_id9463_ _hd92919458_))
                       (if (gx#stx-pair? _tl92929460_)
                           (let ((_e92939465_ (gx#syntax-e _tl92929460_)))
                             (let ((_hd92949468_ (##car _e92939465_))
                                   (_tl92959470_ (##cdr _e92939465_)))
                               (let ((_name9473_ _hd92949468_))
                                 (if (gx#stx-null? _tl92959470_)
                                     (if (if (gx#stx-fixnum? _phi9453_)
                                             (if (gx#identifier? _id9463_)
                                                 (gx#identifier? _name9473_)
                                                 '#f)
                                             '#f)
                                         (let* ((_phi9475_
                                                 (gx#stx-e _phi9453_))
                                                (_$e9477_
                                                 (gx#core-resolve-identifier__1
                                                  _id9463_
                                                  _phi9475_)))
                                           (if _$e9477_
                                               ((lambda (_bind9480_)
                                                  (_K9276_ _rest9277_
                                                           (cons (_make-export__opt-lambda9560__1150511506_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _bind9480_
                          _phi9475_
                          (gx#current-expander-context)
                          _name9473_)
                         _r9278_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e9477_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx9198_
                                                _hd9275_
                                                _id9463_)))
                                         (_E92839433_))
                                     (_E92839433_)))))
                           (_E92839433_)))))
                 (_E92839433_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E92839433_))
                                           (_E92839433_))))
                                   (_E92839433_))))
                            (_E92819493_
                             (lambda ()
                               (let ((_id9486_ _e92799311_))
                                 (if (gx#identifier? _id9486_)
                                     (let ((_$e9488_
                                            (gx#core-resolve-identifier__1
                                             _id9486_
                                             (gx#current-export-expander-phi))))
                                       (if _$e9488_
                                           ((lambda (_bind9491_)
                                              (_K9276_ _rest9277_
                                                       (cons (_make-export__0__1150711510_
                                                              _bind9491_)
                                                             _r9278_)))
                                            _$e9488_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx9198_
                                            _hd9275_)))
                                     (_E92829482_)))))
                            (_E92809557_
                             (lambda ()
                               (if (eq? (gx#stx-e _e92799311_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx9497_
                                               (gx#current-expander-context))
                                              (_current-phi9499_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx9501_
                                               (gx#core-context-shift
                                                _current-ctx9497_
                                                _current-phi9499_))
                                              (_phi-bind9503_
                                               (table->list
                                                (##structure-ref
                                                 _phi-ctx9501_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp9506_ ((_bind-rest9508_
                                                         _phi-bind9503_)
                                                        (_set9509_ '()))
                                           (let* ((_bind-rest95109520_
                                                   _bind-rest9508_)
                                                  (_E95139524_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _bind-rest95109520_)))
                                                  (_else95129528_
                                                   (lambda ()
                                                     (_K9276_ _rest9277_
                                                              (cons (##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             gx#export-set::t
                             '#f
                             _current-phi9499_
                             _set9509_)
                            _r9278_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_K95149538_
                                                   (lambda (_bind-rest9531_
                                                            _bind9532_
                                                            _key9533_)
                                                     (if (let ((_$e9535_
                                                                (##structure-direct-instance-of?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind9532_
                         'gx#import-binding::t)))
                   (if _$e9535_
                       _$e9535_
                       (gx#private-feature-binding? _bind9532_)))
                 (_lp9506_ _bind-rest9531_ _set9509_)
                 (_lp9506_
                  _bind-rest9531_
                  (cons (_make-export__2__1150911512_
                         _bind9532_
                         _current-phi9499_
                         _current-ctx9497_)
                        _set9509_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest95109520_)
                                                 (let ((_hd95159541_
                                                        (##car _bind-rest95109520_))
                                                       (_tl95169543_
                                                        (##cdr _bind-rest95109520_)))
                                                   (if (##pair? _hd95159541_)
                                                       (let ((_hd95179546_
                                                              (##car _hd95159541_))
                                                             (_tl95189548_
                                                              (##cdr _hd95159541_)))
                                                         (let* ((_key9551_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd95179546_)
                        (_bind9553_ _tl95189548_)
                        (_bind-rest9555_ _tl95169543_))
                   (_K95149538_ _bind-rest9555_ _bind9553_ _key9551_)))
               (_else95129528_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else95129528_)))))
                                       (_E92819493_))
                                   (_E92819493_)))))
                       (_E92809557_))))
                  (_export-imports9203_
                   (lambda (_src9224_ _r9225_)
                     (letrec* ((_current-ctx9227_
                                (gx#current-expander-context))
                               (_current-phi9228_
                                (gx#current-export-expander-phi))
                               (_import->export9229_
                                (lambda (_in9237_)
                                  (let* ((_in92389246_ _in9237_)
                                         (_E92409250_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in92389246_)))
                                         (_K92419257_
                                          (lambda (_phi9253_
                                                   _key9254_
                                                   _out9255_)
                                            (if (fx= _phi9253_
                                                     _current-phi9228_)
                                                (if (eq? _src9224_
                                                         (##direct-structure-ref
                                                          _out9255_
                                                          '1
                                                          gx#module-export::t
                                                          '#f))
                                                    (##structure
                                                     gx#module-export::t
                                                     _current-ctx9227_
                                                     _key9254_
                                                     _phi9253_
                                                     _key9254_
                                                     '#t)
                                                    '#f)
                                                '#f))))
                                    (if (##structure-direct-instance-of?
                                         _in92389246_
                                         (##type-id gx#module-import::t))
                                        (let* ((_e92429260_
                                                (##vector-ref _in92389246_ '1))
                                               (_out9263_ _e92429260_)
                                               (_e92439265_
                                                (##vector-ref _in92389246_ '2))
                                               (_key9268_ _e92439265_)
                                               (_e92449270_
                                                (##vector-ref _in92389246_ '3))
                                               (_phi9273_ _e92449270_))
                                          (_K92419257_
                                           _phi9273_
                                           _key9268_
                                           _out9263_))
                                        (_E92409250_)))))
                               (_fold-e9230_
                                (lambda (_in9232_ _r9233_)
                                  (let ((_out9235_
                                         (_import->export9229_ _in9232_)))
                                    (if _out9235_
                                        (cons _out9235_ _r9233_)
                                        _r9233_)))))
                       (cons (##structure
                              gx#export-set::t
                              _src9224_
                              _current-phi9228_
                              (foldl1 _fold-e9230_
                                      '()
                                      (##structure-ref
                                       _current-ctx9227_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r9225_))))
                  (_export!9204_
                   (lambda (_rbody9214_)
                     (letrec* ((_current-ctx9216_
                                (gx#current-expander-context))
                               (_fold-e9217_
                                (lambda (_out9221_ _r9222_)
                                  (if (##structure-direct-instance-of?
                                       _out9221_
                                       'gx#module-export::t)
                                      (cons _out9221_ _r9222_)
                                      (if (##structure-direct-instance-of?
                                           _out9221_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r9222_
                                                  (##direct-structure-ref
                                                   _out9221_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r9222_)))))
                       (let ((_body9219_ (reverse _rbody9214_)))
                         (begin
                           (##structure-set!
                            _current-ctx9216_
                            (foldl1 _fold-e9217_
                                    (##structure-ref
                                     _current-ctx9216_
                                     '9
                                     gx#module-context::t
                                     '#f)
                                    _body9219_)
                            '9
                            gx#module-context::t
                            '#f)
                           _body9219_)))))
                  (_expanded-export?9205_
                   (lambda (_e9209_)
                     (let ((_$e9211_
                            (##structure-direct-instance-of?
                             _e9209_
                             'gx#module-export::t)))
                       (if _$e9211_
                           _$e9211_
                           (##structure-direct-instance-of?
                            _e9209_
                            'gx#export-set::t))))))
          (let ((_rbody9207_
                 (gx#core-expand-import/export
                  _stx9198_
                  _expanded-export?9205_
                  'apply-export-expander
                  gx#current-export-expander-phi
                  _expand19202_)))
            (if _internal-expand?9199_
                (reverse _rbody9207_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#export (_export!9204_ _rbody9207_))
                 (gx#stx-source _stx9198_)))))))
    (begin
      (define gx#core-expand-export%__0
        (lambda (_stx9607_)
          (let ((_internal-expand?9609_ '#f))
            (gx#core-expand-export%__opt-lambda9196
             _stx9607_
             _internal-expand?9609_))))
      (define gx#core-expand-export%
        (lambda _g11541_
          (let ((_g11540_ (length _g11541_)))
            (cond ((fx= _g11540_ 1) (apply gx#core-expand-export%__0 _g11541_))
                  ((fx= _g11540_ 2)
                   (apply gx#core-expand-export%__opt-lambda9196 _g11541_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-export%
                    _g11541_))))))))
  (define gx#core-expand-export-source
    (lambda (_hd9195_)
      (gx#core-expand-export%__opt-lambda9196
       (cons 'export-macro% (cons _hd9195_ '()))
       '#t)))
  (define gx#core-expand-provide%
    (lambda (_stx9165_)
      (let* ((_e91669173_ _stx9165_)
             (_E91689177_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e91669173_)))
             (_E91679191_
              (lambda ()
                (if (gx#stx-pair? _e91669173_)
                    (let ((_e91699181_ (gx#syntax-e _e91669173_)))
                      (let ((_hd91709184_ (##car _e91699181_))
                            (_tl91719186_ (##cdr _e91699181_)))
                        (let ((_body9189_ _tl91719186_))
                          (if (gx#identifier-list? _body9189_)
                              (begin
                                (gx#stx-for-each1
                                 gx#core-bind-feature!
                                 _body9189_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#provide
                                  (gx#stx-map1
                                   gx#core-quote-syntax
                                   _body9189_))
                                 (gx#stx-source _stx9165_)))
                              (_E91689177_)))))
                    (_E91689177_)))))
        (_E91679191_))))
  (begin
    (define gx#core-bind-feature!__opt-lambda9129
      (lambda (_id9131_ _private?9132_ _phi9133_ _ctx9134_)
        (gx#core-bind-syntax!__opt-lambda6225
         _id9131_
         ((if _private?9132_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id9131_))
         _private?9132_
         _phi9133_
         _ctx9134_)))
    (begin
      (define gx#core-bind-feature!__0
        (lambda (_id9139_)
          (let* ((_private?9141_ '#f)
                 (_phi9143_ (gx#current-expander-phi))
                 (_ctx9145_ (gx#current-expander-context)))
            (gx#core-bind-feature!__opt-lambda9129
             _id9139_
             _private?9141_
             _phi9143_
             _ctx9145_))))
      (define gx#core-bind-feature!__1
        (lambda (_id9147_ _private?9148_)
          (let* ((_phi9150_ (gx#current-expander-phi))
                 (_ctx9152_ (gx#current-expander-context)))
            (gx#core-bind-feature!__opt-lambda9129
             _id9147_
             _private?9148_
             _phi9150_
             _ctx9152_))))
      (define gx#core-bind-feature!__2
        (lambda (_id9154_ _private?9155_ _phi9156_)
          (let ((_ctx9158_ (gx#current-expander-context)))
            (gx#core-bind-feature!__opt-lambda9129
             _id9154_
             _private?9155_
             _phi9156_
             _ctx9158_))))
      (define gx#core-bind-feature!
        (lambda _g11543_
          (let ((_g11542_ (length _g11543_)))
            (cond ((fx= _g11542_ 1) (apply gx#core-bind-feature!__0 _g11543_))
                  ((fx= _g11542_ 2) (apply gx#core-bind-feature!__1 _g11543_))
                  ((fx= _g11542_ 3) (apply gx#core-bind-feature!__2 _g11543_))
                  ((fx= _g11542_ 4)
                   (apply gx#core-bind-feature!__opt-lambda9129 _g11543_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-feature!
                    _g11543_)))))))))
