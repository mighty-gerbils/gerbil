(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1709111640)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (gxc#current-compile-optimizer-info)
            '#!void
            (gxc#current-compile-optimizer-info
             (let ((__obj156139
                    (let ()
                      (declare (not safe))
                      (##structure gxc#optimizer-info::t '#f '#f '#f))))
               (gxc#optimizer-info:::init! __obj156139)
               __obj156139)))))
    (define gxc#optimize!
      (lambda (_ctx155832_)
        (let ((__tmp156143
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _ctx155832_))
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-builtin-ssxi))
                 (let ((__tmp156145
                        (##structure-ref
                         (gxc#current-compile-optimizer-info)
                         '2
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp156144
                        (##structure-ref
                         _ctx155832_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp156145 __tmp156144 '#t))
                 (let ((_code155835_
                        (let ((__tmp156146
                               (##structure-ref
                                _ctx155832_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp156146))))
                   (##structure-set!
                    _ctx155832_
                    _code155835_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp156142 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp156141 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters
           __tmp156143
           gxc#current-compile-mutators
           __tmp156142
           gxc#current-compile-local-type
           __tmp156141))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda ()
        (letrec ((_load-it!155828_
                  (lambda (_id155830_)
                    (if (let ((__tmp156148
                               (##structure-ref
                                (gxc#current-compile-optimizer-info)
                                '2
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp156148 _id155830_))
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-import-ssxi-by-id _id155830_))
                          (let ((__tmp156147
                                 (##structure-ref
                                  (gxc#current-compile-optimizer-info)
                                  '2
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp156147 _id155830_ '#t)))))))
          (for-each
           _load-it!155828_
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
      (lambda (_ctx155772_)
        (letrec* ((_deps155774_
                   (let* ((_imports155818_
                           (##structure-ref
                            _ctx155772_
                            '8
                            gx#module-context::t
                            '#f))
                          (_$e155820_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _ctx155772_))))
                     (if _$e155820_
                         ((lambda (_g155822155824_)
                            (let ()
                              (declare (not safe))
                              (cons _g155822155824_ _imports155818_)))
                          _$e155820_)
                         _imports155818_))))
          (let _lp155776_ ((_rest155778_ _deps155774_))
            (let* ((_rest155779155787_ _rest155778_)
                   (_else155781155795_ (lambda () '#!void))
                   (_K155783155806_
                    (lambda (_rest155798_ _hd155799_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _hd155799_
                             'gx#module-context::t))
                          (begin
                            (if (let ((__tmp156162
                                       (##structure-ref
                                        (gxc#current-compile-optimizer-info)
                                        '2
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp156161
                                       (##structure-ref
                                        _hd155799_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (hash-get __tmp156162 __tmp156161))
                                '#!void
                                (begin
                                  (let ((_$e155801_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _hd155799_))))
                                    (if _$e155801_
                                        ((lambda (_pre155804_)
                                           (let ((__tmp156159
                                                  (let ((__tmp156160
                                                         (##structure-ref
                                                          _hd155799_
                                                          '8
                                                          gx#module-context::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (cons _pre155804_
                                                          __tmp156160))))
                                             (declare (not safe))
                                             (_lp155776_ __tmp156159)))
                                         _$e155801_)
                                        (let ((__tmp156158
                                               (##structure-ref
                                                _hd155799_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                          (declare (not safe))
                                          (_lp155776_ __tmp156158))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _hd155799_))))
                            (let ()
                              (declare (not safe))
                              (_lp155776_ _rest155798_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _hd155799_
                                 'gx#prelude-context::t))
                              (begin
                                (if (let ((__tmp156157
                                           (##structure-ref
                                            (gxc#current-compile-optimizer-info)
                                            '2
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp156156
                                           (##structure-ref
                                            _hd155799_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (hash-get __tmp156157 __tmp156156))
                                    '#!void
                                    (begin
                                      (let ((__tmp156155
                                             (##structure-ref
                                              _hd155799_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_lp155776_ __tmp156155))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi _hd155799_))))
                                (let ()
                                  (declare (not safe))
                                  (_lp155776_ _rest155798_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _hd155799_
                                     'gx#module-import::t))
                                  (let ((__tmp156153
                                         (let ((__tmp156154
                                                (##direct-structure-ref
                                                 _hd155799_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp156154 _rest155798_))))
                                    (declare (not safe))
                                    (_lp155776_ __tmp156153))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _hd155799_
                                         'gx#module-export::t))
                                      (let ((__tmp156151
                                             (let ((__tmp156152
                                                    (##direct-structure-ref
                                                     _hd155799_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp156152
                                                     _rest155798_))))
                                        (declare (not safe))
                                        (_lp155776_ __tmp156151))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _hd155799_
                                             'gx#import-set::t))
                                          (let ((__tmp156149
                                                 (let ((__tmp156150
                                                        (##direct-structure-ref
                                                         _hd155799_
                                                         '1
                                                         gx#import-set::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp156150
                                                         _rest155798_))))
                                            (declare (not safe))
                                            (_lp155776_ __tmp156149))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _hd155799_))))))))))
              (if (let () (declare (not safe)) (##pair? _rest155779155787_))
                  (let ((_hd155784155809_
                         (let ()
                           (declare (not safe))
                           (##car _rest155779155787_)))
                        (_tl155785155811_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest155779155787_))))
                    (let* ((_hd155814_ _hd155784155809_)
                           (_rest155816_ _tl155785155811_))
                      (declare (not safe))
                      (_K155783155806_ _rest155816_ _hd155814_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_ctx155752_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _ctx155752_
                    'gx#module-context::t))
                 (let ((__tmp156163
                        (##structure-ref
                         _ctx155752_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp156163)))
            '#!void
            (let* ((_ht155754_
                    (##structure-ref
                     (gxc#current-compile-optimizer-info)
                     '2
                     gxc#optimizer-info::t
                     '#f))
                   (_id155756_
                    (##structure-ref
                     _ctx155752_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_mod155758_
                    (let ()
                      (declare (not safe))
                      (hash-get _ht155754_ _id155756_))))
              (let ((_$e155761_ _mod155758_))
                (if _$e155761_
                    _$e155761_
                    (let* ((_mod155764_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-import-ssxi _ctx155752_)))
                           (_val155769_
                            (let ((_$e155766_ _mod155764_))
                              (if _$e155766_ _$e155766_ '#!void))))
                      (let ()
                        (declare (not safe))
                        (hash-put! _ht155754_ _id155756_ _val155769_))
                      _val155769_)))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_ctx155750_)
        (if (##structure-ref _ctx155750_ '1 gx#expander-context::t '#f)
            (let ((__tmp156164
                   (##structure-ref
                    _ctx155750_
                    '1
                    gx#expander-context::t
                    '#f)))
              (declare (not safe))
              (gxc#optimizer-import-ssxi-by-id __tmp156164))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_id155727_)
        (letrec ((_catch-e155729_
                  (lambda (_exn155748_)
                    (if (gxc#current-compile-verbose)
                        (begin
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"Failed to load ssxi module for "
                             _id155727_))
                          (display-exception _exn155748_))
                        '#!void)
                    '#f))
                 (_import-e155730_
                  (lambda ()
                    (let* ((_str-id155733_
                            (string-append
                             (let ()
                               (declare (not safe))
                               (gxc#module-id->path-string _id155727_))
                             '".ssxi"))
                           (_artefact-path155741_
                            (let ((_odir155734155736_
                                   (gxc#current-compile-output-dir)))
                              (if _odir155734155736_
                                  (let ((_odir155739_ _odir155734155736_))
                                    (path-expand
                                     (string-append _str-id155733_ '".ss")
                                     _odir155739_))
                                  '#f)))
                           (_library-path155743_
                            (string->symbol
                             (string-append '":" _str-id155733_ '".ss")))
                           (_ssxi-path155745_
                            (if (and _artefact-path155741_
                                     (file-exists? _artefact-path155741_))
                                _artefact-path155741_
                                _library-path155743_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _ssxi-path155745_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _ssxi-path155745_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (with-catch _catch-e155729_ _import-e155730_)))))
    (define gxc#optimize-source
      (lambda (_stx155718_)
        (let () (declare (not safe)) (gxc#apply-collect-mutators _stx155718_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _stx155718_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _stx155718_))
        (let* ((_stx155720_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _stx155718_)))
               (_stx155722_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _stx155720_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _stx155722_))
          (let ((_stx155725_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _stx155722_))))
            (declare (not safe))
            (gxc#apply-optimize-call _stx155725_)))))
    (define gxc#&generate-ssxi
      (make-promise
       (lambda ()
         (let ((_tbl155715_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp156165 (force gxc#&generate-runtime-empty)))
             (declare (not safe))
             (hash-merge! _tbl155715_ __tmp156165))
           (let ()
             (declare (not safe))
             (hash-put! _tbl155715_ '%#begin gxc#generate-runtime-begin%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl155715_
              '%#begin-syntax
              gxc#generate-ssxi-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl155715_ '%#module gxc#generate-ssxi-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl155715_
              '%#define-values
              gxc#generate-ssxi-define-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl155715_ '%#call gxc#generate-ssxi-call%))
           _tbl155715_))))
    (define gxc#apply-generate-ssxi
      (lambda (_stx155698_ . _args155700_)
        (let ((__tmp156167
               (lambda ()
                 (declare (not safe))
                 (if (null? _args155700_)
                     (gxc#compile-e__0 _stx155698_)
                     (let ((_arg1155705_ (car _args155700_))
                           (_rest155707_ (cdr _args155700_)))
                       (if (null? _rest155707_)
                           (gxc#compile-e__1 _stx155698_ _arg1155705_)
                           (let ((_arg2155710_ (car _rest155707_))
                                 (_rest155712_ (cdr _rest155707_)))
                             (if (null? _rest155712_)
                                 (gxc#compile-e__2
                                  _stx155698_
                                  _arg1155705_
                                  _arg2155710_)
                                 (apply gxc#compile-e
                                        _stx155698_
                                        _arg1155705_
                                        _arg2155710_
                                        _rest155712_))))))))
              (__tmp156166 (force gxc#&generate-ssxi)))
          (declare (not safe))
          (call-with-parameters
           __tmp156167
           gxc#current-compile-methods
           __tmp156166))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_stx155659_)
        (let* ((_g155661155671_
                (lambda (_g155662155668_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g155662155668_))))
               (_g155660155695_
                (lambda (_g155662155674_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g155662155674_))
                      (let ((_e155666155676_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g155662155674_))))
                        (let ((_hd155665155679_
                               (let ()
                                 (declare (not safe))
                                 (##car _e155666155676_)))
                              (_tl155664155681_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e155666155676_))))
                          ((lambda (_L155684_)
                             (let ((__tmp156170
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _stx155659_))))
                                   (__tmp156168
                                    (let ((__tmp156169
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp156169 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp156170
                                gx#current-expander-phi
                                __tmp156168)))
                           _tl155664155681_)))
                      (let ()
                        (declare (not safe))
                        (_g155661155671_ _g155662155674_))))))
          (declare (not safe))
          (_g155660155695_ _stx155659_))))
    (define gxc#generate-ssxi-module%
      (lambda (_stx155599_)
        (let* ((_g155601155615_
                (lambda (_g155602155612_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g155602155612_))))
               (_g155600155656_
                (lambda (_g155602155618_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g155602155618_))
                      (let ((_e155607155620_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g155602155618_))))
                        (let ((_hd155606155623_
                               (let ()
                                 (declare (not safe))
                                 (##car _e155607155620_)))
                              (_tl155605155625_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e155607155620_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl155605155625_))
                              (let ((_e155610155628_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl155605155625_))))
                                (let ((_hd155609155631_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e155610155628_)))
                                      (_tl155608155633_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e155610155628_))))
                                  ((lambda (_L155636_ _L155637_)
                                     (let* ((_ctx155650_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L155637_)))
                                            (_code155652_
                                             (##structure-ref
                                              _ctx155650_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp156171
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _code155652_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp156171
                                          gx#current-expander-context
                                          _ctx155650_))))
                                   _tl155608155633_
                                   _hd155609155631_)))
                              (let ()
                                (declare (not safe))
                                (_g155601155615_ _g155602155618_)))))
                      (let ()
                        (declare (not safe))
                        (_g155601155615_ _g155602155618_))))))
          (declare (not safe))
          (_g155600155656_ _stx155599_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_stx155409_)
        (letrec ((_generate-e155411_
                  (lambda (_id155588_)
                    (let* ((_sym155590_
                            (if (let ((__tmp156172
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp156172))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _id155588_))
                                '#f))
                           (_$e155592_
                            (if _sym155590_
                                (let ()
                                  (declare (not safe))
                                  (gxc#optimizer-lookup-type _sym155590_))
                                '#f)))
                      (if _$e155592_
                          ((lambda (_type155595_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"generate typedecl " _sym155590_))
                             (let* ((_typedecl155597_
                                     (let ((__method156140
                                            (let ()
                                              (declare (not safe))
                                              (method-ref
                                               _type155595_
                                               'typedecl))))
                                       (if __method156140
                                           (__method156140 _type155595_)
                                           (let ()
                                             (declare (not safe))
                                             (error '"Missing method"
                                                    _type155595_
                                                    'typedecl)))))
                                    (__tmp156173
                                     (let ((__tmp156174
                                            (let ()
                                              (declare (not safe))
                                              (cons _typedecl155597_ '()))))
                                       (declare (not safe))
                                       (cons _sym155590_ __tmp156174))))
                               (declare (not safe))
                               (cons 'declare-type __tmp156173)))
                           _$e155592_)
                          '(begin))))))
          (let* ((___stx155838155839_ _stx155409_)
                 (_g155414155452_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx155838155839_)))))
            (let ((___kont155840155841_
                   (lambda (_L155570_)
                     (let ()
                       (declare (not safe))
                       (_generate-e155411_ _L155570_))))
                  (___kont155842155843_
                   (lambda (_L155505_)
                     (let ((_types155531_
                            (map _generate-e155411_
                                 (let ((__tmp156175
                                        (lambda (_g155523155526_
                                                 _g155524155528_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g155523155526_
                                                  _g155524155528_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp156175 '() _L155505_)))))
                       (declare (not safe))
                       (cons 'begin _types155531_)))))
              (let ((___match155893155894_
                     (lambda (_e155432155457_
                              _hd155431155460_
                              _tl155430155462_
                              _e155435155465_
                              _hd155434155468_
                              _tl155433155470_
                              ___splice155844155845_
                              _target155436155473_
                              _tl155438155475_)
                       (letrec ((_loop155439155478_
                                 (lambda (_hd155437155481_ _id155443155483_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd155437155481_))
                                       (let ((_e155440155486_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd155437155481_))))
                                         (let ((_lp-tl155442155491_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e155440155486_)))
                                               (_lp-hd155441155489_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e155440155486_))))
                                           (let ((__tmp156176
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd155441155489_
                                                          _id155443155483_))))
                                             (declare (not safe))
                                             (_loop155439155478_
                                              _lp-tl155442155491_
                                              __tmp156176))))
                                       (let ((_id155444155494_
                                              (reverse _id155443155483_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl155433155470_))
                                             (let ((_e155447155497_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl155433155470_))))
                                               (let ((_tl155445155502_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e155447155497_)))
                                                     (_hd155446155500_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e155447155497_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl155445155502_))
                                                     (___kont155842155843_
                                                      _id155444155494_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g155414155452_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g155414155452_))))))))
                         (let ()
                           (declare (not safe))
                           (_loop155439155478_ _target155436155473_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx155838155839_))
                    (let ((_e155419155538_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx155838155839_))))
                      (let ((_tl155417155543_
                             (let ()
                               (declare (not safe))
                               (##cdr _e155419155538_)))
                            (_hd155418155541_
                             (let ()
                               (declare (not safe))
                               (##car _e155419155538_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl155417155543_))
                            (let ((_e155422155546_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl155417155543_))))
                              (let ((_tl155420155551_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e155422155546_)))
                                    (_hd155421155549_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e155422155546_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd155421155549_))
                                    (let ((_e155425155554_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd155421155549_))))
                                      (let ((_tl155423155559_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e155425155554_)))
                                            (_hd155424155557_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e155425155554_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl155423155559_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl155420155551_))
                                                (let ((_e155428155562_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl155420155551_))))
                                                  (let ((_tl155426155567_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e155428155562_)))
                                                        (_hd155427155565_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e155428155562_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl155426155567_))
                                                        (___kont155840155841_
                                                         _hd155424155557_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _hd155421155549_))
                                                            (let ((___splice155844155845_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _hd155421155549_ '0))))
                      (let ((_tl155438155475_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice155844155845_ '1)))
                            (_target155436155473_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice155844155845_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl155438155475_))
                            (___match155893155894_
                             _e155419155538_
                             _hd155418155541_
                             _tl155417155543_
                             _e155422155546_
                             _hd155421155549_
                             _tl155420155551_
                             ___splice155844155845_
                             _target155436155473_
                             _tl155438155475_)
                            (let () (declare (not safe)) (_g155414155452_)))))
                    (let () (declare (not safe)) (_g155414155452_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _hd155421155549_))
                                                    (let ((___splice155844155845_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _hd155421155549_
                                                              '0))))
                                                      (let ((_tl155438155475_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice155844155845_ '1)))
                    (_target155436155473_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice155844155845_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl155438155475_))
                    (___match155893155894_
                     _e155419155538_
                     _hd155418155541_
                     _tl155417155543_
                     _e155422155546_
                     _hd155421155549_
                     _tl155420155551_
                     ___splice155844155845_
                     _target155436155473_
                     _tl155438155475_)
                    (let () (declare (not safe)) (_g155414155452_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g155414155452_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _hd155421155549_))
                                                (let ((___splice155844155845_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _hd155421155549_
                                                          '0))))
                                                  (let ((_tl155438155475_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice155844155845_
                                                            '1)))
                                                        (_target155436155473_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice155844155845_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl155438155475_))
                                                        (___match155893155894_
                                                         _e155419155538_
                                                         _hd155418155541_
                                                         _tl155417155543_
                                                         _e155422155546_
                                                         _hd155421155549_
                                                         _tl155420155551_
                                                         ___splice155844155845_
                                                         _target155436155473_
                                                         _tl155438155475_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g155414155452_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g155414155452_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd155421155549_))
                                        (let ((___splice155844155845_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd155421155549_
                                                  '0))))
                                          (let ((_tl155438155475_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice155844155845_
                                                    '1)))
                                                (_target155436155473_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice155844155845_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl155438155475_))
                                                (___match155893155894_
                                                 _e155419155538_
                                                 _hd155418155541_
                                                 _tl155417155543_
                                                 _e155422155546_
                                                 _hd155421155549_
                                                 _tl155420155551_
                                                 ___splice155844155845_
                                                 _target155436155473_
                                                 _tl155438155475_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g155414155452_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g155414155452_))))))
                            (let () (declare (not safe)) (_g155414155452_)))))
                    (let () (declare (not safe)) (_g155414155452_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_stx154963_)
        (let* ((___stx155896155897_ _stx154963_)
               (_g154967155069_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx155896155897_)))))
          (let ((___kont155898155899_
                 (lambda (_L155359_ _L155360_ _L155361_ _L155362_ _L155363_)
                   (let ((__tmp156177
                          (let ((__tmp156184
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L155362_)))
                                (__tmp156178
                                 (let ((__tmp156183
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L155361_)))
                                       (__tmp156179
                                        (let ((__tmp156182
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L155360_)))
                                              (__tmp156180
                                               (let ((__tmp156181
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L155359_))))
                                                 (declare (not safe))
                                                 (cons __tmp156181 '()))))
                                          (declare (not safe))
                                          (cons __tmp156182 __tmp156180))))
                                   (declare (not safe))
                                   (cons __tmp156183 __tmp156179))))
                            (declare (not safe))
                            (cons __tmp156184 __tmp156178))))
                     (declare (not safe))
                     (cons 'declare-method __tmp156177))))
                (___kont155900155901_
                 (lambda (_L155185_ _L155186_ _L155187_ _L155188_)
                   (let ((__tmp156185
                          (let ((__tmp156191
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L155187_)))
                                (__tmp156186
                                 (let ((__tmp156190
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L155186_)))
                                       (__tmp156187
                                        (let ((__tmp156189
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L155185_)))
                                              (__tmp156188
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '#f '()))))
                                          (declare (not safe))
                                          (cons __tmp156189 __tmp156188))))
                                   (declare (not safe))
                                   (cons __tmp156190 __tmp156187))))
                            (declare (not safe))
                            (cons __tmp156191 __tmp156186))))
                     (declare (not safe))
                     (cons 'declare-method __tmp156185))))
                (___kont155902155903_ (lambda () '(begin))))
            (let ((___match156031156032_
                   (lambda (_e154976155231_
                            _hd154975155234_
                            _tl154974155236_
                            _e154979155239_
                            _hd154978155242_
                            _tl154977155244_
                            _e154982155247_
                            _hd154981155250_
                            _tl154980155252_
                            _e154985155255_
                            _hd154984155258_
                            _tl154983155260_
                            _e154988155263_
                            _hd154987155266_
                            _tl154986155268_
                            _e154991155271_
                            _hd154990155274_
                            _tl154989155276_
                            _e154994155279_
                            _hd154993155282_
                            _tl154992155284_
                            _e154997155287_
                            _hd154996155290_
                            _tl154995155292_
                            _e155000155295_
                            _hd154999155298_
                            _tl154998155300_
                            _e155003155303_
                            _hd155002155306_
                            _tl155001155308_
                            _e155006155311_
                            _hd155005155314_
                            _tl155004155316_
                            _e155009155319_
                            _hd155008155322_
                            _tl155007155324_
                            _e155012155327_
                            _hd155011155330_
                            _tl155010155332_
                            _e155015155335_
                            _hd155014155338_
                            _tl155013155340_
                            _e155018155343_
                            _hd155017155346_
                            _tl155016155348_
                            _e155021155351_
                            _hd155020155354_
                            _tl155019155356_)
                     (let ((_L155359_ _hd155020155354_)
                           (_L155360_ _hd155011155330_)
                           (_L155361_ _hd155002155306_)
                           (_L155362_ _hd154993155282_)
                           (_L155363_ _hd154984155258_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L155363_
                              'bind-method!))
                           (___kont155898155899_
                            _L155359_
                            _L155360_
                            _L155361_
                            _L155362_
                            _L155363_)
                           (___kont155902155903_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx155896155897_))
                  (let ((_e154976155231_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx155896155897_))))
                    (let ((_tl154974155236_
                           (let ()
                             (declare (not safe))
                             (##cdr _e154976155231_)))
                          (_hd154975155234_
                           (let ()
                             (declare (not safe))
                             (##car _e154976155231_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl154974155236_))
                          (let ((_e154979155239_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl154974155236_))))
                            (let ((_tl154977155244_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e154979155239_)))
                                  (_hd154978155242_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e154979155239_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd154978155242_))
                                  (let ((_e154982155247_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd154978155242_))))
                                    (let ((_tl154980155252_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e154982155247_)))
                                          (_hd154981155250_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e154982155247_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd154981155250_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd154981155250_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl154980155252_))
                                                  (let ((_e154985155255_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl154980155252_))))
                                                    (let ((_tl154983155260_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e154985155255_)))
                                                          (_hd154984155258_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e154985155255_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl154983155260_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl154977155244_))
                      (let ((_e154988155263_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl154977155244_))))
                        (let ((_tl154986155268_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e154988155263_)))
                              (_hd154987155266_
                               (let ()
                                 (declare (not safe))
                                 (##car _e154988155263_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd154987155266_))
                              (let ((_e154991155271_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd154987155266_))))
                                (let ((_tl154989155276_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e154991155271_)))
                                      (_hd154990155274_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e154991155271_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd154990155274_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd154990155274_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl154989155276_))
                                              (let ((_e154994155279_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl154989155276_))))
                                                (let ((_tl154992155284_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e154994155279_)))
                                                      (_hd154993155282_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e154994155279_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl154992155284_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl154986155268_))
                                                          (let ((_e154997155287_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl154986155268_))))
                    (let ((_tl154995155292_
                           (let ()
                             (declare (not safe))
                             (##cdr _e154997155287_)))
                          (_hd154996155290_
                           (let ()
                             (declare (not safe))
                             (##car _e154997155287_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd154996155290_))
                          (let ((_e155000155295_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd154996155290_))))
                            (let ((_tl154998155300_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e155000155295_)))
                                  (_hd154999155298_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e155000155295_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd154999155298_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd154999155298_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl154998155300_))
                                          (let ((_e155003155303_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl154998155300_))))
                                            (let ((_tl155001155308_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e155003155303_)))
                                                  (_hd155002155306_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e155003155303_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl155001155308_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl154995155292_))
                                                      (let ((_e155006155311_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl154995155292_))))
                (let ((_tl155004155316_
                       (let () (declare (not safe)) (##cdr _e155006155311_)))
                      (_hd155005155314_
                       (let () (declare (not safe)) (##car _e155006155311_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd155005155314_))
                      (let ((_e155009155319_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd155005155314_))))
                        (let ((_tl155007155324_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e155009155319_)))
                              (_hd155008155322_
                               (let ()
                                 (declare (not safe))
                                 (##car _e155009155319_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd155008155322_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd155008155322_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl155007155324_))
                                      (let ((_e155012155327_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl155007155324_))))
                                        (let ((_tl155010155332_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e155012155327_)))
                                              (_hd155011155330_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e155012155327_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl155010155332_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl155004155316_))
                                                  (let ((_e155015155335_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl155004155316_))))
                                                    (let ((_tl155013155340_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e155015155335_)))
                                                          (_hd155014155338_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e155015155335_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd155014155338_))
                                                          (let ((_e155018155343_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd155014155338_))))
                    (let ((_tl155016155348_
                           (let ()
                             (declare (not safe))
                             (##cdr _e155018155343_)))
                          (_hd155017155346_
                           (let ()
                             (declare (not safe))
                             (##car _e155018155343_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd155017155346_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd155017155346_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl155016155348_))
                                  (let ((_e155021155351_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl155016155348_))))
                                    (let ((_tl155019155356_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e155021155351_)))
                                          (_hd155020155354_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e155021155351_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl155019155356_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl155013155340_))
                                              (___match156031156032_
                                               _e154976155231_
                                               _hd154975155234_
                                               _tl154974155236_
                                               _e154979155239_
                                               _hd154978155242_
                                               _tl154977155244_
                                               _e154982155247_
                                               _hd154981155250_
                                               _tl154980155252_
                                               _e154985155255_
                                               _hd154984155258_
                                               _tl154983155260_
                                               _e154988155263_
                                               _hd154987155266_
                                               _tl154986155268_
                                               _e154991155271_
                                               _hd154990155274_
                                               _tl154989155276_
                                               _e154994155279_
                                               _hd154993155282_
                                               _tl154992155284_
                                               _e154997155287_
                                               _hd154996155290_
                                               _tl154995155292_
                                               _e155000155295_
                                               _hd154999155298_
                                               _tl154998155300_
                                               _e155003155303_
                                               _hd155002155306_
                                               _tl155001155308_
                                               _e155006155311_
                                               _hd155005155314_
                                               _tl155004155316_
                                               _e155009155319_
                                               _hd155008155322_
                                               _tl155007155324_
                                               _e155012155327_
                                               _hd155011155330_
                                               _tl155010155332_
                                               _e155015155335_
                                               _hd155014155338_
                                               _tl155013155340_
                                               _e155018155343_
                                               _hd155017155346_
                                               _tl155016155348_
                                               _e155021155351_
                                               _hd155020155354_
                                               _tl155019155356_)
                                              (___kont155902155903_))
                                          (___kont155902155903_))))
                                  (___kont155902155903_))
                              (___kont155902155903_))
                          (___kont155902155903_))))
                  (___kont155902155903_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl155004155316_))
                                                      (if (let ((__tmp156192
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp156192 'bind-method!))
                  (let ((_L155185_ _hd155011155330_)
                        (_L155186_ _hd155002155306_)
                        (_L155187_ _hd154993155282_)
                        (_L155188_ _hd154984155258_))
                    (___kont155900155901_
                     _L155185_
                     _L155186_
                     _L155187_
                     _L155188_))
                  (___kont155902155903_))
              (___kont155902155903_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont155902155903_))))
                                      (___kont155902155903_))
                                  (___kont155902155903_))
                              (___kont155902155903_))))
                      (___kont155902155903_))))
              (___kont155902155903_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont155902155903_))))
                                          (___kont155902155903_))
                                      (___kont155902155903_))
                                  (___kont155902155903_))))
                          (___kont155902155903_))))
                  (___kont155902155903_))
              (___kont155902155903_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont155902155903_))
                                          (___kont155902155903_))
                                      (___kont155902155903_))))
                              (___kont155902155903_))))
                      (___kont155902155903_))
                  (___kont155902155903_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont155902155903_))
                                              (___kont155902155903_))
                                          (___kont155902155903_))))
                                  (___kont155902155903_))))
                          (___kont155902155903_))))
                  (___kont155902155903_)))))))
    (define gxc#!alias::typedecl
      (lambda (_self154939_)
        (let* ((_self154940154946_ _self154939_)
               (_E154942154950_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154940154946_))))
               (_K154943154955_
                (lambda (_alias-id154953_)
                  (let ((__tmp156193
                         (let ()
                           (declare (not safe))
                           (cons _alias-id154953_ '()))))
                    (declare (not safe))
                    (cons '@alias __tmp156193)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self154940154946_ 'gxc#!alias::t))
              (let* ((_e154944154958_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154940154946_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_alias-id154961_ _e154944154958_))
                (declare (not safe))
                (_K154943154955_ _alias-id154961_))
              (let () (declare (not safe)) (_E154942154950_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_self154730_)
        (let* ((_self154731154746_ _self154730_)
               (_E154733154750_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154731154746_))))
               (_K154734154764_
                (lambda (_methods154753_
                         _metaclass154754_
                         _final?154755_
                         _struct?154756_
                         _constructor154757_
                         _fields154758_
                         _slots154759_
                         _precendence-list154760_
                         _super154761_
                         _id154762_)
                  (let ((__tmp156194
                         (let ((__tmp156195
                                (let ((__tmp156196
                                       (let ((__tmp156197
                                              (let ((__tmp156198
                                                     (let ((__tmp156199
                                                            (let ((__tmp156200
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp156201
                                  (let ((__tmp156202
                                         (let ((__tmp156203
                                                (let ((__tmp156204
                                                       (if _methods154753_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (hash->list
                                                              _methods154753_))
                                                           '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp156204 '()))))
                                           (declare (not safe))
                                           (cons _metaclass154754_
                                                 __tmp156203))))
                                    (declare (not safe))
                                    (cons _final?154755_ __tmp156202))))
                             (declare (not safe))
                             (cons _struct?154756_ __tmp156201))))
                      (declare (not safe))
                      (cons _constructor154757_ __tmp156200))))
               (declare (not safe))
               (cons _fields154758_ __tmp156199))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _slots154759_
                                                      __tmp156198))))
                                         (declare (not safe))
                                         (cons _precendence-list154760_
                                               __tmp156197))))
                                  (declare (not safe))
                                  (cons _super154761_ __tmp156196))))
                           (declare (not safe))
                           (cons _id154762_ __tmp156195))))
                    (declare (not safe))
                    (cons '@class __tmp156194)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self154731154746_ 'gxc#!class::t))
              (let* ((_e154735154767_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154731154746_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_id154770_ _e154735154767_)
                     (_e154736154772_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154731154746_
                         '2
                         gxc#!class::t
                         '#f)))
                     (_super154775_ _e154736154772_)
                     (_e154737154777_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154731154746_
                         '3
                         gxc#!class::t
                         '#f)))
                     (_precendence-list154780_ _e154737154777_)
                     (_e154738154782_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154731154746_
                         '4
                         gxc#!class::t
                         '#f)))
                     (_slots154785_ _e154738154782_)
                     (_e154739154787_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154731154746_
                         '5
                         gxc#!class::t
                         '#f)))
                     (_fields154790_ _e154739154787_)
                     (_e154740154792_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154731154746_
                         '6
                         gxc#!class::t
                         '#f)))
                     (_constructor154795_ _e154740154792_)
                     (_e154741154797_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154731154746_
                         '7
                         gxc#!class::t
                         '#f)))
                     (_struct?154800_ _e154741154797_)
                     (_e154742154802_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154731154746_
                         '8
                         gxc#!class::t
                         '#f)))
                     (_final?154805_ _e154742154802_)
                     (_e154743154807_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154731154746_
                         '9
                         gxc#!class::t
                         '#f)))
                     (_metaclass154810_ _e154743154807_)
                     (_e154744154812_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154731154746_
                         '10
                         gxc#!class::t
                         '#f)))
                     (_methods154815_ _e154744154812_))
                (declare (not safe))
                (_K154734154764_
                 _methods154815_
                 _metaclass154810_
                 _final?154805_
                 _struct?154800_
                 _constructor154795_
                 _fields154790_
                 _slots154785_
                 _precendence-list154780_
                 _super154775_
                 _id154770_))
              (let () (declare (not safe)) (_E154733154750_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_self154584_)
        (let* ((_self154585154591_ _self154584_)
               (_E154587154595_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154585154591_))))
               (_K154588154600_
                (lambda (_klass-id154598_)
                  (let ((__tmp156205
                         (let ()
                           (declare (not safe))
                           (cons _klass-id154598_ '()))))
                    (declare (not safe))
                    (cons '@predicate __tmp156205)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self154585154591_
                 'gxc#!predicate::t))
              (let* ((_e154589154603_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154585154591_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id154606_ _e154589154603_))
                (declare (not safe))
                (_K154588154600_ _klass-id154606_))
              (let () (declare (not safe)) (_E154587154595_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_self154438_)
        (let* ((_self154439154445_ _self154438_)
               (_E154441154449_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154439154445_))))
               (_K154442154454_
                (lambda (_klass-id154452_)
                  (let ((__tmp156206
                         (let ()
                           (declare (not safe))
                           (cons _klass-id154452_ '()))))
                    (declare (not safe))
                    (cons '@constructor __tmp156206)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self154439154445_
                 'gxc#!constructor::t))
              (let* ((_e154443154457_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154439154445_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id154460_ _e154443154457_))
                (declare (not safe))
                (_K154442154454_ _klass-id154460_))
              (let () (declare (not safe)) (_E154441154449_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_self154278_)
        (let* ((_self154279154287_ _self154278_)
               (_E154281154291_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154279154287_))))
               (_K154282154298_
                (lambda (_checked?154294_ _slot154295_ _klass-id154296_)
                  (let ((__tmp156207
                         (let ((__tmp156208
                                (let ((__tmp156209
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?154294_ '()))))
                                  (declare (not safe))
                                  (cons _slot154295_ __tmp156209))))
                           (declare (not safe))
                           (cons _klass-id154296_ __tmp156208))))
                    (declare (not safe))
                    (cons '@accessor __tmp156207)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self154279154287_
                 'gxc#!accessor::t))
              (let* ((_e154283154301_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154279154287_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id154304_ _e154283154301_)
                     (_e154284154306_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154279154287_
                         '2
                         gxc#!accessor::t
                         '#f)))
                     (_slot154309_ _e154284154306_)
                     (_e154285154311_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154279154287_
                         '3
                         gxc#!accessor::t
                         '#f)))
                     (_checked?154314_ _e154285154311_))
                (declare (not safe))
                (_K154282154298_
                 _checked?154314_
                 _slot154309_
                 _klass-id154304_))
              (let () (declare (not safe)) (_E154281154291_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_self154118_)
        (let* ((_self154119154127_ _self154118_)
               (_E154121154131_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154119154127_))))
               (_K154122154138_
                (lambda (_checked?154134_ _slot154135_ _klass-id154136_)
                  (let ((__tmp156210
                         (let ((__tmp156211
                                (let ((__tmp156212
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?154134_ '()))))
                                  (declare (not safe))
                                  (cons _slot154135_ __tmp156212))))
                           (declare (not safe))
                           (cons _klass-id154136_ __tmp156211))))
                    (declare (not safe))
                    (cons '@mutator __tmp156210)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self154119154127_ 'gxc#!mutator::t))
              (let* ((_e154123154141_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154119154127_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id154144_ _e154123154141_)
                     (_e154124154146_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154119154127_
                         '2
                         gxc#!mutator::t
                         '#f)))
                     (_slot154149_ _e154124154146_)
                     (_e154125154151_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154119154127_
                         '3
                         gxc#!mutator::t
                         '#f)))
                     (_checked?154154_ _e154125154151_))
                (declare (not safe))
                (_K154122154138_
                 _checked?154154_
                 _slot154149_
                 _klass-id154144_))
              (let () (declare (not safe)) (_E154121154131_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!lambda::typedecl
      (lambda (_self153944_)
        (let* ((_self153945153955_ _self153944_)
               (_E153947153959_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self153945153955_))))
               (_K153948153970_
                (lambda (_typedecl153962_
                         _inline153963_
                         _dispatch153964_
                         _arity153965_)
                  (if _inline153963_
                      (let ((_$e153967_ _typedecl153962_))
                        (if _$e153967_
                            _$e153967_
                            (let ()
                              (declare (not safe))
                              (error '"Cannot generate typedecl for inline rules"))))
                      (let ((__tmp156213
                             (let ((__tmp156214
                                    (let ()
                                      (declare (not safe))
                                      (cons _dispatch153964_ '()))))
                               (declare (not safe))
                               (cons _arity153965_ __tmp156214))))
                        (declare (not safe))
                        (cons '@lambda __tmp156213))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self153945153955_ 'gxc#!lambda::t))
              (let* ((_e153949153973_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153945153955_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e153950153976_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153945153955_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity153979_ _e153950153976_)
                     (_e153951153981_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153945153955_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch153984_ _e153951153981_)
                     (_e153952153986_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153945153955_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline153989_ _e153952153986_)
                     (_e153953153991_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153945153955_
                         '5
                         gxc#!lambda::t
                         '#f)))
                     (_typedecl153994_ _e153953153991_))
                (declare (not safe))
                (_K153948153970_
                 _typedecl153994_
                 _inline153989_
                 _dispatch153984_
                 _arity153979_))
              (let () (declare (not safe)) (_E153947153959_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_self153755_)
        (letrec ((_clause-e153757_
                  (lambda (_clause153787_)
                    (let* ((_clause153788153796_ _clause153787_)
                           (_E153790153800_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _clause153788153796_))))
                           (_K153791153806_
                            (lambda (_dispatch153803_ _arity153804_)
                              (let ((__tmp156215
                                     (let ()
                                       (declare (not safe))
                                       (cons _dispatch153803_ '()))))
                                (declare (not safe))
                                (cons _arity153804_ __tmp156215)))))
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _clause153788153796_
                             'gxc#!lambda::t))
                          (let* ((_e153792153809_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause153788153796_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                                 (_e153793153812_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause153788153796_
                                     '2
                                     gxc#!lambda::t
                                     '#f)))
                                 (_arity153815_ _e153793153812_)
                                 (_e153794153817_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause153788153796_
                                     '3
                                     gxc#!lambda::t
                                     '#f)))
                                 (_dispatch153820_ _e153794153817_))
                            (declare (not safe))
                            (_K153791153806_ _dispatch153820_ _arity153815_))
                          (let () (declare (not safe)) (_E153790153800_)))))))
          (let* ((_self153758153765_ _self153755_)
                 (_E153760153769_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching" _self153758153765_))))
                 (_K153761153776_
                  (lambda (_clauses153772_)
                    (let ((_clauses153774_
                           (map _clause-e153757_ _clauses153772_)))
                      (declare (not safe))
                      (cons '@case-lambda _clauses153774_)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of?
                   _self153758153765_
                   'gxc#!case-lambda::t))
                (let* ((_e153762153779_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self153758153765_
                           '1
                           gxc#!type::t
                           '#f)))
                       (_e153763153782_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self153758153765_
                           '2
                           gxc#!case-lambda::t
                           '#f)))
                       (_clauses153785_ _e153763153782_))
                  (declare (not safe))
                  (_K153761153776_ _clauses153785_))
                (let () (declare (not safe)) (_E153760153769_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_self153598_)
        (let* ((_self153599153607_ _self153598_)
               (_E153601153611_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self153599153607_))))
               (_K153602153617_
                (lambda (_dispatch153614_ _table153615_)
                  (let ((__tmp156216
                         (let ((__tmp156217
                                (let ()
                                  (declare (not safe))
                                  (cons _dispatch153614_ '()))))
                           (declare (not safe))
                           (cons _table153615_ __tmp156217))))
                    (declare (not safe))
                    (cons '@kw-lambda __tmp156216)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self153599153607_
                 'gxc#!kw-lambda::t))
              (let* ((_e153603153620_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153599153607_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e153604153623_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153599153607_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table153626_ _e153604153623_)
                     (_e153605153628_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153599153607_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch153631_ _e153605153628_))
                (declare (not safe))
                (_K153602153617_ _dispatch153631_ _table153626_))
              (let () (declare (not safe)) (_E153601153611_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda::t
       'typedecl
       gxc#!kw-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_self153441_)
        (let* ((_self153442153450_ _self153441_)
               (_E153444153454_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self153442153450_))))
               (_K153445153460_
                (lambda (_main153457_ _keys153458_)
                  (let ((__tmp156218
                         (let ((__tmp156219
                                (let ()
                                  (declare (not safe))
                                  (cons _main153457_ '()))))
                           (declare (not safe))
                           (cons _keys153458_ __tmp156219))))
                    (declare (not safe))
                    (cons '@kw-lambda-dispatch __tmp156218)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self153442153450_
                 'gxc#!kw-lambda-primary::t))
              (let* ((_e153446153463_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153442153450_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e153447153466_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153442153450_
                         '2
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_keys153469_ _e153447153466_)
                     (_e153448153471_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153442153450_
                         '3
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_main153474_ _e153448153471_))
                (declare (not safe))
                (_K153445153460_ _main153474_ _keys153469_))
              (let () (declare (not safe)) (_E153444153454_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))))
