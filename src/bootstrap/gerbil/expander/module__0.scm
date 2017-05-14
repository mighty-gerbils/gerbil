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
    (lambda _$args11040_
      (apply make-struct-instance gx#module-import::t _$args11040_)))
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
    (lambda _$args11037_
      (apply make-struct-instance gx#module-export::t _$args11037_)))
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
    (lambda _$args11034_
      (apply make-struct-instance gx#import-set::t _$args11034_)))
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
    (lambda _$args11031_
      (apply make-struct-instance gx#export-set::t _$args11031_)))
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
    (lambda _$args11028_
      (apply make-struct-instance gx#import-expander::t _$args11028_)))
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
    (lambda _$args11025_
      (apply make-struct-instance gx#export-expander::t _$args11025_)))
  (define gx#current-import-expander-phi (make-parameter '#f))
  (define gx#current-export-expander-phi (make-parameter '#f))
  (define gx#module-context:::init!
    (lambda (_self11019_ _id11020_ _super11021_ _ns11022_ _path11023_)
      (direct-struct-instance-init!
       _self11019_
       _id11020_
       (make-hash-table-eq)
       _super11021_
       '#f
       '#f
       _ns11022_
       _path11023_
       '()
       '()
       '#f
       '#f)))
  (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
  (begin
    (define gx#prelude-context:::init!__opt-lambda10983
      (lambda (_self10985_ _ctx10986_ _root10987_)
        (let ((_super10995_
               (let ((_$e10989_ _root10987_))
                 (if _$e10989_
                     _$e10989_
                     (let ((_$e10992_ (gx#core-context-root__0)))
                       (if _$e10992_
                           _$e10992_
                           (make-struct-instance gx#root-context::t)))))))
          (if _ctx10986_
              (let ((_id10998_
                     (##structure-ref
                      _ctx10986_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path10999_
                     (##structure-ref _ctx10986_ '7 gx#module-context::t '#f))
                    (_in11000_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx10986_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e11001_
                     (make-promise (lambda () (gx#eval-module _ctx10986_)))))
                (begin
                  (direct-struct-instance-init!
                   _self10985_
                   _id10998_
                   (make-hash-table-eq)
                   _super10995_
                   '#f
                   '#f
                   _path10999_
                   _in11000_
                   _e11001_)
                  (for-each
                   (lambda (_g1100211004_)
                     (gx#core-bind-weak-import!__opt-lambda10508
                      _g1100211004_
                      _self10985_))
                   _in11000_)))
              (direct-struct-instance-init!
               _self10985_
               '#f
               (make-hash-table-eq)
               _super10995_
               '#f
               '#f
               '#f
               '()
               '#f)))))
    (begin
      (define gx#prelude-context:::init!__0
        (lambda (_self11010_ _ctx11011_)
          (let ((_root11013_ '#f))
            (gx#prelude-context:::init!__opt-lambda10983
             _self11010_
             _ctx11011_
             _root11013_))))
      (define gx#prelude-context:::init!
        (lambda _g11047_
          (let ((_g11046_ (length _g11047_)))
            (cond ((fx= _g11046_ 2)
                   (apply gx#prelude-context:::init!__0 _g11047_))
                  ((fx= _g11046_ 3)
                   (apply gx#prelude-context:::init!__opt-lambda10983
                          _g11047_))
                  (else (error "No clause matching arguments" _g11047_))))))))
  (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
  (define gx#import-expander:::init!
    (lambda (_self10981_ _e10982_)
      (direct-struct-instance-init!
       _self10981_
       _e10982_
       (gx#current-expander-context)
       (fx- (gx#current-expander-phi) '1))))
  (bind-method! gx#import-expander::t ':init! gx#import-expander:::init! '#f)
  (define gx#export-expander:::init!
    (lambda (_self10978_ _e10979_)
      (direct-struct-instance-init!
       _self10978_
       _e10979_
       (gx#current-expander-context)
       (fx- (gx#current-expander-phi) '1))))
  (bind-method! gx#export-expander::t ':init! gx#export-expander:::init! '#f)
  (define gx#import-expander::apply-import-expander
    (lambda (_g1097010973_ _g1097110975_)
      (gx#core-apply-user-expander__opt-lambda4530
       _g1097010973_
       _g1097110975_
       'apply-import-expander)))
  (bind-method!
   gx#import-expander::t
   'apply-import-expander
   gx#import-expander::apply-import-expander
   '#f)
  (define gx#export-expander::apply-export-expander
    (lambda (_g1096310966_ _g1096410968_)
      (gx#core-apply-user-expander__opt-lambda4530
       _g1096310966_
       _g1096410968_
       'apply-export-expander)))
  (bind-method!
   gx#export-expander::t
   'apply-export-expander
   gx#export-expander::apply-export-expander
   '#f)
  (define gx#module-source-path
    (lambda (_ctx10957_)
      (let ((_path10959_
             (##structure-ref _ctx10957_ '7 gx#module-context::t '#f)))
        (let ((_path10961_
               (if (pair? _path10959_) (last _path10959_) _path10959_)))
          (let () (if (string? _path10961_) _path10961_ '#f))))))
  (begin
    (define gx#import-module__opt-lambda10931
      (lambda (_path10933_ _reload?10934_ _eval?10935_)
        (let ((_ctx10937_
               ((gx#current-expander-module-import)
                _path10933_
                _reload?10934_)))
          (begin
            (if (if _ctx10937_ _eval?10935_ '#f)
                (gx#eval-module _ctx10937_)
                '#!void)
            _ctx10937_))))
    (begin
      (define gx#import-module__0
        (lambda (_path10942_)
          (let ((_reload?10944_ '#f))
            (let ((_eval?10946_ '#f))
              (gx#import-module__opt-lambda10931
               _path10942_
               _reload?10944_
               _eval?10946_)))))
      (define gx#import-module__1
        (lambda (_path10948_ _reload?10949_)
          (let ((_eval?10951_ '#f))
            (gx#import-module__opt-lambda10931
             _path10948_
             _reload?10949_
             _eval?10951_))))
      (define gx#import-module
        (lambda _g11049_
          (let ((_g11048_ (length _g11049_)))
            (cond ((fx= _g11048_ 1) (apply gx#import-module__0 _g11049_))
                  ((fx= _g11048_ 2) (apply gx#import-module__1 _g11049_))
                  ((fx= _g11048_ 3)
                   (apply gx#import-module__opt-lambda10931 _g11049_))
                  (else (error "No clause matching arguments" _g11049_))))))))
  (define gx#eval-module
    (lambda (_mod10930_) ((gx#current-expander-module-eval) _mod10930_)))
  (define gx#core-eval-module
    (lambda (_obj10915_)
      (let ((_force-e10917_
             (lambda (_getf10926_ _e10927_)
               (call-with-parameters
                (lambda () (force (_getf10926_ _e10927_)))
                gx#current-expander-context
                _e10927_
                gx#current-expander-phi
                '0))))
        ((letrec ((_recur10919_
                   (lambda (_e10921_)
                     (if (##structure-instance-of?
                          _e10921_
                          'gx#module-context::t)
                         (begin
                           (let ((_$e10923_
                                  (gx#core-context-prelude__opt-lambda10896
                                   _e10921_)))
                             (if _$e10923_ (_recur10919_ _$e10923_) '#!void))
                           (_force-e10917_ gx#module-context-e _e10921_))
                         (if (##structure-instance-of?
                              _e10921_
                              'gx#prelude-context::t)
                             (_force-e10917_ gx#prelude-context-e _e10921_)
                             (if (gx#stx-string? _e10921_)
                                 (_recur10919_
                                  (gx#import-module__0
                                   (gx#core-resolve-module-path__0 _e10921_)))
                                 (if (gx#core-library-module-path? _e10921_)
                                     (_recur10919_
                                      (gx#import-module__0
                                       (gx#core-resolve-library-module-path
                                        _e10921_)))
                                     (error '"Cannot eval module"
                                            _obj10915_))))))))
           _recur10919_)
         _obj10915_))))
  (begin
    (define gx#core-context-prelude__opt-lambda10896
      (lambda (_ctx10898_)
        ((letrec ((_lp10900_
                   (lambda (_e10902_)
                     (if (let ((_$e10904_
                                (##structure-instance-of?
                                 _e10902_
                                 'gx#module-context::t)))
                           (if _$e10904_
                               _$e10904_
                               (##structure-instance-of?
                                _e10902_
                                'gx#local-context::t)))
                         (_lp10900_
                          (##structure-ref _e10902_ '3 gx#phi-context::t '#f))
                         (if (##structure-instance-of?
                              _e10902_
                              'gx#prelude-context::t)
                             _e10902_
                             '#f)))))
           _lp10900_)
         _ctx10898_)))
    (begin
      (define gx#core-context-prelude__0
        (lambda ()
          (let ((_ctx10911_ (gx#current-expander-context)))
            (gx#core-context-prelude__opt-lambda10896 _ctx10911_))))
      (define gx#core-context-prelude
        (lambda _g11051_
          (let ((_g11050_ (length _g11051_)))
            (cond ((fx= _g11050_ 0)
                   (apply gx#core-context-prelude__0 _g11051_))
                  ((fx= _g11050_ 1)
                   (apply gx#core-context-prelude__opt-lambda10896 _g11051_))
                  (else (error "No clause matching arguments" _g11051_))))))))
  (define gx#core-module->prelude-context
    (lambda (_ctx10888_)
      (let ((_ht10890_ (gx#current-expander-module-registry)))
        (let ((_$e10892_ (table-ref _ht10890_ _ctx10888_ '#f)))
          (if _$e10892_
              (values _$e10892_)
              (let ((_pre10895_
                     (let ((__obj11042 (make-object gx#prelude-context::t '8)))
                       (begin
                         (gx#prelude-context:::init!__0 __obj11042 _ctx10888_)
                         __obj11042))))
                (begin
                  (table-set! _ht10890_ _ctx10888_ _pre10895_)
                  _pre10895_)))))))
  (begin
    (define gx#core-import-module__opt-lambda10840
      (lambda (_rpath10842_ _reload?10843_)
        (let ((_import-source10845_
               (lambda (_path10857_)
                 (begin
                   (if (member _path10857_ (gx#current-expander-path))
                       (error '"Cyclic expansion" _path10857_)
                       '#!void)
                   (call-with-parameters
                    (lambda ()
                      (let ((_g11052_ (gx#core-read-module _path10857_)))
                        (begin
                          (let ((_g11053_ (values-count _g11052_)))
                            (if (not (fx= _g11053_ 4))
                                (error "Context expects 4 values" _g11053_)))
                          (let ((_pre10860_ (values-ref _g11052_ 0))
                                (_id10861_ (values-ref _g11052_ 1))
                                (_ns10862_ (values-ref _g11052_ 2))
                                (_body10863_ (values-ref _g11052_ 3)))
                            (let ((_prelude10868_
                                   (if (##structure-instance-of?
                                        _pre10860_
                                        'gx#prelude-context::t)
                                       _pre10860_
                                       (if (##structure-instance-of?
                                            _pre10860_
                                            'gx#module-context::t)
                                           (gx#core-module->prelude-context
                                            _pre10860_)
                                           (if (string? _pre10860_)
                                               (gx#core-module->prelude-context
                                                (gx#core-import-module__0
                                                 _pre10860_))
                                               (if (not _pre10860_)
                                                   (let ((_$e10865_
                                                          (gx#current-expander-module-prelude)))
                                                     (if _$e10865_
                                                         _$e10865_
                                                         (let ((__obj11043
                                                                (make-object
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#prelude-context::t
                         '8)))
                   (begin
                     (gx#prelude-context:::init!__0 __obj11043 '#f)
                     __obj11043))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (error '"Cannot import module; unknown prelude"
                                                          _rpath10842_
                                                          _pre10860_)))))))
                              (let ((_ctx10870_
                                     (let ((__obj11044
                                            (make-object
                                             gx#module-context::t
                                             '11)))
                                       (begin
                                         (gx#module-context:::init!
                                          __obj11044
                                          _id10861_
                                          _prelude10868_
                                          _ns10862_
                                          _path10857_)
                                         __obj11044))))
                                (let ((_body10872_
                                       (gx#core-expand-module-begin
                                        _body10863_
                                        _ctx10870_)))
                                  (let ((_body10874_
                                         (gx#core-quote-syntax__opt-lambda3890
                                          (gx#core-cons '%#begin _body10872_)
                                          _path10857_
                                          _ctx10870_
                                          '())))
                                    (let ()
                                      (begin
                                        (##structure-set!
                                         _ctx10870_
                                         (make-promise
                                          (lambda ()
                                            (gx#eval-syntax* _body10874_)))
                                         '10
                                         gx#module-context::t
                                         '#f)
                                        (##structure-set!
                                         _ctx10870_
                                         _body10874_
                                         '11
                                         gx#module-context::t
                                         '#f)
                                        (table-set!
                                         (gx#current-expander-module-registry)
                                         _path10857_
                                         _ctx10870_)
                                        (table-set!
                                         (gx#current-expander-module-registry)
                                         _id10861_
                                         _ctx10870_)
                                        _ctx10870_))))))))))
                    gx#current-expander-context
                    (gx#core-context-root__0)
                    gx#current-expander-marks
                    '()
                    gx#current-expander-phi
                    '0
                    gx#current-expander-path
                    (cons _path10857_ (gx#current-expander-path))
                    gx#current-import-expander-phi
                    '#f
                    gx#current-export-expander-phi
                    '#f)))))
          (let ((_$e10847_
                 (if (not _reload?10843_)
                     (table-ref
                      (gx#current-expander-module-registry)
                      _rpath10842_
                      '#f)
                     '#f)))
            (if _$e10847_
                (values _$e10847_)
                (if (gx#core-library-module-path? _rpath10842_)
                    (let ((_ctx10850_
                           (gx#core-import-module__opt-lambda10840
                            (gx#core-resolve-library-module-path _rpath10842_)
                            _reload?10843_)))
                      (begin
                        (table-set!
                         (gx#current-expander-module-registry)
                         _rpath10842_
                         _ctx10850_)
                        _ctx10850_))
                    (let ((_npath10852_ (path-normalize _rpath10842_)))
                      (let ((_$e10854_
                             (if (not _reload?10843_)
                                 (table-ref
                                  (gx#current-expander-module-registry)
                                  _npath10852_
                                  '#f)
                                 '#f)))
                        (if _$e10854_
                            (values _$e10854_)
                            (_import-source10845_ _npath10852_))))))))))
    (begin
      (define gx#core-import-module__0
        (lambda (_rpath10881_)
          (let ((_reload?10883_ '#f))
            (gx#core-import-module__opt-lambda10840
             _rpath10881_
             _reload?10883_))))
      (define gx#core-import-module
        (lambda _g11055_
          (let ((_g11054_ (length _g11055_)))
            (cond ((fx= _g11054_ 1) (apply gx#core-import-module__0 _g11055_))
                  ((fx= _g11054_ 2)
                   (apply gx#core-import-module__opt-lambda10840 _g11055_))
                  (else (error "No clause matching arguments" _g11055_))))))))
  (define gx#core-read-module
    (lambda (_path10705_)
      ((letrec ((_lp10707_
                 (lambda (_body10709_ _pre10710_ _ns10711_ _pkg10712_)
                   (let ((_e1071310737_ _body10709_))
                     (let ((_E1072910755_
                            (lambda ()
                              (let ((_prelude10741_
                                     (if (gx#core-bound-module-prelude?
                                          _pre10710_)
                                         (gx#syntax-local-e__0 _pre10710_)
                                         (if (gx#core-library-module-path?
                                              _pre10710_)
                                             (gx#core-resolve-library-module-path
                                              _pre10710_)
                                             (if (gx#stx-string? _pre10710_)
                                                 (gx#core-resolve-module-path__opt-lambda10678
                                                  _pre10710_
                                                  _path10705_)
                                                 (gx#stx-e _pre10710_))))))
                                (let ((_path-id10743_
                                       (gx#core-module-path->namespace
                                        _path10705_)))
                                  (let ((_pkg-id10745_
                                         (if _pkg10712_
                                             (string-append
                                              _pkg10712_
                                              '"/"
                                              _path-id10743_)
                                             _path-id10743_)))
                                    (let ((_module-id10747_
                                           (string->symbol _pkg-id10745_)))
                                      (let ((_module-ns10752_
                                             (let ((_$e10749_ _ns10711_))
                                               (if _$e10749_
                                                   _$e10749_
                                                   _pkg-id10745_))))
                                        (let ()
                                          (values _prelude10741_
                                                  _module-id10747_
                                                  _module-ns10752_
                                                  _body10709_))))))))))
                       (let ((_E1072210784_
                              (lambda ()
                                (if (gx#stx-pair? _e1071310737_)
                                    (let ((_e1073010759_
                                           (gx#syntax-e _e1071310737_)))
                                      (let ((_hd1073110762_
                                             (##car _e1073010759_))
                                            (_tl1073210764_
                                             (##cdr _e1073010759_)))
                                        (if (eq? (gx#stx-e _hd1073110762_)
                                                 'package:)
                                            (if (gx#stx-pair? _tl1073210764_)
                                                (let ((_e1073310767_
                                                       (gx#syntax-e
                                                        _tl1073210764_)))
                                                  (let ((_hd1073410770_
                                                         (##car _e1073310767_))
                                                        (_tl1073510772_
                                                         (##cdr _e1073310767_)))
                                                    (let ((_pkg10775_
                                                           _hd1073410770_))
                                                      (let ((_rest10777_
                                                             _tl1073510772_))
                                                        (if '#t
                                                            (let ((_pkg10782_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if (gx#identifier? _pkg10775_)
                               (symbol->string (gx#stx-e _pkg10775_))
                               (if (let ((_$e10779_
                                          (gx#stx-string? _pkg10775_)))
                                     (if _$e10779_
                                         _$e10779_
                                         (gx#stx-false? _pkg10775_)))
                                   (gx#stx-e _pkg10775_)
                                   (gx#raise-syntax-error
                                    'import
                                    '"Bad syntax; Illegal package name"
                                    _pkg10775_)))))
                      (_lp10707_ _rest10777_ _pre10710_ _ns10711_ _pkg10782_))
                    (_E1072910755_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1072910755_))
                                            (_E1072910755_))))
                                    (_E1072910755_)))))
                         (let ((_E1071510813_
                                (lambda ()
                                  (if (gx#stx-pair? _e1071310737_)
                                      (let ((_e1072310788_
                                             (gx#syntax-e _e1071310737_)))
                                        (let ((_hd1072410791_
                                               (##car _e1072310788_))
                                              (_tl1072510793_
                                               (##cdr _e1072310788_)))
                                          (if (eq? (gx#stx-e _hd1072410791_)
                                                   'namespace:)
                                              (if (gx#stx-pair? _tl1072510793_)
                                                  (let ((_e1072610796_
                                                         (gx#syntax-e
                                                          _tl1072510793_)))
                                                    (let ((_hd1072710799_
                                                           (##car _e1072610796_))
                                                          (_tl1072810801_
                                                           (##cdr _e1072610796_)))
                                                      (let ((_ns10804_
                                                             _hd1072710799_))
                                                        (let ((_rest10806_
                                                               _tl1072810801_))
                                                          (if '#t
                                                              (let ((_ns10811_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (gx#identifier? _ns10804_)
                                 (symbol->string (gx#stx-e _ns10804_))
                                 (if (let ((_$e10808_
                                            (gx#stx-string? _ns10804_)))
                                       (if _$e10808_
                                           _$e10808_
                                           (gx#stx-false? _ns10804_)))
                                     (gx#stx-e _ns10804_)
                                     (gx#raise-syntax-error
                                      'import
                                      '"Bad syntax; illegal namespace"
                                      _ns10804_)))))
                        (_lp10707_
                         _rest10806_
                         _pre10710_
                         _ns10811_
                         _pkg10712_))
                      (_E1072210784_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1072210784_))
                                              (_E1072210784_))))
                                      (_E1072210784_)))))
                           (let ((_E1071410837_
                                  (lambda ()
                                    (if (gx#stx-pair? _e1071310737_)
                                        (let ((_e1071610817_
                                               (gx#syntax-e _e1071310737_)))
                                          (let ((_hd1071710820_
                                                 (##car _e1071610817_))
                                                (_tl1071810822_
                                                 (##cdr _e1071610817_)))
                                            (if (eq? (gx#stx-e _hd1071710820_)
                                                     'prelude:)
                                                (if (gx#stx-pair?
                                                     _tl1071810822_)
                                                    (let ((_e1071910825_
                                                           (gx#syntax-e
                                                            _tl1071810822_)))
                                                      (let ((_hd1072010828_
                                                             (##car _e1071910825_))
                                                            (_tl1072110830_
                                                             (##cdr _e1071910825_)))
                                                        (let ((_prelude10833_
                                                               _hd1072010828_))
                                                          (let ((_rest10835_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1072110830_))
                    (if '#t
                        (_lp10707_
                         _rest10835_
                         _prelude10833_
                         _ns10711_
                         _pkg10712_)
                        (_E1071510813_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1071510813_))
                                                (_E1071510813_))))
                                        (_E1071510813_)))))
                             (let () (_E1071410837_))))))))))
         _lp10707_)
       (read-syntax-from-file _path10705_)
       '#f
       '#f
       '#f)))
  (define gx#core-module-path->namespace
    (lambda (_path10703_)
      (path-strip-extension (path-strip-directory _path10703_))))
  (define gx#core-module-path->id
    (lambda (_path10701_)
      (string->symbol (gx#core-module-path->namespace _path10701_))))
  (begin
    (define gx#core-resolve-module-path__opt-lambda10678
      (lambda (_stx-path10680_ _rel10681_)
        (let ((_path10683_ (gx#stx-e _stx-path10680_)))
          (let ((_path10685_
                 (if (equal? (path-extension _path10683_) '".ss")
                     _path10683_
                     (string-append _path10683_ '".ss"))))
            (let ()
              (gx#core-resolve-path__opt-lambda3854
               _path10685_
               (let ((_$e10688_ (gx#stx-source _stx-path10680_)))
                 (if _$e10688_ _$e10688_ _rel10681_))))))))
    (begin
      (define gx#core-resolve-module-path__0
        (lambda (_stx-path10694_)
          (let ((_rel10696_ '#f))
            (gx#core-resolve-module-path__opt-lambda10678
             _stx-path10694_
             _rel10696_))))
      (define gx#core-resolve-module-path
        (lambda _g11057_
          (let ((_g11056_ (length _g11057_)))
            (cond ((fx= _g11056_ 1)
                   (apply gx#core-resolve-module-path__0 _g11057_))
                  ((fx= _g11056_ 2)
                   (apply gx#core-resolve-module-path__opt-lambda10678
                          _g11057_))
                  (else (error "No clause matching arguments" _g11057_))))))))
  (define gx#core-resolve-library-module-path
    (lambda (_libpath10626_)
      (let ((_spath10628_ (symbol->string (gx#stx-e _libpath10626_))))
        (let ((_spath10630_
               (substring _spath10628_ '1 (string-length _spath10628_))))
          (let ()
            ((letrec ((_lp10633_
                       (lambda (_rest10635_)
                         (let ((_rest1063610645_ _rest10635_))
                           (let ((_E1063910649_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _rest1063610645_))))
                             (let ((_try-match1063810657_
                                    (lambda ()
                                      (let ((_K1064010654_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Cannot find library module"
                                                _libpath10626_))))
                                        (if (##null? _rest1063610645_)
                                            (_K1064010654_)
                                            (_E1063910649_))))))
                               (let ((_K1064110667_
                                      (lambda (_rest10660_ _dir10661_)
                                        (let ((_compiled-path10663_
                                               (path-expand
                                                (string-append
                                                 _spath10630_
                                                 '".ssi")
                                                _dir10661_)))
                                          (if (file-exists?
                                               _compiled-path10663_)
                                              (path-normalize
                                               _compiled-path10663_)
                                              (let ((_src-path10665_
                                                     (path-expand
                                                      (string-append
                                                       _spath10630_
                                                       '".ss")
                                                      _dir10661_)))
                                                (if (file-exists?
                                                     _src-path10665_)
                                                    (path-normalize
                                                     _src-path10665_)
                                                    (_lp10633_
                                                     _rest10660_))))))))
                                 (if (##pair? _rest1063610645_)
                                     (let ((_hd1064210670_
                                            (##car _rest1063610645_))
                                           (_tl1064310672_
                                            (##cdr _rest1063610645_)))
                                       (let ((_dir10675_ _hd1064210670_))
                                         (let ((_rest10677_ _tl1064310672_))
                                           (_K1064110667_
                                            _rest10677_
                                            _dir10675_))))
                                     (_try-match1063810657_)))))))))
               _lp10633_)
             (gx#current-expander-module-library-path)))))))
  (define gx#core-library-module-path?
    (lambda (_stx10624_) (gx#core-special-module-path? _stx10624_ '#\:)))
  (define gx#core-special-module-path?
    (lambda (_stx10619_ _char10620_)
      (if (gx#identifier? _stx10619_)
          (if (interned-symbol? (gx#stx-e _stx10619_))
              (let ((_str10622_ (symbol->string (gx#stx-e _stx10619_))))
                (if (fx> (string-length _str10622_) '1)
                    (eq? (string-ref _str10622_ '0) _char10620_)
                    '#f))
              '#f)
          '#f)))
  (define gx#core-bound-prelude?
    (lambda (_stx10613_)
      (gx#core-bound-identifier?__opt-lambda3944
       _stx10613_
       (lambda (_g1061410616_)
         (gx#expander-binding?__opt-lambda3975
          _g1061410616_
          gx#prelude-context?)))))
  (define gx#core-bound-module?
    (lambda (_stx10607_)
      (gx#core-bound-identifier?__opt-lambda3944
       _stx10607_
       (lambda (_g1060810610_)
         (gx#expander-binding?__opt-lambda3975
          _g1060810610_
          gx#module-context?)))))
  (define gx#core-bound-module-prelude?
    (lambda (_stx10594_)
      (let ((_module-prelude?10596_
             (lambda (_e10602_)
               (let ((_$e10604_
                      (##structure-instance-of?
                       _e10602_
                       'gx#module-context::t)))
                 (if _$e10604_
                     _$e10604_
                     (##structure-instance-of?
                      _e10602_
                      'gx#prelude-context::t))))))
        (gx#core-bound-identifier?__opt-lambda3944
         _stx10594_
         (lambda (_g1059710599_)
           (gx#expander-binding?__opt-lambda3975
            _g1059710599_
            _module-prelude?10596_))))))
  (begin
    (define gx#core-bind-import!__opt-lambda10522
      (lambda (_in10524_ _ctx10525_ _force-weak?10526_)
        (let ((_in1052710536_ _in10524_))
          (let ((_E1052910540_
                 (lambda () (error '"No clause matching" _in1052710536_))))
            (let ((_K1053010553_
                   (lambda (_weak?10543_ _phi10544_ _key10545_ _source10546_)
                     (gx#core-bind!__opt-lambda4214
                      _key10545_
                      (let ((_e10548_
                             (gx#core-resolve-module-export _source10546_)))
                        (##structure
                         gx#import-binding::t
                         (##structure-ref _e10548_ '1 gx#binding::t '#f)
                         _key10545_
                         _phi10544_
                         _e10548_
                         (##structure-ref
                          _source10546_
                          '1
                          gx#module-export::t
                          '#f)
                         (let ((_$e10550_ _force-weak?10526_))
                           (if _$e10550_ _$e10550_ _weak?10543_))))
                      gx#core-context-rebind?
                      _phi10544_
                      _ctx10525_))))
              (if (direct-struct-instance? gx#module-import::t _in1052710536_)
                  (let ((_e1053110556_ (##vector-ref _in1052710536_ '1)))
                    (let ((_source10559_ _e1053110556_))
                      (let ((_e1053210561_ (##vector-ref _in1052710536_ '2)))
                        (let ((_key10564_ _e1053210561_))
                          (let ((_e1053310566_
                                 (##vector-ref _in1052710536_ '3)))
                            (let ((_phi10569_ _e1053310566_))
                              (let ((_e1053410571_
                                     (##vector-ref _in1052710536_ '4)))
                                (let ((_weak?10574_ _e1053410571_))
                                  (_K1053010553_
                                   _weak?10574_
                                   _phi10569_
                                   _key10564_
                                   _source10559_)))))))))
                  (_E1052910540_)))))))
    (begin
      (define gx#core-bind-import!__0
        (lambda (_in10579_)
          (let ((_ctx10581_ (gx#current-expander-context)))
            (let ((_force-weak?10583_ '#f))
              (gx#core-bind-import!__opt-lambda10522
               _in10579_
               _ctx10581_
               _force-weak?10583_)))))
      (define gx#core-bind-import!__1
        (lambda (_in10585_ _ctx10586_)
          (let ((_force-weak?10588_ '#f))
            (gx#core-bind-import!__opt-lambda10522
             _in10585_
             _ctx10586_
             _force-weak?10588_))))
      (define gx#core-bind-import!
        (lambda _g11059_
          (let ((_g11058_ (length _g11059_)))
            (cond ((fx= _g11058_ 1) (apply gx#core-bind-import!__0 _g11059_))
                  ((fx= _g11058_ 2) (apply gx#core-bind-import!__1 _g11059_))
                  ((fx= _g11058_ 3)
                   (apply gx#core-bind-import!__opt-lambda10522 _g11059_))
                  (else (error "No clause matching arguments" _g11059_))))))))
  (begin
    (define gx#core-bind-weak-import!__opt-lambda10508
      (lambda (_in10510_ _ctx10511_)
        (gx#core-bind-import!__opt-lambda10522 _in10510_ _ctx10511_ '#t)))
    (begin
      (define gx#core-bind-weak-import!__0
        (lambda (_in10516_)
          (let ((_ctx10518_ (gx#current-expander-context)))
            (gx#core-bind-weak-import!__opt-lambda10508
             _in10516_
             _ctx10518_))))
      (define gx#core-bind-weak-import!
        (lambda _g11061_
          (let ((_g11060_ (length _g11061_)))
            (cond ((fx= _g11060_ 1)
                   (apply gx#core-bind-weak-import!__0 _g11061_))
                  ((fx= _g11060_ 2)
                   (apply gx#core-bind-weak-import!__opt-lambda10508 _g11061_))
                  (else (error "No clause matching arguments" _g11061_))))))))
  (define gx#core-resolve-module-export
    (lambda (_out10401_)
      (let ((_subst10403_
             (lambda (_key10449_)
               (let ((_key1045010458_ _key10449_))
                 (let ((_E1045310462_
                        (lambda ()
                          (error '"No clause matching" _key1045010458_))))
                   (let ((_else1045210466_ (lambda () _key10449_)))
                     (let ((_K1045410497_
                            (lambda (_mark10469_ _id10470_)
                              (let ((_mark1047110477_ _mark10469_))
                                (let ((_E1047310481_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _mark1047110477_))))
                                  (let ((_K1047410489_
                                         (lambda (_subst10484_)
                                           (let ((_$e10486_
                                                  (if _subst10484_
                                                      (table-ref
                                                       _subst10484_
                                                       _id10470_
                                                       '#f)
                                                      '#f)))
                                             (if _$e10486_
                                                 _$e10486_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal key; missing substitution"
                                                  _key10449_))))))
                                    (if (struct-instance?
                                         gx#expander-mark::t
                                         _mark1047110477_)
                                        (let ((_e1047510492_
                                               (##vector-ref
                                                _mark1047110477_
                                                '1)))
                                          (let ((_subst10495_ _e1047510492_))
                                            (_K1047410489_ _subst10495_)))
                                        (_E1047310481_))))))))
                       (if (##pair? _key1045010458_)
                           (let ((_hd1045510500_ (##car _key1045010458_))
                                 (_tl1045610502_ (##cdr _key1045010458_)))
                             (let ((_id10505_ _hd1045510500_))
                               (let ((_mark10507_ _tl1045610502_))
                                 (_K1045410497_ _mark10507_ _id10505_))))
                           (_else1045210466_)))))))))
        (let ((_out1040410414_ _out10401_))
          (let ((_E1040610418_
                 (lambda () (error '"No clause matching" _out1040410414_))))
            (let ((_K1040710425_
                   (lambda (_phi10421_ _key10422_ _ctx10423_)
                     (gx#core-context-resolve
                      (gx#core-context-shift _ctx10423_ _phi10421_)
                      (_subst10403_ _key10422_)))))
              (if (direct-struct-instance? gx#module-export::t _out1040410414_)
                  (let ((_e1040810428_ (##vector-ref _out1040410414_ '1)))
                    (let ((_ctx10431_ _e1040810428_))
                      (let ((_e1040910433_ (##vector-ref _out1040410414_ '2)))
                        (let ((_key10436_ _e1040910433_))
                          (let ((_e1041010438_
                                 (##vector-ref _out1040410414_ '3)))
                            (let ((_phi10441_ _e1041010438_))
                              (let ((_e1041110443_
                                     (##vector-ref _out1040410414_ '4)))
                                (let ((_e1041210446_
                                       (##vector-ref _out1040410414_ '5)))
                                  (_K1040710425_
                                   _phi10441_
                                   _key10436_
                                   _ctx10431_)))))))))
                  (_E1040610418_))))))))
  (begin
    (define gx#core-module-export->import__opt-lambda10324
      (lambda (_out10326_ _rename10327_ _dphi10328_)
        (let ((_out1032910339_ _out10326_))
          (let ((_E1033110343_
                 (lambda () (error '"No clause matching" _out1032910339_))))
            (let ((_K1033210355_
                   (lambda (_weak?10346_
                            _name10347_
                            _phi10348_
                            _key10349_
                            _ctx10350_)
                     (##structure
                      gx#module-import::t
                      _out10326_
                      (let ((_$e10352_ _rename10327_))
                        (if _$e10352_ _$e10352_ _name10347_))
                      (fx+ _phi10348_ _dphi10328_)
                      _weak?10346_))))
              (if (direct-struct-instance? gx#module-export::t _out1032910339_)
                  (let ((_e1033310358_ (##vector-ref _out1032910339_ '1)))
                    (let ((_ctx10361_ _e1033310358_))
                      (let ((_e1033410363_ (##vector-ref _out1032910339_ '2)))
                        (let ((_key10366_ _e1033410363_))
                          (let ((_e1033510368_
                                 (##vector-ref _out1032910339_ '3)))
                            (let ((_phi10371_ _e1033510368_))
                              (let ((_e1033610373_
                                     (##vector-ref _out1032910339_ '4)))
                                (let ((_name10376_ _e1033610373_))
                                  (let ((_e1033710378_
                                         (##vector-ref _out1032910339_ '5)))
                                    (let ((_weak?10381_ _e1033710378_))
                                      (_K1033210355_
                                       _weak?10381_
                                       _name10376_
                                       _phi10371_
                                       _key10366_
                                       _ctx10361_)))))))))))
                  (_E1033110343_)))))))
    (begin
      (define gx#core-module-export->import__0
        (lambda (_out10386_)
          (let ((_rename10388_ '#f))
            (let ((_dphi10390_ '0))
              (gx#core-module-export->import__opt-lambda10324
               _out10386_
               _rename10388_
               _dphi10390_)))))
      (define gx#core-module-export->import__1
        (lambda (_out10392_ _rename10393_)
          (let ((_dphi10395_ '0))
            (gx#core-module-export->import__opt-lambda10324
             _out10392_
             _rename10393_
             _dphi10395_))))
      (define gx#core-module-export->import
        (lambda _g11063_
          (let ((_g11062_ (length _g11063_)))
            (cond ((fx= _g11062_ 1)
                   (apply gx#core-module-export->import__0 _g11063_))
                  ((fx= _g11062_ 2)
                   (apply gx#core-module-export->import__1 _g11063_))
                  ((fx= _g11062_ 3)
                   (apply gx#core-module-export->import__opt-lambda10324
                          _g11063_))
                  (else (error "No clause matching arguments" _g11063_))))))))
  (define gx#core-expand-module%
    (lambda (_stx10254_)
      (let ((_make-context10256_
             (lambda (_id10307_)
               (let ((_super10309_ (gx#current-expander-context)))
                 (let ((_bind-id10311_ (gx#stx-e _id10307_)))
                   (let ((_mod-id10313_
                          (if (##structure-instance-of?
                               _super10309_
                               'gx#module-context::t)
                              (make-symbol
                               (##structure-ref
                                _super10309_
                                '1
                                gx#expander-context::t
                                '#f)
                               '"::"
                               _bind-id10311_)
                              _bind-id10311_)))
                     (let ((_ns10315_ (symbol->string _mod-id10313_)))
                       (let ((_path10322_
                              (if (##structure-instance-of?
                                   _super10309_
                                   'gx#module-context::t)
                                  (let ((_path10317_
                                         (##structure-ref
                                          _super10309_
                                          '7
                                          gx#module-context::t
                                          '#f)))
                                    (if (let ((_$e10319_ (pair? _path10317_)))
                                          (if _$e10319_
                                              _$e10319_
                                              (null? _path10317_)))
                                        (cons _bind-id10311_ _path10317_)
                                        (if (not _path10317_)
                                            _bind-id10311_
                                            (cons _bind-id10311_
                                                  (cons _path10317_ '())))))
                                  _bind-id10311_)))
                         (let ()
                           (let ((__obj11045
                                  (make-object gx#module-context::t '11)))
                             (begin
                               (gx#module-context:::init!
                                __obj11045
                                _mod-id10313_
                                _super10309_
                                _ns10315_
                                _path10322_)
                               __obj11045)))))))))))
        (let ((_e1025710267_ _stx10254_))
          (let ((_E1025910271_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e1025710267_))))
            (let ((_E1025810303_
                   (lambda ()
                     (if (gx#stx-pair? _e1025710267_)
                         (let ((_e1026010275_ (gx#syntax-e _e1025710267_)))
                           (let ((_hd1026110278_ (##car _e1026010275_))
                                 (_tl1026210280_ (##cdr _e1026010275_)))
                             (if (gx#stx-pair? _tl1026210280_)
                                 (let ((_e1026310283_
                                        (gx#syntax-e _tl1026210280_)))
                                   (let ((_hd1026410286_ (##car _e1026310283_))
                                         (_tl1026510288_
                                          (##cdr _e1026310283_)))
                                     (let ((_id10291_ _hd1026410286_))
                                       (let ((_body10293_ _tl1026510288_))
                                         (if (if (gx#identifier? _id10291_)
                                                 (gx#stx-list? _body10293_)
                                                 '#f)
                                             (let ((_ctx10295_
                                                    (_make-context10256_
                                                     _id10291_)))
                                               (let ((_body10297_
                                                      (gx#core-expand-module-begin
                                                       _body10293_
                                                       _ctx10295_)))
                                                 (let ((_body10299_
                                                        (gx#core-quote-syntax__1
                                                         (gx#core-cons
                                                          '%#begin
                                                          _body10297_)
                                                         (gx#stx-source
                                                          _stx10254_))))
                                                   (let ()
                                                     (begin
                                                       (##structure-set!
                                                        _ctx10295_
                                                        (make-promise
                                                         (lambda ()
                                                           (gx#eval-syntax*
                                                            _body10299_)))
                                                        '10
                                                        gx#module-context::t
                                                        '#f)
                                                       (##structure-set!
                                                        _ctx10295_
                                                        _body10299_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)
                                                       (gx#core-bind-syntax!__0
                                                        _id10291_
                                                        _ctx10295_)
                                                       (gx#core-quote-syntax__1
                                                        (gx#core-list
                                                         '%#module
                                                         (gx#core-quote-syntax__0
                                                          _id10291_)
                                                         _body10299_)
                                                        (gx#stx-source
                                                         _stx10254_)))))))
                                             (_E1025910271_))))))
                                 (_E1025910271_))))
                         (_E1025910271_)))))
              (let () (_E1025810303_))))))))
  (define gx#core-expand-module-begin
    (lambda (_body10250_ _ctx10251_)
      (call-with-parameters
       (lambda ()
         (begin
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (gx#core-expand-module-body _body10250_)))
       gx#current-expander-context
       _ctx10251_
       gx#current-expander-phi
       '0)))
  (define gx#core-expand-module-body
    (lambda (_body10046_)
      (let ((_expand-special10048_
             (lambda (_hd10177_ _K10178_ _rest10179_ _r10180_)
               (let ((_e1018110198_ _hd10177_))
                 (let ((_E1019310202_
                        (lambda ()
                          (_K10178_
                           _rest10179_
                           (cons (gx#core-expand-top _hd10177_) _r10180_)))))
                   (let ((_E1018310214_
                          (lambda ()
                            (if (gx#stx-pair? _e1018110198_)
                                (let ((_e1019410206_
                                       (gx#syntax-e _e1018110198_)))
                                  (let ((_hd1019510209_ (##car _e1019410206_))
                                        (_tl1019610211_ (##cdr _e1019410206_)))
                                    (if (if (gx#identifier? _hd1019510209_)
                                            (gx#core-identifier=?
                                             _hd1019510209_
                                             '%#export)
                                            '#f)
                                        (if '#t
                                            (_K10178_
                                             _rest10179_
                                             (cons _hd10177_ _r10180_))
                                            (_E1019310202_))
                                        (_E1019310202_))))
                                (_E1019310202_)))))
                     (let ((_E1018210246_
                            (lambda ()
                              (if (gx#stx-pair? _e1018110198_)
                                  (let ((_e1018410218_
                                         (gx#syntax-e _e1018110198_)))
                                    (let ((_hd1018510221_
                                           (##car _e1018410218_))
                                          (_tl1018610223_
                                           (##cdr _e1018410218_)))
                                      (if (if (gx#identifier? _hd1018510221_)
                                              (gx#core-identifier=?
                                               _hd1018510221_
                                               '%#define-values)
                                              '#f)
                                          (if (gx#stx-pair? _tl1018610223_)
                                              (let ((_e1018710226_
                                                     (gx#syntax-e
                                                      _tl1018610223_)))
                                                (let ((_hd1018810229_
                                                       (##car _e1018710226_))
                                                      (_tl1018910231_
                                                       (##cdr _e1018710226_)))
                                                  (let ((_hd-bind10234_
                                                         _hd1018810229_))
                                                    (if (gx#stx-pair?
                                                         _tl1018910231_)
                                                        (let ((_e1019010236_
                                                               (gx#syntax-e
                                                                _tl1018910231_)))
                                                          (let ((_hd1019110239_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1019010236_))
                        (_tl1019210241_ (##cdr _e1019010236_)))
                    (let ((_expr10244_ _hd1019110239_))
                      (if (gx#stx-null? _tl1019210241_)
                          (if (gx#core-bind-values? _hd-bind10234_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind10234_)
                                (_K10178_
                                 _rest10179_
                                 (cons _hd10177_ _r10180_)))
                              (_E1018310214_))
                          (_E1018310214_)))))
                (_E1018310214_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1018310214_))
                                          (_E1018310214_))))
                                  (_E1018310214_)))))
                       (let () (_E1018210246_)))))))))
        (let ((_expand-body10049_
               (lambda (_rbody10051_)
                 ((letrec ((_lp10053_
                            (lambda (_rest10055_ _body10056_)
                              (let ((_rest1005710065_ _rest10055_))
                                (let ((_E1006010069_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _rest1005710065_))))
                                  (let ((_else1005910073_
                                         (lambda () _body10056_)))
                                    (let ((_K1006110165_
                                           (lambda (_rest10076_ _hd10077_)
                                             (let ((_e1007810099_ _hd10077_))
                                               (let ((_E1009410103_
                                                      (lambda ()
                                                        (_lp10053_
                                                         _rest10076_
                                                         (cons (gx#core-expand-expression
                                                                _hd10077_)
                                                               _body10056_)))))
                                                 (let ((_E1009010117_
                                                        (lambda ()
                                                          (if (gx#stx-pair?
                                                               _e1007810099_)
                                                              (let ((_e1009510107_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _e1007810099_)))
                        (let ((_hd1009610110_ (##car _e1009510107_))
                              (_tl1009710112_ (##cdr _e1009510107_)))
                          (let ((_form10115_ _hd1009610110_))
                            (if (gx#core-bound-identifier?__opt-lambda3944
                                 _form10115_
                                 gx#special-form-binding?)
                                (_lp10053_
                                 _rest10076_
                                 (cons _hd10077_ _body10056_))
                                (_E1009410103_)))))
                      (_E1009410103_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_E1008010129_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e1007810099_)
                        (let ((_e1009110121_ (gx#syntax-e _e1007810099_)))
                          (let ((_hd1009210124_ (##car _e1009110121_))
                                (_tl1009310126_ (##cdr _e1009110121_)))
                            (if (if (gx#identifier? _hd1009210124_)
                                    (gx#core-identifier=?
                                     _hd1009210124_
                                     '%#export)
                                    '#f)
                                (if '#t
                                    (_lp10053_
                                     _rest10076_
                                     (cons (gx#core-expand-export%__0
                                            _hd10077_)
                                           _body10056_))
                                    (_E1009010117_))
                                (_E1009010117_))))
                        (_E1009010117_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_E1007910161_
                                                            (lambda ()
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e1007810099_)
                          (let ((_e1008110133_ (gx#syntax-e _e1007810099_)))
                            (let ((_hd1008210136_ (##car _e1008110133_))
                                  (_tl1008310138_ (##cdr _e1008110133_)))
                              (if (if (gx#identifier? _hd1008210136_)
                                      (gx#core-identifier=?
                                       _hd1008210136_
                                       '%#define-values)
                                      '#f)
                                  (if (gx#stx-pair? _tl1008310138_)
                                      (let ((_e1008410141_
                                             (gx#syntax-e _tl1008310138_)))
                                        (let ((_hd1008510144_
                                               (##car _e1008410141_))
                                              (_tl1008610146_
                                               (##cdr _e1008410141_)))
                                          (let ((_hd-bind10149_
                                                 _hd1008510144_))
                                            (if (gx#stx-pair? _tl1008610146_)
                                                (let ((_e1008710151_
                                                       (gx#syntax-e
                                                        _tl1008610146_)))
                                                  (let ((_hd1008810154_
                                                         (##car _e1008710151_))
                                                        (_tl1008910156_
                                                         (##cdr _e1008710151_)))
                                                    (let ((_expr10159_
                                                           _hd1008810154_))
                                                      (if (gx#stx-null?
                                                           _tl1008910156_)
                                                          (if '#t
                                                              (_lp10053_
                                                               _rest10076_
                                                               (cons (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#core-list
                               '%#define-values
                               (gx#core-quote-bind-values _hd-bind10149_)
                               (gx#core-expand-expression _expr10159_))
                              (gx#stx-source _hd10077_))
                             _body10056_))
                      (_E1008010129_))
                  (_E1008010129_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1008010129_)))))
                                      (_E1008010129_))
                                  (_E1008010129_))))
                          (_E1008010129_)))))
               (let () (_E1007910161_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (##pair? _rest1005710065_)
                                          (let ((_hd1006210168_
                                                 (##car _rest1005710065_))
                                                (_tl1006310170_
                                                 (##cdr _rest1005710065_)))
                                            (let ((_hd10173_ _hd1006210168_))
                                              (let ((_rest10175_
                                                     _tl1006310170_))
                                                (_K1006110165_
                                                 _rest10175_
                                                 _hd10173_))))
                                          (_else1005910073_)))))))))
                    _lp10053_)
                  _rbody10051_
                  '()))))
          (_expand-body10049_
           (gx#core-expand-block__opt-lambda4991
            (cons '%#begin-module _body10046_)
            _expand-special10048_
            '#f
            values))))))
  (define gx#core-expand-import/export
    (lambda (_stx9889_
             _expanded?9890_
             _method9891_
             _current-phi9892_
             _expand19893_)
      (letrec ((_K9895_ (lambda (_rest10013_ _r10014_)
                          (let ((_e1001510022_ _rest10013_))
                            (let ((_E1001710026_ (lambda () _r10014_)))
                              (let ((_E1001610042_
                                     (lambda ()
                                       (if (gx#stx-pair? _e1001510022_)
                                           (let ((_e1001810030_
                                                  (gx#syntax-e _e1001510022_)))
                                             (let ((_hd1001910033_
                                                    (##car _e1001810030_))
                                                   (_tl1002010035_
                                                    (##cdr _e1001810030_)))
                                               (let ((_hd10038_
                                                      _hd1001910033_))
                                                 (let ((_rest10040_
                                                        _tl1002010035_))
                                                   (if '#t
                                                       (_step9896_
                                                        _hd10038_
                                                        _rest10040_
                                                        _r10014_)
                                                       (_E1001710026_))))))
                                           (_E1001710026_)))))
                                (let () (_E1001610042_)))))))
               (_step9896_
                (lambda (_hd9927_ _rest9928_ _r9929_)
                  (let ((_e99309948_ _hd9927_))
                    (let ((_E99439952_
                           (lambda ()
                             (if (_expanded?9890_ (gx#stx-e _hd9927_))
                                 (_K9895_ _rest9928_
                                          (cons (gx#stx-e _hd9927_) _r9929_))
                                 (_expand19893_
                                  _hd9927_
                                  _K9895_
                                  _rest9928_
                                  _r9929_)))))
                      (let ((_E99399968_
                             (lambda ()
                               (if (gx#stx-pair? _e99309948_)
                                   (let ((_e99449956_
                                          (gx#syntax-e _e99309948_)))
                                     (let ((_hd99459959_ (##car _e99449956_))
                                           (_tl99469961_ (##cdr _e99449956_)))
                                       (let ((_macro9964_ _hd99459959_))
                                         (let ((_body9966_ _tl99469961_))
                                           (if (gx#core-bound-identifier?__opt-lambda3944
                                                _macro9964_
                                                gx#syntax-binding?)
                                               (_K9895_ (cons (gx#core-apply-expander__opt-lambda4709
                                                               (gx#syntax-local-e__0
                                                                _macro9964_)
                                                               _hd9927_
                                                               _method9891_)
                                                              _rest9928_)
                                                        _r9929_)
                                               (_E99439952_))))))
                                   (_E99439952_)))))
                        (let ((_E99329982_
                               (lambda ()
                                 (if (gx#stx-pair? _e99309948_)
                                     (let ((_e99409972_
                                            (gx#syntax-e _e99309948_)))
                                       (let ((_hd99419975_ (##car _e99409972_))
                                             (_tl99429977_
                                              (##cdr _e99409972_)))
                                         (if (eq? (gx#stx-e _hd99419975_)
                                                  'begin:)
                                             (let ((_body9980_ _tl99429977_))
                                               (if '#t
                                                   (_K9895_ (gx#stx-foldr
                                                             cons
                                                             _rest9928_
                                                             _body9980_)
                                                            _r9929_)
                                                   (_E99399968_)))
                                             (_E99399968_))))
                                     (_E99399968_)))))
                          (let ((_E993110009_
                                 (lambda ()
                                   (if (gx#stx-pair? _e99309948_)
                                       (let ((_e99339986_
                                              (gx#syntax-e _e99309948_)))
                                         (let ((_hd99349989_
                                                (##car _e99339986_))
                                               (_tl99359991_
                                                (##cdr _e99339986_)))
                                           (if (eq? (gx#stx-e _hd99349989_)
                                                    'phi:)
                                               (if (gx#stx-pair? _tl99359991_)
                                                   (let ((_e99369994_
                                                          (gx#syntax-e
                                                           _tl99359991_)))
                                                     (let ((_hd99379997_
                                                            (##car _e99369994_))
                                                           (_tl99389999_
                                                            (##cdr _e99369994_)))
                                                       (let ((_dphi10002_
                                                              _hd99379997_))
                                                         (let ((_body10004_
                                                                _tl99389999_))
                                                           (if (gx#stx-fixnum?
                                                                _dphi10002_)
                                                               (let ((_rbody10007_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (call-with-parameters
                               (lambda () (_K9895_ _body10004_ '()))
                               _current-phi9892_
                               (fx+ (gx#stx-e _dphi10002_)
                                    (_current-phi9892_)))))
                         (_K9895_ _rest9928_
                                  (foldr1 cons _r9929_ _rbody10007_)))
                       (_E99329982_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E99329982_))
                                               (_E99329982_))))
                                       (_E99329982_)))))
                            (let () (_E993110009_))))))))))
        (let ((_e98979904_ _stx9889_))
          (let ((_E98999908_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e98979904_))))
            (let ((_E98989923_
                   (lambda ()
                     (if (gx#stx-pair? _e98979904_)
                         (let ((_e99009912_ (gx#syntax-e _e98979904_)))
                           (let ((_hd99019915_ (##car _e99009912_))
                                 (_tl99029917_ (##cdr _e99009912_)))
                             (let ((_body9920_ _tl99029917_))
                               (if '#t
                                   (if (_current-phi9892_)
                                       (_K9895_ _body9920_ '())
                                       (call-with-parameters
                                        (lambda () (_K9895_ _body9920_ '()))
                                        _current-phi9892_
                                        (gx#current-expander-phi)))
                                   (_E98999908_)))))
                         (_E98999908_)))))
              (let () (_E98989923_))))))))
  (begin
    (define gx#core-expand-import%__opt-lambda9426
      (lambda (_stx9428_ _internal-expand?9429_)
        (let ((_import19432_
               (lambda (_ctx9863_ _K9864_ _rest9865_ _r9866_)
                 (let ((_dphi9868_
                        (fx- (gx#current-import-expander-phi)
                             (gx#current-expander-phi))))
                   (_K9864_ _rest9865_
                            (cons (##structure
                                   gx#import-set::t
                                   _ctx9863_
                                   _dphi9868_
                                   (map (lambda (_g98699871_)
                                          (gx#core-module-export->import__opt-lambda10324
                                           _g98699871_
                                           '#f
                                           _dphi9868_))
                                        (##structure-ref
                                         _ctx9863_
                                         '9
                                         gx#module-context::t
                                         '#f)))
                                  _r9866_))))))
          (let ((_import-spec?9433_
                 (lambda (_hd9820_)
                   (let ((_e98219831_ _hd9820_))
                     (let ((_E98239835_ (lambda () '#f)))
                       (let ((_E98229859_
                              (lambda ()
                                (if (gx#stx-pair? _e98219831_)
                                    (let ((_e98249839_
                                           (gx#syntax-e _e98219831_)))
                                      (let ((_hd98259842_ (##car _e98249839_))
                                            (_tl98269844_ (##cdr _e98249839_)))
                                        (if (eq? (gx#stx-e _hd98259842_)
                                                 'spec:)
                                            (if (gx#stx-pair? _tl98269844_)
                                                (let ((_e98279847_
                                                       (gx#syntax-e
                                                        _tl98269844_)))
                                                  (let ((_hd98289850_
                                                         (##car _e98279847_))
                                                        (_tl98299852_
                                                         (##cdr _e98279847_)))
                                                    (let ((_spath9855_
                                                           _hd98289850_))
                                                      (let ((_specs9857_
                                                             _tl98299852_))
                                                        (if '#t
                                                            '#t
                                                            (_E98239835_))))))
                                                (_E98239835_))
                                            (_E98239835_))))
                                    (_E98239835_)))))
                         (let () (_E98229859_))))))))
            (let ((_import-submodule?9434_
                   (lambda (_hd9777_)
                     (let ((_e97789788_ _hd9777_))
                       (let ((_E97809792_ (lambda () '#f)))
                         (let ((_E97799816_
                                (lambda ()
                                  (if (gx#stx-pair? _e97789788_)
                                      (let ((_e97819796_
                                             (gx#syntax-e _e97789788_)))
                                        (let ((_hd97829799_
                                               (##car _e97819796_))
                                              (_tl97839801_
                                               (##cdr _e97819796_)))
                                          (if (eq? (gx#stx-e _hd97829799_)
                                                   'in:)
                                              (if (gx#stx-pair? _tl97839801_)
                                                  (let ((_e97849804_
                                                         (gx#syntax-e
                                                          _tl97839801_)))
                                                    (let ((_hd97859807_
                                                           (##car _e97849804_))
                                                          (_tl97869809_
                                                           (##cdr _e97849804_)))
                                                      (let ((_top9812_
                                                             _hd97859807_))
                                                        (let ((_sub9814_
                                                               _tl97869809_))
                                                          (if '#t
                                                              '#t
                                                              (_E97809792_))))))
                                                  (_E97809792_))
                                              (_E97809792_))))
                                      (_E97809792_)))))
                           (let () (_E97799816_))))))))
              (let ((_import-runtime?9435_
                     (lambda (_hd9734_)
                       (let ((_e97359745_ _hd9734_))
                         (let ((_E97379749_ (lambda () '#f)))
                           (let ((_E97369773_
                                  (lambda ()
                                    (if (gx#stx-pair? _e97359745_)
                                        (let ((_e97389753_
                                               (gx#syntax-e _e97359745_)))
                                          (let ((_hd97399756_
                                                 (##car _e97389753_))
                                                (_tl97409758_
                                                 (##cdr _e97389753_)))
                                            (if (eq? (gx#stx-e _hd97399756_)
                                                     'runtime:)
                                                (if (gx#stx-pair? _tl97409758_)
                                                    (let ((_e97419761_
                                                           (gx#syntax-e
                                                            _tl97409758_)))
                                                      (let ((_hd97429764_
                                                             (##car _e97419761_))
                                                            (_tl97439766_
                                                             (##cdr _e97419761_)))
                                                        (let ((_top9769_
                                                               _hd97429764_))
                                                          (let ((_spath9771_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl97439766_))
                    (if '#t '#t (_E97379749_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E97379749_))
                                                (_E97379749_))))
                                        (_E97379749_)))))
                             (let () (_E97369773_))))))))
                (let ((_import-spec-source9439_
                       (lambda (_spath9505_)
                         (gx#core-import-nested-module
                          _spath9505_
                          _stx9428_))))
                  (let ((_import!9440_
                         (lambda (_rbody9453_)
                           (let ((_current-ctx9455_
                                  (gx#current-expander-context)))
                             (let ((_deps9456_ (make-hash-table-eq)))
                               (let ((_bind!9457_
                                      (lambda (_hd9503_)
                                        (begin
                                          (gx#core-bind-import!__1
                                           _hd9503_
                                           _current-ctx9455_)
                                          (if (if (fxpositive?
                                                   (##structure-ref
                                                    _hd9503_
                                                    '3
                                                    gx#module-import::t
                                                    '#f))
                                                  (fxzero? (##structure-ref
                                                            (##structure-ref
                                                             _hd9503_
                                                             '1
                                                             gx#module-import::t
                                                             '#f)
                                                            '3
                                                            gx#module-export::t
                                                            '#f))
                                                  '#f)
                                              (table-set!
                                               _deps9456_
                                               (##structure-ref
                                                (##structure-ref
                                                 _hd9503_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)
                                                '1
                                                gx#module-export::t
                                                '#f)
                                               '#t)
                                              '#!void)))))
                                 (let ((_fold-e9458_
                                        (lambda (_in9500_ _r9501_)
                                          (if (##structure-direct-instance-of?
                                               _in9500_
                                               'gx#module-import::t)
                                              (cons _in9500_ _r9501_)
                                              (if (##structure-direct-instance-of?
                                                   _in9500_
                                                   'gx#import-set::t)
                                                  (foldl1 cons
                                                          _r9501_
                                                          (##structure-ref
                                                           _in9500_
                                                           '3
                                                           gx#import-set::t
                                                           '#f))
                                                  _r9501_)))))
                                   ((letrec ((_lp9460_
                                              (lambda (_rest9462_ _body9463_)
                                                (let ((_rest94649472_
                                                       _rest9462_))
                                                  (let ((_E94679476_
                                                         (lambda ()
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _rest94649472_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_else94669482_
                                                           (lambda ()
                                                             (begin
                                                               (if (##structure-instance-of?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _current-ctx9455_
                            'gx#module-context::t)
                           (##structure-set!
                            _current-ctx9455_
                            (foldl1 _fold-e9458_
                                    (##structure-ref
                                     _current-ctx9455_
                                     '8
                                     gx#module-context::t
                                     '#f)
                                    _body9463_)
                            '8
                            gx#module-context::t
                            '#f)
                           '#!void)
                       (table-for-each
                        (lambda (_ctx9480_ _g11064_)
                          (gx#eval-module _ctx9480_))
                        _deps9456_)
                       _body9463_))))
              (let ((_K94689488_
                     (lambda (_rest9485_ _hd9486_)
                       (begin
                         (if (##structure-direct-instance-of?
                              _hd9486_
                              'gx#module-import::t)
                             (_bind!9457_ _hd9486_)
                             (if (##structure-direct-instance-of?
                                  _hd9486_
                                  'gx#import-set::t)
                                 (for-each
                                  _bind!9457_
                                  (##structure-ref
                                   _hd9486_
                                   '3
                                   gx#import-set::t
                                   '#f))
                                 (if (##structure-instance-of?
                                      _hd9486_
                                      'gx#module-context::t)
                                     '#!void
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Unexpected import"
                                      _stx9428_
                                      _hd9486_))))
                         (_lp9460_ _rest9485_ (cons _hd9486_ _body9463_))))))
                (if (##pair? _rest94649472_)
                    (let ((_hd94699491_ (##car _rest94649472_))
                          (_tl94709493_ (##cdr _rest94649472_)))
                      (let ((_hd9496_ _hd94699491_))
                        (let ((_rest9498_ _tl94709493_))
                          (_K94689488_ _rest9498_ _hd9496_))))
                    (_else94669482_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _lp9460_)
                                    _rbody9453_
                                    '()))))))))
                    (let ((_expanded-import?9441_
                           (lambda (_e9445_)
                             (let ((_$e9447_
                                    (##structure-direct-instance-of?
                                     _e9445_
                                     'gx#import-set::t)))
                               (if _$e9447_
                                   _$e9447_
                                   (let ((_$e9450_
                                          (##structure-direct-instance-of?
                                           _e9445_
                                           'gx#module-import::t)))
                                     (if _$e9450_
                                         _$e9450_
                                         (##structure-instance-of?
                                          _e9445_
                                          'gx#module-context::t))))))))
                      (let ((_import-submodule9436_
                             (lambda (_hd9701_ _K9702_ _rest9703_ _r9704_)
                               (let ((_e97059712_ _hd9701_))
                                 (let ((_E97079716_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _e97059712_))))
                                   (let ((_E97069730_
                                          (lambda ()
                                            (if (gx#stx-pair? _e97059712_)
                                                (let ((_e97089720_
                                                       (gx#syntax-e
                                                        _e97059712_)))
                                                  (let ((_hd97099723_
                                                         (##car _e97089720_))
                                                        (_tl97109725_
                                                         (##cdr _e97089720_)))
                                                    (let ((_spath9728_
                                                           _tl97109725_))
                                                      (if '#t
                                                          (_import19432_
                                                           (_import-spec-source9439_
                                                            _spath9728_)
                                                           _K9702_
                                                           _rest9703_
                                                           _r9704_)
                                                          (_E97079716_)))))
                                                (_E97079716_)))))
                                     (let () (_E97069730_))))))))
                        (let ((_import-runtime9437_
                               (lambda (_hd9668_ _K9669_ _rest9670_ _r9671_)
                                 (let ((_e96729679_ _hd9668_))
                                   (let ((_E96749683_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _e96729679_))))
                                     (let ((_E96739697_
                                            (lambda ()
                                              (if (gx#stx-pair? _e96729679_)
                                                  (let ((_e96759687_
                                                         (gx#syntax-e
                                                          _e96729679_)))
                                                    (let ((_hd96769690_
                                                           (##car _e96759687_))
                                                          (_tl96779692_
                                                           (##cdr _e96759687_)))
                                                      (let ((_spath9695_
                                                             _tl96779692_))
                                                        (if '#t
                                                            (_K9669_ _rest9670_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (_import-spec-source9439_ _spath9695_)
                                   _r9671_))
                    (_E96749683_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E96749683_)))))
                                       (let () (_E96739697_))))))))
                          (let ((_import-spec9438_
                                 (lambda (_hd9507_ _K9508_ _rest9509_ _r9510_)
                                   (let ((_e95119528_ _hd9507_))
                                     (let ((_E95209532_
                                            (lambda ()
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _e95119528_))))
                                       (let ((_E95139642_
                                              (lambda ()
                                                (if (gx#stx-pair? _e95119528_)
                                                    (let ((_e95219536_
                                                           (gx#syntax-e
                                                            _e95119528_)))
                                                      (let ((_hd95229539_
                                                             (##car _e95219536_))
                                                            (_tl95239541_
                                                             (##cdr _e95219536_)))
                                                        (if (gx#stx-pair?
                                                             _tl95239541_)
                                                            (let ((_e95249544_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl95239541_)))
                      (let ((_hd95259547_ (##car _e95249544_))
                            (_tl95269549_ (##cdr _e95249544_)))
                        (let ((_path9552_ _hd95259547_))
                          (let ((_specs9554_ _tl95269549_))
                            (if '#t
                                (let ((_src-ctx9556_
                                       (_import-spec-source9439_ _path9552_))
                                      (_exports9557_ (make-table))
                                      (_specs9558_
                                       (gx#syntax->list _specs9554_)))
                                  (begin
                                    (for-each
                                     (lambda (_out9560_)
                                       (table-set!
                                        _exports9557_
                                        (cons (##structure-ref
                                               _out9560_
                                               '3
                                               gx#module-export::t
                                               '#f)
                                              (##structure-ref
                                               _out9560_
                                               '4
                                               gx#module-export::t
                                               '#f))
                                        _out9560_))
                                     (##structure-ref
                                      _src-ctx9556_
                                      '9
                                      gx#module-context::t
                                      '#f))
                                    (_K9508_ _rest9509_
                                             (foldl1 (lambda (_spec9562_
                                                              _r9563_)
                                                       (let ((_e95649580_
                                                              _spec9562_))
                                                         (let ((_E95669584_
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _e95649580_))))
                   (let ((_E95659638_
                          (lambda ()
                            (if (gx#stx-pair? _e95649580_)
                                (let ((_e95679588_ (gx#syntax-e _e95649580_)))
                                  (let ((_hd95689591_ (##car _e95679588_))
                                        (_tl95699593_ (##cdr _e95679588_)))
                                    (let ((_phi9596_ _hd95689591_))
                                      (if (gx#stx-pair? _tl95699593_)
                                          (let ((_e95709598_
                                                 (gx#syntax-e _tl95699593_)))
                                            (let ((_hd95719601_
                                                   (##car _e95709598_))
                                                  (_tl95729603_
                                                   (##cdr _e95709598_)))
                                              (let ((_name9606_ _hd95719601_))
                                                (if (gx#stx-pair? _tl95729603_)
                                                    (let ((_e95739608_
                                                           (gx#syntax-e
                                                            _tl95729603_)))
                                                      (let ((_hd95749611_
                                                             (##car _e95739608_))
                                                            (_tl95759613_
                                                             (##cdr _e95739608_)))
                                                        (let ((_src-phi9616_
                                                               _hd95749611_))
                                                          (if (gx#stx-pair?
                                                               _tl95759613_)
                                                              (let ((_e95769618_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl95759613_)))
                        (let ((_hd95779621_ (##car _e95769618_))
                              (_tl95789623_ (##cdr _e95769618_)))
                          (let ((_src-name9626_ _hd95779621_))
                            (if (gx#stx-null? _tl95789623_)
                                (if (if (gx#stx-fixnum? _src-phi9616_)
                                        (if (gx#identifier? _src-name9626_)
                                            (if (gx#stx-fixnum? _phi9596_)
                                                (gx#identifier? _name9606_)
                                                '#f)
                                            '#f)
                                        '#f)
                                    (let ((_src-phi9628_
                                           (gx#stx-e _src-phi9616_))
                                          (_src-name9629_
                                           (gx#core-identifier-key
                                            _src-name9626_))
                                          (_phi9630_ (gx#stx-e _phi9596_))
                                          (_name9631_
                                           (gx#core-identifier-key
                                            _name9606_)))
                                      (let ((_$e9633_
                                             (table-ref
                                              _exports9557_
                                              (cons _src-phi9628_
                                                    _src-name9629_)
                                              '#f)))
                                        (if _$e9633_
                                            ((lambda (_out9636_)
                                               (cons (gx#core-module-export->import__opt-lambda10324
                                                      _out9636_
                                                      _name9631_
                                                      (fx- _phi9630_
                                                           _src-phi9628_))
                                                     _r9563_))
                                             _$e9633_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; no matching export"
                                             _stx9428_
                                             _hd9507_))))
                                    (_E95669584_))
                                (_E95669584_)))))
                      (_E95669584_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E95669584_)))))
                                          (_E95669584_)))))
                                (_E95669584_)))))
                     (let () (_E95659638_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _r9510_
                                                     _specs9558_))))
                                (_E95209532_))))))
                    (_E95209532_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E95209532_)))))
                                         (let ((_E95129664_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _e95119528_)
                                                      (let ((_e95149646_
                                                             (gx#syntax-e
                                                              _e95119528_)))
                                                        (let ((_hd95159649_
                                                               (##car _e95149646_))
                                                              (_tl95169651_
                                                               (##cdr _e95149646_)))
                                                          (if (gx#stx-pair?
                                                               _tl95169651_)
                                                              (let ((_e95179654_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl95169651_)))
                        (let ((_hd95189657_ (##car _e95179654_))
                              (_tl95199659_ (##cdr _e95179654_)))
                          (let ((_path9662_ _hd95189657_))
                            (if (gx#stx-null? _tl95199659_)
                                (if '#t
                                    (_K9508_ _rest9509_
                                             (cons (_import-spec-source9439_
                                                    _path9662_)
                                                   _r9510_))
                                    (_E95139642_))
                                (_E95139642_)))))
                      (_E95139642_))))
              (_E95139642_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let () (_E95129664_)))))))))
                            (let ((_expand19431_
                                   (lambda (_hd9874_
                                            _K9875_
                                            _rest9876_
                                            _r9877_)
                                     (if (gx#core-bound-module? _hd9874_)
                                         (_import19432_
                                          (gx#syntax-local-e__0 _hd9874_)
                                          _K9875_
                                          _rest9876_
                                          _r9877_)
                                         (if (gx#core-library-module-path?
                                              _hd9874_)
                                             (_import19432_
                                              (gx#import-module__0
                                               (gx#core-resolve-library-module-path
                                                _hd9874_))
                                              _K9875_
                                              _rest9876_
                                              _r9877_)
                                             (if (gx#stx-string? _hd9874_)
                                                 (_import19432_
                                                  (gx#import-module__0
                                                   (gx#core-resolve-module-path__opt-lambda10678
                                                    _hd9874_
                                                    (gx#stx-source _stx9428_)))
                                                  _K9875_
                                                  _rest9876_
                                                  _r9877_)
                                                 (if (##structure-instance-of?
                                                      (gx#stx-e _hd9874_)
                                                      'gx#module-context::t)
                                                     (_K9875_ _rest9876_
                                                              (cons (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd9874_)
                            _r9877_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (_import-spec?9433_
                                                          _hd9874_)
                                                         (_import-spec9438_
                                                          _hd9874_
                                                          _K9875_
                                                          _rest9876_
                                                          _r9877_)
                                                         (if (_import-submodule?9434_
                                                              _hd9874_)
                                                             (_import-submodule9436_
                                                              _hd9874_
                                                              _K9875_
                                                              _rest9876_
                                                              _r9877_)
                                                             (if (_import-runtime?9435_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd9874_)
                         (_import-runtime9437_
                          _hd9874_
                          _K9875_
                          _rest9876_
                          _r9877_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; illegal import"
                          _stx9428_
                          _hd9874_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (let ((_rbody9443_
                                     (gx#core-expand-import/export
                                      _stx9428_
                                      _expanded-import?9441_
                                      'apply-import-expander
                                      gx#current-import-expander-phi
                                      _expand19431_)))
                                (if _internal-expand?9429_
                                    (reverse _rbody9443_)
                                    (gx#core-quote-syntax__1
                                     (gx#core-cons
                                      '%#import
                                      (_import!9440_ _rbody9443_))
                                     (gx#stx-source _stx9428_)))))))))))))))))
    (begin
      (define gx#core-expand-import%__0
        (lambda (_stx9882_)
          (let ((_internal-expand?9884_ '#f))
            (gx#core-expand-import%__opt-lambda9426
             _stx9882_
             _internal-expand?9884_))))
      (define gx#core-expand-import%
        (lambda _g11066_
          (let ((_g11065_ (length _g11066_)))
            (cond ((fx= _g11065_ 1) (apply gx#core-expand-import%__0 _g11066_))
                  ((fx= _g11065_ 2)
                   (apply gx#core-expand-import%__opt-lambda9426 _g11066_))
                  (else (error "No clause matching arguments" _g11066_))))))))
  (define gx#core-import-nested-module
    (lambda (_spath9355_ _where9356_)
      (let ((_e93579364_ _spath9355_))
        (let ((_E93599368_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e93579364_))))
          (let ((_E93589423_
                 (lambda ()
                   (if (gx#stx-pair? _e93579364_)
                       (let ((_e93609372_ (gx#syntax-e _e93579364_)))
                         (let ((_hd93619375_ (##car _e93609372_))
                               (_tl93629377_ (##cdr _e93609372_)))
                           (let ((_origin9380_ _hd93619375_))
                             (let ((_sub9382_ _tl93629377_))
                               (if '#t
                                   (let ((_origin-ctx9384_
                                          (if (gx#stx-false? _origin9380_)
                                              (gx#current-expander-context)
                                              (gx#import-module__0
                                               _origin9380_))))
                                     ((letrec ((_lp9386_
                                                (lambda (_rest9388_ _ctx9389_)
                                                  (let ((_e93909397_
                                                         _rest9388_))
                                                    (let ((_E93929401_
                                                           (lambda ()
                                                             _ctx9389_)))
                                                      (let ((_E93919419_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _e93909397_)
                           (let ((_e93939405_ (gx#syntax-e _e93909397_)))
                             (let ((_hd93949408_ (##car _e93939405_))
                                   (_tl93959410_ (##cdr _e93939405_)))
                               (let ((_id9413_ _hd93949408_))
                                 (let ((_rest9415_ _tl93959410_))
                                   (if '#t
                                       (let ((_bind9417_
                                              (gx#resolve-identifier__opt-lambda4494
                                               _id9413_
                                               '0
                                               _ctx9389_)))
                                         (begin
                                           (if (if (##structure-direct-instance-of?
                                                    _bind9417_
                                                    'gx#syntax-binding::t)
                                                   (##structure-instance-of?
                                                    (##structure-ref
                                                     _bind9417_
                                                     '4
                                                     gx#syntax-binding::t
                                                     '#f)
                                                    'gx#module-context::t)
                                                   '#f)
                                               '#!void
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; not bound as module"
                                                _where9356_
                                                _spath9355_
                                                _id9413_))
                                           (_lp9386_
                                            _rest9415_
                                            (##structure-ref
                                             _bind9417_
                                             '4
                                             gx#syntax-binding::t
                                             '#f))))
                                       (_E93929401_))))))
                           (_E93929401_)))))
                (let () (_E93919419_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _lp9386_)
                                      _sub9382_
                                      _origin-ctx9384_))
                                   (_E93599368_))))))
                       (_E93599368_)))))
            (let () (_E93589423_)))))))
  (define gx#core-expand-import-source
    (lambda (_hd9353_)
      (gx#core-expand-import%__opt-lambda9426
       (cons 'import-internal% (cons _hd9353_ '()))
       '#t)))
  (begin
    (define gx#core-expand-export%__opt-lambda8935
      (lambda (_stx8937_ _internal-expand?8938_)
        (let ((_make-export8940_
               (let ((_opt-lambda92999314_
                      (lambda (_bind9301_ _phi9302_ _ctx9303_ _name9304_)
                        (let ((_key9306_
                               (##structure-ref
                                _bind9301_
                                '2
                                gx#binding::t
                                '#f)))
                          (let ((_export-key9308_
                                 (if _name9304_
                                     (gx#core-identifier-key _name9304_)
                                     _key9306_)))
                            (let ()
                              (##structure
                               gx#module-export::t
                               _ctx9303_
                               _key9306_
                               _phi9302_
                               _export-key9308_
                               (let ((_$e9311_
                                      (##structure-instance-of?
                                       _bind9301_
                                       'gx#extern-binding::t)))
                                 (if _$e9311_
                                     _$e9311_
                                     (##structure-direct-instance-of?
                                      _bind9301_
                                      'gx#import-binding::t))))))))))
                 (lambda _g11068_
                   (let ((_g11067_ (length _g11068_)))
                     (cond ((fx= _g11067_ 1)
                            (apply (lambda (_bind9317_)
                                     (let ((_phi9319_
                                            (gx#current-export-expander-phi)))
                                       (let ((_ctx9321_
                                              (gx#current-expander-context)))
                                         (let ((_name9323_ '#f))
                                           (_opt-lambda92999314_
                                            _bind9317_
                                            _phi9319_
                                            _ctx9321_
                                            _name9323_)))))
                                   _g11068_))
                           ((fx= _g11067_ 2)
                            (apply (lambda (_bind9325_ _phi9326_)
                                     (let ((_ctx9328_
                                            (gx#current-expander-context)))
                                       (let ((_name9330_ '#f))
                                         (_opt-lambda92999314_
                                          _bind9325_
                                          _phi9326_
                                          _ctx9328_
                                          _name9330_))))
                                   _g11068_))
                           ((fx= _g11067_ 3)
                            (apply (lambda (_bind9332_ _phi9333_ _ctx9334_)
                                     (let ((_name9336_ '#f))
                                       (_opt-lambda92999314_
                                        _bind9332_
                                        _phi9333_
                                        _ctx9334_
                                        _name9336_)))
                                   _g11068_))
                           ((fx= _g11067_ 4)
                            (apply _opt-lambda92999314_ _g11068_))
                           (else
                            (error "No clause matching arguments"
                                   _g11068_))))))))
          (let ((_export-imports8942_
                 (lambda (_src8963_ _r8964_)
                   (let ((_current-ctx8966_ (gx#current-expander-context)))
                     (let ((_current-phi8967_
                            (gx#current-export-expander-phi)))
                       (let ((_import->export8968_
                              (lambda (_in8976_)
                                (let ((_in89778985_ _in8976_))
                                  (let ((_E89798989_
                                         (lambda ()
                                           (error '"No clause matching"
                                                  _in89778985_))))
                                    (let ((_K89808996_
                                           (lambda (_phi8992_
                                                    _key8993_
                                                    _out8994_)
                                             (if (fx= _phi8992_
                                                      _current-phi8967_)
                                                 (if (eq? _src8963_
                                                          (##structure-ref
                                                           _out8994_
                                                           '1
                                                           gx#module-export::t
                                                           '#f))
                                                     (##structure
                                                      gx#module-export::t
                                                      _current-ctx8966_
                                                      _key8993_
                                                      _phi8992_
                                                      _key8993_
                                                      '#t)
                                                     '#f)
                                                 '#f))))
                                      (if (direct-struct-instance?
                                           gx#module-import::t
                                           _in89778985_)
                                          (let ((_e89818999_
                                                 (##vector-ref
                                                  _in89778985_
                                                  '1)))
                                            (let ((_out9002_ _e89818999_))
                                              (let ((_e89829004_
                                                     (##vector-ref
                                                      _in89778985_
                                                      '2)))
                                                (let ((_key9007_ _e89829004_))
                                                  (let ((_e89839009_
                                                         (##vector-ref
                                                          _in89778985_
                                                          '3)))
                                                    (let ((_phi9012_
                                                           _e89839009_))
                                                      (_K89808996_
                                                       _phi9012_
                                                       _key9007_
                                                       _out9002_)))))))
                                          (_E89798989_))))))))
                         (let ((_fold-e8969_
                                (lambda (_in8971_ _r8972_)
                                  (let ((_out8974_
                                         (_import->export8968_ _in8971_)))
                                    (if _out8974_
                                        (cons _out8974_ _r8972_)
                                        _r8972_)))))
                           (cons (##structure
                                  gx#export-set::t
                                  _src8963_
                                  _current-phi8967_
                                  (foldl1 _fold-e8969_
                                          '()
                                          (##structure-ref
                                           _current-ctx8966_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                 _r8964_))))))))
            (let ((_export!8943_
                   (lambda (_rbody8953_)
                     (let ((_current-ctx8955_ (gx#current-expander-context)))
                       (let ((_fold-e8956_
                              (lambda (_out8960_ _r8961_)
                                (if (##structure-direct-instance-of?
                                     _out8960_
                                     'gx#module-export::t)
                                    (cons _out8960_ _r8961_)
                                    (if (##structure-direct-instance-of?
                                         _out8960_
                                         'gx#export-set::t)
                                        (foldl1 cons
                                                _r8961_
                                                (##structure-ref
                                                 _out8960_
                                                 '3
                                                 gx#export-set::t
                                                 '#f))
                                        _r8961_)))))
                         (let ((_body8958_ (reverse _rbody8953_)))
                           (begin
                             (##structure-set!
                              _current-ctx8955_
                              (foldl1 _fold-e8956_
                                      (##structure-ref
                                       _current-ctx8955_
                                       '9
                                       gx#module-context::t
                                       '#f)
                                      _body8958_)
                              '9
                              gx#module-context::t
                              '#f)
                             _body8958_)))))))
              (let ((_expanded-export?8944_
                     (lambda (_e8948_)
                       (let ((_$e8950_
                              (##structure-direct-instance-of?
                               _e8948_
                               'gx#module-export::t)))
                         (if _$e8950_
                             _$e8950_
                             (##structure-direct-instance-of?
                              _e8948_
                              'gx#export-set::t))))))
                (let ((_expand18941_
                       (lambda (_hd9014_ _K9015_ _rest9016_ _r9017_)
                         (let ((_e90189050_ _hd9014_))
                           (let ((_E90459054_
                                  (lambda ()
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; illegal export"
                                     _stx8937_
                                     _hd9014_))))
                             (let ((_E90359133_
                                    (lambda ()
                                      (if (gx#stx-pair? _e90189050_)
                                          (let ((_e90469058_
                                                 (gx#syntax-e _e90189050_)))
                                            (let ((_hd90479061_
                                                   (##car _e90469058_))
                                                  (_tl90489063_
                                                   (##cdr _e90469058_)))
                                              (if (eq? (gx#stx-e _hd90479061_)
                                                       'import:)
                                                  (let ((_in9066_
                                                         _tl90489063_))
                                                    (if (gx#stx-list? _in9066_)
                                                        ((letrec ((_lp9068_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_in-rest9070_ _r9071_)
                             (let ((_e90729079_ _in-rest9070_))
                               (let ((_E90749083_
                                      (lambda ()
                                        (_K9015_ _rest9016_ _r9071_))))
                                 (let ((_E90739129_
                                        (lambda ()
                                          (if (gx#stx-pair? _e90729079_)
                                              (let ((_e90759087_
                                                     (gx#syntax-e
                                                      _e90729079_)))
                                                (let ((_hd90769090_
                                                       (##car _e90759087_))
                                                      (_tl90779092_
                                                       (##cdr _e90759087_)))
                                                  (let ((_hd9095_
                                                         _hd90769090_))
                                                    (let ((_in-rest9097_
                                                           _tl90779092_))
                                                      (if '#t
                                                          (let ((_src9127_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#core-bound-module? _hd9095_)
                             (gx#syntax-local-e__0 _hd9095_)
                             (if (gx#core-library-module-path? _hd9095_)
                                 (gx#import-module__0
                                  (gx#core-resolve-library-module-path
                                   _hd9095_))
                                 (if (gx#stx-string? _hd9095_)
                                     (gx#import-module__0
                                      (gx#core-resolve-module-path__opt-lambda10678
                                       _hd9095_
                                       (gx#stx-source _stx8937_)))
                                     (let ((_e90989105_ _hd9095_))
                                       (let ((_E91009109_
                                              (lambda ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; illegal re-export"
                                                 _stx8937_
                                                 _hd9095_))))
                                         (let ((_E90999123_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _e90989105_)
                                                      (let ((_e91019113_
                                                             (gx#syntax-e
                                                              _e90989105_)))
                                                        (let ((_hd91029116_
                                                               (##car _e91019113_))
                                                              (_tl91039118_
                                                               (##cdr _e91019113_)))
                                                          (if (eq? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd91029116_)
                           'in:)
                      (let ((_spath9121_ _tl91039118_))
                        (if '#t
                            (gx#core-import-nested-module
                             _spath9121_
                             _stx8937_)
                            (_E91009109_)))
                      (_E91009109_))))
              (_E91009109_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let () (_E90999123_))))))))))
                    (_lp9068_
                     _in-rest9097_
                     (_export-imports8942_ _src9127_ _r9071_)))
                  (_E90749083_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E90749083_)))))
                                   (let () (_E90739129_))))))))
                   _lp9068_)
                 _in9066_
                 _r9017_)
                (_E90459054_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E90459054_))))
                                          (_E90459054_)))))
                               (let ((_E90229172_
                                      (lambda ()
                                        (if (gx#stx-pair? _e90189050_)
                                            (let ((_e90369137_
                                                   (gx#syntax-e _e90189050_)))
                                              (let ((_hd90379140_
                                                     (##car _e90369137_))
                                                    (_tl90389142_
                                                     (##cdr _e90369137_)))
                                                (if (eq? (gx#stx-e
                                                          _hd90379140_)
                                                         'rename:)
                                                    (if (gx#stx-pair?
                                                         _tl90389142_)
                                                        (let ((_e90399145_
                                                               (gx#syntax-e
                                                                _tl90389142_)))
                                                          (let ((_hd90409148_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e90399145_))
                        (_tl90419150_ (##cdr _e90399145_)))
                    (let ((_id9153_ _hd90409148_))
                      (if (gx#stx-pair? _tl90419150_)
                          (let ((_e90429155_ (gx#syntax-e _tl90419150_)))
                            (let ((_hd90439158_ (##car _e90429155_))
                                  (_tl90449160_ (##cdr _e90429155_)))
                              (let ((_name9163_ _hd90439158_))
                                (if (gx#stx-null? _tl90449160_)
                                    (if '#t
                                        (let ((_phi9165_
                                               (gx#current-export-expander-phi)))
                                          (let ((_$e9167_
                                                 (gx#core-resolve-identifier__1
                                                  _id9153_
                                                  _phi9165_)))
                                            (if _$e9167_
                                                ((lambda (_bind9170_)
                                                   (_K9015_ _rest9016_
                                                            (cons (_make-export8940_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _bind9170_
                           _phi9165_
                           (gx#current-expander-context)
                           _name9163_)
                          _r9017_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _$e9167_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Reference to unbound identifier"
                                                 _stx8937_
                                                 _hd9014_
                                                 _id9153_))))
                                        (_E90359133_))
                                    (_E90359133_)))))
                          (_E90359133_)))))
                (_E90359133_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E90359133_))))
                                            (_E90359133_)))))
                                 (let ((_E90219221_
                                        (lambda ()
                                          (if (gx#stx-pair? _e90189050_)
                                              (let ((_e90239176_
                                                     (gx#syntax-e
                                                      _e90189050_)))
                                                (let ((_hd90249179_
                                                       (##car _e90239176_))
                                                      (_tl90259181_
                                                       (##cdr _e90239176_)))
                                                  (if (eq? (gx#stx-e
                                                            _hd90249179_)
                                                           'spec:)
                                                      (if (gx#stx-pair?
                                                           _tl90259181_)
                                                          (let ((_e90269184_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl90259181_)))
                    (let ((_hd90279187_ (##car _e90269184_))
                          (_tl90289189_ (##cdr _e90269184_)))
                      (let ((_phi9192_ _hd90279187_))
                        (if (gx#stx-pair? _tl90289189_)
                            (let ((_e90299194_ (gx#syntax-e _tl90289189_)))
                              (let ((_hd90309197_ (##car _e90299194_))
                                    (_tl90319199_ (##cdr _e90299194_)))
                                (let ((_id9202_ _hd90309197_))
                                  (if (gx#stx-pair? _tl90319199_)
                                      (let ((_e90329204_
                                             (gx#syntax-e _tl90319199_)))
                                        (let ((_hd90339207_
                                               (##car _e90329204_))
                                              (_tl90349209_
                                               (##cdr _e90329204_)))
                                          (let ((_name9212_ _hd90339207_))
                                            (if (gx#stx-null? _tl90349209_)
                                                (if (if (gx#stx-fixnum?
                                                         _phi9192_)
                                                        (if (gx#identifier?
                                                             _id9202_)
                                                            (gx#identifier?
                                                             _name9212_)
                                                            '#f)
                                                        '#f)
                                                    (let ((_phi9214_
                                                           (gx#stx-e
                                                            _phi9192_)))
                                                      (let ((_$e9216_
                                                             (gx#core-resolve-identifier__1
                                                              _id9202_
                                                              _phi9214_)))
                                                        (if _$e9216_
                                                            ((lambda (_bind9219_)
                                                               (_K9015_ _rest9016_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (_make-export8940_
                                       _bind9219_
                                       _phi9214_
                                       (gx#current-expander-context)
                                       _name9212_)
                                      _r9017_)))
                     _$e9216_)
                    (gx#raise-syntax-error
                     '#f
                     '"Reference to unbound identifier"
                     _stx8937_
                     _hd9014_
                     _id9202_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E90229172_))
                                                (_E90229172_)))))
                                      (_E90229172_)))))
                            (_E90229172_)))))
                  (_E90229172_))
              (_E90229172_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E90229172_)))))
                                   (let ((_E90209232_
                                          (lambda ()
                                            (let ((_id9225_ _e90189050_))
                                              (if (gx#identifier? _id9225_)
                                                  (let ((_$e9227_
                                                         (gx#core-resolve-identifier__1
                                                          _id9225_
                                                          (gx#current-export-expander-phi))))
                                                    (if _$e9227_
                                                        ((lambda (_bind9230_)
                                                           (_K9015_ _rest9016_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (_make-export8940_ _bind9230_) _r9017_)))
                 _$e9227_)
                (gx#raise-syntax-error
                 '#f
                 '"Reference to unbound identifier"
                 _stx8937_
                 _hd9014_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E90219221_))))))
                                     (let ((_E90199296_
                                            (lambda ()
                                              (if (eq? (gx#stx-e _e90189050_)
                                                       '#t)
                                                  (if '#t
                                                      (let ((_current-ctx9236_
                                                             (gx#current-expander-context)))
                                                        (let ((_current-phi9238_
                                                               (gx#current-export-expander-phi)))
                                                          (let ((_phi-ctx9240_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-context-shift
                          _current-ctx9236_
                          _current-phi9238_)))
                    (let ((_phi-bind9242_
                           (table->list
                            (##structure-ref
                             _phi-ctx9240_
                             '2
                             gx#expander-context::t
                             '#f))))
                      (let ()
                        ((letrec ((_lp9245_
                                   (lambda (_bind-rest9247_ _set9248_)
                                     (let ((_bind-rest92499259_
                                            _bind-rest9247_))
                                       (let ((_E92529263_
                                              (lambda ()
                                                (error '"No clause matching"
                                                       _bind-rest92499259_))))
                                         (let ((_else92519267_
                                                (lambda ()
                                                  (_K9015_ _rest9016_
                                                           (cons (##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          gx#export-set::t
                          '#f
                          _current-phi9238_
                          _set9248_)
                         _r9017_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_K92539277_
                                                  (lambda (_bind-rest9270_
                                                           _bind9271_
                                                           _key9272_)
                                                    (if (let ((_$e9274_
                                                               (##structure-direct-instance-of?
                                                                _bind9271_
                                                                'gx#import-binding::t)))
                                                          (if _$e9274_
                                                              _$e9274_
                                                              (gx#private-feature-binding?
                                                               _bind9271_)))
                                                        (_lp9245_
                                                         _bind-rest9270_
                                                         _set9248_)
                                                        (_lp9245_
                                                         _bind-rest9270_
                                                         (cons (_make-export8940_
                                                                _bind9271_
                                                                _current-phi9238_
                                                                _current-ctx9236_)
                                                               _set9248_))))))
                                             (if (##pair? _bind-rest92499259_)
                                                 (let ((_hd92549280_
                                                        (##car _bind-rest92499259_))
                                                       (_tl92559282_
                                                        (##cdr _bind-rest92499259_)))
                                                   (if (##pair? _hd92549280_)
                                                       (let ((_hd92569285_
                                                              (##car _hd92549280_))
                                                             (_tl92579287_
                                                              (##cdr _hd92549280_)))
                                                         (let ((_key9290_
                                                                _hd92569285_))
                                                           (let ((_bind9292_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl92579287_))
                     (let ((_bind-rest9294_ _tl92559282_))
                       (_K92539277_ _bind-rest9294_ _bind9292_ _key9290_)))))
               (_else92519267_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else92519267_)))))))))
                           _lp9245_)
                         _phi-bind9242_
                         '()))))))
              (_E90209232_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E90209232_)))))
                                       (let () (_E90199296_))))))))))))
                  (let ((_rbody8946_
                         (gx#core-expand-import/export
                          _stx8937_
                          gx#module-export?
                          'apply-export-expander
                          gx#current-export-expander-phi
                          _expand18941_)))
                    (if _internal-expand?8938_
                        (reverse _rbody8946_)
                        (gx#core-quote-syntax__1
                         (gx#core-cons '%#export (_export!8943_ _rbody8946_))
                         (gx#stx-source _stx8937_)))))))))))
    (begin
      (define gx#core-expand-export%__0
        (lambda (_stx9346_)
          (let ((_internal-expand?9348_ '#f))
            (gx#core-expand-export%__opt-lambda8935
             _stx9346_
             _internal-expand?9348_))))
      (define gx#core-expand-export%
        (lambda _g11070_
          (let ((_g11069_ (length _g11070_)))
            (cond ((fx= _g11069_ 1) (apply gx#core-expand-export%__0 _g11070_))
                  ((fx= _g11069_ 2)
                   (apply gx#core-expand-export%__opt-lambda8935 _g11070_))
                  (else (error "No clause matching arguments" _g11070_))))))))
  (define gx#core-expand-export-source
    (lambda (_hd8934_)
      (gx#core-expand-export%__opt-lambda8935
       (cons 'export-macro% (cons _hd8934_ '()))
       '#t)))
  (define gx#core-expand-provide%
    (lambda (_stx8904_)
      (let ((_e89058912_ _stx8904_))
        (let ((_E89078916_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e89058912_))))
          (let ((_E89068930_
                 (lambda ()
                   (if (gx#stx-pair? _e89058912_)
                       (let ((_e89088920_ (gx#syntax-e _e89058912_)))
                         (let ((_hd89098923_ (##car _e89088920_))
                               (_tl89108925_ (##cdr _e89088920_)))
                           (let ((_body8928_ _tl89108925_))
                             (if (gx#identifier-list? _body8928_)
                                 (begin
                                   (gx#stx-for-each1
                                    gx#core-bind-feature!
                                    _body8928_)
                                   (gx#core-quote-syntax__1
                                    (gx#core-cons
                                     '%#provide
                                     (gx#stx-map1
                                      gx#core-quote-syntax
                                      _body8928_))
                                    (gx#stx-source _stx8904_)))
                                 (_E89078916_)))))
                       (_E89078916_)))))
            (let () (_E89068930_)))))))
  (begin
    (define gx#core-bind-feature!__opt-lambda8868
      (lambda (_id8870_ _private?8871_ _phi8872_ _ctx8873_)
        (gx#core-bind-syntax!__opt-lambda5963
         _id8870_
         ((if _private?8871_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id8870_))
         _private?8871_
         _phi8872_
         _ctx8873_)))
    (begin
      (define gx#core-bind-feature!__0
        (lambda (_id8878_)
          (let ((_private?8880_ '#f))
            (let ((_phi8882_ (gx#current-expander-phi)))
              (let ((_ctx8884_ (gx#current-expander-context)))
                (gx#core-bind-feature!__opt-lambda8868
                 _id8878_
                 _private?8880_
                 _phi8882_
                 _ctx8884_))))))
      (define gx#core-bind-feature!__1
        (lambda (_id8886_ _private?8887_)
          (let ((_phi8889_ (gx#current-expander-phi)))
            (let ((_ctx8891_ (gx#current-expander-context)))
              (gx#core-bind-feature!__opt-lambda8868
               _id8886_
               _private?8887_
               _phi8889_
               _ctx8891_)))))
      (define gx#core-bind-feature!__2
        (lambda (_id8893_ _private?8894_ _phi8895_)
          (let ((_ctx8897_ (gx#current-expander-context)))
            (gx#core-bind-feature!__opt-lambda8868
             _id8893_
             _private?8894_
             _phi8895_
             _ctx8897_))))
      (define gx#core-bind-feature!
        (lambda _g11072_
          (let ((_g11071_ (length _g11072_)))
            (cond ((fx= _g11071_ 1) (apply gx#core-bind-feature!__0 _g11072_))
                  ((fx= _g11071_ 2) (apply gx#core-bind-feature!__1 _g11072_))
                  ((fx= _g11071_ 3) (apply gx#core-bind-feature!__2 _g11072_))
                  ((fx= _g11071_ 4)
                   (apply gx#core-bind-feature!__opt-lambda8868 _g11072_))
                  (else (error "No clause matching arguments" _g11072_)))))))))
