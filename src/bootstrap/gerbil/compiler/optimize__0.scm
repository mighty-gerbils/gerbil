(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1708370118)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (gxc#current-compile-optimizer-info)
            '#!void
            (gxc#current-compile-optimizer-info
             (let ((__obj156069
                    (let ()
                      (declare (not safe))
                      (##structure gxc#optimizer-info::t '#f '#f '#f))))
               (gxc#optimizer-info:::init! __obj156069)
               __obj156069)))))
    (define gxc#optimize!
      (lambda (_ctx155762_)
        (let ((__tmp156073
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _ctx155762_))
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-builtin-ssxi))
                 (let ((__tmp156075
                        (##structure-ref
                         (gxc#current-compile-optimizer-info)
                         '2
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp156074
                        (##structure-ref
                         _ctx155762_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp156075 __tmp156074 '#t))
                 (let ((_code155765_
                        (let ((__tmp156076
                               (##structure-ref
                                _ctx155762_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp156076))))
                   (##structure-set!
                    _ctx155762_
                    _code155765_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp156072 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp156071 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters
           __tmp156073
           gxc#current-compile-mutators
           __tmp156072
           gxc#current-compile-local-type
           __tmp156071))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda ()
        (letrec ((_load-it!155758_
                  (lambda (_id155760_)
                    (if (let ((__tmp156078
                               (##structure-ref
                                (gxc#current-compile-optimizer-info)
                                '2
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp156078 _id155760_))
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-import-ssxi-by-id _id155760_))
                          (let ((__tmp156077
                                 (##structure-ref
                                  (gxc#current-compile-optimizer-info)
                                  '2
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp156077 _id155760_ '#t)))))))
          (for-each
           _load-it!155758_
           '(gerbil/runtime/gambit
             gerbil/runtime/util
             gerbil/runtime/table
             gerbil/runtime/control
             gerbil/runtime/system
             gerbil/runtime/c3
             gerbil/runtime/mop
             gerbil/runtime/error
             gerbil/runtime/interface
             gerbil/runtime/hash
             gerbil/runtime/thread
             gerbil/runtime/syntax
             gerbil/runtime/eval
             gerbil/runtime/repl
             gerbil/runtime/loader
             gerbil/runtime/init
             gerbil/runtime
             gerbil/builtin)))))
    (define gxc#optimizer-load-ssxi-deps
      (lambda (_ctx155702_)
        (letrec* ((_deps155704_
                   (let* ((_imports155748_
                           (##structure-ref
                            _ctx155702_
                            '8
                            gx#module-context::t
                            '#f))
                          (_$e155750_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _ctx155702_))))
                     (if _$e155750_
                         ((lambda (_g155752155754_)
                            (let ()
                              (declare (not safe))
                              (cons _g155752155754_ _imports155748_)))
                          _$e155750_)
                         _imports155748_))))
          (let _lp155706_ ((_rest155708_ _deps155704_))
            (let* ((_rest155709155717_ _rest155708_)
                   (_else155711155725_ (lambda () '#!void))
                   (_K155713155736_
                    (lambda (_rest155728_ _hd155729_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _hd155729_
                             'gx#module-context::t))
                          (begin
                            (if (let ((__tmp156092
                                       (##structure-ref
                                        (gxc#current-compile-optimizer-info)
                                        '2
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp156091
                                       (##structure-ref
                                        _hd155729_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (hash-get __tmp156092 __tmp156091))
                                '#!void
                                (begin
                                  (let ((_$e155731_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _hd155729_))))
                                    (if _$e155731_
                                        ((lambda (_pre155734_)
                                           (let ((__tmp156089
                                                  (let ((__tmp156090
                                                         (##structure-ref
                                                          _hd155729_
                                                          '8
                                                          gx#module-context::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (cons _pre155734_
                                                          __tmp156090))))
                                             (declare (not safe))
                                             (_lp155706_ __tmp156089)))
                                         _$e155731_)
                                        (let ((__tmp156088
                                               (##structure-ref
                                                _hd155729_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                          (declare (not safe))
                                          (_lp155706_ __tmp156088))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _hd155729_))))
                            (let ()
                              (declare (not safe))
                              (_lp155706_ _rest155728_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _hd155729_
                                 'gx#prelude-context::t))
                              (begin
                                (if (let ((__tmp156087
                                           (##structure-ref
                                            (gxc#current-compile-optimizer-info)
                                            '2
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp156086
                                           (##structure-ref
                                            _hd155729_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (hash-get __tmp156087 __tmp156086))
                                    '#!void
                                    (begin
                                      (let ((__tmp156085
                                             (##structure-ref
                                              _hd155729_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_lp155706_ __tmp156085))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi _hd155729_))))
                                (let ()
                                  (declare (not safe))
                                  (_lp155706_ _rest155728_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _hd155729_
                                     'gx#module-import::t))
                                  (let ((__tmp156083
                                         (let ((__tmp156084
                                                (##direct-structure-ref
                                                 _hd155729_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp156084 _rest155728_))))
                                    (declare (not safe))
                                    (_lp155706_ __tmp156083))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _hd155729_
                                         'gx#module-export::t))
                                      (let ((__tmp156081
                                             (let ((__tmp156082
                                                    (##direct-structure-ref
                                                     _hd155729_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp156082
                                                     _rest155728_))))
                                        (declare (not safe))
                                        (_lp155706_ __tmp156081))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _hd155729_
                                             'gx#import-set::t))
                                          (let ((__tmp156079
                                                 (let ((__tmp156080
                                                        (##direct-structure-ref
                                                         _hd155729_
                                                         '1
                                                         gx#import-set::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp156080
                                                         _rest155728_))))
                                            (declare (not safe))
                                            (_lp155706_ __tmp156079))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _hd155729_))))))))))
              (if (let () (declare (not safe)) (##pair? _rest155709155717_))
                  (let ((_hd155714155739_
                         (let ()
                           (declare (not safe))
                           (##car _rest155709155717_)))
                        (_tl155715155741_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest155709155717_))))
                    (let* ((_hd155744_ _hd155714155739_)
                           (_rest155746_ _tl155715155741_))
                      (declare (not safe))
                      (_K155713155736_ _rest155746_ _hd155744_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_ctx155682_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _ctx155682_
                    'gx#module-context::t))
                 (let ((__tmp156093
                        (##structure-ref
                         _ctx155682_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp156093)))
            '#!void
            (let* ((_ht155684_
                    (##structure-ref
                     (gxc#current-compile-optimizer-info)
                     '2
                     gxc#optimizer-info::t
                     '#f))
                   (_id155686_
                    (##structure-ref
                     _ctx155682_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_mod155688_
                    (let ()
                      (declare (not safe))
                      (hash-get _ht155684_ _id155686_))))
              (let ((_$e155691_ _mod155688_))
                (if _$e155691_
                    _$e155691_
                    (let* ((_mod155694_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-import-ssxi _ctx155682_)))
                           (_val155699_
                            (let ((_$e155696_ _mod155694_))
                              (if _$e155696_ _$e155696_ '#!void))))
                      (let ()
                        (declare (not safe))
                        (hash-put! _ht155684_ _id155686_ _val155699_))
                      _val155699_)))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_ctx155680_)
        (if (##structure-ref _ctx155680_ '1 gx#expander-context::t '#f)
            (let ((__tmp156094
                   (##structure-ref
                    _ctx155680_
                    '1
                    gx#expander-context::t
                    '#f)))
              (declare (not safe))
              (gxc#optimizer-import-ssxi-by-id __tmp156094))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_id155657_)
        (letrec ((_catch-e155659_
                  (lambda (_exn155678_)
                    (if (gxc#current-compile-verbose)
                        (begin
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"Failed to load ssxi module for "
                             _id155657_))
                          (display-exception _exn155678_))
                        '#!void)
                    '#f))
                 (_import-e155660_
                  (lambda ()
                    (let* ((_str-id155663_
                            (string-append
                             (let ()
                               (declare (not safe))
                               (gxc#module-id->path-string _id155657_))
                             '".ssxi"))
                           (_artefact-path155671_
                            (let ((_odir155664155666_
                                   (gxc#current-compile-output-dir)))
                              (if _odir155664155666_
                                  (let ((_odir155669_ _odir155664155666_))
                                    (path-expand
                                     (string-append _str-id155663_ '".ss")
                                     _odir155669_))
                                  '#f)))
                           (_library-path155673_
                            (string->symbol
                             (string-append '":" _str-id155663_ '".ss")))
                           (_ssxi-path155675_
                            (if (and _artefact-path155671_
                                     (file-exists? _artefact-path155671_))
                                _artefact-path155671_
                                _library-path155673_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _ssxi-path155675_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _ssxi-path155675_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (with-catch _catch-e155659_ _import-e155660_)))))
    (define gxc#optimize-source
      (lambda (_stx155648_)
        (let () (declare (not safe)) (gxc#apply-collect-mutators _stx155648_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _stx155648_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _stx155648_))
        (let* ((_stx155650_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _stx155648_)))
               (_stx155652_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _stx155650_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _stx155652_))
          (let ((_stx155655_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _stx155652_))))
            (declare (not safe))
            (gxc#apply-optimize-call _stx155655_)))))
    (define gxc#&generate-ssxi
      (make-promise
       (lambda ()
         (let ((_tbl155645_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp156095 (force gxc#&generate-runtime-empty)))
             (declare (not safe))
             (hash-merge! _tbl155645_ __tmp156095))
           (let ()
             (declare (not safe))
             (hash-put! _tbl155645_ '%#begin gxc#generate-runtime-begin%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl155645_
              '%#begin-syntax
              gxc#generate-ssxi-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl155645_ '%#module gxc#generate-ssxi-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl155645_
              '%#define-values
              gxc#generate-ssxi-define-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl155645_ '%#call gxc#generate-ssxi-call%))
           _tbl155645_))))
    (define gxc#apply-generate-ssxi
      (lambda (_stx155628_ . _args155630_)
        (let ((__tmp156097
               (lambda ()
                 (declare (not safe))
                 (if (null? _args155630_)
                     (gxc#compile-e__0 _stx155628_)
                     (let ((_arg1155635_ (car _args155630_))
                           (_rest155637_ (cdr _args155630_)))
                       (if (null? _rest155637_)
                           (gxc#compile-e__1 _stx155628_ _arg1155635_)
                           (let ((_arg2155640_ (car _rest155637_))
                                 (_rest155642_ (cdr _rest155637_)))
                             (if (null? _rest155642_)
                                 (gxc#compile-e__2
                                  _stx155628_
                                  _arg1155635_
                                  _arg2155640_)
                                 (apply gxc#compile-e
                                        _stx155628_
                                        _arg1155635_
                                        _arg2155640_
                                        _rest155642_))))))))
              (__tmp156096 (force gxc#&generate-ssxi)))
          (declare (not safe))
          (call-with-parameters
           __tmp156097
           gxc#current-compile-methods
           __tmp156096))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_stx155589_)
        (let* ((_g155591155601_
                (lambda (_g155592155598_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g155592155598_))))
               (_g155590155625_
                (lambda (_g155592155604_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g155592155604_))
                      (let ((_e155596155606_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g155592155604_))))
                        (let ((_hd155595155609_
                               (let ()
                                 (declare (not safe))
                                 (##car _e155596155606_)))
                              (_tl155594155611_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e155596155606_))))
                          ((lambda (_L155614_)
                             (let ((__tmp156100
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _stx155589_))))
                                   (__tmp156098
                                    (let ((__tmp156099
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp156099 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp156100
                                gx#current-expander-phi
                                __tmp156098)))
                           _tl155594155611_)))
                      (let ()
                        (declare (not safe))
                        (_g155591155601_ _g155592155604_))))))
          (declare (not safe))
          (_g155590155625_ _stx155589_))))
    (define gxc#generate-ssxi-module%
      (lambda (_stx155529_)
        (let* ((_g155531155545_
                (lambda (_g155532155542_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g155532155542_))))
               (_g155530155586_
                (lambda (_g155532155548_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g155532155548_))
                      (let ((_e155537155550_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g155532155548_))))
                        (let ((_hd155536155553_
                               (let ()
                                 (declare (not safe))
                                 (##car _e155537155550_)))
                              (_tl155535155555_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e155537155550_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl155535155555_))
                              (let ((_e155540155558_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl155535155555_))))
                                (let ((_hd155539155561_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e155540155558_)))
                                      (_tl155538155563_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e155540155558_))))
                                  ((lambda (_L155566_ _L155567_)
                                     (let* ((_ctx155580_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L155567_)))
                                            (_code155582_
                                             (##structure-ref
                                              _ctx155580_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp156101
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _code155582_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp156101
                                          gx#current-expander-context
                                          _ctx155580_))))
                                   _tl155538155563_
                                   _hd155539155561_)))
                              (let ()
                                (declare (not safe))
                                (_g155531155545_ _g155532155548_)))))
                      (let ()
                        (declare (not safe))
                        (_g155531155545_ _g155532155548_))))))
          (declare (not safe))
          (_g155530155586_ _stx155529_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_stx155339_)
        (letrec ((_generate-e155341_
                  (lambda (_id155518_)
                    (let* ((_sym155520_
                            (if (let ((__tmp156102
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp156102))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _id155518_))
                                '#f))
                           (_$e155522_
                            (if _sym155520_
                                (let ()
                                  (declare (not safe))
                                  (gxc#optimizer-lookup-type _sym155520_))
                                '#f)))
                      (if _$e155522_
                          ((lambda (_type155525_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"generate typedecl " _sym155520_))
                             (let* ((_typedecl155527_
                                     (let ((__method156070
                                            (let ()
                                              (declare (not safe))
                                              (method-ref
                                               _type155525_
                                               'typedecl))))
                                       (if __method156070
                                           (__method156070 _type155525_)
                                           (let ()
                                             (declare (not safe))
                                             (error '"Missing method"
                                                    _type155525_
                                                    'typedecl)))))
                                    (__tmp156103
                                     (let ((__tmp156104
                                            (let ()
                                              (declare (not safe))
                                              (cons _typedecl155527_ '()))))
                                       (declare (not safe))
                                       (cons _sym155520_ __tmp156104))))
                               (declare (not safe))
                               (cons 'declare-type __tmp156103)))
                           _$e155522_)
                          '(begin))))))
          (let* ((___stx155768155769_ _stx155339_)
                 (_g155344155382_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx155768155769_)))))
            (let ((___kont155770155771_
                   (lambda (_L155500_)
                     (let ()
                       (declare (not safe))
                       (_generate-e155341_ _L155500_))))
                  (___kont155772155773_
                   (lambda (_L155435_)
                     (let ((_types155461_
                            (map _generate-e155341_
                                 (let ((__tmp156105
                                        (lambda (_g155453155456_
                                                 _g155454155458_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g155453155456_
                                                  _g155454155458_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp156105 '() _L155435_)))))
                       (declare (not safe))
                       (cons 'begin _types155461_)))))
              (let ((___match155823155824_
                     (lambda (_e155362155387_
                              _hd155361155390_
                              _tl155360155392_
                              _e155365155395_
                              _hd155364155398_
                              _tl155363155400_
                              ___splice155774155775_
                              _target155366155403_
                              _tl155368155405_)
                       (letrec ((_loop155369155408_
                                 (lambda (_hd155367155411_ _id155373155413_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd155367155411_))
                                       (let ((_e155370155416_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd155367155411_))))
                                         (let ((_lp-tl155372155421_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e155370155416_)))
                                               (_lp-hd155371155419_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e155370155416_))))
                                           (let ((__tmp156106
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd155371155419_
                                                          _id155373155413_))))
                                             (declare (not safe))
                                             (_loop155369155408_
                                              _lp-tl155372155421_
                                              __tmp156106))))
                                       (let ((_id155374155424_
                                              (reverse _id155373155413_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl155363155400_))
                                             (let ((_e155377155427_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl155363155400_))))
                                               (let ((_tl155375155432_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e155377155427_)))
                                                     (_hd155376155430_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e155377155427_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl155375155432_))
                                                     (___kont155772155773_
                                                      _id155374155424_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g155344155382_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g155344155382_))))))))
                         (let ()
                           (declare (not safe))
                           (_loop155369155408_ _target155366155403_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx155768155769_))
                    (let ((_e155349155468_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx155768155769_))))
                      (let ((_tl155347155473_
                             (let ()
                               (declare (not safe))
                               (##cdr _e155349155468_)))
                            (_hd155348155471_
                             (let ()
                               (declare (not safe))
                               (##car _e155349155468_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl155347155473_))
                            (let ((_e155352155476_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl155347155473_))))
                              (let ((_tl155350155481_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e155352155476_)))
                                    (_hd155351155479_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e155352155476_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd155351155479_))
                                    (let ((_e155355155484_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd155351155479_))))
                                      (let ((_tl155353155489_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e155355155484_)))
                                            (_hd155354155487_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e155355155484_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl155353155489_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl155350155481_))
                                                (let ((_e155358155492_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl155350155481_))))
                                                  (let ((_tl155356155497_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e155358155492_)))
                                                        (_hd155357155495_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e155358155492_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl155356155497_))
                                                        (___kont155770155771_
                                                         _hd155354155487_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _hd155351155479_))
                                                            (let ((___splice155774155775_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _hd155351155479_ '0))))
                      (let ((_tl155368155405_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice155774155775_ '1)))
                            (_target155366155403_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice155774155775_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl155368155405_))
                            (___match155823155824_
                             _e155349155468_
                             _hd155348155471_
                             _tl155347155473_
                             _e155352155476_
                             _hd155351155479_
                             _tl155350155481_
                             ___splice155774155775_
                             _target155366155403_
                             _tl155368155405_)
                            (let () (declare (not safe)) (_g155344155382_)))))
                    (let () (declare (not safe)) (_g155344155382_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _hd155351155479_))
                                                    (let ((___splice155774155775_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _hd155351155479_
                                                              '0))))
                                                      (let ((_tl155368155405_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice155774155775_ '1)))
                    (_target155366155403_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice155774155775_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl155368155405_))
                    (___match155823155824_
                     _e155349155468_
                     _hd155348155471_
                     _tl155347155473_
                     _e155352155476_
                     _hd155351155479_
                     _tl155350155481_
                     ___splice155774155775_
                     _target155366155403_
                     _tl155368155405_)
                    (let () (declare (not safe)) (_g155344155382_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g155344155382_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _hd155351155479_))
                                                (let ((___splice155774155775_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _hd155351155479_
                                                          '0))))
                                                  (let ((_tl155368155405_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice155774155775_
                                                            '1)))
                                                        (_target155366155403_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice155774155775_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl155368155405_))
                                                        (___match155823155824_
                                                         _e155349155468_
                                                         _hd155348155471_
                                                         _tl155347155473_
                                                         _e155352155476_
                                                         _hd155351155479_
                                                         _tl155350155481_
                                                         ___splice155774155775_
                                                         _target155366155403_
                                                         _tl155368155405_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g155344155382_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g155344155382_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd155351155479_))
                                        (let ((___splice155774155775_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd155351155479_
                                                  '0))))
                                          (let ((_tl155368155405_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice155774155775_
                                                    '1)))
                                                (_target155366155403_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice155774155775_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl155368155405_))
                                                (___match155823155824_
                                                 _e155349155468_
                                                 _hd155348155471_
                                                 _tl155347155473_
                                                 _e155352155476_
                                                 _hd155351155479_
                                                 _tl155350155481_
                                                 ___splice155774155775_
                                                 _target155366155403_
                                                 _tl155368155405_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g155344155382_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g155344155382_))))))
                            (let () (declare (not safe)) (_g155344155382_)))))
                    (let () (declare (not safe)) (_g155344155382_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_stx154893_)
        (let* ((___stx155826155827_ _stx154893_)
               (_g154897154999_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx155826155827_)))))
          (let ((___kont155828155829_
                 (lambda (_L155289_ _L155290_ _L155291_ _L155292_ _L155293_)
                   (let ((__tmp156107
                          (let ((__tmp156114
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L155292_)))
                                (__tmp156108
                                 (let ((__tmp156113
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L155291_)))
                                       (__tmp156109
                                        (let ((__tmp156112
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L155290_)))
                                              (__tmp156110
                                               (let ((__tmp156111
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L155289_))))
                                                 (declare (not safe))
                                                 (cons __tmp156111 '()))))
                                          (declare (not safe))
                                          (cons __tmp156112 __tmp156110))))
                                   (declare (not safe))
                                   (cons __tmp156113 __tmp156109))))
                            (declare (not safe))
                            (cons __tmp156114 __tmp156108))))
                     (declare (not safe))
                     (cons 'declare-method __tmp156107))))
                (___kont155830155831_
                 (lambda (_L155115_ _L155116_ _L155117_ _L155118_)
                   (let ((__tmp156115
                          (let ((__tmp156121
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L155117_)))
                                (__tmp156116
                                 (let ((__tmp156120
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L155116_)))
                                       (__tmp156117
                                        (let ((__tmp156119
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L155115_)))
                                              (__tmp156118
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '#f '()))))
                                          (declare (not safe))
                                          (cons __tmp156119 __tmp156118))))
                                   (declare (not safe))
                                   (cons __tmp156120 __tmp156117))))
                            (declare (not safe))
                            (cons __tmp156121 __tmp156116))))
                     (declare (not safe))
                     (cons 'declare-method __tmp156115))))
                (___kont155832155833_ (lambda () '(begin))))
            (let ((___match155961155962_
                   (lambda (_e154906155161_
                            _hd154905155164_
                            _tl154904155166_
                            _e154909155169_
                            _hd154908155172_
                            _tl154907155174_
                            _e154912155177_
                            _hd154911155180_
                            _tl154910155182_
                            _e154915155185_
                            _hd154914155188_
                            _tl154913155190_
                            _e154918155193_
                            _hd154917155196_
                            _tl154916155198_
                            _e154921155201_
                            _hd154920155204_
                            _tl154919155206_
                            _e154924155209_
                            _hd154923155212_
                            _tl154922155214_
                            _e154927155217_
                            _hd154926155220_
                            _tl154925155222_
                            _e154930155225_
                            _hd154929155228_
                            _tl154928155230_
                            _e154933155233_
                            _hd154932155236_
                            _tl154931155238_
                            _e154936155241_
                            _hd154935155244_
                            _tl154934155246_
                            _e154939155249_
                            _hd154938155252_
                            _tl154937155254_
                            _e154942155257_
                            _hd154941155260_
                            _tl154940155262_
                            _e154945155265_
                            _hd154944155268_
                            _tl154943155270_
                            _e154948155273_
                            _hd154947155276_
                            _tl154946155278_
                            _e154951155281_
                            _hd154950155284_
                            _tl154949155286_)
                     (let ((_L155289_ _hd154950155284_)
                           (_L155290_ _hd154941155260_)
                           (_L155291_ _hd154932155236_)
                           (_L155292_ _hd154923155212_)
                           (_L155293_ _hd154914155188_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L155293_
                              'bind-method!))
                           (___kont155828155829_
                            _L155289_
                            _L155290_
                            _L155291_
                            _L155292_
                            _L155293_)
                           (___kont155832155833_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx155826155827_))
                  (let ((_e154906155161_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx155826155827_))))
                    (let ((_tl154904155166_
                           (let ()
                             (declare (not safe))
                             (##cdr _e154906155161_)))
                          (_hd154905155164_
                           (let ()
                             (declare (not safe))
                             (##car _e154906155161_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl154904155166_))
                          (let ((_e154909155169_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl154904155166_))))
                            (let ((_tl154907155174_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e154909155169_)))
                                  (_hd154908155172_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e154909155169_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd154908155172_))
                                  (let ((_e154912155177_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd154908155172_))))
                                    (let ((_tl154910155182_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e154912155177_)))
                                          (_hd154911155180_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e154912155177_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd154911155180_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd154911155180_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl154910155182_))
                                                  (let ((_e154915155185_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl154910155182_))))
                                                    (let ((_tl154913155190_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e154915155185_)))
                                                          (_hd154914155188_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e154915155185_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl154913155190_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl154907155174_))
                      (let ((_e154918155193_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl154907155174_))))
                        (let ((_tl154916155198_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e154918155193_)))
                              (_hd154917155196_
                               (let ()
                                 (declare (not safe))
                                 (##car _e154918155193_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd154917155196_))
                              (let ((_e154921155201_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd154917155196_))))
                                (let ((_tl154919155206_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e154921155201_)))
                                      (_hd154920155204_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e154921155201_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd154920155204_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd154920155204_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl154919155206_))
                                              (let ((_e154924155209_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl154919155206_))))
                                                (let ((_tl154922155214_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e154924155209_)))
                                                      (_hd154923155212_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e154924155209_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl154922155214_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl154916155198_))
                                                          (let ((_e154927155217_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl154916155198_))))
                    (let ((_tl154925155222_
                           (let ()
                             (declare (not safe))
                             (##cdr _e154927155217_)))
                          (_hd154926155220_
                           (let ()
                             (declare (not safe))
                             (##car _e154927155217_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd154926155220_))
                          (let ((_e154930155225_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd154926155220_))))
                            (let ((_tl154928155230_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e154930155225_)))
                                  (_hd154929155228_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e154930155225_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd154929155228_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd154929155228_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl154928155230_))
                                          (let ((_e154933155233_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl154928155230_))))
                                            (let ((_tl154931155238_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e154933155233_)))
                                                  (_hd154932155236_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e154933155233_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl154931155238_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl154925155222_))
                                                      (let ((_e154936155241_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl154925155222_))))
                (let ((_tl154934155246_
                       (let () (declare (not safe)) (##cdr _e154936155241_)))
                      (_hd154935155244_
                       (let () (declare (not safe)) (##car _e154936155241_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd154935155244_))
                      (let ((_e154939155249_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd154935155244_))))
                        (let ((_tl154937155254_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e154939155249_)))
                              (_hd154938155252_
                               (let ()
                                 (declare (not safe))
                                 (##car _e154939155249_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd154938155252_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd154938155252_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl154937155254_))
                                      (let ((_e154942155257_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl154937155254_))))
                                        (let ((_tl154940155262_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e154942155257_)))
                                              (_hd154941155260_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e154942155257_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl154940155262_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl154934155246_))
                                                  (let ((_e154945155265_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl154934155246_))))
                                                    (let ((_tl154943155270_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e154945155265_)))
                                                          (_hd154944155268_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e154945155265_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd154944155268_))
                                                          (let ((_e154948155273_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd154944155268_))))
                    (let ((_tl154946155278_
                           (let ()
                             (declare (not safe))
                             (##cdr _e154948155273_)))
                          (_hd154947155276_
                           (let ()
                             (declare (not safe))
                             (##car _e154948155273_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd154947155276_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd154947155276_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl154946155278_))
                                  (let ((_e154951155281_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl154946155278_))))
                                    (let ((_tl154949155286_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e154951155281_)))
                                          (_hd154950155284_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e154951155281_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl154949155286_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl154943155270_))
                                              (___match155961155962_
                                               _e154906155161_
                                               _hd154905155164_
                                               _tl154904155166_
                                               _e154909155169_
                                               _hd154908155172_
                                               _tl154907155174_
                                               _e154912155177_
                                               _hd154911155180_
                                               _tl154910155182_
                                               _e154915155185_
                                               _hd154914155188_
                                               _tl154913155190_
                                               _e154918155193_
                                               _hd154917155196_
                                               _tl154916155198_
                                               _e154921155201_
                                               _hd154920155204_
                                               _tl154919155206_
                                               _e154924155209_
                                               _hd154923155212_
                                               _tl154922155214_
                                               _e154927155217_
                                               _hd154926155220_
                                               _tl154925155222_
                                               _e154930155225_
                                               _hd154929155228_
                                               _tl154928155230_
                                               _e154933155233_
                                               _hd154932155236_
                                               _tl154931155238_
                                               _e154936155241_
                                               _hd154935155244_
                                               _tl154934155246_
                                               _e154939155249_
                                               _hd154938155252_
                                               _tl154937155254_
                                               _e154942155257_
                                               _hd154941155260_
                                               _tl154940155262_
                                               _e154945155265_
                                               _hd154944155268_
                                               _tl154943155270_
                                               _e154948155273_
                                               _hd154947155276_
                                               _tl154946155278_
                                               _e154951155281_
                                               _hd154950155284_
                                               _tl154949155286_)
                                              (___kont155832155833_))
                                          (___kont155832155833_))))
                                  (___kont155832155833_))
                              (___kont155832155833_))
                          (___kont155832155833_))))
                  (___kont155832155833_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl154934155246_))
                                                      (if (let ((__tmp156122
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp156122 'bind-method!))
                  (let ((_L155115_ _hd154941155260_)
                        (_L155116_ _hd154932155236_)
                        (_L155117_ _hd154923155212_)
                        (_L155118_ _hd154914155188_))
                    (___kont155830155831_
                     _L155115_
                     _L155116_
                     _L155117_
                     _L155118_))
                  (___kont155832155833_))
              (___kont155832155833_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont155832155833_))))
                                      (___kont155832155833_))
                                  (___kont155832155833_))
                              (___kont155832155833_))))
                      (___kont155832155833_))))
              (___kont155832155833_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont155832155833_))))
                                          (___kont155832155833_))
                                      (___kont155832155833_))
                                  (___kont155832155833_))))
                          (___kont155832155833_))))
                  (___kont155832155833_))
              (___kont155832155833_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont155832155833_))
                                          (___kont155832155833_))
                                      (___kont155832155833_))))
                              (___kont155832155833_))))
                      (___kont155832155833_))
                  (___kont155832155833_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont155832155833_))
                                              (___kont155832155833_))
                                          (___kont155832155833_))))
                                  (___kont155832155833_))))
                          (___kont155832155833_))))
                  (___kont155832155833_)))))))
    (define gxc#!alias::typedecl
      (lambda (_self154869_)
        (let* ((_self154870154876_ _self154869_)
               (_E154872154880_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154870154876_))))
               (_K154873154885_
                (lambda (_alias-id154883_)
                  (let ((__tmp156123
                         (let ()
                           (declare (not safe))
                           (cons _alias-id154883_ '()))))
                    (declare (not safe))
                    (cons '@alias __tmp156123)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self154870154876_ 'gxc#!alias::t))
              (let* ((_e154874154888_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154870154876_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_alias-id154891_ _e154874154888_))
                (declare (not safe))
                (_K154873154885_ _alias-id154891_))
              (let () (declare (not safe)) (_E154872154880_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_self154660_)
        (let* ((_self154661154676_ _self154660_)
               (_E154663154680_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154661154676_))))
               (_K154664154694_
                (lambda (_methods154683_
                         _metaclass154684_
                         _final?154685_
                         _struct?154686_
                         _constructor154687_
                         _fields154688_
                         _slots154689_
                         _precendence-list154690_
                         _super154691_
                         _id154692_)
                  (let ((__tmp156124
                         (let ((__tmp156125
                                (let ((__tmp156126
                                       (let ((__tmp156127
                                              (let ((__tmp156128
                                                     (let ((__tmp156129
                                                            (let ((__tmp156130
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp156131
                                  (let ((__tmp156132
                                         (let ((__tmp156133
                                                (let ((__tmp156134
                                                       (if _methods154683_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (hash->list
                                                              _methods154683_))
                                                           '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp156134 '()))))
                                           (declare (not safe))
                                           (cons _metaclass154684_
                                                 __tmp156133))))
                                    (declare (not safe))
                                    (cons _final?154685_ __tmp156132))))
                             (declare (not safe))
                             (cons _struct?154686_ __tmp156131))))
                      (declare (not safe))
                      (cons _constructor154687_ __tmp156130))))
               (declare (not safe))
               (cons _fields154688_ __tmp156129))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _slots154689_
                                                      __tmp156128))))
                                         (declare (not safe))
                                         (cons _precendence-list154690_
                                               __tmp156127))))
                                  (declare (not safe))
                                  (cons _super154691_ __tmp156126))))
                           (declare (not safe))
                           (cons _id154692_ __tmp156125))))
                    (declare (not safe))
                    (cons '@class __tmp156124)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self154661154676_ 'gxc#!class::t))
              (let* ((_e154665154697_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154661154676_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_id154700_ _e154665154697_)
                     (_e154666154702_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154661154676_
                         '2
                         gxc#!class::t
                         '#f)))
                     (_super154705_ _e154666154702_)
                     (_e154667154707_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154661154676_
                         '3
                         gxc#!class::t
                         '#f)))
                     (_precendence-list154710_ _e154667154707_)
                     (_e154668154712_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154661154676_
                         '4
                         gxc#!class::t
                         '#f)))
                     (_slots154715_ _e154668154712_)
                     (_e154669154717_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154661154676_
                         '5
                         gxc#!class::t
                         '#f)))
                     (_fields154720_ _e154669154717_)
                     (_e154670154722_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154661154676_
                         '6
                         gxc#!class::t
                         '#f)))
                     (_constructor154725_ _e154670154722_)
                     (_e154671154727_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154661154676_
                         '7
                         gxc#!class::t
                         '#f)))
                     (_struct?154730_ _e154671154727_)
                     (_e154672154732_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154661154676_
                         '8
                         gxc#!class::t
                         '#f)))
                     (_final?154735_ _e154672154732_)
                     (_e154673154737_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154661154676_
                         '9
                         gxc#!class::t
                         '#f)))
                     (_metaclass154740_ _e154673154737_)
                     (_e154674154742_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154661154676_
                         '10
                         gxc#!class::t
                         '#f)))
                     (_methods154745_ _e154674154742_))
                (declare (not safe))
                (_K154664154694_
                 _methods154745_
                 _metaclass154740_
                 _final?154735_
                 _struct?154730_
                 _constructor154725_
                 _fields154720_
                 _slots154715_
                 _precendence-list154710_
                 _super154705_
                 _id154700_))
              (let () (declare (not safe)) (_E154663154680_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_self154514_)
        (let* ((_self154515154521_ _self154514_)
               (_E154517154525_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154515154521_))))
               (_K154518154530_
                (lambda (_klass-id154528_)
                  (let ((__tmp156135
                         (let ()
                           (declare (not safe))
                           (cons _klass-id154528_ '()))))
                    (declare (not safe))
                    (cons '@predicate __tmp156135)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self154515154521_
                 'gxc#!predicate::t))
              (let* ((_e154519154533_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154515154521_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id154536_ _e154519154533_))
                (declare (not safe))
                (_K154518154530_ _klass-id154536_))
              (let () (declare (not safe)) (_E154517154525_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_self154368_)
        (let* ((_self154369154375_ _self154368_)
               (_E154371154379_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154369154375_))))
               (_K154372154384_
                (lambda (_klass-id154382_)
                  (let ((__tmp156136
                         (let ()
                           (declare (not safe))
                           (cons _klass-id154382_ '()))))
                    (declare (not safe))
                    (cons '@constructor __tmp156136)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self154369154375_
                 'gxc#!constructor::t))
              (let* ((_e154373154387_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154369154375_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id154390_ _e154373154387_))
                (declare (not safe))
                (_K154372154384_ _klass-id154390_))
              (let () (declare (not safe)) (_E154371154379_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_self154208_)
        (let* ((_self154209154217_ _self154208_)
               (_E154211154221_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154209154217_))))
               (_K154212154228_
                (lambda (_checked?154224_ _slot154225_ _klass-id154226_)
                  (let ((__tmp156137
                         (let ((__tmp156138
                                (let ((__tmp156139
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?154224_ '()))))
                                  (declare (not safe))
                                  (cons _slot154225_ __tmp156139))))
                           (declare (not safe))
                           (cons _klass-id154226_ __tmp156138))))
                    (declare (not safe))
                    (cons '@accessor __tmp156137)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self154209154217_
                 'gxc#!accessor::t))
              (let* ((_e154213154231_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154209154217_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id154234_ _e154213154231_)
                     (_e154214154236_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154209154217_
                         '2
                         gxc#!accessor::t
                         '#f)))
                     (_slot154239_ _e154214154236_)
                     (_e154215154241_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154209154217_
                         '3
                         gxc#!accessor::t
                         '#f)))
                     (_checked?154244_ _e154215154241_))
                (declare (not safe))
                (_K154212154228_
                 _checked?154244_
                 _slot154239_
                 _klass-id154234_))
              (let () (declare (not safe)) (_E154211154221_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_self154048_)
        (let* ((_self154049154057_ _self154048_)
               (_E154051154061_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154049154057_))))
               (_K154052154068_
                (lambda (_checked?154064_ _slot154065_ _klass-id154066_)
                  (let ((__tmp156140
                         (let ((__tmp156141
                                (let ((__tmp156142
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?154064_ '()))))
                                  (declare (not safe))
                                  (cons _slot154065_ __tmp156142))))
                           (declare (not safe))
                           (cons _klass-id154066_ __tmp156141))))
                    (declare (not safe))
                    (cons '@mutator __tmp156140)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self154049154057_ 'gxc#!mutator::t))
              (let* ((_e154053154071_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154049154057_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id154074_ _e154053154071_)
                     (_e154054154076_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154049154057_
                         '2
                         gxc#!mutator::t
                         '#f)))
                     (_slot154079_ _e154054154076_)
                     (_e154055154081_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154049154057_
                         '3
                         gxc#!mutator::t
                         '#f)))
                     (_checked?154084_ _e154055154081_))
                (declare (not safe))
                (_K154052154068_
                 _checked?154084_
                 _slot154079_
                 _klass-id154074_))
              (let () (declare (not safe)) (_E154051154061_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!lambda::typedecl
      (lambda (_self153874_)
        (let* ((_self153875153885_ _self153874_)
               (_E153877153889_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self153875153885_))))
               (_K153878153900_
                (lambda (_typedecl153892_
                         _inline153893_
                         _dispatch153894_
                         _arity153895_)
                  (if _inline153893_
                      (let ((_$e153897_ _typedecl153892_))
                        (if _$e153897_
                            _$e153897_
                            (let ()
                              (declare (not safe))
                              (error '"Cannot generate typedecl for inline rules"))))
                      (let ((__tmp156143
                             (let ((__tmp156144
                                    (let ()
                                      (declare (not safe))
                                      (cons _dispatch153894_ '()))))
                               (declare (not safe))
                               (cons _arity153895_ __tmp156144))))
                        (declare (not safe))
                        (cons '@lambda __tmp156143))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self153875153885_ 'gxc#!lambda::t))
              (let* ((_e153879153903_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153875153885_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e153880153906_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153875153885_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity153909_ _e153880153906_)
                     (_e153881153911_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153875153885_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch153914_ _e153881153911_)
                     (_e153882153916_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153875153885_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline153919_ _e153882153916_)
                     (_e153883153921_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153875153885_
                         '5
                         gxc#!lambda::t
                         '#f)))
                     (_typedecl153924_ _e153883153921_))
                (declare (not safe))
                (_K153878153900_
                 _typedecl153924_
                 _inline153919_
                 _dispatch153914_
                 _arity153909_))
              (let () (declare (not safe)) (_E153877153889_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_self153685_)
        (letrec ((_clause-e153687_
                  (lambda (_clause153717_)
                    (let* ((_clause153718153726_ _clause153717_)
                           (_E153720153730_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _clause153718153726_))))
                           (_K153721153736_
                            (lambda (_dispatch153733_ _arity153734_)
                              (let ((__tmp156145
                                     (let ()
                                       (declare (not safe))
                                       (cons _dispatch153733_ '()))))
                                (declare (not safe))
                                (cons _arity153734_ __tmp156145)))))
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _clause153718153726_
                             'gxc#!lambda::t))
                          (let* ((_e153722153739_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause153718153726_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                                 (_e153723153742_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause153718153726_
                                     '2
                                     gxc#!lambda::t
                                     '#f)))
                                 (_arity153745_ _e153723153742_)
                                 (_e153724153747_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause153718153726_
                                     '3
                                     gxc#!lambda::t
                                     '#f)))
                                 (_dispatch153750_ _e153724153747_))
                            (declare (not safe))
                            (_K153721153736_ _dispatch153750_ _arity153745_))
                          (let () (declare (not safe)) (_E153720153730_)))))))
          (let* ((_self153688153695_ _self153685_)
                 (_E153690153699_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching" _self153688153695_))))
                 (_K153691153706_
                  (lambda (_clauses153702_)
                    (let ((_clauses153704_
                           (map _clause-e153687_ _clauses153702_)))
                      (declare (not safe))
                      (cons '@case-lambda _clauses153704_)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of?
                   _self153688153695_
                   'gxc#!case-lambda::t))
                (let* ((_e153692153709_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self153688153695_
                           '1
                           gxc#!type::t
                           '#f)))
                       (_e153693153712_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self153688153695_
                           '2
                           gxc#!case-lambda::t
                           '#f)))
                       (_clauses153715_ _e153693153712_))
                  (declare (not safe))
                  (_K153691153706_ _clauses153715_))
                (let () (declare (not safe)) (_E153690153699_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_self153528_)
        (let* ((_self153529153537_ _self153528_)
               (_E153531153541_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self153529153537_))))
               (_K153532153547_
                (lambda (_dispatch153544_ _table153545_)
                  (let ((__tmp156146
                         (let ((__tmp156147
                                (let ()
                                  (declare (not safe))
                                  (cons _dispatch153544_ '()))))
                           (declare (not safe))
                           (cons _table153545_ __tmp156147))))
                    (declare (not safe))
                    (cons '@kw-lambda __tmp156146)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self153529153537_
                 'gxc#!kw-lambda::t))
              (let* ((_e153533153550_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153529153537_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e153534153553_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153529153537_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table153556_ _e153534153553_)
                     (_e153535153558_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153529153537_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch153561_ _e153535153558_))
                (declare (not safe))
                (_K153532153547_ _dispatch153561_ _table153556_))
              (let () (declare (not safe)) (_E153531153541_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda::t
       'typedecl
       gxc#!kw-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_self153371_)
        (let* ((_self153372153380_ _self153371_)
               (_E153374153384_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self153372153380_))))
               (_K153375153390_
                (lambda (_main153387_ _keys153388_)
                  (let ((__tmp156148
                         (let ((__tmp156149
                                (let ()
                                  (declare (not safe))
                                  (cons _main153387_ '()))))
                           (declare (not safe))
                           (cons _keys153388_ __tmp156149))))
                    (declare (not safe))
                    (cons '@kw-lambda-dispatch __tmp156148)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self153372153380_
                 'gxc#!kw-lambda-primary::t))
              (let* ((_e153376153393_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153372153380_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e153377153396_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153372153380_
                         '2
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_keys153399_ _e153377153396_)
                     (_e153378153401_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153372153380_
                         '3
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_main153404_ _e153378153401_))
                (declare (not safe))
                (_K153375153390_ _main153404_ _keys153399_))
              (let () (declare (not safe)) (_E153374153384_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))))
