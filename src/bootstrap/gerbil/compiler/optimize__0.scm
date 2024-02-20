(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1708387693)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (gxc#current-compile-optimizer-info)
            '#!void
            (gxc#current-compile-optimizer-info
             (let ((__obj156081
                    (let ()
                      (declare (not safe))
                      (##structure gxc#optimizer-info::t '#f '#f '#f))))
               (gxc#optimizer-info:::init! __obj156081)
               __obj156081)))))
    (define gxc#optimize!
      (lambda (_ctx155774_)
        (let ((__tmp156085
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _ctx155774_))
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-builtin-ssxi))
                 (let ((__tmp156087
                        (##structure-ref
                         (gxc#current-compile-optimizer-info)
                         '2
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp156086
                        (##structure-ref
                         _ctx155774_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp156087 __tmp156086 '#t))
                 (let ((_code155777_
                        (let ((__tmp156088
                               (##structure-ref
                                _ctx155774_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp156088))))
                   (##structure-set!
                    _ctx155774_
                    _code155777_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp156084 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp156083 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters
           __tmp156085
           gxc#current-compile-mutators
           __tmp156084
           gxc#current-compile-local-type
           __tmp156083))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda ()
        (letrec ((_load-it!155770_
                  (lambda (_id155772_)
                    (if (let ((__tmp156090
                               (##structure-ref
                                (gxc#current-compile-optimizer-info)
                                '2
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp156090 _id155772_))
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-import-ssxi-by-id _id155772_))
                          (let ((__tmp156089
                                 (##structure-ref
                                  (gxc#current-compile-optimizer-info)
                                  '2
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp156089 _id155772_ '#t)))))))
          (for-each
           _load-it!155770_
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
      (lambda (_ctx155714_)
        (letrec* ((_deps155716_
                   (let* ((_imports155760_
                           (##structure-ref
                            _ctx155714_
                            '8
                            gx#module-context::t
                            '#f))
                          (_$e155762_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _ctx155714_))))
                     (if _$e155762_
                         ((lambda (_g155764155766_)
                            (let ()
                              (declare (not safe))
                              (cons _g155764155766_ _imports155760_)))
                          _$e155762_)
                         _imports155760_))))
          (let _lp155718_ ((_rest155720_ _deps155716_))
            (let* ((_rest155721155729_ _rest155720_)
                   (_else155723155737_ (lambda () '#!void))
                   (_K155725155748_
                    (lambda (_rest155740_ _hd155741_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _hd155741_
                             'gx#module-context::t))
                          (begin
                            (if (let ((__tmp156104
                                       (##structure-ref
                                        (gxc#current-compile-optimizer-info)
                                        '2
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp156103
                                       (##structure-ref
                                        _hd155741_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (hash-get __tmp156104 __tmp156103))
                                '#!void
                                (begin
                                  (let ((_$e155743_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _hd155741_))))
                                    (if _$e155743_
                                        ((lambda (_pre155746_)
                                           (let ((__tmp156101
                                                  (let ((__tmp156102
                                                         (##structure-ref
                                                          _hd155741_
                                                          '8
                                                          gx#module-context::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (cons _pre155746_
                                                          __tmp156102))))
                                             (declare (not safe))
                                             (_lp155718_ __tmp156101)))
                                         _$e155743_)
                                        (let ((__tmp156100
                                               (##structure-ref
                                                _hd155741_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                          (declare (not safe))
                                          (_lp155718_ __tmp156100))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _hd155741_))))
                            (let ()
                              (declare (not safe))
                              (_lp155718_ _rest155740_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _hd155741_
                                 'gx#prelude-context::t))
                              (begin
                                (if (let ((__tmp156099
                                           (##structure-ref
                                            (gxc#current-compile-optimizer-info)
                                            '2
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp156098
                                           (##structure-ref
                                            _hd155741_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (hash-get __tmp156099 __tmp156098))
                                    '#!void
                                    (begin
                                      (let ((__tmp156097
                                             (##structure-ref
                                              _hd155741_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_lp155718_ __tmp156097))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi _hd155741_))))
                                (let ()
                                  (declare (not safe))
                                  (_lp155718_ _rest155740_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _hd155741_
                                     'gx#module-import::t))
                                  (let ((__tmp156095
                                         (let ((__tmp156096
                                                (##direct-structure-ref
                                                 _hd155741_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp156096 _rest155740_))))
                                    (declare (not safe))
                                    (_lp155718_ __tmp156095))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _hd155741_
                                         'gx#module-export::t))
                                      (let ((__tmp156093
                                             (let ((__tmp156094
                                                    (##direct-structure-ref
                                                     _hd155741_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp156094
                                                     _rest155740_))))
                                        (declare (not safe))
                                        (_lp155718_ __tmp156093))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _hd155741_
                                             'gx#import-set::t))
                                          (let ((__tmp156091
                                                 (let ((__tmp156092
                                                        (##direct-structure-ref
                                                         _hd155741_
                                                         '1
                                                         gx#import-set::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp156092
                                                         _rest155740_))))
                                            (declare (not safe))
                                            (_lp155718_ __tmp156091))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _hd155741_))))))))))
              (if (let () (declare (not safe)) (##pair? _rest155721155729_))
                  (let ((_hd155726155751_
                         (let ()
                           (declare (not safe))
                           (##car _rest155721155729_)))
                        (_tl155727155753_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest155721155729_))))
                    (let* ((_hd155756_ _hd155726155751_)
                           (_rest155758_ _tl155727155753_))
                      (declare (not safe))
                      (_K155725155748_ _rest155758_ _hd155756_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_ctx155694_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _ctx155694_
                    'gx#module-context::t))
                 (let ((__tmp156105
                        (##structure-ref
                         _ctx155694_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp156105)))
            '#!void
            (let* ((_ht155696_
                    (##structure-ref
                     (gxc#current-compile-optimizer-info)
                     '2
                     gxc#optimizer-info::t
                     '#f))
                   (_id155698_
                    (##structure-ref
                     _ctx155694_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_mod155700_
                    (let ()
                      (declare (not safe))
                      (hash-get _ht155696_ _id155698_))))
              (let ((_$e155703_ _mod155700_))
                (if _$e155703_
                    _$e155703_
                    (let* ((_mod155706_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-import-ssxi _ctx155694_)))
                           (_val155711_
                            (let ((_$e155708_ _mod155706_))
                              (if _$e155708_ _$e155708_ '#!void))))
                      (let ()
                        (declare (not safe))
                        (hash-put! _ht155696_ _id155698_ _val155711_))
                      _val155711_)))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_ctx155692_)
        (if (##structure-ref _ctx155692_ '1 gx#expander-context::t '#f)
            (let ((__tmp156106
                   (##structure-ref
                    _ctx155692_
                    '1
                    gx#expander-context::t
                    '#f)))
              (declare (not safe))
              (gxc#optimizer-import-ssxi-by-id __tmp156106))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_id155669_)
        (letrec ((_catch-e155671_
                  (lambda (_exn155690_)
                    (if (gxc#current-compile-verbose)
                        (begin
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"Failed to load ssxi module for "
                             _id155669_))
                          (display-exception _exn155690_))
                        '#!void)
                    '#f))
                 (_import-e155672_
                  (lambda ()
                    (let* ((_str-id155675_
                            (string-append
                             (let ()
                               (declare (not safe))
                               (gxc#module-id->path-string _id155669_))
                             '".ssxi"))
                           (_artefact-path155683_
                            (let ((_odir155676155678_
                                   (gxc#current-compile-output-dir)))
                              (if _odir155676155678_
                                  (let ((_odir155681_ _odir155676155678_))
                                    (path-expand
                                     (string-append _str-id155675_ '".ss")
                                     _odir155681_))
                                  '#f)))
                           (_library-path155685_
                            (string->symbol
                             (string-append '":" _str-id155675_ '".ss")))
                           (_ssxi-path155687_
                            (if (and _artefact-path155683_
                                     (file-exists? _artefact-path155683_))
                                _artefact-path155683_
                                _library-path155685_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _ssxi-path155687_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _ssxi-path155687_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (with-catch _catch-e155671_ _import-e155672_)))))
    (define gxc#optimize-source
      (lambda (_stx155660_)
        (let () (declare (not safe)) (gxc#apply-collect-mutators _stx155660_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _stx155660_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _stx155660_))
        (let* ((_stx155662_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _stx155660_)))
               (_stx155664_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _stx155662_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _stx155664_))
          (let ((_stx155667_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _stx155664_))))
            (declare (not safe))
            (gxc#apply-optimize-call _stx155667_)))))
    (define gxc#&generate-ssxi
      (make-promise
       (lambda ()
         (let ((_tbl155657_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp156107 (force gxc#&generate-runtime-empty)))
             (declare (not safe))
             (hash-merge! _tbl155657_ __tmp156107))
           (let ()
             (declare (not safe))
             (hash-put! _tbl155657_ '%#begin gxc#generate-runtime-begin%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl155657_
              '%#begin-syntax
              gxc#generate-ssxi-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl155657_ '%#module gxc#generate-ssxi-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl155657_
              '%#define-values
              gxc#generate-ssxi-define-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl155657_ '%#call gxc#generate-ssxi-call%))
           _tbl155657_))))
    (define gxc#apply-generate-ssxi
      (lambda (_stx155640_ . _args155642_)
        (let ((__tmp156109
               (lambda ()
                 (declare (not safe))
                 (if (null? _args155642_)
                     (gxc#compile-e__0 _stx155640_)
                     (let ((_arg1155647_ (car _args155642_))
                           (_rest155649_ (cdr _args155642_)))
                       (if (null? _rest155649_)
                           (gxc#compile-e__1 _stx155640_ _arg1155647_)
                           (let ((_arg2155652_ (car _rest155649_))
                                 (_rest155654_ (cdr _rest155649_)))
                             (if (null? _rest155654_)
                                 (gxc#compile-e__2
                                  _stx155640_
                                  _arg1155647_
                                  _arg2155652_)
                                 (apply gxc#compile-e
                                        _stx155640_
                                        _arg1155647_
                                        _arg2155652_
                                        _rest155654_))))))))
              (__tmp156108 (force gxc#&generate-ssxi)))
          (declare (not safe))
          (call-with-parameters
           __tmp156109
           gxc#current-compile-methods
           __tmp156108))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_stx155601_)
        (let* ((_g155603155613_
                (lambda (_g155604155610_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g155604155610_))))
               (_g155602155637_
                (lambda (_g155604155616_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g155604155616_))
                      (let ((_e155608155618_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g155604155616_))))
                        (let ((_hd155607155621_
                               (let ()
                                 (declare (not safe))
                                 (##car _e155608155618_)))
                              (_tl155606155623_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e155608155618_))))
                          ((lambda (_L155626_)
                             (let ((__tmp156112
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _stx155601_))))
                                   (__tmp156110
                                    (let ((__tmp156111
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp156111 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp156112
                                gx#current-expander-phi
                                __tmp156110)))
                           _tl155606155623_)))
                      (let ()
                        (declare (not safe))
                        (_g155603155613_ _g155604155616_))))))
          (declare (not safe))
          (_g155602155637_ _stx155601_))))
    (define gxc#generate-ssxi-module%
      (lambda (_stx155541_)
        (let* ((_g155543155557_
                (lambda (_g155544155554_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g155544155554_))))
               (_g155542155598_
                (lambda (_g155544155560_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g155544155560_))
                      (let ((_e155549155562_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g155544155560_))))
                        (let ((_hd155548155565_
                               (let ()
                                 (declare (not safe))
                                 (##car _e155549155562_)))
                              (_tl155547155567_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e155549155562_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl155547155567_))
                              (let ((_e155552155570_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl155547155567_))))
                                (let ((_hd155551155573_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e155552155570_)))
                                      (_tl155550155575_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e155552155570_))))
                                  ((lambda (_L155578_ _L155579_)
                                     (let* ((_ctx155592_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L155579_)))
                                            (_code155594_
                                             (##structure-ref
                                              _ctx155592_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp156113
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _code155594_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp156113
                                          gx#current-expander-context
                                          _ctx155592_))))
                                   _tl155550155575_
                                   _hd155551155573_)))
                              (let ()
                                (declare (not safe))
                                (_g155543155557_ _g155544155560_)))))
                      (let ()
                        (declare (not safe))
                        (_g155543155557_ _g155544155560_))))))
          (declare (not safe))
          (_g155542155598_ _stx155541_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_stx155351_)
        (letrec ((_generate-e155353_
                  (lambda (_id155530_)
                    (let* ((_sym155532_
                            (if (let ((__tmp156114
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp156114))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _id155530_))
                                '#f))
                           (_$e155534_
                            (if _sym155532_
                                (let ()
                                  (declare (not safe))
                                  (gxc#optimizer-lookup-type _sym155532_))
                                '#f)))
                      (if _$e155534_
                          ((lambda (_type155537_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"generate typedecl " _sym155532_))
                             (let* ((_typedecl155539_
                                     (let ((__method156082
                                            (let ()
                                              (declare (not safe))
                                              (method-ref
                                               _type155537_
                                               'typedecl))))
                                       (if __method156082
                                           (__method156082 _type155537_)
                                           (let ()
                                             (declare (not safe))
                                             (error '"Missing method"
                                                    _type155537_
                                                    'typedecl)))))
                                    (__tmp156115
                                     (let ((__tmp156116
                                            (let ()
                                              (declare (not safe))
                                              (cons _typedecl155539_ '()))))
                                       (declare (not safe))
                                       (cons _sym155532_ __tmp156116))))
                               (declare (not safe))
                               (cons 'declare-type __tmp156115)))
                           _$e155534_)
                          '(begin))))))
          (let* ((___stx155780155781_ _stx155351_)
                 (_g155356155394_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx155780155781_)))))
            (let ((___kont155782155783_
                   (lambda (_L155512_)
                     (let ()
                       (declare (not safe))
                       (_generate-e155353_ _L155512_))))
                  (___kont155784155785_
                   (lambda (_L155447_)
                     (let ((_types155473_
                            (map _generate-e155353_
                                 (let ((__tmp156117
                                        (lambda (_g155465155468_
                                                 _g155466155470_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g155465155468_
                                                  _g155466155470_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp156117 '() _L155447_)))))
                       (declare (not safe))
                       (cons 'begin _types155473_)))))
              (let ((___match155835155836_
                     (lambda (_e155374155399_
                              _hd155373155402_
                              _tl155372155404_
                              _e155377155407_
                              _hd155376155410_
                              _tl155375155412_
                              ___splice155786155787_
                              _target155378155415_
                              _tl155380155417_)
                       (letrec ((_loop155381155420_
                                 (lambda (_hd155379155423_ _id155385155425_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd155379155423_))
                                       (let ((_e155382155428_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd155379155423_))))
                                         (let ((_lp-tl155384155433_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e155382155428_)))
                                               (_lp-hd155383155431_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e155382155428_))))
                                           (let ((__tmp156118
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd155383155431_
                                                          _id155385155425_))))
                                             (declare (not safe))
                                             (_loop155381155420_
                                              _lp-tl155384155433_
                                              __tmp156118))))
                                       (let ((_id155386155436_
                                              (reverse _id155385155425_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl155375155412_))
                                             (let ((_e155389155439_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl155375155412_))))
                                               (let ((_tl155387155444_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e155389155439_)))
                                                     (_hd155388155442_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e155389155439_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl155387155444_))
                                                     (___kont155784155785_
                                                      _id155386155436_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g155356155394_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g155356155394_))))))))
                         (let ()
                           (declare (not safe))
                           (_loop155381155420_ _target155378155415_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx155780155781_))
                    (let ((_e155361155480_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx155780155781_))))
                      (let ((_tl155359155485_
                             (let ()
                               (declare (not safe))
                               (##cdr _e155361155480_)))
                            (_hd155360155483_
                             (let ()
                               (declare (not safe))
                               (##car _e155361155480_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl155359155485_))
                            (let ((_e155364155488_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl155359155485_))))
                              (let ((_tl155362155493_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e155364155488_)))
                                    (_hd155363155491_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e155364155488_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd155363155491_))
                                    (let ((_e155367155496_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd155363155491_))))
                                      (let ((_tl155365155501_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e155367155496_)))
                                            (_hd155366155499_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e155367155496_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl155365155501_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl155362155493_))
                                                (let ((_e155370155504_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl155362155493_))))
                                                  (let ((_tl155368155509_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e155370155504_)))
                                                        (_hd155369155507_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e155370155504_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl155368155509_))
                                                        (___kont155782155783_
                                                         _hd155366155499_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _hd155363155491_))
                                                            (let ((___splice155786155787_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _hd155363155491_ '0))))
                      (let ((_tl155380155417_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice155786155787_ '1)))
                            (_target155378155415_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice155786155787_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl155380155417_))
                            (___match155835155836_
                             _e155361155480_
                             _hd155360155483_
                             _tl155359155485_
                             _e155364155488_
                             _hd155363155491_
                             _tl155362155493_
                             ___splice155786155787_
                             _target155378155415_
                             _tl155380155417_)
                            (let () (declare (not safe)) (_g155356155394_)))))
                    (let () (declare (not safe)) (_g155356155394_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _hd155363155491_))
                                                    (let ((___splice155786155787_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _hd155363155491_
                                                              '0))))
                                                      (let ((_tl155380155417_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice155786155787_ '1)))
                    (_target155378155415_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice155786155787_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl155380155417_))
                    (___match155835155836_
                     _e155361155480_
                     _hd155360155483_
                     _tl155359155485_
                     _e155364155488_
                     _hd155363155491_
                     _tl155362155493_
                     ___splice155786155787_
                     _target155378155415_
                     _tl155380155417_)
                    (let () (declare (not safe)) (_g155356155394_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g155356155394_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _hd155363155491_))
                                                (let ((___splice155786155787_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _hd155363155491_
                                                          '0))))
                                                  (let ((_tl155380155417_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice155786155787_
                                                            '1)))
                                                        (_target155378155415_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice155786155787_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl155380155417_))
                                                        (___match155835155836_
                                                         _e155361155480_
                                                         _hd155360155483_
                                                         _tl155359155485_
                                                         _e155364155488_
                                                         _hd155363155491_
                                                         _tl155362155493_
                                                         ___splice155786155787_
                                                         _target155378155415_
                                                         _tl155380155417_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g155356155394_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g155356155394_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd155363155491_))
                                        (let ((___splice155786155787_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd155363155491_
                                                  '0))))
                                          (let ((_tl155380155417_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice155786155787_
                                                    '1)))
                                                (_target155378155415_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice155786155787_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl155380155417_))
                                                (___match155835155836_
                                                 _e155361155480_
                                                 _hd155360155483_
                                                 _tl155359155485_
                                                 _e155364155488_
                                                 _hd155363155491_
                                                 _tl155362155493_
                                                 ___splice155786155787_
                                                 _target155378155415_
                                                 _tl155380155417_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g155356155394_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g155356155394_))))))
                            (let () (declare (not safe)) (_g155356155394_)))))
                    (let () (declare (not safe)) (_g155356155394_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_stx154905_)
        (let* ((___stx155838155839_ _stx154905_)
               (_g154909155011_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx155838155839_)))))
          (let ((___kont155840155841_
                 (lambda (_L155301_ _L155302_ _L155303_ _L155304_ _L155305_)
                   (let ((__tmp156119
                          (let ((__tmp156126
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L155304_)))
                                (__tmp156120
                                 (let ((__tmp156125
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L155303_)))
                                       (__tmp156121
                                        (let ((__tmp156124
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L155302_)))
                                              (__tmp156122
                                               (let ((__tmp156123
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L155301_))))
                                                 (declare (not safe))
                                                 (cons __tmp156123 '()))))
                                          (declare (not safe))
                                          (cons __tmp156124 __tmp156122))))
                                   (declare (not safe))
                                   (cons __tmp156125 __tmp156121))))
                            (declare (not safe))
                            (cons __tmp156126 __tmp156120))))
                     (declare (not safe))
                     (cons 'declare-method __tmp156119))))
                (___kont155842155843_
                 (lambda (_L155127_ _L155128_ _L155129_ _L155130_)
                   (let ((__tmp156127
                          (let ((__tmp156133
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L155129_)))
                                (__tmp156128
                                 (let ((__tmp156132
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L155128_)))
                                       (__tmp156129
                                        (let ((__tmp156131
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L155127_)))
                                              (__tmp156130
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '#f '()))))
                                          (declare (not safe))
                                          (cons __tmp156131 __tmp156130))))
                                   (declare (not safe))
                                   (cons __tmp156132 __tmp156129))))
                            (declare (not safe))
                            (cons __tmp156133 __tmp156128))))
                     (declare (not safe))
                     (cons 'declare-method __tmp156127))))
                (___kont155844155845_ (lambda () '(begin))))
            (let ((___match155973155974_
                   (lambda (_e154918155173_
                            _hd154917155176_
                            _tl154916155178_
                            _e154921155181_
                            _hd154920155184_
                            _tl154919155186_
                            _e154924155189_
                            _hd154923155192_
                            _tl154922155194_
                            _e154927155197_
                            _hd154926155200_
                            _tl154925155202_
                            _e154930155205_
                            _hd154929155208_
                            _tl154928155210_
                            _e154933155213_
                            _hd154932155216_
                            _tl154931155218_
                            _e154936155221_
                            _hd154935155224_
                            _tl154934155226_
                            _e154939155229_
                            _hd154938155232_
                            _tl154937155234_
                            _e154942155237_
                            _hd154941155240_
                            _tl154940155242_
                            _e154945155245_
                            _hd154944155248_
                            _tl154943155250_
                            _e154948155253_
                            _hd154947155256_
                            _tl154946155258_
                            _e154951155261_
                            _hd154950155264_
                            _tl154949155266_
                            _e154954155269_
                            _hd154953155272_
                            _tl154952155274_
                            _e154957155277_
                            _hd154956155280_
                            _tl154955155282_
                            _e154960155285_
                            _hd154959155288_
                            _tl154958155290_
                            _e154963155293_
                            _hd154962155296_
                            _tl154961155298_)
                     (let ((_L155301_ _hd154962155296_)
                           (_L155302_ _hd154953155272_)
                           (_L155303_ _hd154944155248_)
                           (_L155304_ _hd154935155224_)
                           (_L155305_ _hd154926155200_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L155305_
                              'bind-method!))
                           (___kont155840155841_
                            _L155301_
                            _L155302_
                            _L155303_
                            _L155304_
                            _L155305_)
                           (___kont155844155845_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx155838155839_))
                  (let ((_e154918155173_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx155838155839_))))
                    (let ((_tl154916155178_
                           (let ()
                             (declare (not safe))
                             (##cdr _e154918155173_)))
                          (_hd154917155176_
                           (let ()
                             (declare (not safe))
                             (##car _e154918155173_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl154916155178_))
                          (let ((_e154921155181_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl154916155178_))))
                            (let ((_tl154919155186_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e154921155181_)))
                                  (_hd154920155184_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e154921155181_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd154920155184_))
                                  (let ((_e154924155189_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd154920155184_))))
                                    (let ((_tl154922155194_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e154924155189_)))
                                          (_hd154923155192_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e154924155189_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd154923155192_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd154923155192_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl154922155194_))
                                                  (let ((_e154927155197_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl154922155194_))))
                                                    (let ((_tl154925155202_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e154927155197_)))
                                                          (_hd154926155200_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e154927155197_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl154925155202_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl154919155186_))
                      (let ((_e154930155205_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl154919155186_))))
                        (let ((_tl154928155210_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e154930155205_)))
                              (_hd154929155208_
                               (let ()
                                 (declare (not safe))
                                 (##car _e154930155205_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd154929155208_))
                              (let ((_e154933155213_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd154929155208_))))
                                (let ((_tl154931155218_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e154933155213_)))
                                      (_hd154932155216_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e154933155213_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd154932155216_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd154932155216_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl154931155218_))
                                              (let ((_e154936155221_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl154931155218_))))
                                                (let ((_tl154934155226_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e154936155221_)))
                                                      (_hd154935155224_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e154936155221_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl154934155226_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl154928155210_))
                                                          (let ((_e154939155229_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl154928155210_))))
                    (let ((_tl154937155234_
                           (let ()
                             (declare (not safe))
                             (##cdr _e154939155229_)))
                          (_hd154938155232_
                           (let ()
                             (declare (not safe))
                             (##car _e154939155229_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd154938155232_))
                          (let ((_e154942155237_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd154938155232_))))
                            (let ((_tl154940155242_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e154942155237_)))
                                  (_hd154941155240_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e154942155237_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd154941155240_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd154941155240_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl154940155242_))
                                          (let ((_e154945155245_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl154940155242_))))
                                            (let ((_tl154943155250_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e154945155245_)))
                                                  (_hd154944155248_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e154945155245_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl154943155250_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl154937155234_))
                                                      (let ((_e154948155253_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl154937155234_))))
                (let ((_tl154946155258_
                       (let () (declare (not safe)) (##cdr _e154948155253_)))
                      (_hd154947155256_
                       (let () (declare (not safe)) (##car _e154948155253_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd154947155256_))
                      (let ((_e154951155261_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd154947155256_))))
                        (let ((_tl154949155266_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e154951155261_)))
                              (_hd154950155264_
                               (let ()
                                 (declare (not safe))
                                 (##car _e154951155261_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd154950155264_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd154950155264_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl154949155266_))
                                      (let ((_e154954155269_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl154949155266_))))
                                        (let ((_tl154952155274_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e154954155269_)))
                                              (_hd154953155272_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e154954155269_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl154952155274_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl154946155258_))
                                                  (let ((_e154957155277_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl154946155258_))))
                                                    (let ((_tl154955155282_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e154957155277_)))
                                                          (_hd154956155280_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e154957155277_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd154956155280_))
                                                          (let ((_e154960155285_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd154956155280_))))
                    (let ((_tl154958155290_
                           (let ()
                             (declare (not safe))
                             (##cdr _e154960155285_)))
                          (_hd154959155288_
                           (let ()
                             (declare (not safe))
                             (##car _e154960155285_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd154959155288_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd154959155288_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl154958155290_))
                                  (let ((_e154963155293_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl154958155290_))))
                                    (let ((_tl154961155298_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e154963155293_)))
                                          (_hd154962155296_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e154963155293_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl154961155298_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl154955155282_))
                                              (___match155973155974_
                                               _e154918155173_
                                               _hd154917155176_
                                               _tl154916155178_
                                               _e154921155181_
                                               _hd154920155184_
                                               _tl154919155186_
                                               _e154924155189_
                                               _hd154923155192_
                                               _tl154922155194_
                                               _e154927155197_
                                               _hd154926155200_
                                               _tl154925155202_
                                               _e154930155205_
                                               _hd154929155208_
                                               _tl154928155210_
                                               _e154933155213_
                                               _hd154932155216_
                                               _tl154931155218_
                                               _e154936155221_
                                               _hd154935155224_
                                               _tl154934155226_
                                               _e154939155229_
                                               _hd154938155232_
                                               _tl154937155234_
                                               _e154942155237_
                                               _hd154941155240_
                                               _tl154940155242_
                                               _e154945155245_
                                               _hd154944155248_
                                               _tl154943155250_
                                               _e154948155253_
                                               _hd154947155256_
                                               _tl154946155258_
                                               _e154951155261_
                                               _hd154950155264_
                                               _tl154949155266_
                                               _e154954155269_
                                               _hd154953155272_
                                               _tl154952155274_
                                               _e154957155277_
                                               _hd154956155280_
                                               _tl154955155282_
                                               _e154960155285_
                                               _hd154959155288_
                                               _tl154958155290_
                                               _e154963155293_
                                               _hd154962155296_
                                               _tl154961155298_)
                                              (___kont155844155845_))
                                          (___kont155844155845_))))
                                  (___kont155844155845_))
                              (___kont155844155845_))
                          (___kont155844155845_))))
                  (___kont155844155845_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl154946155258_))
                                                      (if (let ((__tmp156134
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp156134 'bind-method!))
                  (let ((_L155127_ _hd154953155272_)
                        (_L155128_ _hd154944155248_)
                        (_L155129_ _hd154935155224_)
                        (_L155130_ _hd154926155200_))
                    (___kont155842155843_
                     _L155127_
                     _L155128_
                     _L155129_
                     _L155130_))
                  (___kont155844155845_))
              (___kont155844155845_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont155844155845_))))
                                      (___kont155844155845_))
                                  (___kont155844155845_))
                              (___kont155844155845_))))
                      (___kont155844155845_))))
              (___kont155844155845_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont155844155845_))))
                                          (___kont155844155845_))
                                      (___kont155844155845_))
                                  (___kont155844155845_))))
                          (___kont155844155845_))))
                  (___kont155844155845_))
              (___kont155844155845_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont155844155845_))
                                          (___kont155844155845_))
                                      (___kont155844155845_))))
                              (___kont155844155845_))))
                      (___kont155844155845_))
                  (___kont155844155845_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont155844155845_))
                                              (___kont155844155845_))
                                          (___kont155844155845_))))
                                  (___kont155844155845_))))
                          (___kont155844155845_))))
                  (___kont155844155845_)))))))
    (define gxc#!alias::typedecl
      (lambda (_self154881_)
        (let* ((_self154882154888_ _self154881_)
               (_E154884154892_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154882154888_))))
               (_K154885154897_
                (lambda (_alias-id154895_)
                  (let ((__tmp156135
                         (let ()
                           (declare (not safe))
                           (cons _alias-id154895_ '()))))
                    (declare (not safe))
                    (cons '@alias __tmp156135)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self154882154888_ 'gxc#!alias::t))
              (let* ((_e154886154900_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154882154888_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_alias-id154903_ _e154886154900_))
                (declare (not safe))
                (_K154885154897_ _alias-id154903_))
              (let () (declare (not safe)) (_E154884154892_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_self154672_)
        (let* ((_self154673154688_ _self154672_)
               (_E154675154692_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154673154688_))))
               (_K154676154706_
                (lambda (_methods154695_
                         _metaclass154696_
                         _final?154697_
                         _struct?154698_
                         _constructor154699_
                         _fields154700_
                         _slots154701_
                         _precendence-list154702_
                         _super154703_
                         _id154704_)
                  (let ((__tmp156136
                         (let ((__tmp156137
                                (let ((__tmp156138
                                       (let ((__tmp156139
                                              (let ((__tmp156140
                                                     (let ((__tmp156141
                                                            (let ((__tmp156142
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp156143
                                  (let ((__tmp156144
                                         (let ((__tmp156145
                                                (let ((__tmp156146
                                                       (if _methods154695_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (hash->list
                                                              _methods154695_))
                                                           '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp156146 '()))))
                                           (declare (not safe))
                                           (cons _metaclass154696_
                                                 __tmp156145))))
                                    (declare (not safe))
                                    (cons _final?154697_ __tmp156144))))
                             (declare (not safe))
                             (cons _struct?154698_ __tmp156143))))
                      (declare (not safe))
                      (cons _constructor154699_ __tmp156142))))
               (declare (not safe))
               (cons _fields154700_ __tmp156141))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _slots154701_
                                                      __tmp156140))))
                                         (declare (not safe))
                                         (cons _precendence-list154702_
                                               __tmp156139))))
                                  (declare (not safe))
                                  (cons _super154703_ __tmp156138))))
                           (declare (not safe))
                           (cons _id154704_ __tmp156137))))
                    (declare (not safe))
                    (cons '@class __tmp156136)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self154673154688_ 'gxc#!class::t))
              (let* ((_e154677154709_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154673154688_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_id154712_ _e154677154709_)
                     (_e154678154714_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154673154688_
                         '2
                         gxc#!class::t
                         '#f)))
                     (_super154717_ _e154678154714_)
                     (_e154679154719_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154673154688_
                         '3
                         gxc#!class::t
                         '#f)))
                     (_precendence-list154722_ _e154679154719_)
                     (_e154680154724_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154673154688_
                         '4
                         gxc#!class::t
                         '#f)))
                     (_slots154727_ _e154680154724_)
                     (_e154681154729_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154673154688_
                         '5
                         gxc#!class::t
                         '#f)))
                     (_fields154732_ _e154681154729_)
                     (_e154682154734_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154673154688_
                         '6
                         gxc#!class::t
                         '#f)))
                     (_constructor154737_ _e154682154734_)
                     (_e154683154739_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154673154688_
                         '7
                         gxc#!class::t
                         '#f)))
                     (_struct?154742_ _e154683154739_)
                     (_e154684154744_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154673154688_
                         '8
                         gxc#!class::t
                         '#f)))
                     (_final?154747_ _e154684154744_)
                     (_e154685154749_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154673154688_
                         '9
                         gxc#!class::t
                         '#f)))
                     (_metaclass154752_ _e154685154749_)
                     (_e154686154754_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154673154688_
                         '10
                         gxc#!class::t
                         '#f)))
                     (_methods154757_ _e154686154754_))
                (declare (not safe))
                (_K154676154706_
                 _methods154757_
                 _metaclass154752_
                 _final?154747_
                 _struct?154742_
                 _constructor154737_
                 _fields154732_
                 _slots154727_
                 _precendence-list154722_
                 _super154717_
                 _id154712_))
              (let () (declare (not safe)) (_E154675154692_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_self154526_)
        (let* ((_self154527154533_ _self154526_)
               (_E154529154537_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154527154533_))))
               (_K154530154542_
                (lambda (_klass-id154540_)
                  (let ((__tmp156147
                         (let ()
                           (declare (not safe))
                           (cons _klass-id154540_ '()))))
                    (declare (not safe))
                    (cons '@predicate __tmp156147)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self154527154533_
                 'gxc#!predicate::t))
              (let* ((_e154531154545_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154527154533_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id154548_ _e154531154545_))
                (declare (not safe))
                (_K154530154542_ _klass-id154548_))
              (let () (declare (not safe)) (_E154529154537_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_self154380_)
        (let* ((_self154381154387_ _self154380_)
               (_E154383154391_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154381154387_))))
               (_K154384154396_
                (lambda (_klass-id154394_)
                  (let ((__tmp156148
                         (let ()
                           (declare (not safe))
                           (cons _klass-id154394_ '()))))
                    (declare (not safe))
                    (cons '@constructor __tmp156148)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self154381154387_
                 'gxc#!constructor::t))
              (let* ((_e154385154399_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154381154387_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id154402_ _e154385154399_))
                (declare (not safe))
                (_K154384154396_ _klass-id154402_))
              (let () (declare (not safe)) (_E154383154391_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_self154220_)
        (let* ((_self154221154229_ _self154220_)
               (_E154223154233_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154221154229_))))
               (_K154224154240_
                (lambda (_checked?154236_ _slot154237_ _klass-id154238_)
                  (let ((__tmp156149
                         (let ((__tmp156150
                                (let ((__tmp156151
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?154236_ '()))))
                                  (declare (not safe))
                                  (cons _slot154237_ __tmp156151))))
                           (declare (not safe))
                           (cons _klass-id154238_ __tmp156150))))
                    (declare (not safe))
                    (cons '@accessor __tmp156149)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self154221154229_
                 'gxc#!accessor::t))
              (let* ((_e154225154243_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154221154229_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id154246_ _e154225154243_)
                     (_e154226154248_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154221154229_
                         '2
                         gxc#!accessor::t
                         '#f)))
                     (_slot154251_ _e154226154248_)
                     (_e154227154253_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154221154229_
                         '3
                         gxc#!accessor::t
                         '#f)))
                     (_checked?154256_ _e154227154253_))
                (declare (not safe))
                (_K154224154240_
                 _checked?154256_
                 _slot154251_
                 _klass-id154246_))
              (let () (declare (not safe)) (_E154223154233_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_self154060_)
        (let* ((_self154061154069_ _self154060_)
               (_E154063154073_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154061154069_))))
               (_K154064154080_
                (lambda (_checked?154076_ _slot154077_ _klass-id154078_)
                  (let ((__tmp156152
                         (let ((__tmp156153
                                (let ((__tmp156154
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?154076_ '()))))
                                  (declare (not safe))
                                  (cons _slot154077_ __tmp156154))))
                           (declare (not safe))
                           (cons _klass-id154078_ __tmp156153))))
                    (declare (not safe))
                    (cons '@mutator __tmp156152)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self154061154069_ 'gxc#!mutator::t))
              (let* ((_e154065154083_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154061154069_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id154086_ _e154065154083_)
                     (_e154066154088_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154061154069_
                         '2
                         gxc#!mutator::t
                         '#f)))
                     (_slot154091_ _e154066154088_)
                     (_e154067154093_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154061154069_
                         '3
                         gxc#!mutator::t
                         '#f)))
                     (_checked?154096_ _e154067154093_))
                (declare (not safe))
                (_K154064154080_
                 _checked?154096_
                 _slot154091_
                 _klass-id154086_))
              (let () (declare (not safe)) (_E154063154073_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!lambda::typedecl
      (lambda (_self153886_)
        (let* ((_self153887153897_ _self153886_)
               (_E153889153901_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self153887153897_))))
               (_K153890153912_
                (lambda (_typedecl153904_
                         _inline153905_
                         _dispatch153906_
                         _arity153907_)
                  (if _inline153905_
                      (let ((_$e153909_ _typedecl153904_))
                        (if _$e153909_
                            _$e153909_
                            (let ()
                              (declare (not safe))
                              (error '"Cannot generate typedecl for inline rules"))))
                      (let ((__tmp156155
                             (let ((__tmp156156
                                    (let ()
                                      (declare (not safe))
                                      (cons _dispatch153906_ '()))))
                               (declare (not safe))
                               (cons _arity153907_ __tmp156156))))
                        (declare (not safe))
                        (cons '@lambda __tmp156155))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self153887153897_ 'gxc#!lambda::t))
              (let* ((_e153891153915_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153887153897_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e153892153918_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153887153897_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity153921_ _e153892153918_)
                     (_e153893153923_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153887153897_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch153926_ _e153893153923_)
                     (_e153894153928_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153887153897_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline153931_ _e153894153928_)
                     (_e153895153933_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153887153897_
                         '5
                         gxc#!lambda::t
                         '#f)))
                     (_typedecl153936_ _e153895153933_))
                (declare (not safe))
                (_K153890153912_
                 _typedecl153936_
                 _inline153931_
                 _dispatch153926_
                 _arity153921_))
              (let () (declare (not safe)) (_E153889153901_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_self153697_)
        (letrec ((_clause-e153699_
                  (lambda (_clause153729_)
                    (let* ((_clause153730153738_ _clause153729_)
                           (_E153732153742_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _clause153730153738_))))
                           (_K153733153748_
                            (lambda (_dispatch153745_ _arity153746_)
                              (let ((__tmp156157
                                     (let ()
                                       (declare (not safe))
                                       (cons _dispatch153745_ '()))))
                                (declare (not safe))
                                (cons _arity153746_ __tmp156157)))))
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _clause153730153738_
                             'gxc#!lambda::t))
                          (let* ((_e153734153751_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause153730153738_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                                 (_e153735153754_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause153730153738_
                                     '2
                                     gxc#!lambda::t
                                     '#f)))
                                 (_arity153757_ _e153735153754_)
                                 (_e153736153759_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause153730153738_
                                     '3
                                     gxc#!lambda::t
                                     '#f)))
                                 (_dispatch153762_ _e153736153759_))
                            (declare (not safe))
                            (_K153733153748_ _dispatch153762_ _arity153757_))
                          (let () (declare (not safe)) (_E153732153742_)))))))
          (let* ((_self153700153707_ _self153697_)
                 (_E153702153711_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching" _self153700153707_))))
                 (_K153703153718_
                  (lambda (_clauses153714_)
                    (let ((_clauses153716_
                           (map _clause-e153699_ _clauses153714_)))
                      (declare (not safe))
                      (cons '@case-lambda _clauses153716_)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of?
                   _self153700153707_
                   'gxc#!case-lambda::t))
                (let* ((_e153704153721_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self153700153707_
                           '1
                           gxc#!type::t
                           '#f)))
                       (_e153705153724_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self153700153707_
                           '2
                           gxc#!case-lambda::t
                           '#f)))
                       (_clauses153727_ _e153705153724_))
                  (declare (not safe))
                  (_K153703153718_ _clauses153727_))
                (let () (declare (not safe)) (_E153702153711_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_self153540_)
        (let* ((_self153541153549_ _self153540_)
               (_E153543153553_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self153541153549_))))
               (_K153544153559_
                (lambda (_dispatch153556_ _table153557_)
                  (let ((__tmp156158
                         (let ((__tmp156159
                                (let ()
                                  (declare (not safe))
                                  (cons _dispatch153556_ '()))))
                           (declare (not safe))
                           (cons _table153557_ __tmp156159))))
                    (declare (not safe))
                    (cons '@kw-lambda __tmp156158)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self153541153549_
                 'gxc#!kw-lambda::t))
              (let* ((_e153545153562_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153541153549_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e153546153565_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153541153549_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table153568_ _e153546153565_)
                     (_e153547153570_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153541153549_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch153573_ _e153547153570_))
                (declare (not safe))
                (_K153544153559_ _dispatch153573_ _table153568_))
              (let () (declare (not safe)) (_E153543153553_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda::t
       'typedecl
       gxc#!kw-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_self153383_)
        (let* ((_self153384153392_ _self153383_)
               (_E153386153396_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self153384153392_))))
               (_K153387153402_
                (lambda (_main153399_ _keys153400_)
                  (let ((__tmp156160
                         (let ((__tmp156161
                                (let ()
                                  (declare (not safe))
                                  (cons _main153399_ '()))))
                           (declare (not safe))
                           (cons _keys153400_ __tmp156161))))
                    (declare (not safe))
                    (cons '@kw-lambda-dispatch __tmp156160)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self153384153392_
                 'gxc#!kw-lambda-primary::t))
              (let* ((_e153388153405_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153384153392_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e153389153408_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153384153392_
                         '2
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_keys153411_ _e153389153408_)
                     (_e153390153413_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153384153392_
                         '3
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_main153416_ _e153390153413_))
                (declare (not safe))
                (_K153387153402_ _main153416_ _keys153411_))
              (let () (declare (not safe)) (_E153386153396_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))))
