(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1707660408)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (gxc#current-compile-optimizer-info)
            '#!void
            (gxc#current-compile-optimizer-info
             (let ((__obj286834
                    (let ()
                      (declare (not safe))
                      (##structure gxc#optimizer-info::t '#f '#f '#f))))
               (gxc#optimizer-info:::init! __obj286834)
               __obj286834)))))
    (define gxc#optimize!
      (lambda (_ctx282059_)
        (let ((__tmp286838
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _ctx282059_))
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-builtin-ssxi))
                 (let ((__tmp286840
                        (##structure-ref
                         (gxc#current-compile-optimizer-info)
                         '2
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp286839
                        (##structure-ref
                         _ctx282059_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (table-set! __tmp286840 __tmp286839 '#t))
                 (let ((_code282062_
                        (let ((__tmp286841
                               (##structure-ref
                                _ctx282059_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp286841))))
                   (##structure-set!
                    _ctx282059_
                    _code282062_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp286837
               (let () (declare (not safe)) (make-table 'test: eq?)))
              (__tmp286836
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (call-with-parameters
           __tmp286838
           gxc#current-compile-mutators
           __tmp286837
           gxc#current-compile-local-type
           __tmp286836))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda ()
        (let ()
          (declare (not safe))
          (gxc#optimizer-import-ssxi-by-id 'gerbil/builtin))
        (let ((__tmp286842
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-set! __tmp286842 'gerbil/builtin '#t))))
    (define gxc#optimizer-load-ssxi-deps
      (lambda (_ctx282003_)
        (letrec* ((_deps282005_
                   (let* ((_imports282049_
                           (##structure-ref
                            _ctx282003_
                            '8
                            gx#module-context::t
                            '#f))
                          (_$e282051_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _ctx282003_))))
                     (if _$e282051_
                         ((lambda (_g282053282055_)
                            (let ()
                              (declare (not safe))
                              (cons _g282053282055_ _imports282049_)))
                          _$e282051_)
                         _imports282049_))))
          (let _lp282007_ ((_rest282009_ _deps282005_))
            (let* ((_rest282010282018_ _rest282009_)
                   (_else282012282026_ (lambda () '#!void))
                   (_K282014282037_
                    (lambda (_rest282029_ _hd282030_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _hd282030_
                             'gx#module-context::t))
                          (begin
                            (if (let ((__tmp286856
                                       (##structure-ref
                                        (gxc#current-compile-optimizer-info)
                                        '2
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp286855
                                       (##structure-ref
                                        _hd282030_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (table-ref __tmp286856 __tmp286855 '#f))
                                '#!void
                                (begin
                                  (let ((_$e282032_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _hd282030_))))
                                    (if _$e282032_
                                        ((lambda (_pre282035_)
                                           (let ((__tmp286853
                                                  (let ((__tmp286854
                                                         (##structure-ref
                                                          _hd282030_
                                                          '8
                                                          gx#module-context::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (cons _pre282035_
                                                          __tmp286854))))
                                             (declare (not safe))
                                             (_lp282007_ __tmp286853)))
                                         _$e282032_)
                                        (let ((__tmp286852
                                               (##structure-ref
                                                _hd282030_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                          (declare (not safe))
                                          (_lp282007_ __tmp286852))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _hd282030_))))
                            (let ()
                              (declare (not safe))
                              (_lp282007_ _rest282029_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _hd282030_
                                 'gx#prelude-context::t))
                              (begin
                                (if (let ((__tmp286851
                                           (##structure-ref
                                            (gxc#current-compile-optimizer-info)
                                            '2
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp286850
                                           (##structure-ref
                                            _hd282030_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (table-ref __tmp286851 __tmp286850 '#f))
                                    '#!void
                                    (begin
                                      (let ((__tmp286849
                                             (##structure-ref
                                              _hd282030_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_lp282007_ __tmp286849))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi _hd282030_))))
                                (let ()
                                  (declare (not safe))
                                  (_lp282007_ _rest282029_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _hd282030_
                                     'gx#module-import::t))
                                  (let ((__tmp286847
                                         (let ((__tmp286848
                                                (##direct-structure-ref
                                                 _hd282030_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp286848 _rest282029_))))
                                    (declare (not safe))
                                    (_lp282007_ __tmp286847))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _hd282030_
                                         'gx#module-export::t))
                                      (let ((__tmp286845
                                             (let ((__tmp286846
                                                    (##direct-structure-ref
                                                     _hd282030_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp286846
                                                     _rest282029_))))
                                        (declare (not safe))
                                        (_lp282007_ __tmp286845))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _hd282030_
                                             'gx#import-set::t))
                                          (let ((__tmp286843
                                                 (let ((__tmp286844
                                                        (##direct-structure-ref
                                                         _hd282030_
                                                         '1
                                                         gx#import-set::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp286844
                                                         _rest282029_))))
                                            (declare (not safe))
                                            (_lp282007_ __tmp286843))
                                          (error '"Unexpected module import"
                                                 _hd282030_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest282010282018_))
                  (let ((_hd282015282040_
                         (let ()
                           (declare (not safe))
                           (##car _rest282010282018_)))
                        (_tl282016282042_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest282010282018_))))
                    (let* ((_hd282045_ _hd282015282040_)
                           (_rest282047_ _tl282016282042_))
                      (declare (not safe))
                      (_K282014282037_ _rest282047_ _hd282045_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_ctx281983_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _ctx281983_
                    'gx#module-context::t))
                 (let ((__tmp286857
                        (##structure-ref
                         _ctx281983_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp286857)))
            '#!void
            (let* ((_ht281985_
                    (##structure-ref
                     (gxc#current-compile-optimizer-info)
                     '2
                     gxc#optimizer-info::t
                     '#f))
                   (_id281987_
                    (##structure-ref
                     _ctx281983_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_mod281989_
                    (let ()
                      (declare (not safe))
                      (table-ref _ht281985_ _id281987_ '#f))))
              (let ((_$e281992_ _mod281989_))
                (if _$e281992_
                    _$e281992_
                    (let* ((_mod281995_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-import-ssxi _ctx281983_)))
                           (_val282000_
                            (let ((_$e281997_ _mod281995_))
                              (if _$e281997_ _$e281997_ '#!void))))
                      (let ()
                        (declare (not safe))
                        (table-set! _ht281985_ _id281987_ _val282000_))
                      _val282000_)))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_ctx281981_)
        (if (##structure-ref _ctx281981_ '1 gx#expander-context::t '#f)
            (let ((__tmp286858
                   (##structure-ref
                    _ctx281981_
                    '1
                    gx#expander-context::t
                    '#f)))
              (declare (not safe))
              (gxc#optimizer-import-ssxi-by-id __tmp286858))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_id281958_)
        (letrec ((_catch-e281960_
                  (lambda (_exn281979_)
                    (if (gxc#current-compile-verbose)
                        (begin
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"Failed to load ssxi module for "
                             _id281958_))
                          (display-exception _exn281979_))
                        '#!void)
                    '#f))
                 (_import-e281961_
                  (lambda ()
                    (let* ((_str-id281964_
                            (string-append
                             (let ()
                               (declare (not safe))
                               (gxc#module-id->path-string _id281958_))
                             '".ssxi"))
                           (_artefact-path281972_
                            (let ((_odir281965281967_
                                   (gxc#current-compile-output-dir)))
                              (if _odir281965281967_
                                  (let ((_odir281970_ _odir281965281967_))
                                    (path-expand
                                     (string-append _str-id281964_ '".ss")
                                     _odir281970_))
                                  '#f)))
                           (_library-path281974_
                            (string->symbol
                             (string-append '":" _str-id281964_ '".ss")))
                           (_ssxi-path281976_
                            (if (and _artefact-path281972_
                                     (file-exists? _artefact-path281972_))
                                _artefact-path281972_
                                _library-path281974_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _ssxi-path281976_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _ssxi-path281976_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (with-catch _catch-e281960_ _import-e281961_)))))
    (define gxc#optimize-source
      (lambda (_stx281949_)
        (let () (declare (not safe)) (gxc#apply-collect-mutators _stx281949_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _stx281949_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _stx281949_))
        (let* ((_stx281951_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _stx281949_)))
               (_stx281953_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _stx281951_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _stx281953_))
          (let ((_stx281956_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _stx281953_))))
            (declare (not safe))
            (gxc#apply-optimize-call _stx281956_)))))
    (define gxc#&generate-ssxi
      (make-promise
       (lambda ()
         (let ((_tbl281946_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp286859 (force gxc#&generate-runtime-empty)))
             (declare (not safe))
             (hash-copy! _tbl281946_ __tmp286859))
           (let ()
             (declare (not safe))
             (table-set! _tbl281946_ '%#begin gxc#generate-runtime-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl281946_
              '%#begin-syntax
              gxc#generate-ssxi-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl281946_ '%#module gxc#generate-ssxi-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl281946_
              '%#define-values
              gxc#generate-ssxi-define-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl281946_ '%#call gxc#generate-ssxi-call%))
           _tbl281946_))))
    (define gxc#apply-generate-ssxi
      (lambda (_stx281929_ . _args281931_)
        (let ((__tmp286861
               (lambda ()
                 (declare (not safe))
                 (if (null? _args281931_)
                     (gxc#compile-e__0 _stx281929_)
                     (let ((_arg1281936_ (car _args281931_))
                           (_rest281938_ (cdr _args281931_)))
                       (if (null? _rest281938_)
                           (gxc#compile-e__1 _stx281929_ _arg1281936_)
                           (let ((_arg2281941_ (car _rest281938_))
                                 (_rest281943_ (cdr _rest281938_)))
                             (if (null? _rest281943_)
                                 (gxc#compile-e__2
                                  _stx281929_
                                  _arg1281936_
                                  _arg2281941_)
                                 (apply gxc#compile-e
                                        _stx281929_
                                        _arg1281936_
                                        _arg2281941_
                                        _rest281943_))))))))
              (__tmp286860 (force gxc#&generate-ssxi)))
          (declare (not safe))
          (call-with-parameters
           __tmp286861
           gxc#current-compile-methods
           __tmp286860))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_stx281890_)
        (let* ((_g281892281902_
                (lambda (_g281893281899_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g281893281899_))))
               (_g281891281926_
                (lambda (_g281893281905_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g281893281905_))
                      (let ((_e281897281907_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g281893281905_))))
                        (let ((_hd281896281910_
                               (let ()
                                 (declare (not safe))
                                 (##car _e281897281907_)))
                              (_tl281895281912_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e281897281907_))))
                          ((lambda (_L281915_)
                             (let ((__tmp286864
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _stx281890_))))
                                   (__tmp286862
                                    (let ((__tmp286863
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp286863 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp286864
                                gx#current-expander-phi
                                __tmp286862)))
                           _tl281895281912_)))
                      (let ()
                        (declare (not safe))
                        (_g281892281902_ _g281893281905_))))))
          (declare (not safe))
          (_g281891281926_ _stx281890_))))
    (define gxc#generate-ssxi-module%
      (lambda (_stx281830_)
        (let* ((_g281832281846_
                (lambda (_g281833281843_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g281833281843_))))
               (_g281831281887_
                (lambda (_g281833281849_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g281833281849_))
                      (let ((_e281838281851_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g281833281849_))))
                        (let ((_hd281837281854_
                               (let ()
                                 (declare (not safe))
                                 (##car _e281838281851_)))
                              (_tl281836281856_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e281838281851_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl281836281856_))
                              (let ((_e281841281859_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl281836281856_))))
                                (let ((_hd281840281862_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e281841281859_)))
                                      (_tl281839281864_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e281841281859_))))
                                  ((lambda (_L281867_ _L281868_)
                                     (let* ((_ctx281881_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L281868_)))
                                            (_code281883_
                                             (##structure-ref
                                              _ctx281881_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp286865
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _code281883_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp286865
                                          gx#current-expander-context
                                          _ctx281881_))))
                                   _tl281839281864_
                                   _hd281840281862_)))
                              (let ()
                                (declare (not safe))
                                (_g281832281846_ _g281833281849_)))))
                      (let ()
                        (declare (not safe))
                        (_g281832281846_ _g281833281849_))))))
          (declare (not safe))
          (_g281831281887_ _stx281830_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_stx281640_)
        (letrec ((_generate-e281642_
                  (lambda (_id281819_)
                    (let* ((_sym281821_
                            (if (let ((__tmp286866
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp286866))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _id281819_))
                                '#f))
                           (_$e281823_
                            (if _sym281821_
                                (let ()
                                  (declare (not safe))
                                  (gxc#optimizer-lookup-type _sym281821_))
                                '#f)))
                      (if _$e281823_
                          ((lambda (_type281826_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"generate typedecl " _sym281821_))
                             (let* ((_typedecl281828_
                                     (let ((__method286835
                                            (let ()
                                              (declare (not safe))
                                              (method-ref
                                               _type281826_
                                               'typedecl))))
                                       (if __method286835
                                           (__method286835 _type281826_)
                                           (error '"Missing method"
                                                  _type281826_
                                                  'typedecl))))
                                    (__tmp286867
                                     (let ((__tmp286868
                                            (let ()
                                              (declare (not safe))
                                              (cons _typedecl281828_ '()))))
                                       (declare (not safe))
                                       (cons _sym281821_ __tmp286868))))
                               (declare (not safe))
                               (cons 'declare-type __tmp286867)))
                           _$e281823_)
                          '(begin))))))
          (let* ((___stx286533286534_ _stx281640_)
                 (_g281645281683_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx286533286534_)))))
            (let ((___kont286535286536_
                   (lambda (_L281801_)
                     (let ()
                       (declare (not safe))
                       (_generate-e281642_ _L281801_))))
                  (___kont286537286538_
                   (lambda (_L281736_)
                     (let ((_types281762_
                            (map _generate-e281642_
                                 (let ((__tmp286869
                                        (lambda (_g281754281757_
                                                 _g281755281759_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g281754281757_
                                                  _g281755281759_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp286869 '() _L281736_)))))
                       (declare (not safe))
                       (cons 'begin _types281762_)))))
              (let ((___match286588286589_
                     (lambda (_e281663281688_
                              _hd281662281691_
                              _tl281661281693_
                              _e281666281696_
                              _hd281665281699_
                              _tl281664281701_
                              ___splice286539286540_
                              _target281667281704_
                              _tl281669281706_)
                       (letrec ((_loop281670281709_
                                 (lambda (_hd281668281712_ _id281674281714_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd281668281712_))
                                       (let ((_e281671281717_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd281668281712_))))
                                         (let ((_lp-tl281673281722_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e281671281717_)))
                                               (_lp-hd281672281720_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e281671281717_))))
                                           (let ((__tmp286870
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd281672281720_
                                                          _id281674281714_))))
                                             (declare (not safe))
                                             (_loop281670281709_
                                              _lp-tl281673281722_
                                              __tmp286870))))
                                       (let ((_id281675281725_
                                              (reverse _id281674281714_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl281664281701_))
                                             (let ((_e281678281728_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl281664281701_))))
                                               (let ((_tl281676281733_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e281678281728_)))
                                                     (_hd281677281731_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e281678281728_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl281676281733_))
                                                     (___kont286537286538_
                                                      _id281675281725_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g281645281683_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g281645281683_))))))))
                         (let ()
                           (declare (not safe))
                           (_loop281670281709_ _target281667281704_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx286533286534_))
                    (let ((_e281650281769_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx286533286534_))))
                      (let ((_tl281648281774_
                             (let ()
                               (declare (not safe))
                               (##cdr _e281650281769_)))
                            (_hd281649281772_
                             (let ()
                               (declare (not safe))
                               (##car _e281650281769_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl281648281774_))
                            (let ((_e281653281777_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl281648281774_))))
                              (let ((_tl281651281782_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e281653281777_)))
                                    (_hd281652281780_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e281653281777_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd281652281780_))
                                    (let ((_e281656281785_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd281652281780_))))
                                      (let ((_tl281654281790_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e281656281785_)))
                                            (_hd281655281788_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e281656281785_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl281654281790_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl281651281782_))
                                                (let ((_e281659281793_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl281651281782_))))
                                                  (let ((_tl281657281798_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e281659281793_)))
                                                        (_hd281658281796_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e281659281793_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl281657281798_))
                                                        (___kont286535286536_
                                                         _hd281655281788_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _hd281652281780_))
                                                            (let ((___splice286539286540_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _hd281652281780_ '0))))
                      (let ((_tl281669281706_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice286539286540_ '1)))
                            (_target281667281704_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice286539286540_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl281669281706_))
                            (___match286588286589_
                             _e281650281769_
                             _hd281649281772_
                             _tl281648281774_
                             _e281653281777_
                             _hd281652281780_
                             _tl281651281782_
                             ___splice286539286540_
                             _target281667281704_
                             _tl281669281706_)
                            (let () (declare (not safe)) (_g281645281683_)))))
                    (let () (declare (not safe)) (_g281645281683_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _hd281652281780_))
                                                    (let ((___splice286539286540_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _hd281652281780_
                                                              '0))))
                                                      (let ((_tl281669281706_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice286539286540_ '1)))
                    (_target281667281704_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice286539286540_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl281669281706_))
                    (___match286588286589_
                     _e281650281769_
                     _hd281649281772_
                     _tl281648281774_
                     _e281653281777_
                     _hd281652281780_
                     _tl281651281782_
                     ___splice286539286540_
                     _target281667281704_
                     _tl281669281706_)
                    (let () (declare (not safe)) (_g281645281683_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g281645281683_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _hd281652281780_))
                                                (let ((___splice286539286540_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _hd281652281780_
                                                          '0))))
                                                  (let ((_tl281669281706_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice286539286540_
                                                            '1)))
                                                        (_target281667281704_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice286539286540_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl281669281706_))
                                                        (___match286588286589_
                                                         _e281650281769_
                                                         _hd281649281772_
                                                         _tl281648281774_
                                                         _e281653281777_
                                                         _hd281652281780_
                                                         _tl281651281782_
                                                         ___splice286539286540_
                                                         _target281667281704_
                                                         _tl281669281706_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g281645281683_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g281645281683_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd281652281780_))
                                        (let ((___splice286539286540_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd281652281780_
                                                  '0))))
                                          (let ((_tl281669281706_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice286539286540_
                                                    '1)))
                                                (_target281667281704_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice286539286540_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl281669281706_))
                                                (___match286588286589_
                                                 _e281650281769_
                                                 _hd281649281772_
                                                 _tl281648281774_
                                                 _e281653281777_
                                                 _hd281652281780_
                                                 _tl281651281782_
                                                 ___splice286539286540_
                                                 _target281667281704_
                                                 _tl281669281706_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g281645281683_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g281645281683_))))))
                            (let () (declare (not safe)) (_g281645281683_)))))
                    (let () (declare (not safe)) (_g281645281683_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_stx281194_)
        (let* ((___stx286591286592_ _stx281194_)
               (_g281198281300_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx286591286592_)))))
          (let ((___kont286593286594_
                 (lambda (_L281590_ _L281591_ _L281592_ _L281593_ _L281594_)
                   (let ((__tmp286871
                          (let ((__tmp286878
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L281593_)))
                                (__tmp286872
                                 (let ((__tmp286877
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L281592_)))
                                       (__tmp286873
                                        (let ((__tmp286876
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L281591_)))
                                              (__tmp286874
                                               (let ((__tmp286875
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L281590_))))
                                                 (declare (not safe))
                                                 (cons __tmp286875 '()))))
                                          (declare (not safe))
                                          (cons __tmp286876 __tmp286874))))
                                   (declare (not safe))
                                   (cons __tmp286877 __tmp286873))))
                            (declare (not safe))
                            (cons __tmp286878 __tmp286872))))
                     (declare (not safe))
                     (cons 'declare-method __tmp286871))))
                (___kont286595286596_
                 (lambda (_L281416_ _L281417_ _L281418_ _L281419_)
                   (let ((__tmp286879
                          (let ((__tmp286885
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L281418_)))
                                (__tmp286880
                                 (let ((__tmp286884
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L281417_)))
                                       (__tmp286881
                                        (let ((__tmp286883
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L281416_)))
                                              (__tmp286882
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '#f '()))))
                                          (declare (not safe))
                                          (cons __tmp286883 __tmp286882))))
                                   (declare (not safe))
                                   (cons __tmp286884 __tmp286881))))
                            (declare (not safe))
                            (cons __tmp286885 __tmp286880))))
                     (declare (not safe))
                     (cons 'declare-method __tmp286879))))
                (___kont286597286598_ (lambda () '(begin))))
            (let ((___match286726286727_
                   (lambda (_e281207281462_
                            _hd281206281465_
                            _tl281205281467_
                            _e281210281470_
                            _hd281209281473_
                            _tl281208281475_
                            _e281213281478_
                            _hd281212281481_
                            _tl281211281483_
                            _e281216281486_
                            _hd281215281489_
                            _tl281214281491_
                            _e281219281494_
                            _hd281218281497_
                            _tl281217281499_
                            _e281222281502_
                            _hd281221281505_
                            _tl281220281507_
                            _e281225281510_
                            _hd281224281513_
                            _tl281223281515_
                            _e281228281518_
                            _hd281227281521_
                            _tl281226281523_
                            _e281231281526_
                            _hd281230281529_
                            _tl281229281531_
                            _e281234281534_
                            _hd281233281537_
                            _tl281232281539_
                            _e281237281542_
                            _hd281236281545_
                            _tl281235281547_
                            _e281240281550_
                            _hd281239281553_
                            _tl281238281555_
                            _e281243281558_
                            _hd281242281561_
                            _tl281241281563_
                            _e281246281566_
                            _hd281245281569_
                            _tl281244281571_
                            _e281249281574_
                            _hd281248281577_
                            _tl281247281579_
                            _e281252281582_
                            _hd281251281585_
                            _tl281250281587_)
                     (let ((_L281590_ _hd281251281585_)
                           (_L281591_ _hd281242281561_)
                           (_L281592_ _hd281233281537_)
                           (_L281593_ _hd281224281513_)
                           (_L281594_ _hd281215281489_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L281594_
                              'bind-method!))
                           (___kont286593286594_
                            _L281590_
                            _L281591_
                            _L281592_
                            _L281593_
                            _L281594_)
                           (___kont286597286598_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx286591286592_))
                  (let ((_e281207281462_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx286591286592_))))
                    (let ((_tl281205281467_
                           (let ()
                             (declare (not safe))
                             (##cdr _e281207281462_)))
                          (_hd281206281465_
                           (let ()
                             (declare (not safe))
                             (##car _e281207281462_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl281205281467_))
                          (let ((_e281210281470_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl281205281467_))))
                            (let ((_tl281208281475_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e281210281470_)))
                                  (_hd281209281473_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e281210281470_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd281209281473_))
                                  (let ((_e281213281478_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd281209281473_))))
                                    (let ((_tl281211281483_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e281213281478_)))
                                          (_hd281212281481_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e281213281478_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd281212281481_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd281212281481_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl281211281483_))
                                                  (let ((_e281216281486_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl281211281483_))))
                                                    (let ((_tl281214281491_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e281216281486_)))
                                                          (_hd281215281489_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e281216281486_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl281214281491_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl281208281475_))
                      (let ((_e281219281494_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl281208281475_))))
                        (let ((_tl281217281499_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e281219281494_)))
                              (_hd281218281497_
                               (let ()
                                 (declare (not safe))
                                 (##car _e281219281494_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd281218281497_))
                              (let ((_e281222281502_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd281218281497_))))
                                (let ((_tl281220281507_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e281222281502_)))
                                      (_hd281221281505_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e281222281502_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd281221281505_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd281221281505_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl281220281507_))
                                              (let ((_e281225281510_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl281220281507_))))
                                                (let ((_tl281223281515_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e281225281510_)))
                                                      (_hd281224281513_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e281225281510_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl281223281515_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl281217281499_))
                                                          (let ((_e281228281518_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl281217281499_))))
                    (let ((_tl281226281523_
                           (let ()
                             (declare (not safe))
                             (##cdr _e281228281518_)))
                          (_hd281227281521_
                           (let ()
                             (declare (not safe))
                             (##car _e281228281518_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd281227281521_))
                          (let ((_e281231281526_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd281227281521_))))
                            (let ((_tl281229281531_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e281231281526_)))
                                  (_hd281230281529_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e281231281526_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd281230281529_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd281230281529_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl281229281531_))
                                          (let ((_e281234281534_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl281229281531_))))
                                            (let ((_tl281232281539_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e281234281534_)))
                                                  (_hd281233281537_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e281234281534_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl281232281539_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl281226281523_))
                                                      (let ((_e281237281542_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl281226281523_))))
                (let ((_tl281235281547_
                       (let () (declare (not safe)) (##cdr _e281237281542_)))
                      (_hd281236281545_
                       (let () (declare (not safe)) (##car _e281237281542_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd281236281545_))
                      (let ((_e281240281550_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd281236281545_))))
                        (let ((_tl281238281555_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e281240281550_)))
                              (_hd281239281553_
                               (let ()
                                 (declare (not safe))
                                 (##car _e281240281550_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd281239281553_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd281239281553_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl281238281555_))
                                      (let ((_e281243281558_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl281238281555_))))
                                        (let ((_tl281241281563_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e281243281558_)))
                                              (_hd281242281561_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e281243281558_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl281241281563_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl281235281547_))
                                                  (let ((_e281246281566_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl281235281547_))))
                                                    (let ((_tl281244281571_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e281246281566_)))
                                                          (_hd281245281569_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e281246281566_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd281245281569_))
                                                          (let ((_e281249281574_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd281245281569_))))
                    (let ((_tl281247281579_
                           (let ()
                             (declare (not safe))
                             (##cdr _e281249281574_)))
                          (_hd281248281577_
                           (let ()
                             (declare (not safe))
                             (##car _e281249281574_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd281248281577_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd281248281577_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl281247281579_))
                                  (let ((_e281252281582_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl281247281579_))))
                                    (let ((_tl281250281587_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e281252281582_)))
                                          (_hd281251281585_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e281252281582_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl281250281587_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl281244281571_))
                                              (___match286726286727_
                                               _e281207281462_
                                               _hd281206281465_
                                               _tl281205281467_
                                               _e281210281470_
                                               _hd281209281473_
                                               _tl281208281475_
                                               _e281213281478_
                                               _hd281212281481_
                                               _tl281211281483_
                                               _e281216281486_
                                               _hd281215281489_
                                               _tl281214281491_
                                               _e281219281494_
                                               _hd281218281497_
                                               _tl281217281499_
                                               _e281222281502_
                                               _hd281221281505_
                                               _tl281220281507_
                                               _e281225281510_
                                               _hd281224281513_
                                               _tl281223281515_
                                               _e281228281518_
                                               _hd281227281521_
                                               _tl281226281523_
                                               _e281231281526_
                                               _hd281230281529_
                                               _tl281229281531_
                                               _e281234281534_
                                               _hd281233281537_
                                               _tl281232281539_
                                               _e281237281542_
                                               _hd281236281545_
                                               _tl281235281547_
                                               _e281240281550_
                                               _hd281239281553_
                                               _tl281238281555_
                                               _e281243281558_
                                               _hd281242281561_
                                               _tl281241281563_
                                               _e281246281566_
                                               _hd281245281569_
                                               _tl281244281571_
                                               _e281249281574_
                                               _hd281248281577_
                                               _tl281247281579_
                                               _e281252281582_
                                               _hd281251281585_
                                               _tl281250281587_)
                                              (___kont286597286598_))
                                          (___kont286597286598_))))
                                  (___kont286597286598_))
                              (___kont286597286598_))
                          (___kont286597286598_))))
                  (___kont286597286598_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl281235281547_))
                                                      (if (let ((__tmp286886
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp286886 'bind-method!))
                  (let ((_L281416_ _hd281242281561_)
                        (_L281417_ _hd281233281537_)
                        (_L281418_ _hd281224281513_)
                        (_L281419_ _hd281215281489_))
                    (___kont286595286596_
                     _L281416_
                     _L281417_
                     _L281418_
                     _L281419_))
                  (___kont286597286598_))
              (___kont286597286598_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont286597286598_))))
                                      (___kont286597286598_))
                                  (___kont286597286598_))
                              (___kont286597286598_))))
                      (___kont286597286598_))))
              (___kont286597286598_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont286597286598_))))
                                          (___kont286597286598_))
                                      (___kont286597286598_))
                                  (___kont286597286598_))))
                          (___kont286597286598_))))
                  (___kont286597286598_))
              (___kont286597286598_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont286597286598_))
                                          (___kont286597286598_))
                                      (___kont286597286598_))))
                              (___kont286597286598_))))
                      (___kont286597286598_))
                  (___kont286597286598_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont286597286598_))
                                              (___kont286597286598_))
                                          (___kont286597286598_))))
                                  (___kont286597286598_))))
                          (___kont286597286598_))))
                  (___kont286597286598_)))))))
    (define gxc#!alias::typedecl
      (lambda (_self281170_)
        (let* ((_self281171281177_ _self281170_)
               (_E281173281181_
                (lambda () (error '"No clause matching" _self281171281177_)))
               (_K281174281186_
                (lambda (_alias-id281184_)
                  (let ((__tmp286887
                         (let ()
                           (declare (not safe))
                           (cons _alias-id281184_ '()))))
                    (declare (not safe))
                    (cons '@alias __tmp286887)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self281171281177_ 'gxc#!alias::t))
              (let* ((_e281175281189_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281171281177_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_alias-id281192_ _e281175281189_))
                (declare (not safe))
                (_K281174281186_ _alias-id281192_))
              (let () (declare (not safe)) (_E281173281181_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_self280968_)
        (let* ((_self280969280983_ _self280968_)
               (_E280971280987_
                (lambda () (error '"No clause matching" _self280969280983_)))
               (_K280972281000_
                (lambda (_methods280990_
                         _final?280991_
                         _struct?280992_
                         _constructor280993_
                         _fields280994_
                         _slots280995_
                         _precendence-list280996_
                         _super280997_
                         _id280998_)
                  (let ((__tmp286888
                         (let ((__tmp286889
                                (let ((__tmp286890
                                       (let ((__tmp286891
                                              (let ((__tmp286892
                                                     (let ((__tmp286893
                                                            (let ((__tmp286894
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp286895
                                  (let ((__tmp286896
                                         (let ((__tmp286897
                                                (if _methods280990_
                                                    (let ()
                                                      (declare (not safe))
                                                      (table->list
                                                       _methods280990_))
                                                    '#f)))
                                           (declare (not safe))
                                           (cons __tmp286897 '()))))
                                    (declare (not safe))
                                    (cons _final?280991_ __tmp286896))))
                             (declare (not safe))
                             (cons _struct?280992_ __tmp286895))))
                      (declare (not safe))
                      (cons _constructor280993_ __tmp286894))))
               (declare (not safe))
               (cons _fields280994_ __tmp286893))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _slots280995_
                                                      __tmp286892))))
                                         (declare (not safe))
                                         (cons _precendence-list280996_
                                               __tmp286891))))
                                  (declare (not safe))
                                  (cons _super280997_ __tmp286890))))
                           (declare (not safe))
                           (cons _id280998_ __tmp286889))))
                    (declare (not safe))
                    (cons '@class __tmp286888)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self280969280983_ 'gxc#!class::t))
              (let* ((_e280973281003_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280969280983_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_id281006_ _e280973281003_)
                     (_e280974281008_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280969280983_
                         '2
                         gxc#!class::t
                         '#f)))
                     (_super281011_ _e280974281008_)
                     (_e280975281013_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280969280983_
                         '3
                         gxc#!class::t
                         '#f)))
                     (_precendence-list281016_ _e280975281013_)
                     (_e280976281018_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280969280983_
                         '4
                         gxc#!class::t
                         '#f)))
                     (_slots281021_ _e280976281018_)
                     (_e280977281023_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280969280983_
                         '5
                         gxc#!class::t
                         '#f)))
                     (_fields281026_ _e280977281023_)
                     (_e280978281028_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280969280983_
                         '6
                         gxc#!class::t
                         '#f)))
                     (_constructor281031_ _e280978281028_)
                     (_e280979281033_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280969280983_
                         '7
                         gxc#!class::t
                         '#f)))
                     (_struct?281036_ _e280979281033_)
                     (_e280980281038_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280969280983_
                         '8
                         gxc#!class::t
                         '#f)))
                     (_final?281041_ _e280980281038_)
                     (_e280981281043_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280969280983_
                         '9
                         gxc#!class::t
                         '#f)))
                     (_methods281046_ _e280981281043_))
                (declare (not safe))
                (_K280972281000_
                 _methods281046_
                 _final?281041_
                 _struct?281036_
                 _constructor281031_
                 _fields281026_
                 _slots281021_
                 _precendence-list281016_
                 _super281011_
                 _id281006_))
              (let () (declare (not safe)) (_E280971280987_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_self280822_)
        (let* ((_self280823280829_ _self280822_)
               (_E280825280833_
                (lambda () (error '"No clause matching" _self280823280829_)))
               (_K280826280838_
                (lambda (_klass-id280836_)
                  (let ((__tmp286898
                         (let ()
                           (declare (not safe))
                           (cons _klass-id280836_ '()))))
                    (declare (not safe))
                    (cons '@predicate __tmp286898)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self280823280829_
                 'gxc#!predicate::t))
              (let* ((_e280827280841_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280823280829_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id280844_ _e280827280841_))
                (declare (not safe))
                (_K280826280838_ _klass-id280844_))
              (let () (declare (not safe)) (_E280825280833_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!predicate::t 'typedecl gxc#!predicate::typedecl '#f))
    (define gxc#!constructor::typedecl
      (lambda (_self280676_)
        (let* ((_self280677280683_ _self280676_)
               (_E280679280687_
                (lambda () (error '"No clause matching" _self280677280683_)))
               (_K280680280692_
                (lambda (_klass-id280690_)
                  (let ((__tmp286899
                         (let ()
                           (declare (not safe))
                           (cons _klass-id280690_ '()))))
                    (declare (not safe))
                    (cons '@constructor __tmp286899)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self280677280683_
                 'gxc#!constructor::t))
              (let* ((_e280681280695_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280677280683_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id280698_ _e280681280695_))
                (declare (not safe))
                (_K280680280692_ _klass-id280698_))
              (let () (declare (not safe)) (_E280679280687_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_self280516_)
        (let* ((_self280517280525_ _self280516_)
               (_E280519280529_
                (lambda () (error '"No clause matching" _self280517280525_)))
               (_K280520280536_
                (lambda (_checked?280532_ _slot280533_ _klass-id280534_)
                  (let ((__tmp286900
                         (let ((__tmp286901
                                (let ((__tmp286902
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?280532_ '()))))
                                  (declare (not safe))
                                  (cons _slot280533_ __tmp286902))))
                           (declare (not safe))
                           (cons _klass-id280534_ __tmp286901))))
                    (declare (not safe))
                    (cons '@accessor __tmp286900)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self280517280525_
                 'gxc#!accessor::t))
              (let* ((_e280521280539_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280517280525_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id280542_ _e280521280539_)
                     (_e280522280544_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280517280525_
                         '2
                         gxc#!accessor::t
                         '#f)))
                     (_slot280547_ _e280522280544_)
                     (_e280523280549_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280517280525_
                         '3
                         gxc#!accessor::t
                         '#f)))
                     (_checked?280552_ _e280523280549_))
                (declare (not safe))
                (_K280520280536_
                 _checked?280552_
                 _slot280547_
                 _klass-id280542_))
              (let () (declare (not safe)) (_E280519280529_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_self280356_)
        (let* ((_self280357280365_ _self280356_)
               (_E280359280369_
                (lambda () (error '"No clause matching" _self280357280365_)))
               (_K280360280376_
                (lambda (_checked?280372_ _slot280373_ _klass-id280374_)
                  (let ((__tmp286903
                         (let ((__tmp286904
                                (let ((__tmp286905
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?280372_ '()))))
                                  (declare (not safe))
                                  (cons _slot280373_ __tmp286905))))
                           (declare (not safe))
                           (cons _klass-id280374_ __tmp286904))))
                    (declare (not safe))
                    (cons '@mutator __tmp286903)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self280357280365_ 'gxc#!mutator::t))
              (let* ((_e280361280379_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280357280365_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id280382_ _e280361280379_)
                     (_e280362280384_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280357280365_
                         '2
                         gxc#!mutator::t
                         '#f)))
                     (_slot280387_ _e280362280384_)
                     (_e280363280389_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280357280365_
                         '3
                         gxc#!mutator::t
                         '#f)))
                     (_checked?280392_ _e280363280389_))
                (declare (not safe))
                (_K280360280376_
                 _checked?280392_
                 _slot280387_
                 _klass-id280382_))
              (let () (declare (not safe)) (_E280359280369_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!lambda::typedecl
      (lambda (_self280182_)
        (let* ((_self280183280193_ _self280182_)
               (_E280185280197_
                (lambda () (error '"No clause matching" _self280183280193_)))
               (_K280186280208_
                (lambda (_typedecl280200_
                         _inline280201_
                         _dispatch280202_
                         _arity280203_)
                  (if _inline280201_
                      (let ((_$e280205_ _typedecl280200_))
                        (if _$e280205_
                            _$e280205_
                            (error '"Cannot generate typedecl for inline rules")))
                      (let ((__tmp286906
                             (let ((__tmp286907
                                    (let ()
                                      (declare (not safe))
                                      (cons _dispatch280202_ '()))))
                               (declare (not safe))
                               (cons _arity280203_ __tmp286907))))
                        (declare (not safe))
                        (cons '@lambda __tmp286906))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self280183280193_ 'gxc#!lambda::t))
              (let* ((_e280187280211_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280183280193_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e280188280214_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280183280193_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity280217_ _e280188280214_)
                     (_e280189280219_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280183280193_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch280222_ _e280189280219_)
                     (_e280190280224_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280183280193_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline280227_ _e280190280224_)
                     (_e280191280229_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280183280193_
                         '5
                         gxc#!lambda::t
                         '#f)))
                     (_typedecl280232_ _e280191280229_))
                (declare (not safe))
                (_K280186280208_
                 _typedecl280232_
                 _inline280227_
                 _dispatch280222_
                 _arity280217_))
              (let () (declare (not safe)) (_E280185280197_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_self279993_)
        (letrec ((_clause-e279995_
                  (lambda (_clause280025_)
                    (let* ((_clause280026280034_ _clause280025_)
                           (_E280028280038_
                            (lambda ()
                              (error '"No clause matching"
                                     _clause280026280034_)))
                           (_K280029280044_
                            (lambda (_dispatch280041_ _arity280042_)
                              (let ((__tmp286908
                                     (let ()
                                       (declare (not safe))
                                       (cons _dispatch280041_ '()))))
                                (declare (not safe))
                                (cons _arity280042_ __tmp286908)))))
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _clause280026280034_
                             'gxc#!lambda::t))
                          (let* ((_e280030280047_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause280026280034_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                                 (_e280031280050_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause280026280034_
                                     '2
                                     gxc#!lambda::t
                                     '#f)))
                                 (_arity280053_ _e280031280050_)
                                 (_e280032280055_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause280026280034_
                                     '3
                                     gxc#!lambda::t
                                     '#f)))
                                 (_dispatch280058_ _e280032280055_))
                            (declare (not safe))
                            (_K280029280044_ _dispatch280058_ _arity280053_))
                          (let () (declare (not safe)) (_E280028280038_)))))))
          (let* ((_self279996280003_ _self279993_)
                 (_E279998280007_
                  (lambda () (error '"No clause matching" _self279996280003_)))
                 (_K279999280014_
                  (lambda (_clauses280010_)
                    (let ((_clauses280012_
                           (map _clause-e279995_ _clauses280010_)))
                      (declare (not safe))
                      (cons '@case-lambda _clauses280012_)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of?
                   _self279996280003_
                   'gxc#!case-lambda::t))
                (let* ((_e280000280017_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self279996280003_
                           '1
                           gxc#!type::t
                           '#f)))
                       (_e280001280020_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self279996280003_
                           '2
                           gxc#!case-lambda::t
                           '#f)))
                       (_clauses280023_ _e280001280020_))
                  (declare (not safe))
                  (_K279999280014_ _clauses280023_))
                (let () (declare (not safe)) (_E279998280007_)))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_self279836_)
        (let* ((_self279837279845_ _self279836_)
               (_E279839279849_
                (lambda () (error '"No clause matching" _self279837279845_)))
               (_K279840279855_
                (lambda (_dispatch279852_ _table279853_)
                  (let ((__tmp286909
                         (let ((__tmp286910
                                (let ()
                                  (declare (not safe))
                                  (cons _dispatch279852_ '()))))
                           (declare (not safe))
                           (cons _table279853_ __tmp286910))))
                    (declare (not safe))
                    (cons '@kw-lambda __tmp286909)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self279837279845_
                 'gxc#!kw-lambda::t))
              (let* ((_e279841279858_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self279837279845_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e279842279861_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self279837279845_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table279864_ _e279842279861_)
                     (_e279843279866_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self279837279845_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch279869_ _e279843279866_))
                (declare (not safe))
                (_K279840279855_ _dispatch279869_ _table279864_))
              (let () (declare (not safe)) (_E279839279849_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!kw-lambda::t 'typedecl gxc#!kw-lambda::typedecl '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_self279679_)
        (let* ((_self279680279688_ _self279679_)
               (_E279682279692_
                (lambda () (error '"No clause matching" _self279680279688_)))
               (_K279683279698_
                (lambda (_main279695_ _keys279696_)
                  (let ((__tmp286911
                         (let ((__tmp286912
                                (let ()
                                  (declare (not safe))
                                  (cons _main279695_ '()))))
                           (declare (not safe))
                           (cons _keys279696_ __tmp286912))))
                    (declare (not safe))
                    (cons '@kw-lambda-dispatch __tmp286911)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self279680279688_
                 'gxc#!kw-lambda-primary::t))
              (let* ((_e279684279701_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self279680279688_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e279685279704_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self279680279688_
                         '2
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_keys279707_ _e279685279704_)
                     (_e279686279709_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self279680279688_
                         '3
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_main279712_ _e279686279709_))
                (declare (not safe))
                (_K279683279698_ _main279712_ _keys279707_))
              (let () (declare (not safe)) (_E279682279692_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))))
