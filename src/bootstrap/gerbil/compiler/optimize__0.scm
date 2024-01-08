(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1704735501)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (gxc#current-compile-optimizer-info)
            '#!void
            (gxc#current-compile-optimizer-info
             (let ((__obj69682 (make-object gxc#optimizer-info::t '3)))
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-info:::init! __obj69682))
               __obj69682)))))
    (define gxc#optimize!
      (lambda (_ctx69375_)
        (let ((__tmp69686
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _ctx69375_))
                 (let ((__tmp69688
                        (##structure-ref
                         (gxc#current-compile-optimizer-info)
                         '2
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp69687
                        (##structure-ref
                         _ctx69375_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (table-set! __tmp69688 __tmp69687 '#t))
                 (let ((_code69378_
                        (let ((__tmp69689
                               (##structure-ref
                                _ctx69375_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp69689))))
                   (##structure-set!
                    _ctx69375_
                    _code69378_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp69685
               (let () (declare (not safe)) (make-table 'test: eq?)))
              (__tmp69684
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (call-with-parameters
           __tmp69686
           gxc#current-compile-mutators
           __tmp69685
           gxc#current-compile-local-type
           __tmp69684))))
    (define gxc#optimizer-load-ssxi-deps
      (lambda (_ctx69320_)
        (letrec* ((_deps69322_
                   (let* ((_imports69366_
                           (##structure-ref
                            _ctx69320_
                            '8
                            gx#module-context::t
                            '#f))
                          (_$e69368_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _ctx69320_))))
                     (if _$e69368_
                         ((lambda (_g6937069372_)
                            (let ()
                              (declare (not safe))
                              (cons _g6937069372_ _imports69366_)))
                          _$e69368_)
                         _imports69366_))))
          (let _lp69324_ ((_rest69326_ _deps69322_))
            (let* ((_rest6932769335_ _rest69326_)
                   (_else6932969343_ (lambda () '#!void))
                   (_K6933169354_
                    (lambda (_rest69346_ _hd69347_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _hd69347_
                             'gx#module-context::t))
                          (begin
                            (if (let ((__tmp69703
                                       (##structure-ref
                                        (gxc#current-compile-optimizer-info)
                                        '2
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp69702
                                       (##structure-ref
                                        _hd69347_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (table-ref __tmp69703 __tmp69702 '#f))
                                '#!void
                                (begin
                                  (let ((_$e69349_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _hd69347_))))
                                    (if _$e69349_
                                        ((lambda (_pre69352_)
                                           (let ((__tmp69700
                                                  (let ((__tmp69701
                                                         (##structure-ref
                                                          _hd69347_
                                                          '8
                                                          gx#module-context::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (cons _pre69352_
                                                          __tmp69701))))
                                             (declare (not safe))
                                             (_lp69324_ __tmp69700)))
                                         _$e69349_)
                                        (let ((__tmp69699
                                               (##structure-ref
                                                _hd69347_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                          (declare (not safe))
                                          (_lp69324_ __tmp69699))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _hd69347_))))
                            (let ()
                              (declare (not safe))
                              (_lp69324_ _rest69346_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _hd69347_
                                 'gx#prelude-context::t))
                              (begin
                                (if (let ((__tmp69698
                                           (##structure-ref
                                            (gxc#current-compile-optimizer-info)
                                            '2
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp69697
                                           (##structure-ref
                                            _hd69347_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (table-ref __tmp69698 __tmp69697 '#f))
                                    '#!void
                                    (begin
                                      (let ((__tmp69696
                                             (##structure-ref
                                              _hd69347_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_lp69324_ __tmp69696))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi _hd69347_))))
                                (let ()
                                  (declare (not safe))
                                  (_lp69324_ _rest69346_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _hd69347_
                                     'gx#module-import::t))
                                  (let ((__tmp69694
                                         (let ((__tmp69695
                                                (##direct-structure-ref
                                                 _hd69347_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp69695 _rest69346_))))
                                    (declare (not safe))
                                    (_lp69324_ __tmp69694))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _hd69347_
                                         'gx#module-export::t))
                                      (let ((__tmp69692
                                             (let ((__tmp69693
                                                    (##direct-structure-ref
                                                     _hd69347_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp69693 _rest69346_))))
                                        (declare (not safe))
                                        (_lp69324_ __tmp69692))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _hd69347_
                                             'gx#import-set::t))
                                          (let ((__tmp69690
                                                 (let ((__tmp69691
                                                        (##direct-structure-ref
                                                         _hd69347_
                                                         '1
                                                         gx#import-set::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp69691
                                                         _rest69346_))))
                                            (declare (not safe))
                                            (_lp69324_ __tmp69690))
                                          (error '"Unexpected module import"
                                                 _hd69347_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest6932769335_))
                  (let ((_hd6933269357_
                         (let ()
                           (declare (not safe))
                           (##car _rest6932769335_)))
                        (_tl6933369359_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6932769335_))))
                    (let* ((_hd69362_ _hd6933269357_)
                           (_rest69364_ _tl6933369359_))
                      (declare (not safe))
                      (_K6933169354_ _rest69364_ _hd69362_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_ctx69300_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of? _ctx69300_ 'gx#module-context::t))
                 (let ((__tmp69704
                        (##structure-ref
                         _ctx69300_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp69704)))
            '#!void
            (let* ((_ht69302_
                    (##structure-ref
                     (gxc#current-compile-optimizer-info)
                     '2
                     gxc#optimizer-info::t
                     '#f))
                   (_id69304_
                    (##structure-ref _ctx69300_ '1 gx#expander-context::t '#f))
                   (_mod69306_
                    (let ()
                      (declare (not safe))
                      (table-ref _ht69302_ _id69304_ '#f))))
              (let ((_$e69309_ _mod69306_))
                (if _$e69309_
                    _$e69309_
                    (let* ((_mod69312_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-import-ssxi _ctx69300_)))
                           (_val69317_
                            (let ((_$e69314_ _mod69312_))
                              (if _$e69314_ _$e69314_ '#!void))))
                      (let ()
                        (declare (not safe))
                        (table-set! _ht69302_ _id69304_ _val69317_))
                      _val69317_)))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_ctx69277_)
        (letrec ((_catch-e69279_
                  (lambda (_exn69298_)
                    (if (gxc#current-compile-verbose)
                        (begin
                          (displayln
                           '"Failed to load ssxi module for "
                           (##structure-ref
                            _ctx69277_
                            '1
                            gx#expander-context::t
                            '#f))
                          (display-exception _exn69298_))
                        '#!void)
                    '#f))
                 (_import-e69280_
                  (lambda ()
                    (let* ((_str-id69283_
                            (string-append
                             (let ((__tmp69705
                                    (##structure-ref
                                     _ctx69277_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#module-id->path-string __tmp69705))
                             '".ssxi"))
                           (_artefact-path69291_
                            (let ((_odir6928469286_
                                   (gxc#current-compile-output-dir)))
                              (if _odir6928469286_
                                  (let ((_odir69289_ _odir6928469286_))
                                    (path-expand
                                     (string-append _str-id69283_ '".ss")
                                     _odir69289_))
                                  '#f)))
                           (_library-path69293_
                            (string->symbol
                             (string-append '":" _str-id69283_ '".ss")))
                           (_ssxi-path69295_
                            (if (and _artefact-path69291_
                                     (file-exists? _artefact-path69291_))
                                _artefact-path69291_
                                _library-path69293_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"Loading ssxi module " _ssxi-path69295_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _ssxi-path69295_ '#t '#t))))))
          (if (##structure-ref _ctx69277_ '1 gx#expander-context::t '#f)
              (let ()
                (declare (not safe))
                (with-catch _catch-e69279_ _import-e69280_))
              '#f))))
    (define gxc#optimize-source
      (lambda (_stx69268_)
        (let () (declare (not safe)) (gxc#apply-collect-mutators _stx69268_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _stx69268_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _stx69268_))
        (let* ((_stx69270_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _stx69268_)))
               (_stx69272_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _stx69270_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _stx69272_))
          (let ((_stx69275_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _stx69272_))))
            (declare (not safe))
            (gxc#apply-optimize-call _stx69275_)))))
    (define gxc#&generate-ssxi
      (make-promise
       (lambda ()
         (let ((_tbl69265_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp69706 (force gxc#&generate-runtime-empty)))
             (declare (not safe))
             (hash-copy! _tbl69265_ __tmp69706))
           (let ()
             (declare (not safe))
             (table-set! _tbl69265_ '%#begin gxc#generate-runtime-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl69265_
              '%#begin-syntax
              gxc#generate-ssxi-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl69265_ '%#module gxc#generate-ssxi-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl69265_
              '%#define-values
              gxc#generate-ssxi-define-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl69265_ '%#call gxc#generate-ssxi-call%))
           _tbl69265_))))
    (define gxc#apply-generate-ssxi
      (lambda (_stx69248_ . _args69250_)
        (let ((__tmp69708
               (lambda ()
                 (declare (not safe))
                 (if (null? _args69250_)
                     (gxc#compile-e__0 _stx69248_)
                     (let ((_arg169255_ (car _args69250_))
                           (_rest69257_ (cdr _args69250_)))
                       (if (null? _rest69257_)
                           (gxc#compile-e__1 _stx69248_ _arg169255_)
                           (let ((_arg269260_ (car _rest69257_))
                                 (_rest69262_ (cdr _rest69257_)))
                             (if (null? _rest69262_)
                                 (gxc#compile-e__2
                                  _stx69248_
                                  _arg169255_
                                  _arg269260_)
                                 (apply gxc#compile-e
                                        _stx69248_
                                        _arg169255_
                                        _arg269260_
                                        _rest69262_))))))))
              (__tmp69707 (force gxc#&generate-ssxi)))
          (declare (not safe))
          (call-with-parameters
           __tmp69708
           gxc#current-compile-methods
           __tmp69707))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_stx69209_)
        (let* ((_g6921169221_
                (lambda (_g6921269218_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g6921269218_))))
               (_g6921069245_
                (lambda (_g6921269224_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g6921269224_))
                      (let ((_e6921669226_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g6921269224_))))
                        (let ((_hd6921569229_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6921669226_)))
                              (_tl6921469231_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6921669226_))))
                          ((lambda (_L69234_)
                             (let ((__tmp69711
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _stx69209_))))
                                   (__tmp69709
                                    (let ((__tmp69710
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp69710 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp69711
                                gx#current-expander-phi
                                __tmp69709)))
                           _tl6921469231_)))
                      (let ()
                        (declare (not safe))
                        (_g6921169221_ _g6921269224_))))))
          (declare (not safe))
          (_g6921069245_ _stx69209_))))
    (define gxc#generate-ssxi-module%
      (lambda (_stx69149_)
        (let* ((_g6915169165_
                (lambda (_g6915269162_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g6915269162_))))
               (_g6915069206_
                (lambda (_g6915269168_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g6915269168_))
                      (let ((_e6915769170_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g6915269168_))))
                        (let ((_hd6915669173_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6915769170_)))
                              (_tl6915569175_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6915769170_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl6915569175_))
                              (let ((_e6916069178_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl6915569175_))))
                                (let ((_hd6915969181_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6916069178_)))
                                      (_tl6915869183_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6916069178_))))
                                  ((lambda (_L69186_ _L69187_)
                                     (let* ((_ctx69200_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L69187_)))
                                            (_code69202_
                                             (##structure-ref
                                              _ctx69200_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp69712
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _code69202_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp69712
                                          gx#current-expander-context
                                          _ctx69200_))))
                                   _tl6915869183_
                                   _hd6915969181_)))
                              (let ()
                                (declare (not safe))
                                (_g6915169165_ _g6915269168_)))))
                      (let ()
                        (declare (not safe))
                        (_g6915169165_ _g6915269168_))))))
          (declare (not safe))
          (_g6915069206_ _stx69149_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_stx68959_)
        (letrec ((_generate-e68961_
                  (lambda (_id69138_)
                    (let* ((_sym69140_
                            (if (let ((__tmp69713
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp69713))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _id69138_))
                                '#f))
                           (_$e69142_
                            (if _sym69140_
                                (let ()
                                  (declare (not safe))
                                  (gxc#optimizer-lookup-type _sym69140_))
                                '#f)))
                      (if _$e69142_
                          ((lambda (_type69145_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"generate typedecl " _sym69140_))
                             (let* ((_typedecl69147_
                                     (let ((__method69683
                                            (let ()
                                              (declare (not safe))
                                              (method-ref
                                               _type69145_
                                               'typedecl))))
                                       (if __method69683
                                           (__method69683 _type69145_)
                                           (error '"Missing method"
                                                  _type69145_
                                                  'typedecl))))
                                    (__tmp69714
                                     (let ((__tmp69715
                                            (let ()
                                              (declare (not safe))
                                              (cons _typedecl69147_ '()))))
                                       (declare (not safe))
                                       (cons _sym69140_ __tmp69715))))
                               (declare (not safe))
                               (cons 'declare-type __tmp69714)))
                           _$e69142_)
                          '(begin))))))
          (let* ((___stx6938169382_ _stx68959_)
                 (_g6896469002_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx6938169382_)))))
            (let ((___kont6938369384_
                   (lambda (_L69120_)
                     (let ()
                       (declare (not safe))
                       (_generate-e68961_ _L69120_))))
                  (___kont6938569386_
                   (lambda (_L69055_)
                     (let ((_types69081_
                            (map _generate-e68961_
                                 (let ((__tmp69716
                                        (lambda (_g6907369076_ _g6907469078_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g6907369076_
                                                  _g6907469078_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp69716 '() _L69055_)))))
                       (declare (not safe))
                       (cons 'begin _types69081_)))))
              (let ((___match6943669437_
                     (lambda (_e6898269007_
                              _hd6898169010_
                              _tl6898069012_
                              _e6898569015_
                              _hd6898469018_
                              _tl6898369020_
                              ___splice6938769388_
                              _target6898669023_
                              _tl6898869025_)
                       (letrec ((_loop6898969028_
                                 (lambda (_hd6898769031_ _id6899369033_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd6898769031_))
                                       (let ((_e6899069036_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd6898769031_))))
                                         (let ((_lp-tl6899269041_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e6899069036_)))
                                               (_lp-hd6899169039_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e6899069036_))))
                                           (let ((__tmp69717
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd6899169039_
                                                          _id6899369033_))))
                                             (declare (not safe))
                                             (_loop6898969028_
                                              _lp-tl6899269041_
                                              __tmp69717))))
                                       (let ((_id6899469044_
                                              (reverse _id6899369033_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl6898369020_))
                                             (let ((_e6899769047_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl6898369020_))))
                                               (let ((_tl6899569052_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e6899769047_)))
                                                     (_hd6899669050_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e6899769047_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl6899569052_))
                                                     (___kont6938569386_
                                                      _id6899469044_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g6896469002_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g6896469002_))))))))
                         (let ()
                           (declare (not safe))
                           (_loop6898969028_ _target6898669023_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx6938169382_))
                    (let ((_e6896969088_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx6938169382_))))
                      (let ((_tl6896769093_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6896969088_)))
                            (_hd6896869091_
                             (let ()
                               (declare (not safe))
                               (##car _e6896969088_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl6896769093_))
                            (let ((_e6897269096_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl6896769093_))))
                              (let ((_tl6897069101_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6897269096_)))
                                    (_hd6897169099_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6897269096_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd6897169099_))
                                    (let ((_e6897569104_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd6897169099_))))
                                      (let ((_tl6897369109_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6897569104_)))
                                            (_hd6897469107_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6897569104_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl6897369109_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl6897069101_))
                                                (let ((_e6897869112_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl6897069101_))))
                                                  (let ((_tl6897669117_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e6897869112_)))
                                                        (_hd6897769115_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e6897869112_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl6897669117_))
                                                        (___kont6938369384_
                                                         _hd6897469107_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _hd6897169099_))
                                                            (let ((___splice6938769388_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _hd6897169099_ '0))))
                      (let ((_tl6898869025_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice6938769388_ '1)))
                            (_target6898669023_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice6938769388_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl6898869025_))
                            (___match6943669437_
                             _e6896969088_
                             _hd6896869091_
                             _tl6896769093_
                             _e6897269096_
                             _hd6897169099_
                             _tl6897069101_
                             ___splice6938769388_
                             _target6898669023_
                             _tl6898869025_)
                            (let () (declare (not safe)) (_g6896469002_)))))
                    (let () (declare (not safe)) (_g6896469002_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _hd6897169099_))
                                                    (let ((___splice6938769388_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _hd6897169099_
                                                              '0))))
                                                      (let ((_tl6898869025_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice6938769388_ '1)))
                    (_target6898669023_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice6938769388_ '0))))
                (if (let () (declare (not safe)) (gx#stx-null? _tl6898869025_))
                    (___match6943669437_
                     _e6896969088_
                     _hd6896869091_
                     _tl6896769093_
                     _e6897269096_
                     _hd6897169099_
                     _tl6897069101_
                     ___splice6938769388_
                     _target6898669023_
                     _tl6898869025_)
                    (let () (declare (not safe)) (_g6896469002_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g6896469002_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _hd6897169099_))
                                                (let ((___splice6938769388_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _hd6897169099_
                                                          '0))))
                                                  (let ((_tl6898869025_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice6938769388_
                                                            '1)))
                                                        (_target6898669023_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice6938769388_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl6898869025_))
                                                        (___match6943669437_
                                                         _e6896969088_
                                                         _hd6896869091_
                                                         _tl6896769093_
                                                         _e6897269096_
                                                         _hd6897169099_
                                                         _tl6897069101_
                                                         ___splice6938769388_
                                                         _target6898669023_
                                                         _tl6898869025_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g6896469002_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g6896469002_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd6897169099_))
                                        (let ((___splice6938769388_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd6897169099_
                                                  '0))))
                                          (let ((_tl6898869025_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice6938769388_
                                                    '1)))
                                                (_target6898669023_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice6938769388_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl6898869025_))
                                                (___match6943669437_
                                                 _e6896969088_
                                                 _hd6896869091_
                                                 _tl6896769093_
                                                 _e6897269096_
                                                 _hd6897169099_
                                                 _tl6897069101_
                                                 ___splice6938769388_
                                                 _target6898669023_
                                                 _tl6898869025_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g6896469002_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g6896469002_))))))
                            (let () (declare (not safe)) (_g6896469002_)))))
                    (let () (declare (not safe)) (_g6896469002_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_stx68513_)
        (let* ((___stx6943969440_ _stx68513_)
               (_g6851768619_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx6943969440_)))))
          (let ((___kont6944169442_
                 (lambda (_L68909_ _L68910_ _L68911_ _L68912_ _L68913_)
                   (let ((__tmp69718
                          (let ((__tmp69725
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L68912_)))
                                (__tmp69719
                                 (let ((__tmp69724
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L68911_)))
                                       (__tmp69720
                                        (let ((__tmp69723
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L68910_)))
                                              (__tmp69721
                                               (let ((__tmp69722
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L68909_))))
                                                 (declare (not safe))
                                                 (cons __tmp69722 '()))))
                                          (declare (not safe))
                                          (cons __tmp69723 __tmp69721))))
                                   (declare (not safe))
                                   (cons __tmp69724 __tmp69720))))
                            (declare (not safe))
                            (cons __tmp69725 __tmp69719))))
                     (declare (not safe))
                     (cons 'declare-method __tmp69718))))
                (___kont6944369444_
                 (lambda (_L68735_ _L68736_ _L68737_ _L68738_)
                   (let ((__tmp69726
                          (let ((__tmp69732
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L68737_)))
                                (__tmp69727
                                 (let ((__tmp69731
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L68736_)))
                                       (__tmp69728
                                        (let ((__tmp69730
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L68735_)))
                                              (__tmp69729
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '#f '()))))
                                          (declare (not safe))
                                          (cons __tmp69730 __tmp69729))))
                                   (declare (not safe))
                                   (cons __tmp69731 __tmp69728))))
                            (declare (not safe))
                            (cons __tmp69732 __tmp69727))))
                     (declare (not safe))
                     (cons 'declare-method __tmp69726))))
                (___kont6944569446_ (lambda () '(begin))))
            (let ((___match6957469575_
                   (lambda (_e6852668781_
                            _hd6852568784_
                            _tl6852468786_
                            _e6852968789_
                            _hd6852868792_
                            _tl6852768794_
                            _e6853268797_
                            _hd6853168800_
                            _tl6853068802_
                            _e6853568805_
                            _hd6853468808_
                            _tl6853368810_
                            _e6853868813_
                            _hd6853768816_
                            _tl6853668818_
                            _e6854168821_
                            _hd6854068824_
                            _tl6853968826_
                            _e6854468829_
                            _hd6854368832_
                            _tl6854268834_
                            _e6854768837_
                            _hd6854668840_
                            _tl6854568842_
                            _e6855068845_
                            _hd6854968848_
                            _tl6854868850_
                            _e6855368853_
                            _hd6855268856_
                            _tl6855168858_
                            _e6855668861_
                            _hd6855568864_
                            _tl6855468866_
                            _e6855968869_
                            _hd6855868872_
                            _tl6855768874_
                            _e6856268877_
                            _hd6856168880_
                            _tl6856068882_
                            _e6856568885_
                            _hd6856468888_
                            _tl6856368890_
                            _e6856868893_
                            _hd6856768896_
                            _tl6856668898_
                            _e6857168901_
                            _hd6857068904_
                            _tl6856968906_)
                     (let ((_L68909_ _hd6857068904_)
                           (_L68910_ _hd6856168880_)
                           (_L68911_ _hd6855268856_)
                           (_L68912_ _hd6854368832_)
                           (_L68913_ _hd6853468808_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _L68913_ 'bind-method!))
                           (___kont6944169442_
                            _L68909_
                            _L68910_
                            _L68911_
                            _L68912_
                            _L68913_)
                           (___kont6944569446_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx6943969440_))
                  (let ((_e6852668781_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx6943969440_))))
                    (let ((_tl6852468786_
                           (let () (declare (not safe)) (##cdr _e6852668781_)))
                          (_hd6852568784_
                           (let ()
                             (declare (not safe))
                             (##car _e6852668781_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl6852468786_))
                          (let ((_e6852968789_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl6852468786_))))
                            (let ((_tl6852768794_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e6852968789_)))
                                  (_hd6852868792_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e6852968789_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd6852868792_))
                                  (let ((_e6853268797_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd6852868792_))))
                                    (let ((_tl6853068802_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e6853268797_)))
                                          (_hd6853168800_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e6853268797_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd6853168800_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd6853168800_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl6853068802_))
                                                  (let ((_e6853568805_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl6853068802_))))
                                                    (let ((_tl6853368810_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e6853568805_)))
                                                          (_hd6853468808_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e6853568805_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl6853368810_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl6852768794_))
                      (let ((_e6853868813_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl6852768794_))))
                        (let ((_tl6853668818_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6853868813_)))
                              (_hd6853768816_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6853868813_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd6853768816_))
                              (let ((_e6854168821_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd6853768816_))))
                                (let ((_tl6853968826_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6854168821_)))
                                      (_hd6854068824_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6854168821_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd6854068824_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq? '%#ref _hd6854068824_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl6853968826_))
                                              (let ((_e6854468829_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl6853968826_))))
                                                (let ((_tl6854268834_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e6854468829_)))
                                                      (_hd6854368832_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e6854468829_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl6854268834_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl6853668818_))
                                                          (let ((_e6854768837_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl6853668818_))))
                    (let ((_tl6854568842_
                           (let () (declare (not safe)) (##cdr _e6854768837_)))
                          (_hd6854668840_
                           (let ()
                             (declare (not safe))
                             (##car _e6854768837_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd6854668840_))
                          (let ((_e6855068845_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd6854668840_))))
                            (let ((_tl6854868850_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e6855068845_)))
                                  (_hd6854968848_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e6855068845_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd6854968848_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd6854968848_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl6854868850_))
                                          (let ((_e6855368853_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _tl6854868850_))))
                                            (let ((_tl6855168858_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e6855368853_)))
                                                  (_hd6855268856_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e6855368853_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl6855168858_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl6854568842_))
                                                      (let ((_e6855668861_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl6854568842_))))
                (let ((_tl6855468866_
                       (let () (declare (not safe)) (##cdr _e6855668861_)))
                      (_hd6855568864_
                       (let () (declare (not safe)) (##car _e6855668861_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd6855568864_))
                      (let ((_e6855968869_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd6855568864_))))
                        (let ((_tl6855768874_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6855968869_)))
                              (_hd6855868872_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6855968869_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd6855868872_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd6855868872_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl6855768874_))
                                      (let ((_e6856268877_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl6855768874_))))
                                        (let ((_tl6856068882_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e6856268877_)))
                                              (_hd6856168880_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e6856268877_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl6856068882_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl6855468866_))
                                                  (let ((_e6856568885_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl6855468866_))))
                                                    (let ((_tl6856368890_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e6856568885_)))
                                                          (_hd6856468888_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e6856568885_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd6856468888_))
                                                          (let ((_e6856868893_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd6856468888_))))
                    (let ((_tl6856668898_
                           (let () (declare (not safe)) (##cdr _e6856868893_)))
                          (_hd6856768896_
                           (let ()
                             (declare (not safe))
                             (##car _e6856868893_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd6856768896_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd6856768896_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl6856668898_))
                                  (let ((_e6857168901_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl6856668898_))))
                                    (let ((_tl6856968906_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e6857168901_)))
                                          (_hd6857068904_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e6857168901_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl6856968906_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl6856368890_))
                                              (___match6957469575_
                                               _e6852668781_
                                               _hd6852568784_
                                               _tl6852468786_
                                               _e6852968789_
                                               _hd6852868792_
                                               _tl6852768794_
                                               _e6853268797_
                                               _hd6853168800_
                                               _tl6853068802_
                                               _e6853568805_
                                               _hd6853468808_
                                               _tl6853368810_
                                               _e6853868813_
                                               _hd6853768816_
                                               _tl6853668818_
                                               _e6854168821_
                                               _hd6854068824_
                                               _tl6853968826_
                                               _e6854468829_
                                               _hd6854368832_
                                               _tl6854268834_
                                               _e6854768837_
                                               _hd6854668840_
                                               _tl6854568842_
                                               _e6855068845_
                                               _hd6854968848_
                                               _tl6854868850_
                                               _e6855368853_
                                               _hd6855268856_
                                               _tl6855168858_
                                               _e6855668861_
                                               _hd6855568864_
                                               _tl6855468866_
                                               _e6855968869_
                                               _hd6855868872_
                                               _tl6855768874_
                                               _e6856268877_
                                               _hd6856168880_
                                               _tl6856068882_
                                               _e6856568885_
                                               _hd6856468888_
                                               _tl6856368890_
                                               _e6856868893_
                                               _hd6856768896_
                                               _tl6856668898_
                                               _e6857168901_
                                               _hd6857068904_
                                               _tl6856968906_)
                                              (___kont6944569446_))
                                          (___kont6944569446_))))
                                  (___kont6944569446_))
                              (___kont6944569446_))
                          (___kont6944569446_))))
                  (___kont6944569446_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl6855468866_))
                                                      (if (let ((__tmp69733
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp69733 'bind-method!))
                  (let ((_L68735_ _hd6856168880_)
                        (_L68736_ _hd6855268856_)
                        (_L68737_ _hd6854368832_)
                        (_L68738_ _hd6853468808_))
                    (___kont6944369444_ _L68735_ _L68736_ _L68737_ _L68738_))
                  (___kont6944569446_))
              (___kont6944569446_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont6944569446_))))
                                      (___kont6944569446_))
                                  (___kont6944569446_))
                              (___kont6944569446_))))
                      (___kont6944569446_))))
              (___kont6944569446_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont6944569446_))))
                                          (___kont6944569446_))
                                      (___kont6944569446_))
                                  (___kont6944569446_))))
                          (___kont6944569446_))))
                  (___kont6944569446_))
              (___kont6944569446_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont6944569446_))
                                          (___kont6944569446_))
                                      (___kont6944569446_))))
                              (___kont6944569446_))))
                      (___kont6944569446_))
                  (___kont6944569446_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont6944569446_))
                                              (___kont6944569446_))
                                          (___kont6944569446_))))
                                  (___kont6944569446_))))
                          (___kont6944569446_))))
                  (___kont6944569446_)))))))
    (define gxc#!alias::typedecl
      (lambda (_self68489_)
        (let* ((_self6849068496_ _self68489_)
               (_E6849268500_
                (lambda () (error '"No clause matching" _self6849068496_)))
               (_K6849368505_
                (lambda (_alias-id68503_)
                  (let ((__tmp69734
                         (let ()
                           (declare (not safe))
                           (cons _alias-id68503_ '()))))
                    (declare (not safe))
                    (cons '@alias __tmp69734)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self6849068496_ 'gxc#!alias::t))
              (let* ((_e6849468508_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6849068496_ '1)))
                     (_alias-id68511_ _e6849468508_))
                (declare (not safe))
                (_K6849368505_ _alias-id68511_))
              (let () (declare (not safe)) (_E6849268500_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!struct-type::typedecl
      (lambda (_self68311_)
        (let* ((_self6831268323_ _self68311_)
               (_E6831468327_
                (lambda () (error '"No clause matching" _self6831268323_)))
               (_K6831568336_
                (lambda (_plist68330_
                         _ctor68331_
                         _fields68332_
                         _super68333_
                         _type-id68334_)
                  (let ((__tmp69735
                         (let ((__tmp69736
                                (let ((__tmp69737
                                       (let ((__tmp69738
                                              (let ((__tmp69739
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _plist68330_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _ctor68331_
                                                      __tmp69739))))
                                         (declare (not safe))
                                         (cons _fields68332_ __tmp69738))))
                                  (declare (not safe))
                                  (cons _super68333_ __tmp69737))))
                           (declare (not safe))
                           (cons _type-id68334_ __tmp69736))))
                    (declare (not safe))
                    (cons '@struct-type __tmp69735)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6831268323_
                 'gxc#!struct-type::t))
              (let* ((_e6831668339_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6831268323_ '1)))
                     (_type-id68342_ _e6831668339_)
                     (_e6831768344_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6831268323_ '2)))
                     (_super68347_ _e6831768344_)
                     (_e6831868349_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6831268323_ '3)))
                     (_fields68352_ _e6831868349_)
                     (_e6831968354_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6831268323_ '4)))
                     (_e6832068357_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6831268323_ '5)))
                     (_ctor68360_ _e6832068357_)
                     (_e6832168362_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6831268323_ '6)))
                     (_plist68365_ _e6832168362_))
                (declare (not safe))
                (_K6831568336_
                 _plist68365_
                 _ctor68360_
                 _fields68352_
                 _super68347_
                 _type-id68342_))
              (let () (declare (not safe)) (_E6831468327_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!struct-type::t
       'typedecl
       gxc#!struct-type::typedecl
       '#f))
    (define gxc#!struct-pred::typedecl
      (lambda (_self68165_)
        (let* ((_self6816668172_ _self68165_)
               (_E6816868176_
                (lambda () (error '"No clause matching" _self6816668172_)))
               (_K6816968181_
                (lambda (_struct-t68179_)
                  (let ((__tmp69740
                         (let ()
                           (declare (not safe))
                           (cons _struct-t68179_ '()))))
                    (declare (not safe))
                    (cons '@struct-pred __tmp69740)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6816668172_
                 'gxc#!struct-pred::t))
              (let* ((_e6817068184_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6816668172_ '1)))
                     (_struct-t68187_ _e6817068184_))
                (declare (not safe))
                (_K6816968181_ _struct-t68187_))
              (let () (declare (not safe)) (_E6816868176_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!struct-pred::t
       'typedecl
       gxc#!struct-pred::typedecl
       '#f))
    (define gxc#!struct-cons::typedecl
      (lambda (_self68019_)
        (let* ((_self6802068026_ _self68019_)
               (_E6802268030_
                (lambda () (error '"No clause matching" _self6802068026_)))
               (_K6802368035_
                (lambda (_struct-t68033_)
                  (let ((__tmp69741
                         (let ()
                           (declare (not safe))
                           (cons _struct-t68033_ '()))))
                    (declare (not safe))
                    (cons '@struct-cons __tmp69741)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6802068026_
                 'gxc#!struct-cons::t))
              (let* ((_e6802468038_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6802068026_ '1)))
                     (_struct-t68041_ _e6802468038_))
                (declare (not safe))
                (_K6802368035_ _struct-t68041_))
              (let () (declare (not safe)) (_E6802268030_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!struct-cons::t
       'typedecl
       gxc#!struct-cons::typedecl
       '#f))
    (define gxc#!struct-getf::typedecl
      (lambda (_self67859_)
        (let* ((_self6786067868_ _self67859_)
               (_E6786267872_
                (lambda () (error '"No clause matching" _self6786067868_)))
               (_K6786367879_
                (lambda (_unchecked?67875_ _off67876_ _struct-t67877_)
                  (let ((__tmp69742
                         (let ((__tmp69743
                                (let ((__tmp69744
                                       (let ()
                                         (declare (not safe))
                                         (cons _unchecked?67875_ '()))))
                                  (declare (not safe))
                                  (cons _off67876_ __tmp69744))))
                           (declare (not safe))
                           (cons _struct-t67877_ __tmp69743))))
                    (declare (not safe))
                    (cons '@struct-getf __tmp69742)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6786067868_
                 'gxc#!struct-getf::t))
              (let* ((_e6786467882_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6786067868_ '1)))
                     (_struct-t67885_ _e6786467882_)
                     (_e6786567887_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6786067868_ '2)))
                     (_off67890_ _e6786567887_)
                     (_e6786667892_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6786067868_ '3)))
                     (_unchecked?67895_ _e6786667892_))
                (declare (not safe))
                (_K6786367879_ _unchecked?67895_ _off67890_ _struct-t67885_))
              (let () (declare (not safe)) (_E6786267872_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!struct-getf::t
       'typedecl
       gxc#!struct-getf::typedecl
       '#f))
    (define gxc#!struct-setf::typedecl
      (lambda (_self67699_)
        (let* ((_self6770067708_ _self67699_)
               (_E6770267712_
                (lambda () (error '"No clause matching" _self6770067708_)))
               (_K6770367719_
                (lambda (_unchecked?67715_ _off67716_ _struct-t67717_)
                  (let ((__tmp69745
                         (let ((__tmp69746
                                (let ((__tmp69747
                                       (let ()
                                         (declare (not safe))
                                         (cons _unchecked?67715_ '()))))
                                  (declare (not safe))
                                  (cons _off67716_ __tmp69747))))
                           (declare (not safe))
                           (cons _struct-t67717_ __tmp69746))))
                    (declare (not safe))
                    (cons '@struct-setf __tmp69745)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6770067708_
                 'gxc#!struct-setf::t))
              (let* ((_e6770467722_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6770067708_ '1)))
                     (_struct-t67725_ _e6770467722_)
                     (_e6770567727_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6770067708_ '2)))
                     (_off67730_ _e6770567727_)
                     (_e6770667732_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6770067708_ '3)))
                     (_unchecked?67735_ _e6770667732_))
                (declare (not safe))
                (_K6770367719_ _unchecked?67735_ _off67730_ _struct-t67725_))
              (let () (declare (not safe)) (_E6770267712_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!struct-setf::t
       'typedecl
       gxc#!struct-setf::typedecl
       '#f))
    (define gxc#!class-type::typedecl
      (lambda (_self67511_)
        (let* ((_self6751267524_ _self67511_)
               (_E6751467528_
                (lambda () (error '"No clause matching" _self6751267524_)))
               (_K6751567539_
                (lambda (_plist67531_
                         _ctor67532_
                         _xslots67533_
                         _slots67534_
                         _mixin67535_
                         _super67536_
                         _type-id67537_)
                  (let ((__tmp69748
                         (let ((__tmp69749
                                (let ((__tmp69750
                                       (let ((__tmp69751
                                              (let ((__tmp69752
                                                     (let ((__tmp69753
                                                            (let ((__tmp69754
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _plist67531_ '()))))
                      (declare (not safe))
                      (cons _ctor67532_ __tmp69754))))
               (declare (not safe))
               (cons _xslots67533_ __tmp69753))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _slots67534_
                                                      __tmp69752))))
                                         (declare (not safe))
                                         (cons _mixin67535_ __tmp69751))))
                                  (declare (not safe))
                                  (cons _super67536_ __tmp69750))))
                           (declare (not safe))
                           (cons _type-id67537_ __tmp69749))))
                    (declare (not safe))
                    (cons '@class-type __tmp69748)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6751267524_
                 'gxc#!class-type::t))
              (let* ((_e6751667542_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6751267524_ '1)))
                     (_type-id67545_ _e6751667542_)
                     (_e6751767547_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6751267524_ '2)))
                     (_super67550_ _e6751767547_)
                     (_e6751867552_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6751267524_ '3)))
                     (_mixin67555_ _e6751867552_)
                     (_e6751967557_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6751267524_ '4)))
                     (_slots67560_ _e6751967557_)
                     (_e6752067562_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6751267524_ '5)))
                     (_xslots67565_ _e6752067562_)
                     (_e6752167567_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6751267524_ '6)))
                     (_ctor67570_ _e6752167567_)
                     (_e6752267572_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6751267524_ '7)))
                     (_plist67575_ _e6752267572_))
                (declare (not safe))
                (_K6751567539_
                 _plist67575_
                 _ctor67570_
                 _xslots67565_
                 _slots67560_
                 _mixin67555_
                 _super67550_
                 _type-id67545_))
              (let () (declare (not safe)) (_E6751467528_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!class-type::t
       'typedecl
       gxc#!class-type::typedecl
       '#f))
    (define gxc#!class-pred::typedecl
      (lambda (_self67365_)
        (let* ((_self6736667372_ _self67365_)
               (_E6736867376_
                (lambda () (error '"No clause matching" _self6736667372_)))
               (_K6736967381_
                (lambda (_class-t67379_)
                  (let ((__tmp69755
                         (let ()
                           (declare (not safe))
                           (cons _class-t67379_ '()))))
                    (declare (not safe))
                    (cons '@class-pred __tmp69755)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6736667372_
                 'gxc#!class-pred::t))
              (let* ((_e6737067384_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6736667372_ '1)))
                     (_class-t67387_ _e6737067384_))
                (declare (not safe))
                (_K6736967381_ _class-t67387_))
              (let () (declare (not safe)) (_E6736867376_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!class-pred::t
       'typedecl
       gxc#!class-pred::typedecl
       '#f))
    (define gxc#!class-cons::typedecl
      (lambda (_self67219_)
        (let* ((_self6722067226_ _self67219_)
               (_E6722267230_
                (lambda () (error '"No clause matching" _self6722067226_)))
               (_K6722367235_
                (lambda (_class-t67233_)
                  (let ((__tmp69756
                         (let ()
                           (declare (not safe))
                           (cons _class-t67233_ '()))))
                    (declare (not safe))
                    (cons '@class-cons __tmp69756)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6722067226_
                 'gxc#!class-cons::t))
              (let* ((_e6722467238_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6722067226_ '1)))
                     (_class-t67241_ _e6722467238_))
                (declare (not safe))
                (_K6722367235_ _class-t67241_))
              (let () (declare (not safe)) (_E6722267230_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!class-cons::t
       'typedecl
       gxc#!class-cons::typedecl
       '#f))
    (define gxc#!class-getf::typedecl
      (lambda (_self67059_)
        (let* ((_self6706067068_ _self67059_)
               (_E6706267072_
                (lambda () (error '"No clause matching" _self6706067068_)))
               (_K6706367079_
                (lambda (_unchecked?67075_ _slot67076_ _class-t67077_)
                  (let ((__tmp69757
                         (let ((__tmp69758
                                (let ((__tmp69759
                                       (let ()
                                         (declare (not safe))
                                         (cons _unchecked?67075_ '()))))
                                  (declare (not safe))
                                  (cons _slot67076_ __tmp69759))))
                           (declare (not safe))
                           (cons _class-t67077_ __tmp69758))))
                    (declare (not safe))
                    (cons '@class-getf __tmp69757)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6706067068_
                 'gxc#!class-getf::t))
              (let* ((_e6706467082_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6706067068_ '1)))
                     (_class-t67085_ _e6706467082_)
                     (_e6706567087_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6706067068_ '2)))
                     (_slot67090_ _e6706567087_)
                     (_e6706667092_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6706067068_ '3)))
                     (_unchecked?67095_ _e6706667092_))
                (declare (not safe))
                (_K6706367079_ _unchecked?67095_ _slot67090_ _class-t67085_))
              (let () (declare (not safe)) (_E6706267072_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!class-getf::t
       'typedecl
       gxc#!class-getf::typedecl
       '#f))
    (define gxc#!class-setf::typedecl
      (lambda (_self66899_)
        (let* ((_self6690066908_ _self66899_)
               (_E6690266912_
                (lambda () (error '"No clause matching" _self6690066908_)))
               (_K6690366919_
                (lambda (_unchecked?66915_ _slot66916_ _class-t66917_)
                  (let ((__tmp69760
                         (let ((__tmp69761
                                (let ((__tmp69762
                                       (let ()
                                         (declare (not safe))
                                         (cons _unchecked?66915_ '()))))
                                  (declare (not safe))
                                  (cons _slot66916_ __tmp69762))))
                           (declare (not safe))
                           (cons _class-t66917_ __tmp69761))))
                    (declare (not safe))
                    (cons '@class-setf __tmp69760)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6690066908_
                 'gxc#!class-setf::t))
              (let* ((_e6690466922_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6690066908_ '1)))
                     (_class-t66925_ _e6690466922_)
                     (_e6690566927_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6690066908_ '2)))
                     (_slot66930_ _e6690566927_)
                     (_e6690666932_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6690066908_ '3)))
                     (_unchecked?66935_ _e6690666932_))
                (declare (not safe))
                (_K6690366919_ _unchecked?66935_ _slot66930_ _class-t66925_))
              (let () (declare (not safe)) (_E6690266912_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!class-setf::t
       'typedecl
       gxc#!class-setf::typedecl
       '#f))
    (define gxc#!lambda::typedecl
      (lambda (_self66725_)
        (let* ((_self6672666736_ _self66725_)
               (_E6672866740_
                (lambda () (error '"No clause matching" _self6672666736_)))
               (_K6672966751_
                (lambda (_typedecl66743_
                         _inline66744_
                         _dispatch66745_
                         _arity66746_)
                  (if _inline66744_
                      (let ((_$e66748_ _typedecl66743_))
                        (if _$e66748_
                            _$e66748_
                            (error '"Cannot generate typedecl for inline rules")))
                      (let ((__tmp69763
                             (let ((__tmp69764
                                    (let ()
                                      (declare (not safe))
                                      (cons _dispatch66745_ '()))))
                               (declare (not safe))
                               (cons _arity66746_ __tmp69764))))
                        (declare (not safe))
                        (cons '@lambda __tmp69763))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self6672666736_ 'gxc#!lambda::t))
              (let* ((_e6673066754_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6672666736_ '1)))
                     (_e6673166757_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6672666736_ '2)))
                     (_arity66760_ _e6673166757_)
                     (_e6673266762_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6672666736_ '3)))
                     (_dispatch66765_ _e6673266762_)
                     (_e6673366767_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6672666736_ '4)))
                     (_inline66770_ _e6673366767_)
                     (_e6673466772_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6672666736_ '5)))
                     (_typedecl66775_ _e6673466772_))
                (declare (not safe))
                (_K6672966751_
                 _typedecl66775_
                 _inline66770_
                 _dispatch66765_
                 _arity66760_))
              (let () (declare (not safe)) (_E6672866740_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_self66536_)
        (letrec ((_clause-e66538_
                  (lambda (_clause66568_)
                    (let* ((_clause6656966577_ _clause66568_)
                           (_E6657166581_
                            (lambda ()
                              (error '"No clause matching"
                                     _clause6656966577_)))
                           (_K6657266587_
                            (lambda (_dispatch66584_ _arity66585_)
                              (let ((__tmp69765
                                     (let ()
                                       (declare (not safe))
                                       (cons _dispatch66584_ '()))))
                                (declare (not safe))
                                (cons _arity66585_ __tmp69765)))))
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _clause6656966577_
                             'gxc#!lambda::t))
                          (let* ((_e6657366590_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _clause6656966577_ '1)))
                                 (_e6657466593_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _clause6656966577_ '2)))
                                 (_arity66596_ _e6657466593_)
                                 (_e6657566598_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _clause6656966577_ '3)))
                                 (_dispatch66601_ _e6657566598_))
                            (declare (not safe))
                            (_K6657266587_ _dispatch66601_ _arity66596_))
                          (let () (declare (not safe)) (_E6657166581_)))))))
          (let* ((_self6653966546_ _self66536_)
                 (_E6654166550_
                  (lambda () (error '"No clause matching" _self6653966546_)))
                 (_K6654266557_
                  (lambda (_clauses66553_)
                    (let ((_clauses66555_
                           (map _clause-e66538_ _clauses66553_)))
                      (declare (not safe))
                      (cons '@case-lambda _clauses66555_)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of?
                   _self6653966546_
                   'gxc#!case-lambda::t))
                (let* ((_e6654366560_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _self6653966546_ '1)))
                       (_e6654466563_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _self6653966546_ '2)))
                       (_clauses66566_ _e6654466563_))
                  (declare (not safe))
                  (_K6654266557_ _clauses66566_))
                (let () (declare (not safe)) (_E6654166550_)))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_self66379_)
        (let* ((_self6638066388_ _self66379_)
               (_E6638266392_
                (lambda () (error '"No clause matching" _self6638066388_)))
               (_K6638366398_
                (lambda (_dispatch66395_ _table66396_)
                  (let ((__tmp69766
                         (let ((__tmp69767
                                (let ()
                                  (declare (not safe))
                                  (cons _dispatch66395_ '()))))
                           (declare (not safe))
                           (cons _table66396_ __tmp69767))))
                    (declare (not safe))
                    (cons '@kw-lambda __tmp69766)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self6638066388_ 'gxc#!kw-lambda::t))
              (let* ((_e6638466401_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6638066388_ '1)))
                     (_e6638566404_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6638066388_ '2)))
                     (_table66407_ _e6638566404_)
                     (_e6638666409_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6638066388_ '3)))
                     (_dispatch66412_ _e6638666409_))
                (declare (not safe))
                (_K6638366398_ _dispatch66412_ _table66407_))
              (let () (declare (not safe)) (_E6638266392_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!kw-lambda::t 'typedecl gxc#!kw-lambda::typedecl '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_self66222_)
        (let* ((_self6622366231_ _self66222_)
               (_E6622566235_
                (lambda () (error '"No clause matching" _self6622366231_)))
               (_K6622666241_
                (lambda (_main66238_ _keys66239_)
                  (let ((__tmp69768
                         (let ((__tmp69769
                                (let ()
                                  (declare (not safe))
                                  (cons _main66238_ '()))))
                           (declare (not safe))
                           (cons _keys66239_ __tmp69769))))
                    (declare (not safe))
                    (cons '@kw-lambda-dispatch __tmp69768)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6622366231_
                 'gxc#!kw-lambda-primary::t))
              (let* ((_e6622766244_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6622366231_ '1)))
                     (_e6622866247_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6622366231_ '2)))
                     (_keys66250_ _e6622866247_)
                     (_e6622966252_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6622366231_ '3)))
                     (_main66255_ _e6622966252_))
                (declare (not safe))
                (_K6622666241_ _main66255_ _keys66250_))
              (let () (declare (not safe)) (_E6622566235_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))))
