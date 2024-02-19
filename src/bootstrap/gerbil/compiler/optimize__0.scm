(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1708352929)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (gxc#current-compile-optimizer-info)
            '#!void
            (gxc#current-compile-optimizer-info
             (let ((__obj156070
                    (let ()
                      (declare (not safe))
                      (##structure gxc#optimizer-info::t '#f '#f '#f))))
               (gxc#optimizer-info:::init! __obj156070)
               __obj156070)))))
    (define gxc#optimize!
      (lambda (_ctx155763_)
        (let ((__tmp156074
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _ctx155763_))
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-builtin-ssxi))
                 (let ((__tmp156076
                        (##structure-ref
                         (gxc#current-compile-optimizer-info)
                         '2
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp156075
                        (##structure-ref
                         _ctx155763_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp156076 __tmp156075 '#t))
                 (let ((_code155766_
                        (let ((__tmp156077
                               (##structure-ref
                                _ctx155763_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp156077))))
                   (##structure-set!
                    _ctx155763_
                    _code155766_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp156073 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp156072 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters
           __tmp156074
           gxc#current-compile-mutators
           __tmp156073
           gxc#current-compile-local-type
           __tmp156072))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda ()
        (letrec ((_load-it!155759_
                  (lambda (_id155761_)
                    (if (let ((__tmp156079
                               (##structure-ref
                                (gxc#current-compile-optimizer-info)
                                '2
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp156079 _id155761_))
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-import-ssxi-by-id _id155761_))
                          (let ((__tmp156078
                                 (##structure-ref
                                  (gxc#current-compile-optimizer-info)
                                  '2
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp156078 _id155761_ '#t)))))))
          (for-each
           _load-it!155759_
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
      (lambda (_ctx155703_)
        (letrec* ((_deps155705_
                   (let* ((_imports155749_
                           (##structure-ref
                            _ctx155703_
                            '8
                            gx#module-context::t
                            '#f))
                          (_$e155751_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _ctx155703_))))
                     (if _$e155751_
                         ((lambda (_g155753155755_)
                            (let ()
                              (declare (not safe))
                              (cons _g155753155755_ _imports155749_)))
                          _$e155751_)
                         _imports155749_))))
          (let _lp155707_ ((_rest155709_ _deps155705_))
            (let* ((_rest155710155718_ _rest155709_)
                   (_else155712155726_ (lambda () '#!void))
                   (_K155714155737_
                    (lambda (_rest155729_ _hd155730_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _hd155730_
                             'gx#module-context::t))
                          (begin
                            (if (let ((__tmp156093
                                       (##structure-ref
                                        (gxc#current-compile-optimizer-info)
                                        '2
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp156092
                                       (##structure-ref
                                        _hd155730_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (hash-get __tmp156093 __tmp156092))
                                '#!void
                                (begin
                                  (let ((_$e155732_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _hd155730_))))
                                    (if _$e155732_
                                        ((lambda (_pre155735_)
                                           (let ((__tmp156090
                                                  (let ((__tmp156091
                                                         (##structure-ref
                                                          _hd155730_
                                                          '8
                                                          gx#module-context::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (cons _pre155735_
                                                          __tmp156091))))
                                             (declare (not safe))
                                             (_lp155707_ __tmp156090)))
                                         _$e155732_)
                                        (let ((__tmp156089
                                               (##structure-ref
                                                _hd155730_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                          (declare (not safe))
                                          (_lp155707_ __tmp156089))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _hd155730_))))
                            (let ()
                              (declare (not safe))
                              (_lp155707_ _rest155729_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _hd155730_
                                 'gx#prelude-context::t))
                              (begin
                                (if (let ((__tmp156088
                                           (##structure-ref
                                            (gxc#current-compile-optimizer-info)
                                            '2
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp156087
                                           (##structure-ref
                                            _hd155730_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (hash-get __tmp156088 __tmp156087))
                                    '#!void
                                    (begin
                                      (let ((__tmp156086
                                             (##structure-ref
                                              _hd155730_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_lp155707_ __tmp156086))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi _hd155730_))))
                                (let ()
                                  (declare (not safe))
                                  (_lp155707_ _rest155729_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _hd155730_
                                     'gx#module-import::t))
                                  (let ((__tmp156084
                                         (let ((__tmp156085
                                                (##direct-structure-ref
                                                 _hd155730_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp156085 _rest155729_))))
                                    (declare (not safe))
                                    (_lp155707_ __tmp156084))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _hd155730_
                                         'gx#module-export::t))
                                      (let ((__tmp156082
                                             (let ((__tmp156083
                                                    (##direct-structure-ref
                                                     _hd155730_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp156083
                                                     _rest155729_))))
                                        (declare (not safe))
                                        (_lp155707_ __tmp156082))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _hd155730_
                                             'gx#import-set::t))
                                          (let ((__tmp156080
                                                 (let ((__tmp156081
                                                        (##direct-structure-ref
                                                         _hd155730_
                                                         '1
                                                         gx#import-set::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp156081
                                                         _rest155729_))))
                                            (declare (not safe))
                                            (_lp155707_ __tmp156080))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _hd155730_))))))))))
              (if (let () (declare (not safe)) (##pair? _rest155710155718_))
                  (let ((_hd155715155740_
                         (let ()
                           (declare (not safe))
                           (##car _rest155710155718_)))
                        (_tl155716155742_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest155710155718_))))
                    (let* ((_hd155745_ _hd155715155740_)
                           (_rest155747_ _tl155716155742_))
                      (declare (not safe))
                      (_K155714155737_ _rest155747_ _hd155745_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_ctx155683_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _ctx155683_
                    'gx#module-context::t))
                 (let ((__tmp156094
                        (##structure-ref
                         _ctx155683_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp156094)))
            '#!void
            (let* ((_ht155685_
                    (##structure-ref
                     (gxc#current-compile-optimizer-info)
                     '2
                     gxc#optimizer-info::t
                     '#f))
                   (_id155687_
                    (##structure-ref
                     _ctx155683_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_mod155689_
                    (let ()
                      (declare (not safe))
                      (hash-get _ht155685_ _id155687_))))
              (let ((_$e155692_ _mod155689_))
                (if _$e155692_
                    _$e155692_
                    (let* ((_mod155695_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-import-ssxi _ctx155683_)))
                           (_val155700_
                            (let ((_$e155697_ _mod155695_))
                              (if _$e155697_ _$e155697_ '#!void))))
                      (let ()
                        (declare (not safe))
                        (hash-put! _ht155685_ _id155687_ _val155700_))
                      _val155700_)))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_ctx155681_)
        (if (##structure-ref _ctx155681_ '1 gx#expander-context::t '#f)
            (let ((__tmp156095
                   (##structure-ref
                    _ctx155681_
                    '1
                    gx#expander-context::t
                    '#f)))
              (declare (not safe))
              (gxc#optimizer-import-ssxi-by-id __tmp156095))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_id155658_)
        (letrec ((_catch-e155660_
                  (lambda (_exn155679_)
                    (if (gxc#current-compile-verbose)
                        (begin
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"Failed to load ssxi module for "
                             _id155658_))
                          (display-exception _exn155679_))
                        '#!void)
                    '#f))
                 (_import-e155661_
                  (lambda ()
                    (let* ((_str-id155664_
                            (string-append
                             (let ()
                               (declare (not safe))
                               (gxc#module-id->path-string _id155658_))
                             '".ssxi"))
                           (_artefact-path155672_
                            (let ((_odir155665155667_
                                   (gxc#current-compile-output-dir)))
                              (if _odir155665155667_
                                  (let ((_odir155670_ _odir155665155667_))
                                    (path-expand
                                     (string-append _str-id155664_ '".ss")
                                     _odir155670_))
                                  '#f)))
                           (_library-path155674_
                            (string->symbol
                             (string-append '":" _str-id155664_ '".ss")))
                           (_ssxi-path155676_
                            (if (and _artefact-path155672_
                                     (file-exists? _artefact-path155672_))
                                _artefact-path155672_
                                _library-path155674_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _ssxi-path155676_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _ssxi-path155676_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (with-catch _catch-e155660_ _import-e155661_)))))
    (define gxc#optimize-source
      (lambda (_stx155649_)
        (let () (declare (not safe)) (gxc#apply-collect-mutators _stx155649_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _stx155649_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _stx155649_))
        (let* ((_stx155651_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _stx155649_)))
               (_stx155653_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _stx155651_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _stx155653_))
          (let ((_stx155656_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _stx155653_))))
            (declare (not safe))
            (gxc#apply-optimize-call _stx155656_)))))
    (define gxc#&generate-ssxi
      (make-promise
       (lambda ()
         (let ((_tbl155646_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp156096 (force gxc#&generate-runtime-empty)))
             (declare (not safe))
             (hash-merge! _tbl155646_ __tmp156096))
           (let ()
             (declare (not safe))
             (hash-put! _tbl155646_ '%#begin gxc#generate-runtime-begin%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl155646_
              '%#begin-syntax
              gxc#generate-ssxi-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl155646_ '%#module gxc#generate-ssxi-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl155646_
              '%#define-values
              gxc#generate-ssxi-define-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl155646_ '%#call gxc#generate-ssxi-call%))
           _tbl155646_))))
    (define gxc#apply-generate-ssxi
      (lambda (_stx155629_ . _args155631_)
        (let ((__tmp156098
               (lambda ()
                 (declare (not safe))
                 (if (null? _args155631_)
                     (gxc#compile-e__0 _stx155629_)
                     (let ((_arg1155636_ (car _args155631_))
                           (_rest155638_ (cdr _args155631_)))
                       (if (null? _rest155638_)
                           (gxc#compile-e__1 _stx155629_ _arg1155636_)
                           (let ((_arg2155641_ (car _rest155638_))
                                 (_rest155643_ (cdr _rest155638_)))
                             (if (null? _rest155643_)
                                 (gxc#compile-e__2
                                  _stx155629_
                                  _arg1155636_
                                  _arg2155641_)
                                 (apply gxc#compile-e
                                        _stx155629_
                                        _arg1155636_
                                        _arg2155641_
                                        _rest155643_))))))))
              (__tmp156097 (force gxc#&generate-ssxi)))
          (declare (not safe))
          (call-with-parameters
           __tmp156098
           gxc#current-compile-methods
           __tmp156097))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_stx155590_)
        (let* ((_g155592155602_
                (lambda (_g155593155599_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g155593155599_))))
               (_g155591155626_
                (lambda (_g155593155605_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g155593155605_))
                      (let ((_e155597155607_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g155593155605_))))
                        (let ((_hd155596155610_
                               (let ()
                                 (declare (not safe))
                                 (##car _e155597155607_)))
                              (_tl155595155612_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e155597155607_))))
                          ((lambda (_L155615_)
                             (let ((__tmp156101
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _stx155590_))))
                                   (__tmp156099
                                    (let ((__tmp156100
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp156100 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp156101
                                gx#current-expander-phi
                                __tmp156099)))
                           _tl155595155612_)))
                      (let ()
                        (declare (not safe))
                        (_g155592155602_ _g155593155605_))))))
          (declare (not safe))
          (_g155591155626_ _stx155590_))))
    (define gxc#generate-ssxi-module%
      (lambda (_stx155530_)
        (let* ((_g155532155546_
                (lambda (_g155533155543_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g155533155543_))))
               (_g155531155587_
                (lambda (_g155533155549_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g155533155549_))
                      (let ((_e155538155551_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g155533155549_))))
                        (let ((_hd155537155554_
                               (let ()
                                 (declare (not safe))
                                 (##car _e155538155551_)))
                              (_tl155536155556_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e155538155551_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl155536155556_))
                              (let ((_e155541155559_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl155536155556_))))
                                (let ((_hd155540155562_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e155541155559_)))
                                      (_tl155539155564_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e155541155559_))))
                                  ((lambda (_L155567_ _L155568_)
                                     (let* ((_ctx155581_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L155568_)))
                                            (_code155583_
                                             (##structure-ref
                                              _ctx155581_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp156102
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _code155583_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp156102
                                          gx#current-expander-context
                                          _ctx155581_))))
                                   _tl155539155564_
                                   _hd155540155562_)))
                              (let ()
                                (declare (not safe))
                                (_g155532155546_ _g155533155549_)))))
                      (let ()
                        (declare (not safe))
                        (_g155532155546_ _g155533155549_))))))
          (declare (not safe))
          (_g155531155587_ _stx155530_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_stx155340_)
        (letrec ((_generate-e155342_
                  (lambda (_id155519_)
                    (let* ((_sym155521_
                            (if (let ((__tmp156103
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp156103))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _id155519_))
                                '#f))
                           (_$e155523_
                            (if _sym155521_
                                (let ()
                                  (declare (not safe))
                                  (gxc#optimizer-lookup-type _sym155521_))
                                '#f)))
                      (if _$e155523_
                          ((lambda (_type155526_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"generate typedecl " _sym155521_))
                             (let* ((_typedecl155528_
                                     (let ((__method156071
                                            (let ()
                                              (declare (not safe))
                                              (method-ref
                                               _type155526_
                                               'typedecl))))
                                       (if __method156071
                                           (__method156071 _type155526_)
                                           (let ()
                                             (declare (not safe))
                                             (error '"Missing method"
                                                    _type155526_
                                                    'typedecl)))))
                                    (__tmp156104
                                     (let ((__tmp156105
                                            (let ()
                                              (declare (not safe))
                                              (cons _typedecl155528_ '()))))
                                       (declare (not safe))
                                       (cons _sym155521_ __tmp156105))))
                               (declare (not safe))
                               (cons 'declare-type __tmp156104)))
                           _$e155523_)
                          '(begin))))))
          (let* ((___stx155769155770_ _stx155340_)
                 (_g155345155383_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx155769155770_)))))
            (let ((___kont155771155772_
                   (lambda (_L155501_)
                     (let ()
                       (declare (not safe))
                       (_generate-e155342_ _L155501_))))
                  (___kont155773155774_
                   (lambda (_L155436_)
                     (let ((_types155462_
                            (map _generate-e155342_
                                 (let ((__tmp156106
                                        (lambda (_g155454155457_
                                                 _g155455155459_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g155454155457_
                                                  _g155455155459_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp156106 '() _L155436_)))))
                       (declare (not safe))
                       (cons 'begin _types155462_)))))
              (let ((___match155824155825_
                     (lambda (_e155363155388_
                              _hd155362155391_
                              _tl155361155393_
                              _e155366155396_
                              _hd155365155399_
                              _tl155364155401_
                              ___splice155775155776_
                              _target155367155404_
                              _tl155369155406_)
                       (letrec ((_loop155370155409_
                                 (lambda (_hd155368155412_ _id155374155414_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd155368155412_))
                                       (let ((_e155371155417_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd155368155412_))))
                                         (let ((_lp-tl155373155422_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e155371155417_)))
                                               (_lp-hd155372155420_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e155371155417_))))
                                           (let ((__tmp156107
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd155372155420_
                                                          _id155374155414_))))
                                             (declare (not safe))
                                             (_loop155370155409_
                                              _lp-tl155373155422_
                                              __tmp156107))))
                                       (let ((_id155375155425_
                                              (reverse _id155374155414_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl155364155401_))
                                             (let ((_e155378155428_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl155364155401_))))
                                               (let ((_tl155376155433_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e155378155428_)))
                                                     (_hd155377155431_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e155378155428_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl155376155433_))
                                                     (___kont155773155774_
                                                      _id155375155425_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g155345155383_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g155345155383_))))))))
                         (let ()
                           (declare (not safe))
                           (_loop155370155409_ _target155367155404_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx155769155770_))
                    (let ((_e155350155469_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx155769155770_))))
                      (let ((_tl155348155474_
                             (let ()
                               (declare (not safe))
                               (##cdr _e155350155469_)))
                            (_hd155349155472_
                             (let ()
                               (declare (not safe))
                               (##car _e155350155469_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl155348155474_))
                            (let ((_e155353155477_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl155348155474_))))
                              (let ((_tl155351155482_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e155353155477_)))
                                    (_hd155352155480_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e155353155477_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd155352155480_))
                                    (let ((_e155356155485_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd155352155480_))))
                                      (let ((_tl155354155490_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e155356155485_)))
                                            (_hd155355155488_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e155356155485_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl155354155490_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl155351155482_))
                                                (let ((_e155359155493_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl155351155482_))))
                                                  (let ((_tl155357155498_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e155359155493_)))
                                                        (_hd155358155496_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e155359155493_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl155357155498_))
                                                        (___kont155771155772_
                                                         _hd155355155488_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _hd155352155480_))
                                                            (let ((___splice155775155776_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _hd155352155480_ '0))))
                      (let ((_tl155369155406_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice155775155776_ '1)))
                            (_target155367155404_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice155775155776_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl155369155406_))
                            (___match155824155825_
                             _e155350155469_
                             _hd155349155472_
                             _tl155348155474_
                             _e155353155477_
                             _hd155352155480_
                             _tl155351155482_
                             ___splice155775155776_
                             _target155367155404_
                             _tl155369155406_)
                            (let () (declare (not safe)) (_g155345155383_)))))
                    (let () (declare (not safe)) (_g155345155383_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _hd155352155480_))
                                                    (let ((___splice155775155776_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _hd155352155480_
                                                              '0))))
                                                      (let ((_tl155369155406_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice155775155776_ '1)))
                    (_target155367155404_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice155775155776_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl155369155406_))
                    (___match155824155825_
                     _e155350155469_
                     _hd155349155472_
                     _tl155348155474_
                     _e155353155477_
                     _hd155352155480_
                     _tl155351155482_
                     ___splice155775155776_
                     _target155367155404_
                     _tl155369155406_)
                    (let () (declare (not safe)) (_g155345155383_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g155345155383_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _hd155352155480_))
                                                (let ((___splice155775155776_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _hd155352155480_
                                                          '0))))
                                                  (let ((_tl155369155406_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice155775155776_
                                                            '1)))
                                                        (_target155367155404_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice155775155776_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl155369155406_))
                                                        (___match155824155825_
                                                         _e155350155469_
                                                         _hd155349155472_
                                                         _tl155348155474_
                                                         _e155353155477_
                                                         _hd155352155480_
                                                         _tl155351155482_
                                                         ___splice155775155776_
                                                         _target155367155404_
                                                         _tl155369155406_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g155345155383_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g155345155383_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd155352155480_))
                                        (let ((___splice155775155776_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd155352155480_
                                                  '0))))
                                          (let ((_tl155369155406_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice155775155776_
                                                    '1)))
                                                (_target155367155404_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice155775155776_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl155369155406_))
                                                (___match155824155825_
                                                 _e155350155469_
                                                 _hd155349155472_
                                                 _tl155348155474_
                                                 _e155353155477_
                                                 _hd155352155480_
                                                 _tl155351155482_
                                                 ___splice155775155776_
                                                 _target155367155404_
                                                 _tl155369155406_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g155345155383_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g155345155383_))))))
                            (let () (declare (not safe)) (_g155345155383_)))))
                    (let () (declare (not safe)) (_g155345155383_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_stx154894_)
        (let* ((___stx155827155828_ _stx154894_)
               (_g154898155000_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx155827155828_)))))
          (let ((___kont155829155830_
                 (lambda (_L155290_ _L155291_ _L155292_ _L155293_ _L155294_)
                   (let ((__tmp156108
                          (let ((__tmp156115
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L155293_)))
                                (__tmp156109
                                 (let ((__tmp156114
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L155292_)))
                                       (__tmp156110
                                        (let ((__tmp156113
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L155291_)))
                                              (__tmp156111
                                               (let ((__tmp156112
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L155290_))))
                                                 (declare (not safe))
                                                 (cons __tmp156112 '()))))
                                          (declare (not safe))
                                          (cons __tmp156113 __tmp156111))))
                                   (declare (not safe))
                                   (cons __tmp156114 __tmp156110))))
                            (declare (not safe))
                            (cons __tmp156115 __tmp156109))))
                     (declare (not safe))
                     (cons 'declare-method __tmp156108))))
                (___kont155831155832_
                 (lambda (_L155116_ _L155117_ _L155118_ _L155119_)
                   (let ((__tmp156116
                          (let ((__tmp156122
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L155118_)))
                                (__tmp156117
                                 (let ((__tmp156121
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L155117_)))
                                       (__tmp156118
                                        (let ((__tmp156120
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L155116_)))
                                              (__tmp156119
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '#f '()))))
                                          (declare (not safe))
                                          (cons __tmp156120 __tmp156119))))
                                   (declare (not safe))
                                   (cons __tmp156121 __tmp156118))))
                            (declare (not safe))
                            (cons __tmp156122 __tmp156117))))
                     (declare (not safe))
                     (cons 'declare-method __tmp156116))))
                (___kont155833155834_ (lambda () '(begin))))
            (let ((___match155962155963_
                   (lambda (_e154907155162_
                            _hd154906155165_
                            _tl154905155167_
                            _e154910155170_
                            _hd154909155173_
                            _tl154908155175_
                            _e154913155178_
                            _hd154912155181_
                            _tl154911155183_
                            _e154916155186_
                            _hd154915155189_
                            _tl154914155191_
                            _e154919155194_
                            _hd154918155197_
                            _tl154917155199_
                            _e154922155202_
                            _hd154921155205_
                            _tl154920155207_
                            _e154925155210_
                            _hd154924155213_
                            _tl154923155215_
                            _e154928155218_
                            _hd154927155221_
                            _tl154926155223_
                            _e154931155226_
                            _hd154930155229_
                            _tl154929155231_
                            _e154934155234_
                            _hd154933155237_
                            _tl154932155239_
                            _e154937155242_
                            _hd154936155245_
                            _tl154935155247_
                            _e154940155250_
                            _hd154939155253_
                            _tl154938155255_
                            _e154943155258_
                            _hd154942155261_
                            _tl154941155263_
                            _e154946155266_
                            _hd154945155269_
                            _tl154944155271_
                            _e154949155274_
                            _hd154948155277_
                            _tl154947155279_
                            _e154952155282_
                            _hd154951155285_
                            _tl154950155287_)
                     (let ((_L155290_ _hd154951155285_)
                           (_L155291_ _hd154942155261_)
                           (_L155292_ _hd154933155237_)
                           (_L155293_ _hd154924155213_)
                           (_L155294_ _hd154915155189_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L155294_
                              'bind-method!))
                           (___kont155829155830_
                            _L155290_
                            _L155291_
                            _L155292_
                            _L155293_
                            _L155294_)
                           (___kont155833155834_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx155827155828_))
                  (let ((_e154907155162_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx155827155828_))))
                    (let ((_tl154905155167_
                           (let ()
                             (declare (not safe))
                             (##cdr _e154907155162_)))
                          (_hd154906155165_
                           (let ()
                             (declare (not safe))
                             (##car _e154907155162_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl154905155167_))
                          (let ((_e154910155170_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl154905155167_))))
                            (let ((_tl154908155175_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e154910155170_)))
                                  (_hd154909155173_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e154910155170_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd154909155173_))
                                  (let ((_e154913155178_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd154909155173_))))
                                    (let ((_tl154911155183_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e154913155178_)))
                                          (_hd154912155181_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e154913155178_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd154912155181_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd154912155181_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl154911155183_))
                                                  (let ((_e154916155186_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl154911155183_))))
                                                    (let ((_tl154914155191_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e154916155186_)))
                                                          (_hd154915155189_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e154916155186_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl154914155191_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl154908155175_))
                      (let ((_e154919155194_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl154908155175_))))
                        (let ((_tl154917155199_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e154919155194_)))
                              (_hd154918155197_
                               (let ()
                                 (declare (not safe))
                                 (##car _e154919155194_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd154918155197_))
                              (let ((_e154922155202_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd154918155197_))))
                                (let ((_tl154920155207_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e154922155202_)))
                                      (_hd154921155205_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e154922155202_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd154921155205_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd154921155205_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl154920155207_))
                                              (let ((_e154925155210_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl154920155207_))))
                                                (let ((_tl154923155215_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e154925155210_)))
                                                      (_hd154924155213_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e154925155210_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl154923155215_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl154917155199_))
                                                          (let ((_e154928155218_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl154917155199_))))
                    (let ((_tl154926155223_
                           (let ()
                             (declare (not safe))
                             (##cdr _e154928155218_)))
                          (_hd154927155221_
                           (let ()
                             (declare (not safe))
                             (##car _e154928155218_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd154927155221_))
                          (let ((_e154931155226_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd154927155221_))))
                            (let ((_tl154929155231_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e154931155226_)))
                                  (_hd154930155229_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e154931155226_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd154930155229_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd154930155229_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl154929155231_))
                                          (let ((_e154934155234_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl154929155231_))))
                                            (let ((_tl154932155239_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e154934155234_)))
                                                  (_hd154933155237_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e154934155234_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl154932155239_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl154926155223_))
                                                      (let ((_e154937155242_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl154926155223_))))
                (let ((_tl154935155247_
                       (let () (declare (not safe)) (##cdr _e154937155242_)))
                      (_hd154936155245_
                       (let () (declare (not safe)) (##car _e154937155242_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd154936155245_))
                      (let ((_e154940155250_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd154936155245_))))
                        (let ((_tl154938155255_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e154940155250_)))
                              (_hd154939155253_
                               (let ()
                                 (declare (not safe))
                                 (##car _e154940155250_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd154939155253_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd154939155253_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl154938155255_))
                                      (let ((_e154943155258_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl154938155255_))))
                                        (let ((_tl154941155263_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e154943155258_)))
                                              (_hd154942155261_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e154943155258_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl154941155263_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl154935155247_))
                                                  (let ((_e154946155266_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl154935155247_))))
                                                    (let ((_tl154944155271_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e154946155266_)))
                                                          (_hd154945155269_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e154946155266_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd154945155269_))
                                                          (let ((_e154949155274_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd154945155269_))))
                    (let ((_tl154947155279_
                           (let ()
                             (declare (not safe))
                             (##cdr _e154949155274_)))
                          (_hd154948155277_
                           (let ()
                             (declare (not safe))
                             (##car _e154949155274_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd154948155277_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd154948155277_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl154947155279_))
                                  (let ((_e154952155282_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl154947155279_))))
                                    (let ((_tl154950155287_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e154952155282_)))
                                          (_hd154951155285_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e154952155282_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl154950155287_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl154944155271_))
                                              (___match155962155963_
                                               _e154907155162_
                                               _hd154906155165_
                                               _tl154905155167_
                                               _e154910155170_
                                               _hd154909155173_
                                               _tl154908155175_
                                               _e154913155178_
                                               _hd154912155181_
                                               _tl154911155183_
                                               _e154916155186_
                                               _hd154915155189_
                                               _tl154914155191_
                                               _e154919155194_
                                               _hd154918155197_
                                               _tl154917155199_
                                               _e154922155202_
                                               _hd154921155205_
                                               _tl154920155207_
                                               _e154925155210_
                                               _hd154924155213_
                                               _tl154923155215_
                                               _e154928155218_
                                               _hd154927155221_
                                               _tl154926155223_
                                               _e154931155226_
                                               _hd154930155229_
                                               _tl154929155231_
                                               _e154934155234_
                                               _hd154933155237_
                                               _tl154932155239_
                                               _e154937155242_
                                               _hd154936155245_
                                               _tl154935155247_
                                               _e154940155250_
                                               _hd154939155253_
                                               _tl154938155255_
                                               _e154943155258_
                                               _hd154942155261_
                                               _tl154941155263_
                                               _e154946155266_
                                               _hd154945155269_
                                               _tl154944155271_
                                               _e154949155274_
                                               _hd154948155277_
                                               _tl154947155279_
                                               _e154952155282_
                                               _hd154951155285_
                                               _tl154950155287_)
                                              (___kont155833155834_))
                                          (___kont155833155834_))))
                                  (___kont155833155834_))
                              (___kont155833155834_))
                          (___kont155833155834_))))
                  (___kont155833155834_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl154935155247_))
                                                      (if (let ((__tmp156123
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp156123 'bind-method!))
                  (let ((_L155116_ _hd154942155261_)
                        (_L155117_ _hd154933155237_)
                        (_L155118_ _hd154924155213_)
                        (_L155119_ _hd154915155189_))
                    (___kont155831155832_
                     _L155116_
                     _L155117_
                     _L155118_
                     _L155119_))
                  (___kont155833155834_))
              (___kont155833155834_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont155833155834_))))
                                      (___kont155833155834_))
                                  (___kont155833155834_))
                              (___kont155833155834_))))
                      (___kont155833155834_))))
              (___kont155833155834_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont155833155834_))))
                                          (___kont155833155834_))
                                      (___kont155833155834_))
                                  (___kont155833155834_))))
                          (___kont155833155834_))))
                  (___kont155833155834_))
              (___kont155833155834_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont155833155834_))
                                          (___kont155833155834_))
                                      (___kont155833155834_))))
                              (___kont155833155834_))))
                      (___kont155833155834_))
                  (___kont155833155834_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont155833155834_))
                                              (___kont155833155834_))
                                          (___kont155833155834_))))
                                  (___kont155833155834_))))
                          (___kont155833155834_))))
                  (___kont155833155834_)))))))
    (define gxc#!alias::typedecl
      (lambda (_self154870_)
        (let* ((_self154871154877_ _self154870_)
               (_E154873154881_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154871154877_))))
               (_K154874154886_
                (lambda (_alias-id154884_)
                  (let ((__tmp156124
                         (let ()
                           (declare (not safe))
                           (cons _alias-id154884_ '()))))
                    (declare (not safe))
                    (cons '@alias __tmp156124)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self154871154877_ 'gxc#!alias::t))
              (let* ((_e154875154889_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154871154877_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_alias-id154892_ _e154875154889_))
                (declare (not safe))
                (_K154874154886_ _alias-id154892_))
              (let () (declare (not safe)) (_E154873154881_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_self154661_)
        (let* ((_self154662154677_ _self154661_)
               (_E154664154681_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154662154677_))))
               (_K154665154695_
                (lambda (_methods154684_
                         _metaclass154685_
                         _final?154686_
                         _struct?154687_
                         _constructor154688_
                         _fields154689_
                         _slots154690_
                         _precendence-list154691_
                         _super154692_
                         _id154693_)
                  (let ((__tmp156125
                         (let ((__tmp156126
                                (let ((__tmp156127
                                       (let ((__tmp156128
                                              (let ((__tmp156129
                                                     (let ((__tmp156130
                                                            (let ((__tmp156131
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp156132
                                  (let ((__tmp156133
                                         (let ((__tmp156134
                                                (let ((__tmp156135
                                                       (if _methods154684_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (hash->list
                                                              _methods154684_))
                                                           '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp156135 '()))))
                                           (declare (not safe))
                                           (cons _metaclass154685_
                                                 __tmp156134))))
                                    (declare (not safe))
                                    (cons _final?154686_ __tmp156133))))
                             (declare (not safe))
                             (cons _struct?154687_ __tmp156132))))
                      (declare (not safe))
                      (cons _constructor154688_ __tmp156131))))
               (declare (not safe))
               (cons _fields154689_ __tmp156130))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _slots154690_
                                                      __tmp156129))))
                                         (declare (not safe))
                                         (cons _precendence-list154691_
                                               __tmp156128))))
                                  (declare (not safe))
                                  (cons _super154692_ __tmp156127))))
                           (declare (not safe))
                           (cons _id154693_ __tmp156126))))
                    (declare (not safe))
                    (cons '@class __tmp156125)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self154662154677_ 'gxc#!class::t))
              (let* ((_e154666154698_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154662154677_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_id154701_ _e154666154698_)
                     (_e154667154703_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154662154677_
                         '2
                         gxc#!class::t
                         '#f)))
                     (_super154706_ _e154667154703_)
                     (_e154668154708_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154662154677_
                         '3
                         gxc#!class::t
                         '#f)))
                     (_precendence-list154711_ _e154668154708_)
                     (_e154669154713_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154662154677_
                         '4
                         gxc#!class::t
                         '#f)))
                     (_slots154716_ _e154669154713_)
                     (_e154670154718_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154662154677_
                         '5
                         gxc#!class::t
                         '#f)))
                     (_fields154721_ _e154670154718_)
                     (_e154671154723_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154662154677_
                         '6
                         gxc#!class::t
                         '#f)))
                     (_constructor154726_ _e154671154723_)
                     (_e154672154728_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154662154677_
                         '7
                         gxc#!class::t
                         '#f)))
                     (_struct?154731_ _e154672154728_)
                     (_e154673154733_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154662154677_
                         '8
                         gxc#!class::t
                         '#f)))
                     (_final?154736_ _e154673154733_)
                     (_e154674154738_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154662154677_
                         '9
                         gxc#!class::t
                         '#f)))
                     (_metaclass154741_ _e154674154738_)
                     (_e154675154743_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154662154677_
                         '10
                         gxc#!class::t
                         '#f)))
                     (_methods154746_ _e154675154743_))
                (declare (not safe))
                (_K154665154695_
                 _methods154746_
                 _metaclass154741_
                 _final?154736_
                 _struct?154731_
                 _constructor154726_
                 _fields154721_
                 _slots154716_
                 _precendence-list154711_
                 _super154706_
                 _id154701_))
              (let () (declare (not safe)) (_E154664154681_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_self154515_)
        (let* ((_self154516154522_ _self154515_)
               (_E154518154526_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154516154522_))))
               (_K154519154531_
                (lambda (_klass-id154529_)
                  (let ((__tmp156136
                         (let ()
                           (declare (not safe))
                           (cons _klass-id154529_ '()))))
                    (declare (not safe))
                    (cons '@predicate __tmp156136)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self154516154522_
                 'gxc#!predicate::t))
              (let* ((_e154520154534_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154516154522_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id154537_ _e154520154534_))
                (declare (not safe))
                (_K154519154531_ _klass-id154537_))
              (let () (declare (not safe)) (_E154518154526_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_self154369_)
        (let* ((_self154370154376_ _self154369_)
               (_E154372154380_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154370154376_))))
               (_K154373154385_
                (lambda (_klass-id154383_)
                  (let ((__tmp156137
                         (let ()
                           (declare (not safe))
                           (cons _klass-id154383_ '()))))
                    (declare (not safe))
                    (cons '@constructor __tmp156137)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self154370154376_
                 'gxc#!constructor::t))
              (let* ((_e154374154388_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154370154376_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id154391_ _e154374154388_))
                (declare (not safe))
                (_K154373154385_ _klass-id154391_))
              (let () (declare (not safe)) (_E154372154380_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_self154209_)
        (let* ((_self154210154218_ _self154209_)
               (_E154212154222_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154210154218_))))
               (_K154213154229_
                (lambda (_checked?154225_ _slot154226_ _klass-id154227_)
                  (let ((__tmp156138
                         (let ((__tmp156139
                                (let ((__tmp156140
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?154225_ '()))))
                                  (declare (not safe))
                                  (cons _slot154226_ __tmp156140))))
                           (declare (not safe))
                           (cons _klass-id154227_ __tmp156139))))
                    (declare (not safe))
                    (cons '@accessor __tmp156138)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self154210154218_
                 'gxc#!accessor::t))
              (let* ((_e154214154232_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154210154218_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id154235_ _e154214154232_)
                     (_e154215154237_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154210154218_
                         '2
                         gxc#!accessor::t
                         '#f)))
                     (_slot154240_ _e154215154237_)
                     (_e154216154242_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154210154218_
                         '3
                         gxc#!accessor::t
                         '#f)))
                     (_checked?154245_ _e154216154242_))
                (declare (not safe))
                (_K154213154229_
                 _checked?154245_
                 _slot154240_
                 _klass-id154235_))
              (let () (declare (not safe)) (_E154212154222_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_self154049_)
        (let* ((_self154050154058_ _self154049_)
               (_E154052154062_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154050154058_))))
               (_K154053154069_
                (lambda (_checked?154065_ _slot154066_ _klass-id154067_)
                  (let ((__tmp156141
                         (let ((__tmp156142
                                (let ((__tmp156143
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?154065_ '()))))
                                  (declare (not safe))
                                  (cons _slot154066_ __tmp156143))))
                           (declare (not safe))
                           (cons _klass-id154067_ __tmp156142))))
                    (declare (not safe))
                    (cons '@mutator __tmp156141)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self154050154058_ 'gxc#!mutator::t))
              (let* ((_e154054154072_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154050154058_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id154075_ _e154054154072_)
                     (_e154055154077_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154050154058_
                         '2
                         gxc#!mutator::t
                         '#f)))
                     (_slot154080_ _e154055154077_)
                     (_e154056154082_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154050154058_
                         '3
                         gxc#!mutator::t
                         '#f)))
                     (_checked?154085_ _e154056154082_))
                (declare (not safe))
                (_K154053154069_
                 _checked?154085_
                 _slot154080_
                 _klass-id154075_))
              (let () (declare (not safe)) (_E154052154062_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!lambda::typedecl
      (lambda (_self153875_)
        (let* ((_self153876153886_ _self153875_)
               (_E153878153890_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self153876153886_))))
               (_K153879153901_
                (lambda (_typedecl153893_
                         _inline153894_
                         _dispatch153895_
                         _arity153896_)
                  (if _inline153894_
                      (let ((_$e153898_ _typedecl153893_))
                        (if _$e153898_
                            _$e153898_
                            (let ()
                              (declare (not safe))
                              (error '"Cannot generate typedecl for inline rules"))))
                      (let ((__tmp156144
                             (let ((__tmp156145
                                    (let ()
                                      (declare (not safe))
                                      (cons _dispatch153895_ '()))))
                               (declare (not safe))
                               (cons _arity153896_ __tmp156145))))
                        (declare (not safe))
                        (cons '@lambda __tmp156144))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self153876153886_ 'gxc#!lambda::t))
              (let* ((_e153880153904_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153876153886_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e153881153907_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153876153886_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity153910_ _e153881153907_)
                     (_e153882153912_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153876153886_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch153915_ _e153882153912_)
                     (_e153883153917_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153876153886_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline153920_ _e153883153917_)
                     (_e153884153922_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153876153886_
                         '5
                         gxc#!lambda::t
                         '#f)))
                     (_typedecl153925_ _e153884153922_))
                (declare (not safe))
                (_K153879153901_
                 _typedecl153925_
                 _inline153920_
                 _dispatch153915_
                 _arity153910_))
              (let () (declare (not safe)) (_E153878153890_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_self153686_)
        (letrec ((_clause-e153688_
                  (lambda (_clause153718_)
                    (let* ((_clause153719153727_ _clause153718_)
                           (_E153721153731_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _clause153719153727_))))
                           (_K153722153737_
                            (lambda (_dispatch153734_ _arity153735_)
                              (let ((__tmp156146
                                     (let ()
                                       (declare (not safe))
                                       (cons _dispatch153734_ '()))))
                                (declare (not safe))
                                (cons _arity153735_ __tmp156146)))))
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _clause153719153727_
                             'gxc#!lambda::t))
                          (let* ((_e153723153740_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause153719153727_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                                 (_e153724153743_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause153719153727_
                                     '2
                                     gxc#!lambda::t
                                     '#f)))
                                 (_arity153746_ _e153724153743_)
                                 (_e153725153748_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause153719153727_
                                     '3
                                     gxc#!lambda::t
                                     '#f)))
                                 (_dispatch153751_ _e153725153748_))
                            (declare (not safe))
                            (_K153722153737_ _dispatch153751_ _arity153746_))
                          (let () (declare (not safe)) (_E153721153731_)))))))
          (let* ((_self153689153696_ _self153686_)
                 (_E153691153700_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching" _self153689153696_))))
                 (_K153692153707_
                  (lambda (_clauses153703_)
                    (let ((_clauses153705_
                           (map _clause-e153688_ _clauses153703_)))
                      (declare (not safe))
                      (cons '@case-lambda _clauses153705_)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of?
                   _self153689153696_
                   'gxc#!case-lambda::t))
                (let* ((_e153693153710_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self153689153696_
                           '1
                           gxc#!type::t
                           '#f)))
                       (_e153694153713_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self153689153696_
                           '2
                           gxc#!case-lambda::t
                           '#f)))
                       (_clauses153716_ _e153694153713_))
                  (declare (not safe))
                  (_K153692153707_ _clauses153716_))
                (let () (declare (not safe)) (_E153691153700_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_self153529_)
        (let* ((_self153530153538_ _self153529_)
               (_E153532153542_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self153530153538_))))
               (_K153533153548_
                (lambda (_dispatch153545_ _table153546_)
                  (let ((__tmp156147
                         (let ((__tmp156148
                                (let ()
                                  (declare (not safe))
                                  (cons _dispatch153545_ '()))))
                           (declare (not safe))
                           (cons _table153546_ __tmp156148))))
                    (declare (not safe))
                    (cons '@kw-lambda __tmp156147)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self153530153538_
                 'gxc#!kw-lambda::t))
              (let* ((_e153534153551_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153530153538_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e153535153554_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153530153538_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table153557_ _e153535153554_)
                     (_e153536153559_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153530153538_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch153562_ _e153536153559_))
                (declare (not safe))
                (_K153533153548_ _dispatch153562_ _table153557_))
              (let () (declare (not safe)) (_E153532153542_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda::t
       'typedecl
       gxc#!kw-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_self153372_)
        (let* ((_self153373153381_ _self153372_)
               (_E153375153385_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self153373153381_))))
               (_K153376153391_
                (lambda (_main153388_ _keys153389_)
                  (let ((__tmp156149
                         (let ((__tmp156150
                                (let ()
                                  (declare (not safe))
                                  (cons _main153388_ '()))))
                           (declare (not safe))
                           (cons _keys153389_ __tmp156150))))
                    (declare (not safe))
                    (cons '@kw-lambda-dispatch __tmp156149)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self153373153381_
                 'gxc#!kw-lambda-primary::t))
              (let* ((_e153377153394_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153373153381_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e153378153397_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153373153381_
                         '2
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_keys153400_ _e153378153397_)
                     (_e153379153402_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153373153381_
                         '3
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_main153405_ _e153379153402_))
                (declare (not safe))
                (_K153376153391_ _main153405_ _keys153400_))
              (let () (declare (not safe)) (_E153375153385_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))))
