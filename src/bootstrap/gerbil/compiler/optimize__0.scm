(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1708418159)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (gxc#current-compile-optimizer-info)
            '#!void
            (gxc#current-compile-optimizer-info
             (let ((__obj156150
                    (let ()
                      (declare (not safe))
                      (##structure gxc#optimizer-info::t '#f '#f '#f))))
               (gxc#optimizer-info:::init! __obj156150)
               __obj156150)))))
    (define gxc#optimize!
      (lambda (_ctx155843_)
        (let ((__tmp156154
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _ctx155843_))
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-builtin-ssxi))
                 (let ((__tmp156156
                        (##structure-ref
                         (gxc#current-compile-optimizer-info)
                         '2
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp156155
                        (##structure-ref
                         _ctx155843_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp156156 __tmp156155 '#t))
                 (let ((_code155846_
                        (let ((__tmp156157
                               (##structure-ref
                                _ctx155843_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp156157))))
                   (##structure-set!
                    _ctx155843_
                    _code155846_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp156153 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp156152 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters
           __tmp156154
           gxc#current-compile-mutators
           __tmp156153
           gxc#current-compile-local-type
           __tmp156152))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda ()
        (letrec ((_load-it!155839_
                  (lambda (_id155841_)
                    (if (let ((__tmp156159
                               (##structure-ref
                                (gxc#current-compile-optimizer-info)
                                '2
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp156159 _id155841_))
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-import-ssxi-by-id _id155841_))
                          (let ((__tmp156158
                                 (##structure-ref
                                  (gxc#current-compile-optimizer-info)
                                  '2
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp156158 _id155841_ '#t)))))))
          (for-each
           _load-it!155839_
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
      (lambda (_ctx155783_)
        (letrec* ((_deps155785_
                   (let* ((_imports155829_
                           (##structure-ref
                            _ctx155783_
                            '8
                            gx#module-context::t
                            '#f))
                          (_$e155831_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _ctx155783_))))
                     (if _$e155831_
                         ((lambda (_g155833155835_)
                            (let ()
                              (declare (not safe))
                              (cons _g155833155835_ _imports155829_)))
                          _$e155831_)
                         _imports155829_))))
          (let _lp155787_ ((_rest155789_ _deps155785_))
            (let* ((_rest155790155798_ _rest155789_)
                   (_else155792155806_ (lambda () '#!void))
                   (_K155794155817_
                    (lambda (_rest155809_ _hd155810_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _hd155810_
                             'gx#module-context::t))
                          (begin
                            (if (let ((__tmp156173
                                       (##structure-ref
                                        (gxc#current-compile-optimizer-info)
                                        '2
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp156172
                                       (##structure-ref
                                        _hd155810_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (hash-get __tmp156173 __tmp156172))
                                '#!void
                                (begin
                                  (let ((_$e155812_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _hd155810_))))
                                    (if _$e155812_
                                        ((lambda (_pre155815_)
                                           (let ((__tmp156170
                                                  (let ((__tmp156171
                                                         (##structure-ref
                                                          _hd155810_
                                                          '8
                                                          gx#module-context::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (cons _pre155815_
                                                          __tmp156171))))
                                             (declare (not safe))
                                             (_lp155787_ __tmp156170)))
                                         _$e155812_)
                                        (let ((__tmp156169
                                               (##structure-ref
                                                _hd155810_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                          (declare (not safe))
                                          (_lp155787_ __tmp156169))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _hd155810_))))
                            (let ()
                              (declare (not safe))
                              (_lp155787_ _rest155809_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _hd155810_
                                 'gx#prelude-context::t))
                              (begin
                                (if (let ((__tmp156168
                                           (##structure-ref
                                            (gxc#current-compile-optimizer-info)
                                            '2
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp156167
                                           (##structure-ref
                                            _hd155810_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (hash-get __tmp156168 __tmp156167))
                                    '#!void
                                    (begin
                                      (let ((__tmp156166
                                             (##structure-ref
                                              _hd155810_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_lp155787_ __tmp156166))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi _hd155810_))))
                                (let ()
                                  (declare (not safe))
                                  (_lp155787_ _rest155809_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _hd155810_
                                     'gx#module-import::t))
                                  (let ((__tmp156164
                                         (let ((__tmp156165
                                                (##direct-structure-ref
                                                 _hd155810_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp156165 _rest155809_))))
                                    (declare (not safe))
                                    (_lp155787_ __tmp156164))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _hd155810_
                                         'gx#module-export::t))
                                      (let ((__tmp156162
                                             (let ((__tmp156163
                                                    (##direct-structure-ref
                                                     _hd155810_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp156163
                                                     _rest155809_))))
                                        (declare (not safe))
                                        (_lp155787_ __tmp156162))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _hd155810_
                                             'gx#import-set::t))
                                          (let ((__tmp156160
                                                 (let ((__tmp156161
                                                        (##direct-structure-ref
                                                         _hd155810_
                                                         '1
                                                         gx#import-set::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp156161
                                                         _rest155809_))))
                                            (declare (not safe))
                                            (_lp155787_ __tmp156160))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _hd155810_))))))))))
              (if (let () (declare (not safe)) (##pair? _rest155790155798_))
                  (let ((_hd155795155820_
                         (let ()
                           (declare (not safe))
                           (##car _rest155790155798_)))
                        (_tl155796155822_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest155790155798_))))
                    (let* ((_hd155825_ _hd155795155820_)
                           (_rest155827_ _tl155796155822_))
                      (declare (not safe))
                      (_K155794155817_ _rest155827_ _hd155825_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_ctx155763_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _ctx155763_
                    'gx#module-context::t))
                 (let ((__tmp156174
                        (##structure-ref
                         _ctx155763_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp156174)))
            '#!void
            (let* ((_ht155765_
                    (##structure-ref
                     (gxc#current-compile-optimizer-info)
                     '2
                     gxc#optimizer-info::t
                     '#f))
                   (_id155767_
                    (##structure-ref
                     _ctx155763_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_mod155769_
                    (let ()
                      (declare (not safe))
                      (hash-get _ht155765_ _id155767_))))
              (let ((_$e155772_ _mod155769_))
                (if _$e155772_
                    _$e155772_
                    (let* ((_mod155775_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-import-ssxi _ctx155763_)))
                           (_val155780_
                            (let ((_$e155777_ _mod155775_))
                              (if _$e155777_ _$e155777_ '#!void))))
                      (let ()
                        (declare (not safe))
                        (hash-put! _ht155765_ _id155767_ _val155780_))
                      _val155780_)))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_ctx155761_)
        (if (##structure-ref _ctx155761_ '1 gx#expander-context::t '#f)
            (let ((__tmp156175
                   (##structure-ref
                    _ctx155761_
                    '1
                    gx#expander-context::t
                    '#f)))
              (declare (not safe))
              (gxc#optimizer-import-ssxi-by-id __tmp156175))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_id155738_)
        (letrec ((_catch-e155740_
                  (lambda (_exn155759_)
                    (if (gxc#current-compile-verbose)
                        (begin
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"Failed to load ssxi module for "
                             _id155738_))
                          (display-exception _exn155759_))
                        '#!void)
                    '#f))
                 (_import-e155741_
                  (lambda ()
                    (let* ((_str-id155744_
                            (string-append
                             (let ()
                               (declare (not safe))
                               (gxc#module-id->path-string _id155738_))
                             '".ssxi"))
                           (_artefact-path155752_
                            (let ((_odir155745155747_
                                   (gxc#current-compile-output-dir)))
                              (if _odir155745155747_
                                  (let ((_odir155750_ _odir155745155747_))
                                    (path-expand
                                     (string-append _str-id155744_ '".ss")
                                     _odir155750_))
                                  '#f)))
                           (_library-path155754_
                            (string->symbol
                             (string-append '":" _str-id155744_ '".ss")))
                           (_ssxi-path155756_
                            (if (and _artefact-path155752_
                                     (file-exists? _artefact-path155752_))
                                _artefact-path155752_
                                _library-path155754_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _ssxi-path155756_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _ssxi-path155756_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (with-catch _catch-e155740_ _import-e155741_)))))
    (define gxc#optimize-source
      (lambda (_stx155729_)
        (let () (declare (not safe)) (gxc#apply-collect-mutators _stx155729_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _stx155729_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _stx155729_))
        (let* ((_stx155731_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _stx155729_)))
               (_stx155733_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _stx155731_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _stx155733_))
          (let ((_stx155736_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _stx155733_))))
            (declare (not safe))
            (gxc#apply-optimize-call _stx155736_)))))
    (define gxc#&generate-ssxi
      (make-promise
       (lambda ()
         (let ((_tbl155726_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp156176 (force gxc#&generate-runtime-empty)))
             (declare (not safe))
             (hash-merge! _tbl155726_ __tmp156176))
           (let ()
             (declare (not safe))
             (hash-put! _tbl155726_ '%#begin gxc#generate-runtime-begin%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl155726_
              '%#begin-syntax
              gxc#generate-ssxi-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl155726_ '%#module gxc#generate-ssxi-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl155726_
              '%#define-values
              gxc#generate-ssxi-define-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl155726_ '%#call gxc#generate-ssxi-call%))
           _tbl155726_))))
    (define gxc#apply-generate-ssxi
      (lambda (_stx155709_ . _args155711_)
        (let ((__tmp156178
               (lambda ()
                 (declare (not safe))
                 (if (null? _args155711_)
                     (gxc#compile-e__0 _stx155709_)
                     (let ((_arg1155716_ (car _args155711_))
                           (_rest155718_ (cdr _args155711_)))
                       (if (null? _rest155718_)
                           (gxc#compile-e__1 _stx155709_ _arg1155716_)
                           (let ((_arg2155721_ (car _rest155718_))
                                 (_rest155723_ (cdr _rest155718_)))
                             (if (null? _rest155723_)
                                 (gxc#compile-e__2
                                  _stx155709_
                                  _arg1155716_
                                  _arg2155721_)
                                 (apply gxc#compile-e
                                        _stx155709_
                                        _arg1155716_
                                        _arg2155721_
                                        _rest155723_))))))))
              (__tmp156177 (force gxc#&generate-ssxi)))
          (declare (not safe))
          (call-with-parameters
           __tmp156178
           gxc#current-compile-methods
           __tmp156177))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_stx155670_)
        (let* ((_g155672155682_
                (lambda (_g155673155679_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g155673155679_))))
               (_g155671155706_
                (lambda (_g155673155685_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g155673155685_))
                      (let ((_e155677155687_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g155673155685_))))
                        (let ((_hd155676155690_
                               (let ()
                                 (declare (not safe))
                                 (##car _e155677155687_)))
                              (_tl155675155692_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e155677155687_))))
                          ((lambda (_L155695_)
                             (let ((__tmp156181
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _stx155670_))))
                                   (__tmp156179
                                    (let ((__tmp156180
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp156180 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp156181
                                gx#current-expander-phi
                                __tmp156179)))
                           _tl155675155692_)))
                      (let ()
                        (declare (not safe))
                        (_g155672155682_ _g155673155685_))))))
          (declare (not safe))
          (_g155671155706_ _stx155670_))))
    (define gxc#generate-ssxi-module%
      (lambda (_stx155610_)
        (let* ((_g155612155626_
                (lambda (_g155613155623_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g155613155623_))))
               (_g155611155667_
                (lambda (_g155613155629_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g155613155629_))
                      (let ((_e155618155631_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g155613155629_))))
                        (let ((_hd155617155634_
                               (let ()
                                 (declare (not safe))
                                 (##car _e155618155631_)))
                              (_tl155616155636_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e155618155631_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl155616155636_))
                              (let ((_e155621155639_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl155616155636_))))
                                (let ((_hd155620155642_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e155621155639_)))
                                      (_tl155619155644_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e155621155639_))))
                                  ((lambda (_L155647_ _L155648_)
                                     (let* ((_ctx155661_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L155648_)))
                                            (_code155663_
                                             (##structure-ref
                                              _ctx155661_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp156182
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _code155663_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp156182
                                          gx#current-expander-context
                                          _ctx155661_))))
                                   _tl155619155644_
                                   _hd155620155642_)))
                              (let ()
                                (declare (not safe))
                                (_g155612155626_ _g155613155629_)))))
                      (let ()
                        (declare (not safe))
                        (_g155612155626_ _g155613155629_))))))
          (declare (not safe))
          (_g155611155667_ _stx155610_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_stx155420_)
        (letrec ((_generate-e155422_
                  (lambda (_id155599_)
                    (let* ((_sym155601_
                            (if (let ((__tmp156183
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp156183))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _id155599_))
                                '#f))
                           (_$e155603_
                            (if _sym155601_
                                (let ()
                                  (declare (not safe))
                                  (gxc#optimizer-lookup-type _sym155601_))
                                '#f)))
                      (if _$e155603_
                          ((lambda (_type155606_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"generate typedecl " _sym155601_))
                             (let* ((_typedecl155608_
                                     (let ((__method156151
                                            (let ()
                                              (declare (not safe))
                                              (method-ref
                                               _type155606_
                                               'typedecl))))
                                       (if __method156151
                                           (__method156151 _type155606_)
                                           (let ()
                                             (declare (not safe))
                                             (error '"Missing method"
                                                    _type155606_
                                                    'typedecl)))))
                                    (__tmp156184
                                     (let ((__tmp156185
                                            (let ()
                                              (declare (not safe))
                                              (cons _typedecl155608_ '()))))
                                       (declare (not safe))
                                       (cons _sym155601_ __tmp156185))))
                               (declare (not safe))
                               (cons 'declare-type __tmp156184)))
                           _$e155603_)
                          '(begin))))))
          (let* ((___stx155849155850_ _stx155420_)
                 (_g155425155463_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx155849155850_)))))
            (let ((___kont155851155852_
                   (lambda (_L155581_)
                     (let ()
                       (declare (not safe))
                       (_generate-e155422_ _L155581_))))
                  (___kont155853155854_
                   (lambda (_L155516_)
                     (let ((_types155542_
                            (map _generate-e155422_
                                 (let ((__tmp156186
                                        (lambda (_g155534155537_
                                                 _g155535155539_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g155534155537_
                                                  _g155535155539_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp156186 '() _L155516_)))))
                       (declare (not safe))
                       (cons 'begin _types155542_)))))
              (let ((___match155904155905_
                     (lambda (_e155443155468_
                              _hd155442155471_
                              _tl155441155473_
                              _e155446155476_
                              _hd155445155479_
                              _tl155444155481_
                              ___splice155855155856_
                              _target155447155484_
                              _tl155449155486_)
                       (letrec ((_loop155450155489_
                                 (lambda (_hd155448155492_ _id155454155494_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd155448155492_))
                                       (let ((_e155451155497_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd155448155492_))))
                                         (let ((_lp-tl155453155502_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e155451155497_)))
                                               (_lp-hd155452155500_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e155451155497_))))
                                           (let ((__tmp156187
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd155452155500_
                                                          _id155454155494_))))
                                             (declare (not safe))
                                             (_loop155450155489_
                                              _lp-tl155453155502_
                                              __tmp156187))))
                                       (let ((_id155455155505_
                                              (reverse _id155454155494_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl155444155481_))
                                             (let ((_e155458155508_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl155444155481_))))
                                               (let ((_tl155456155513_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e155458155508_)))
                                                     (_hd155457155511_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e155458155508_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl155456155513_))
                                                     (___kont155853155854_
                                                      _id155455155505_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g155425155463_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g155425155463_))))))))
                         (let ()
                           (declare (not safe))
                           (_loop155450155489_ _target155447155484_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx155849155850_))
                    (let ((_e155430155549_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx155849155850_))))
                      (let ((_tl155428155554_
                             (let ()
                               (declare (not safe))
                               (##cdr _e155430155549_)))
                            (_hd155429155552_
                             (let ()
                               (declare (not safe))
                               (##car _e155430155549_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl155428155554_))
                            (let ((_e155433155557_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl155428155554_))))
                              (let ((_tl155431155562_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e155433155557_)))
                                    (_hd155432155560_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e155433155557_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd155432155560_))
                                    (let ((_e155436155565_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd155432155560_))))
                                      (let ((_tl155434155570_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e155436155565_)))
                                            (_hd155435155568_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e155436155565_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl155434155570_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl155431155562_))
                                                (let ((_e155439155573_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl155431155562_))))
                                                  (let ((_tl155437155578_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e155439155573_)))
                                                        (_hd155438155576_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e155439155573_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl155437155578_))
                                                        (___kont155851155852_
                                                         _hd155435155568_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _hd155432155560_))
                                                            (let ((___splice155855155856_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _hd155432155560_ '0))))
                      (let ((_tl155449155486_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice155855155856_ '1)))
                            (_target155447155484_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice155855155856_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl155449155486_))
                            (___match155904155905_
                             _e155430155549_
                             _hd155429155552_
                             _tl155428155554_
                             _e155433155557_
                             _hd155432155560_
                             _tl155431155562_
                             ___splice155855155856_
                             _target155447155484_
                             _tl155449155486_)
                            (let () (declare (not safe)) (_g155425155463_)))))
                    (let () (declare (not safe)) (_g155425155463_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _hd155432155560_))
                                                    (let ((___splice155855155856_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _hd155432155560_
                                                              '0))))
                                                      (let ((_tl155449155486_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice155855155856_ '1)))
                    (_target155447155484_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice155855155856_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl155449155486_))
                    (___match155904155905_
                     _e155430155549_
                     _hd155429155552_
                     _tl155428155554_
                     _e155433155557_
                     _hd155432155560_
                     _tl155431155562_
                     ___splice155855155856_
                     _target155447155484_
                     _tl155449155486_)
                    (let () (declare (not safe)) (_g155425155463_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g155425155463_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _hd155432155560_))
                                                (let ((___splice155855155856_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _hd155432155560_
                                                          '0))))
                                                  (let ((_tl155449155486_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice155855155856_
                                                            '1)))
                                                        (_target155447155484_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice155855155856_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl155449155486_))
                                                        (___match155904155905_
                                                         _e155430155549_
                                                         _hd155429155552_
                                                         _tl155428155554_
                                                         _e155433155557_
                                                         _hd155432155560_
                                                         _tl155431155562_
                                                         ___splice155855155856_
                                                         _target155447155484_
                                                         _tl155449155486_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g155425155463_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g155425155463_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd155432155560_))
                                        (let ((___splice155855155856_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd155432155560_
                                                  '0))))
                                          (let ((_tl155449155486_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice155855155856_
                                                    '1)))
                                                (_target155447155484_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice155855155856_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl155449155486_))
                                                (___match155904155905_
                                                 _e155430155549_
                                                 _hd155429155552_
                                                 _tl155428155554_
                                                 _e155433155557_
                                                 _hd155432155560_
                                                 _tl155431155562_
                                                 ___splice155855155856_
                                                 _target155447155484_
                                                 _tl155449155486_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g155425155463_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g155425155463_))))))
                            (let () (declare (not safe)) (_g155425155463_)))))
                    (let () (declare (not safe)) (_g155425155463_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_stx154974_)
        (let* ((___stx155907155908_ _stx154974_)
               (_g154978155080_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx155907155908_)))))
          (let ((___kont155909155910_
                 (lambda (_L155370_ _L155371_ _L155372_ _L155373_ _L155374_)
                   (let ((__tmp156188
                          (let ((__tmp156195
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L155373_)))
                                (__tmp156189
                                 (let ((__tmp156194
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L155372_)))
                                       (__tmp156190
                                        (let ((__tmp156193
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L155371_)))
                                              (__tmp156191
                                               (let ((__tmp156192
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L155370_))))
                                                 (declare (not safe))
                                                 (cons __tmp156192 '()))))
                                          (declare (not safe))
                                          (cons __tmp156193 __tmp156191))))
                                   (declare (not safe))
                                   (cons __tmp156194 __tmp156190))))
                            (declare (not safe))
                            (cons __tmp156195 __tmp156189))))
                     (declare (not safe))
                     (cons 'declare-method __tmp156188))))
                (___kont155911155912_
                 (lambda (_L155196_ _L155197_ _L155198_ _L155199_)
                   (let ((__tmp156196
                          (let ((__tmp156202
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L155198_)))
                                (__tmp156197
                                 (let ((__tmp156201
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L155197_)))
                                       (__tmp156198
                                        (let ((__tmp156200
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L155196_)))
                                              (__tmp156199
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '#f '()))))
                                          (declare (not safe))
                                          (cons __tmp156200 __tmp156199))))
                                   (declare (not safe))
                                   (cons __tmp156201 __tmp156198))))
                            (declare (not safe))
                            (cons __tmp156202 __tmp156197))))
                     (declare (not safe))
                     (cons 'declare-method __tmp156196))))
                (___kont155913155914_ (lambda () '(begin))))
            (let ((___match156042156043_
                   (lambda (_e154987155242_
                            _hd154986155245_
                            _tl154985155247_
                            _e154990155250_
                            _hd154989155253_
                            _tl154988155255_
                            _e154993155258_
                            _hd154992155261_
                            _tl154991155263_
                            _e154996155266_
                            _hd154995155269_
                            _tl154994155271_
                            _e154999155274_
                            _hd154998155277_
                            _tl154997155279_
                            _e155002155282_
                            _hd155001155285_
                            _tl155000155287_
                            _e155005155290_
                            _hd155004155293_
                            _tl155003155295_
                            _e155008155298_
                            _hd155007155301_
                            _tl155006155303_
                            _e155011155306_
                            _hd155010155309_
                            _tl155009155311_
                            _e155014155314_
                            _hd155013155317_
                            _tl155012155319_
                            _e155017155322_
                            _hd155016155325_
                            _tl155015155327_
                            _e155020155330_
                            _hd155019155333_
                            _tl155018155335_
                            _e155023155338_
                            _hd155022155341_
                            _tl155021155343_
                            _e155026155346_
                            _hd155025155349_
                            _tl155024155351_
                            _e155029155354_
                            _hd155028155357_
                            _tl155027155359_
                            _e155032155362_
                            _hd155031155365_
                            _tl155030155367_)
                     (let ((_L155370_ _hd155031155365_)
                           (_L155371_ _hd155022155341_)
                           (_L155372_ _hd155013155317_)
                           (_L155373_ _hd155004155293_)
                           (_L155374_ _hd154995155269_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L155374_
                              'bind-method!))
                           (___kont155909155910_
                            _L155370_
                            _L155371_
                            _L155372_
                            _L155373_
                            _L155374_)
                           (___kont155913155914_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx155907155908_))
                  (let ((_e154987155242_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx155907155908_))))
                    (let ((_tl154985155247_
                           (let ()
                             (declare (not safe))
                             (##cdr _e154987155242_)))
                          (_hd154986155245_
                           (let ()
                             (declare (not safe))
                             (##car _e154987155242_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl154985155247_))
                          (let ((_e154990155250_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl154985155247_))))
                            (let ((_tl154988155255_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e154990155250_)))
                                  (_hd154989155253_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e154990155250_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd154989155253_))
                                  (let ((_e154993155258_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd154989155253_))))
                                    (let ((_tl154991155263_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e154993155258_)))
                                          (_hd154992155261_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e154993155258_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd154992155261_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd154992155261_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl154991155263_))
                                                  (let ((_e154996155266_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl154991155263_))))
                                                    (let ((_tl154994155271_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e154996155266_)))
                                                          (_hd154995155269_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e154996155266_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl154994155271_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl154988155255_))
                      (let ((_e154999155274_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl154988155255_))))
                        (let ((_tl154997155279_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e154999155274_)))
                              (_hd154998155277_
                               (let ()
                                 (declare (not safe))
                                 (##car _e154999155274_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd154998155277_))
                              (let ((_e155002155282_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd154998155277_))))
                                (let ((_tl155000155287_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e155002155282_)))
                                      (_hd155001155285_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e155002155282_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd155001155285_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd155001155285_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl155000155287_))
                                              (let ((_e155005155290_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl155000155287_))))
                                                (let ((_tl155003155295_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e155005155290_)))
                                                      (_hd155004155293_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e155005155290_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl155003155295_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl154997155279_))
                                                          (let ((_e155008155298_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl154997155279_))))
                    (let ((_tl155006155303_
                           (let ()
                             (declare (not safe))
                             (##cdr _e155008155298_)))
                          (_hd155007155301_
                           (let ()
                             (declare (not safe))
                             (##car _e155008155298_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd155007155301_))
                          (let ((_e155011155306_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd155007155301_))))
                            (let ((_tl155009155311_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e155011155306_)))
                                  (_hd155010155309_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e155011155306_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd155010155309_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd155010155309_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl155009155311_))
                                          (let ((_e155014155314_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl155009155311_))))
                                            (let ((_tl155012155319_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e155014155314_)))
                                                  (_hd155013155317_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e155014155314_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl155012155319_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl155006155303_))
                                                      (let ((_e155017155322_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl155006155303_))))
                (let ((_tl155015155327_
                       (let () (declare (not safe)) (##cdr _e155017155322_)))
                      (_hd155016155325_
                       (let () (declare (not safe)) (##car _e155017155322_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd155016155325_))
                      (let ((_e155020155330_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd155016155325_))))
                        (let ((_tl155018155335_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e155020155330_)))
                              (_hd155019155333_
                               (let ()
                                 (declare (not safe))
                                 (##car _e155020155330_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd155019155333_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd155019155333_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl155018155335_))
                                      (let ((_e155023155338_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl155018155335_))))
                                        (let ((_tl155021155343_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e155023155338_)))
                                              (_hd155022155341_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e155023155338_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl155021155343_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl155015155327_))
                                                  (let ((_e155026155346_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl155015155327_))))
                                                    (let ((_tl155024155351_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e155026155346_)))
                                                          (_hd155025155349_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e155026155346_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd155025155349_))
                                                          (let ((_e155029155354_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd155025155349_))))
                    (let ((_tl155027155359_
                           (let ()
                             (declare (not safe))
                             (##cdr _e155029155354_)))
                          (_hd155028155357_
                           (let ()
                             (declare (not safe))
                             (##car _e155029155354_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd155028155357_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd155028155357_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl155027155359_))
                                  (let ((_e155032155362_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl155027155359_))))
                                    (let ((_tl155030155367_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e155032155362_)))
                                          (_hd155031155365_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e155032155362_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl155030155367_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl155024155351_))
                                              (___match156042156043_
                                               _e154987155242_
                                               _hd154986155245_
                                               _tl154985155247_
                                               _e154990155250_
                                               _hd154989155253_
                                               _tl154988155255_
                                               _e154993155258_
                                               _hd154992155261_
                                               _tl154991155263_
                                               _e154996155266_
                                               _hd154995155269_
                                               _tl154994155271_
                                               _e154999155274_
                                               _hd154998155277_
                                               _tl154997155279_
                                               _e155002155282_
                                               _hd155001155285_
                                               _tl155000155287_
                                               _e155005155290_
                                               _hd155004155293_
                                               _tl155003155295_
                                               _e155008155298_
                                               _hd155007155301_
                                               _tl155006155303_
                                               _e155011155306_
                                               _hd155010155309_
                                               _tl155009155311_
                                               _e155014155314_
                                               _hd155013155317_
                                               _tl155012155319_
                                               _e155017155322_
                                               _hd155016155325_
                                               _tl155015155327_
                                               _e155020155330_
                                               _hd155019155333_
                                               _tl155018155335_
                                               _e155023155338_
                                               _hd155022155341_
                                               _tl155021155343_
                                               _e155026155346_
                                               _hd155025155349_
                                               _tl155024155351_
                                               _e155029155354_
                                               _hd155028155357_
                                               _tl155027155359_
                                               _e155032155362_
                                               _hd155031155365_
                                               _tl155030155367_)
                                              (___kont155913155914_))
                                          (___kont155913155914_))))
                                  (___kont155913155914_))
                              (___kont155913155914_))
                          (___kont155913155914_))))
                  (___kont155913155914_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl155015155327_))
                                                      (if (let ((__tmp156203
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp156203 'bind-method!))
                  (let ((_L155196_ _hd155022155341_)
                        (_L155197_ _hd155013155317_)
                        (_L155198_ _hd155004155293_)
                        (_L155199_ _hd154995155269_))
                    (___kont155911155912_
                     _L155196_
                     _L155197_
                     _L155198_
                     _L155199_))
                  (___kont155913155914_))
              (___kont155913155914_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont155913155914_))))
                                      (___kont155913155914_))
                                  (___kont155913155914_))
                              (___kont155913155914_))))
                      (___kont155913155914_))))
              (___kont155913155914_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont155913155914_))))
                                          (___kont155913155914_))
                                      (___kont155913155914_))
                                  (___kont155913155914_))))
                          (___kont155913155914_))))
                  (___kont155913155914_))
              (___kont155913155914_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont155913155914_))
                                          (___kont155913155914_))
                                      (___kont155913155914_))))
                              (___kont155913155914_))))
                      (___kont155913155914_))
                  (___kont155913155914_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont155913155914_))
                                              (___kont155913155914_))
                                          (___kont155913155914_))))
                                  (___kont155913155914_))))
                          (___kont155913155914_))))
                  (___kont155913155914_)))))))
    (define gxc#!alias::typedecl
      (lambda (_self154950_)
        (let* ((_self154951154957_ _self154950_)
               (_E154953154961_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154951154957_))))
               (_K154954154966_
                (lambda (_alias-id154964_)
                  (let ((__tmp156204
                         (let ()
                           (declare (not safe))
                           (cons _alias-id154964_ '()))))
                    (declare (not safe))
                    (cons '@alias __tmp156204)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self154951154957_ 'gxc#!alias::t))
              (let* ((_e154955154969_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154951154957_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_alias-id154972_ _e154955154969_))
                (declare (not safe))
                (_K154954154966_ _alias-id154972_))
              (let () (declare (not safe)) (_E154953154961_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_self154741_)
        (let* ((_self154742154757_ _self154741_)
               (_E154744154761_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154742154757_))))
               (_K154745154775_
                (lambda (_methods154764_
                         _metaclass154765_
                         _final?154766_
                         _struct?154767_
                         _constructor154768_
                         _fields154769_
                         _slots154770_
                         _precendence-list154771_
                         _super154772_
                         _id154773_)
                  (let ((__tmp156205
                         (let ((__tmp156206
                                (let ((__tmp156207
                                       (let ((__tmp156208
                                              (let ((__tmp156209
                                                     (let ((__tmp156210
                                                            (let ((__tmp156211
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp156212
                                  (let ((__tmp156213
                                         (let ((__tmp156214
                                                (let ((__tmp156215
                                                       (if _methods154764_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (hash->list
                                                              _methods154764_))
                                                           '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp156215 '()))))
                                           (declare (not safe))
                                           (cons _metaclass154765_
                                                 __tmp156214))))
                                    (declare (not safe))
                                    (cons _final?154766_ __tmp156213))))
                             (declare (not safe))
                             (cons _struct?154767_ __tmp156212))))
                      (declare (not safe))
                      (cons _constructor154768_ __tmp156211))))
               (declare (not safe))
               (cons _fields154769_ __tmp156210))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _slots154770_
                                                      __tmp156209))))
                                         (declare (not safe))
                                         (cons _precendence-list154771_
                                               __tmp156208))))
                                  (declare (not safe))
                                  (cons _super154772_ __tmp156207))))
                           (declare (not safe))
                           (cons _id154773_ __tmp156206))))
                    (declare (not safe))
                    (cons '@class __tmp156205)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self154742154757_ 'gxc#!class::t))
              (let* ((_e154746154778_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154742154757_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_id154781_ _e154746154778_)
                     (_e154747154783_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154742154757_
                         '2
                         gxc#!class::t
                         '#f)))
                     (_super154786_ _e154747154783_)
                     (_e154748154788_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154742154757_
                         '3
                         gxc#!class::t
                         '#f)))
                     (_precendence-list154791_ _e154748154788_)
                     (_e154749154793_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154742154757_
                         '4
                         gxc#!class::t
                         '#f)))
                     (_slots154796_ _e154749154793_)
                     (_e154750154798_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154742154757_
                         '5
                         gxc#!class::t
                         '#f)))
                     (_fields154801_ _e154750154798_)
                     (_e154751154803_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154742154757_
                         '6
                         gxc#!class::t
                         '#f)))
                     (_constructor154806_ _e154751154803_)
                     (_e154752154808_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154742154757_
                         '7
                         gxc#!class::t
                         '#f)))
                     (_struct?154811_ _e154752154808_)
                     (_e154753154813_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154742154757_
                         '8
                         gxc#!class::t
                         '#f)))
                     (_final?154816_ _e154753154813_)
                     (_e154754154818_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154742154757_
                         '9
                         gxc#!class::t
                         '#f)))
                     (_metaclass154821_ _e154754154818_)
                     (_e154755154823_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154742154757_
                         '10
                         gxc#!class::t
                         '#f)))
                     (_methods154826_ _e154755154823_))
                (declare (not safe))
                (_K154745154775_
                 _methods154826_
                 _metaclass154821_
                 _final?154816_
                 _struct?154811_
                 _constructor154806_
                 _fields154801_
                 _slots154796_
                 _precendence-list154791_
                 _super154786_
                 _id154781_))
              (let () (declare (not safe)) (_E154744154761_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_self154595_)
        (let* ((_self154596154602_ _self154595_)
               (_E154598154606_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154596154602_))))
               (_K154599154611_
                (lambda (_klass-id154609_)
                  (let ((__tmp156216
                         (let ()
                           (declare (not safe))
                           (cons _klass-id154609_ '()))))
                    (declare (not safe))
                    (cons '@predicate __tmp156216)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self154596154602_
                 'gxc#!predicate::t))
              (let* ((_e154600154614_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154596154602_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id154617_ _e154600154614_))
                (declare (not safe))
                (_K154599154611_ _klass-id154617_))
              (let () (declare (not safe)) (_E154598154606_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_self154449_)
        (let* ((_self154450154456_ _self154449_)
               (_E154452154460_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154450154456_))))
               (_K154453154465_
                (lambda (_klass-id154463_)
                  (let ((__tmp156217
                         (let ()
                           (declare (not safe))
                           (cons _klass-id154463_ '()))))
                    (declare (not safe))
                    (cons '@constructor __tmp156217)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self154450154456_
                 'gxc#!constructor::t))
              (let* ((_e154454154468_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154450154456_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id154471_ _e154454154468_))
                (declare (not safe))
                (_K154453154465_ _klass-id154471_))
              (let () (declare (not safe)) (_E154452154460_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_self154289_)
        (let* ((_self154290154298_ _self154289_)
               (_E154292154302_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154290154298_))))
               (_K154293154309_
                (lambda (_checked?154305_ _slot154306_ _klass-id154307_)
                  (let ((__tmp156218
                         (let ((__tmp156219
                                (let ((__tmp156220
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?154305_ '()))))
                                  (declare (not safe))
                                  (cons _slot154306_ __tmp156220))))
                           (declare (not safe))
                           (cons _klass-id154307_ __tmp156219))))
                    (declare (not safe))
                    (cons '@accessor __tmp156218)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self154290154298_
                 'gxc#!accessor::t))
              (let* ((_e154294154312_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154290154298_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id154315_ _e154294154312_)
                     (_e154295154317_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154290154298_
                         '2
                         gxc#!accessor::t
                         '#f)))
                     (_slot154320_ _e154295154317_)
                     (_e154296154322_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154290154298_
                         '3
                         gxc#!accessor::t
                         '#f)))
                     (_checked?154325_ _e154296154322_))
                (declare (not safe))
                (_K154293154309_
                 _checked?154325_
                 _slot154320_
                 _klass-id154315_))
              (let () (declare (not safe)) (_E154292154302_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_self154129_)
        (let* ((_self154130154138_ _self154129_)
               (_E154132154142_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154130154138_))))
               (_K154133154149_
                (lambda (_checked?154145_ _slot154146_ _klass-id154147_)
                  (let ((__tmp156221
                         (let ((__tmp156222
                                (let ((__tmp156223
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?154145_ '()))))
                                  (declare (not safe))
                                  (cons _slot154146_ __tmp156223))))
                           (declare (not safe))
                           (cons _klass-id154147_ __tmp156222))))
                    (declare (not safe))
                    (cons '@mutator __tmp156221)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self154130154138_ 'gxc#!mutator::t))
              (let* ((_e154134154152_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154130154138_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id154155_ _e154134154152_)
                     (_e154135154157_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154130154138_
                         '2
                         gxc#!mutator::t
                         '#f)))
                     (_slot154160_ _e154135154157_)
                     (_e154136154162_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154130154138_
                         '3
                         gxc#!mutator::t
                         '#f)))
                     (_checked?154165_ _e154136154162_))
                (declare (not safe))
                (_K154133154149_
                 _checked?154165_
                 _slot154160_
                 _klass-id154155_))
              (let () (declare (not safe)) (_E154132154142_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!lambda::typedecl
      (lambda (_self153955_)
        (let* ((_self153956153966_ _self153955_)
               (_E153958153970_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self153956153966_))))
               (_K153959153981_
                (lambda (_typedecl153973_
                         _inline153974_
                         _dispatch153975_
                         _arity153976_)
                  (if _inline153974_
                      (let ((_$e153978_ _typedecl153973_))
                        (if _$e153978_
                            _$e153978_
                            (let ()
                              (declare (not safe))
                              (error '"Cannot generate typedecl for inline rules"))))
                      (let ((__tmp156224
                             (let ((__tmp156225
                                    (let ()
                                      (declare (not safe))
                                      (cons _dispatch153975_ '()))))
                               (declare (not safe))
                               (cons _arity153976_ __tmp156225))))
                        (declare (not safe))
                        (cons '@lambda __tmp156224))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self153956153966_ 'gxc#!lambda::t))
              (let* ((_e153960153984_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153956153966_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e153961153987_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153956153966_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity153990_ _e153961153987_)
                     (_e153962153992_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153956153966_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch153995_ _e153962153992_)
                     (_e153963153997_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153956153966_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline154000_ _e153963153997_)
                     (_e153964154002_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153956153966_
                         '5
                         gxc#!lambda::t
                         '#f)))
                     (_typedecl154005_ _e153964154002_))
                (declare (not safe))
                (_K153959153981_
                 _typedecl154005_
                 _inline154000_
                 _dispatch153995_
                 _arity153990_))
              (let () (declare (not safe)) (_E153958153970_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_self153766_)
        (letrec ((_clause-e153768_
                  (lambda (_clause153798_)
                    (let* ((_clause153799153807_ _clause153798_)
                           (_E153801153811_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _clause153799153807_))))
                           (_K153802153817_
                            (lambda (_dispatch153814_ _arity153815_)
                              (let ((__tmp156226
                                     (let ()
                                       (declare (not safe))
                                       (cons _dispatch153814_ '()))))
                                (declare (not safe))
                                (cons _arity153815_ __tmp156226)))))
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _clause153799153807_
                             'gxc#!lambda::t))
                          (let* ((_e153803153820_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause153799153807_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                                 (_e153804153823_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause153799153807_
                                     '2
                                     gxc#!lambda::t
                                     '#f)))
                                 (_arity153826_ _e153804153823_)
                                 (_e153805153828_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause153799153807_
                                     '3
                                     gxc#!lambda::t
                                     '#f)))
                                 (_dispatch153831_ _e153805153828_))
                            (declare (not safe))
                            (_K153802153817_ _dispatch153831_ _arity153826_))
                          (let () (declare (not safe)) (_E153801153811_)))))))
          (let* ((_self153769153776_ _self153766_)
                 (_E153771153780_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching" _self153769153776_))))
                 (_K153772153787_
                  (lambda (_clauses153783_)
                    (let ((_clauses153785_
                           (map _clause-e153768_ _clauses153783_)))
                      (declare (not safe))
                      (cons '@case-lambda _clauses153785_)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of?
                   _self153769153776_
                   'gxc#!case-lambda::t))
                (let* ((_e153773153790_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self153769153776_
                           '1
                           gxc#!type::t
                           '#f)))
                       (_e153774153793_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self153769153776_
                           '2
                           gxc#!case-lambda::t
                           '#f)))
                       (_clauses153796_ _e153774153793_))
                  (declare (not safe))
                  (_K153772153787_ _clauses153796_))
                (let () (declare (not safe)) (_E153771153780_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_self153609_)
        (let* ((_self153610153618_ _self153609_)
               (_E153612153622_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self153610153618_))))
               (_K153613153628_
                (lambda (_dispatch153625_ _table153626_)
                  (let ((__tmp156227
                         (let ((__tmp156228
                                (let ()
                                  (declare (not safe))
                                  (cons _dispatch153625_ '()))))
                           (declare (not safe))
                           (cons _table153626_ __tmp156228))))
                    (declare (not safe))
                    (cons '@kw-lambda __tmp156227)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self153610153618_
                 'gxc#!kw-lambda::t))
              (let* ((_e153614153631_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153610153618_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e153615153634_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153610153618_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table153637_ _e153615153634_)
                     (_e153616153639_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153610153618_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch153642_ _e153616153639_))
                (declare (not safe))
                (_K153613153628_ _dispatch153642_ _table153637_))
              (let () (declare (not safe)) (_E153612153622_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda::t
       'typedecl
       gxc#!kw-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_self153452_)
        (let* ((_self153453153461_ _self153452_)
               (_E153455153465_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self153453153461_))))
               (_K153456153471_
                (lambda (_main153468_ _keys153469_)
                  (let ((__tmp156229
                         (let ((__tmp156230
                                (let ()
                                  (declare (not safe))
                                  (cons _main153468_ '()))))
                           (declare (not safe))
                           (cons _keys153469_ __tmp156230))))
                    (declare (not safe))
                    (cons '@kw-lambda-dispatch __tmp156229)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self153453153461_
                 'gxc#!kw-lambda-primary::t))
              (let* ((_e153457153474_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153453153461_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e153458153477_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153453153461_
                         '2
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_keys153480_ _e153458153477_)
                     (_e153459153482_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153453153461_
                         '3
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_main153485_ _e153459153482_))
                (declare (not safe))
                (_K153456153471_ _main153485_ _keys153480_))
              (let () (declare (not safe)) (_E153455153465_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))))
