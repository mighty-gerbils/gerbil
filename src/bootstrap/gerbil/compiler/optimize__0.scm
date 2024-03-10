(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1710067696)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (gxc#current-compile-optimizer-info)
            '#!void
            (gxc#current-compile-optimizer-info
             (let ((__obj156135
                    (let ()
                      (declare (not safe))
                      (##structure gxc#optimizer-info::t '#f '#f '#f))))
               (gxc#optimizer-info:::init! __obj156135)
               __obj156135)))))
    (define gxc#optimize!
      (lambda (_ctx155828_)
        (let ((__tmp156139
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _ctx155828_))
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-builtin-ssxi _ctx155828_))
                 (let ((__tmp156141
                        (##structure-ref
                         (gxc#current-compile-optimizer-info)
                         '2
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp156140
                        (##structure-ref
                         _ctx155828_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp156141 __tmp156140 '#t))
                 (let ((_code155831_
                        (let ((__tmp156142
                               (##structure-ref
                                _ctx155828_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp156142))))
                   (##structure-set!
                    _ctx155828_
                    _code155831_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp156138 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp156137 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters
           __tmp156139
           gxc#current-compile-mutators
           __tmp156138
           gxc#current-compile-local-type
           __tmp156137))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_ctx155817_)
        (letrec ((_load-it!155819_
                  (lambda (_id155826_)
                    (if (let ((__tmp156144
                               (##structure-ref
                                (gxc#current-compile-optimizer-info)
                                '2
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp156144 _id155826_))
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-import-ssxi-by-id _id155826_))
                          (let ((__tmp156143
                                 (##structure-ref
                                  (gxc#current-compile-optimizer-info)
                                  '2
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp156143 _id155826_ '#t)))))))
          (let* ((_modid155821_
                  (##structure-ref _ctx155817_ '1 gx#expander-context::t '#f))
                 (_modid-str155823_ (symbol->string _modid155821_)))
            (if (let ()
                  (declare (not safe))
                  (string-prefix? '"gerbil/core" _modid-str155823_))
                (let ()
                  (declare (not safe))
                  (_load-it!155819_ 'gerbil/builtin))
                (for-each
                 _load-it!155819_
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
                   gerbil/builtin)))))))
    (define gxc#optimizer-load-ssxi-deps
      (lambda (_ctx155762_)
        (letrec* ((_deps155764_
                   (let* ((_imports155808_
                           (##structure-ref
                            _ctx155762_
                            '8
                            gx#module-context::t
                            '#f))
                          (_$e155810_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _ctx155762_))))
                     (if _$e155810_
                         ((lambda (_g155812155814_)
                            (let ()
                              (declare (not safe))
                              (cons _g155812155814_ _imports155808_)))
                          _$e155810_)
                         _imports155808_))))
          (let _lp155766_ ((_rest155768_ _deps155764_))
            (let* ((_rest155769155777_ _rest155768_)
                   (_else155771155785_ (lambda () '#!void))
                   (_K155773155796_
                    (lambda (_rest155788_ _hd155789_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _hd155789_
                             'gx#module-context::t))
                          (begin
                            (if (let ((__tmp156158
                                       (##structure-ref
                                        (gxc#current-compile-optimizer-info)
                                        '2
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp156157
                                       (##structure-ref
                                        _hd155789_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (hash-get __tmp156158 __tmp156157))
                                '#!void
                                (begin
                                  (let ((_$e155791_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _hd155789_))))
                                    (if _$e155791_
                                        ((lambda (_pre155794_)
                                           (let ((__tmp156155
                                                  (let ((__tmp156156
                                                         (##structure-ref
                                                          _hd155789_
                                                          '8
                                                          gx#module-context::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (cons _pre155794_
                                                          __tmp156156))))
                                             (declare (not safe))
                                             (_lp155766_ __tmp156155)))
                                         _$e155791_)
                                        (let ((__tmp156154
                                               (##structure-ref
                                                _hd155789_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                          (declare (not safe))
                                          (_lp155766_ __tmp156154))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _hd155789_))))
                            (let ()
                              (declare (not safe))
                              (_lp155766_ _rest155788_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _hd155789_
                                 'gx#prelude-context::t))
                              (begin
                                (if (let ((__tmp156153
                                           (##structure-ref
                                            (gxc#current-compile-optimizer-info)
                                            '2
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp156152
                                           (##structure-ref
                                            _hd155789_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (hash-get __tmp156153 __tmp156152))
                                    '#!void
                                    (begin
                                      (let ((__tmp156151
                                             (##structure-ref
                                              _hd155789_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_lp155766_ __tmp156151))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi _hd155789_))))
                                (let ()
                                  (declare (not safe))
                                  (_lp155766_ _rest155788_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _hd155789_
                                     'gx#module-import::t))
                                  (let ((__tmp156149
                                         (let ((__tmp156150
                                                (##direct-structure-ref
                                                 _hd155789_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp156150 _rest155788_))))
                                    (declare (not safe))
                                    (_lp155766_ __tmp156149))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _hd155789_
                                         'gx#module-export::t))
                                      (let ((__tmp156147
                                             (let ((__tmp156148
                                                    (##direct-structure-ref
                                                     _hd155789_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp156148
                                                     _rest155788_))))
                                        (declare (not safe))
                                        (_lp155766_ __tmp156147))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _hd155789_
                                             'gx#import-set::t))
                                          (let ((__tmp156145
                                                 (let ((__tmp156146
                                                        (##direct-structure-ref
                                                         _hd155789_
                                                         '1
                                                         gx#import-set::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp156146
                                                         _rest155788_))))
                                            (declare (not safe))
                                            (_lp155766_ __tmp156145))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _hd155789_))))))))))
              (if (let () (declare (not safe)) (##pair? _rest155769155777_))
                  (let ((_hd155774155799_
                         (let ()
                           (declare (not safe))
                           (##car _rest155769155777_)))
                        (_tl155775155801_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest155769155777_))))
                    (let* ((_hd155804_ _hd155774155799_)
                           (_rest155806_ _tl155775155801_))
                      (declare (not safe))
                      (_K155773155796_ _rest155806_ _hd155804_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_ctx155742_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _ctx155742_
                    'gx#module-context::t))
                 (let ((__tmp156159
                        (##structure-ref
                         _ctx155742_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp156159)))
            '#!void
            (let* ((_ht155744_
                    (##structure-ref
                     (gxc#current-compile-optimizer-info)
                     '2
                     gxc#optimizer-info::t
                     '#f))
                   (_id155746_
                    (##structure-ref
                     _ctx155742_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_mod155748_
                    (let ()
                      (declare (not safe))
                      (hash-get _ht155744_ _id155746_))))
              (let ((_$e155751_ _mod155748_))
                (if _$e155751_
                    _$e155751_
                    (let* ((_mod155754_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-import-ssxi _ctx155742_)))
                           (_val155759_
                            (let ((_$e155756_ _mod155754_))
                              (if _$e155756_ _$e155756_ '#!void))))
                      (let ()
                        (declare (not safe))
                        (hash-put! _ht155744_ _id155746_ _val155759_))
                      _val155759_)))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_ctx155740_)
        (if (##structure-ref _ctx155740_ '1 gx#expander-context::t '#f)
            (let ((__tmp156160
                   (##structure-ref
                    _ctx155740_
                    '1
                    gx#expander-context::t
                    '#f)))
              (declare (not safe))
              (gxc#optimizer-import-ssxi-by-id __tmp156160))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_id155717_)
        (letrec ((_catch-e155719_
                  (lambda (_exn155738_)
                    (if (gxc#current-compile-verbose)
                        (begin
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"Failed to load ssxi module for "
                             _id155717_))
                          (let ()
                            (declare (not safe))
                            (display-exception _exn155738_)))
                        '#!void)
                    '#f))
                 (_import-e155720_
                  (lambda ()
                    (let* ((_str-id155723_
                            (string-append
                             (let ()
                               (declare (not safe))
                               (gxc#module-id->path-string _id155717_))
                             '".ssxi"))
                           (_artefact-path155731_
                            (let ((_odir155724155726_
                                   (gxc#current-compile-output-dir)))
                              (if _odir155724155726_
                                  (let ((_odir155729_ _odir155724155726_))
                                    (path-expand
                                     (string-append _str-id155723_ '".ss")
                                     _odir155729_))
                                  '#f)))
                           (_library-path155733_
                            (string->symbol
                             (string-append '":" _str-id155723_ '".ss")))
                           (_ssxi-path155735_
                            (if (and _artefact-path155731_
                                     (file-exists? _artefact-path155731_))
                                _artefact-path155731_
                                _library-path155733_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _ssxi-path155735_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _ssxi-path155735_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (with-catch _catch-e155719_ _import-e155720_)))))
    (define gxc#optimize-source
      (lambda (_stx155708_)
        (let () (declare (not safe)) (gxc#apply-collect-mutators _stx155708_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _stx155708_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _stx155708_))
        (let* ((_stx155710_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _stx155708_)))
               (_stx155712_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _stx155710_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _stx155712_))
          (let ((_stx155715_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _stx155712_))))
            (declare (not safe))
            (gxc#apply-optimize-call _stx155715_)))))
    (define gxc#&generate-ssxi
      (let ((__tmp156161
             (lambda ()
               (let ((_tbl155705_
                      (let () (declare (not safe)) (make-hash-table-eq))))
                 (let ((__tmp156162 (force gxc#&generate-runtime-empty)))
                   (declare (not safe))
                   (hash-merge! _tbl155705_ __tmp156162))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl155705_
                    '%#begin
                    gxc#generate-runtime-begin%))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl155705_
                    '%#begin-syntax
                    gxc#generate-ssxi-begin-syntax%))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl155705_ '%#module gxc#generate-ssxi-module%))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl155705_
                    '%#define-values
                    gxc#generate-ssxi-define-values%))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl155705_ '%#call gxc#generate-ssxi-call%))
                 _tbl155705_))))
        (declare (not safe))
        (make-promise __tmp156161)))
    (define gxc#apply-generate-ssxi
      (lambda (_stx155688_ . _args155690_)
        (let ((__tmp156164
               (lambda ()
                 (declare (not safe))
                 (if (null? _args155690_)
                     (gxc#compile-e__0 _stx155688_)
                     (let ((_arg1155695_ (car _args155690_))
                           (_rest155697_ (cdr _args155690_)))
                       (if (null? _rest155697_)
                           (gxc#compile-e__1 _stx155688_ _arg1155695_)
                           (let ((_arg2155700_ (car _rest155697_))
                                 (_rest155702_ (cdr _rest155697_)))
                             (if (null? _rest155702_)
                                 (gxc#compile-e__2
                                  _stx155688_
                                  _arg1155695_
                                  _arg2155700_)
                                 (apply gxc#compile-e
                                        _stx155688_
                                        _arg1155695_
                                        _arg2155700_
                                        _rest155702_))))))))
              (__tmp156163 (force gxc#&generate-ssxi)))
          (declare (not safe))
          (call-with-parameters
           __tmp156164
           gxc#current-compile-methods
           __tmp156163))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_stx155649_)
        (let* ((_g155651155661_
                (lambda (_g155652155658_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g155652155658_))))
               (_g155650155685_
                (lambda (_g155652155664_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g155652155664_))
                      (let ((_e155656155666_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g155652155664_))))
                        (let ((_hd155655155669_
                               (let ()
                                 (declare (not safe))
                                 (##car _e155656155666_)))
                              (_tl155654155671_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e155656155666_))))
                          ((lambda (_L155674_)
                             (let ((__tmp156167
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _stx155649_))))
                                   (__tmp156165
                                    (let ((__tmp156166
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp156166 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp156167
                                gx#current-expander-phi
                                __tmp156165)))
                           _tl155654155671_)))
                      (let ()
                        (declare (not safe))
                        (_g155651155661_ _g155652155664_))))))
          (declare (not safe))
          (_g155650155685_ _stx155649_))))
    (define gxc#generate-ssxi-module%
      (lambda (_stx155589_)
        (let* ((_g155591155605_
                (lambda (_g155592155602_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g155592155602_))))
               (_g155590155646_
                (lambda (_g155592155608_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g155592155608_))
                      (let ((_e155597155610_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g155592155608_))))
                        (let ((_hd155596155613_
                               (let ()
                                 (declare (not safe))
                                 (##car _e155597155610_)))
                              (_tl155595155615_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e155597155610_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl155595155615_))
                              (let ((_e155600155618_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl155595155615_))))
                                (let ((_hd155599155621_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e155600155618_)))
                                      (_tl155598155623_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e155600155618_))))
                                  ((lambda (_L155626_ _L155627_)
                                     (let* ((_ctx155640_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L155627_)))
                                            (_code155642_
                                             (##structure-ref
                                              _ctx155640_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp156168
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _code155642_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp156168
                                          gx#current-expander-context
                                          _ctx155640_))))
                                   _tl155598155623_
                                   _hd155599155621_)))
                              (let ()
                                (declare (not safe))
                                (_g155591155605_ _g155592155608_)))))
                      (let ()
                        (declare (not safe))
                        (_g155591155605_ _g155592155608_))))))
          (declare (not safe))
          (_g155590155646_ _stx155589_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_stx155399_)
        (letrec ((_generate-e155401_
                  (lambda (_id155578_)
                    (let* ((_sym155580_
                            (if (let ((__tmp156169
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp156169))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _id155578_))
                                '#f))
                           (_$e155582_
                            (if _sym155580_
                                (let ()
                                  (declare (not safe))
                                  (gxc#optimizer-lookup-type _sym155580_))
                                '#f)))
                      (if _$e155582_
                          ((lambda (_type155585_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"generate typedecl " _sym155580_))
                             (let* ((_typedecl155587_
                                     (let ((__method156136
                                            (let ()
                                              (declare (not safe))
                                              (method-ref
                                               _type155585_
                                               'typedecl))))
                                       (if __method156136
                                           (__method156136 _type155585_)
                                           (let ()
                                             (declare (not safe))
                                             (error '"Missing method"
                                                    _type155585_
                                                    'typedecl)))))
                                    (__tmp156170
                                     (let ((__tmp156171
                                            (let ()
                                              (declare (not safe))
                                              (cons _typedecl155587_ '()))))
                                       (declare (not safe))
                                       (cons _sym155580_ __tmp156171))))
                               (declare (not safe))
                               (cons 'declare-type __tmp156170)))
                           _$e155582_)
                          '(begin))))))
          (let* ((___stx155834155835_ _stx155399_)
                 (_g155404155442_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx155834155835_)))))
            (let ((___kont155836155837_
                   (lambda (_L155560_)
                     (let ()
                       (declare (not safe))
                       (_generate-e155401_ _L155560_))))
                  (___kont155838155839_
                   (lambda (_L155495_)
                     (let ((_types155521_
                            (map _generate-e155401_
                                 (let ((__tmp156172
                                        (lambda (_g155513155516_
                                                 _g155514155518_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g155513155516_
                                                  _g155514155518_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp156172 '() _L155495_)))))
                       (declare (not safe))
                       (cons 'begin _types155521_)))))
              (let ((___match155889155890_
                     (lambda (_e155422155447_
                              _hd155421155450_
                              _tl155420155452_
                              _e155425155455_
                              _hd155424155458_
                              _tl155423155460_
                              ___splice155840155841_
                              _target155426155463_
                              _tl155428155465_)
                       (letrec ((_loop155429155468_
                                 (lambda (_hd155427155471_ _id155433155473_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd155427155471_))
                                       (let ((_e155430155476_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd155427155471_))))
                                         (let ((_lp-tl155432155481_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e155430155476_)))
                                               (_lp-hd155431155479_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e155430155476_))))
                                           (let ((__tmp156173
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd155431155479_
                                                          _id155433155473_))))
                                             (declare (not safe))
                                             (_loop155429155468_
                                              _lp-tl155432155481_
                                              __tmp156173))))
                                       (let ((_id155434155484_
                                              (reverse _id155433155473_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl155423155460_))
                                             (let ((_e155437155487_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl155423155460_))))
                                               (let ((_tl155435155492_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e155437155487_)))
                                                     (_hd155436155490_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e155437155487_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl155435155492_))
                                                     (___kont155838155839_
                                                      _id155434155484_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g155404155442_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g155404155442_))))))))
                         (let ()
                           (declare (not safe))
                           (_loop155429155468_ _target155426155463_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx155834155835_))
                    (let ((_e155409155528_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx155834155835_))))
                      (let ((_tl155407155533_
                             (let ()
                               (declare (not safe))
                               (##cdr _e155409155528_)))
                            (_hd155408155531_
                             (let ()
                               (declare (not safe))
                               (##car _e155409155528_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl155407155533_))
                            (let ((_e155412155536_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl155407155533_))))
                              (let ((_tl155410155541_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e155412155536_)))
                                    (_hd155411155539_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e155412155536_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd155411155539_))
                                    (let ((_e155415155544_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd155411155539_))))
                                      (let ((_tl155413155549_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e155415155544_)))
                                            (_hd155414155547_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e155415155544_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl155413155549_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl155410155541_))
                                                (let ((_e155418155552_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl155410155541_))))
                                                  (let ((_tl155416155557_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e155418155552_)))
                                                        (_hd155417155555_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e155418155552_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl155416155557_))
                                                        (___kont155836155837_
                                                         _hd155414155547_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _hd155411155539_))
                                                            (let ((___splice155840155841_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _hd155411155539_ '0))))
                      (let ((_tl155428155465_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice155840155841_ '1)))
                            (_target155426155463_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice155840155841_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl155428155465_))
                            (___match155889155890_
                             _e155409155528_
                             _hd155408155531_
                             _tl155407155533_
                             _e155412155536_
                             _hd155411155539_
                             _tl155410155541_
                             ___splice155840155841_
                             _target155426155463_
                             _tl155428155465_)
                            (let () (declare (not safe)) (_g155404155442_)))))
                    (let () (declare (not safe)) (_g155404155442_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _hd155411155539_))
                                                    (let ((___splice155840155841_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _hd155411155539_
                                                              '0))))
                                                      (let ((_tl155428155465_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice155840155841_ '1)))
                    (_target155426155463_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice155840155841_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl155428155465_))
                    (___match155889155890_
                     _e155409155528_
                     _hd155408155531_
                     _tl155407155533_
                     _e155412155536_
                     _hd155411155539_
                     _tl155410155541_
                     ___splice155840155841_
                     _target155426155463_
                     _tl155428155465_)
                    (let () (declare (not safe)) (_g155404155442_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g155404155442_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _hd155411155539_))
                                                (let ((___splice155840155841_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _hd155411155539_
                                                          '0))))
                                                  (let ((_tl155428155465_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice155840155841_
                                                            '1)))
                                                        (_target155426155463_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice155840155841_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl155428155465_))
                                                        (___match155889155890_
                                                         _e155409155528_
                                                         _hd155408155531_
                                                         _tl155407155533_
                                                         _e155412155536_
                                                         _hd155411155539_
                                                         _tl155410155541_
                                                         ___splice155840155841_
                                                         _target155426155463_
                                                         _tl155428155465_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g155404155442_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g155404155442_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd155411155539_))
                                        (let ((___splice155840155841_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd155411155539_
                                                  '0))))
                                          (let ((_tl155428155465_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice155840155841_
                                                    '1)))
                                                (_target155426155463_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice155840155841_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl155428155465_))
                                                (___match155889155890_
                                                 _e155409155528_
                                                 _hd155408155531_
                                                 _tl155407155533_
                                                 _e155412155536_
                                                 _hd155411155539_
                                                 _tl155410155541_
                                                 ___splice155840155841_
                                                 _target155426155463_
                                                 _tl155428155465_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g155404155442_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g155404155442_))))))
                            (let () (declare (not safe)) (_g155404155442_)))))
                    (let () (declare (not safe)) (_g155404155442_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_stx154953_)
        (let* ((___stx155892155893_ _stx154953_)
               (_g154957155059_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx155892155893_)))))
          (let ((___kont155894155895_
                 (lambda (_L155349_ _L155350_ _L155351_ _L155352_ _L155353_)
                   (let ((__tmp156174
                          (let ((__tmp156181
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L155352_)))
                                (__tmp156175
                                 (let ((__tmp156180
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L155351_)))
                                       (__tmp156176
                                        (let ((__tmp156179
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L155350_)))
                                              (__tmp156177
                                               (let ((__tmp156178
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L155349_))))
                                                 (declare (not safe))
                                                 (cons __tmp156178 '()))))
                                          (declare (not safe))
                                          (cons __tmp156179 __tmp156177))))
                                   (declare (not safe))
                                   (cons __tmp156180 __tmp156176))))
                            (declare (not safe))
                            (cons __tmp156181 __tmp156175))))
                     (declare (not safe))
                     (cons 'declare-method __tmp156174))))
                (___kont155896155897_
                 (lambda (_L155175_ _L155176_ _L155177_ _L155178_)
                   (let ((__tmp156182
                          (let ((__tmp156188
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L155177_)))
                                (__tmp156183
                                 (let ((__tmp156187
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L155176_)))
                                       (__tmp156184
                                        (let ((__tmp156186
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L155175_)))
                                              (__tmp156185
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '#f '()))))
                                          (declare (not safe))
                                          (cons __tmp156186 __tmp156185))))
                                   (declare (not safe))
                                   (cons __tmp156187 __tmp156184))))
                            (declare (not safe))
                            (cons __tmp156188 __tmp156183))))
                     (declare (not safe))
                     (cons 'declare-method __tmp156182))))
                (___kont155898155899_ (lambda () '(begin))))
            (let ((___match156027156028_
                   (lambda (_e154966155221_
                            _hd154965155224_
                            _tl154964155226_
                            _e154969155229_
                            _hd154968155232_
                            _tl154967155234_
                            _e154972155237_
                            _hd154971155240_
                            _tl154970155242_
                            _e154975155245_
                            _hd154974155248_
                            _tl154973155250_
                            _e154978155253_
                            _hd154977155256_
                            _tl154976155258_
                            _e154981155261_
                            _hd154980155264_
                            _tl154979155266_
                            _e154984155269_
                            _hd154983155272_
                            _tl154982155274_
                            _e154987155277_
                            _hd154986155280_
                            _tl154985155282_
                            _e154990155285_
                            _hd154989155288_
                            _tl154988155290_
                            _e154993155293_
                            _hd154992155296_
                            _tl154991155298_
                            _e154996155301_
                            _hd154995155304_
                            _tl154994155306_
                            _e154999155309_
                            _hd154998155312_
                            _tl154997155314_
                            _e155002155317_
                            _hd155001155320_
                            _tl155000155322_
                            _e155005155325_
                            _hd155004155328_
                            _tl155003155330_
                            _e155008155333_
                            _hd155007155336_
                            _tl155006155338_
                            _e155011155341_
                            _hd155010155344_
                            _tl155009155346_)
                     (let ((_L155349_ _hd155010155344_)
                           (_L155350_ _hd155001155320_)
                           (_L155351_ _hd154992155296_)
                           (_L155352_ _hd154983155272_)
                           (_L155353_ _hd154974155248_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L155353_
                              'bind-method!))
                           (___kont155894155895_
                            _L155349_
                            _L155350_
                            _L155351_
                            _L155352_
                            _L155353_)
                           (___kont155898155899_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx155892155893_))
                  (let ((_e154966155221_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx155892155893_))))
                    (let ((_tl154964155226_
                           (let ()
                             (declare (not safe))
                             (##cdr _e154966155221_)))
                          (_hd154965155224_
                           (let ()
                             (declare (not safe))
                             (##car _e154966155221_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl154964155226_))
                          (let ((_e154969155229_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl154964155226_))))
                            (let ((_tl154967155234_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e154969155229_)))
                                  (_hd154968155232_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e154969155229_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd154968155232_))
                                  (let ((_e154972155237_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd154968155232_))))
                                    (let ((_tl154970155242_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e154972155237_)))
                                          (_hd154971155240_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e154972155237_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd154971155240_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd154971155240_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl154970155242_))
                                                  (let ((_e154975155245_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl154970155242_))))
                                                    (let ((_tl154973155250_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e154975155245_)))
                                                          (_hd154974155248_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e154975155245_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl154973155250_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl154967155234_))
                      (let ((_e154978155253_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl154967155234_))))
                        (let ((_tl154976155258_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e154978155253_)))
                              (_hd154977155256_
                               (let ()
                                 (declare (not safe))
                                 (##car _e154978155253_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd154977155256_))
                              (let ((_e154981155261_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd154977155256_))))
                                (let ((_tl154979155266_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e154981155261_)))
                                      (_hd154980155264_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e154981155261_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd154980155264_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd154980155264_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl154979155266_))
                                              (let ((_e154984155269_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl154979155266_))))
                                                (let ((_tl154982155274_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e154984155269_)))
                                                      (_hd154983155272_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e154984155269_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl154982155274_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl154976155258_))
                                                          (let ((_e154987155277_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl154976155258_))))
                    (let ((_tl154985155282_
                           (let ()
                             (declare (not safe))
                             (##cdr _e154987155277_)))
                          (_hd154986155280_
                           (let ()
                             (declare (not safe))
                             (##car _e154987155277_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd154986155280_))
                          (let ((_e154990155285_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd154986155280_))))
                            (let ((_tl154988155290_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e154990155285_)))
                                  (_hd154989155288_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e154990155285_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd154989155288_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd154989155288_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl154988155290_))
                                          (let ((_e154993155293_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl154988155290_))))
                                            (let ((_tl154991155298_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e154993155293_)))
                                                  (_hd154992155296_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e154993155293_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl154991155298_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl154985155282_))
                                                      (let ((_e154996155301_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl154985155282_))))
                (let ((_tl154994155306_
                       (let () (declare (not safe)) (##cdr _e154996155301_)))
                      (_hd154995155304_
                       (let () (declare (not safe)) (##car _e154996155301_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd154995155304_))
                      (let ((_e154999155309_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd154995155304_))))
                        (let ((_tl154997155314_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e154999155309_)))
                              (_hd154998155312_
                               (let ()
                                 (declare (not safe))
                                 (##car _e154999155309_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd154998155312_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd154998155312_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl154997155314_))
                                      (let ((_e155002155317_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl154997155314_))))
                                        (let ((_tl155000155322_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e155002155317_)))
                                              (_hd155001155320_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e155002155317_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl155000155322_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl154994155306_))
                                                  (let ((_e155005155325_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl154994155306_))))
                                                    (let ((_tl155003155330_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e155005155325_)))
                                                          (_hd155004155328_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e155005155325_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd155004155328_))
                                                          (let ((_e155008155333_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd155004155328_))))
                    (let ((_tl155006155338_
                           (let ()
                             (declare (not safe))
                             (##cdr _e155008155333_)))
                          (_hd155007155336_
                           (let ()
                             (declare (not safe))
                             (##car _e155008155333_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd155007155336_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd155007155336_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl155006155338_))
                                  (let ((_e155011155341_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl155006155338_))))
                                    (let ((_tl155009155346_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e155011155341_)))
                                          (_hd155010155344_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e155011155341_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl155009155346_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl155003155330_))
                                              (___match156027156028_
                                               _e154966155221_
                                               _hd154965155224_
                                               _tl154964155226_
                                               _e154969155229_
                                               _hd154968155232_
                                               _tl154967155234_
                                               _e154972155237_
                                               _hd154971155240_
                                               _tl154970155242_
                                               _e154975155245_
                                               _hd154974155248_
                                               _tl154973155250_
                                               _e154978155253_
                                               _hd154977155256_
                                               _tl154976155258_
                                               _e154981155261_
                                               _hd154980155264_
                                               _tl154979155266_
                                               _e154984155269_
                                               _hd154983155272_
                                               _tl154982155274_
                                               _e154987155277_
                                               _hd154986155280_
                                               _tl154985155282_
                                               _e154990155285_
                                               _hd154989155288_
                                               _tl154988155290_
                                               _e154993155293_
                                               _hd154992155296_
                                               _tl154991155298_
                                               _e154996155301_
                                               _hd154995155304_
                                               _tl154994155306_
                                               _e154999155309_
                                               _hd154998155312_
                                               _tl154997155314_
                                               _e155002155317_
                                               _hd155001155320_
                                               _tl155000155322_
                                               _e155005155325_
                                               _hd155004155328_
                                               _tl155003155330_
                                               _e155008155333_
                                               _hd155007155336_
                                               _tl155006155338_
                                               _e155011155341_
                                               _hd155010155344_
                                               _tl155009155346_)
                                              (___kont155898155899_))
                                          (___kont155898155899_))))
                                  (___kont155898155899_))
                              (___kont155898155899_))
                          (___kont155898155899_))))
                  (___kont155898155899_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl154994155306_))
                                                      (if (let ((__tmp156189
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp156189 'bind-method!))
                  (let ((_L155175_ _hd155001155320_)
                        (_L155176_ _hd154992155296_)
                        (_L155177_ _hd154983155272_)
                        (_L155178_ _hd154974155248_))
                    (___kont155896155897_
                     _L155175_
                     _L155176_
                     _L155177_
                     _L155178_))
                  (___kont155898155899_))
              (___kont155898155899_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont155898155899_))))
                                      (___kont155898155899_))
                                  (___kont155898155899_))
                              (___kont155898155899_))))
                      (___kont155898155899_))))
              (___kont155898155899_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont155898155899_))))
                                          (___kont155898155899_))
                                      (___kont155898155899_))
                                  (___kont155898155899_))))
                          (___kont155898155899_))))
                  (___kont155898155899_))
              (___kont155898155899_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont155898155899_))
                                          (___kont155898155899_))
                                      (___kont155898155899_))))
                              (___kont155898155899_))))
                      (___kont155898155899_))
                  (___kont155898155899_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont155898155899_))
                                              (___kont155898155899_))
                                          (___kont155898155899_))))
                                  (___kont155898155899_))))
                          (___kont155898155899_))))
                  (___kont155898155899_)))))))
    (define gxc#!alias::typedecl
      (lambda (_self154929_)
        (let* ((_self154930154936_ _self154929_)
               (_E154932154940_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154930154936_))))
               (_K154933154945_
                (lambda (_alias-id154943_)
                  (let ((__tmp156190
                         (let ()
                           (declare (not safe))
                           (cons _alias-id154943_ '()))))
                    (declare (not safe))
                    (cons '@alias __tmp156190)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self154930154936_ 'gxc#!alias::t))
              (let* ((_e154934154948_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154930154936_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_alias-id154951_ _e154934154948_))
                (declare (not safe))
                (_K154933154945_ _alias-id154951_))
              (let () (declare (not safe)) (_E154932154940_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_self154720_)
        (let* ((_self154721154736_ _self154720_)
               (_E154723154740_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154721154736_))))
               (_K154724154754_
                (lambda (_methods154743_
                         _metaclass154744_
                         _final?154745_
                         _struct?154746_
                         _constructor154747_
                         _fields154748_
                         _slots154749_
                         _precendence-list154750_
                         _super154751_
                         _id154752_)
                  (let ((__tmp156191
                         (let ((__tmp156192
                                (let ((__tmp156193
                                       (let ((__tmp156194
                                              (let ((__tmp156195
                                                     (let ((__tmp156196
                                                            (let ((__tmp156197
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp156198
                                  (let ((__tmp156199
                                         (let ((__tmp156200
                                                (let ((__tmp156201
                                                       (if _methods154743_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (hash->list
                                                              _methods154743_))
                                                           '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp156201 '()))))
                                           (declare (not safe))
                                           (cons _metaclass154744_
                                                 __tmp156200))))
                                    (declare (not safe))
                                    (cons _final?154745_ __tmp156199))))
                             (declare (not safe))
                             (cons _struct?154746_ __tmp156198))))
                      (declare (not safe))
                      (cons _constructor154747_ __tmp156197))))
               (declare (not safe))
               (cons _fields154748_ __tmp156196))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _slots154749_
                                                      __tmp156195))))
                                         (declare (not safe))
                                         (cons _precendence-list154750_
                                               __tmp156194))))
                                  (declare (not safe))
                                  (cons _super154751_ __tmp156193))))
                           (declare (not safe))
                           (cons _id154752_ __tmp156192))))
                    (declare (not safe))
                    (cons '@class __tmp156191)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self154721154736_ 'gxc#!class::t))
              (let* ((_e154725154757_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154721154736_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_id154760_ _e154725154757_)
                     (_e154726154762_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154721154736_
                         '2
                         gxc#!class::t
                         '#f)))
                     (_super154765_ _e154726154762_)
                     (_e154727154767_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154721154736_
                         '3
                         gxc#!class::t
                         '#f)))
                     (_precendence-list154770_ _e154727154767_)
                     (_e154728154772_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154721154736_
                         '4
                         gxc#!class::t
                         '#f)))
                     (_slots154775_ _e154728154772_)
                     (_e154729154777_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154721154736_
                         '5
                         gxc#!class::t
                         '#f)))
                     (_fields154780_ _e154729154777_)
                     (_e154730154782_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154721154736_
                         '6
                         gxc#!class::t
                         '#f)))
                     (_constructor154785_ _e154730154782_)
                     (_e154731154787_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154721154736_
                         '7
                         gxc#!class::t
                         '#f)))
                     (_struct?154790_ _e154731154787_)
                     (_e154732154792_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154721154736_
                         '8
                         gxc#!class::t
                         '#f)))
                     (_final?154795_ _e154732154792_)
                     (_e154733154797_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154721154736_
                         '9
                         gxc#!class::t
                         '#f)))
                     (_metaclass154800_ _e154733154797_)
                     (_e154734154802_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154721154736_
                         '10
                         gxc#!class::t
                         '#f)))
                     (_methods154805_ _e154734154802_))
                (declare (not safe))
                (_K154724154754_
                 _methods154805_
                 _metaclass154800_
                 _final?154795_
                 _struct?154790_
                 _constructor154785_
                 _fields154780_
                 _slots154775_
                 _precendence-list154770_
                 _super154765_
                 _id154760_))
              (let () (declare (not safe)) (_E154723154740_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_self154574_)
        (let* ((_self154575154581_ _self154574_)
               (_E154577154585_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154575154581_))))
               (_K154578154590_
                (lambda (_klass-id154588_)
                  (let ((__tmp156202
                         (let ()
                           (declare (not safe))
                           (cons _klass-id154588_ '()))))
                    (declare (not safe))
                    (cons '@predicate __tmp156202)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self154575154581_
                 'gxc#!predicate::t))
              (let* ((_e154579154593_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154575154581_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id154596_ _e154579154593_))
                (declare (not safe))
                (_K154578154590_ _klass-id154596_))
              (let () (declare (not safe)) (_E154577154585_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_self154428_)
        (let* ((_self154429154435_ _self154428_)
               (_E154431154439_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154429154435_))))
               (_K154432154444_
                (lambda (_klass-id154442_)
                  (let ((__tmp156203
                         (let ()
                           (declare (not safe))
                           (cons _klass-id154442_ '()))))
                    (declare (not safe))
                    (cons '@constructor __tmp156203)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self154429154435_
                 'gxc#!constructor::t))
              (let* ((_e154433154447_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154429154435_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id154450_ _e154433154447_))
                (declare (not safe))
                (_K154432154444_ _klass-id154450_))
              (let () (declare (not safe)) (_E154431154439_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_self154268_)
        (let* ((_self154269154277_ _self154268_)
               (_E154271154281_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154269154277_))))
               (_K154272154288_
                (lambda (_checked?154284_ _slot154285_ _klass-id154286_)
                  (let ((__tmp156204
                         (let ((__tmp156205
                                (let ((__tmp156206
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?154284_ '()))))
                                  (declare (not safe))
                                  (cons _slot154285_ __tmp156206))))
                           (declare (not safe))
                           (cons _klass-id154286_ __tmp156205))))
                    (declare (not safe))
                    (cons '@accessor __tmp156204)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self154269154277_
                 'gxc#!accessor::t))
              (let* ((_e154273154291_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154269154277_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id154294_ _e154273154291_)
                     (_e154274154296_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154269154277_
                         '2
                         gxc#!accessor::t
                         '#f)))
                     (_slot154299_ _e154274154296_)
                     (_e154275154301_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154269154277_
                         '3
                         gxc#!accessor::t
                         '#f)))
                     (_checked?154304_ _e154275154301_))
                (declare (not safe))
                (_K154272154288_
                 _checked?154304_
                 _slot154299_
                 _klass-id154294_))
              (let () (declare (not safe)) (_E154271154281_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_self154108_)
        (let* ((_self154109154117_ _self154108_)
               (_E154111154121_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154109154117_))))
               (_K154112154128_
                (lambda (_checked?154124_ _slot154125_ _klass-id154126_)
                  (let ((__tmp156207
                         (let ((__tmp156208
                                (let ((__tmp156209
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?154124_ '()))))
                                  (declare (not safe))
                                  (cons _slot154125_ __tmp156209))))
                           (declare (not safe))
                           (cons _klass-id154126_ __tmp156208))))
                    (declare (not safe))
                    (cons '@mutator __tmp156207)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self154109154117_ 'gxc#!mutator::t))
              (let* ((_e154113154131_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154109154117_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id154134_ _e154113154131_)
                     (_e154114154136_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154109154117_
                         '2
                         gxc#!mutator::t
                         '#f)))
                     (_slot154139_ _e154114154136_)
                     (_e154115154141_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154109154117_
                         '3
                         gxc#!mutator::t
                         '#f)))
                     (_checked?154144_ _e154115154141_))
                (declare (not safe))
                (_K154112154128_
                 _checked?154144_
                 _slot154139_
                 _klass-id154134_))
              (let () (declare (not safe)) (_E154111154121_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!lambda::typedecl
      (lambda (_self153934_)
        (let* ((_self153935153945_ _self153934_)
               (_E153937153949_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self153935153945_))))
               (_K153938153960_
                (lambda (_typedecl153952_
                         _inline153953_
                         _dispatch153954_
                         _arity153955_)
                  (if _inline153953_
                      (let ((_$e153957_ _typedecl153952_))
                        (if _$e153957_
                            _$e153957_
                            (let ()
                              (declare (not safe))
                              (error '"Cannot generate typedecl for inline rules"))))
                      (let ((__tmp156210
                             (let ((__tmp156211
                                    (let ()
                                      (declare (not safe))
                                      (cons _dispatch153954_ '()))))
                               (declare (not safe))
                               (cons _arity153955_ __tmp156211))))
                        (declare (not safe))
                        (cons '@lambda __tmp156210))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self153935153945_ 'gxc#!lambda::t))
              (let* ((_e153939153963_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153935153945_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e153940153966_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153935153945_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity153969_ _e153940153966_)
                     (_e153941153971_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153935153945_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch153974_ _e153941153971_)
                     (_e153942153976_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153935153945_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline153979_ _e153942153976_)
                     (_e153943153981_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153935153945_
                         '5
                         gxc#!lambda::t
                         '#f)))
                     (_typedecl153984_ _e153943153981_))
                (declare (not safe))
                (_K153938153960_
                 _typedecl153984_
                 _inline153979_
                 _dispatch153974_
                 _arity153969_))
              (let () (declare (not safe)) (_E153937153949_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_self153745_)
        (letrec ((_clause-e153747_
                  (lambda (_clause153777_)
                    (let* ((_clause153778153786_ _clause153777_)
                           (_E153780153790_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _clause153778153786_))))
                           (_K153781153796_
                            (lambda (_dispatch153793_ _arity153794_)
                              (let ((__tmp156212
                                     (let ()
                                       (declare (not safe))
                                       (cons _dispatch153793_ '()))))
                                (declare (not safe))
                                (cons _arity153794_ __tmp156212)))))
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _clause153778153786_
                             'gxc#!lambda::t))
                          (let* ((_e153782153799_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause153778153786_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                                 (_e153783153802_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause153778153786_
                                     '2
                                     gxc#!lambda::t
                                     '#f)))
                                 (_arity153805_ _e153783153802_)
                                 (_e153784153807_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause153778153786_
                                     '3
                                     gxc#!lambda::t
                                     '#f)))
                                 (_dispatch153810_ _e153784153807_))
                            (declare (not safe))
                            (_K153781153796_ _dispatch153810_ _arity153805_))
                          (let () (declare (not safe)) (_E153780153790_)))))))
          (let* ((_self153748153755_ _self153745_)
                 (_E153750153759_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching" _self153748153755_))))
                 (_K153751153766_
                  (lambda (_clauses153762_)
                    (let ((_clauses153764_
                           (map _clause-e153747_ _clauses153762_)))
                      (declare (not safe))
                      (cons '@case-lambda _clauses153764_)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of?
                   _self153748153755_
                   'gxc#!case-lambda::t))
                (let* ((_e153752153769_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self153748153755_
                           '1
                           gxc#!type::t
                           '#f)))
                       (_e153753153772_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self153748153755_
                           '2
                           gxc#!case-lambda::t
                           '#f)))
                       (_clauses153775_ _e153753153772_))
                  (declare (not safe))
                  (_K153751153766_ _clauses153775_))
                (let () (declare (not safe)) (_E153750153759_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_self153588_)
        (let* ((_self153589153597_ _self153588_)
               (_E153591153601_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self153589153597_))))
               (_K153592153607_
                (lambda (_dispatch153604_ _table153605_)
                  (let ((__tmp156213
                         (let ((__tmp156214
                                (let ()
                                  (declare (not safe))
                                  (cons _dispatch153604_ '()))))
                           (declare (not safe))
                           (cons _table153605_ __tmp156214))))
                    (declare (not safe))
                    (cons '@kw-lambda __tmp156213)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self153589153597_
                 'gxc#!kw-lambda::t))
              (let* ((_e153593153610_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153589153597_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e153594153613_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153589153597_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table153616_ _e153594153613_)
                     (_e153595153618_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153589153597_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch153621_ _e153595153618_))
                (declare (not safe))
                (_K153592153607_ _dispatch153621_ _table153616_))
              (let () (declare (not safe)) (_E153591153601_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda::t
       'typedecl
       gxc#!kw-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_self153431_)
        (let* ((_self153432153440_ _self153431_)
               (_E153434153444_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self153432153440_))))
               (_K153435153450_
                (lambda (_main153447_ _keys153448_)
                  (let ((__tmp156215
                         (let ((__tmp156216
                                (let ()
                                  (declare (not safe))
                                  (cons _main153447_ '()))))
                           (declare (not safe))
                           (cons _keys153448_ __tmp156216))))
                    (declare (not safe))
                    (cons '@kw-lambda-dispatch __tmp156215)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self153432153440_
                 'gxc#!kw-lambda-primary::t))
              (let* ((_e153436153453_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153432153440_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e153437153456_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153432153440_
                         '2
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_keys153459_ _e153437153456_)
                     (_e153438153461_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153432153440_
                         '3
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_main153464_ _e153438153461_))
                (declare (not safe))
                (_K153435153450_ _main153464_ _keys153459_))
              (let () (declare (not safe)) (_E153434153444_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))))
