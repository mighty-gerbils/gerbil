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
    (lambda _$args11133_
      (apply make-struct-instance gx#module-import::t _$args11133_)))
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
    (lambda _$args11130_
      (apply make-struct-instance gx#module-export::t _$args11130_)))
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
    (lambda _$args11127_
      (apply make-struct-instance gx#import-set::t _$args11127_)))
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
    (lambda _$args11124_
      (apply make-struct-instance gx#export-set::t _$args11124_)))
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
    (lambda _$args11121_
      (apply make-struct-instance gx#import-expander::t _$args11121_)))
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
    (lambda _$args11118_
      (apply make-struct-instance gx#export-expander::t _$args11118_)))
  (define gx#current-import-expander-phi (make-parameter '#f))
  (define gx#current-export-expander-phi (make-parameter '#f))
  (define gx#module-context:::init!
    (lambda (_self11112_ _id11113_ _super11114_ _ns11115_ _path11116_)
      (direct-struct-instance-init!
       _self11112_
       _id11113_
       (make-hash-table-eq)
       _super11114_
       '#f
       '#f
       _ns11115_
       _path11116_
       '()
       '()
       '#f
       '#f)))
  (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
  (begin
    (define gx#prelude-context:::init!__opt-lambda11076
      (lambda (_self11078_ _ctx11079_ _root11080_)
        (let ((_super11088_
               (let ((_$e11082_ _root11080_))
                 (if _$e11082_
                     _$e11082_
                     (let ((_$e11085_ (gx#core-context-root__0)))
                       (if _$e11085_
                           _$e11085_
                           (make-struct-instance gx#root-context::t)))))))
          (if _ctx11079_
              (let ((_id11091_
                     (##structure-ref
                      _ctx11079_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path11092_
                     (##structure-ref _ctx11079_ '7 gx#module-context::t '#f))
                    (_in11093_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx11079_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e11094_
                     (make-promise (lambda () (gx#eval-module _ctx11079_)))))
                (begin
                  (direct-struct-instance-init!
                   _self11078_
                   _id11091_
                   (make-hash-table-eq)
                   _super11088_
                   '#f
                   '#f
                   _path11092_
                   _in11093_
                   _e11094_)
                  (for-each
                   (lambda (_g1109511097_)
                     (gx#core-bind-weak-import!__opt-lambda10601
                      _g1109511097_
                      _self11078_))
                   _in11093_)))
              (direct-struct-instance-init!
               _self11078_
               '#f
               (make-hash-table-eq)
               _super11088_
               '#f
               '#f
               '#f
               '()
               '#f)))))
    (begin
      (define gx#prelude-context:::init!__0
        (lambda (_self11103_ _ctx11104_)
          (let ((_root11106_ '#f))
            (gx#prelude-context:::init!__opt-lambda11076
             _self11103_
             _ctx11104_
             _root11106_))))
      (define gx#prelude-context:::init!
        (lambda _g11149_
          (let ((_g11148_ (length _g11149_)))
            (cond ((fx= _g11148_ 2)
                   (apply gx#prelude-context:::init!__0 _g11149_))
                  ((fx= _g11148_ 3)
                   (apply gx#prelude-context:::init!__opt-lambda11076
                          _g11149_))
                  (else (error "No clause matching arguments" _g11149_))))))))
  (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
  (define gx#import-expander:::init!
    (lambda (_self11074_ _e11075_)
      (direct-struct-instance-init!
       _self11074_
       _e11075_
       (gx#current-expander-context)
       (fx- (gx#current-expander-phi) '1))))
  (bind-method! gx#import-expander::t ':init! gx#import-expander:::init! '#f)
  (define gx#export-expander:::init!
    (lambda (_self11071_ _e11072_)
      (direct-struct-instance-init!
       _self11071_
       _e11072_
       (gx#current-expander-context)
       (fx- (gx#current-expander-phi) '1))))
  (bind-method! gx#export-expander::t ':init! gx#export-expander:::init! '#f)
  (define gx#import-expander::apply-import-expander
    (lambda (_g1106311066_ _g1106411068_)
      (gx#core-apply-user-expander__opt-lambda4623
       _g1106311066_
       _g1106411068_
       'apply-import-expander)))
  (bind-method!
   gx#import-expander::t
   'apply-import-expander
   gx#import-expander::apply-import-expander
   '#f)
  (define gx#export-expander::apply-export-expander
    (lambda (_g1105611059_ _g1105711061_)
      (gx#core-apply-user-expander__opt-lambda4623
       _g1105611059_
       _g1105711061_
       'apply-export-expander)))
  (bind-method!
   gx#export-expander::t
   'apply-export-expander
   gx#export-expander::apply-export-expander
   '#f)
  (define gx#module-source-path
    (lambda (_ctx11050_)
      (let ((_path11052_
             (##structure-ref _ctx11050_ '7 gx#module-context::t '#f)))
        (let ((_path11054_
               (if (pair? _path11052_) (last _path11052_) _path11052_)))
          (let () (if (string? _path11054_) _path11054_ '#f))))))
  (begin
    (define gx#import-module__opt-lambda11024
      (lambda (_path11026_ _reload?11027_ _eval?11028_)
        (let ((_ctx11030_
               ((gx#current-expander-module-import)
                _path11026_
                _reload?11027_)))
          (begin
            (if (if _ctx11030_ _eval?11028_ '#f)
                (gx#eval-module _ctx11030_)
                '#!void)
            _ctx11030_))))
    (begin
      (define gx#import-module__0
        (lambda (_path11035_)
          (let ((_reload?11037_ '#f))
            (let ((_eval?11039_ '#f))
              (gx#import-module__opt-lambda11024
               _path11035_
               _reload?11037_
               _eval?11039_)))))
      (define gx#import-module__1
        (lambda (_path11041_ _reload?11042_)
          (let ((_eval?11044_ '#f))
            (gx#import-module__opt-lambda11024
             _path11041_
             _reload?11042_
             _eval?11044_))))
      (define gx#import-module
        (lambda _g11151_
          (let ((_g11150_ (length _g11151_)))
            (cond ((fx= _g11150_ 1) (apply gx#import-module__0 _g11151_))
                  ((fx= _g11150_ 2) (apply gx#import-module__1 _g11151_))
                  ((fx= _g11150_ 3)
                   (apply gx#import-module__opt-lambda11024 _g11151_))
                  (else (error "No clause matching arguments" _g11151_))))))))
  (define gx#eval-module
    (lambda (_mod11023_) ((gx#current-expander-module-eval) _mod11023_)))
  (define gx#core-eval-module
    (lambda (_obj11008_)
      (let ((_force-e11010_
             (lambda (_getf11019_ _e11020_)
               (call-with-parameters
                (lambda () (force (_getf11019_ _e11020_)))
                gx#current-expander-context
                _e11020_
                gx#current-expander-phi
                '0))))
        ((letrec ((_recur11012_
                   (lambda (_e11014_)
                     (if (##structure-instance-of?
                          _e11014_
                          'gx#module-context::t)
                         (begin
                           (let ((_$e11016_
                                  (gx#core-context-prelude__opt-lambda10989
                                   _e11014_)))
                             (if _$e11016_ (_recur11012_ _$e11016_) '#!void))
                           (_force-e11010_ gx#module-context-e _e11014_))
                         (if (##structure-instance-of?
                              _e11014_
                              'gx#prelude-context::t)
                             (_force-e11010_ gx#prelude-context-e _e11014_)
                             (if (gx#stx-string? _e11014_)
                                 (_recur11012_
                                  (gx#import-module__0
                                   (gx#core-resolve-module-path__0 _e11014_)))
                                 (if (gx#core-library-module-path? _e11014_)
                                     (_recur11012_
                                      (gx#import-module__0
                                       (gx#core-resolve-library-module-path
                                        _e11014_)))
                                     (error '"Cannot eval module"
                                            _obj11008_))))))))
           _recur11012_)
         _obj11008_))))
  (begin
    (define gx#core-context-prelude__opt-lambda10989
      (lambda (_ctx10991_)
        ((letrec ((_lp10993_
                   (lambda (_e10995_)
                     (if (let ((_$e10997_
                                (##structure-instance-of?
                                 _e10995_
                                 'gx#module-context::t)))
                           (if _$e10997_
                               _$e10997_
                               (##structure-instance-of?
                                _e10995_
                                'gx#local-context::t)))
                         (_lp10993_
                          (##structure-ref _e10995_ '3 gx#phi-context::t '#f))
                         (if (##structure-instance-of?
                              _e10995_
                              'gx#prelude-context::t)
                             _e10995_
                             '#f)))))
           _lp10993_)
         _ctx10991_)))
    (begin
      (define gx#core-context-prelude__0
        (lambda ()
          (let ((_ctx11004_ (gx#current-expander-context)))
            (gx#core-context-prelude__opt-lambda10989 _ctx11004_))))
      (define gx#core-context-prelude
        (lambda _g11153_
          (let ((_g11152_ (length _g11153_)))
            (cond ((fx= _g11152_ 0)
                   (apply gx#core-context-prelude__0 _g11153_))
                  ((fx= _g11152_ 1)
                   (apply gx#core-context-prelude__opt-lambda10989 _g11153_))
                  (else (error "No clause matching arguments" _g11153_))))))))
  (define gx#core-module->prelude-context
    (lambda (_ctx10981_)
      (let ((_ht10983_ (gx#current-expander-module-registry)))
        (let ((_$e10985_ (table-ref _ht10983_ _ctx10981_ '#f)))
          (if _$e10985_
              (values _$e10985_)
              (let ((_pre10988_
                     (let ((__obj11144 (make-object gx#prelude-context::t '8)))
                       (begin
                         (gx#prelude-context:::init!__0 __obj11144 _ctx10981_)
                         __obj11144))))
                (begin
                  (table-set! _ht10983_ _ctx10981_ _pre10988_)
                  _pre10988_)))))))
  (begin
    (define gx#core-import-module__opt-lambda10933
      (lambda (_rpath10935_ _reload?10936_)
        (let ((_import-source10938_
               (lambda (_path10950_)
                 (begin
                   (if (member _path10950_ (gx#current-expander-path))
                       (error '"Cyclic expansion" _path10950_)
                       '#!void)
                   (call-with-parameters
                    (lambda ()
                      (let ((_g11154_ (gx#core-read-module _path10950_)))
                        (begin
                          (let ((_g11155_ (values-count _g11154_)))
                            (if (not (fx= _g11155_ 4))
                                (error "Context expects 4 values" _g11155_)))
                          (let ((_pre10953_ (values-ref _g11154_ 0))
                                (_id10954_ (values-ref _g11154_ 1))
                                (_ns10955_ (values-ref _g11154_ 2))
                                (_body10956_ (values-ref _g11154_ 3)))
                            (let ((_prelude10961_
                                   (if (##structure-instance-of?
                                        _pre10953_
                                        'gx#prelude-context::t)
                                       _pre10953_
                                       (if (##structure-instance-of?
                                            _pre10953_
                                            'gx#module-context::t)
                                           (gx#core-module->prelude-context
                                            _pre10953_)
                                           (if (string? _pre10953_)
                                               (gx#core-module->prelude-context
                                                (gx#core-import-module__0
                                                 _pre10953_))
                                               (if (not _pre10953_)
                                                   (let ((_$e10958_
                                                          (gx#current-expander-module-prelude)))
                                                     (if _$e10958_
                                                         _$e10958_
                                                         (let ((__obj11145
                                                                (make-object
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#prelude-context::t
                         '8)))
                   (begin
                     (gx#prelude-context:::init!__0 __obj11145 '#f)
                     __obj11145))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (error '"Cannot import module; unknown prelude"
                                                          _rpath10935_
                                                          _pre10953_)))))))
                              (let ((_ctx10963_
                                     (let ((__obj11146
                                            (make-object
                                             gx#module-context::t
                                             '11)))
                                       (begin
                                         (gx#module-context:::init!
                                          __obj11146
                                          _id10954_
                                          _prelude10961_
                                          _ns10955_
                                          _path10950_)
                                         __obj11146))))
                                (let ((_body10965_
                                       (gx#core-expand-module-begin
                                        _body10956_
                                        _ctx10963_)))
                                  (let ((_body10967_
                                         (gx#core-quote-syntax__opt-lambda3983
                                          (gx#core-cons '%#begin _body10965_)
                                          _path10950_
                                          _ctx10963_
                                          '())))
                                    (let ()
                                      (begin
                                        (##structure-set!
                                         _ctx10963_
                                         (make-promise
                                          (lambda ()
                                            (gx#eval-syntax* _body10967_)))
                                         '10
                                         gx#module-context::t
                                         '#f)
                                        (##structure-set!
                                         _ctx10963_
                                         _body10967_
                                         '11
                                         gx#module-context::t
                                         '#f)
                                        (table-set!
                                         (gx#current-expander-module-registry)
                                         _path10950_
                                         _ctx10963_)
                                        (table-set!
                                         (gx#current-expander-module-registry)
                                         _id10954_
                                         _ctx10963_)
                                        _ctx10963_))))))))))
                    gx#current-expander-context
                    (gx#core-context-root__0)
                    gx#current-expander-marks
                    '()
                    gx#current-expander-phi
                    '0
                    gx#current-expander-path
                    (cons _path10950_ (gx#current-expander-path))
                    gx#current-import-expander-phi
                    '#f
                    gx#current-export-expander-phi
                    '#f)))))
          (let ((_$e10940_
                 (if (not _reload?10936_)
                     (table-ref
                      (gx#current-expander-module-registry)
                      _rpath10935_
                      '#f)
                     '#f)))
            (if _$e10940_
                (values _$e10940_)
                (if (gx#core-library-module-path? _rpath10935_)
                    (let ((_ctx10943_
                           (gx#core-import-module__opt-lambda10933
                            (gx#core-resolve-library-module-path _rpath10935_)
                            _reload?10936_)))
                      (begin
                        (table-set!
                         (gx#current-expander-module-registry)
                         _rpath10935_
                         _ctx10943_)
                        _ctx10943_))
                    (let ((_npath10945_ (path-normalize _rpath10935_)))
                      (let ((_$e10947_
                             (if (not _reload?10936_)
                                 (table-ref
                                  (gx#current-expander-module-registry)
                                  _npath10945_
                                  '#f)
                                 '#f)))
                        (if _$e10947_
                            (values _$e10947_)
                            (_import-source10938_ _npath10945_))))))))))
    (begin
      (define gx#core-import-module__0
        (lambda (_rpath10974_)
          (let ((_reload?10976_ '#f))
            (gx#core-import-module__opt-lambda10933
             _rpath10974_
             _reload?10976_))))
      (define gx#core-import-module
        (lambda _g11157_
          (let ((_g11156_ (length _g11157_)))
            (cond ((fx= _g11156_ 1) (apply gx#core-import-module__0 _g11157_))
                  ((fx= _g11156_ 2)
                   (apply gx#core-import-module__opt-lambda10933 _g11157_))
                  (else (error "No clause matching arguments" _g11157_))))))))
  (define gx#core-read-module
    (lambda (_path10798_)
      ((letrec ((_lp10800_
                 (lambda (_body10802_ _pre10803_ _ns10804_ _pkg10805_)
                   (let ((_e1080610830_ _body10802_))
                     (let ((_E1082210848_
                            (lambda ()
                              (let ((_prelude10834_
                                     (if (gx#core-bound-module-prelude?
                                          _pre10803_)
                                         (gx#syntax-local-e__0 _pre10803_)
                                         (if (gx#core-library-module-path?
                                              _pre10803_)
                                             (gx#core-resolve-library-module-path
                                              _pre10803_)
                                             (if (gx#stx-string? _pre10803_)
                                                 (gx#core-resolve-module-path__opt-lambda10771
                                                  _pre10803_
                                                  _path10798_)
                                                 (gx#stx-e _pre10803_))))))
                                (let ((_path-id10836_
                                       (gx#core-module-path->namespace
                                        _path10798_)))
                                  (let ((_pkg-id10838_
                                         (if _pkg10805_
                                             (string-append
                                              _pkg10805_
                                              '"/"
                                              _path-id10836_)
                                             _path-id10836_)))
                                    (let ((_module-id10840_
                                           (string->symbol _pkg-id10838_)))
                                      (let ((_module-ns10845_
                                             (let ((_$e10842_ _ns10804_))
                                               (if _$e10842_
                                                   _$e10842_
                                                   _pkg-id10838_))))
                                        (let ()
                                          (values _prelude10834_
                                                  _module-id10840_
                                                  _module-ns10845_
                                                  _body10802_))))))))))
                       (let ((_E1081510877_
                              (lambda ()
                                (if (gx#stx-pair? _e1080610830_)
                                    (let ((_e1082310852_
                                           (gx#syntax-e _e1080610830_)))
                                      (let ((_hd1082410855_
                                             (##car _e1082310852_))
                                            (_tl1082510857_
                                             (##cdr _e1082310852_)))
                                        (if (eq? (gx#stx-e _hd1082410855_)
                                                 'package:)
                                            (if (gx#stx-pair? _tl1082510857_)
                                                (let ((_e1082610860_
                                                       (gx#syntax-e
                                                        _tl1082510857_)))
                                                  (let ((_hd1082710863_
                                                         (##car _e1082610860_))
                                                        (_tl1082810865_
                                                         (##cdr _e1082610860_)))
                                                    (let ((_pkg10868_
                                                           _hd1082710863_))
                                                      (let ((_rest10870_
                                                             _tl1082810865_))
                                                        (if '#t
                                                            (let ((_pkg10875_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if (gx#identifier? _pkg10868_)
                               (symbol->string (gx#stx-e _pkg10868_))
                               (if (let ((_$e10872_
                                          (gx#stx-string? _pkg10868_)))
                                     (if _$e10872_
                                         _$e10872_
                                         (gx#stx-false? _pkg10868_)))
                                   (gx#stx-e _pkg10868_)
                                   (gx#raise-syntax-error
                                    'import
                                    '"Bad syntax; Illegal package name"
                                    _pkg10868_)))))
                      (_lp10800_ _rest10870_ _pre10803_ _ns10804_ _pkg10875_))
                    (_E1082210848_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1082210848_))
                                            (_E1082210848_))))
                                    (_E1082210848_)))))
                         (let ((_E1080810906_
                                (lambda ()
                                  (if (gx#stx-pair? _e1080610830_)
                                      (let ((_e1081610881_
                                             (gx#syntax-e _e1080610830_)))
                                        (let ((_hd1081710884_
                                               (##car _e1081610881_))
                                              (_tl1081810886_
                                               (##cdr _e1081610881_)))
                                          (if (eq? (gx#stx-e _hd1081710884_)
                                                   'namespace:)
                                              (if (gx#stx-pair? _tl1081810886_)
                                                  (let ((_e1081910889_
                                                         (gx#syntax-e
                                                          _tl1081810886_)))
                                                    (let ((_hd1082010892_
                                                           (##car _e1081910889_))
                                                          (_tl1082110894_
                                                           (##cdr _e1081910889_)))
                                                      (let ((_ns10897_
                                                             _hd1082010892_))
                                                        (let ((_rest10899_
                                                               _tl1082110894_))
                                                          (if '#t
                                                              (let ((_ns10904_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (gx#identifier? _ns10897_)
                                 (symbol->string (gx#stx-e _ns10897_))
                                 (if (let ((_$e10901_
                                            (gx#stx-string? _ns10897_)))
                                       (if _$e10901_
                                           _$e10901_
                                           (gx#stx-false? _ns10897_)))
                                     (gx#stx-e _ns10897_)
                                     (gx#raise-syntax-error
                                      'import
                                      '"Bad syntax; illegal namespace"
                                      _ns10897_)))))
                        (_lp10800_
                         _rest10899_
                         _pre10803_
                         _ns10904_
                         _pkg10805_))
                      (_E1081510877_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1081510877_))
                                              (_E1081510877_))))
                                      (_E1081510877_)))))
                           (let ((_E1080710930_
                                  (lambda ()
                                    (if (gx#stx-pair? _e1080610830_)
                                        (let ((_e1080910910_
                                               (gx#syntax-e _e1080610830_)))
                                          (let ((_hd1081010913_
                                                 (##car _e1080910910_))
                                                (_tl1081110915_
                                                 (##cdr _e1080910910_)))
                                            (if (eq? (gx#stx-e _hd1081010913_)
                                                     'prelude:)
                                                (if (gx#stx-pair?
                                                     _tl1081110915_)
                                                    (let ((_e1081210918_
                                                           (gx#syntax-e
                                                            _tl1081110915_)))
                                                      (let ((_hd1081310921_
                                                             (##car _e1081210918_))
                                                            (_tl1081410923_
                                                             (##cdr _e1081210918_)))
                                                        (let ((_prelude10926_
                                                               _hd1081310921_))
                                                          (let ((_rest10928_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1081410923_))
                    (if '#t
                        (_lp10800_
                         _rest10928_
                         _prelude10926_
                         _ns10804_
                         _pkg10805_)
                        (_E1080810906_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1080810906_))
                                                (_E1080810906_))))
                                        (_E1080810906_)))))
                             (let () (_E1080710930_))))))))))
         _lp10800_)
       (read-syntax-from-file _path10798_)
       '#f
       '#f
       '#f)))
  (define gx#core-module-path->namespace
    (lambda (_path10796_)
      (path-strip-extension (path-strip-directory _path10796_))))
  (define gx#core-module-path->id
    (lambda (_path10794_)
      (string->symbol (gx#core-module-path->namespace _path10794_))))
  (begin
    (define gx#core-resolve-module-path__opt-lambda10771
      (lambda (_stx-path10773_ _rel10774_)
        (let ((_path10776_ (gx#stx-e _stx-path10773_)))
          (let ((_path10778_
                 (if (equal? (path-extension _path10776_) '".ss")
                     _path10776_
                     (string-append _path10776_ '".ss"))))
            (let ()
              (gx#core-resolve-path__opt-lambda3947
               _path10778_
               (let ((_$e10781_ (gx#stx-source _stx-path10773_)))
                 (if _$e10781_ _$e10781_ _rel10774_))))))))
    (begin
      (define gx#core-resolve-module-path__0
        (lambda (_stx-path10787_)
          (let ((_rel10789_ '#f))
            (gx#core-resolve-module-path__opt-lambda10771
             _stx-path10787_
             _rel10789_))))
      (define gx#core-resolve-module-path
        (lambda _g11159_
          (let ((_g11158_ (length _g11159_)))
            (cond ((fx= _g11158_ 1)
                   (apply gx#core-resolve-module-path__0 _g11159_))
                  ((fx= _g11158_ 2)
                   (apply gx#core-resolve-module-path__opt-lambda10771
                          _g11159_))
                  (else (error "No clause matching arguments" _g11159_))))))))
  (define gx#core-resolve-library-module-path
    (lambda (_libpath10719_)
      (let ((_spath10721_ (symbol->string (gx#stx-e _libpath10719_))))
        (let ((_spath10723_
               (substring _spath10721_ '1 (string-length _spath10721_))))
          (let ()
            ((letrec ((_lp10726_
                       (lambda (_rest10728_)
                         (let ((_rest1072910738_ _rest10728_))
                           (let ((_E1073210742_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _rest1072910738_))))
                             (let ((_try-match1073110750_
                                    (lambda ()
                                      (let ((_K1073310747_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Cannot find library module"
                                                _libpath10719_))))
                                        (if (##null? _rest1072910738_)
                                            (_K1073310747_)
                                            (_E1073210742_))))))
                               (let ((_K1073410760_
                                      (lambda (_rest10753_ _dir10754_)
                                        (let ((_compiled-path10756_
                                               (path-expand
                                                (string-append
                                                 _spath10723_
                                                 '".ssi")
                                                _dir10754_)))
                                          (if (file-exists?
                                               _compiled-path10756_)
                                              (path-normalize
                                               _compiled-path10756_)
                                              (let ((_src-path10758_
                                                     (path-expand
                                                      (string-append
                                                       _spath10723_
                                                       '".ss")
                                                      _dir10754_)))
                                                (if (file-exists?
                                                     _src-path10758_)
                                                    (path-normalize
                                                     _src-path10758_)
                                                    (_lp10726_
                                                     _rest10753_))))))))
                                 (if (##pair? _rest1072910738_)
                                     (let ((_hd1073510763_
                                            (##car _rest1072910738_))
                                           (_tl1073610765_
                                            (##cdr _rest1072910738_)))
                                       (let ((_dir10768_ _hd1073510763_))
                                         (let ((_rest10770_ _tl1073610765_))
                                           (_K1073410760_
                                            _rest10770_
                                            _dir10768_))))
                                     (_try-match1073110750_)))))))))
               _lp10726_)
             (gx#current-expander-module-library-path)))))))
  (define gx#core-library-module-path?
    (lambda (_stx10717_) (gx#core-special-module-path? _stx10717_ '#\:)))
  (define gx#core-special-module-path?
    (lambda (_stx10712_ _char10713_)
      (if (gx#identifier? _stx10712_)
          (if (interned-symbol? (gx#stx-e _stx10712_))
              (let ((_str10715_ (symbol->string (gx#stx-e _stx10712_))))
                (if (fx> (string-length _str10715_) '1)
                    (eq? (string-ref _str10715_ '0) _char10713_)
                    '#f))
              '#f)
          '#f)))
  (define gx#core-bound-prelude?
    (lambda (_stx10706_)
      (gx#core-bound-identifier?__opt-lambda4037
       _stx10706_
       (lambda (_g1070710709_)
         (gx#expander-binding?__opt-lambda4068
          _g1070710709_
          gx#prelude-context?)))))
  (define gx#core-bound-module?
    (lambda (_stx10700_)
      (gx#core-bound-identifier?__opt-lambda4037
       _stx10700_
       (lambda (_g1070110703_)
         (gx#expander-binding?__opt-lambda4068
          _g1070110703_
          gx#module-context?)))))
  (define gx#core-bound-module-prelude?
    (lambda (_stx10687_)
      (let ((_module-prelude?10689_
             (lambda (_e10695_)
               (let ((_$e10697_
                      (##structure-instance-of?
                       _e10695_
                       'gx#module-context::t)))
                 (if _$e10697_
                     _$e10697_
                     (##structure-instance-of?
                      _e10695_
                      'gx#prelude-context::t))))))
        (gx#core-bound-identifier?__opt-lambda4037
         _stx10687_
         (lambda (_g1069010692_)
           (gx#expander-binding?__opt-lambda4068
            _g1069010692_
            _module-prelude?10689_))))))
  (begin
    (define gx#core-bind-import!__opt-lambda10615
      (lambda (_in10617_ _ctx10618_ _force-weak?10619_)
        (let ((_in1062010629_ _in10617_))
          (let ((_E1062210633_
                 (lambda () (error '"No clause matching" _in1062010629_))))
            (let ((_K1062310646_
                   (lambda (_weak?10636_ _phi10637_ _key10638_ _source10639_)
                     (gx#core-bind!__opt-lambda4307
                      _key10638_
                      (let ((_e10641_
                             (gx#core-resolve-module-export _source10639_)))
                        (##structure
                         gx#import-binding::t
                         (##structure-ref _e10641_ '1 gx#binding::t '#f)
                         _key10638_
                         _phi10637_
                         _e10641_
                         (##structure-ref
                          _source10639_
                          '1
                          gx#module-export::t
                          '#f)
                         (let ((_$e10643_ _force-weak?10619_))
                           (if _$e10643_ _$e10643_ _weak?10636_))))
                      gx#core-context-rebind?
                      _phi10637_
                      _ctx10618_))))
              (if (direct-struct-instance? gx#module-import::t _in1062010629_)
                  (let ((_e1062410649_ (##vector-ref _in1062010629_ '1)))
                    (let ((_source10652_ _e1062410649_))
                      (let ((_e1062510654_ (##vector-ref _in1062010629_ '2)))
                        (let ((_key10657_ _e1062510654_))
                          (let ((_e1062610659_
                                 (##vector-ref _in1062010629_ '3)))
                            (let ((_phi10662_ _e1062610659_))
                              (let ((_e1062710664_
                                     (##vector-ref _in1062010629_ '4)))
                                (let ((_weak?10667_ _e1062710664_))
                                  (_K1062310646_
                                   _weak?10667_
                                   _phi10662_
                                   _key10657_
                                   _source10652_)))))))))
                  (_E1062210633_)))))))
    (begin
      (define gx#core-bind-import!__0
        (lambda (_in10672_)
          (let ((_ctx10674_ (gx#current-expander-context)))
            (let ((_force-weak?10676_ '#f))
              (gx#core-bind-import!__opt-lambda10615
               _in10672_
               _ctx10674_
               _force-weak?10676_)))))
      (define gx#core-bind-import!__1
        (lambda (_in10678_ _ctx10679_)
          (let ((_force-weak?10681_ '#f))
            (gx#core-bind-import!__opt-lambda10615
             _in10678_
             _ctx10679_
             _force-weak?10681_))))
      (define gx#core-bind-import!
        (lambda _g11161_
          (let ((_g11160_ (length _g11161_)))
            (cond ((fx= _g11160_ 1) (apply gx#core-bind-import!__0 _g11161_))
                  ((fx= _g11160_ 2) (apply gx#core-bind-import!__1 _g11161_))
                  ((fx= _g11160_ 3)
                   (apply gx#core-bind-import!__opt-lambda10615 _g11161_))
                  (else (error "No clause matching arguments" _g11161_))))))))
  (begin
    (define gx#core-bind-weak-import!__opt-lambda10601
      (lambda (_in10603_ _ctx10604_)
        (gx#core-bind-import!__opt-lambda10615 _in10603_ _ctx10604_ '#t)))
    (begin
      (define gx#core-bind-weak-import!__0
        (lambda (_in10609_)
          (let ((_ctx10611_ (gx#current-expander-context)))
            (gx#core-bind-weak-import!__opt-lambda10601
             _in10609_
             _ctx10611_))))
      (define gx#core-bind-weak-import!
        (lambda _g11163_
          (let ((_g11162_ (length _g11163_)))
            (cond ((fx= _g11162_ 1)
                   (apply gx#core-bind-weak-import!__0 _g11163_))
                  ((fx= _g11162_ 2)
                   (apply gx#core-bind-weak-import!__opt-lambda10601 _g11163_))
                  (else (error "No clause matching arguments" _g11163_))))))))
  (define gx#core-resolve-module-export
    (lambda (_out10494_)
      (let ((_subst10496_
             (lambda (_key10542_)
               (let ((_key1054310551_ _key10542_))
                 (let ((_E1054610555_
                        (lambda ()
                          (error '"No clause matching" _key1054310551_))))
                   (let ((_else1054510559_ (lambda () _key10542_)))
                     (let ((_K1054710590_
                            (lambda (_mark10562_ _id10563_)
                              (let ((_mark1056410570_ _mark10562_))
                                (let ((_E1056610574_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _mark1056410570_))))
                                  (let ((_K1056710582_
                                         (lambda (_subst10577_)
                                           (let ((_$e10579_
                                                  (if _subst10577_
                                                      (table-ref
                                                       _subst10577_
                                                       _id10563_
                                                       '#f)
                                                      '#f)))
                                             (if _$e10579_
                                                 _$e10579_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal key; missing substitution"
                                                  _key10542_))))))
                                    (if (struct-instance?
                                         gx#expander-mark::t
                                         _mark1056410570_)
                                        (let ((_e1056810585_
                                               (##vector-ref
                                                _mark1056410570_
                                                '1)))
                                          (let ((_subst10588_ _e1056810585_))
                                            (_K1056710582_ _subst10588_)))
                                        (_E1056610574_))))))))
                       (if (##pair? _key1054310551_)
                           (let ((_hd1054810593_ (##car _key1054310551_))
                                 (_tl1054910595_ (##cdr _key1054310551_)))
                             (let ((_id10598_ _hd1054810593_))
                               (let ((_mark10600_ _tl1054910595_))
                                 (_K1054710590_ _mark10600_ _id10598_))))
                           (_else1054510559_)))))))))
        (let ((_out1049710507_ _out10494_))
          (let ((_E1049910511_
                 (lambda () (error '"No clause matching" _out1049710507_))))
            (let ((_K1050010518_
                   (lambda (_phi10514_ _key10515_ _ctx10516_)
                     (gx#core-context-resolve
                      (gx#core-context-shift _ctx10516_ _phi10514_)
                      (_subst10496_ _key10515_)))))
              (if (direct-struct-instance? gx#module-export::t _out1049710507_)
                  (let ((_e1050110521_ (##vector-ref _out1049710507_ '1)))
                    (let ((_ctx10524_ _e1050110521_))
                      (let ((_e1050210526_ (##vector-ref _out1049710507_ '2)))
                        (let ((_key10529_ _e1050210526_))
                          (let ((_e1050310531_
                                 (##vector-ref _out1049710507_ '3)))
                            (let ((_phi10534_ _e1050310531_))
                              (let ((_e1050410536_
                                     (##vector-ref _out1049710507_ '4)))
                                (let ((_e1050510539_
                                       (##vector-ref _out1049710507_ '5)))
                                  (_K1050010518_
                                   _phi10534_
                                   _key10529_
                                   _ctx10524_)))))))))
                  (_E1049910511_))))))))
  (begin
    (define gx#core-module-export->import__opt-lambda10417
      (lambda (_out10419_ _rename10420_ _dphi10421_)
        (let ((_out1042210432_ _out10419_))
          (let ((_E1042410436_
                 (lambda () (error '"No clause matching" _out1042210432_))))
            (let ((_K1042510448_
                   (lambda (_weak?10439_
                            _name10440_
                            _phi10441_
                            _key10442_
                            _ctx10443_)
                     (##structure
                      gx#module-import::t
                      _out10419_
                      (let ((_$e10445_ _rename10420_))
                        (if _$e10445_ _$e10445_ _name10440_))
                      (fx+ _phi10441_ _dphi10421_)
                      _weak?10439_))))
              (if (direct-struct-instance? gx#module-export::t _out1042210432_)
                  (let ((_e1042610451_ (##vector-ref _out1042210432_ '1)))
                    (let ((_ctx10454_ _e1042610451_))
                      (let ((_e1042710456_ (##vector-ref _out1042210432_ '2)))
                        (let ((_key10459_ _e1042710456_))
                          (let ((_e1042810461_
                                 (##vector-ref _out1042210432_ '3)))
                            (let ((_phi10464_ _e1042810461_))
                              (let ((_e1042910466_
                                     (##vector-ref _out1042210432_ '4)))
                                (let ((_name10469_ _e1042910466_))
                                  (let ((_e1043010471_
                                         (##vector-ref _out1042210432_ '5)))
                                    (let ((_weak?10474_ _e1043010471_))
                                      (_K1042510448_
                                       _weak?10474_
                                       _name10469_
                                       _phi10464_
                                       _key10459_
                                       _ctx10454_)))))))))))
                  (_E1042410436_)))))))
    (begin
      (define gx#core-module-export->import__0
        (lambda (_out10479_)
          (let ((_rename10481_ '#f))
            (let ((_dphi10483_ '0))
              (gx#core-module-export->import__opt-lambda10417
               _out10479_
               _rename10481_
               _dphi10483_)))))
      (define gx#core-module-export->import__1
        (lambda (_out10485_ _rename10486_)
          (let ((_dphi10488_ '0))
            (gx#core-module-export->import__opt-lambda10417
             _out10485_
             _rename10486_
             _dphi10488_))))
      (define gx#core-module-export->import
        (lambda _g11165_
          (let ((_g11164_ (length _g11165_)))
            (cond ((fx= _g11164_ 1)
                   (apply gx#core-module-export->import__0 _g11165_))
                  ((fx= _g11164_ 2)
                   (apply gx#core-module-export->import__1 _g11165_))
                  ((fx= _g11164_ 3)
                   (apply gx#core-module-export->import__opt-lambda10417
                          _g11165_))
                  (else (error "No clause matching arguments" _g11165_))))))))
  (define gx#core-expand-module%
    (lambda (_stx10347_)
      (let ((_make-context10349_
             (lambda (_id10400_)
               (let ((_super10402_ (gx#current-expander-context)))
                 (let ((_bind-id10404_ (gx#stx-e _id10400_)))
                   (let ((_mod-id10406_
                          (if (##structure-instance-of?
                               _super10402_
                               'gx#module-context::t)
                              (make-symbol
                               (##structure-ref
                                _super10402_
                                '1
                                gx#expander-context::t
                                '#f)
                               '"::"
                               _bind-id10404_)
                              _bind-id10404_)))
                     (let ((_ns10408_ (symbol->string _mod-id10406_)))
                       (let ((_path10415_
                              (if (##structure-instance-of?
                                   _super10402_
                                   'gx#module-context::t)
                                  (let ((_path10410_
                                         (##structure-ref
                                          _super10402_
                                          '7
                                          gx#module-context::t
                                          '#f)))
                                    (if (let ((_$e10412_ (pair? _path10410_)))
                                          (if _$e10412_
                                              _$e10412_
                                              (null? _path10410_)))
                                        (cons _bind-id10404_ _path10410_)
                                        (if (not _path10410_)
                                            _bind-id10404_
                                            (cons _bind-id10404_
                                                  (cons _path10410_ '())))))
                                  _bind-id10404_)))
                         (let ()
                           (let ((__obj11147
                                  (make-object gx#module-context::t '11)))
                             (begin
                               (gx#module-context:::init!
                                __obj11147
                                _mod-id10406_
                                _super10402_
                                _ns10408_
                                _path10415_)
                               __obj11147)))))))))))
        (let ((_e1035010360_ _stx10347_))
          (let ((_E1035210364_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e1035010360_))))
            (let ((_E1035110396_
                   (lambda ()
                     (if (gx#stx-pair? _e1035010360_)
                         (let ((_e1035310368_ (gx#syntax-e _e1035010360_)))
                           (let ((_hd1035410371_ (##car _e1035310368_))
                                 (_tl1035510373_ (##cdr _e1035310368_)))
                             (if (gx#stx-pair? _tl1035510373_)
                                 (let ((_e1035610376_
                                        (gx#syntax-e _tl1035510373_)))
                                   (let ((_hd1035710379_ (##car _e1035610376_))
                                         (_tl1035810381_
                                          (##cdr _e1035610376_)))
                                     (let ((_id10384_ _hd1035710379_))
                                       (let ((_body10386_ _tl1035810381_))
                                         (if (if (gx#identifier? _id10384_)
                                                 (gx#stx-list? _body10386_)
                                                 '#f)
                                             (let ((_ctx10388_
                                                    (_make-context10349_
                                                     _id10384_)))
                                               (let ((_body10390_
                                                      (gx#core-expand-module-begin
                                                       _body10386_
                                                       _ctx10388_)))
                                                 (let ((_body10392_
                                                        (gx#core-quote-syntax__1
                                                         (gx#core-cons
                                                          '%#begin
                                                          _body10390_)
                                                         (gx#stx-source
                                                          _stx10347_))))
                                                   (let ()
                                                     (begin
                                                       (##structure-set!
                                                        _ctx10388_
                                                        (make-promise
                                                         (lambda ()
                                                           (gx#eval-syntax*
                                                            _body10392_)))
                                                        '10
                                                        gx#module-context::t
                                                        '#f)
                                                       (##structure-set!
                                                        _ctx10388_
                                                        _body10392_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)
                                                       (gx#core-bind-syntax!__0
                                                        _id10384_
                                                        _ctx10388_)
                                                       (gx#core-quote-syntax__1
                                                        (gx#core-list
                                                         '%#module
                                                         (gx#core-quote-syntax__0
                                                          _id10384_)
                                                         _body10392_)
                                                        (gx#stx-source
                                                         _stx10347_)))))))
                                             (_E1035210364_))))))
                                 (_E1035210364_))))
                         (_E1035210364_)))))
              (let () (_E1035110396_))))))))
  (define gx#core-expand-module-begin
    (lambda (_body10343_ _ctx10344_)
      (call-with-parameters
       (lambda ()
         (begin
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (gx#core-expand-module-body _body10343_)))
       gx#current-expander-context
       _ctx10344_
       gx#current-expander-phi
       '0)))
  (define gx#core-expand-module-body
    (lambda (_body10139_)
      (let ((_expand-special10141_
             (lambda (_hd10270_ _K10271_ _rest10272_ _r10273_)
               (let ((_e1027410291_ _hd10270_))
                 (let ((_E1028610295_
                        (lambda ()
                          (_K10271_
                           _rest10272_
                           (cons (gx#core-expand-top _hd10270_) _r10273_)))))
                   (let ((_E1027610307_
                          (lambda ()
                            (if (gx#stx-pair? _e1027410291_)
                                (let ((_e1028710299_
                                       (gx#syntax-e _e1027410291_)))
                                  (let ((_hd1028810302_ (##car _e1028710299_))
                                        (_tl1028910304_ (##cdr _e1028710299_)))
                                    (if (if (gx#identifier? _hd1028810302_)
                                            (gx#core-identifier=?
                                             _hd1028810302_
                                             '%#export)
                                            '#f)
                                        (if '#t
                                            (_K10271_
                                             _rest10272_
                                             (cons _hd10270_ _r10273_))
                                            (_E1028610295_))
                                        (_E1028610295_))))
                                (_E1028610295_)))))
                     (let ((_E1027510339_
                            (lambda ()
                              (if (gx#stx-pair? _e1027410291_)
                                  (let ((_e1027710311_
                                         (gx#syntax-e _e1027410291_)))
                                    (let ((_hd1027810314_
                                           (##car _e1027710311_))
                                          (_tl1027910316_
                                           (##cdr _e1027710311_)))
                                      (if (if (gx#identifier? _hd1027810314_)
                                              (gx#core-identifier=?
                                               _hd1027810314_
                                               '%#define-values)
                                              '#f)
                                          (if (gx#stx-pair? _tl1027910316_)
                                              (let ((_e1028010319_
                                                     (gx#syntax-e
                                                      _tl1027910316_)))
                                                (let ((_hd1028110322_
                                                       (##car _e1028010319_))
                                                      (_tl1028210324_
                                                       (##cdr _e1028010319_)))
                                                  (let ((_hd-bind10327_
                                                         _hd1028110322_))
                                                    (if (gx#stx-pair?
                                                         _tl1028210324_)
                                                        (let ((_e1028310329_
                                                               (gx#syntax-e
                                                                _tl1028210324_)))
                                                          (let ((_hd1028410332_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1028310329_))
                        (_tl1028510334_ (##cdr _e1028310329_)))
                    (let ((_expr10337_ _hd1028410332_))
                      (if (gx#stx-null? _tl1028510334_)
                          (if (gx#core-bind-values? _hd-bind10327_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind10327_)
                                (_K10271_
                                 _rest10272_
                                 (cons _hd10270_ _r10273_)))
                              (_E1027610307_))
                          (_E1027610307_)))))
                (_E1027610307_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1027610307_))
                                          (_E1027610307_))))
                                  (_E1027610307_)))))
                       (let () (_E1027510339_)))))))))
        (let ((_expand-body10142_
               (lambda (_rbody10144_)
                 ((letrec ((_lp10146_
                            (lambda (_rest10148_ _body10149_)
                              (let ((_rest1015010158_ _rest10148_))
                                (let ((_E1015310162_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _rest1015010158_))))
                                  (let ((_else1015210166_
                                         (lambda () _body10149_)))
                                    (let ((_K1015410258_
                                           (lambda (_rest10169_ _hd10170_)
                                             (let ((_e1017110192_ _hd10170_))
                                               (let ((_E1018710196_
                                                      (lambda ()
                                                        (_lp10146_
                                                         _rest10169_
                                                         (cons (gx#core-expand-expression
                                                                _hd10170_)
                                                               _body10149_)))))
                                                 (let ((_E1018310210_
                                                        (lambda ()
                                                          (if (gx#stx-pair?
                                                               _e1017110192_)
                                                              (let ((_e1018810200_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _e1017110192_)))
                        (let ((_hd1018910203_ (##car _e1018810200_))
                              (_tl1019010205_ (##cdr _e1018810200_)))
                          (let ((_form10208_ _hd1018910203_))
                            (if (gx#core-bound-identifier?__opt-lambda4037
                                 _form10208_
                                 gx#special-form-binding?)
                                (_lp10146_
                                 _rest10169_
                                 (cons _hd10170_ _body10149_))
                                (_E1018710196_)))))
                      (_E1018710196_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_E1017310222_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e1017110192_)
                        (let ((_e1018410214_ (gx#syntax-e _e1017110192_)))
                          (let ((_hd1018510217_ (##car _e1018410214_))
                                (_tl1018610219_ (##cdr _e1018410214_)))
                            (if (if (gx#identifier? _hd1018510217_)
                                    (gx#core-identifier=?
                                     _hd1018510217_
                                     '%#export)
                                    '#f)
                                (if '#t
                                    (_lp10146_
                                     _rest10169_
                                     (cons (gx#core-expand-export%__0
                                            _hd10170_)
                                           _body10149_))
                                    (_E1018310210_))
                                (_E1018310210_))))
                        (_E1018310210_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_E1017210254_
                                                            (lambda ()
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e1017110192_)
                          (let ((_e1017410226_ (gx#syntax-e _e1017110192_)))
                            (let ((_hd1017510229_ (##car _e1017410226_))
                                  (_tl1017610231_ (##cdr _e1017410226_)))
                              (if (if (gx#identifier? _hd1017510229_)
                                      (gx#core-identifier=?
                                       _hd1017510229_
                                       '%#define-values)
                                      '#f)
                                  (if (gx#stx-pair? _tl1017610231_)
                                      (let ((_e1017710234_
                                             (gx#syntax-e _tl1017610231_)))
                                        (let ((_hd1017810237_
                                               (##car _e1017710234_))
                                              (_tl1017910239_
                                               (##cdr _e1017710234_)))
                                          (let ((_hd-bind10242_
                                                 _hd1017810237_))
                                            (if (gx#stx-pair? _tl1017910239_)
                                                (let ((_e1018010244_
                                                       (gx#syntax-e
                                                        _tl1017910239_)))
                                                  (let ((_hd1018110247_
                                                         (##car _e1018010244_))
                                                        (_tl1018210249_
                                                         (##cdr _e1018010244_)))
                                                    (let ((_expr10252_
                                                           _hd1018110247_))
                                                      (if (gx#stx-null?
                                                           _tl1018210249_)
                                                          (if '#t
                                                              (_lp10146_
                                                               _rest10169_
                                                               (cons (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#core-list
                               '%#define-values
                               (gx#core-quote-bind-values _hd-bind10242_)
                               (gx#core-expand-expression _expr10252_))
                              (gx#stx-source _hd10170_))
                             _body10149_))
                      (_E1017310222_))
                  (_E1017310222_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1017310222_)))))
                                      (_E1017310222_))
                                  (_E1017310222_))))
                          (_E1017310222_)))))
               (let () (_E1017210254_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (##pair? _rest1015010158_)
                                          (let ((_hd1015510261_
                                                 (##car _rest1015010158_))
                                                (_tl1015610263_
                                                 (##cdr _rest1015010158_)))
                                            (let ((_hd10266_ _hd1015510261_))
                                              (let ((_rest10268_
                                                     _tl1015610263_))
                                                (_K1015410258_
                                                 _rest10268_
                                                 _hd10266_))))
                                          (_else1015210166_)))))))))
                    _lp10146_)
                  _rbody10144_
                  '()))))
          (_expand-body10142_
           (gx#core-expand-block__opt-lambda5084
            (cons '%#begin-module _body10139_)
            _expand-special10141_
            '#f
            values))))))
  (define gx#core-expand-import/export
    (lambda (_stx9982_
             _expanded?9983_
             _method9984_
             _current-phi9985_
             _expand19986_)
      (letrec ((_K9988_ (lambda (_rest10106_ _r10107_)
                          (let ((_e1010810115_ _rest10106_))
                            (let ((_E1011010119_ (lambda () _r10107_)))
                              (let ((_E1010910135_
                                     (lambda ()
                                       (if (gx#stx-pair? _e1010810115_)
                                           (let ((_e1011110123_
                                                  (gx#syntax-e _e1010810115_)))
                                             (let ((_hd1011210126_
                                                    (##car _e1011110123_))
                                                   (_tl1011310128_
                                                    (##cdr _e1011110123_)))
                                               (let ((_hd10131_
                                                      _hd1011210126_))
                                                 (let ((_rest10133_
                                                        _tl1011310128_))
                                                   (if '#t
                                                       (_step9989_
                                                        _hd10131_
                                                        _rest10133_
                                                        _r10107_)
                                                       (_E1011010119_))))))
                                           (_E1011010119_)))))
                                (let () (_E1010910135_)))))))
               (_step9989_
                (lambda (_hd10020_ _rest10021_ _r10022_)
                  (let ((_e1002310041_ _hd10020_))
                    (let ((_E1003610045_
                           (lambda ()
                             (if (_expanded?9983_ (gx#stx-e _hd10020_))
                                 (_K9988_ _rest10021_
                                          (cons (gx#stx-e _hd10020_) _r10022_))
                                 (_expand19986_
                                  _hd10020_
                                  _K9988_
                                  _rest10021_
                                  _r10022_)))))
                      (let ((_E1003210061_
                             (lambda ()
                               (if (gx#stx-pair? _e1002310041_)
                                   (let ((_e1003710049_
                                          (gx#syntax-e _e1002310041_)))
                                     (let ((_hd1003810052_
                                            (##car _e1003710049_))
                                           (_tl1003910054_
                                            (##cdr _e1003710049_)))
                                       (let ((_macro10057_ _hd1003810052_))
                                         (let ((_body10059_ _tl1003910054_))
                                           (if (gx#core-bound-identifier?__opt-lambda4037
                                                _macro10057_
                                                gx#syntax-binding?)
                                               (_K9988_ (cons (gx#core-apply-expander__opt-lambda4802
                                                               (gx#syntax-local-e__0
                                                                _macro10057_)
                                                               _hd10020_
                                                               _method9984_)
                                                              _rest10021_)
                                                        _r10022_)
                                               (_E1003610045_))))))
                                   (_E1003610045_)))))
                        (let ((_E1002510075_
                               (lambda ()
                                 (if (gx#stx-pair? _e1002310041_)
                                     (let ((_e1003310065_
                                            (gx#syntax-e _e1002310041_)))
                                       (let ((_hd1003410068_
                                              (##car _e1003310065_))
                                             (_tl1003510070_
                                              (##cdr _e1003310065_)))
                                         (if (eq? (gx#stx-e _hd1003410068_)
                                                  'begin:)
                                             (let ((_body10073_
                                                    _tl1003510070_))
                                               (if '#t
                                                   (_K9988_ (gx#stx-foldr
                                                             cons
                                                             _rest10021_
                                                             _body10073_)
                                                            _r10022_)
                                                   (_E1003210061_)))
                                             (_E1003210061_))))
                                     (_E1003210061_)))))
                          (let ((_E1002410102_
                                 (lambda ()
                                   (if (gx#stx-pair? _e1002310041_)
                                       (let ((_e1002610079_
                                              (gx#syntax-e _e1002310041_)))
                                         (let ((_hd1002710082_
                                                (##car _e1002610079_))
                                               (_tl1002810084_
                                                (##cdr _e1002610079_)))
                                           (if (eq? (gx#stx-e _hd1002710082_)
                                                    'phi:)
                                               (if (gx#stx-pair?
                                                    _tl1002810084_)
                                                   (let ((_e1002910087_
                                                          (gx#syntax-e
                                                           _tl1002810084_)))
                                                     (let ((_hd1003010090_
                                                            (##car _e1002910087_))
                                                           (_tl1003110092_
                                                            (##cdr _e1002910087_)))
                                                       (let ((_dphi10095_
                                                              _hd1003010090_))
                                                         (let ((_body10097_
                                                                _tl1003110092_))
                                                           (if (gx#stx-fixnum?
                                                                _dphi10095_)
                                                               (let ((_rbody10100_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (call-with-parameters
                               (lambda () (_K9988_ _body10097_ '()))
                               _current-phi9985_
                               (fx+ (gx#stx-e _dphi10095_)
                                    (_current-phi9985_)))))
                         (_K9988_ _rest10021_
                                  (foldr1 cons _r10022_ _rbody10100_)))
                       (_E1002510075_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1002510075_))
                                               (_E1002510075_))))
                                       (_E1002510075_)))))
                            (let () (_E1002410102_))))))))))
        (let ((_e99909997_ _stx9982_))
          (let ((_E999210001_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e99909997_))))
            (let ((_E999110016_
                   (lambda ()
                     (if (gx#stx-pair? _e99909997_)
                         (let ((_e999310005_ (gx#syntax-e _e99909997_)))
                           (let ((_hd999410008_ (##car _e999310005_))
                                 (_tl999510010_ (##cdr _e999310005_)))
                             (let ((_body10013_ _tl999510010_))
                               (if '#t
                                   (if (_current-phi9985_)
                                       (_K9988_ _body10013_ '())
                                       (call-with-parameters
                                        (lambda () (_K9988_ _body10013_ '()))
                                        _current-phi9985_
                                        (gx#current-expander-phi)))
                                   (_E999210001_)))))
                         (_E999210001_)))))
              (let () (_E999110016_))))))))
  (begin
    (define gx#core-expand-import%__opt-lambda9519
      (lambda (_stx9521_ _internal-expand?9522_)
        (let ((_import19525_
               (lambda (_ctx9956_ _K9957_ _rest9958_ _r9959_)
                 (let ((_dphi9961_
                        (fx- (gx#current-import-expander-phi)
                             (gx#current-expander-phi))))
                   (_K9957_ _rest9958_
                            (cons (##structure
                                   gx#import-set::t
                                   _ctx9956_
                                   _dphi9961_
                                   (map (lambda (_g99629964_)
                                          (gx#core-module-export->import__opt-lambda10417
                                           _g99629964_
                                           '#f
                                           _dphi9961_))
                                        (##structure-ref
                                         _ctx9956_
                                         '9
                                         gx#module-context::t
                                         '#f)))
                                  _r9959_))))))
          (let ((_import-spec?9526_
                 (lambda (_hd9913_)
                   (let ((_e99149924_ _hd9913_))
                     (let ((_E99169928_ (lambda () '#f)))
                       (let ((_E99159952_
                              (lambda ()
                                (if (gx#stx-pair? _e99149924_)
                                    (let ((_e99179932_
                                           (gx#syntax-e _e99149924_)))
                                      (let ((_hd99189935_ (##car _e99179932_))
                                            (_tl99199937_ (##cdr _e99179932_)))
                                        (if (eq? (gx#stx-e _hd99189935_)
                                                 'spec:)
                                            (if (gx#stx-pair? _tl99199937_)
                                                (let ((_e99209940_
                                                       (gx#syntax-e
                                                        _tl99199937_)))
                                                  (let ((_hd99219943_
                                                         (##car _e99209940_))
                                                        (_tl99229945_
                                                         (##cdr _e99209940_)))
                                                    (let ((_spath9948_
                                                           _hd99219943_))
                                                      (let ((_specs9950_
                                                             _tl99229945_))
                                                        (if '#t
                                                            '#t
                                                            (_E99169928_))))))
                                                (_E99169928_))
                                            (_E99169928_))))
                                    (_E99169928_)))))
                         (let () (_E99159952_))))))))
            (let ((_import-submodule?9527_
                   (lambda (_hd9870_)
                     (let ((_e98719881_ _hd9870_))
                       (let ((_E98739885_ (lambda () '#f)))
                         (let ((_E98729909_
                                (lambda ()
                                  (if (gx#stx-pair? _e98719881_)
                                      (let ((_e98749889_
                                             (gx#syntax-e _e98719881_)))
                                        (let ((_hd98759892_
                                               (##car _e98749889_))
                                              (_tl98769894_
                                               (##cdr _e98749889_)))
                                          (if (eq? (gx#stx-e _hd98759892_)
                                                   'in:)
                                              (if (gx#stx-pair? _tl98769894_)
                                                  (let ((_e98779897_
                                                         (gx#syntax-e
                                                          _tl98769894_)))
                                                    (let ((_hd98789900_
                                                           (##car _e98779897_))
                                                          (_tl98799902_
                                                           (##cdr _e98779897_)))
                                                      (let ((_top9905_
                                                             _hd98789900_))
                                                        (let ((_sub9907_
                                                               _tl98799902_))
                                                          (if '#t
                                                              '#t
                                                              (_E98739885_))))))
                                                  (_E98739885_))
                                              (_E98739885_))))
                                      (_E98739885_)))))
                           (let () (_E98729909_))))))))
              (let ((_import-runtime?9528_
                     (lambda (_hd9827_)
                       (let ((_e98289838_ _hd9827_))
                         (let ((_E98309842_ (lambda () '#f)))
                           (let ((_E98299866_
                                  (lambda ()
                                    (if (gx#stx-pair? _e98289838_)
                                        (let ((_e98319846_
                                               (gx#syntax-e _e98289838_)))
                                          (let ((_hd98329849_
                                                 (##car _e98319846_))
                                                (_tl98339851_
                                                 (##cdr _e98319846_)))
                                            (if (eq? (gx#stx-e _hd98329849_)
                                                     'runtime:)
                                                (if (gx#stx-pair? _tl98339851_)
                                                    (let ((_e98349854_
                                                           (gx#syntax-e
                                                            _tl98339851_)))
                                                      (let ((_hd98359857_
                                                             (##car _e98349854_))
                                                            (_tl98369859_
                                                             (##cdr _e98349854_)))
                                                        (let ((_top9862_
                                                               _hd98359857_))
                                                          (let ((_spath9864_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl98369859_))
                    (if '#t '#t (_E98309842_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E98309842_))
                                                (_E98309842_))))
                                        (_E98309842_)))))
                             (let () (_E98299866_))))))))
                (let ((_import-spec-source9532_
                       (lambda (_spath9598_)
                         (gx#core-import-nested-module
                          _spath9598_
                          _stx9521_))))
                  (let ((_import!9533_
                         (lambda (_rbody9546_)
                           (let ((_current-ctx9548_
                                  (gx#current-expander-context)))
                             (let ((_deps9549_ (make-hash-table-eq)))
                               (let ((_bind!9550_
                                      (lambda (_hd9596_)
                                        (begin
                                          (gx#core-bind-import!__1
                                           _hd9596_
                                           _current-ctx9548_)
                                          (if (if (fxpositive?
                                                   (##structure-ref
                                                    _hd9596_
                                                    '3
                                                    gx#module-import::t
                                                    '#f))
                                                  (fxzero? (##structure-ref
                                                            (##structure-ref
                                                             _hd9596_
                                                             '1
                                                             gx#module-import::t
                                                             '#f)
                                                            '3
                                                            gx#module-export::t
                                                            '#f))
                                                  '#f)
                                              (table-set!
                                               _deps9549_
                                               (##structure-ref
                                                (##structure-ref
                                                 _hd9596_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)
                                                '1
                                                gx#module-export::t
                                                '#f)
                                               '#t)
                                              '#!void)))))
                                 (let ((_fold-e9551_
                                        (lambda (_in9593_ _r9594_)
                                          (if (##structure-direct-instance-of?
                                               _in9593_
                                               'gx#module-import::t)
                                              (cons _in9593_ _r9594_)
                                              (if (##structure-direct-instance-of?
                                                   _in9593_
                                                   'gx#import-set::t)
                                                  (foldl1 cons
                                                          _r9594_
                                                          (##structure-ref
                                                           _in9593_
                                                           '3
                                                           gx#import-set::t
                                                           '#f))
                                                  _r9594_)))))
                                   ((letrec ((_lp9553_
                                              (lambda (_rest9555_ _body9556_)
                                                (let ((_rest95579565_
                                                       _rest9555_))
                                                  (let ((_E95609569_
                                                         (lambda ()
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _rest95579565_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_else95599575_
                                                           (lambda ()
                                                             (begin
                                                               (if (##structure-instance-of?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _current-ctx9548_
                            'gx#module-context::t)
                           (##structure-set!
                            _current-ctx9548_
                            (foldl1 _fold-e9551_
                                    (##structure-ref
                                     _current-ctx9548_
                                     '8
                                     gx#module-context::t
                                     '#f)
                                    _body9556_)
                            '8
                            gx#module-context::t
                            '#f)
                           '#!void)
                       (table-for-each
                        (lambda (_ctx9573_ _g11166_)
                          (gx#eval-module _ctx9573_))
                        _deps9549_)
                       _body9556_))))
              (let ((_K95619581_
                     (lambda (_rest9578_ _hd9579_)
                       (begin
                         (if (##structure-direct-instance-of?
                              _hd9579_
                              'gx#module-import::t)
                             (_bind!9550_ _hd9579_)
                             (if (##structure-direct-instance-of?
                                  _hd9579_
                                  'gx#import-set::t)
                                 (for-each
                                  _bind!9550_
                                  (##structure-ref
                                   _hd9579_
                                   '3
                                   gx#import-set::t
                                   '#f))
                                 (if (##structure-instance-of?
                                      _hd9579_
                                      'gx#module-context::t)
                                     '#!void
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Unexpected import"
                                      _stx9521_
                                      _hd9579_))))
                         (_lp9553_ _rest9578_ (cons _hd9579_ _body9556_))))))
                (if (##pair? _rest95579565_)
                    (let ((_hd95629584_ (##car _rest95579565_))
                          (_tl95639586_ (##cdr _rest95579565_)))
                      (let ((_hd9589_ _hd95629584_))
                        (let ((_rest9591_ _tl95639586_))
                          (_K95619581_ _rest9591_ _hd9589_))))
                    (_else95599575_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _lp9553_)
                                    _rbody9546_
                                    '()))))))))
                    (let ((_expanded-import?9534_
                           (lambda (_e9538_)
                             (let ((_$e9540_
                                    (##structure-direct-instance-of?
                                     _e9538_
                                     'gx#import-set::t)))
                               (if _$e9540_
                                   _$e9540_
                                   (let ((_$e9543_
                                          (##structure-direct-instance-of?
                                           _e9538_
                                           'gx#module-import::t)))
                                     (if _$e9543_
                                         _$e9543_
                                         (##structure-instance-of?
                                          _e9538_
                                          'gx#module-context::t))))))))
                      (let ((_import-submodule9529_
                             (lambda (_hd9794_ _K9795_ _rest9796_ _r9797_)
                               (let ((_e97989805_ _hd9794_))
                                 (let ((_E98009809_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _e97989805_))))
                                   (let ((_E97999823_
                                          (lambda ()
                                            (if (gx#stx-pair? _e97989805_)
                                                (let ((_e98019813_
                                                       (gx#syntax-e
                                                        _e97989805_)))
                                                  (let ((_hd98029816_
                                                         (##car _e98019813_))
                                                        (_tl98039818_
                                                         (##cdr _e98019813_)))
                                                    (let ((_spath9821_
                                                           _tl98039818_))
                                                      (if '#t
                                                          (_import19525_
                                                           (_import-spec-source9532_
                                                            _spath9821_)
                                                           _K9795_
                                                           _rest9796_
                                                           _r9797_)
                                                          (_E98009809_)))))
                                                (_E98009809_)))))
                                     (let () (_E97999823_))))))))
                        (let ((_import-runtime9530_
                               (lambda (_hd9761_ _K9762_ _rest9763_ _r9764_)
                                 (let ((_e97659772_ _hd9761_))
                                   (let ((_E97679776_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _e97659772_))))
                                     (let ((_E97669790_
                                            (lambda ()
                                              (if (gx#stx-pair? _e97659772_)
                                                  (let ((_e97689780_
                                                         (gx#syntax-e
                                                          _e97659772_)))
                                                    (let ((_hd97699783_
                                                           (##car _e97689780_))
                                                          (_tl97709785_
                                                           (##cdr _e97689780_)))
                                                      (let ((_spath9788_
                                                             _tl97709785_))
                                                        (if '#t
                                                            (_K9762_ _rest9763_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (_import-spec-source9532_ _spath9788_)
                                   _r9764_))
                    (_E97679776_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E97679776_)))))
                                       (let () (_E97669790_))))))))
                          (let ((_import-spec9531_
                                 (lambda (_hd9600_ _K9601_ _rest9602_ _r9603_)
                                   (let ((_e96049621_ _hd9600_))
                                     (let ((_E96139625_
                                            (lambda ()
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _e96049621_))))
                                       (let ((_E96069735_
                                              (lambda ()
                                                (if (gx#stx-pair? _e96049621_)
                                                    (let ((_e96149629_
                                                           (gx#syntax-e
                                                            _e96049621_)))
                                                      (let ((_hd96159632_
                                                             (##car _e96149629_))
                                                            (_tl96169634_
                                                             (##cdr _e96149629_)))
                                                        (if (gx#stx-pair?
                                                             _tl96169634_)
                                                            (let ((_e96179637_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl96169634_)))
                      (let ((_hd96189640_ (##car _e96179637_))
                            (_tl96199642_ (##cdr _e96179637_)))
                        (let ((_path9645_ _hd96189640_))
                          (let ((_specs9647_ _tl96199642_))
                            (if '#t
                                (let ((_src-ctx9649_
                                       (_import-spec-source9532_ _path9645_))
                                      (_exports9650_ (make-table))
                                      (_specs9651_
                                       (gx#syntax->list _specs9647_)))
                                  (begin
                                    (for-each
                                     (lambda (_out9653_)
                                       (table-set!
                                        _exports9650_
                                        (cons (##structure-ref
                                               _out9653_
                                               '3
                                               gx#module-export::t
                                               '#f)
                                              (##structure-ref
                                               _out9653_
                                               '4
                                               gx#module-export::t
                                               '#f))
                                        _out9653_))
                                     (##structure-ref
                                      _src-ctx9649_
                                      '9
                                      gx#module-context::t
                                      '#f))
                                    (_K9601_ _rest9602_
                                             (foldl1 (lambda (_spec9655_
                                                              _r9656_)
                                                       (let ((_e96579673_
                                                              _spec9655_))
                                                         (let ((_E96599677_
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _e96579673_))))
                   (let ((_E96589731_
                          (lambda ()
                            (if (gx#stx-pair? _e96579673_)
                                (let ((_e96609681_ (gx#syntax-e _e96579673_)))
                                  (let ((_hd96619684_ (##car _e96609681_))
                                        (_tl96629686_ (##cdr _e96609681_)))
                                    (let ((_phi9689_ _hd96619684_))
                                      (if (gx#stx-pair? _tl96629686_)
                                          (let ((_e96639691_
                                                 (gx#syntax-e _tl96629686_)))
                                            (let ((_hd96649694_
                                                   (##car _e96639691_))
                                                  (_tl96659696_
                                                   (##cdr _e96639691_)))
                                              (let ((_name9699_ _hd96649694_))
                                                (if (gx#stx-pair? _tl96659696_)
                                                    (let ((_e96669701_
                                                           (gx#syntax-e
                                                            _tl96659696_)))
                                                      (let ((_hd96679704_
                                                             (##car _e96669701_))
                                                            (_tl96689706_
                                                             (##cdr _e96669701_)))
                                                        (let ((_src-phi9709_
                                                               _hd96679704_))
                                                          (if (gx#stx-pair?
                                                               _tl96689706_)
                                                              (let ((_e96699711_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl96689706_)))
                        (let ((_hd96709714_ (##car _e96699711_))
                              (_tl96719716_ (##cdr _e96699711_)))
                          (let ((_src-name9719_ _hd96709714_))
                            (if (gx#stx-null? _tl96719716_)
                                (if (if (gx#stx-fixnum? _src-phi9709_)
                                        (if (gx#identifier? _src-name9719_)
                                            (if (gx#stx-fixnum? _phi9689_)
                                                (gx#identifier? _name9699_)
                                                '#f)
                                            '#f)
                                        '#f)
                                    (let ((_src-phi9721_
                                           (gx#stx-e _src-phi9709_))
                                          (_src-name9722_
                                           (gx#core-identifier-key
                                            _src-name9719_))
                                          (_phi9723_ (gx#stx-e _phi9689_))
                                          (_name9724_
                                           (gx#core-identifier-key
                                            _name9699_)))
                                      (let ((_$e9726_
                                             (table-ref
                                              _exports9650_
                                              (cons _src-phi9721_
                                                    _src-name9722_)
                                              '#f)))
                                        (if _$e9726_
                                            ((lambda (_out9729_)
                                               (cons (gx#core-module-export->import__opt-lambda10417
                                                      _out9729_
                                                      _name9724_
                                                      (fx- _phi9723_
                                                           _src-phi9721_))
                                                     _r9656_))
                                             _$e9726_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; no matching export"
                                             _stx9521_
                                             _hd9600_))))
                                    (_E96599677_))
                                (_E96599677_)))))
                      (_E96599677_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E96599677_)))))
                                          (_E96599677_)))))
                                (_E96599677_)))))
                     (let () (_E96589731_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _r9603_
                                                     _specs9651_))))
                                (_E96139625_))))))
                    (_E96139625_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E96139625_)))))
                                         (let ((_E96059757_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _e96049621_)
                                                      (let ((_e96079739_
                                                             (gx#syntax-e
                                                              _e96049621_)))
                                                        (let ((_hd96089742_
                                                               (##car _e96079739_))
                                                              (_tl96099744_
                                                               (##cdr _e96079739_)))
                                                          (if (gx#stx-pair?
                                                               _tl96099744_)
                                                              (let ((_e96109747_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl96099744_)))
                        (let ((_hd96119750_ (##car _e96109747_))
                              (_tl96129752_ (##cdr _e96109747_)))
                          (let ((_path9755_ _hd96119750_))
                            (if (gx#stx-null? _tl96129752_)
                                (if '#t
                                    (_K9601_ _rest9602_
                                             (cons (_import-spec-source9532_
                                                    _path9755_)
                                                   _r9603_))
                                    (_E96069735_))
                                (_E96069735_)))))
                      (_E96069735_))))
              (_E96069735_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let () (_E96059757_)))))))))
                            (let ((_expand19524_
                                   (lambda (_hd9967_
                                            _K9968_
                                            _rest9969_
                                            _r9970_)
                                     (if (gx#core-bound-module? _hd9967_)
                                         (_import19525_
                                          (gx#syntax-local-e__0 _hd9967_)
                                          _K9968_
                                          _rest9969_
                                          _r9970_)
                                         (if (gx#core-library-module-path?
                                              _hd9967_)
                                             (_import19525_
                                              (gx#import-module__0
                                               (gx#core-resolve-library-module-path
                                                _hd9967_))
                                              _K9968_
                                              _rest9969_
                                              _r9970_)
                                             (if (gx#stx-string? _hd9967_)
                                                 (_import19525_
                                                  (gx#import-module__0
                                                   (gx#core-resolve-module-path__opt-lambda10771
                                                    _hd9967_
                                                    (gx#stx-source _stx9521_)))
                                                  _K9968_
                                                  _rest9969_
                                                  _r9970_)
                                                 (if (##structure-instance-of?
                                                      (gx#stx-e _hd9967_)
                                                      'gx#module-context::t)
                                                     (_K9968_ _rest9969_
                                                              (cons (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd9967_)
                            _r9970_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (_import-spec?9526_
                                                          _hd9967_)
                                                         (_import-spec9531_
                                                          _hd9967_
                                                          _K9968_
                                                          _rest9969_
                                                          _r9970_)
                                                         (if (_import-submodule?9527_
                                                              _hd9967_)
                                                             (_import-submodule9529_
                                                              _hd9967_
                                                              _K9968_
                                                              _rest9969_
                                                              _r9970_)
                                                             (if (_import-runtime?9528_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd9967_)
                         (_import-runtime9530_
                          _hd9967_
                          _K9968_
                          _rest9969_
                          _r9970_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; illegal import"
                          _stx9521_
                          _hd9967_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (let ((_rbody9536_
                                     (gx#core-expand-import/export
                                      _stx9521_
                                      _expanded-import?9534_
                                      'apply-import-expander
                                      gx#current-import-expander-phi
                                      _expand19524_)))
                                (if _internal-expand?9522_
                                    (reverse _rbody9536_)
                                    (gx#core-quote-syntax__1
                                     (gx#core-cons
                                      '%#import
                                      (_import!9533_ _rbody9536_))
                                     (gx#stx-source _stx9521_)))))))))))))))))
    (begin
      (define gx#core-expand-import%__0
        (lambda (_stx9975_)
          (let ((_internal-expand?9977_ '#f))
            (gx#core-expand-import%__opt-lambda9519
             _stx9975_
             _internal-expand?9977_))))
      (define gx#core-expand-import%
        (lambda _g11168_
          (let ((_g11167_ (length _g11168_)))
            (cond ((fx= _g11167_ 1) (apply gx#core-expand-import%__0 _g11168_))
                  ((fx= _g11167_ 2)
                   (apply gx#core-expand-import%__opt-lambda9519 _g11168_))
                  (else (error "No clause matching arguments" _g11168_))))))))
  (define gx#core-import-nested-module
    (lambda (_spath9448_ _where9449_)
      (let ((_e94509457_ _spath9448_))
        (let ((_E94529461_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e94509457_))))
          (let ((_E94519516_
                 (lambda ()
                   (if (gx#stx-pair? _e94509457_)
                       (let ((_e94539465_ (gx#syntax-e _e94509457_)))
                         (let ((_hd94549468_ (##car _e94539465_))
                               (_tl94559470_ (##cdr _e94539465_)))
                           (let ((_origin9473_ _hd94549468_))
                             (let ((_sub9475_ _tl94559470_))
                               (if '#t
                                   (let ((_origin-ctx9477_
                                          (if (gx#stx-false? _origin9473_)
                                              (gx#current-expander-context)
                                              (gx#import-module__0
                                               _origin9473_))))
                                     ((letrec ((_lp9479_
                                                (lambda (_rest9481_ _ctx9482_)
                                                  (let ((_e94839490_
                                                         _rest9481_))
                                                    (let ((_E94859494_
                                                           (lambda ()
                                                             _ctx9482_)))
                                                      (let ((_E94849512_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _e94839490_)
                           (let ((_e94869498_ (gx#syntax-e _e94839490_)))
                             (let ((_hd94879501_ (##car _e94869498_))
                                   (_tl94889503_ (##cdr _e94869498_)))
                               (let ((_id9506_ _hd94879501_))
                                 (let ((_rest9508_ _tl94889503_))
                                   (if '#t
                                       (let ((_bind9510_
                                              (gx#resolve-identifier__opt-lambda4587
                                               _id9506_
                                               '0
                                               _ctx9482_)))
                                         (begin
                                           (if (if (##structure-direct-instance-of?
                                                    _bind9510_
                                                    'gx#syntax-binding::t)
                                                   (##structure-instance-of?
                                                    (##structure-ref
                                                     _bind9510_
                                                     '4
                                                     gx#syntax-binding::t
                                                     '#f)
                                                    'gx#module-context::t)
                                                   '#f)
                                               '#!void
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; not bound as module"
                                                _where9449_
                                                _spath9448_
                                                _id9506_))
                                           (_lp9479_
                                            _rest9508_
                                            (##structure-ref
                                             _bind9510_
                                             '4
                                             gx#syntax-binding::t
                                             '#f))))
                                       (_E94859494_))))))
                           (_E94859494_)))))
                (let () (_E94849512_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _lp9479_)
                                      _sub9475_
                                      _origin-ctx9477_))
                                   (_E94529461_))))))
                       (_E94529461_)))))
            (let () (_E94519516_)))))))
  (define gx#core-expand-import-source
    (lambda (_hd9446_)
      (gx#core-expand-import%__opt-lambda9519
       (cons 'import-internal% (cons _hd9446_ '()))
       '#t)))
  (begin
    (define gx#core-expand-export%__opt-lambda9028
      (lambda (_stx9030_ _internal-expand?9031_)
        (let ((_make-export__opt-lambda9392__1113611137_
               (lambda (_bind9394_ _phi9395_ _ctx9396_ _name9397_)
                 (let ((_key9399_
                        (##structure-ref _bind9394_ '2 gx#binding::t '#f)))
                   (let ((_export-key9401_
                          (if _name9397_
                              (gx#core-identifier-key _name9397_)
                              _key9399_)))
                     (let ()
                       (##structure
                        gx#module-export::t
                        _ctx9396_
                        _key9399_
                        _phi9395_
                        _export-key9401_
                        (let ((_$e9404_
                               (##structure-instance-of?
                                _bind9394_
                                'gx#extern-binding::t)))
                          (if _$e9404_
                              _$e9404_
                              (##structure-direct-instance-of?
                               _bind9394_
                               'gx#import-binding::t))))))))))
          (let ((_make-export__0__1113811141_
                 (lambda (_bind9410_)
                   (let ((_phi9412_ (gx#current-export-expander-phi)))
                     (let ((_ctx9414_ (gx#current-expander-context)))
                       (let ((_name9416_ '#f))
                         (_make-export__opt-lambda9392__1113611137_
                          _bind9410_
                          _phi9412_
                          _ctx9414_
                          _name9416_)))))))
            (let ((_make-export__1__1113911142_
                   (lambda (_bind9418_ _phi9419_)
                     (let ((_ctx9421_ (gx#current-expander-context)))
                       (let ((_name9423_ '#f))
                         (_make-export__opt-lambda9392__1113611137_
                          _bind9418_
                          _phi9419_
                          _ctx9421_
                          _name9423_))))))
              (let ((_make-export__2__1114011143_
                     (lambda (_bind9425_ _phi9426_ _ctx9427_)
                       (let ((_name9429_ '#f))
                         (_make-export__opt-lambda9392__1113611137_
                          _bind9425_
                          _phi9426_
                          _ctx9427_
                          _name9429_)))))
                (let ((_make-export9033_
                       (lambda _g11170_
                         (let ((_g11169_ (length _g11170_)))
                           (cond ((fx= _g11169_ 1)
                                  (apply _make-export__0__1113811141_
                                         _g11170_))
                                 ((fx= _g11169_ 2)
                                  (apply _make-export__1__1113911142_
                                         _g11170_))
                                 ((fx= _g11169_ 3)
                                  (apply _make-export__2__1114011143_
                                         _g11170_))
                                 ((fx= _g11169_ 4)
                                  (apply _make-export__opt-lambda9392__1113611137_
                                         _g11170_))
                                 (else
                                  (error "No clause matching arguments"
                                         _g11170_)))))))
                  (let ((_export-imports9035_
                         (lambda (_src9056_ _r9057_)
                           (let ((_current-ctx9059_
                                  (gx#current-expander-context)))
                             (let ((_current-phi9060_
                                    (gx#current-export-expander-phi)))
                               (let ((_import->export9061_
                                      (lambda (_in9069_)
                                        (let ((_in90709078_ _in9069_))
                                          (let ((_E90729082_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _in90709078_))))
                                            (let ((_K90739089_
                                                   (lambda (_phi9085_
                                                            _key9086_
                                                            _out9087_)
                                                     (if (fx= _phi9085_
                                                              _current-phi9060_)
                                                         (if (eq? _src9056_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##structure-ref
                           _out9087_
                           '1
                           gx#module-export::t
                           '#f))
                     (##structure
                      gx#module-export::t
                      _current-ctx9059_
                      _key9086_
                      _phi9085_
                      _key9086_
                      '#t)
                     '#f)
                 '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (direct-struct-instance?
                                                   gx#module-import::t
                                                   _in90709078_)
                                                  (let ((_e90749092_
                                                         (##vector-ref
                                                          _in90709078_
                                                          '1)))
                                                    (let ((_out9095_
                                                           _e90749092_))
                                                      (let ((_e90759097_
                                                             (##vector-ref
                                                              _in90709078_
                                                              '2)))
                                                        (let ((_key9100_
                                                               _e90759097_))
                                                          (let ((_e90769102_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref _in90709078_ '3)))
                    (let ((_phi9105_ _e90769102_))
                      (_K90739089_ _phi9105_ _key9100_ _out9095_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E90729082_))))))))
                                 (let ((_fold-e9062_
                                        (lambda (_in9064_ _r9065_)
                                          (let ((_out9067_
                                                 (_import->export9061_
                                                  _in9064_)))
                                            (if _out9067_
                                                (cons _out9067_ _r9065_)
                                                _r9065_)))))
                                   (cons (##structure
                                          gx#export-set::t
                                          _src9056_
                                          _current-phi9060_
                                          (foldl1 _fold-e9062_
                                                  '()
                                                  (##structure-ref
                                                   _current-ctx9059_
                                                   '8
                                                   gx#module-context::t
                                                   '#f)))
                                         _r9057_))))))))
                    (let ((_export!9036_
                           (lambda (_rbody9046_)
                             (let ((_current-ctx9048_
                                    (gx#current-expander-context)))
                               (let ((_fold-e9049_
                                      (lambda (_out9053_ _r9054_)
                                        (if (##structure-direct-instance-of?
                                             _out9053_
                                             'gx#module-export::t)
                                            (cons _out9053_ _r9054_)
                                            (if (##structure-direct-instance-of?
                                                 _out9053_
                                                 'gx#export-set::t)
                                                (foldl1 cons
                                                        _r9054_
                                                        (##structure-ref
                                                         _out9053_
                                                         '3
                                                         gx#export-set::t
                                                         '#f))
                                                _r9054_)))))
                                 (let ((_body9051_ (reverse _rbody9046_)))
                                   (begin
                                     (##structure-set!
                                      _current-ctx9048_
                                      (foldl1 _fold-e9049_
                                              (##structure-ref
                                               _current-ctx9048_
                                               '9
                                               gx#module-context::t
                                               '#f)
                                              _body9051_)
                                      '9
                                      gx#module-context::t
                                      '#f)
                                     _body9051_)))))))
                      (let ((_expanded-export?9037_
                             (lambda (_e9041_)
                               (let ((_$e9043_
                                      (##structure-direct-instance-of?
                                       _e9041_
                                       'gx#module-export::t)))
                                 (if _$e9043_
                                     _$e9043_
                                     (##structure-direct-instance-of?
                                      _e9041_
                                      'gx#export-set::t))))))
                        (let ((_expand19034_
                               (lambda (_hd9107_ _K9108_ _rest9109_ _r9110_)
                                 (let ((_e91119143_ _hd9107_))
                                   (let ((_E91389147_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; illegal export"
                                             _stx9030_
                                             _hd9107_))))
                                     (let ((_E91289226_
                                            (lambda ()
                                              (if (gx#stx-pair? _e91119143_)
                                                  (let ((_e91399151_
                                                         (gx#syntax-e
                                                          _e91119143_)))
                                                    (let ((_hd91409154_
                                                           (##car _e91399151_))
                                                          (_tl91419156_
                                                           (##cdr _e91399151_)))
                                                      (if (eq? (gx#stx-e
                                                                _hd91409154_)
                                                               'import:)
                                                          (let ((_in9159_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl91419156_))
                    (if (gx#stx-list? _in9159_)
                        ((letrec ((_lp9161_
                                   (lambda (_in-rest9163_ _r9164_)
                                     (let ((_e91659172_ _in-rest9163_))
                                       (let ((_E91679176_
                                              (lambda ()
                                                (_K9108_ _rest9109_ _r9164_))))
                                         (let ((_E91669222_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _e91659172_)
                                                      (let ((_e91689180_
                                                             (gx#syntax-e
                                                              _e91659172_)))
                                                        (let ((_hd91699183_
                                                               (##car _e91689180_))
                                                              (_tl91709185_
                                                               (##cdr _e91689180_)))
                                                          (let ((_hd9188_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd91699183_))
                    (let ((_in-rest9190_ _tl91709185_))
                      (if '#t
                          (let ((_src9220_
                                 (if (gx#core-bound-module? _hd9188_)
                                     (gx#syntax-local-e__0 _hd9188_)
                                     (if (gx#core-library-module-path?
                                          _hd9188_)
                                         (gx#import-module__0
                                          (gx#core-resolve-library-module-path
                                           _hd9188_))
                                         (if (gx#stx-string? _hd9188_)
                                             (gx#import-module__0
                                              (gx#core-resolve-module-path__opt-lambda10771
                                               _hd9188_
                                               (gx#stx-source _stx9030_)))
                                             (let ((_e91919198_ _hd9188_))
                                               (let ((_E91939202_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; illegal re-export"
                                                         _stx9030_
                                                         _hd9188_))))
                                                 (let ((_E91929216_
                                                        (lambda ()
                                                          (if (gx#stx-pair?
                                                               _e91919198_)
                                                              (let ((_e91949206_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _e91919198_)))
                        (let ((_hd91959209_ (##car _e91949206_))
                              (_tl91969211_ (##cdr _e91949206_)))
                          (if (eq? (gx#stx-e _hd91959209_) 'in:)
                              (let ((_spath9214_ _tl91969211_))
                                (if '#t
                                    (gx#core-import-nested-module
                                     _spath9214_
                                     _stx9030_)
                                    (_E91939202_)))
                              (_E91939202_))))
                      (_E91939202_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (_E91929216_))))))))))
                            (_lp9161_
                             _in-rest9190_
                             (_export-imports9035_ _src9220_ _r9164_)))
                          (_E91679176_))))))
              (_E91679176_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let () (_E91669222_))))))))
                           _lp9161_)
                         _in9159_
                         _r9110_)
                        (_E91389147_)))
                  (_E91389147_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E91389147_)))))
                                       (let ((_E91159265_
                                              (lambda ()
                                                (if (gx#stx-pair? _e91119143_)
                                                    (let ((_e91299230_
                                                           (gx#syntax-e
                                                            _e91119143_)))
                                                      (let ((_hd91309233_
                                                             (##car _e91299230_))
                                                            (_tl91319235_
                                                             (##cdr _e91299230_)))
                                                        (if (eq? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd91309233_)
                         'rename:)
                    (if (gx#stx-pair? _tl91319235_)
                        (let ((_e91329238_ (gx#syntax-e _tl91319235_)))
                          (let ((_hd91339241_ (##car _e91329238_))
                                (_tl91349243_ (##cdr _e91329238_)))
                            (let ((_id9246_ _hd91339241_))
                              (if (gx#stx-pair? _tl91349243_)
                                  (let ((_e91359248_
                                         (gx#syntax-e _tl91349243_)))
                                    (let ((_hd91369251_ (##car _e91359248_))
                                          (_tl91379253_ (##cdr _e91359248_)))
                                      (let ((_name9256_ _hd91369251_))
                                        (if (gx#stx-null? _tl91379253_)
                                            (if '#t
                                                (let ((_phi9258_
                                                       (gx#current-export-expander-phi)))
                                                  (let ((_$e9260_
                                                         (gx#core-resolve-identifier__1
                                                          _id9246_
                                                          _phi9258_)))
                                                    (if _$e9260_
                                                        ((lambda (_bind9263_)
                                                           (_K9108_ _rest9109_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (_make-export__opt-lambda9392__1113611137_
                                   _bind9263_
                                   _phi9258_
                                   (gx#current-expander-context)
                                   _name9256_)
                                  _r9110_)))
                 _$e9260_)
                (gx#raise-syntax-error
                 '#f
                 '"Reference to unbound identifier"
                 _stx9030_
                 _hd9107_
                 _id9246_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E91289226_))
                                            (_E91289226_)))))
                                  (_E91289226_)))))
                        (_E91289226_))
                    (_E91289226_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E91289226_)))))
                                         (let ((_E91149314_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _e91119143_)
                                                      (let ((_e91169269_
                                                             (gx#syntax-e
                                                              _e91119143_)))
                                                        (let ((_hd91179272_
                                                               (##car _e91169269_))
                                                              (_tl91189274_
                                                               (##cdr _e91169269_)))
                                                          (if (eq? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd91179272_)
                           'spec:)
                      (if (gx#stx-pair? _tl91189274_)
                          (let ((_e91199277_ (gx#syntax-e _tl91189274_)))
                            (let ((_hd91209280_ (##car _e91199277_))
                                  (_tl91219282_ (##cdr _e91199277_)))
                              (let ((_phi9285_ _hd91209280_))
                                (if (gx#stx-pair? _tl91219282_)
                                    (let ((_e91229287_
                                           (gx#syntax-e _tl91219282_)))
                                      (let ((_hd91239290_ (##car _e91229287_))
                                            (_tl91249292_ (##cdr _e91229287_)))
                                        (let ((_id9295_ _hd91239290_))
                                          (if (gx#stx-pair? _tl91249292_)
                                              (let ((_e91259297_
                                                     (gx#syntax-e
                                                      _tl91249292_)))
                                                (let ((_hd91269300_
                                                       (##car _e91259297_))
                                                      (_tl91279302_
                                                       (##cdr _e91259297_)))
                                                  (let ((_name9305_
                                                         _hd91269300_))
                                                    (if (gx#stx-null?
                                                         _tl91279302_)
                                                        (if (if (gx#stx-fixnum?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _phi9285_)
                        (if (gx#identifier? _id9295_)
                            (gx#identifier? _name9305_)
                            '#f)
                        '#f)
                    (let ((_phi9307_ (gx#stx-e _phi9285_)))
                      (let ((_$e9309_
                             (gx#core-resolve-identifier__1
                              _id9295_
                              _phi9307_)))
                        (if _$e9309_
                            ((lambda (_bind9312_)
                               (_K9108_ _rest9109_
                                        (cons (_make-export__opt-lambda9392__1113611137_
                                               _bind9312_
                                               _phi9307_
                                               (gx#current-expander-context)
                                               _name9305_)
                                              _r9110_)))
                             _$e9309_)
                            (gx#raise-syntax-error
                             '#f
                             '"Reference to unbound identifier"
                             _stx9030_
                             _hd9107_
                             _id9295_))))
                    (_E91159265_))
                (_E91159265_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E91159265_)))))
                                    (_E91159265_)))))
                          (_E91159265_))
                      (_E91159265_))))
              (_E91159265_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_E91139325_
                                                  (lambda ()
                                                    (let ((_id9318_
                                                           _e91119143_))
                                                      (if (gx#identifier?
                                                           _id9318_)
                                                          (let ((_$e9320_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-resolve-identifier__1
                          _id9318_
                          (gx#current-export-expander-phi))))
                    (if _$e9320_
                        ((lambda (_bind9323_)
                           (_K9108_ _rest9109_
                                    (cons (_make-export__0__1113811141_
                                           _bind9323_)
                                          _r9110_)))
                         _$e9320_)
                        (gx#raise-syntax-error
                         '#f
                         '"Reference to unbound identifier"
                         _stx9030_
                         _hd9107_)))
                  (_E91149314_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_E91129389_
                                                    (lambda ()
                                                      (if (eq? (gx#stx-e
                                                                _e91119143_)
                                                               '#t)
                                                          (if '#t
                                                              (let ((_current-ctx9329_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#current-expander-context)))
                        (let ((_current-phi9331_
                               (gx#current-export-expander-phi)))
                          (let ((_phi-ctx9333_
                                 (gx#core-context-shift
                                  _current-ctx9329_
                                  _current-phi9331_)))
                            (let ((_phi-bind9335_
                                   (table->list
                                    (##structure-ref
                                     _phi-ctx9333_
                                     '2
                                     gx#expander-context::t
                                     '#f))))
                              (let ()
                                ((letrec ((_lp9338_
                                           (lambda (_bind-rest9340_ _set9341_)
                                             (let ((_bind-rest93429352_
                                                    _bind-rest9340_))
                                               (let ((_E93459356_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _bind-rest93429352_))))
                                                 (let ((_else93449360_
                                                        (lambda ()
                                                          (_K9108_ _rest9109_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (##structure
                                  gx#export-set::t
                                  '#f
                                  _current-phi9331_
                                  _set9341_)
                                 _r9110_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_K93469370_
                                                          (lambda (_bind-rest9363_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _bind9364_
                           _key9365_)
                    (if (let ((_$e9367_
                               (##structure-direct-instance-of?
                                _bind9364_
                                'gx#import-binding::t)))
                          (if _$e9367_
                              _$e9367_
                              (gx#private-feature-binding? _bind9364_)))
                        (_lp9338_ _bind-rest9363_ _set9341_)
                        (_lp9338_
                         _bind-rest9363_
                         (cons (_make-export__2__1114011143_
                                _bind9364_
                                _current-phi9331_
                                _current-ctx9329_)
                               _set9341_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##pair? _bind-rest93429352_)
                                                         (let ((_hd93479373_
                                                                (##car _bind-rest93429352_))
                                                               (_tl93489375_
                                                                (##cdr _bind-rest93429352_)))
                                                           (if (##pair? _hd93479373_)
                                                               (let ((_hd93499378_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##car _hd93479373_))
                             (_tl93509380_ (##cdr _hd93479373_)))
                         (let ((_key9383_ _hd93499378_))
                           (let ((_bind9385_ _tl93509380_))
                             (let ((_bind-rest9387_ _tl93489375_))
                               (_K93469370_
                                _bind-rest9387_
                                _bind9385_
                                _key9383_)))))
                       (_else93449360_)))
                 (_else93449360_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _lp9338_)
                                 _phi-bind9335_
                                 '()))))))
                      (_E91139325_))
                  (_E91139325_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let () (_E91129389_))))))))))))
                          (let ((_rbody9039_
                                 (gx#core-expand-import/export
                                  _stx9030_
                                  gx#module-export?
                                  'apply-export-expander
                                  gx#current-export-expander-phi
                                  _expand19034_)))
                            (if _internal-expand?9031_
                                (reverse _rbody9039_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#export
                                  (_export!9036_ _rbody9039_))
                                 (gx#stx-source _stx9030_)))))))))))))))
    (begin
      (define gx#core-expand-export%__0
        (lambda (_stx9439_)
          (let ((_internal-expand?9441_ '#f))
            (gx#core-expand-export%__opt-lambda9028
             _stx9439_
             _internal-expand?9441_))))
      (define gx#core-expand-export%
        (lambda _g11172_
          (let ((_g11171_ (length _g11172_)))
            (cond ((fx= _g11171_ 1) (apply gx#core-expand-export%__0 _g11172_))
                  ((fx= _g11171_ 2)
                   (apply gx#core-expand-export%__opt-lambda9028 _g11172_))
                  (else (error "No clause matching arguments" _g11172_))))))))
  (define gx#core-expand-export-source
    (lambda (_hd9027_)
      (gx#core-expand-export%__opt-lambda9028
       (cons 'export-macro% (cons _hd9027_ '()))
       '#t)))
  (define gx#core-expand-provide%
    (lambda (_stx8997_)
      (let ((_e89989005_ _stx8997_))
        (let ((_E90009009_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e89989005_))))
          (let ((_E89999023_
                 (lambda ()
                   (if (gx#stx-pair? _e89989005_)
                       (let ((_e90019013_ (gx#syntax-e _e89989005_)))
                         (let ((_hd90029016_ (##car _e90019013_))
                               (_tl90039018_ (##cdr _e90019013_)))
                           (let ((_body9021_ _tl90039018_))
                             (if (gx#identifier-list? _body9021_)
                                 (begin
                                   (gx#stx-for-each1
                                    gx#core-bind-feature!
                                    _body9021_)
                                   (gx#core-quote-syntax__1
                                    (gx#core-cons
                                     '%#provide
                                     (gx#stx-map1
                                      gx#core-quote-syntax
                                      _body9021_))
                                    (gx#stx-source _stx8997_)))
                                 (_E90009009_)))))
                       (_E90009009_)))))
            (let () (_E89999023_)))))))
  (begin
    (define gx#core-bind-feature!__opt-lambda8961
      (lambda (_id8963_ _private?8964_ _phi8965_ _ctx8966_)
        (gx#core-bind-syntax!__opt-lambda6056
         _id8963_
         ((if _private?8964_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id8963_))
         _private?8964_
         _phi8965_
         _ctx8966_)))
    (begin
      (define gx#core-bind-feature!__0
        (lambda (_id8971_)
          (let ((_private?8973_ '#f))
            (let ((_phi8975_ (gx#current-expander-phi)))
              (let ((_ctx8977_ (gx#current-expander-context)))
                (gx#core-bind-feature!__opt-lambda8961
                 _id8971_
                 _private?8973_
                 _phi8975_
                 _ctx8977_))))))
      (define gx#core-bind-feature!__1
        (lambda (_id8979_ _private?8980_)
          (let ((_phi8982_ (gx#current-expander-phi)))
            (let ((_ctx8984_ (gx#current-expander-context)))
              (gx#core-bind-feature!__opt-lambda8961
               _id8979_
               _private?8980_
               _phi8982_
               _ctx8984_)))))
      (define gx#core-bind-feature!__2
        (lambda (_id8986_ _private?8987_ _phi8988_)
          (let ((_ctx8990_ (gx#current-expander-context)))
            (gx#core-bind-feature!__opt-lambda8961
             _id8986_
             _private?8987_
             _phi8988_
             _ctx8990_))))
      (define gx#core-bind-feature!
        (lambda _g11174_
          (let ((_g11173_ (length _g11174_)))
            (cond ((fx= _g11173_ 1) (apply gx#core-bind-feature!__0 _g11174_))
                  ((fx= _g11173_ 2) (apply gx#core-bind-feature!__1 _g11174_))
                  ((fx= _g11173_ 3) (apply gx#core-bind-feature!__2 _g11174_))
                  ((fx= _g11173_ 4)
                   (apply gx#core-bind-feature!__opt-lambda8961 _g11174_))
                  (else (error "No clause matching arguments" _g11174_)))))))))
