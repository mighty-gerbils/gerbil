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
    (lambda _$args11127_
      (apply make-struct-instance gx#module-import::t _$args11127_)))
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
    (lambda _$args11124_
      (apply make-struct-instance gx#module-export::t _$args11124_)))
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
    (lambda _$args11121_
      (apply make-struct-instance gx#import-set::t _$args11121_)))
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
    (lambda _$args11118_
      (apply make-struct-instance gx#export-set::t _$args11118_)))
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
    (lambda _$args11115_
      (apply make-struct-instance gx#import-expander::t _$args11115_)))
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
    (lambda _$args11112_
      (apply make-struct-instance gx#export-expander::t _$args11112_)))
  (define gx#current-import-expander-phi (make-parameter '#f))
  (define gx#current-export-expander-phi (make-parameter '#f))
  (define gx#module-context:::init!
    (lambda (_self11106_ _id11107_ _super11108_ _ns11109_ _path11110_)
      (direct-struct-instance-init!
       _self11106_
       _id11107_
       (make-hash-table-eq)
       _super11108_
       '#f
       '#f
       _ns11109_
       _path11110_
       '()
       '()
       '#f
       '#f)))
  (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
  (begin
    (define gx#prelude-context:::init!__opt-lambda11070
      (lambda (_self11072_ _ctx11073_ _root11074_)
        (let ((_super11082_
               (let ((_$e11076_ _root11074_))
                 (if _$e11076_
                     _$e11076_
                     (let ((_$e11079_ (gx#core-context-root__0)))
                       (if _$e11079_
                           _$e11079_
                           (make-struct-instance gx#root-context::t)))))))
          (if _ctx11073_
              (let ((_id11085_
                     (##structure-ref
                      _ctx11073_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path11086_
                     (##structure-ref _ctx11073_ '7 gx#module-context::t '#f))
                    (_in11087_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx11073_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e11088_
                     (make-promise (lambda () (gx#eval-module _ctx11073_)))))
                (begin
                  (direct-struct-instance-init!
                   _self11072_
                   _id11085_
                   (make-hash-table-eq)
                   _super11082_
                   '#f
                   '#f
                   _path11086_
                   _in11087_
                   _e11088_)
                  (for-each
                   (lambda (_g1108911091_)
                     (gx#core-bind-weak-import!__opt-lambda10595
                      _g1108911091_
                      _self11072_))
                   _in11087_)))
              (direct-struct-instance-init!
               _self11072_
               '#f
               (make-hash-table-eq)
               _super11082_
               '#f
               '#f
               '#f
               '()
               '#f)))))
    (begin
      (define gx#prelude-context:::init!__0
        (lambda (_self11097_ _ctx11098_)
          (let ((_root11100_ '#f))
            (gx#prelude-context:::init!__opt-lambda11070
             _self11097_
             _ctx11098_
             _root11100_))))
      (define gx#prelude-context:::init!
        (lambda _g11143_
          (let ((_g11142_ (length _g11143_)))
            (cond ((fx= _g11142_ 2)
                   (apply gx#prelude-context:::init!__0 _g11143_))
                  ((fx= _g11142_ 3)
                   (apply gx#prelude-context:::init!__opt-lambda11070
                          _g11143_))
                  (else (error "No clause matching arguments" _g11143_))))))))
  (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
  (define gx#import-expander:::init!
    (lambda (_self11068_ _e11069_)
      (direct-struct-instance-init!
       _self11068_
       _e11069_
       (gx#current-expander-context)
       (fx- (gx#current-expander-phi) '1))))
  (bind-method! gx#import-expander::t ':init! gx#import-expander:::init! '#f)
  (define gx#export-expander:::init!
    (lambda (_self11065_ _e11066_)
      (direct-struct-instance-init!
       _self11065_
       _e11066_
       (gx#current-expander-context)
       (fx- (gx#current-expander-phi) '1))))
  (bind-method! gx#export-expander::t ':init! gx#export-expander:::init! '#f)
  (define gx#import-expander::apply-import-expander
    (lambda (_g1105711060_ _g1105811062_)
      (gx#core-apply-user-expander__opt-lambda4623
       _g1105711060_
       _g1105811062_
       'apply-import-expander)))
  (bind-method!
   gx#import-expander::t
   'apply-import-expander
   gx#import-expander::apply-import-expander
   '#f)
  (define gx#export-expander::apply-export-expander
    (lambda (_g1105011053_ _g1105111055_)
      (gx#core-apply-user-expander__opt-lambda4623
       _g1105011053_
       _g1105111055_
       'apply-export-expander)))
  (bind-method!
   gx#export-expander::t
   'apply-export-expander
   gx#export-expander::apply-export-expander
   '#f)
  (define gx#module-source-path
    (lambda (_ctx11044_)
      (let ((_path11046_
             (##structure-ref _ctx11044_ '7 gx#module-context::t '#f)))
        (let ((_path11048_
               (if (pair? _path11046_) (last _path11046_) _path11046_)))
          (let () (if (string? _path11048_) _path11048_ '#f))))))
  (begin
    (define gx#import-module__opt-lambda11018
      (lambda (_path11020_ _reload?11021_ _eval?11022_)
        (let ((_ctx11024_
               ((gx#current-expander-module-import)
                _path11020_
                _reload?11021_)))
          (begin
            (if (if _ctx11024_ _eval?11022_ '#f)
                (gx#eval-module _ctx11024_)
                '#!void)
            _ctx11024_))))
    (begin
      (define gx#import-module__0
        (lambda (_path11029_)
          (let ((_reload?11031_ '#f))
            (let ((_eval?11033_ '#f))
              (gx#import-module__opt-lambda11018
               _path11029_
               _reload?11031_
               _eval?11033_)))))
      (define gx#import-module__1
        (lambda (_path11035_ _reload?11036_)
          (let ((_eval?11038_ '#f))
            (gx#import-module__opt-lambda11018
             _path11035_
             _reload?11036_
             _eval?11038_))))
      (define gx#import-module
        (lambda _g11145_
          (let ((_g11144_ (length _g11145_)))
            (cond ((fx= _g11144_ 1) (apply gx#import-module__0 _g11145_))
                  ((fx= _g11144_ 2) (apply gx#import-module__1 _g11145_))
                  ((fx= _g11144_ 3)
                   (apply gx#import-module__opt-lambda11018 _g11145_))
                  (else (error "No clause matching arguments" _g11145_))))))))
  (define gx#eval-module
    (lambda (_mod11017_) ((gx#current-expander-module-eval) _mod11017_)))
  (define gx#core-eval-module
    (lambda (_obj11002_)
      (let ((_force-e11004_
             (lambda (_getf11013_ _e11014_)
               (call-with-parameters
                (lambda () (force (_getf11013_ _e11014_)))
                gx#current-expander-context
                _e11014_
                gx#current-expander-phi
                '0))))
        ((letrec ((_recur11006_
                   (lambda (_e11008_)
                     (if (##structure-instance-of?
                          _e11008_
                          'gx#module-context::t)
                         (begin
                           (let ((_$e11010_
                                  (gx#core-context-prelude__opt-lambda10983
                                   _e11008_)))
                             (if _$e11010_ (_recur11006_ _$e11010_) '#!void))
                           (_force-e11004_ gx#module-context-e _e11008_))
                         (if (##structure-instance-of?
                              _e11008_
                              'gx#prelude-context::t)
                             (_force-e11004_ gx#prelude-context-e _e11008_)
                             (if (gx#stx-string? _e11008_)
                                 (_recur11006_
                                  (gx#import-module__0
                                   (gx#core-resolve-module-path__0 _e11008_)))
                                 (if (gx#core-library-module-path? _e11008_)
                                     (_recur11006_
                                      (gx#import-module__0
                                       (gx#core-resolve-library-module-path
                                        _e11008_)))
                                     (error '"Cannot eval module"
                                            _obj11002_))))))))
           _recur11006_)
         _obj11002_))))
  (begin
    (define gx#core-context-prelude__opt-lambda10983
      (lambda (_ctx10985_)
        ((letrec ((_lp10987_
                   (lambda (_e10989_)
                     (if (let ((_$e10991_
                                (##structure-instance-of?
                                 _e10989_
                                 'gx#module-context::t)))
                           (if _$e10991_
                               _$e10991_
                               (##structure-instance-of?
                                _e10989_
                                'gx#local-context::t)))
                         (_lp10987_
                          (##structure-ref _e10989_ '3 gx#phi-context::t '#f))
                         (if (##structure-instance-of?
                              _e10989_
                              'gx#prelude-context::t)
                             _e10989_
                             '#f)))))
           _lp10987_)
         _ctx10985_)))
    (begin
      (define gx#core-context-prelude__0
        (lambda ()
          (let ((_ctx10998_ (gx#current-expander-context)))
            (gx#core-context-prelude__opt-lambda10983 _ctx10998_))))
      (define gx#core-context-prelude
        (lambda _g11147_
          (let ((_g11146_ (length _g11147_)))
            (cond ((fx= _g11146_ 0)
                   (apply gx#core-context-prelude__0 _g11147_))
                  ((fx= _g11146_ 1)
                   (apply gx#core-context-prelude__opt-lambda10983 _g11147_))
                  (else (error "No clause matching arguments" _g11147_))))))))
  (define gx#core-module->prelude-context
    (lambda (_ctx10975_)
      (let ((_ht10977_ (gx#current-expander-module-registry)))
        (let ((_$e10979_ (table-ref _ht10977_ _ctx10975_ '#f)))
          (if _$e10979_
              (values _$e10979_)
              (let ((_pre10982_
                     (let ((__obj11138 (make-object gx#prelude-context::t '8)))
                       (begin
                         (gx#prelude-context:::init!__0 __obj11138 _ctx10975_)
                         __obj11138))))
                (begin
                  (table-set! _ht10977_ _ctx10975_ _pre10982_)
                  _pre10982_)))))))
  (begin
    (define gx#core-import-module__opt-lambda10927
      (lambda (_rpath10929_ _reload?10930_)
        (let ((_import-source10932_
               (lambda (_path10944_)
                 (begin
                   (if (member _path10944_ (gx#current-expander-path))
                       (error '"Cyclic expansion" _path10944_)
                       '#!void)
                   (call-with-parameters
                    (lambda ()
                      (let ((_g11148_ (gx#core-read-module _path10944_)))
                        (begin
                          (let ((_g11149_ (values-count _g11148_)))
                            (if (not (fx= _g11149_ 4))
                                (error "Context expects 4 values" _g11149_)))
                          (let ((_pre10947_ (values-ref _g11148_ 0))
                                (_id10948_ (values-ref _g11148_ 1))
                                (_ns10949_ (values-ref _g11148_ 2))
                                (_body10950_ (values-ref _g11148_ 3)))
                            (let ((_prelude10955_
                                   (if (##structure-instance-of?
                                        _pre10947_
                                        'gx#prelude-context::t)
                                       _pre10947_
                                       (if (##structure-instance-of?
                                            _pre10947_
                                            'gx#module-context::t)
                                           (gx#core-module->prelude-context
                                            _pre10947_)
                                           (if (string? _pre10947_)
                                               (gx#core-module->prelude-context
                                                (gx#core-import-module__0
                                                 _pre10947_))
                                               (if (not _pre10947_)
                                                   (let ((_$e10952_
                                                          (gx#current-expander-module-prelude)))
                                                     (if _$e10952_
                                                         _$e10952_
                                                         (let ((__obj11139
                                                                (make-object
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#prelude-context::t
                         '8)))
                   (begin
                     (gx#prelude-context:::init!__0 __obj11139 '#f)
                     __obj11139))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (error '"Cannot import module; unknown prelude"
                                                          _rpath10929_
                                                          _pre10947_)))))))
                              (let ((_ctx10957_
                                     (let ((__obj11140
                                            (make-object
                                             gx#module-context::t
                                             '11)))
                                       (begin
                                         (gx#module-context:::init!
                                          __obj11140
                                          _id10948_
                                          _prelude10955_
                                          _ns10949_
                                          _path10944_)
                                         __obj11140))))
                                (let ((_body10959_
                                       (gx#core-expand-module-begin
                                        _body10950_
                                        _ctx10957_)))
                                  (let ((_body10961_
                                         (gx#core-quote-syntax__opt-lambda3983
                                          (gx#core-cons '%#begin _body10959_)
                                          _path10944_
                                          _ctx10957_
                                          '())))
                                    (let ()
                                      (begin
                                        (##structure-set!
                                         _ctx10957_
                                         (make-promise
                                          (lambda ()
                                            (gx#eval-syntax* _body10961_)))
                                         '10
                                         gx#module-context::t
                                         '#f)
                                        (##structure-set!
                                         _ctx10957_
                                         _body10961_
                                         '11
                                         gx#module-context::t
                                         '#f)
                                        (table-set!
                                         (gx#current-expander-module-registry)
                                         _path10944_
                                         _ctx10957_)
                                        (table-set!
                                         (gx#current-expander-module-registry)
                                         _id10948_
                                         _ctx10957_)
                                        _ctx10957_))))))))))
                    gx#current-expander-context
                    (gx#core-context-root__0)
                    gx#current-expander-marks
                    '()
                    gx#current-expander-phi
                    '0
                    gx#current-expander-path
                    (cons _path10944_ (gx#current-expander-path))
                    gx#current-import-expander-phi
                    '#f
                    gx#current-export-expander-phi
                    '#f)))))
          (let ((_$e10934_
                 (if (not _reload?10930_)
                     (table-ref
                      (gx#current-expander-module-registry)
                      _rpath10929_
                      '#f)
                     '#f)))
            (if _$e10934_
                (values _$e10934_)
                (if (gx#core-library-module-path? _rpath10929_)
                    (let ((_ctx10937_
                           (gx#core-import-module__opt-lambda10927
                            (gx#core-resolve-library-module-path _rpath10929_)
                            _reload?10930_)))
                      (begin
                        (table-set!
                         (gx#current-expander-module-registry)
                         _rpath10929_
                         _ctx10937_)
                        _ctx10937_))
                    (let ((_npath10939_ (path-normalize _rpath10929_)))
                      (let ((_$e10941_
                             (if (not _reload?10930_)
                                 (table-ref
                                  (gx#current-expander-module-registry)
                                  _npath10939_
                                  '#f)
                                 '#f)))
                        (if _$e10941_
                            (values _$e10941_)
                            (_import-source10932_ _npath10939_))))))))))
    (begin
      (define gx#core-import-module__0
        (lambda (_rpath10968_)
          (let ((_reload?10970_ '#f))
            (gx#core-import-module__opt-lambda10927
             _rpath10968_
             _reload?10970_))))
      (define gx#core-import-module
        (lambda _g11151_
          (let ((_g11150_ (length _g11151_)))
            (cond ((fx= _g11150_ 1) (apply gx#core-import-module__0 _g11151_))
                  ((fx= _g11150_ 2)
                   (apply gx#core-import-module__opt-lambda10927 _g11151_))
                  (else (error "No clause matching arguments" _g11151_))))))))
  (define gx#core-read-module
    (lambda (_path10792_)
      ((letrec ((_lp10794_
                 (lambda (_body10796_ _pre10797_ _ns10798_ _pkg10799_)
                   (let ((_e1080010824_ _body10796_))
                     (let ((_E1081610842_
                            (lambda ()
                              (let ((_prelude10828_
                                     (if (gx#core-bound-module-prelude?
                                          _pre10797_)
                                         (gx#syntax-local-e__0 _pre10797_)
                                         (if (gx#core-library-module-path?
                                              _pre10797_)
                                             (gx#core-resolve-library-module-path
                                              _pre10797_)
                                             (if (gx#stx-string? _pre10797_)
                                                 (gx#core-resolve-module-path__opt-lambda10765
                                                  _pre10797_
                                                  _path10792_)
                                                 (gx#stx-e _pre10797_))))))
                                (let ((_path-id10830_
                                       (gx#core-module-path->namespace
                                        _path10792_)))
                                  (let ((_pkg-id10832_
                                         (if _pkg10799_
                                             (string-append
                                              _pkg10799_
                                              '"/"
                                              _path-id10830_)
                                             _path-id10830_)))
                                    (let ((_module-id10834_
                                           (string->symbol _pkg-id10832_)))
                                      (let ((_module-ns10839_
                                             (let ((_$e10836_ _ns10798_))
                                               (if _$e10836_
                                                   _$e10836_
                                                   _pkg-id10832_))))
                                        (let ()
                                          (values _prelude10828_
                                                  _module-id10834_
                                                  _module-ns10839_
                                                  _body10796_))))))))))
                       (let ((_E1080910871_
                              (lambda ()
                                (if (gx#stx-pair? _e1080010824_)
                                    (let ((_e1081710846_
                                           (gx#syntax-e _e1080010824_)))
                                      (let ((_hd1081810849_
                                             (##car _e1081710846_))
                                            (_tl1081910851_
                                             (##cdr _e1081710846_)))
                                        (if (eq? (gx#stx-e _hd1081810849_)
                                                 'package:)
                                            (if (gx#stx-pair? _tl1081910851_)
                                                (let ((_e1082010854_
                                                       (gx#syntax-e
                                                        _tl1081910851_)))
                                                  (let ((_hd1082110857_
                                                         (##car _e1082010854_))
                                                        (_tl1082210859_
                                                         (##cdr _e1082010854_)))
                                                    (let ((_pkg10862_
                                                           _hd1082110857_))
                                                      (let ((_rest10864_
                                                             _tl1082210859_))
                                                        (if '#t
                                                            (let ((_pkg10869_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if (gx#identifier? _pkg10862_)
                               (symbol->string (gx#stx-e _pkg10862_))
                               (if (let ((_$e10866_
                                          (gx#stx-string? _pkg10862_)))
                                     (if _$e10866_
                                         _$e10866_
                                         (gx#stx-false? _pkg10862_)))
                                   (gx#stx-e _pkg10862_)
                                   (gx#raise-syntax-error
                                    'import
                                    '"Bad syntax; Illegal package name"
                                    _pkg10862_)))))
                      (_lp10794_ _rest10864_ _pre10797_ _ns10798_ _pkg10869_))
                    (_E1081610842_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1081610842_))
                                            (_E1081610842_))))
                                    (_E1081610842_)))))
                         (let ((_E1080210900_
                                (lambda ()
                                  (if (gx#stx-pair? _e1080010824_)
                                      (let ((_e1081010875_
                                             (gx#syntax-e _e1080010824_)))
                                        (let ((_hd1081110878_
                                               (##car _e1081010875_))
                                              (_tl1081210880_
                                               (##cdr _e1081010875_)))
                                          (if (eq? (gx#stx-e _hd1081110878_)
                                                   'namespace:)
                                              (if (gx#stx-pair? _tl1081210880_)
                                                  (let ((_e1081310883_
                                                         (gx#syntax-e
                                                          _tl1081210880_)))
                                                    (let ((_hd1081410886_
                                                           (##car _e1081310883_))
                                                          (_tl1081510888_
                                                           (##cdr _e1081310883_)))
                                                      (let ((_ns10891_
                                                             _hd1081410886_))
                                                        (let ((_rest10893_
                                                               _tl1081510888_))
                                                          (if '#t
                                                              (let ((_ns10898_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (gx#identifier? _ns10891_)
                                 (symbol->string (gx#stx-e _ns10891_))
                                 (if (let ((_$e10895_
                                            (gx#stx-string? _ns10891_)))
                                       (if _$e10895_
                                           _$e10895_
                                           (gx#stx-false? _ns10891_)))
                                     (gx#stx-e _ns10891_)
                                     (gx#raise-syntax-error
                                      'import
                                      '"Bad syntax; illegal namespace"
                                      _ns10891_)))))
                        (_lp10794_
                         _rest10893_
                         _pre10797_
                         _ns10898_
                         _pkg10799_))
                      (_E1080910871_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1080910871_))
                                              (_E1080910871_))))
                                      (_E1080910871_)))))
                           (let ((_E1080110924_
                                  (lambda ()
                                    (if (gx#stx-pair? _e1080010824_)
                                        (let ((_e1080310904_
                                               (gx#syntax-e _e1080010824_)))
                                          (let ((_hd1080410907_
                                                 (##car _e1080310904_))
                                                (_tl1080510909_
                                                 (##cdr _e1080310904_)))
                                            (if (eq? (gx#stx-e _hd1080410907_)
                                                     'prelude:)
                                                (if (gx#stx-pair?
                                                     _tl1080510909_)
                                                    (let ((_e1080610912_
                                                           (gx#syntax-e
                                                            _tl1080510909_)))
                                                      (let ((_hd1080710915_
                                                             (##car _e1080610912_))
                                                            (_tl1080810917_
                                                             (##cdr _e1080610912_)))
                                                        (let ((_prelude10920_
                                                               _hd1080710915_))
                                                          (let ((_rest10922_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1080810917_))
                    (if '#t
                        (_lp10794_
                         _rest10922_
                         _prelude10920_
                         _ns10798_
                         _pkg10799_)
                        (_E1080210900_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1080210900_))
                                                (_E1080210900_))))
                                        (_E1080210900_)))))
                             (let () (_E1080110924_))))))))))
         _lp10794_)
       (read-syntax-from-file _path10792_)
       '#f
       '#f
       '#f)))
  (define gx#core-module-path->namespace
    (lambda (_path10790_)
      (path-strip-extension (path-strip-directory _path10790_))))
  (define gx#core-module-path->id
    (lambda (_path10788_)
      (string->symbol (gx#core-module-path->namespace _path10788_))))
  (begin
    (define gx#core-resolve-module-path__opt-lambda10765
      (lambda (_stx-path10767_ _rel10768_)
        (let ((_path10770_ (gx#stx-e _stx-path10767_)))
          (let ((_path10772_
                 (if (equal? (path-extension _path10770_) '".ss")
                     _path10770_
                     (string-append _path10770_ '".ss"))))
            (let ()
              (gx#core-resolve-path__opt-lambda3947
               _path10772_
               (let ((_$e10775_ (gx#stx-source _stx-path10767_)))
                 (if _$e10775_ _$e10775_ _rel10768_))))))))
    (begin
      (define gx#core-resolve-module-path__0
        (lambda (_stx-path10781_)
          (let ((_rel10783_ '#f))
            (gx#core-resolve-module-path__opt-lambda10765
             _stx-path10781_
             _rel10783_))))
      (define gx#core-resolve-module-path
        (lambda _g11153_
          (let ((_g11152_ (length _g11153_)))
            (cond ((fx= _g11152_ 1)
                   (apply gx#core-resolve-module-path__0 _g11153_))
                  ((fx= _g11152_ 2)
                   (apply gx#core-resolve-module-path__opt-lambda10765
                          _g11153_))
                  (else (error "No clause matching arguments" _g11153_))))))))
  (define gx#core-resolve-library-module-path
    (lambda (_libpath10713_)
      (let ((_spath10715_ (symbol->string (gx#stx-e _libpath10713_))))
        (let ((_spath10717_
               (substring _spath10715_ '1 (string-length _spath10715_))))
          (let ()
            ((letrec ((_lp10720_
                       (lambda (_rest10722_)
                         (let ((_rest1072310732_ _rest10722_))
                           (let ((_E1072610736_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _rest1072310732_))))
                             (let ((_try-match1072510744_
                                    (lambda ()
                                      (let ((_K1072710741_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Cannot find library module"
                                                _libpath10713_))))
                                        (if (##null? _rest1072310732_)
                                            (_K1072710741_)
                                            (_E1072610736_))))))
                               (let ((_K1072810754_
                                      (lambda (_rest10747_ _dir10748_)
                                        (let ((_compiled-path10750_
                                               (path-expand
                                                (string-append
                                                 _spath10717_
                                                 '".ssi")
                                                _dir10748_)))
                                          (if (file-exists?
                                               _compiled-path10750_)
                                              (path-normalize
                                               _compiled-path10750_)
                                              (let ((_src-path10752_
                                                     (path-expand
                                                      (string-append
                                                       _spath10717_
                                                       '".ss")
                                                      _dir10748_)))
                                                (if (file-exists?
                                                     _src-path10752_)
                                                    (path-normalize
                                                     _src-path10752_)
                                                    (_lp10720_
                                                     _rest10747_))))))))
                                 (if (##pair? _rest1072310732_)
                                     (let ((_hd1072910757_
                                            (##car _rest1072310732_))
                                           (_tl1073010759_
                                            (##cdr _rest1072310732_)))
                                       (let ((_dir10762_ _hd1072910757_))
                                         (let ((_rest10764_ _tl1073010759_))
                                           (_K1072810754_
                                            _rest10764_
                                            _dir10762_))))
                                     (_try-match1072510744_)))))))))
               _lp10720_)
             (gx#current-expander-module-library-path)))))))
  (define gx#core-library-module-path?
    (lambda (_stx10711_) (gx#core-special-module-path? _stx10711_ '#\:)))
  (define gx#core-special-module-path?
    (lambda (_stx10706_ _char10707_)
      (if (gx#identifier? _stx10706_)
          (if (interned-symbol? (gx#stx-e _stx10706_))
              (let ((_str10709_ (symbol->string (gx#stx-e _stx10706_))))
                (if (fx> (string-length _str10709_) '1)
                    (eq? (string-ref _str10709_ '0) _char10707_)
                    '#f))
              '#f)
          '#f)))
  (define gx#core-bound-prelude?
    (lambda (_stx10700_)
      (gx#core-bound-identifier?__opt-lambda4037
       _stx10700_
       (lambda (_g1070110703_)
         (gx#expander-binding?__opt-lambda4068
          _g1070110703_
          gx#prelude-context?)))))
  (define gx#core-bound-module?
    (lambda (_stx10694_)
      (gx#core-bound-identifier?__opt-lambda4037
       _stx10694_
       (lambda (_g1069510697_)
         (gx#expander-binding?__opt-lambda4068
          _g1069510697_
          gx#module-context?)))))
  (define gx#core-bound-module-prelude?
    (lambda (_stx10681_)
      (let ((_module-prelude?10683_
             (lambda (_e10689_)
               (let ((_$e10691_
                      (##structure-instance-of?
                       _e10689_
                       'gx#module-context::t)))
                 (if _$e10691_
                     _$e10691_
                     (##structure-instance-of?
                      _e10689_
                      'gx#prelude-context::t))))))
        (gx#core-bound-identifier?__opt-lambda4037
         _stx10681_
         (lambda (_g1068410686_)
           (gx#expander-binding?__opt-lambda4068
            _g1068410686_
            _module-prelude?10683_))))))
  (begin
    (define gx#core-bind-import!__opt-lambda10609
      (lambda (_in10611_ _ctx10612_ _force-weak?10613_)
        (let ((_in1061410623_ _in10611_))
          (let ((_E1061610627_
                 (lambda () (error '"No clause matching" _in1061410623_))))
            (let ((_K1061710640_
                   (lambda (_weak?10630_ _phi10631_ _key10632_ _source10633_)
                     (gx#core-bind!__opt-lambda4307
                      _key10632_
                      (let ((_e10635_
                             (gx#core-resolve-module-export _source10633_)))
                        (##structure
                         gx#import-binding::t
                         (##structure-ref _e10635_ '1 gx#binding::t '#f)
                         _key10632_
                         _phi10631_
                         _e10635_
                         (##structure-ref
                          _source10633_
                          '1
                          gx#module-export::t
                          '#f)
                         (let ((_$e10637_ _force-weak?10613_))
                           (if _$e10637_ _$e10637_ _weak?10630_))))
                      gx#core-context-rebind?
                      _phi10631_
                      _ctx10612_))))
              (if (direct-struct-instance? gx#module-import::t _in1061410623_)
                  (let ((_e1061810643_ (##vector-ref _in1061410623_ '1)))
                    (let ((_source10646_ _e1061810643_))
                      (let ((_e1061910648_ (##vector-ref _in1061410623_ '2)))
                        (let ((_key10651_ _e1061910648_))
                          (let ((_e1062010653_
                                 (##vector-ref _in1061410623_ '3)))
                            (let ((_phi10656_ _e1062010653_))
                              (let ((_e1062110658_
                                     (##vector-ref _in1061410623_ '4)))
                                (let ((_weak?10661_ _e1062110658_))
                                  (_K1061710640_
                                   _weak?10661_
                                   _phi10656_
                                   _key10651_
                                   _source10646_)))))))))
                  (_E1061610627_)))))))
    (begin
      (define gx#core-bind-import!__0
        (lambda (_in10666_)
          (let ((_ctx10668_ (gx#current-expander-context)))
            (let ((_force-weak?10670_ '#f))
              (gx#core-bind-import!__opt-lambda10609
               _in10666_
               _ctx10668_
               _force-weak?10670_)))))
      (define gx#core-bind-import!__1
        (lambda (_in10672_ _ctx10673_)
          (let ((_force-weak?10675_ '#f))
            (gx#core-bind-import!__opt-lambda10609
             _in10672_
             _ctx10673_
             _force-weak?10675_))))
      (define gx#core-bind-import!
        (lambda _g11155_
          (let ((_g11154_ (length _g11155_)))
            (cond ((fx= _g11154_ 1) (apply gx#core-bind-import!__0 _g11155_))
                  ((fx= _g11154_ 2) (apply gx#core-bind-import!__1 _g11155_))
                  ((fx= _g11154_ 3)
                   (apply gx#core-bind-import!__opt-lambda10609 _g11155_))
                  (else (error "No clause matching arguments" _g11155_))))))))
  (begin
    (define gx#core-bind-weak-import!__opt-lambda10595
      (lambda (_in10597_ _ctx10598_)
        (gx#core-bind-import!__opt-lambda10609 _in10597_ _ctx10598_ '#t)))
    (begin
      (define gx#core-bind-weak-import!__0
        (lambda (_in10603_)
          (let ((_ctx10605_ (gx#current-expander-context)))
            (gx#core-bind-weak-import!__opt-lambda10595
             _in10603_
             _ctx10605_))))
      (define gx#core-bind-weak-import!
        (lambda _g11157_
          (let ((_g11156_ (length _g11157_)))
            (cond ((fx= _g11156_ 1)
                   (apply gx#core-bind-weak-import!__0 _g11157_))
                  ((fx= _g11156_ 2)
                   (apply gx#core-bind-weak-import!__opt-lambda10595 _g11157_))
                  (else (error "No clause matching arguments" _g11157_))))))))
  (define gx#core-resolve-module-export
    (lambda (_out10488_)
      (let ((_subst10490_
             (lambda (_key10536_)
               (let ((_key1053710545_ _key10536_))
                 (let ((_E1054010549_
                        (lambda ()
                          (error '"No clause matching" _key1053710545_))))
                   (let ((_else1053910553_ (lambda () _key10536_)))
                     (let ((_K1054110584_
                            (lambda (_mark10556_ _id10557_)
                              (let ((_mark1055810564_ _mark10556_))
                                (let ((_E1056010568_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _mark1055810564_))))
                                  (let ((_K1056110576_
                                         (lambda (_subst10571_)
                                           (let ((_$e10573_
                                                  (if _subst10571_
                                                      (table-ref
                                                       _subst10571_
                                                       _id10557_
                                                       '#f)
                                                      '#f)))
                                             (if _$e10573_
                                                 _$e10573_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal key; missing substitution"
                                                  _key10536_))))))
                                    (if (struct-instance?
                                         gx#expander-mark::t
                                         _mark1055810564_)
                                        (let ((_e1056210579_
                                               (##vector-ref
                                                _mark1055810564_
                                                '1)))
                                          (let ((_subst10582_ _e1056210579_))
                                            (_K1056110576_ _subst10582_)))
                                        (_E1056010568_))))))))
                       (if (##pair? _key1053710545_)
                           (let ((_hd1054210587_ (##car _key1053710545_))
                                 (_tl1054310589_ (##cdr _key1053710545_)))
                             (let ((_id10592_ _hd1054210587_))
                               (let ((_mark10594_ _tl1054310589_))
                                 (_K1054110584_ _mark10594_ _id10592_))))
                           (_else1053910553_)))))))))
        (let ((_out1049110501_ _out10488_))
          (let ((_E1049310505_
                 (lambda () (error '"No clause matching" _out1049110501_))))
            (let ((_K1049410512_
                   (lambda (_phi10508_ _key10509_ _ctx10510_)
                     (gx#core-context-resolve
                      (gx#core-context-shift _ctx10510_ _phi10508_)
                      (_subst10490_ _key10509_)))))
              (if (direct-struct-instance? gx#module-export::t _out1049110501_)
                  (let ((_e1049510515_ (##vector-ref _out1049110501_ '1)))
                    (let ((_ctx10518_ _e1049510515_))
                      (let ((_e1049610520_ (##vector-ref _out1049110501_ '2)))
                        (let ((_key10523_ _e1049610520_))
                          (let ((_e1049710525_
                                 (##vector-ref _out1049110501_ '3)))
                            (let ((_phi10528_ _e1049710525_))
                              (let ((_e1049810530_
                                     (##vector-ref _out1049110501_ '4)))
                                (let ((_e1049910533_
                                       (##vector-ref _out1049110501_ '5)))
                                  (_K1049410512_
                                   _phi10528_
                                   _key10523_
                                   _ctx10518_)))))))))
                  (_E1049310505_))))))))
  (begin
    (define gx#core-module-export->import__opt-lambda10411
      (lambda (_out10413_ _rename10414_ _dphi10415_)
        (let ((_out1041610426_ _out10413_))
          (let ((_E1041810430_
                 (lambda () (error '"No clause matching" _out1041610426_))))
            (let ((_K1041910442_
                   (lambda (_weak?10433_
                            _name10434_
                            _phi10435_
                            _key10436_
                            _ctx10437_)
                     (##structure
                      gx#module-import::t
                      _out10413_
                      (let ((_$e10439_ _rename10414_))
                        (if _$e10439_ _$e10439_ _name10434_))
                      (fx+ _phi10435_ _dphi10415_)
                      _weak?10433_))))
              (if (direct-struct-instance? gx#module-export::t _out1041610426_)
                  (let ((_e1042010445_ (##vector-ref _out1041610426_ '1)))
                    (let ((_ctx10448_ _e1042010445_))
                      (let ((_e1042110450_ (##vector-ref _out1041610426_ '2)))
                        (let ((_key10453_ _e1042110450_))
                          (let ((_e1042210455_
                                 (##vector-ref _out1041610426_ '3)))
                            (let ((_phi10458_ _e1042210455_))
                              (let ((_e1042310460_
                                     (##vector-ref _out1041610426_ '4)))
                                (let ((_name10463_ _e1042310460_))
                                  (let ((_e1042410465_
                                         (##vector-ref _out1041610426_ '5)))
                                    (let ((_weak?10468_ _e1042410465_))
                                      (_K1041910442_
                                       _weak?10468_
                                       _name10463_
                                       _phi10458_
                                       _key10453_
                                       _ctx10448_)))))))))))
                  (_E1041810430_)))))))
    (begin
      (define gx#core-module-export->import__0
        (lambda (_out10473_)
          (let ((_rename10475_ '#f))
            (let ((_dphi10477_ '0))
              (gx#core-module-export->import__opt-lambda10411
               _out10473_
               _rename10475_
               _dphi10477_)))))
      (define gx#core-module-export->import__1
        (lambda (_out10479_ _rename10480_)
          (let ((_dphi10482_ '0))
            (gx#core-module-export->import__opt-lambda10411
             _out10479_
             _rename10480_
             _dphi10482_))))
      (define gx#core-module-export->import
        (lambda _g11159_
          (let ((_g11158_ (length _g11159_)))
            (cond ((fx= _g11158_ 1)
                   (apply gx#core-module-export->import__0 _g11159_))
                  ((fx= _g11158_ 2)
                   (apply gx#core-module-export->import__1 _g11159_))
                  ((fx= _g11158_ 3)
                   (apply gx#core-module-export->import__opt-lambda10411
                          _g11159_))
                  (else (error "No clause matching arguments" _g11159_))))))))
  (define gx#core-expand-module%
    (lambda (_stx10341_)
      (let ((_make-context10343_
             (lambda (_id10394_)
               (let ((_super10396_ (gx#current-expander-context)))
                 (let ((_bind-id10398_ (gx#stx-e _id10394_)))
                   (let ((_mod-id10400_
                          (if (##structure-instance-of?
                               _super10396_
                               'gx#module-context::t)
                              (make-symbol
                               (##structure-ref
                                _super10396_
                                '1
                                gx#expander-context::t
                                '#f)
                               '"::"
                               _bind-id10398_)
                              _bind-id10398_)))
                     (let ((_ns10402_ (symbol->string _mod-id10400_)))
                       (let ((_path10409_
                              (if (##structure-instance-of?
                                   _super10396_
                                   'gx#module-context::t)
                                  (let ((_path10404_
                                         (##structure-ref
                                          _super10396_
                                          '7
                                          gx#module-context::t
                                          '#f)))
                                    (if (let ((_$e10406_ (pair? _path10404_)))
                                          (if _$e10406_
                                              _$e10406_
                                              (null? _path10404_)))
                                        (cons _bind-id10398_ _path10404_)
                                        (if (not _path10404_)
                                            _bind-id10398_
                                            (cons _bind-id10398_
                                                  (cons _path10404_ '())))))
                                  _bind-id10398_)))
                         (let ()
                           (let ((__obj11141
                                  (make-object gx#module-context::t '11)))
                             (begin
                               (gx#module-context:::init!
                                __obj11141
                                _mod-id10400_
                                _super10396_
                                _ns10402_
                                _path10409_)
                               __obj11141)))))))))))
        (let ((_e1034410354_ _stx10341_))
          (let ((_E1034610358_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e1034410354_))))
            (let ((_E1034510390_
                   (lambda ()
                     (if (gx#stx-pair? _e1034410354_)
                         (let ((_e1034710362_ (gx#syntax-e _e1034410354_)))
                           (let ((_hd1034810365_ (##car _e1034710362_))
                                 (_tl1034910367_ (##cdr _e1034710362_)))
                             (if (gx#stx-pair? _tl1034910367_)
                                 (let ((_e1035010370_
                                        (gx#syntax-e _tl1034910367_)))
                                   (let ((_hd1035110373_ (##car _e1035010370_))
                                         (_tl1035210375_
                                          (##cdr _e1035010370_)))
                                     (let ((_id10378_ _hd1035110373_))
                                       (let ((_body10380_ _tl1035210375_))
                                         (if (if (gx#identifier? _id10378_)
                                                 (gx#stx-list? _body10380_)
                                                 '#f)
                                             (let ((_ctx10382_
                                                    (_make-context10343_
                                                     _id10378_)))
                                               (let ((_body10384_
                                                      (gx#core-expand-module-begin
                                                       _body10380_
                                                       _ctx10382_)))
                                                 (let ((_body10386_
                                                        (gx#core-quote-syntax__1
                                                         (gx#core-cons
                                                          '%#begin
                                                          _body10384_)
                                                         (gx#stx-source
                                                          _stx10341_))))
                                                   (let ()
                                                     (begin
                                                       (##structure-set!
                                                        _ctx10382_
                                                        (make-promise
                                                         (lambda ()
                                                           (gx#eval-syntax*
                                                            _body10386_)))
                                                        '10
                                                        gx#module-context::t
                                                        '#f)
                                                       (##structure-set!
                                                        _ctx10382_
                                                        _body10386_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)
                                                       (gx#core-bind-syntax!__0
                                                        _id10378_
                                                        _ctx10382_)
                                                       (gx#core-quote-syntax__1
                                                        (gx#core-list
                                                         '%#module
                                                         (gx#core-quote-syntax__0
                                                          _id10378_)
                                                         _body10386_)
                                                        (gx#stx-source
                                                         _stx10341_)))))))
                                             (_E1034610358_))))))
                                 (_E1034610358_))))
                         (_E1034610358_)))))
              (let () (_E1034510390_))))))))
  (define gx#core-expand-module-begin
    (lambda (_body10337_ _ctx10338_)
      (call-with-parameters
       (lambda ()
         (begin
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (gx#core-expand-module-body _body10337_)))
       gx#current-expander-context
       _ctx10338_
       gx#current-expander-phi
       '0)))
  (define gx#core-expand-module-body
    (lambda (_body10133_)
      (let ((_expand-special10135_
             (lambda (_hd10264_ _K10265_ _rest10266_ _r10267_)
               (let ((_e1026810285_ _hd10264_))
                 (let ((_E1028010289_
                        (lambda ()
                          (_K10265_
                           _rest10266_
                           (cons (gx#core-expand-top _hd10264_) _r10267_)))))
                   (let ((_E1027010301_
                          (lambda ()
                            (if (gx#stx-pair? _e1026810285_)
                                (let ((_e1028110293_
                                       (gx#syntax-e _e1026810285_)))
                                  (let ((_hd1028210296_ (##car _e1028110293_))
                                        (_tl1028310298_ (##cdr _e1028110293_)))
                                    (if (if (gx#identifier? _hd1028210296_)
                                            (gx#core-identifier=?
                                             _hd1028210296_
                                             '%#export)
                                            '#f)
                                        (if '#t
                                            (_K10265_
                                             _rest10266_
                                             (cons _hd10264_ _r10267_))
                                            (_E1028010289_))
                                        (_E1028010289_))))
                                (_E1028010289_)))))
                     (let ((_E1026910333_
                            (lambda ()
                              (if (gx#stx-pair? _e1026810285_)
                                  (let ((_e1027110305_
                                         (gx#syntax-e _e1026810285_)))
                                    (let ((_hd1027210308_
                                           (##car _e1027110305_))
                                          (_tl1027310310_
                                           (##cdr _e1027110305_)))
                                      (if (if (gx#identifier? _hd1027210308_)
                                              (gx#core-identifier=?
                                               _hd1027210308_
                                               '%#define-values)
                                              '#f)
                                          (if (gx#stx-pair? _tl1027310310_)
                                              (let ((_e1027410313_
                                                     (gx#syntax-e
                                                      _tl1027310310_)))
                                                (let ((_hd1027510316_
                                                       (##car _e1027410313_))
                                                      (_tl1027610318_
                                                       (##cdr _e1027410313_)))
                                                  (let ((_hd-bind10321_
                                                         _hd1027510316_))
                                                    (if (gx#stx-pair?
                                                         _tl1027610318_)
                                                        (let ((_e1027710323_
                                                               (gx#syntax-e
                                                                _tl1027610318_)))
                                                          (let ((_hd1027810326_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1027710323_))
                        (_tl1027910328_ (##cdr _e1027710323_)))
                    (let ((_expr10331_ _hd1027810326_))
                      (if (gx#stx-null? _tl1027910328_)
                          (if (gx#core-bind-values? _hd-bind10321_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind10321_)
                                (_K10265_
                                 _rest10266_
                                 (cons _hd10264_ _r10267_)))
                              (_E1027010301_))
                          (_E1027010301_)))))
                (_E1027010301_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1027010301_))
                                          (_E1027010301_))))
                                  (_E1027010301_)))))
                       (let () (_E1026910333_)))))))))
        (let ((_expand-body10136_
               (lambda (_rbody10138_)
                 ((letrec ((_lp10140_
                            (lambda (_rest10142_ _body10143_)
                              (let ((_rest1014410152_ _rest10142_))
                                (let ((_E1014710156_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _rest1014410152_))))
                                  (let ((_else1014610160_
                                         (lambda () _body10143_)))
                                    (let ((_K1014810252_
                                           (lambda (_rest10163_ _hd10164_)
                                             (let ((_e1016510186_ _hd10164_))
                                               (let ((_E1018110190_
                                                      (lambda ()
                                                        (_lp10140_
                                                         _rest10163_
                                                         (cons (gx#core-expand-expression
                                                                _hd10164_)
                                                               _body10143_)))))
                                                 (let ((_E1017710204_
                                                        (lambda ()
                                                          (if (gx#stx-pair?
                                                               _e1016510186_)
                                                              (let ((_e1018210194_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _e1016510186_)))
                        (let ((_hd1018310197_ (##car _e1018210194_))
                              (_tl1018410199_ (##cdr _e1018210194_)))
                          (let ((_form10202_ _hd1018310197_))
                            (if (gx#core-bound-identifier?__opt-lambda4037
                                 _form10202_
                                 gx#special-form-binding?)
                                (_lp10140_
                                 _rest10163_
                                 (cons _hd10164_ _body10143_))
                                (_E1018110190_)))))
                      (_E1018110190_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_E1016710216_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e1016510186_)
                        (let ((_e1017810208_ (gx#syntax-e _e1016510186_)))
                          (let ((_hd1017910211_ (##car _e1017810208_))
                                (_tl1018010213_ (##cdr _e1017810208_)))
                            (if (if (gx#identifier? _hd1017910211_)
                                    (gx#core-identifier=?
                                     _hd1017910211_
                                     '%#export)
                                    '#f)
                                (if '#t
                                    (_lp10140_
                                     _rest10163_
                                     (cons (gx#core-expand-export%__0
                                            _hd10164_)
                                           _body10143_))
                                    (_E1017710204_))
                                (_E1017710204_))))
                        (_E1017710204_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_E1016610248_
                                                            (lambda ()
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e1016510186_)
                          (let ((_e1016810220_ (gx#syntax-e _e1016510186_)))
                            (let ((_hd1016910223_ (##car _e1016810220_))
                                  (_tl1017010225_ (##cdr _e1016810220_)))
                              (if (if (gx#identifier? _hd1016910223_)
                                      (gx#core-identifier=?
                                       _hd1016910223_
                                       '%#define-values)
                                      '#f)
                                  (if (gx#stx-pair? _tl1017010225_)
                                      (let ((_e1017110228_
                                             (gx#syntax-e _tl1017010225_)))
                                        (let ((_hd1017210231_
                                               (##car _e1017110228_))
                                              (_tl1017310233_
                                               (##cdr _e1017110228_)))
                                          (let ((_hd-bind10236_
                                                 _hd1017210231_))
                                            (if (gx#stx-pair? _tl1017310233_)
                                                (let ((_e1017410238_
                                                       (gx#syntax-e
                                                        _tl1017310233_)))
                                                  (let ((_hd1017510241_
                                                         (##car _e1017410238_))
                                                        (_tl1017610243_
                                                         (##cdr _e1017410238_)))
                                                    (let ((_expr10246_
                                                           _hd1017510241_))
                                                      (if (gx#stx-null?
                                                           _tl1017610243_)
                                                          (if '#t
                                                              (_lp10140_
                                                               _rest10163_
                                                               (cons (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#core-list
                               '%#define-values
                               (gx#core-quote-bind-values _hd-bind10236_)
                               (gx#core-expand-expression _expr10246_))
                              (gx#stx-source _hd10164_))
                             _body10143_))
                      (_E1016710216_))
                  (_E1016710216_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1016710216_)))))
                                      (_E1016710216_))
                                  (_E1016710216_))))
                          (_E1016710216_)))))
               (let () (_E1016610248_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (##pair? _rest1014410152_)
                                          (let ((_hd1014910255_
                                                 (##car _rest1014410152_))
                                                (_tl1015010257_
                                                 (##cdr _rest1014410152_)))
                                            (let ((_hd10260_ _hd1014910255_))
                                              (let ((_rest10262_
                                                     _tl1015010257_))
                                                (_K1014810252_
                                                 _rest10262_
                                                 _hd10260_))))
                                          (_else1014610160_)))))))))
                    _lp10140_)
                  _rbody10138_
                  '()))))
          (_expand-body10136_
           (gx#core-expand-block__opt-lambda5084
            (cons '%#begin-module _body10133_)
            _expand-special10135_
            '#f
            values))))))
  (define gx#core-expand-import/export
    (lambda (_stx9976_
             _expanded?9977_
             _method9978_
             _current-phi9979_
             _expand19980_)
      (letrec ((_K9982_ (lambda (_rest10100_ _r10101_)
                          (let ((_e1010210109_ _rest10100_))
                            (let ((_E1010410113_ (lambda () _r10101_)))
                              (let ((_E1010310129_
                                     (lambda ()
                                       (if (gx#stx-pair? _e1010210109_)
                                           (let ((_e1010510117_
                                                  (gx#syntax-e _e1010210109_)))
                                             (let ((_hd1010610120_
                                                    (##car _e1010510117_))
                                                   (_tl1010710122_
                                                    (##cdr _e1010510117_)))
                                               (let ((_hd10125_
                                                      _hd1010610120_))
                                                 (let ((_rest10127_
                                                        _tl1010710122_))
                                                   (if '#t
                                                       (_step9983_
                                                        _hd10125_
                                                        _rest10127_
                                                        _r10101_)
                                                       (_E1010410113_))))))
                                           (_E1010410113_)))))
                                (let () (_E1010310129_)))))))
               (_step9983_
                (lambda (_hd10014_ _rest10015_ _r10016_)
                  (let ((_e1001710035_ _hd10014_))
                    (let ((_E1003010039_
                           (lambda ()
                             (if (_expanded?9977_ (gx#stx-e _hd10014_))
                                 (_K9982_ _rest10015_
                                          (cons (gx#stx-e _hd10014_) _r10016_))
                                 (_expand19980_
                                  _hd10014_
                                  _K9982_
                                  _rest10015_
                                  _r10016_)))))
                      (let ((_E1002610055_
                             (lambda ()
                               (if (gx#stx-pair? _e1001710035_)
                                   (let ((_e1003110043_
                                          (gx#syntax-e _e1001710035_)))
                                     (let ((_hd1003210046_
                                            (##car _e1003110043_))
                                           (_tl1003310048_
                                            (##cdr _e1003110043_)))
                                       (let ((_macro10051_ _hd1003210046_))
                                         (let ((_body10053_ _tl1003310048_))
                                           (if (gx#core-bound-identifier?__opt-lambda4037
                                                _macro10051_
                                                gx#syntax-binding?)
                                               (_K9982_ (cons (gx#core-apply-expander__opt-lambda4802
                                                               (gx#syntax-local-e__0
                                                                _macro10051_)
                                                               _hd10014_
                                                               _method9978_)
                                                              _rest10015_)
                                                        _r10016_)
                                               (_E1003010039_))))))
                                   (_E1003010039_)))))
                        (let ((_E1001910069_
                               (lambda ()
                                 (if (gx#stx-pair? _e1001710035_)
                                     (let ((_e1002710059_
                                            (gx#syntax-e _e1001710035_)))
                                       (let ((_hd1002810062_
                                              (##car _e1002710059_))
                                             (_tl1002910064_
                                              (##cdr _e1002710059_)))
                                         (if (eq? (gx#stx-e _hd1002810062_)
                                                  'begin:)
                                             (let ((_body10067_
                                                    _tl1002910064_))
                                               (if '#t
                                                   (_K9982_ (gx#stx-foldr
                                                             cons
                                                             _rest10015_
                                                             _body10067_)
                                                            _r10016_)
                                                   (_E1002610055_)))
                                             (_E1002610055_))))
                                     (_E1002610055_)))))
                          (let ((_E1001810096_
                                 (lambda ()
                                   (if (gx#stx-pair? _e1001710035_)
                                       (let ((_e1002010073_
                                              (gx#syntax-e _e1001710035_)))
                                         (let ((_hd1002110076_
                                                (##car _e1002010073_))
                                               (_tl1002210078_
                                                (##cdr _e1002010073_)))
                                           (if (eq? (gx#stx-e _hd1002110076_)
                                                    'phi:)
                                               (if (gx#stx-pair?
                                                    _tl1002210078_)
                                                   (let ((_e1002310081_
                                                          (gx#syntax-e
                                                           _tl1002210078_)))
                                                     (let ((_hd1002410084_
                                                            (##car _e1002310081_))
                                                           (_tl1002510086_
                                                            (##cdr _e1002310081_)))
                                                       (let ((_dphi10089_
                                                              _hd1002410084_))
                                                         (let ((_body10091_
                                                                _tl1002510086_))
                                                           (if (gx#stx-fixnum?
                                                                _dphi10089_)
                                                               (let ((_rbody10094_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (call-with-parameters
                               (lambda () (_K9982_ _body10091_ '()))
                               _current-phi9979_
                               (fx+ (gx#stx-e _dphi10089_)
                                    (_current-phi9979_)))))
                         (_K9982_ _rest10015_
                                  (foldr1 cons _r10016_ _rbody10094_)))
                       (_E1001910069_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1001910069_))
                                               (_E1001910069_))))
                                       (_E1001910069_)))))
                            (let () (_E1001810096_))))))))))
        (let ((_e99849991_ _stx9976_))
          (let ((_E99869995_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e99849991_))))
            (let ((_E998510010_
                   (lambda ()
                     (if (gx#stx-pair? _e99849991_)
                         (let ((_e99879999_ (gx#syntax-e _e99849991_)))
                           (let ((_hd998810002_ (##car _e99879999_))
                                 (_tl998910004_ (##cdr _e99879999_)))
                             (let ((_body10007_ _tl998910004_))
                               (if '#t
                                   (if (_current-phi9979_)
                                       (_K9982_ _body10007_ '())
                                       (call-with-parameters
                                        (lambda () (_K9982_ _body10007_ '()))
                                        _current-phi9979_
                                        (gx#current-expander-phi)))
                                   (_E99869995_)))))
                         (_E99869995_)))))
              (let () (_E998510010_))))))))
  (begin
    (define gx#core-expand-import%__opt-lambda9513
      (lambda (_stx9515_ _internal-expand?9516_)
        (let ((_import19519_
               (lambda (_ctx9950_ _K9951_ _rest9952_ _r9953_)
                 (let ((_dphi9955_
                        (fx- (gx#current-import-expander-phi)
                             (gx#current-expander-phi))))
                   (_K9951_ _rest9952_
                            (cons (##structure
                                   gx#import-set::t
                                   _ctx9950_
                                   _dphi9955_
                                   (map (lambda (_g99569958_)
                                          (gx#core-module-export->import__opt-lambda10411
                                           _g99569958_
                                           '#f
                                           _dphi9955_))
                                        (##structure-ref
                                         _ctx9950_
                                         '9
                                         gx#module-context::t
                                         '#f)))
                                  _r9953_))))))
          (let ((_import-spec?9520_
                 (lambda (_hd9907_)
                   (let ((_e99089918_ _hd9907_))
                     (let ((_E99109922_ (lambda () '#f)))
                       (let ((_E99099946_
                              (lambda ()
                                (if (gx#stx-pair? _e99089918_)
                                    (let ((_e99119926_
                                           (gx#syntax-e _e99089918_)))
                                      (let ((_hd99129929_ (##car _e99119926_))
                                            (_tl99139931_ (##cdr _e99119926_)))
                                        (if (eq? (gx#stx-e _hd99129929_)
                                                 'spec:)
                                            (if (gx#stx-pair? _tl99139931_)
                                                (let ((_e99149934_
                                                       (gx#syntax-e
                                                        _tl99139931_)))
                                                  (let ((_hd99159937_
                                                         (##car _e99149934_))
                                                        (_tl99169939_
                                                         (##cdr _e99149934_)))
                                                    (let ((_spath9942_
                                                           _hd99159937_))
                                                      (let ((_specs9944_
                                                             _tl99169939_))
                                                        (if '#t
                                                            '#t
                                                            (_E99109922_))))))
                                                (_E99109922_))
                                            (_E99109922_))))
                                    (_E99109922_)))))
                         (let () (_E99099946_))))))))
            (let ((_import-submodule?9521_
                   (lambda (_hd9864_)
                     (let ((_e98659875_ _hd9864_))
                       (let ((_E98679879_ (lambda () '#f)))
                         (let ((_E98669903_
                                (lambda ()
                                  (if (gx#stx-pair? _e98659875_)
                                      (let ((_e98689883_
                                             (gx#syntax-e _e98659875_)))
                                        (let ((_hd98699886_
                                               (##car _e98689883_))
                                              (_tl98709888_
                                               (##cdr _e98689883_)))
                                          (if (eq? (gx#stx-e _hd98699886_)
                                                   'in:)
                                              (if (gx#stx-pair? _tl98709888_)
                                                  (let ((_e98719891_
                                                         (gx#syntax-e
                                                          _tl98709888_)))
                                                    (let ((_hd98729894_
                                                           (##car _e98719891_))
                                                          (_tl98739896_
                                                           (##cdr _e98719891_)))
                                                      (let ((_top9899_
                                                             _hd98729894_))
                                                        (let ((_sub9901_
                                                               _tl98739896_))
                                                          (if '#t
                                                              '#t
                                                              (_E98679879_))))))
                                                  (_E98679879_))
                                              (_E98679879_))))
                                      (_E98679879_)))))
                           (let () (_E98669903_))))))))
              (let ((_import-runtime?9522_
                     (lambda (_hd9821_)
                       (let ((_e98229832_ _hd9821_))
                         (let ((_E98249836_ (lambda () '#f)))
                           (let ((_E98239860_
                                  (lambda ()
                                    (if (gx#stx-pair? _e98229832_)
                                        (let ((_e98259840_
                                               (gx#syntax-e _e98229832_)))
                                          (let ((_hd98269843_
                                                 (##car _e98259840_))
                                                (_tl98279845_
                                                 (##cdr _e98259840_)))
                                            (if (eq? (gx#stx-e _hd98269843_)
                                                     'runtime:)
                                                (if (gx#stx-pair? _tl98279845_)
                                                    (let ((_e98289848_
                                                           (gx#syntax-e
                                                            _tl98279845_)))
                                                      (let ((_hd98299851_
                                                             (##car _e98289848_))
                                                            (_tl98309853_
                                                             (##cdr _e98289848_)))
                                                        (let ((_top9856_
                                                               _hd98299851_))
                                                          (let ((_spath9858_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl98309853_))
                    (if '#t '#t (_E98249836_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E98249836_))
                                                (_E98249836_))))
                                        (_E98249836_)))))
                             (let () (_E98239860_))))))))
                (let ((_import-spec-source9526_
                       (lambda (_spath9592_)
                         (gx#core-import-nested-module
                          _spath9592_
                          _stx9515_))))
                  (let ((_import!9527_
                         (lambda (_rbody9540_)
                           (let ((_current-ctx9542_
                                  (gx#current-expander-context)))
                             (let ((_deps9543_ (make-hash-table-eq)))
                               (let ((_bind!9544_
                                      (lambda (_hd9590_)
                                        (begin
                                          (gx#core-bind-import!__1
                                           _hd9590_
                                           _current-ctx9542_)
                                          (if (if (fxpositive?
                                                   (##structure-ref
                                                    _hd9590_
                                                    '3
                                                    gx#module-import::t
                                                    '#f))
                                                  (fxzero? (##structure-ref
                                                            (##structure-ref
                                                             _hd9590_
                                                             '1
                                                             gx#module-import::t
                                                             '#f)
                                                            '3
                                                            gx#module-export::t
                                                            '#f))
                                                  '#f)
                                              (table-set!
                                               _deps9543_
                                               (##structure-ref
                                                (##structure-ref
                                                 _hd9590_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)
                                                '1
                                                gx#module-export::t
                                                '#f)
                                               '#t)
                                              '#!void)))))
                                 (let ((_fold-e9545_
                                        (lambda (_in9587_ _r9588_)
                                          (if (##structure-direct-instance-of?
                                               _in9587_
                                               'gx#module-import::t)
                                              (cons _in9587_ _r9588_)
                                              (if (##structure-direct-instance-of?
                                                   _in9587_
                                                   'gx#import-set::t)
                                                  (foldl1 cons
                                                          _r9588_
                                                          (##structure-ref
                                                           _in9587_
                                                           '3
                                                           gx#import-set::t
                                                           '#f))
                                                  _r9588_)))))
                                   ((letrec ((_lp9547_
                                              (lambda (_rest9549_ _body9550_)
                                                (let ((_rest95519559_
                                                       _rest9549_))
                                                  (let ((_E95549563_
                                                         (lambda ()
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _rest95519559_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_else95539569_
                                                           (lambda ()
                                                             (begin
                                                               (if (##structure-instance-of?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _current-ctx9542_
                            'gx#module-context::t)
                           (##structure-set!
                            _current-ctx9542_
                            (foldl1 _fold-e9545_
                                    (##structure-ref
                                     _current-ctx9542_
                                     '8
                                     gx#module-context::t
                                     '#f)
                                    _body9550_)
                            '8
                            gx#module-context::t
                            '#f)
                           '#!void)
                       (table-for-each
                        (lambda (_ctx9567_ _g11160_)
                          (gx#eval-module _ctx9567_))
                        _deps9543_)
                       _body9550_))))
              (let ((_K95559575_
                     (lambda (_rest9572_ _hd9573_)
                       (begin
                         (if (##structure-direct-instance-of?
                              _hd9573_
                              'gx#module-import::t)
                             (_bind!9544_ _hd9573_)
                             (if (##structure-direct-instance-of?
                                  _hd9573_
                                  'gx#import-set::t)
                                 (for-each
                                  _bind!9544_
                                  (##structure-ref
                                   _hd9573_
                                   '3
                                   gx#import-set::t
                                   '#f))
                                 (if (##structure-instance-of?
                                      _hd9573_
                                      'gx#module-context::t)
                                     '#!void
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Unexpected import"
                                      _stx9515_
                                      _hd9573_))))
                         (_lp9547_ _rest9572_ (cons _hd9573_ _body9550_))))))
                (if (##pair? _rest95519559_)
                    (let ((_hd95569578_ (##car _rest95519559_))
                          (_tl95579580_ (##cdr _rest95519559_)))
                      (let ((_hd9583_ _hd95569578_))
                        (let ((_rest9585_ _tl95579580_))
                          (_K95559575_ _rest9585_ _hd9583_))))
                    (_else95539569_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _lp9547_)
                                    _rbody9540_
                                    '()))))))))
                    (let ((_expanded-import?9528_
                           (lambda (_e9532_)
                             (let ((_$e9534_
                                    (##structure-direct-instance-of?
                                     _e9532_
                                     'gx#import-set::t)))
                               (if _$e9534_
                                   _$e9534_
                                   (let ((_$e9537_
                                          (##structure-direct-instance-of?
                                           _e9532_
                                           'gx#module-import::t)))
                                     (if _$e9537_
                                         _$e9537_
                                         (##structure-instance-of?
                                          _e9532_
                                          'gx#module-context::t))))))))
                      (let ((_import-submodule9523_
                             (lambda (_hd9788_ _K9789_ _rest9790_ _r9791_)
                               (let ((_e97929799_ _hd9788_))
                                 (let ((_E97949803_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _e97929799_))))
                                   (let ((_E97939817_
                                          (lambda ()
                                            (if (gx#stx-pair? _e97929799_)
                                                (let ((_e97959807_
                                                       (gx#syntax-e
                                                        _e97929799_)))
                                                  (let ((_hd97969810_
                                                         (##car _e97959807_))
                                                        (_tl97979812_
                                                         (##cdr _e97959807_)))
                                                    (let ((_spath9815_
                                                           _tl97979812_))
                                                      (if '#t
                                                          (_import19519_
                                                           (_import-spec-source9526_
                                                            _spath9815_)
                                                           _K9789_
                                                           _rest9790_
                                                           _r9791_)
                                                          (_E97949803_)))))
                                                (_E97949803_)))))
                                     (let () (_E97939817_))))))))
                        (let ((_import-runtime9524_
                               (lambda (_hd9755_ _K9756_ _rest9757_ _r9758_)
                                 (let ((_e97599766_ _hd9755_))
                                   (let ((_E97619770_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _e97599766_))))
                                     (let ((_E97609784_
                                            (lambda ()
                                              (if (gx#stx-pair? _e97599766_)
                                                  (let ((_e97629774_
                                                         (gx#syntax-e
                                                          _e97599766_)))
                                                    (let ((_hd97639777_
                                                           (##car _e97629774_))
                                                          (_tl97649779_
                                                           (##cdr _e97629774_)))
                                                      (let ((_spath9782_
                                                             _tl97649779_))
                                                        (if '#t
                                                            (_K9756_ _rest9757_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (_import-spec-source9526_ _spath9782_)
                                   _r9758_))
                    (_E97619770_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E97619770_)))))
                                       (let () (_E97609784_))))))))
                          (let ((_import-spec9525_
                                 (lambda (_hd9594_ _K9595_ _rest9596_ _r9597_)
                                   (let ((_e95989615_ _hd9594_))
                                     (let ((_E96079619_
                                            (lambda ()
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _e95989615_))))
                                       (let ((_E96009729_
                                              (lambda ()
                                                (if (gx#stx-pair? _e95989615_)
                                                    (let ((_e96089623_
                                                           (gx#syntax-e
                                                            _e95989615_)))
                                                      (let ((_hd96099626_
                                                             (##car _e96089623_))
                                                            (_tl96109628_
                                                             (##cdr _e96089623_)))
                                                        (if (gx#stx-pair?
                                                             _tl96109628_)
                                                            (let ((_e96119631_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl96109628_)))
                      (let ((_hd96129634_ (##car _e96119631_))
                            (_tl96139636_ (##cdr _e96119631_)))
                        (let ((_path9639_ _hd96129634_))
                          (let ((_specs9641_ _tl96139636_))
                            (if '#t
                                (let ((_src-ctx9643_
                                       (_import-spec-source9526_ _path9639_))
                                      (_exports9644_ (make-table))
                                      (_specs9645_
                                       (gx#syntax->list _specs9641_)))
                                  (begin
                                    (for-each
                                     (lambda (_out9647_)
                                       (table-set!
                                        _exports9644_
                                        (cons (##structure-ref
                                               _out9647_
                                               '3
                                               gx#module-export::t
                                               '#f)
                                              (##structure-ref
                                               _out9647_
                                               '4
                                               gx#module-export::t
                                               '#f))
                                        _out9647_))
                                     (##structure-ref
                                      _src-ctx9643_
                                      '9
                                      gx#module-context::t
                                      '#f))
                                    (_K9595_ _rest9596_
                                             (foldl1 (lambda (_spec9649_
                                                              _r9650_)
                                                       (let ((_e96519667_
                                                              _spec9649_))
                                                         (let ((_E96539671_
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _e96519667_))))
                   (let ((_E96529725_
                          (lambda ()
                            (if (gx#stx-pair? _e96519667_)
                                (let ((_e96549675_ (gx#syntax-e _e96519667_)))
                                  (let ((_hd96559678_ (##car _e96549675_))
                                        (_tl96569680_ (##cdr _e96549675_)))
                                    (let ((_phi9683_ _hd96559678_))
                                      (if (gx#stx-pair? _tl96569680_)
                                          (let ((_e96579685_
                                                 (gx#syntax-e _tl96569680_)))
                                            (let ((_hd96589688_
                                                   (##car _e96579685_))
                                                  (_tl96599690_
                                                   (##cdr _e96579685_)))
                                              (let ((_name9693_ _hd96589688_))
                                                (if (gx#stx-pair? _tl96599690_)
                                                    (let ((_e96609695_
                                                           (gx#syntax-e
                                                            _tl96599690_)))
                                                      (let ((_hd96619698_
                                                             (##car _e96609695_))
                                                            (_tl96629700_
                                                             (##cdr _e96609695_)))
                                                        (let ((_src-phi9703_
                                                               _hd96619698_))
                                                          (if (gx#stx-pair?
                                                               _tl96629700_)
                                                              (let ((_e96639705_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl96629700_)))
                        (let ((_hd96649708_ (##car _e96639705_))
                              (_tl96659710_ (##cdr _e96639705_)))
                          (let ((_src-name9713_ _hd96649708_))
                            (if (gx#stx-null? _tl96659710_)
                                (if (if (gx#stx-fixnum? _src-phi9703_)
                                        (if (gx#identifier? _src-name9713_)
                                            (if (gx#stx-fixnum? _phi9683_)
                                                (gx#identifier? _name9693_)
                                                '#f)
                                            '#f)
                                        '#f)
                                    (let ((_src-phi9715_
                                           (gx#stx-e _src-phi9703_))
                                          (_src-name9716_
                                           (gx#core-identifier-key
                                            _src-name9713_))
                                          (_phi9717_ (gx#stx-e _phi9683_))
                                          (_name9718_
                                           (gx#core-identifier-key
                                            _name9693_)))
                                      (let ((_$e9720_
                                             (table-ref
                                              _exports9644_
                                              (cons _src-phi9715_
                                                    _src-name9716_)
                                              '#f)))
                                        (if _$e9720_
                                            ((lambda (_out9723_)
                                               (cons (gx#core-module-export->import__opt-lambda10411
                                                      _out9723_
                                                      _name9718_
                                                      (fx- _phi9717_
                                                           _src-phi9715_))
                                                     _r9650_))
                                             _$e9720_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; no matching export"
                                             _stx9515_
                                             _hd9594_))))
                                    (_E96539671_))
                                (_E96539671_)))))
                      (_E96539671_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E96539671_)))))
                                          (_E96539671_)))))
                                (_E96539671_)))))
                     (let () (_E96529725_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _r9597_
                                                     _specs9645_))))
                                (_E96079619_))))))
                    (_E96079619_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E96079619_)))))
                                         (let ((_E95999751_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _e95989615_)
                                                      (let ((_e96019733_
                                                             (gx#syntax-e
                                                              _e95989615_)))
                                                        (let ((_hd96029736_
                                                               (##car _e96019733_))
                                                              (_tl96039738_
                                                               (##cdr _e96019733_)))
                                                          (if (gx#stx-pair?
                                                               _tl96039738_)
                                                              (let ((_e96049741_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl96039738_)))
                        (let ((_hd96059744_ (##car _e96049741_))
                              (_tl96069746_ (##cdr _e96049741_)))
                          (let ((_path9749_ _hd96059744_))
                            (if (gx#stx-null? _tl96069746_)
                                (if '#t
                                    (_K9595_ _rest9596_
                                             (cons (_import-spec-source9526_
                                                    _path9749_)
                                                   _r9597_))
                                    (_E96009729_))
                                (_E96009729_)))))
                      (_E96009729_))))
              (_E96009729_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let () (_E95999751_)))))))))
                            (let ((_expand19518_
                                   (lambda (_hd9961_
                                            _K9962_
                                            _rest9963_
                                            _r9964_)
                                     (if (gx#core-bound-module? _hd9961_)
                                         (_import19519_
                                          (gx#syntax-local-e__0 _hd9961_)
                                          _K9962_
                                          _rest9963_
                                          _r9964_)
                                         (if (gx#core-library-module-path?
                                              _hd9961_)
                                             (_import19519_
                                              (gx#import-module__0
                                               (gx#core-resolve-library-module-path
                                                _hd9961_))
                                              _K9962_
                                              _rest9963_
                                              _r9964_)
                                             (if (gx#stx-string? _hd9961_)
                                                 (_import19519_
                                                  (gx#import-module__0
                                                   (gx#core-resolve-module-path__opt-lambda10765
                                                    _hd9961_
                                                    (gx#stx-source _stx9515_)))
                                                  _K9962_
                                                  _rest9963_
                                                  _r9964_)
                                                 (if (##structure-instance-of?
                                                      (gx#stx-e _hd9961_)
                                                      'gx#module-context::t)
                                                     (_K9962_ _rest9963_
                                                              (cons (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd9961_)
                            _r9964_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (_import-spec?9520_
                                                          _hd9961_)
                                                         (_import-spec9525_
                                                          _hd9961_
                                                          _K9962_
                                                          _rest9963_
                                                          _r9964_)
                                                         (if (_import-submodule?9521_
                                                              _hd9961_)
                                                             (_import-submodule9523_
                                                              _hd9961_
                                                              _K9962_
                                                              _rest9963_
                                                              _r9964_)
                                                             (if (_import-runtime?9522_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd9961_)
                         (_import-runtime9524_
                          _hd9961_
                          _K9962_
                          _rest9963_
                          _r9964_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; illegal import"
                          _stx9515_
                          _hd9961_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (let ((_rbody9530_
                                     (gx#core-expand-import/export
                                      _stx9515_
                                      _expanded-import?9528_
                                      'apply-import-expander
                                      gx#current-import-expander-phi
                                      _expand19518_)))
                                (if _internal-expand?9516_
                                    (reverse _rbody9530_)
                                    (gx#core-quote-syntax__1
                                     (gx#core-cons
                                      '%#import
                                      (_import!9527_ _rbody9530_))
                                     (gx#stx-source _stx9515_)))))))))))))))))
    (begin
      (define gx#core-expand-import%__0
        (lambda (_stx9969_)
          (let ((_internal-expand?9971_ '#f))
            (gx#core-expand-import%__opt-lambda9513
             _stx9969_
             _internal-expand?9971_))))
      (define gx#core-expand-import%
        (lambda _g11162_
          (let ((_g11161_ (length _g11162_)))
            (cond ((fx= _g11161_ 1) (apply gx#core-expand-import%__0 _g11162_))
                  ((fx= _g11161_ 2)
                   (apply gx#core-expand-import%__opt-lambda9513 _g11162_))
                  (else (error "No clause matching arguments" _g11162_))))))))
  (define gx#core-import-nested-module
    (lambda (_spath9442_ _where9443_)
      (let ((_e94449451_ _spath9442_))
        (let ((_E94469455_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e94449451_))))
          (let ((_E94459510_
                 (lambda ()
                   (if (gx#stx-pair? _e94449451_)
                       (let ((_e94479459_ (gx#syntax-e _e94449451_)))
                         (let ((_hd94489462_ (##car _e94479459_))
                               (_tl94499464_ (##cdr _e94479459_)))
                           (let ((_origin9467_ _hd94489462_))
                             (let ((_sub9469_ _tl94499464_))
                               (if '#t
                                   (let ((_origin-ctx9471_
                                          (if (gx#stx-false? _origin9467_)
                                              (gx#current-expander-context)
                                              (gx#import-module__0
                                               _origin9467_))))
                                     ((letrec ((_lp9473_
                                                (lambda (_rest9475_ _ctx9476_)
                                                  (let ((_e94779484_
                                                         _rest9475_))
                                                    (let ((_E94799488_
                                                           (lambda ()
                                                             _ctx9476_)))
                                                      (let ((_E94789506_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _e94779484_)
                           (let ((_e94809492_ (gx#syntax-e _e94779484_)))
                             (let ((_hd94819495_ (##car _e94809492_))
                                   (_tl94829497_ (##cdr _e94809492_)))
                               (let ((_id9500_ _hd94819495_))
                                 (let ((_rest9502_ _tl94829497_))
                                   (if '#t
                                       (let ((_bind9504_
                                              (gx#resolve-identifier__opt-lambda4587
                                               _id9500_
                                               '0
                                               _ctx9476_)))
                                         (begin
                                           (if (if (##structure-direct-instance-of?
                                                    _bind9504_
                                                    'gx#syntax-binding::t)
                                                   (##structure-instance-of?
                                                    (##structure-ref
                                                     _bind9504_
                                                     '4
                                                     gx#syntax-binding::t
                                                     '#f)
                                                    'gx#module-context::t)
                                                   '#f)
                                               '#!void
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; not bound as module"
                                                _where9443_
                                                _spath9442_
                                                _id9500_))
                                           (_lp9473_
                                            _rest9502_
                                            (##structure-ref
                                             _bind9504_
                                             '4
                                             gx#syntax-binding::t
                                             '#f))))
                                       (_E94799488_))))))
                           (_E94799488_)))))
                (let () (_E94789506_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _lp9473_)
                                      _sub9469_
                                      _origin-ctx9471_))
                                   (_E94469455_))))))
                       (_E94469455_)))))
            (let () (_E94459510_)))))))
  (define gx#core-expand-import-source
    (lambda (_hd9440_)
      (gx#core-expand-import%__opt-lambda9513
       (cons 'import-internal% (cons _hd9440_ '()))
       '#t)))
  (begin
    (define gx#core-expand-export%__opt-lambda9022
      (lambda (_stx9024_ _internal-expand?9025_)
        (let ((_make-export__opt-lambda9386__1113011131_
               (lambda (_bind9388_ _phi9389_ _ctx9390_ _name9391_)
                 (let ((_key9393_
                        (##structure-ref _bind9388_ '2 gx#binding::t '#f)))
                   (let ((_export-key9395_
                          (if _name9391_
                              (gx#core-identifier-key _name9391_)
                              _key9393_)))
                     (let ()
                       (##structure
                        gx#module-export::t
                        _ctx9390_
                        _key9393_
                        _phi9389_
                        _export-key9395_
                        (let ((_$e9398_
                               (##structure-instance-of?
                                _bind9388_
                                'gx#extern-binding::t)))
                          (if _$e9398_
                              _$e9398_
                              (##structure-direct-instance-of?
                               _bind9388_
                               'gx#import-binding::t))))))))))
          (let ((_make-export__0__1113211135_
                 (lambda (_bind9404_)
                   (let ((_phi9406_ (gx#current-export-expander-phi)))
                     (let ((_ctx9408_ (gx#current-expander-context)))
                       (let ((_name9410_ '#f))
                         (_make-export__opt-lambda9386__1113011131_
                          _bind9404_
                          _phi9406_
                          _ctx9408_
                          _name9410_)))))))
            (let ((_make-export__1__1113311136_
                   (lambda (_bind9412_ _phi9413_)
                     (let ((_ctx9415_ (gx#current-expander-context)))
                       (let ((_name9417_ '#f))
                         (_make-export__opt-lambda9386__1113011131_
                          _bind9412_
                          _phi9413_
                          _ctx9415_
                          _name9417_))))))
              (let ((_make-export__2__1113411137_
                     (lambda (_bind9419_ _phi9420_ _ctx9421_)
                       (let ((_name9423_ '#f))
                         (_make-export__opt-lambda9386__1113011131_
                          _bind9419_
                          _phi9420_
                          _ctx9421_
                          _name9423_)))))
                (let ((_make-export9027_
                       (lambda _g11164_
                         (let ((_g11163_ (length _g11164_)))
                           (cond ((fx= _g11163_ 1)
                                  (apply _make-export__0__1113211135_
                                         _g11164_))
                                 ((fx= _g11163_ 2)
                                  (apply _make-export__1__1113311136_
                                         _g11164_))
                                 ((fx= _g11163_ 3)
                                  (apply _make-export__2__1113411137_
                                         _g11164_))
                                 ((fx= _g11163_ 4)
                                  (apply _make-export__opt-lambda9386__1113011131_
                                         _g11164_))
                                 (else
                                  (error "No clause matching arguments"
                                         _g11164_)))))))
                  (let ((_export-imports9029_
                         (lambda (_src9050_ _r9051_)
                           (let ((_current-ctx9053_
                                  (gx#current-expander-context)))
                             (let ((_current-phi9054_
                                    (gx#current-export-expander-phi)))
                               (let ((_import->export9055_
                                      (lambda (_in9063_)
                                        (let ((_in90649072_ _in9063_))
                                          (let ((_E90669076_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _in90649072_))))
                                            (let ((_K90679083_
                                                   (lambda (_phi9079_
                                                            _key9080_
                                                            _out9081_)
                                                     (if (fx= _phi9079_
                                                              _current-phi9054_)
                                                         (if (eq? _src9050_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##structure-ref
                           _out9081_
                           '1
                           gx#module-export::t
                           '#f))
                     (##structure
                      gx#module-export::t
                      _current-ctx9053_
                      _key9080_
                      _phi9079_
                      _key9080_
                      '#t)
                     '#f)
                 '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (direct-struct-instance?
                                                   gx#module-import::t
                                                   _in90649072_)
                                                  (let ((_e90689086_
                                                         (##vector-ref
                                                          _in90649072_
                                                          '1)))
                                                    (let ((_out9089_
                                                           _e90689086_))
                                                      (let ((_e90699091_
                                                             (##vector-ref
                                                              _in90649072_
                                                              '2)))
                                                        (let ((_key9094_
                                                               _e90699091_))
                                                          (let ((_e90709096_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref _in90649072_ '3)))
                    (let ((_phi9099_ _e90709096_))
                      (_K90679083_ _phi9099_ _key9094_ _out9089_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E90669076_))))))))
                                 (let ((_fold-e9056_
                                        (lambda (_in9058_ _r9059_)
                                          (let ((_out9061_
                                                 (_import->export9055_
                                                  _in9058_)))
                                            (if _out9061_
                                                (cons _out9061_ _r9059_)
                                                _r9059_)))))
                                   (cons (##structure
                                          gx#export-set::t
                                          _src9050_
                                          _current-phi9054_
                                          (foldl1 _fold-e9056_
                                                  '()
                                                  (##structure-ref
                                                   _current-ctx9053_
                                                   '8
                                                   gx#module-context::t
                                                   '#f)))
                                         _r9051_))))))))
                    (let ((_export!9030_
                           (lambda (_rbody9040_)
                             (let ((_current-ctx9042_
                                    (gx#current-expander-context)))
                               (let ((_fold-e9043_
                                      (lambda (_out9047_ _r9048_)
                                        (if (##structure-direct-instance-of?
                                             _out9047_
                                             'gx#module-export::t)
                                            (cons _out9047_ _r9048_)
                                            (if (##structure-direct-instance-of?
                                                 _out9047_
                                                 'gx#export-set::t)
                                                (foldl1 cons
                                                        _r9048_
                                                        (##structure-ref
                                                         _out9047_
                                                         '3
                                                         gx#export-set::t
                                                         '#f))
                                                _r9048_)))))
                                 (let ((_body9045_ (reverse _rbody9040_)))
                                   (begin
                                     (##structure-set!
                                      _current-ctx9042_
                                      (foldl1 _fold-e9043_
                                              (##structure-ref
                                               _current-ctx9042_
                                               '9
                                               gx#module-context::t
                                               '#f)
                                              _body9045_)
                                      '9
                                      gx#module-context::t
                                      '#f)
                                     _body9045_)))))))
                      (let ((_expanded-export?9031_
                             (lambda (_e9035_)
                               (let ((_$e9037_
                                      (##structure-direct-instance-of?
                                       _e9035_
                                       'gx#module-export::t)))
                                 (if _$e9037_
                                     _$e9037_
                                     (##structure-direct-instance-of?
                                      _e9035_
                                      'gx#export-set::t))))))
                        (let ((_expand19028_
                               (lambda (_hd9101_ _K9102_ _rest9103_ _r9104_)
                                 (let ((_e91059137_ _hd9101_))
                                   (let ((_E91329141_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; illegal export"
                                             _stx9024_
                                             _hd9101_))))
                                     (let ((_E91229220_
                                            (lambda ()
                                              (if (gx#stx-pair? _e91059137_)
                                                  (let ((_e91339145_
                                                         (gx#syntax-e
                                                          _e91059137_)))
                                                    (let ((_hd91349148_
                                                           (##car _e91339145_))
                                                          (_tl91359150_
                                                           (##cdr _e91339145_)))
                                                      (if (eq? (gx#stx-e
                                                                _hd91349148_)
                                                               'import:)
                                                          (let ((_in9153_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl91359150_))
                    (if (gx#stx-list? _in9153_)
                        ((letrec ((_lp9155_
                                   (lambda (_in-rest9157_ _r9158_)
                                     (let ((_e91599166_ _in-rest9157_))
                                       (let ((_E91619170_
                                              (lambda ()
                                                (_K9102_ _rest9103_ _r9158_))))
                                         (let ((_E91609216_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _e91599166_)
                                                      (let ((_e91629174_
                                                             (gx#syntax-e
                                                              _e91599166_)))
                                                        (let ((_hd91639177_
                                                               (##car _e91629174_))
                                                              (_tl91649179_
                                                               (##cdr _e91629174_)))
                                                          (let ((_hd9182_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd91639177_))
                    (let ((_in-rest9184_ _tl91649179_))
                      (if '#t
                          (let ((_src9214_
                                 (if (gx#core-bound-module? _hd9182_)
                                     (gx#syntax-local-e__0 _hd9182_)
                                     (if (gx#core-library-module-path?
                                          _hd9182_)
                                         (gx#import-module__0
                                          (gx#core-resolve-library-module-path
                                           _hd9182_))
                                         (if (gx#stx-string? _hd9182_)
                                             (gx#import-module__0
                                              (gx#core-resolve-module-path__opt-lambda10765
                                               _hd9182_
                                               (gx#stx-source _stx9024_)))
                                             (let ((_e91859192_ _hd9182_))
                                               (let ((_E91879196_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; illegal re-export"
                                                         _stx9024_
                                                         _hd9182_))))
                                                 (let ((_E91869210_
                                                        (lambda ()
                                                          (if (gx#stx-pair?
                                                               _e91859192_)
                                                              (let ((_e91889200_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _e91859192_)))
                        (let ((_hd91899203_ (##car _e91889200_))
                              (_tl91909205_ (##cdr _e91889200_)))
                          (if (eq? (gx#stx-e _hd91899203_) 'in:)
                              (let ((_spath9208_ _tl91909205_))
                                (if '#t
                                    (gx#core-import-nested-module
                                     _spath9208_
                                     _stx9024_)
                                    (_E91879196_)))
                              (_E91879196_))))
                      (_E91879196_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (_E91869210_))))))))))
                            (_lp9155_
                             _in-rest9184_
                             (_export-imports9029_ _src9214_ _r9158_)))
                          (_E91619170_))))))
              (_E91619170_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let () (_E91609216_))))))))
                           _lp9155_)
                         _in9153_
                         _r9104_)
                        (_E91329141_)))
                  (_E91329141_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E91329141_)))))
                                       (let ((_E91099259_
                                              (lambda ()
                                                (if (gx#stx-pair? _e91059137_)
                                                    (let ((_e91239224_
                                                           (gx#syntax-e
                                                            _e91059137_)))
                                                      (let ((_hd91249227_
                                                             (##car _e91239224_))
                                                            (_tl91259229_
                                                             (##cdr _e91239224_)))
                                                        (if (eq? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd91249227_)
                         'rename:)
                    (if (gx#stx-pair? _tl91259229_)
                        (let ((_e91269232_ (gx#syntax-e _tl91259229_)))
                          (let ((_hd91279235_ (##car _e91269232_))
                                (_tl91289237_ (##cdr _e91269232_)))
                            (let ((_id9240_ _hd91279235_))
                              (if (gx#stx-pair? _tl91289237_)
                                  (let ((_e91299242_
                                         (gx#syntax-e _tl91289237_)))
                                    (let ((_hd91309245_ (##car _e91299242_))
                                          (_tl91319247_ (##cdr _e91299242_)))
                                      (let ((_name9250_ _hd91309245_))
                                        (if (gx#stx-null? _tl91319247_)
                                            (if '#t
                                                (let ((_phi9252_
                                                       (gx#current-export-expander-phi)))
                                                  (let ((_$e9254_
                                                         (gx#core-resolve-identifier__1
                                                          _id9240_
                                                          _phi9252_)))
                                                    (if _$e9254_
                                                        ((lambda (_bind9257_)
                                                           (_K9102_ _rest9103_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (_make-export__opt-lambda9386__1113011131_
                                   _bind9257_
                                   _phi9252_
                                   (gx#current-expander-context)
                                   _name9250_)
                                  _r9104_)))
                 _$e9254_)
                (gx#raise-syntax-error
                 '#f
                 '"Reference to unbound identifier"
                 _stx9024_
                 _hd9101_
                 _id9240_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E91229220_))
                                            (_E91229220_)))))
                                  (_E91229220_)))))
                        (_E91229220_))
                    (_E91229220_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E91229220_)))))
                                         (let ((_E91089308_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _e91059137_)
                                                      (let ((_e91109263_
                                                             (gx#syntax-e
                                                              _e91059137_)))
                                                        (let ((_hd91119266_
                                                               (##car _e91109263_))
                                                              (_tl91129268_
                                                               (##cdr _e91109263_)))
                                                          (if (eq? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd91119266_)
                           'spec:)
                      (if (gx#stx-pair? _tl91129268_)
                          (let ((_e91139271_ (gx#syntax-e _tl91129268_)))
                            (let ((_hd91149274_ (##car _e91139271_))
                                  (_tl91159276_ (##cdr _e91139271_)))
                              (let ((_phi9279_ _hd91149274_))
                                (if (gx#stx-pair? _tl91159276_)
                                    (let ((_e91169281_
                                           (gx#syntax-e _tl91159276_)))
                                      (let ((_hd91179284_ (##car _e91169281_))
                                            (_tl91189286_ (##cdr _e91169281_)))
                                        (let ((_id9289_ _hd91179284_))
                                          (if (gx#stx-pair? _tl91189286_)
                                              (let ((_e91199291_
                                                     (gx#syntax-e
                                                      _tl91189286_)))
                                                (let ((_hd91209294_
                                                       (##car _e91199291_))
                                                      (_tl91219296_
                                                       (##cdr _e91199291_)))
                                                  (let ((_name9299_
                                                         _hd91209294_))
                                                    (if (gx#stx-null?
                                                         _tl91219296_)
                                                        (if (if (gx#stx-fixnum?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _phi9279_)
                        (if (gx#identifier? _id9289_)
                            (gx#identifier? _name9299_)
                            '#f)
                        '#f)
                    (let ((_phi9301_ (gx#stx-e _phi9279_)))
                      (let ((_$e9303_
                             (gx#core-resolve-identifier__1
                              _id9289_
                              _phi9301_)))
                        (if _$e9303_
                            ((lambda (_bind9306_)
                               (_K9102_ _rest9103_
                                        (cons (_make-export__opt-lambda9386__1113011131_
                                               _bind9306_
                                               _phi9301_
                                               (gx#current-expander-context)
                                               _name9299_)
                                              _r9104_)))
                             _$e9303_)
                            (gx#raise-syntax-error
                             '#f
                             '"Reference to unbound identifier"
                             _stx9024_
                             _hd9101_
                             _id9289_))))
                    (_E91099259_))
                (_E91099259_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E91099259_)))))
                                    (_E91099259_)))))
                          (_E91099259_))
                      (_E91099259_))))
              (_E91099259_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_E91079319_
                                                  (lambda ()
                                                    (let ((_id9312_
                                                           _e91059137_))
                                                      (if (gx#identifier?
                                                           _id9312_)
                                                          (let ((_$e9314_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-resolve-identifier__1
                          _id9312_
                          (gx#current-export-expander-phi))))
                    (if _$e9314_
                        ((lambda (_bind9317_)
                           (_K9102_ _rest9103_
                                    (cons (_make-export__0__1113211135_
                                           _bind9317_)
                                          _r9104_)))
                         _$e9314_)
                        (gx#raise-syntax-error
                         '#f
                         '"Reference to unbound identifier"
                         _stx9024_
                         _hd9101_)))
                  (_E91089308_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_E91069383_
                                                    (lambda ()
                                                      (if (eq? (gx#stx-e
                                                                _e91059137_)
                                                               '#t)
                                                          (if '#t
                                                              (let ((_current-ctx9323_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#current-expander-context)))
                        (let ((_current-phi9325_
                               (gx#current-export-expander-phi)))
                          (let ((_phi-ctx9327_
                                 (gx#core-context-shift
                                  _current-ctx9323_
                                  _current-phi9325_)))
                            (let ((_phi-bind9329_
                                   (table->list
                                    (##structure-ref
                                     _phi-ctx9327_
                                     '2
                                     gx#expander-context::t
                                     '#f))))
                              (let ()
                                ((letrec ((_lp9332_
                                           (lambda (_bind-rest9334_ _set9335_)
                                             (let ((_bind-rest93369346_
                                                    _bind-rest9334_))
                                               (let ((_E93399350_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _bind-rest93369346_))))
                                                 (let ((_else93389354_
                                                        (lambda ()
                                                          (_K9102_ _rest9103_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (##structure
                                  gx#export-set::t
                                  '#f
                                  _current-phi9325_
                                  _set9335_)
                                 _r9104_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_K93409364_
                                                          (lambda (_bind-rest9357_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _bind9358_
                           _key9359_)
                    (if (let ((_$e9361_
                               (##structure-direct-instance-of?
                                _bind9358_
                                'gx#import-binding::t)))
                          (if _$e9361_
                              _$e9361_
                              (gx#private-feature-binding? _bind9358_)))
                        (_lp9332_ _bind-rest9357_ _set9335_)
                        (_lp9332_
                         _bind-rest9357_
                         (cons (_make-export__2__1113411137_
                                _bind9358_
                                _current-phi9325_
                                _current-ctx9323_)
                               _set9335_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##pair? _bind-rest93369346_)
                                                         (let ((_hd93419367_
                                                                (##car _bind-rest93369346_))
                                                               (_tl93429369_
                                                                (##cdr _bind-rest93369346_)))
                                                           (if (##pair? _hd93419367_)
                                                               (let ((_hd93439372_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##car _hd93419367_))
                             (_tl93449374_ (##cdr _hd93419367_)))
                         (let ((_key9377_ _hd93439372_))
                           (let ((_bind9379_ _tl93449374_))
                             (let ((_bind-rest9381_ _tl93429369_))
                               (_K93409364_
                                _bind-rest9381_
                                _bind9379_
                                _key9377_)))))
                       (_else93389354_)))
                 (_else93389354_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _lp9332_)
                                 _phi-bind9329_
                                 '()))))))
                      (_E91079319_))
                  (_E91079319_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let () (_E91069383_))))))))))))
                          (let ((_rbody9033_
                                 (gx#core-expand-import/export
                                  _stx9024_
                                  gx#module-export?
                                  'apply-export-expander
                                  gx#current-export-expander-phi
                                  _expand19028_)))
                            (if _internal-expand?9025_
                                (reverse _rbody9033_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#export
                                  (_export!9030_ _rbody9033_))
                                 (gx#stx-source _stx9024_)))))))))))))))
    (begin
      (define gx#core-expand-export%__0
        (lambda (_stx9433_)
          (let ((_internal-expand?9435_ '#f))
            (gx#core-expand-export%__opt-lambda9022
             _stx9433_
             _internal-expand?9435_))))
      (define gx#core-expand-export%
        (lambda _g11166_
          (let ((_g11165_ (length _g11166_)))
            (cond ((fx= _g11165_ 1) (apply gx#core-expand-export%__0 _g11166_))
                  ((fx= _g11165_ 2)
                   (apply gx#core-expand-export%__opt-lambda9022 _g11166_))
                  (else (error "No clause matching arguments" _g11166_))))))))
  (define gx#core-expand-export-source
    (lambda (_hd9021_)
      (gx#core-expand-export%__opt-lambda9022
       (cons 'export-macro% (cons _hd9021_ '()))
       '#t)))
  (define gx#core-expand-provide%
    (lambda (_stx8991_)
      (let ((_e89928999_ _stx8991_))
        (let ((_E89949003_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e89928999_))))
          (let ((_E89939017_
                 (lambda ()
                   (if (gx#stx-pair? _e89928999_)
                       (let ((_e89959007_ (gx#syntax-e _e89928999_)))
                         (let ((_hd89969010_ (##car _e89959007_))
                               (_tl89979012_ (##cdr _e89959007_)))
                           (let ((_body9015_ _tl89979012_))
                             (if (gx#identifier-list? _body9015_)
                                 (begin
                                   (gx#stx-for-each1
                                    gx#core-bind-feature!
                                    _body9015_)
                                   (gx#core-quote-syntax__1
                                    (gx#core-cons
                                     '%#provide
                                     (gx#stx-map1
                                      gx#core-quote-syntax
                                      _body9015_))
                                    (gx#stx-source _stx8991_)))
                                 (_E89949003_)))))
                       (_E89949003_)))))
            (let () (_E89939017_)))))))
  (begin
    (define gx#core-bind-feature!__opt-lambda8955
      (lambda (_id8957_ _private?8958_ _phi8959_ _ctx8960_)
        (gx#core-bind-syntax!__opt-lambda6050
         _id8957_
         ((if _private?8958_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id8957_))
         _private?8958_
         _phi8959_
         _ctx8960_)))
    (begin
      (define gx#core-bind-feature!__0
        (lambda (_id8965_)
          (let ((_private?8967_ '#f))
            (let ((_phi8969_ (gx#current-expander-phi)))
              (let ((_ctx8971_ (gx#current-expander-context)))
                (gx#core-bind-feature!__opt-lambda8955
                 _id8965_
                 _private?8967_
                 _phi8969_
                 _ctx8971_))))))
      (define gx#core-bind-feature!__1
        (lambda (_id8973_ _private?8974_)
          (let ((_phi8976_ (gx#current-expander-phi)))
            (let ((_ctx8978_ (gx#current-expander-context)))
              (gx#core-bind-feature!__opt-lambda8955
               _id8973_
               _private?8974_
               _phi8976_
               _ctx8978_)))))
      (define gx#core-bind-feature!__2
        (lambda (_id8980_ _private?8981_ _phi8982_)
          (let ((_ctx8984_ (gx#current-expander-context)))
            (gx#core-bind-feature!__opt-lambda8955
             _id8980_
             _private?8981_
             _phi8982_
             _ctx8984_))))
      (define gx#core-bind-feature!
        (lambda _g11168_
          (let ((_g11167_ (length _g11168_)))
            (cond ((fx= _g11167_ 1) (apply gx#core-bind-feature!__0 _g11168_))
                  ((fx= _g11167_ 2) (apply gx#core-bind-feature!__1 _g11168_))
                  ((fx= _g11167_ 3) (apply gx#core-bind-feature!__2 _g11168_))
                  ((fx= _g11167_ 4)
                   (apply gx#core-bind-feature!__opt-lambda8955 _g11168_))
                  (else (error "No clause matching arguments" _g11168_)))))))))
