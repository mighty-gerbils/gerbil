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
    (lambda _$args11057_
      (apply make-struct-instance gx#module-import::t _$args11057_)))
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
    (lambda _$args11054_
      (apply make-struct-instance gx#module-export::t _$args11054_)))
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
    (lambda _$args11051_
      (apply make-struct-instance gx#import-set::t _$args11051_)))
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
    (lambda _$args11048_
      (apply make-struct-instance gx#export-set::t _$args11048_)))
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
    (lambda _$args11045_
      (apply make-struct-instance gx#import-expander::t _$args11045_)))
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
    (lambda _$args11042_
      (apply make-struct-instance gx#export-expander::t _$args11042_)))
  (define gx#current-import-expander-phi (make-parameter '#f))
  (define gx#current-export-expander-phi (make-parameter '#f))
  (define gx#module-context:::init!
    (lambda (_self11036_ _id11037_ _super11038_ _ns11039_ _path11040_)
      (direct-struct-instance-init!
       _self11036_
       _id11037_
       (make-hash-table-eq)
       _super11038_
       '#f
       '#f
       _ns11039_
       _path11040_
       '()
       '()
       '#f
       '#f)))
  (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
  (begin
    (define gx#prelude-context:::init!__opt-lambda11000
      (lambda (_self11002_ _ctx11003_ _root11004_)
        (let ((_super11012_
               (let ((_$e11006_ _root11004_))
                 (if _$e11006_
                     _$e11006_
                     (let ((_$e11009_ (gx#core-context-root__0)))
                       (if _$e11009_
                           _$e11009_
                           (make-struct-instance gx#root-context::t)))))))
          (if _ctx11003_
              (let ((_id11015_
                     (##structure-ref
                      _ctx11003_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path11016_
                     (##structure-ref _ctx11003_ '7 gx#module-context::t '#f))
                    (_in11017_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx11003_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e11018_
                     (make-promise (lambda () (gx#eval-module _ctx11003_)))))
                (begin
                  (direct-struct-instance-init!
                   _self11002_
                   _id11015_
                   (make-hash-table-eq)
                   _super11012_
                   '#f
                   '#f
                   _path11016_
                   _in11017_
                   _e11018_)
                  (for-each
                   (lambda (_g1101911021_)
                     (gx#core-bind-weak-import!__opt-lambda10525
                      _g1101911021_
                      _self11002_))
                   _in11017_)))
              (direct-struct-instance-init!
               _self11002_
               '#f
               (make-hash-table-eq)
               _super11012_
               '#f
               '#f
               '#f
               '()
               '#f)))))
    (begin
      (define gx#prelude-context:::init!__0
        (lambda (_self11027_ _ctx11028_)
          (let ((_root11030_ '#f))
            (gx#prelude-context:::init!__opt-lambda11000
             _self11027_
             _ctx11028_
             _root11030_))))
      (define gx#prelude-context:::init!
        (lambda _g11073_
          (let ((_g11072_ (length _g11073_)))
            (cond ((fx= _g11072_ 2)
                   (apply gx#prelude-context:::init!__0 _g11073_))
                  ((fx= _g11072_ 3)
                   (apply gx#prelude-context:::init!__opt-lambda11000
                          _g11073_))
                  (else (error "No clause matching arguments" _g11073_))))))))
  (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
  (define gx#import-expander:::init!
    (lambda (_self10998_ _e10999_)
      (direct-struct-instance-init!
       _self10998_
       _e10999_
       (gx#current-expander-context)
       (fx- (gx#current-expander-phi) '1))))
  (bind-method! gx#import-expander::t ':init! gx#import-expander:::init! '#f)
  (define gx#export-expander:::init!
    (lambda (_self10995_ _e10996_)
      (direct-struct-instance-init!
       _self10995_
       _e10996_
       (gx#current-expander-context)
       (fx- (gx#current-expander-phi) '1))))
  (bind-method! gx#export-expander::t ':init! gx#export-expander:::init! '#f)
  (define gx#import-expander::apply-import-expander
    (lambda (_g1098710990_ _g1098810992_)
      (gx#core-apply-user-expander__opt-lambda4547
       _g1098710990_
       _g1098810992_
       'apply-import-expander)))
  (bind-method!
   gx#import-expander::t
   'apply-import-expander
   gx#import-expander::apply-import-expander
   '#f)
  (define gx#export-expander::apply-export-expander
    (lambda (_g1098010983_ _g1098110985_)
      (gx#core-apply-user-expander__opt-lambda4547
       _g1098010983_
       _g1098110985_
       'apply-export-expander)))
  (bind-method!
   gx#export-expander::t
   'apply-export-expander
   gx#export-expander::apply-export-expander
   '#f)
  (define gx#module-source-path
    (lambda (_ctx10974_)
      (let ((_path10976_
             (##structure-ref _ctx10974_ '7 gx#module-context::t '#f)))
        (let ((_path10978_
               (if (pair? _path10976_) (last _path10976_) _path10976_)))
          (let () (if (string? _path10978_) _path10978_ '#f))))))
  (begin
    (define gx#import-module__opt-lambda10948
      (lambda (_path10950_ _reload?10951_ _eval?10952_)
        (let ((_ctx10954_
               ((gx#current-expander-module-import)
                _path10950_
                _reload?10951_)))
          (begin
            (if (if _ctx10954_ _eval?10952_ '#f)
                (gx#eval-module _ctx10954_)
                '#!void)
            _ctx10954_))))
    (begin
      (define gx#import-module__0
        (lambda (_path10959_)
          (let ((_reload?10961_ '#f))
            (let ((_eval?10963_ '#f))
              (gx#import-module__opt-lambda10948
               _path10959_
               _reload?10961_
               _eval?10963_)))))
      (define gx#import-module__1
        (lambda (_path10965_ _reload?10966_)
          (let ((_eval?10968_ '#f))
            (gx#import-module__opt-lambda10948
             _path10965_
             _reload?10966_
             _eval?10968_))))
      (define gx#import-module
        (lambda _g11075_
          (let ((_g11074_ (length _g11075_)))
            (cond ((fx= _g11074_ 1) (apply gx#import-module__0 _g11075_))
                  ((fx= _g11074_ 2) (apply gx#import-module__1 _g11075_))
                  ((fx= _g11074_ 3)
                   (apply gx#import-module__opt-lambda10948 _g11075_))
                  (else (error "No clause matching arguments" _g11075_))))))))
  (define gx#eval-module
    (lambda (_mod10947_) ((gx#current-expander-module-eval) _mod10947_)))
  (define gx#core-eval-module
    (lambda (_obj10932_)
      (let ((_force-e10934_
             (lambda (_getf10943_ _e10944_)
               (call-with-parameters
                (lambda () (force (_getf10943_ _e10944_)))
                gx#current-expander-context
                _e10944_
                gx#current-expander-phi
                '0))))
        ((letrec ((_recur10936_
                   (lambda (_e10938_)
                     (if (##structure-instance-of?
                          _e10938_
                          'gx#module-context::t)
                         (begin
                           (let ((_$e10940_
                                  (gx#core-context-prelude__opt-lambda10913
                                   _e10938_)))
                             (if _$e10940_ (_recur10936_ _$e10940_) '#!void))
                           (_force-e10934_ gx#module-context-e _e10938_))
                         (if (##structure-instance-of?
                              _e10938_
                              'gx#prelude-context::t)
                             (_force-e10934_ gx#prelude-context-e _e10938_)
                             (if (gx#stx-string? _e10938_)
                                 (_recur10936_
                                  (gx#import-module__0
                                   (gx#core-resolve-module-path__0 _e10938_)))
                                 (if (gx#core-library-module-path? _e10938_)
                                     (_recur10936_
                                      (gx#import-module__0
                                       (gx#core-resolve-library-module-path
                                        _e10938_)))
                                     (error '"Cannot eval module"
                                            _obj10932_))))))))
           _recur10936_)
         _obj10932_))))
  (begin
    (define gx#core-context-prelude__opt-lambda10913
      (lambda (_ctx10915_)
        ((letrec ((_lp10917_
                   (lambda (_e10919_)
                     (if (let ((_$e10921_
                                (##structure-instance-of?
                                 _e10919_
                                 'gx#module-context::t)))
                           (if _$e10921_
                               _$e10921_
                               (##structure-instance-of?
                                _e10919_
                                'gx#local-context::t)))
                         (_lp10917_
                          (##structure-ref _e10919_ '3 gx#phi-context::t '#f))
                         (if (##structure-instance-of?
                              _e10919_
                              'gx#prelude-context::t)
                             _e10919_
                             '#f)))))
           _lp10917_)
         _ctx10915_)))
    (begin
      (define gx#core-context-prelude__0
        (lambda ()
          (let ((_ctx10928_ (gx#current-expander-context)))
            (gx#core-context-prelude__opt-lambda10913 _ctx10928_))))
      (define gx#core-context-prelude
        (lambda _g11077_
          (let ((_g11076_ (length _g11077_)))
            (cond ((fx= _g11076_ 0)
                   (apply gx#core-context-prelude__0 _g11077_))
                  ((fx= _g11076_ 1)
                   (apply gx#core-context-prelude__opt-lambda10913 _g11077_))
                  (else (error "No clause matching arguments" _g11077_))))))))
  (define gx#core-module->prelude-context
    (lambda (_ctx10905_)
      (let ((_ht10907_ (gx#current-expander-module-registry)))
        (let ((_$e10909_ (table-ref _ht10907_ _ctx10905_ '#f)))
          (if _$e10909_
              (values _$e10909_)
              (let ((_pre10912_
                     (let ((__obj11068 (make-object gx#prelude-context::t '8)))
                       (begin
                         (gx#prelude-context:::init!__0 __obj11068 _ctx10905_)
                         __obj11068))))
                (begin
                  (table-set! _ht10907_ _ctx10905_ _pre10912_)
                  _pre10912_)))))))
  (begin
    (define gx#core-import-module__opt-lambda10857
      (lambda (_rpath10859_ _reload?10860_)
        (let ((_import-source10862_
               (lambda (_path10874_)
                 (begin
                   (if (member _path10874_ (gx#current-expander-path))
                       (error '"Cyclic expansion" _path10874_)
                       '#!void)
                   (call-with-parameters
                    (lambda ()
                      (let ((_g11078_ (gx#core-read-module _path10874_)))
                        (begin
                          (let ((_g11079_ (values-count _g11078_)))
                            (if (not (fx= _g11079_ 4))
                                (error "Context expects 4 values" _g11079_)))
                          (let ((_pre10877_ (values-ref _g11078_ 0))
                                (_id10878_ (values-ref _g11078_ 1))
                                (_ns10879_ (values-ref _g11078_ 2))
                                (_body10880_ (values-ref _g11078_ 3)))
                            (let ((_prelude10885_
                                   (if (##structure-instance-of?
                                        _pre10877_
                                        'gx#prelude-context::t)
                                       _pre10877_
                                       (if (##structure-instance-of?
                                            _pre10877_
                                            'gx#module-context::t)
                                           (gx#core-module->prelude-context
                                            _pre10877_)
                                           (if (string? _pre10877_)
                                               (gx#core-module->prelude-context
                                                (gx#core-import-module__0
                                                 _pre10877_))
                                               (if (not _pre10877_)
                                                   (let ((_$e10882_
                                                          (gx#current-expander-module-prelude)))
                                                     (if _$e10882_
                                                         _$e10882_
                                                         (let ((__obj11069
                                                                (make-object
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#prelude-context::t
                         '8)))
                   (begin
                     (gx#prelude-context:::init!__0 __obj11069 '#f)
                     __obj11069))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (error '"Cannot import module; unknown prelude"
                                                          _rpath10859_
                                                          _pre10877_)))))))
                              (let ((_ctx10887_
                                     (let ((__obj11070
                                            (make-object
                                             gx#module-context::t
                                             '11)))
                                       (begin
                                         (gx#module-context:::init!
                                          __obj11070
                                          _id10878_
                                          _prelude10885_
                                          _ns10879_
                                          _path10874_)
                                         __obj11070))))
                                (let ((_body10889_
                                       (gx#core-expand-module-begin
                                        _body10880_
                                        _ctx10887_)))
                                  (let ((_body10891_
                                         (gx#core-quote-syntax__opt-lambda3907
                                          (gx#core-cons '%#begin _body10889_)
                                          _path10874_
                                          _ctx10887_
                                          '())))
                                    (let ()
                                      (begin
                                        (##structure-set!
                                         _ctx10887_
                                         (make-promise
                                          (lambda ()
                                            (gx#eval-syntax* _body10891_)))
                                         '10
                                         gx#module-context::t
                                         '#f)
                                        (##structure-set!
                                         _ctx10887_
                                         _body10891_
                                         '11
                                         gx#module-context::t
                                         '#f)
                                        (table-set!
                                         (gx#current-expander-module-registry)
                                         _path10874_
                                         _ctx10887_)
                                        (table-set!
                                         (gx#current-expander-module-registry)
                                         _id10878_
                                         _ctx10887_)
                                        _ctx10887_))))))))))
                    gx#current-expander-context
                    (gx#core-context-root__0)
                    gx#current-expander-marks
                    '()
                    gx#current-expander-phi
                    '0
                    gx#current-expander-path
                    (cons _path10874_ (gx#current-expander-path))
                    gx#current-import-expander-phi
                    '#f
                    gx#current-export-expander-phi
                    '#f)))))
          (let ((_$e10864_
                 (if (not _reload?10860_)
                     (table-ref
                      (gx#current-expander-module-registry)
                      _rpath10859_
                      '#f)
                     '#f)))
            (if _$e10864_
                (values _$e10864_)
                (if (gx#core-library-module-path? _rpath10859_)
                    (let ((_ctx10867_
                           (gx#core-import-module__opt-lambda10857
                            (gx#core-resolve-library-module-path _rpath10859_)
                            _reload?10860_)))
                      (begin
                        (table-set!
                         (gx#current-expander-module-registry)
                         _rpath10859_
                         _ctx10867_)
                        _ctx10867_))
                    (let ((_npath10869_ (path-normalize _rpath10859_)))
                      (let ((_$e10871_
                             (if (not _reload?10860_)
                                 (table-ref
                                  (gx#current-expander-module-registry)
                                  _npath10869_
                                  '#f)
                                 '#f)))
                        (if _$e10871_
                            (values _$e10871_)
                            (_import-source10862_ _npath10869_))))))))))
    (begin
      (define gx#core-import-module__0
        (lambda (_rpath10898_)
          (let ((_reload?10900_ '#f))
            (gx#core-import-module__opt-lambda10857
             _rpath10898_
             _reload?10900_))))
      (define gx#core-import-module
        (lambda _g11081_
          (let ((_g11080_ (length _g11081_)))
            (cond ((fx= _g11080_ 1) (apply gx#core-import-module__0 _g11081_))
                  ((fx= _g11080_ 2)
                   (apply gx#core-import-module__opt-lambda10857 _g11081_))
                  (else (error "No clause matching arguments" _g11081_))))))))
  (define gx#core-read-module
    (lambda (_path10722_)
      ((letrec ((_lp10724_
                 (lambda (_body10726_ _pre10727_ _ns10728_ _pkg10729_)
                   (let ((_e1073010754_ _body10726_))
                     (let ((_E1074610772_
                            (lambda ()
                              (let ((_prelude10758_
                                     (if (gx#core-bound-module-prelude?
                                          _pre10727_)
                                         (gx#syntax-local-e__0 _pre10727_)
                                         (if (gx#core-library-module-path?
                                              _pre10727_)
                                             (gx#core-resolve-library-module-path
                                              _pre10727_)
                                             (if (gx#stx-string? _pre10727_)
                                                 (gx#core-resolve-module-path__opt-lambda10695
                                                  _pre10727_
                                                  _path10722_)
                                                 (gx#stx-e _pre10727_))))))
                                (let ((_path-id10760_
                                       (gx#core-module-path->namespace
                                        _path10722_)))
                                  (let ((_pkg-id10762_
                                         (if _pkg10729_
                                             (string-append
                                              _pkg10729_
                                              '"/"
                                              _path-id10760_)
                                             _path-id10760_)))
                                    (let ((_module-id10764_
                                           (string->symbol _pkg-id10762_)))
                                      (let ((_module-ns10769_
                                             (let ((_$e10766_ _ns10728_))
                                               (if _$e10766_
                                                   _$e10766_
                                                   _pkg-id10762_))))
                                        (let ()
                                          (values _prelude10758_
                                                  _module-id10764_
                                                  _module-ns10769_
                                                  _body10726_))))))))))
                       (let ((_E1073910801_
                              (lambda ()
                                (if (gx#stx-pair? _e1073010754_)
                                    (let ((_e1074710776_
                                           (gx#syntax-e _e1073010754_)))
                                      (let ((_hd1074810779_
                                             (##car _e1074710776_))
                                            (_tl1074910781_
                                             (##cdr _e1074710776_)))
                                        (if (eq? (gx#stx-e _hd1074810779_)
                                                 'package:)
                                            (if (gx#stx-pair? _tl1074910781_)
                                                (let ((_e1075010784_
                                                       (gx#syntax-e
                                                        _tl1074910781_)))
                                                  (let ((_hd1075110787_
                                                         (##car _e1075010784_))
                                                        (_tl1075210789_
                                                         (##cdr _e1075010784_)))
                                                    (let ((_pkg10792_
                                                           _hd1075110787_))
                                                      (let ((_rest10794_
                                                             _tl1075210789_))
                                                        (if '#t
                                                            (let ((_pkg10799_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if (gx#identifier? _pkg10792_)
                               (symbol->string (gx#stx-e _pkg10792_))
                               (if (let ((_$e10796_
                                          (gx#stx-string? _pkg10792_)))
                                     (if _$e10796_
                                         _$e10796_
                                         (gx#stx-false? _pkg10792_)))
                                   (gx#stx-e _pkg10792_)
                                   (gx#raise-syntax-error
                                    'import
                                    '"Bad syntax; Illegal package name"
                                    _pkg10792_)))))
                      (_lp10724_ _rest10794_ _pre10727_ _ns10728_ _pkg10799_))
                    (_E1074610772_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1074610772_))
                                            (_E1074610772_))))
                                    (_E1074610772_)))))
                         (let ((_E1073210830_
                                (lambda ()
                                  (if (gx#stx-pair? _e1073010754_)
                                      (let ((_e1074010805_
                                             (gx#syntax-e _e1073010754_)))
                                        (let ((_hd1074110808_
                                               (##car _e1074010805_))
                                              (_tl1074210810_
                                               (##cdr _e1074010805_)))
                                          (if (eq? (gx#stx-e _hd1074110808_)
                                                   'namespace:)
                                              (if (gx#stx-pair? _tl1074210810_)
                                                  (let ((_e1074310813_
                                                         (gx#syntax-e
                                                          _tl1074210810_)))
                                                    (let ((_hd1074410816_
                                                           (##car _e1074310813_))
                                                          (_tl1074510818_
                                                           (##cdr _e1074310813_)))
                                                      (let ((_ns10821_
                                                             _hd1074410816_))
                                                        (let ((_rest10823_
                                                               _tl1074510818_))
                                                          (if '#t
                                                              (let ((_ns10828_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (gx#identifier? _ns10821_)
                                 (symbol->string (gx#stx-e _ns10821_))
                                 (if (let ((_$e10825_
                                            (gx#stx-string? _ns10821_)))
                                       (if _$e10825_
                                           _$e10825_
                                           (gx#stx-false? _ns10821_)))
                                     (gx#stx-e _ns10821_)
                                     (gx#raise-syntax-error
                                      'import
                                      '"Bad syntax; illegal namespace"
                                      _ns10821_)))))
                        (_lp10724_
                         _rest10823_
                         _pre10727_
                         _ns10828_
                         _pkg10729_))
                      (_E1073910801_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1073910801_))
                                              (_E1073910801_))))
                                      (_E1073910801_)))))
                           (let ((_E1073110854_
                                  (lambda ()
                                    (if (gx#stx-pair? _e1073010754_)
                                        (let ((_e1073310834_
                                               (gx#syntax-e _e1073010754_)))
                                          (let ((_hd1073410837_
                                                 (##car _e1073310834_))
                                                (_tl1073510839_
                                                 (##cdr _e1073310834_)))
                                            (if (eq? (gx#stx-e _hd1073410837_)
                                                     'prelude:)
                                                (if (gx#stx-pair?
                                                     _tl1073510839_)
                                                    (let ((_e1073610842_
                                                           (gx#syntax-e
                                                            _tl1073510839_)))
                                                      (let ((_hd1073710845_
                                                             (##car _e1073610842_))
                                                            (_tl1073810847_
                                                             (##cdr _e1073610842_)))
                                                        (let ((_prelude10850_
                                                               _hd1073710845_))
                                                          (let ((_rest10852_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1073810847_))
                    (if '#t
                        (_lp10724_
                         _rest10852_
                         _prelude10850_
                         _ns10728_
                         _pkg10729_)
                        (_E1073210830_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1073210830_))
                                                (_E1073210830_))))
                                        (_E1073210830_)))))
                             (let () (_E1073110854_))))))))))
         _lp10724_)
       (read-syntax-from-file _path10722_)
       '#f
       '#f
       '#f)))
  (define gx#core-module-path->namespace
    (lambda (_path10720_)
      (path-strip-extension (path-strip-directory _path10720_))))
  (define gx#core-module-path->id
    (lambda (_path10718_)
      (string->symbol (gx#core-module-path->namespace _path10718_))))
  (begin
    (define gx#core-resolve-module-path__opt-lambda10695
      (lambda (_stx-path10697_ _rel10698_)
        (let ((_path10700_ (gx#stx-e _stx-path10697_)))
          (let ((_path10702_
                 (if (equal? (path-extension _path10700_) '".ss")
                     _path10700_
                     (string-append _path10700_ '".ss"))))
            (let ()
              (gx#core-resolve-path__opt-lambda3871
               _path10702_
               (let ((_$e10705_ (gx#stx-source _stx-path10697_)))
                 (if _$e10705_ _$e10705_ _rel10698_))))))))
    (begin
      (define gx#core-resolve-module-path__0
        (lambda (_stx-path10711_)
          (let ((_rel10713_ '#f))
            (gx#core-resolve-module-path__opt-lambda10695
             _stx-path10711_
             _rel10713_))))
      (define gx#core-resolve-module-path
        (lambda _g11083_
          (let ((_g11082_ (length _g11083_)))
            (cond ((fx= _g11082_ 1)
                   (apply gx#core-resolve-module-path__0 _g11083_))
                  ((fx= _g11082_ 2)
                   (apply gx#core-resolve-module-path__opt-lambda10695
                          _g11083_))
                  (else (error "No clause matching arguments" _g11083_))))))))
  (define gx#core-resolve-library-module-path
    (lambda (_libpath10643_)
      (let ((_spath10645_ (symbol->string (gx#stx-e _libpath10643_))))
        (let ((_spath10647_
               (substring _spath10645_ '1 (string-length _spath10645_))))
          (let ()
            ((letrec ((_lp10650_
                       (lambda (_rest10652_)
                         (let ((_rest1065310662_ _rest10652_))
                           (let ((_E1065610666_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _rest1065310662_))))
                             (let ((_try-match1065510674_
                                    (lambda ()
                                      (let ((_K1065710671_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Cannot find library module"
                                                _libpath10643_))))
                                        (if (##null? _rest1065310662_)
                                            (_K1065710671_)
                                            (_E1065610666_))))))
                               (let ((_K1065810684_
                                      (lambda (_rest10677_ _dir10678_)
                                        (let ((_compiled-path10680_
                                               (path-expand
                                                (string-append
                                                 _spath10647_
                                                 '".ssi")
                                                _dir10678_)))
                                          (if (file-exists?
                                               _compiled-path10680_)
                                              (path-normalize
                                               _compiled-path10680_)
                                              (let ((_src-path10682_
                                                     (path-expand
                                                      (string-append
                                                       _spath10647_
                                                       '".ss")
                                                      _dir10678_)))
                                                (if (file-exists?
                                                     _src-path10682_)
                                                    (path-normalize
                                                     _src-path10682_)
                                                    (_lp10650_
                                                     _rest10677_))))))))
                                 (if (##pair? _rest1065310662_)
                                     (let ((_hd1065910687_
                                            (##car _rest1065310662_))
                                           (_tl1066010689_
                                            (##cdr _rest1065310662_)))
                                       (let ((_dir10692_ _hd1065910687_))
                                         (let ((_rest10694_ _tl1066010689_))
                                           (_K1065810684_
                                            _rest10694_
                                            _dir10692_))))
                                     (_try-match1065510674_)))))))))
               _lp10650_)
             (gx#current-expander-module-library-path)))))))
  (define gx#core-library-module-path?
    (lambda (_stx10641_) (gx#core-special-module-path? _stx10641_ '#\:)))
  (define gx#core-special-module-path?
    (lambda (_stx10636_ _char10637_)
      (if (gx#identifier? _stx10636_)
          (if (interned-symbol? (gx#stx-e _stx10636_))
              (let ((_str10639_ (symbol->string (gx#stx-e _stx10636_))))
                (if (fx> (string-length _str10639_) '1)
                    (eq? (string-ref _str10639_ '0) _char10637_)
                    '#f))
              '#f)
          '#f)))
  (define gx#core-bound-prelude?
    (lambda (_stx10630_)
      (gx#core-bound-identifier?__opt-lambda3961
       _stx10630_
       (lambda (_g1063110633_)
         (gx#expander-binding?__opt-lambda3992
          _g1063110633_
          gx#prelude-context?)))))
  (define gx#core-bound-module?
    (lambda (_stx10624_)
      (gx#core-bound-identifier?__opt-lambda3961
       _stx10624_
       (lambda (_g1062510627_)
         (gx#expander-binding?__opt-lambda3992
          _g1062510627_
          gx#module-context?)))))
  (define gx#core-bound-module-prelude?
    (lambda (_stx10611_)
      (let ((_module-prelude?10613_
             (lambda (_e10619_)
               (let ((_$e10621_
                      (##structure-instance-of?
                       _e10619_
                       'gx#module-context::t)))
                 (if _$e10621_
                     _$e10621_
                     (##structure-instance-of?
                      _e10619_
                      'gx#prelude-context::t))))))
        (gx#core-bound-identifier?__opt-lambda3961
         _stx10611_
         (lambda (_g1061410616_)
           (gx#expander-binding?__opt-lambda3992
            _g1061410616_
            _module-prelude?10613_))))))
  (begin
    (define gx#core-bind-import!__opt-lambda10539
      (lambda (_in10541_ _ctx10542_ _force-weak?10543_)
        (let ((_in1054410553_ _in10541_))
          (let ((_E1054610557_
                 (lambda () (error '"No clause matching" _in1054410553_))))
            (let ((_K1054710570_
                   (lambda (_weak?10560_ _phi10561_ _key10562_ _source10563_)
                     (gx#core-bind!__opt-lambda4231
                      _key10562_
                      (let ((_e10565_
                             (gx#core-resolve-module-export _source10563_)))
                        (##structure
                         gx#import-binding::t
                         (##structure-ref _e10565_ '1 gx#binding::t '#f)
                         _key10562_
                         _phi10561_
                         _e10565_
                         (##structure-ref
                          _source10563_
                          '1
                          gx#module-export::t
                          '#f)
                         (let ((_$e10567_ _force-weak?10543_))
                           (if _$e10567_ _$e10567_ _weak?10560_))))
                      gx#core-context-rebind?
                      _phi10561_
                      _ctx10542_))))
              (if (direct-struct-instance? gx#module-import::t _in1054410553_)
                  (let ((_e1054810573_ (##vector-ref _in1054410553_ '1)))
                    (let ((_source10576_ _e1054810573_))
                      (let ((_e1054910578_ (##vector-ref _in1054410553_ '2)))
                        (let ((_key10581_ _e1054910578_))
                          (let ((_e1055010583_
                                 (##vector-ref _in1054410553_ '3)))
                            (let ((_phi10586_ _e1055010583_))
                              (let ((_e1055110588_
                                     (##vector-ref _in1054410553_ '4)))
                                (let ((_weak?10591_ _e1055110588_))
                                  (_K1054710570_
                                   _weak?10591_
                                   _phi10586_
                                   _key10581_
                                   _source10576_)))))))))
                  (_E1054610557_)))))))
    (begin
      (define gx#core-bind-import!__0
        (lambda (_in10596_)
          (let ((_ctx10598_ (gx#current-expander-context)))
            (let ((_force-weak?10600_ '#f))
              (gx#core-bind-import!__opt-lambda10539
               _in10596_
               _ctx10598_
               _force-weak?10600_)))))
      (define gx#core-bind-import!__1
        (lambda (_in10602_ _ctx10603_)
          (let ((_force-weak?10605_ '#f))
            (gx#core-bind-import!__opt-lambda10539
             _in10602_
             _ctx10603_
             _force-weak?10605_))))
      (define gx#core-bind-import!
        (lambda _g11085_
          (let ((_g11084_ (length _g11085_)))
            (cond ((fx= _g11084_ 1) (apply gx#core-bind-import!__0 _g11085_))
                  ((fx= _g11084_ 2) (apply gx#core-bind-import!__1 _g11085_))
                  ((fx= _g11084_ 3)
                   (apply gx#core-bind-import!__opt-lambda10539 _g11085_))
                  (else (error "No clause matching arguments" _g11085_))))))))
  (begin
    (define gx#core-bind-weak-import!__opt-lambda10525
      (lambda (_in10527_ _ctx10528_)
        (gx#core-bind-import!__opt-lambda10539 _in10527_ _ctx10528_ '#t)))
    (begin
      (define gx#core-bind-weak-import!__0
        (lambda (_in10533_)
          (let ((_ctx10535_ (gx#current-expander-context)))
            (gx#core-bind-weak-import!__opt-lambda10525
             _in10533_
             _ctx10535_))))
      (define gx#core-bind-weak-import!
        (lambda _g11087_
          (let ((_g11086_ (length _g11087_)))
            (cond ((fx= _g11086_ 1)
                   (apply gx#core-bind-weak-import!__0 _g11087_))
                  ((fx= _g11086_ 2)
                   (apply gx#core-bind-weak-import!__opt-lambda10525 _g11087_))
                  (else (error "No clause matching arguments" _g11087_))))))))
  (define gx#core-resolve-module-export
    (lambda (_out10418_)
      (let ((_subst10420_
             (lambda (_key10466_)
               (let ((_key1046710475_ _key10466_))
                 (let ((_E1047010479_
                        (lambda ()
                          (error '"No clause matching" _key1046710475_))))
                   (let ((_else1046910483_ (lambda () _key10466_)))
                     (let ((_K1047110514_
                            (lambda (_mark10486_ _id10487_)
                              (let ((_mark1048810494_ _mark10486_))
                                (let ((_E1049010498_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _mark1048810494_))))
                                  (let ((_K1049110506_
                                         (lambda (_subst10501_)
                                           (let ((_$e10503_
                                                  (if _subst10501_
                                                      (table-ref
                                                       _subst10501_
                                                       _id10487_
                                                       '#f)
                                                      '#f)))
                                             (if _$e10503_
                                                 _$e10503_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal key; missing substitution"
                                                  _key10466_))))))
                                    (if (struct-instance?
                                         gx#expander-mark::t
                                         _mark1048810494_)
                                        (let ((_e1049210509_
                                               (##vector-ref
                                                _mark1048810494_
                                                '1)))
                                          (let ((_subst10512_ _e1049210509_))
                                            (_K1049110506_ _subst10512_)))
                                        (_E1049010498_))))))))
                       (if (##pair? _key1046710475_)
                           (let ((_hd1047210517_ (##car _key1046710475_))
                                 (_tl1047310519_ (##cdr _key1046710475_)))
                             (let ((_id10522_ _hd1047210517_))
                               (let ((_mark10524_ _tl1047310519_))
                                 (_K1047110514_ _mark10524_ _id10522_))))
                           (_else1046910483_)))))))))
        (let ((_out1042110431_ _out10418_))
          (let ((_E1042310435_
                 (lambda () (error '"No clause matching" _out1042110431_))))
            (let ((_K1042410442_
                   (lambda (_phi10438_ _key10439_ _ctx10440_)
                     (gx#core-context-resolve
                      (gx#core-context-shift _ctx10440_ _phi10438_)
                      (_subst10420_ _key10439_)))))
              (if (direct-struct-instance? gx#module-export::t _out1042110431_)
                  (let ((_e1042510445_ (##vector-ref _out1042110431_ '1)))
                    (let ((_ctx10448_ _e1042510445_))
                      (let ((_e1042610450_ (##vector-ref _out1042110431_ '2)))
                        (let ((_key10453_ _e1042610450_))
                          (let ((_e1042710455_
                                 (##vector-ref _out1042110431_ '3)))
                            (let ((_phi10458_ _e1042710455_))
                              (let ((_e1042810460_
                                     (##vector-ref _out1042110431_ '4)))
                                (let ((_e1042910463_
                                       (##vector-ref _out1042110431_ '5)))
                                  (_K1042410442_
                                   _phi10458_
                                   _key10453_
                                   _ctx10448_)))))))))
                  (_E1042310435_))))))))
  (begin
    (define gx#core-module-export->import__opt-lambda10341
      (lambda (_out10343_ _rename10344_ _dphi10345_)
        (let ((_out1034610356_ _out10343_))
          (let ((_E1034810360_
                 (lambda () (error '"No clause matching" _out1034610356_))))
            (let ((_K1034910372_
                   (lambda (_weak?10363_
                            _name10364_
                            _phi10365_
                            _key10366_
                            _ctx10367_)
                     (##structure
                      gx#module-import::t
                      _out10343_
                      (let ((_$e10369_ _rename10344_))
                        (if _$e10369_ _$e10369_ _name10364_))
                      (fx+ _phi10365_ _dphi10345_)
                      _weak?10363_))))
              (if (direct-struct-instance? gx#module-export::t _out1034610356_)
                  (let ((_e1035010375_ (##vector-ref _out1034610356_ '1)))
                    (let ((_ctx10378_ _e1035010375_))
                      (let ((_e1035110380_ (##vector-ref _out1034610356_ '2)))
                        (let ((_key10383_ _e1035110380_))
                          (let ((_e1035210385_
                                 (##vector-ref _out1034610356_ '3)))
                            (let ((_phi10388_ _e1035210385_))
                              (let ((_e1035310390_
                                     (##vector-ref _out1034610356_ '4)))
                                (let ((_name10393_ _e1035310390_))
                                  (let ((_e1035410395_
                                         (##vector-ref _out1034610356_ '5)))
                                    (let ((_weak?10398_ _e1035410395_))
                                      (_K1034910372_
                                       _weak?10398_
                                       _name10393_
                                       _phi10388_
                                       _key10383_
                                       _ctx10378_)))))))))))
                  (_E1034810360_)))))))
    (begin
      (define gx#core-module-export->import__0
        (lambda (_out10403_)
          (let ((_rename10405_ '#f))
            (let ((_dphi10407_ '0))
              (gx#core-module-export->import__opt-lambda10341
               _out10403_
               _rename10405_
               _dphi10407_)))))
      (define gx#core-module-export->import__1
        (lambda (_out10409_ _rename10410_)
          (let ((_dphi10412_ '0))
            (gx#core-module-export->import__opt-lambda10341
             _out10409_
             _rename10410_
             _dphi10412_))))
      (define gx#core-module-export->import
        (lambda _g11089_
          (let ((_g11088_ (length _g11089_)))
            (cond ((fx= _g11088_ 1)
                   (apply gx#core-module-export->import__0 _g11089_))
                  ((fx= _g11088_ 2)
                   (apply gx#core-module-export->import__1 _g11089_))
                  ((fx= _g11088_ 3)
                   (apply gx#core-module-export->import__opt-lambda10341
                          _g11089_))
                  (else (error "No clause matching arguments" _g11089_))))))))
  (define gx#core-expand-module%
    (lambda (_stx10271_)
      (let ((_make-context10273_
             (lambda (_id10324_)
               (let ((_super10326_ (gx#current-expander-context)))
                 (let ((_bind-id10328_ (gx#stx-e _id10324_)))
                   (let ((_mod-id10330_
                          (if (##structure-instance-of?
                               _super10326_
                               'gx#module-context::t)
                              (make-symbol
                               (##structure-ref
                                _super10326_
                                '1
                                gx#expander-context::t
                                '#f)
                               '"::"
                               _bind-id10328_)
                              _bind-id10328_)))
                     (let ((_ns10332_ (symbol->string _mod-id10330_)))
                       (let ((_path10339_
                              (if (##structure-instance-of?
                                   _super10326_
                                   'gx#module-context::t)
                                  (let ((_path10334_
                                         (##structure-ref
                                          _super10326_
                                          '7
                                          gx#module-context::t
                                          '#f)))
                                    (if (let ((_$e10336_ (pair? _path10334_)))
                                          (if _$e10336_
                                              _$e10336_
                                              (null? _path10334_)))
                                        (cons _bind-id10328_ _path10334_)
                                        (if (not _path10334_)
                                            _bind-id10328_
                                            (cons _bind-id10328_
                                                  (cons _path10334_ '())))))
                                  _bind-id10328_)))
                         (let ()
                           (let ((__obj11071
                                  (make-object gx#module-context::t '11)))
                             (begin
                               (gx#module-context:::init!
                                __obj11071
                                _mod-id10330_
                                _super10326_
                                _ns10332_
                                _path10339_)
                               __obj11071)))))))))))
        (let ((_e1027410284_ _stx10271_))
          (let ((_E1027610288_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e1027410284_))))
            (let ((_E1027510320_
                   (lambda ()
                     (if (gx#stx-pair? _e1027410284_)
                         (let ((_e1027710292_ (gx#syntax-e _e1027410284_)))
                           (let ((_hd1027810295_ (##car _e1027710292_))
                                 (_tl1027910297_ (##cdr _e1027710292_)))
                             (if (gx#stx-pair? _tl1027910297_)
                                 (let ((_e1028010300_
                                        (gx#syntax-e _tl1027910297_)))
                                   (let ((_hd1028110303_ (##car _e1028010300_))
                                         (_tl1028210305_
                                          (##cdr _e1028010300_)))
                                     (let ((_id10308_ _hd1028110303_))
                                       (let ((_body10310_ _tl1028210305_))
                                         (if (if (gx#identifier? _id10308_)
                                                 (gx#stx-list? _body10310_)
                                                 '#f)
                                             (let ((_ctx10312_
                                                    (_make-context10273_
                                                     _id10308_)))
                                               (let ((_body10314_
                                                      (gx#core-expand-module-begin
                                                       _body10310_
                                                       _ctx10312_)))
                                                 (let ((_body10316_
                                                        (gx#core-quote-syntax__1
                                                         (gx#core-cons
                                                          '%#begin
                                                          _body10314_)
                                                         (gx#stx-source
                                                          _stx10271_))))
                                                   (let ()
                                                     (begin
                                                       (##structure-set!
                                                        _ctx10312_
                                                        (make-promise
                                                         (lambda ()
                                                           (gx#eval-syntax*
                                                            _body10316_)))
                                                        '10
                                                        gx#module-context::t
                                                        '#f)
                                                       (##structure-set!
                                                        _ctx10312_
                                                        _body10316_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)
                                                       (gx#core-bind-syntax!__0
                                                        _id10308_
                                                        _ctx10312_)
                                                       (gx#core-quote-syntax__1
                                                        (gx#core-list
                                                         '%#module
                                                         (gx#core-quote-syntax__0
                                                          _id10308_)
                                                         _body10316_)
                                                        (gx#stx-source
                                                         _stx10271_)))))))
                                             (_E1027610288_))))))
                                 (_E1027610288_))))
                         (_E1027610288_)))))
              (let () (_E1027510320_))))))))
  (define gx#core-expand-module-begin
    (lambda (_body10267_ _ctx10268_)
      (call-with-parameters
       (lambda ()
         (begin
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (gx#core-expand-module-body _body10267_)))
       gx#current-expander-context
       _ctx10268_
       gx#current-expander-phi
       '0)))
  (define gx#core-expand-module-body
    (lambda (_body10063_)
      (let ((_expand-special10065_
             (lambda (_hd10194_ _K10195_ _rest10196_ _r10197_)
               (let ((_e1019810215_ _hd10194_))
                 (let ((_E1021010219_
                        (lambda ()
                          (_K10195_
                           _rest10196_
                           (cons (gx#core-expand-top _hd10194_) _r10197_)))))
                   (let ((_E1020010231_
                          (lambda ()
                            (if (gx#stx-pair? _e1019810215_)
                                (let ((_e1021110223_
                                       (gx#syntax-e _e1019810215_)))
                                  (let ((_hd1021210226_ (##car _e1021110223_))
                                        (_tl1021310228_ (##cdr _e1021110223_)))
                                    (if (if (gx#identifier? _hd1021210226_)
                                            (gx#core-identifier=?
                                             _hd1021210226_
                                             '%#export)
                                            '#f)
                                        (if '#t
                                            (_K10195_
                                             _rest10196_
                                             (cons _hd10194_ _r10197_))
                                            (_E1021010219_))
                                        (_E1021010219_))))
                                (_E1021010219_)))))
                     (let ((_E1019910263_
                            (lambda ()
                              (if (gx#stx-pair? _e1019810215_)
                                  (let ((_e1020110235_
                                         (gx#syntax-e _e1019810215_)))
                                    (let ((_hd1020210238_
                                           (##car _e1020110235_))
                                          (_tl1020310240_
                                           (##cdr _e1020110235_)))
                                      (if (if (gx#identifier? _hd1020210238_)
                                              (gx#core-identifier=?
                                               _hd1020210238_
                                               '%#define-values)
                                              '#f)
                                          (if (gx#stx-pair? _tl1020310240_)
                                              (let ((_e1020410243_
                                                     (gx#syntax-e
                                                      _tl1020310240_)))
                                                (let ((_hd1020510246_
                                                       (##car _e1020410243_))
                                                      (_tl1020610248_
                                                       (##cdr _e1020410243_)))
                                                  (let ((_hd-bind10251_
                                                         _hd1020510246_))
                                                    (if (gx#stx-pair?
                                                         _tl1020610248_)
                                                        (let ((_e1020710253_
                                                               (gx#syntax-e
                                                                _tl1020610248_)))
                                                          (let ((_hd1020810256_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1020710253_))
                        (_tl1020910258_ (##cdr _e1020710253_)))
                    (let ((_expr10261_ _hd1020810256_))
                      (if (gx#stx-null? _tl1020910258_)
                          (if (gx#core-bind-values? _hd-bind10251_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind10251_)
                                (_K10195_
                                 _rest10196_
                                 (cons _hd10194_ _r10197_)))
                              (_E1020010231_))
                          (_E1020010231_)))))
                (_E1020010231_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1020010231_))
                                          (_E1020010231_))))
                                  (_E1020010231_)))))
                       (let () (_E1019910263_)))))))))
        (let ((_expand-body10066_
               (lambda (_rbody10068_)
                 ((letrec ((_lp10070_
                            (lambda (_rest10072_ _body10073_)
                              (let ((_rest1007410082_ _rest10072_))
                                (let ((_E1007710086_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _rest1007410082_))))
                                  (let ((_else1007610090_
                                         (lambda () _body10073_)))
                                    (let ((_K1007810182_
                                           (lambda (_rest10093_ _hd10094_)
                                             (let ((_e1009510116_ _hd10094_))
                                               (let ((_E1011110120_
                                                      (lambda ()
                                                        (_lp10070_
                                                         _rest10093_
                                                         (cons (gx#core-expand-expression
                                                                _hd10094_)
                                                               _body10073_)))))
                                                 (let ((_E1010710134_
                                                        (lambda ()
                                                          (if (gx#stx-pair?
                                                               _e1009510116_)
                                                              (let ((_e1011210124_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _e1009510116_)))
                        (let ((_hd1011310127_ (##car _e1011210124_))
                              (_tl1011410129_ (##cdr _e1011210124_)))
                          (let ((_form10132_ _hd1011310127_))
                            (if (gx#core-bound-identifier?__opt-lambda3961
                                 _form10132_
                                 gx#special-form-binding?)
                                (_lp10070_
                                 _rest10093_
                                 (cons _hd10094_ _body10073_))
                                (_E1011110120_)))))
                      (_E1011110120_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_E1009710146_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e1009510116_)
                        (let ((_e1010810138_ (gx#syntax-e _e1009510116_)))
                          (let ((_hd1010910141_ (##car _e1010810138_))
                                (_tl1011010143_ (##cdr _e1010810138_)))
                            (if (if (gx#identifier? _hd1010910141_)
                                    (gx#core-identifier=?
                                     _hd1010910141_
                                     '%#export)
                                    '#f)
                                (if '#t
                                    (_lp10070_
                                     _rest10093_
                                     (cons (gx#core-expand-export%__0
                                            _hd10094_)
                                           _body10073_))
                                    (_E1010710134_))
                                (_E1010710134_))))
                        (_E1010710134_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_E1009610178_
                                                            (lambda ()
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e1009510116_)
                          (let ((_e1009810150_ (gx#syntax-e _e1009510116_)))
                            (let ((_hd1009910153_ (##car _e1009810150_))
                                  (_tl1010010155_ (##cdr _e1009810150_)))
                              (if (if (gx#identifier? _hd1009910153_)
                                      (gx#core-identifier=?
                                       _hd1009910153_
                                       '%#define-values)
                                      '#f)
                                  (if (gx#stx-pair? _tl1010010155_)
                                      (let ((_e1010110158_
                                             (gx#syntax-e _tl1010010155_)))
                                        (let ((_hd1010210161_
                                               (##car _e1010110158_))
                                              (_tl1010310163_
                                               (##cdr _e1010110158_)))
                                          (let ((_hd-bind10166_
                                                 _hd1010210161_))
                                            (if (gx#stx-pair? _tl1010310163_)
                                                (let ((_e1010410168_
                                                       (gx#syntax-e
                                                        _tl1010310163_)))
                                                  (let ((_hd1010510171_
                                                         (##car _e1010410168_))
                                                        (_tl1010610173_
                                                         (##cdr _e1010410168_)))
                                                    (let ((_expr10176_
                                                           _hd1010510171_))
                                                      (if (gx#stx-null?
                                                           _tl1010610173_)
                                                          (if '#t
                                                              (_lp10070_
                                                               _rest10093_
                                                               (cons (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#core-list
                               '%#define-values
                               (gx#core-quote-bind-values _hd-bind10166_)
                               (gx#core-expand-expression _expr10176_))
                              (gx#stx-source _hd10094_))
                             _body10073_))
                      (_E1009710146_))
                  (_E1009710146_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1009710146_)))))
                                      (_E1009710146_))
                                  (_E1009710146_))))
                          (_E1009710146_)))))
               (let () (_E1009610178_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (##pair? _rest1007410082_)
                                          (let ((_hd1007910185_
                                                 (##car _rest1007410082_))
                                                (_tl1008010187_
                                                 (##cdr _rest1007410082_)))
                                            (let ((_hd10190_ _hd1007910185_))
                                              (let ((_rest10192_
                                                     _tl1008010187_))
                                                (_K1007810182_
                                                 _rest10192_
                                                 _hd10190_))))
                                          (_else1007610090_)))))))))
                    _lp10070_)
                  _rbody10068_
                  '()))))
          (_expand-body10066_
           (gx#core-expand-block__opt-lambda5008
            (cons '%#begin-module _body10063_)
            _expand-special10065_
            '#f
            values))))))
  (define gx#core-expand-import/export
    (lambda (_stx9906_
             _expanded?9907_
             _method9908_
             _current-phi9909_
             _expand19910_)
      (letrec ((_K9912_ (lambda (_rest10030_ _r10031_)
                          (let ((_e1003210039_ _rest10030_))
                            (let ((_E1003410043_ (lambda () _r10031_)))
                              (let ((_E1003310059_
                                     (lambda ()
                                       (if (gx#stx-pair? _e1003210039_)
                                           (let ((_e1003510047_
                                                  (gx#syntax-e _e1003210039_)))
                                             (let ((_hd1003610050_
                                                    (##car _e1003510047_))
                                                   (_tl1003710052_
                                                    (##cdr _e1003510047_)))
                                               (let ((_hd10055_
                                                      _hd1003610050_))
                                                 (let ((_rest10057_
                                                        _tl1003710052_))
                                                   (if '#t
                                                       (_step9913_
                                                        _hd10055_
                                                        _rest10057_
                                                        _r10031_)
                                                       (_E1003410043_))))))
                                           (_E1003410043_)))))
                                (let () (_E1003310059_)))))))
               (_step9913_
                (lambda (_hd9944_ _rest9945_ _r9946_)
                  (let ((_e99479965_ _hd9944_))
                    (let ((_E99609969_
                           (lambda ()
                             (if (_expanded?9907_ (gx#stx-e _hd9944_))
                                 (_K9912_ _rest9945_
                                          (cons (gx#stx-e _hd9944_) _r9946_))
                                 (_expand19910_
                                  _hd9944_
                                  _K9912_
                                  _rest9945_
                                  _r9946_)))))
                      (let ((_E99569985_
                             (lambda ()
                               (if (gx#stx-pair? _e99479965_)
                                   (let ((_e99619973_
                                          (gx#syntax-e _e99479965_)))
                                     (let ((_hd99629976_ (##car _e99619973_))
                                           (_tl99639978_ (##cdr _e99619973_)))
                                       (let ((_macro9981_ _hd99629976_))
                                         (let ((_body9983_ _tl99639978_))
                                           (if (gx#core-bound-identifier?__opt-lambda3961
                                                _macro9981_
                                                gx#syntax-binding?)
                                               (_K9912_ (cons (gx#core-apply-expander__opt-lambda4726
                                                               (gx#syntax-local-e__0
                                                                _macro9981_)
                                                               _hd9944_
                                                               _method9908_)
                                                              _rest9945_)
                                                        _r9946_)
                                               (_E99609969_))))))
                                   (_E99609969_)))))
                        (let ((_E99499999_
                               (lambda ()
                                 (if (gx#stx-pair? _e99479965_)
                                     (let ((_e99579989_
                                            (gx#syntax-e _e99479965_)))
                                       (let ((_hd99589992_ (##car _e99579989_))
                                             (_tl99599994_
                                              (##cdr _e99579989_)))
                                         (if (eq? (gx#stx-e _hd99589992_)
                                                  'begin:)
                                             (let ((_body9997_ _tl99599994_))
                                               (if '#t
                                                   (_K9912_ (gx#stx-foldr
                                                             cons
                                                             _rest9945_
                                                             _body9997_)
                                                            _r9946_)
                                                   (_E99569985_)))
                                             (_E99569985_))))
                                     (_E99569985_)))))
                          (let ((_E994810026_
                                 (lambda ()
                                   (if (gx#stx-pair? _e99479965_)
                                       (let ((_e995010003_
                                              (gx#syntax-e _e99479965_)))
                                         (let ((_hd995110006_
                                                (##car _e995010003_))
                                               (_tl995210008_
                                                (##cdr _e995010003_)))
                                           (if (eq? (gx#stx-e _hd995110006_)
                                                    'phi:)
                                               (if (gx#stx-pair? _tl995210008_)
                                                   (let ((_e995310011_
                                                          (gx#syntax-e
                                                           _tl995210008_)))
                                                     (let ((_hd995410014_
                                                            (##car _e995310011_))
                                                           (_tl995510016_
                                                            (##cdr _e995310011_)))
                                                       (let ((_dphi10019_
                                                              _hd995410014_))
                                                         (let ((_body10021_
                                                                _tl995510016_))
                                                           (if (gx#stx-fixnum?
                                                                _dphi10019_)
                                                               (let ((_rbody10024_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (call-with-parameters
                               (lambda () (_K9912_ _body10021_ '()))
                               _current-phi9909_
                               (fx+ (gx#stx-e _dphi10019_)
                                    (_current-phi9909_)))))
                         (_K9912_ _rest9945_
                                  (foldr1 cons _r9946_ _rbody10024_)))
                       (_E99499999_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E99499999_))
                                               (_E99499999_))))
                                       (_E99499999_)))))
                            (let () (_E994810026_))))))))))
        (let ((_e99149921_ _stx9906_))
          (let ((_E99169925_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e99149921_))))
            (let ((_E99159940_
                   (lambda ()
                     (if (gx#stx-pair? _e99149921_)
                         (let ((_e99179929_ (gx#syntax-e _e99149921_)))
                           (let ((_hd99189932_ (##car _e99179929_))
                                 (_tl99199934_ (##cdr _e99179929_)))
                             (let ((_body9937_ _tl99199934_))
                               (if '#t
                                   (if (_current-phi9909_)
                                       (_K9912_ _body9937_ '())
                                       (call-with-parameters
                                        (lambda () (_K9912_ _body9937_ '()))
                                        _current-phi9909_
                                        (gx#current-expander-phi)))
                                   (_E99169925_)))))
                         (_E99169925_)))))
              (let () (_E99159940_))))))))
  (begin
    (define gx#core-expand-import%__opt-lambda9443
      (lambda (_stx9445_ _internal-expand?9446_)
        (let ((_import19449_
               (lambda (_ctx9880_ _K9881_ _rest9882_ _r9883_)
                 (let ((_dphi9885_
                        (fx- (gx#current-import-expander-phi)
                             (gx#current-expander-phi))))
                   (_K9881_ _rest9882_
                            (cons (##structure
                                   gx#import-set::t
                                   _ctx9880_
                                   _dphi9885_
                                   (map (lambda (_g98869888_)
                                          (gx#core-module-export->import__opt-lambda10341
                                           _g98869888_
                                           '#f
                                           _dphi9885_))
                                        (##structure-ref
                                         _ctx9880_
                                         '9
                                         gx#module-context::t
                                         '#f)))
                                  _r9883_))))))
          (let ((_import-spec?9450_
                 (lambda (_hd9837_)
                   (let ((_e98389848_ _hd9837_))
                     (let ((_E98409852_ (lambda () '#f)))
                       (let ((_E98399876_
                              (lambda ()
                                (if (gx#stx-pair? _e98389848_)
                                    (let ((_e98419856_
                                           (gx#syntax-e _e98389848_)))
                                      (let ((_hd98429859_ (##car _e98419856_))
                                            (_tl98439861_ (##cdr _e98419856_)))
                                        (if (eq? (gx#stx-e _hd98429859_)
                                                 'spec:)
                                            (if (gx#stx-pair? _tl98439861_)
                                                (let ((_e98449864_
                                                       (gx#syntax-e
                                                        _tl98439861_)))
                                                  (let ((_hd98459867_
                                                         (##car _e98449864_))
                                                        (_tl98469869_
                                                         (##cdr _e98449864_)))
                                                    (let ((_spath9872_
                                                           _hd98459867_))
                                                      (let ((_specs9874_
                                                             _tl98469869_))
                                                        (if '#t
                                                            '#t
                                                            (_E98409852_))))))
                                                (_E98409852_))
                                            (_E98409852_))))
                                    (_E98409852_)))))
                         (let () (_E98399876_))))))))
            (let ((_import-submodule?9451_
                   (lambda (_hd9794_)
                     (let ((_e97959805_ _hd9794_))
                       (let ((_E97979809_ (lambda () '#f)))
                         (let ((_E97969833_
                                (lambda ()
                                  (if (gx#stx-pair? _e97959805_)
                                      (let ((_e97989813_
                                             (gx#syntax-e _e97959805_)))
                                        (let ((_hd97999816_
                                               (##car _e97989813_))
                                              (_tl98009818_
                                               (##cdr _e97989813_)))
                                          (if (eq? (gx#stx-e _hd97999816_)
                                                   'in:)
                                              (if (gx#stx-pair? _tl98009818_)
                                                  (let ((_e98019821_
                                                         (gx#syntax-e
                                                          _tl98009818_)))
                                                    (let ((_hd98029824_
                                                           (##car _e98019821_))
                                                          (_tl98039826_
                                                           (##cdr _e98019821_)))
                                                      (let ((_top9829_
                                                             _hd98029824_))
                                                        (let ((_sub9831_
                                                               _tl98039826_))
                                                          (if '#t
                                                              '#t
                                                              (_E97979809_))))))
                                                  (_E97979809_))
                                              (_E97979809_))))
                                      (_E97979809_)))))
                           (let () (_E97969833_))))))))
              (let ((_import-runtime?9452_
                     (lambda (_hd9751_)
                       (let ((_e97529762_ _hd9751_))
                         (let ((_E97549766_ (lambda () '#f)))
                           (let ((_E97539790_
                                  (lambda ()
                                    (if (gx#stx-pair? _e97529762_)
                                        (let ((_e97559770_
                                               (gx#syntax-e _e97529762_)))
                                          (let ((_hd97569773_
                                                 (##car _e97559770_))
                                                (_tl97579775_
                                                 (##cdr _e97559770_)))
                                            (if (eq? (gx#stx-e _hd97569773_)
                                                     'runtime:)
                                                (if (gx#stx-pair? _tl97579775_)
                                                    (let ((_e97589778_
                                                           (gx#syntax-e
                                                            _tl97579775_)))
                                                      (let ((_hd97599781_
                                                             (##car _e97589778_))
                                                            (_tl97609783_
                                                             (##cdr _e97589778_)))
                                                        (let ((_top9786_
                                                               _hd97599781_))
                                                          (let ((_spath9788_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl97609783_))
                    (if '#t '#t (_E97549766_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E97549766_))
                                                (_E97549766_))))
                                        (_E97549766_)))))
                             (let () (_E97539790_))))))))
                (let ((_import-spec-source9456_
                       (lambda (_spath9522_)
                         (gx#core-import-nested-module
                          _spath9522_
                          _stx9445_))))
                  (let ((_import!9457_
                         (lambda (_rbody9470_)
                           (let ((_current-ctx9472_
                                  (gx#current-expander-context)))
                             (let ((_deps9473_ (make-hash-table-eq)))
                               (let ((_bind!9474_
                                      (lambda (_hd9520_)
                                        (begin
                                          (gx#core-bind-import!__1
                                           _hd9520_
                                           _current-ctx9472_)
                                          (if (if (fxpositive?
                                                   (##structure-ref
                                                    _hd9520_
                                                    '3
                                                    gx#module-import::t
                                                    '#f))
                                                  (fxzero? (##structure-ref
                                                            (##structure-ref
                                                             _hd9520_
                                                             '1
                                                             gx#module-import::t
                                                             '#f)
                                                            '3
                                                            gx#module-export::t
                                                            '#f))
                                                  '#f)
                                              (table-set!
                                               _deps9473_
                                               (##structure-ref
                                                (##structure-ref
                                                 _hd9520_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)
                                                '1
                                                gx#module-export::t
                                                '#f)
                                               '#t)
                                              '#!void)))))
                                 (let ((_fold-e9475_
                                        (lambda (_in9517_ _r9518_)
                                          (if (##structure-direct-instance-of?
                                               _in9517_
                                               'gx#module-import::t)
                                              (cons _in9517_ _r9518_)
                                              (if (##structure-direct-instance-of?
                                                   _in9517_
                                                   'gx#import-set::t)
                                                  (foldl1 cons
                                                          _r9518_
                                                          (##structure-ref
                                                           _in9517_
                                                           '3
                                                           gx#import-set::t
                                                           '#f))
                                                  _r9518_)))))
                                   ((letrec ((_lp9477_
                                              (lambda (_rest9479_ _body9480_)
                                                (let ((_rest94819489_
                                                       _rest9479_))
                                                  (let ((_E94849493_
                                                         (lambda ()
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _rest94819489_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_else94839499_
                                                           (lambda ()
                                                             (begin
                                                               (if (##structure-instance-of?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _current-ctx9472_
                            'gx#module-context::t)
                           (##structure-set!
                            _current-ctx9472_
                            (foldl1 _fold-e9475_
                                    (##structure-ref
                                     _current-ctx9472_
                                     '8
                                     gx#module-context::t
                                     '#f)
                                    _body9480_)
                            '8
                            gx#module-context::t
                            '#f)
                           '#!void)
                       (table-for-each
                        (lambda (_ctx9497_ _g11090_)
                          (gx#eval-module _ctx9497_))
                        _deps9473_)
                       _body9480_))))
              (let ((_K94859505_
                     (lambda (_rest9502_ _hd9503_)
                       (begin
                         (if (##structure-direct-instance-of?
                              _hd9503_
                              'gx#module-import::t)
                             (_bind!9474_ _hd9503_)
                             (if (##structure-direct-instance-of?
                                  _hd9503_
                                  'gx#import-set::t)
                                 (for-each
                                  _bind!9474_
                                  (##structure-ref
                                   _hd9503_
                                   '3
                                   gx#import-set::t
                                   '#f))
                                 (if (##structure-instance-of?
                                      _hd9503_
                                      'gx#module-context::t)
                                     '#!void
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Unexpected import"
                                      _stx9445_
                                      _hd9503_))))
                         (_lp9477_ _rest9502_ (cons _hd9503_ _body9480_))))))
                (if (##pair? _rest94819489_)
                    (let ((_hd94869508_ (##car _rest94819489_))
                          (_tl94879510_ (##cdr _rest94819489_)))
                      (let ((_hd9513_ _hd94869508_))
                        (let ((_rest9515_ _tl94879510_))
                          (_K94859505_ _rest9515_ _hd9513_))))
                    (_else94839499_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _lp9477_)
                                    _rbody9470_
                                    '()))))))))
                    (let ((_expanded-import?9458_
                           (lambda (_e9462_)
                             (let ((_$e9464_
                                    (##structure-direct-instance-of?
                                     _e9462_
                                     'gx#import-set::t)))
                               (if _$e9464_
                                   _$e9464_
                                   (let ((_$e9467_
                                          (##structure-direct-instance-of?
                                           _e9462_
                                           'gx#module-import::t)))
                                     (if _$e9467_
                                         _$e9467_
                                         (##structure-instance-of?
                                          _e9462_
                                          'gx#module-context::t))))))))
                      (let ((_import-submodule9453_
                             (lambda (_hd9718_ _K9719_ _rest9720_ _r9721_)
                               (let ((_e97229729_ _hd9718_))
                                 (let ((_E97249733_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _e97229729_))))
                                   (let ((_E97239747_
                                          (lambda ()
                                            (if (gx#stx-pair? _e97229729_)
                                                (let ((_e97259737_
                                                       (gx#syntax-e
                                                        _e97229729_)))
                                                  (let ((_hd97269740_
                                                         (##car _e97259737_))
                                                        (_tl97279742_
                                                         (##cdr _e97259737_)))
                                                    (let ((_spath9745_
                                                           _tl97279742_))
                                                      (if '#t
                                                          (_import19449_
                                                           (_import-spec-source9456_
                                                            _spath9745_)
                                                           _K9719_
                                                           _rest9720_
                                                           _r9721_)
                                                          (_E97249733_)))))
                                                (_E97249733_)))))
                                     (let () (_E97239747_))))))))
                        (let ((_import-runtime9454_
                               (lambda (_hd9685_ _K9686_ _rest9687_ _r9688_)
                                 (let ((_e96899696_ _hd9685_))
                                   (let ((_E96919700_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _e96899696_))))
                                     (let ((_E96909714_
                                            (lambda ()
                                              (if (gx#stx-pair? _e96899696_)
                                                  (let ((_e96929704_
                                                         (gx#syntax-e
                                                          _e96899696_)))
                                                    (let ((_hd96939707_
                                                           (##car _e96929704_))
                                                          (_tl96949709_
                                                           (##cdr _e96929704_)))
                                                      (let ((_spath9712_
                                                             _tl96949709_))
                                                        (if '#t
                                                            (_K9686_ _rest9687_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (_import-spec-source9456_ _spath9712_)
                                   _r9688_))
                    (_E96919700_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E96919700_)))))
                                       (let () (_E96909714_))))))))
                          (let ((_import-spec9455_
                                 (lambda (_hd9524_ _K9525_ _rest9526_ _r9527_)
                                   (let ((_e95289545_ _hd9524_))
                                     (let ((_E95379549_
                                            (lambda ()
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _e95289545_))))
                                       (let ((_E95309659_
                                              (lambda ()
                                                (if (gx#stx-pair? _e95289545_)
                                                    (let ((_e95389553_
                                                           (gx#syntax-e
                                                            _e95289545_)))
                                                      (let ((_hd95399556_
                                                             (##car _e95389553_))
                                                            (_tl95409558_
                                                             (##cdr _e95389553_)))
                                                        (if (gx#stx-pair?
                                                             _tl95409558_)
                                                            (let ((_e95419561_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl95409558_)))
                      (let ((_hd95429564_ (##car _e95419561_))
                            (_tl95439566_ (##cdr _e95419561_)))
                        (let ((_path9569_ _hd95429564_))
                          (let ((_specs9571_ _tl95439566_))
                            (if '#t
                                (let ((_src-ctx9573_
                                       (_import-spec-source9456_ _path9569_))
                                      (_exports9574_ (make-table))
                                      (_specs9575_
                                       (gx#syntax->list _specs9571_)))
                                  (begin
                                    (for-each
                                     (lambda (_out9577_)
                                       (table-set!
                                        _exports9574_
                                        (cons (##structure-ref
                                               _out9577_
                                               '3
                                               gx#module-export::t
                                               '#f)
                                              (##structure-ref
                                               _out9577_
                                               '4
                                               gx#module-export::t
                                               '#f))
                                        _out9577_))
                                     (##structure-ref
                                      _src-ctx9573_
                                      '9
                                      gx#module-context::t
                                      '#f))
                                    (_K9525_ _rest9526_
                                             (foldl1 (lambda (_spec9579_
                                                              _r9580_)
                                                       (let ((_e95819597_
                                                              _spec9579_))
                                                         (let ((_E95839601_
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _e95819597_))))
                   (let ((_E95829655_
                          (lambda ()
                            (if (gx#stx-pair? _e95819597_)
                                (let ((_e95849605_ (gx#syntax-e _e95819597_)))
                                  (let ((_hd95859608_ (##car _e95849605_))
                                        (_tl95869610_ (##cdr _e95849605_)))
                                    (let ((_phi9613_ _hd95859608_))
                                      (if (gx#stx-pair? _tl95869610_)
                                          (let ((_e95879615_
                                                 (gx#syntax-e _tl95869610_)))
                                            (let ((_hd95889618_
                                                   (##car _e95879615_))
                                                  (_tl95899620_
                                                   (##cdr _e95879615_)))
                                              (let ((_name9623_ _hd95889618_))
                                                (if (gx#stx-pair? _tl95899620_)
                                                    (let ((_e95909625_
                                                           (gx#syntax-e
                                                            _tl95899620_)))
                                                      (let ((_hd95919628_
                                                             (##car _e95909625_))
                                                            (_tl95929630_
                                                             (##cdr _e95909625_)))
                                                        (let ((_src-phi9633_
                                                               _hd95919628_))
                                                          (if (gx#stx-pair?
                                                               _tl95929630_)
                                                              (let ((_e95939635_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl95929630_)))
                        (let ((_hd95949638_ (##car _e95939635_))
                              (_tl95959640_ (##cdr _e95939635_)))
                          (let ((_src-name9643_ _hd95949638_))
                            (if (gx#stx-null? _tl95959640_)
                                (if (if (gx#stx-fixnum? _src-phi9633_)
                                        (if (gx#identifier? _src-name9643_)
                                            (if (gx#stx-fixnum? _phi9613_)
                                                (gx#identifier? _name9623_)
                                                '#f)
                                            '#f)
                                        '#f)
                                    (let ((_src-phi9645_
                                           (gx#stx-e _src-phi9633_))
                                          (_src-name9646_
                                           (gx#core-identifier-key
                                            _src-name9643_))
                                          (_phi9647_ (gx#stx-e _phi9613_))
                                          (_name9648_
                                           (gx#core-identifier-key
                                            _name9623_)))
                                      (let ((_$e9650_
                                             (table-ref
                                              _exports9574_
                                              (cons _src-phi9645_
                                                    _src-name9646_)
                                              '#f)))
                                        (if _$e9650_
                                            ((lambda (_out9653_)
                                               (cons (gx#core-module-export->import__opt-lambda10341
                                                      _out9653_
                                                      _name9648_
                                                      (fx- _phi9647_
                                                           _src-phi9645_))
                                                     _r9580_))
                                             _$e9650_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; no matching export"
                                             _stx9445_
                                             _hd9524_))))
                                    (_E95839601_))
                                (_E95839601_)))))
                      (_E95839601_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E95839601_)))))
                                          (_E95839601_)))))
                                (_E95839601_)))))
                     (let () (_E95829655_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _r9527_
                                                     _specs9575_))))
                                (_E95379549_))))))
                    (_E95379549_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E95379549_)))))
                                         (let ((_E95299681_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _e95289545_)
                                                      (let ((_e95319663_
                                                             (gx#syntax-e
                                                              _e95289545_)))
                                                        (let ((_hd95329666_
                                                               (##car _e95319663_))
                                                              (_tl95339668_
                                                               (##cdr _e95319663_)))
                                                          (if (gx#stx-pair?
                                                               _tl95339668_)
                                                              (let ((_e95349671_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl95339668_)))
                        (let ((_hd95359674_ (##car _e95349671_))
                              (_tl95369676_ (##cdr _e95349671_)))
                          (let ((_path9679_ _hd95359674_))
                            (if (gx#stx-null? _tl95369676_)
                                (if '#t
                                    (_K9525_ _rest9526_
                                             (cons (_import-spec-source9456_
                                                    _path9679_)
                                                   _r9527_))
                                    (_E95309659_))
                                (_E95309659_)))))
                      (_E95309659_))))
              (_E95309659_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let () (_E95299681_)))))))))
                            (let ((_expand19448_
                                   (lambda (_hd9891_
                                            _K9892_
                                            _rest9893_
                                            _r9894_)
                                     (if (gx#core-bound-module? _hd9891_)
                                         (_import19449_
                                          (gx#syntax-local-e__0 _hd9891_)
                                          _K9892_
                                          _rest9893_
                                          _r9894_)
                                         (if (gx#core-library-module-path?
                                              _hd9891_)
                                             (_import19449_
                                              (gx#import-module__0
                                               (gx#core-resolve-library-module-path
                                                _hd9891_))
                                              _K9892_
                                              _rest9893_
                                              _r9894_)
                                             (if (gx#stx-string? _hd9891_)
                                                 (_import19449_
                                                  (gx#import-module__0
                                                   (gx#core-resolve-module-path__opt-lambda10695
                                                    _hd9891_
                                                    (gx#stx-source _stx9445_)))
                                                  _K9892_
                                                  _rest9893_
                                                  _r9894_)
                                                 (if (##structure-instance-of?
                                                      (gx#stx-e _hd9891_)
                                                      'gx#module-context::t)
                                                     (_K9892_ _rest9893_
                                                              (cons (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd9891_)
                            _r9894_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (_import-spec?9450_
                                                          _hd9891_)
                                                         (_import-spec9455_
                                                          _hd9891_
                                                          _K9892_
                                                          _rest9893_
                                                          _r9894_)
                                                         (if (_import-submodule?9451_
                                                              _hd9891_)
                                                             (_import-submodule9453_
                                                              _hd9891_
                                                              _K9892_
                                                              _rest9893_
                                                              _r9894_)
                                                             (if (_import-runtime?9452_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd9891_)
                         (_import-runtime9454_
                          _hd9891_
                          _K9892_
                          _rest9893_
                          _r9894_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; illegal import"
                          _stx9445_
                          _hd9891_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (let ((_rbody9460_
                                     (gx#core-expand-import/export
                                      _stx9445_
                                      _expanded-import?9458_
                                      'apply-import-expander
                                      gx#current-import-expander-phi
                                      _expand19448_)))
                                (if _internal-expand?9446_
                                    (reverse _rbody9460_)
                                    (gx#core-quote-syntax__1
                                     (gx#core-cons
                                      '%#import
                                      (_import!9457_ _rbody9460_))
                                     (gx#stx-source _stx9445_)))))))))))))))))
    (begin
      (define gx#core-expand-import%__0
        (lambda (_stx9899_)
          (let ((_internal-expand?9901_ '#f))
            (gx#core-expand-import%__opt-lambda9443
             _stx9899_
             _internal-expand?9901_))))
      (define gx#core-expand-import%
        (lambda _g11092_
          (let ((_g11091_ (length _g11092_)))
            (cond ((fx= _g11091_ 1) (apply gx#core-expand-import%__0 _g11092_))
                  ((fx= _g11091_ 2)
                   (apply gx#core-expand-import%__opt-lambda9443 _g11092_))
                  (else (error "No clause matching arguments" _g11092_))))))))
  (define gx#core-import-nested-module
    (lambda (_spath9372_ _where9373_)
      (let ((_e93749381_ _spath9372_))
        (let ((_E93769385_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e93749381_))))
          (let ((_E93759440_
                 (lambda ()
                   (if (gx#stx-pair? _e93749381_)
                       (let ((_e93779389_ (gx#syntax-e _e93749381_)))
                         (let ((_hd93789392_ (##car _e93779389_))
                               (_tl93799394_ (##cdr _e93779389_)))
                           (let ((_origin9397_ _hd93789392_))
                             (let ((_sub9399_ _tl93799394_))
                               (if '#t
                                   (let ((_origin-ctx9401_
                                          (if (gx#stx-false? _origin9397_)
                                              (gx#current-expander-context)
                                              (gx#import-module__0
                                               _origin9397_))))
                                     ((letrec ((_lp9403_
                                                (lambda (_rest9405_ _ctx9406_)
                                                  (let ((_e94079414_
                                                         _rest9405_))
                                                    (let ((_E94099418_
                                                           (lambda ()
                                                             _ctx9406_)))
                                                      (let ((_E94089436_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _e94079414_)
                           (let ((_e94109422_ (gx#syntax-e _e94079414_)))
                             (let ((_hd94119425_ (##car _e94109422_))
                                   (_tl94129427_ (##cdr _e94109422_)))
                               (let ((_id9430_ _hd94119425_))
                                 (let ((_rest9432_ _tl94129427_))
                                   (if '#t
                                       (let ((_bind9434_
                                              (gx#resolve-identifier__opt-lambda4511
                                               _id9430_
                                               '0
                                               _ctx9406_)))
                                         (begin
                                           (if (if (##structure-direct-instance-of?
                                                    _bind9434_
                                                    'gx#syntax-binding::t)
                                                   (##structure-instance-of?
                                                    (##structure-ref
                                                     _bind9434_
                                                     '4
                                                     gx#syntax-binding::t
                                                     '#f)
                                                    'gx#module-context::t)
                                                   '#f)
                                               '#!void
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; not bound as module"
                                                _where9373_
                                                _spath9372_
                                                _id9430_))
                                           (_lp9403_
                                            _rest9432_
                                            (##structure-ref
                                             _bind9434_
                                             '4
                                             gx#syntax-binding::t
                                             '#f))))
                                       (_E94099418_))))))
                           (_E94099418_)))))
                (let () (_E94089436_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _lp9403_)
                                      _sub9399_
                                      _origin-ctx9401_))
                                   (_E93769385_))))))
                       (_E93769385_)))))
            (let () (_E93759440_)))))))
  (define gx#core-expand-import-source
    (lambda (_hd9370_)
      (gx#core-expand-import%__opt-lambda9443
       (cons 'import-internal% (cons _hd9370_ '()))
       '#t)))
  (begin
    (define gx#core-expand-export%__opt-lambda8952
      (lambda (_stx8954_ _internal-expand?8955_)
        (let ((_make-export__opt-lambda9316__1106011061_
               (lambda (_bind9318_ _phi9319_ _ctx9320_ _name9321_)
                 (let ((_key9323_
                        (##structure-ref _bind9318_ '2 gx#binding::t '#f)))
                   (let ((_export-key9325_
                          (if _name9321_
                              (gx#core-identifier-key _name9321_)
                              _key9323_)))
                     (let ()
                       (##structure
                        gx#module-export::t
                        _ctx9320_
                        _key9323_
                        _phi9319_
                        _export-key9325_
                        (let ((_$e9328_
                               (##structure-instance-of?
                                _bind9318_
                                'gx#extern-binding::t)))
                          (if _$e9328_
                              _$e9328_
                              (##structure-direct-instance-of?
                               _bind9318_
                               'gx#import-binding::t))))))))))
          (let ((_make-export__0__1106211065_
                 (lambda (_bind9334_)
                   (let ((_phi9336_ (gx#current-export-expander-phi)))
                     (let ((_ctx9338_ (gx#current-expander-context)))
                       (let ((_name9340_ '#f))
                         (_make-export__opt-lambda9316__1106011061_
                          _bind9334_
                          _phi9336_
                          _ctx9338_
                          _name9340_)))))))
            (let ((_make-export__1__1106311066_
                   (lambda (_bind9342_ _phi9343_)
                     (let ((_ctx9345_ (gx#current-expander-context)))
                       (let ((_name9347_ '#f))
                         (_make-export__opt-lambda9316__1106011061_
                          _bind9342_
                          _phi9343_
                          _ctx9345_
                          _name9347_))))))
              (let ((_make-export__2__1106411067_
                     (lambda (_bind9349_ _phi9350_ _ctx9351_)
                       (let ((_name9353_ '#f))
                         (_make-export__opt-lambda9316__1106011061_
                          _bind9349_
                          _phi9350_
                          _ctx9351_
                          _name9353_)))))
                (let ((_make-export8957_
                       (lambda _g11094_
                         (let ((_g11093_ (length _g11094_)))
                           (cond ((fx= _g11093_ 1)
                                  (apply _make-export__0__1106211065_
                                         _g11094_))
                                 ((fx= _g11093_ 2)
                                  (apply _make-export__1__1106311066_
                                         _g11094_))
                                 ((fx= _g11093_ 3)
                                  (apply _make-export__2__1106411067_
                                         _g11094_))
                                 ((fx= _g11093_ 4)
                                  (apply _make-export__opt-lambda9316__1106011061_
                                         _g11094_))
                                 (else
                                  (error "No clause matching arguments"
                                         _g11094_)))))))
                  (let ((_export-imports8959_
                         (lambda (_src8980_ _r8981_)
                           (let ((_current-ctx8983_
                                  (gx#current-expander-context)))
                             (let ((_current-phi8984_
                                    (gx#current-export-expander-phi)))
                               (let ((_import->export8985_
                                      (lambda (_in8993_)
                                        (let ((_in89949002_ _in8993_))
                                          (let ((_E89969006_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _in89949002_))))
                                            (let ((_K89979013_
                                                   (lambda (_phi9009_
                                                            _key9010_
                                                            _out9011_)
                                                     (if (fx= _phi9009_
                                                              _current-phi8984_)
                                                         (if (eq? _src8980_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##structure-ref
                           _out9011_
                           '1
                           gx#module-export::t
                           '#f))
                     (##structure
                      gx#module-export::t
                      _current-ctx8983_
                      _key9010_
                      _phi9009_
                      _key9010_
                      '#t)
                     '#f)
                 '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (direct-struct-instance?
                                                   gx#module-import::t
                                                   _in89949002_)
                                                  (let ((_e89989016_
                                                         (##vector-ref
                                                          _in89949002_
                                                          '1)))
                                                    (let ((_out9019_
                                                           _e89989016_))
                                                      (let ((_e89999021_
                                                             (##vector-ref
                                                              _in89949002_
                                                              '2)))
                                                        (let ((_key9024_
                                                               _e89999021_))
                                                          (let ((_e90009026_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref _in89949002_ '3)))
                    (let ((_phi9029_ _e90009026_))
                      (_K89979013_ _phi9029_ _key9024_ _out9019_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E89969006_))))))))
                                 (let ((_fold-e8986_
                                        (lambda (_in8988_ _r8989_)
                                          (let ((_out8991_
                                                 (_import->export8985_
                                                  _in8988_)))
                                            (if _out8991_
                                                (cons _out8991_ _r8989_)
                                                _r8989_)))))
                                   (cons (##structure
                                          gx#export-set::t
                                          _src8980_
                                          _current-phi8984_
                                          (foldl1 _fold-e8986_
                                                  '()
                                                  (##structure-ref
                                                   _current-ctx8983_
                                                   '8
                                                   gx#module-context::t
                                                   '#f)))
                                         _r8981_))))))))
                    (let ((_export!8960_
                           (lambda (_rbody8970_)
                             (let ((_current-ctx8972_
                                    (gx#current-expander-context)))
                               (let ((_fold-e8973_
                                      (lambda (_out8977_ _r8978_)
                                        (if (##structure-direct-instance-of?
                                             _out8977_
                                             'gx#module-export::t)
                                            (cons _out8977_ _r8978_)
                                            (if (##structure-direct-instance-of?
                                                 _out8977_
                                                 'gx#export-set::t)
                                                (foldl1 cons
                                                        _r8978_
                                                        (##structure-ref
                                                         _out8977_
                                                         '3
                                                         gx#export-set::t
                                                         '#f))
                                                _r8978_)))))
                                 (let ((_body8975_ (reverse _rbody8970_)))
                                   (begin
                                     (##structure-set!
                                      _current-ctx8972_
                                      (foldl1 _fold-e8973_
                                              (##structure-ref
                                               _current-ctx8972_
                                               '9
                                               gx#module-context::t
                                               '#f)
                                              _body8975_)
                                      '9
                                      gx#module-context::t
                                      '#f)
                                     _body8975_)))))))
                      (let ((_expanded-export?8961_
                             (lambda (_e8965_)
                               (let ((_$e8967_
                                      (##structure-direct-instance-of?
                                       _e8965_
                                       'gx#module-export::t)))
                                 (if _$e8967_
                                     _$e8967_
                                     (##structure-direct-instance-of?
                                      _e8965_
                                      'gx#export-set::t))))))
                        (let ((_expand18958_
                               (lambda (_hd9031_ _K9032_ _rest9033_ _r9034_)
                                 (let ((_e90359067_ _hd9031_))
                                   (let ((_E90629071_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; illegal export"
                                             _stx8954_
                                             _hd9031_))))
                                     (let ((_E90529150_
                                            (lambda ()
                                              (if (gx#stx-pair? _e90359067_)
                                                  (let ((_e90639075_
                                                         (gx#syntax-e
                                                          _e90359067_)))
                                                    (let ((_hd90649078_
                                                           (##car _e90639075_))
                                                          (_tl90659080_
                                                           (##cdr _e90639075_)))
                                                      (if (eq? (gx#stx-e
                                                                _hd90649078_)
                                                               'import:)
                                                          (let ((_in9083_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl90659080_))
                    (if (gx#stx-list? _in9083_)
                        ((letrec ((_lp9085_
                                   (lambda (_in-rest9087_ _r9088_)
                                     (let ((_e90899096_ _in-rest9087_))
                                       (let ((_E90919100_
                                              (lambda ()
                                                (_K9032_ _rest9033_ _r9088_))))
                                         (let ((_E90909146_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _e90899096_)
                                                      (let ((_e90929104_
                                                             (gx#syntax-e
                                                              _e90899096_)))
                                                        (let ((_hd90939107_
                                                               (##car _e90929104_))
                                                              (_tl90949109_
                                                               (##cdr _e90929104_)))
                                                          (let ((_hd9112_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd90939107_))
                    (let ((_in-rest9114_ _tl90949109_))
                      (if '#t
                          (let ((_src9144_
                                 (if (gx#core-bound-module? _hd9112_)
                                     (gx#syntax-local-e__0 _hd9112_)
                                     (if (gx#core-library-module-path?
                                          _hd9112_)
                                         (gx#import-module__0
                                          (gx#core-resolve-library-module-path
                                           _hd9112_))
                                         (if (gx#stx-string? _hd9112_)
                                             (gx#import-module__0
                                              (gx#core-resolve-module-path__opt-lambda10695
                                               _hd9112_
                                               (gx#stx-source _stx8954_)))
                                             (let ((_e91159122_ _hd9112_))
                                               (let ((_E91179126_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; illegal re-export"
                                                         _stx8954_
                                                         _hd9112_))))
                                                 (let ((_E91169140_
                                                        (lambda ()
                                                          (if (gx#stx-pair?
                                                               _e91159122_)
                                                              (let ((_e91189130_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _e91159122_)))
                        (let ((_hd91199133_ (##car _e91189130_))
                              (_tl91209135_ (##cdr _e91189130_)))
                          (if (eq? (gx#stx-e _hd91199133_) 'in:)
                              (let ((_spath9138_ _tl91209135_))
                                (if '#t
                                    (gx#core-import-nested-module
                                     _spath9138_
                                     _stx8954_)
                                    (_E91179126_)))
                              (_E91179126_))))
                      (_E91179126_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (_E91169140_))))))))))
                            (_lp9085_
                             _in-rest9114_
                             (_export-imports8959_ _src9144_ _r9088_)))
                          (_E90919100_))))))
              (_E90919100_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let () (_E90909146_))))))))
                           _lp9085_)
                         _in9083_
                         _r9034_)
                        (_E90629071_)))
                  (_E90629071_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E90629071_)))))
                                       (let ((_E90399189_
                                              (lambda ()
                                                (if (gx#stx-pair? _e90359067_)
                                                    (let ((_e90539154_
                                                           (gx#syntax-e
                                                            _e90359067_)))
                                                      (let ((_hd90549157_
                                                             (##car _e90539154_))
                                                            (_tl90559159_
                                                             (##cdr _e90539154_)))
                                                        (if (eq? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd90549157_)
                         'rename:)
                    (if (gx#stx-pair? _tl90559159_)
                        (let ((_e90569162_ (gx#syntax-e _tl90559159_)))
                          (let ((_hd90579165_ (##car _e90569162_))
                                (_tl90589167_ (##cdr _e90569162_)))
                            (let ((_id9170_ _hd90579165_))
                              (if (gx#stx-pair? _tl90589167_)
                                  (let ((_e90599172_
                                         (gx#syntax-e _tl90589167_)))
                                    (let ((_hd90609175_ (##car _e90599172_))
                                          (_tl90619177_ (##cdr _e90599172_)))
                                      (let ((_name9180_ _hd90609175_))
                                        (if (gx#stx-null? _tl90619177_)
                                            (if '#t
                                                (let ((_phi9182_
                                                       (gx#current-export-expander-phi)))
                                                  (let ((_$e9184_
                                                         (gx#core-resolve-identifier__1
                                                          _id9170_
                                                          _phi9182_)))
                                                    (if _$e9184_
                                                        ((lambda (_bind9187_)
                                                           (_K9032_ _rest9033_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (_make-export__opt-lambda9316__1106011061_
                                   _bind9187_
                                   _phi9182_
                                   (gx#current-expander-context)
                                   _name9180_)
                                  _r9034_)))
                 _$e9184_)
                (gx#raise-syntax-error
                 '#f
                 '"Reference to unbound identifier"
                 _stx8954_
                 _hd9031_
                 _id9170_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E90529150_))
                                            (_E90529150_)))))
                                  (_E90529150_)))))
                        (_E90529150_))
                    (_E90529150_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E90529150_)))))
                                         (let ((_E90389238_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _e90359067_)
                                                      (let ((_e90409193_
                                                             (gx#syntax-e
                                                              _e90359067_)))
                                                        (let ((_hd90419196_
                                                               (##car _e90409193_))
                                                              (_tl90429198_
                                                               (##cdr _e90409193_)))
                                                          (if (eq? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd90419196_)
                           'spec:)
                      (if (gx#stx-pair? _tl90429198_)
                          (let ((_e90439201_ (gx#syntax-e _tl90429198_)))
                            (let ((_hd90449204_ (##car _e90439201_))
                                  (_tl90459206_ (##cdr _e90439201_)))
                              (let ((_phi9209_ _hd90449204_))
                                (if (gx#stx-pair? _tl90459206_)
                                    (let ((_e90469211_
                                           (gx#syntax-e _tl90459206_)))
                                      (let ((_hd90479214_ (##car _e90469211_))
                                            (_tl90489216_ (##cdr _e90469211_)))
                                        (let ((_id9219_ _hd90479214_))
                                          (if (gx#stx-pair? _tl90489216_)
                                              (let ((_e90499221_
                                                     (gx#syntax-e
                                                      _tl90489216_)))
                                                (let ((_hd90509224_
                                                       (##car _e90499221_))
                                                      (_tl90519226_
                                                       (##cdr _e90499221_)))
                                                  (let ((_name9229_
                                                         _hd90509224_))
                                                    (if (gx#stx-null?
                                                         _tl90519226_)
                                                        (if (if (gx#stx-fixnum?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _phi9209_)
                        (if (gx#identifier? _id9219_)
                            (gx#identifier? _name9229_)
                            '#f)
                        '#f)
                    (let ((_phi9231_ (gx#stx-e _phi9209_)))
                      (let ((_$e9233_
                             (gx#core-resolve-identifier__1
                              _id9219_
                              _phi9231_)))
                        (if _$e9233_
                            ((lambda (_bind9236_)
                               (_K9032_ _rest9033_
                                        (cons (_make-export__opt-lambda9316__1106011061_
                                               _bind9236_
                                               _phi9231_
                                               (gx#current-expander-context)
                                               _name9229_)
                                              _r9034_)))
                             _$e9233_)
                            (gx#raise-syntax-error
                             '#f
                             '"Reference to unbound identifier"
                             _stx8954_
                             _hd9031_
                             _id9219_))))
                    (_E90399189_))
                (_E90399189_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E90399189_)))))
                                    (_E90399189_)))))
                          (_E90399189_))
                      (_E90399189_))))
              (_E90399189_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_E90379249_
                                                  (lambda ()
                                                    (let ((_id9242_
                                                           _e90359067_))
                                                      (if (gx#identifier?
                                                           _id9242_)
                                                          (let ((_$e9244_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-resolve-identifier__1
                          _id9242_
                          (gx#current-export-expander-phi))))
                    (if _$e9244_
                        ((lambda (_bind9247_)
                           (_K9032_ _rest9033_
                                    (cons (_make-export__0__1106211065_
                                           _bind9247_)
                                          _r9034_)))
                         _$e9244_)
                        (gx#raise-syntax-error
                         '#f
                         '"Reference to unbound identifier"
                         _stx8954_
                         _hd9031_)))
                  (_E90389238_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_E90369313_
                                                    (lambda ()
                                                      (if (eq? (gx#stx-e
                                                                _e90359067_)
                                                               '#t)
                                                          (if '#t
                                                              (let ((_current-ctx9253_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#current-expander-context)))
                        (let ((_current-phi9255_
                               (gx#current-export-expander-phi)))
                          (let ((_phi-ctx9257_
                                 (gx#core-context-shift
                                  _current-ctx9253_
                                  _current-phi9255_)))
                            (let ((_phi-bind9259_
                                   (table->list
                                    (##structure-ref
                                     _phi-ctx9257_
                                     '2
                                     gx#expander-context::t
                                     '#f))))
                              (let ()
                                ((letrec ((_lp9262_
                                           (lambda (_bind-rest9264_ _set9265_)
                                             (let ((_bind-rest92669276_
                                                    _bind-rest9264_))
                                               (let ((_E92699280_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _bind-rest92669276_))))
                                                 (let ((_else92689284_
                                                        (lambda ()
                                                          (_K9032_ _rest9033_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (##structure
                                  gx#export-set::t
                                  '#f
                                  _current-phi9255_
                                  _set9265_)
                                 _r9034_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_K92709294_
                                                          (lambda (_bind-rest9287_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _bind9288_
                           _key9289_)
                    (if (let ((_$e9291_
                               (##structure-direct-instance-of?
                                _bind9288_
                                'gx#import-binding::t)))
                          (if _$e9291_
                              _$e9291_
                              (gx#private-feature-binding? _bind9288_)))
                        (_lp9262_ _bind-rest9287_ _set9265_)
                        (_lp9262_
                         _bind-rest9287_
                         (cons (_make-export__2__1106411067_
                                _bind9288_
                                _current-phi9255_
                                _current-ctx9253_)
                               _set9265_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##pair? _bind-rest92669276_)
                                                         (let ((_hd92719297_
                                                                (##car _bind-rest92669276_))
                                                               (_tl92729299_
                                                                (##cdr _bind-rest92669276_)))
                                                           (if (##pair? _hd92719297_)
                                                               (let ((_hd92739302_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##car _hd92719297_))
                             (_tl92749304_ (##cdr _hd92719297_)))
                         (let ((_key9307_ _hd92739302_))
                           (let ((_bind9309_ _tl92749304_))
                             (let ((_bind-rest9311_ _tl92729299_))
                               (_K92709294_
                                _bind-rest9311_
                                _bind9309_
                                _key9307_)))))
                       (_else92689284_)))
                 (_else92689284_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _lp9262_)
                                 _phi-bind9259_
                                 '()))))))
                      (_E90379249_))
                  (_E90379249_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let () (_E90369313_))))))))))))
                          (let ((_rbody8963_
                                 (gx#core-expand-import/export
                                  _stx8954_
                                  gx#module-export?
                                  'apply-export-expander
                                  gx#current-export-expander-phi
                                  _expand18958_)))
                            (if _internal-expand?8955_
                                (reverse _rbody8963_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#export
                                  (_export!8960_ _rbody8963_))
                                 (gx#stx-source _stx8954_)))))))))))))))
    (begin
      (define gx#core-expand-export%__0
        (lambda (_stx9363_)
          (let ((_internal-expand?9365_ '#f))
            (gx#core-expand-export%__opt-lambda8952
             _stx9363_
             _internal-expand?9365_))))
      (define gx#core-expand-export%
        (lambda _g11096_
          (let ((_g11095_ (length _g11096_)))
            (cond ((fx= _g11095_ 1) (apply gx#core-expand-export%__0 _g11096_))
                  ((fx= _g11095_ 2)
                   (apply gx#core-expand-export%__opt-lambda8952 _g11096_))
                  (else (error "No clause matching arguments" _g11096_))))))))
  (define gx#core-expand-export-source
    (lambda (_hd8951_)
      (gx#core-expand-export%__opt-lambda8952
       (cons 'export-macro% (cons _hd8951_ '()))
       '#t)))
  (define gx#core-expand-provide%
    (lambda (_stx8921_)
      (let ((_e89228929_ _stx8921_))
        (let ((_E89248933_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e89228929_))))
          (let ((_E89238947_
                 (lambda ()
                   (if (gx#stx-pair? _e89228929_)
                       (let ((_e89258937_ (gx#syntax-e _e89228929_)))
                         (let ((_hd89268940_ (##car _e89258937_))
                               (_tl89278942_ (##cdr _e89258937_)))
                           (let ((_body8945_ _tl89278942_))
                             (if (gx#identifier-list? _body8945_)
                                 (begin
                                   (gx#stx-for-each1
                                    gx#core-bind-feature!
                                    _body8945_)
                                   (gx#core-quote-syntax__1
                                    (gx#core-cons
                                     '%#provide
                                     (gx#stx-map1
                                      gx#core-quote-syntax
                                      _body8945_))
                                    (gx#stx-source _stx8921_)))
                                 (_E89248933_)))))
                       (_E89248933_)))))
            (let () (_E89238947_)))))))
  (begin
    (define gx#core-bind-feature!__opt-lambda8885
      (lambda (_id8887_ _private?8888_ _phi8889_ _ctx8890_)
        (gx#core-bind-syntax!__opt-lambda5980
         _id8887_
         ((if _private?8888_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id8887_))
         _private?8888_
         _phi8889_
         _ctx8890_)))
    (begin
      (define gx#core-bind-feature!__0
        (lambda (_id8895_)
          (let ((_private?8897_ '#f))
            (let ((_phi8899_ (gx#current-expander-phi)))
              (let ((_ctx8901_ (gx#current-expander-context)))
                (gx#core-bind-feature!__opt-lambda8885
                 _id8895_
                 _private?8897_
                 _phi8899_
                 _ctx8901_))))))
      (define gx#core-bind-feature!__1
        (lambda (_id8903_ _private?8904_)
          (let ((_phi8906_ (gx#current-expander-phi)))
            (let ((_ctx8908_ (gx#current-expander-context)))
              (gx#core-bind-feature!__opt-lambda8885
               _id8903_
               _private?8904_
               _phi8906_
               _ctx8908_)))))
      (define gx#core-bind-feature!__2
        (lambda (_id8910_ _private?8911_ _phi8912_)
          (let ((_ctx8914_ (gx#current-expander-context)))
            (gx#core-bind-feature!__opt-lambda8885
             _id8910_
             _private?8911_
             _phi8912_
             _ctx8914_))))
      (define gx#core-bind-feature!
        (lambda _g11098_
          (let ((_g11097_ (length _g11098_)))
            (cond ((fx= _g11097_ 1) (apply gx#core-bind-feature!__0 _g11098_))
                  ((fx= _g11097_ 2) (apply gx#core-bind-feature!__1 _g11098_))
                  ((fx= _g11097_ 3) (apply gx#core-bind-feature!__2 _g11098_))
                  ((fx= _g11097_ 4)
                   (apply gx#core-bind-feature!__opt-lambda8885 _g11098_))
                  (else (error "No clause matching arguments" _g11098_)))))))))
