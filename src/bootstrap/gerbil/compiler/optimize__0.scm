(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1708510106)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (gxc#current-compile-optimizer-info)
            '#!void
            (gxc#current-compile-optimizer-info
             (let ((__obj155890
                    (let ()
                      (declare (not safe))
                      (##structure gxc#optimizer-info::t '#f '#f '#f))))
               (gxc#optimizer-info:::init! __obj155890)
               __obj155890)))))
    (define gxc#optimize!
      (lambda (_ctx155583_)
        (let ((__tmp155894
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _ctx155583_))
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-builtin-ssxi))
                 (let ((__tmp155896
                        (##structure-ref
                         (gxc#current-compile-optimizer-info)
                         '2
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp155895
                        (##structure-ref
                         _ctx155583_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp155896 __tmp155895 '#t))
                 (let ((_code155586_
                        (let ((__tmp155897
                               (##structure-ref
                                _ctx155583_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp155897))))
                   (##structure-set!
                    _ctx155583_
                    _code155586_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp155893 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp155892 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters
           __tmp155894
           gxc#current-compile-mutators
           __tmp155893
           gxc#current-compile-local-type
           __tmp155892))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda ()
        (letrec ((_load-it!155579_
                  (lambda (_id155581_)
                    (if (let ((__tmp155899
                               (##structure-ref
                                (gxc#current-compile-optimizer-info)
                                '2
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp155899 _id155581_))
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-import-ssxi-by-id _id155581_))
                          (let ((__tmp155898
                                 (##structure-ref
                                  (gxc#current-compile-optimizer-info)
                                  '2
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp155898 _id155581_ '#t)))))))
          (for-each
           _load-it!155579_
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
      (lambda (_ctx155523_)
        (letrec* ((_deps155525_
                   (let* ((_imports155569_
                           (##structure-ref
                            _ctx155523_
                            '8
                            gx#module-context::t
                            '#f))
                          (_$e155571_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _ctx155523_))))
                     (if _$e155571_
                         ((lambda (_g155573155575_)
                            (let ()
                              (declare (not safe))
                              (cons _g155573155575_ _imports155569_)))
                          _$e155571_)
                         _imports155569_))))
          (let _lp155527_ ((_rest155529_ _deps155525_))
            (let* ((_rest155530155538_ _rest155529_)
                   (_else155532155546_ (lambda () '#!void))
                   (_K155534155557_
                    (lambda (_rest155549_ _hd155550_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _hd155550_
                             'gx#module-context::t))
                          (begin
                            (if (let ((__tmp155913
                                       (##structure-ref
                                        (gxc#current-compile-optimizer-info)
                                        '2
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp155912
                                       (##structure-ref
                                        _hd155550_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (hash-get __tmp155913 __tmp155912))
                                '#!void
                                (begin
                                  (let ((_$e155552_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _hd155550_))))
                                    (if _$e155552_
                                        ((lambda (_pre155555_)
                                           (let ((__tmp155910
                                                  (let ((__tmp155911
                                                         (##structure-ref
                                                          _hd155550_
                                                          '8
                                                          gx#module-context::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (cons _pre155555_
                                                          __tmp155911))))
                                             (declare (not safe))
                                             (_lp155527_ __tmp155910)))
                                         _$e155552_)
                                        (let ((__tmp155909
                                               (##structure-ref
                                                _hd155550_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                          (declare (not safe))
                                          (_lp155527_ __tmp155909))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _hd155550_))))
                            (let ()
                              (declare (not safe))
                              (_lp155527_ _rest155549_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _hd155550_
                                 'gx#prelude-context::t))
                              (begin
                                (if (let ((__tmp155908
                                           (##structure-ref
                                            (gxc#current-compile-optimizer-info)
                                            '2
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp155907
                                           (##structure-ref
                                            _hd155550_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (hash-get __tmp155908 __tmp155907))
                                    '#!void
                                    (begin
                                      (let ((__tmp155906
                                             (##structure-ref
                                              _hd155550_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_lp155527_ __tmp155906))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi _hd155550_))))
                                (let ()
                                  (declare (not safe))
                                  (_lp155527_ _rest155549_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _hd155550_
                                     'gx#module-import::t))
                                  (let ((__tmp155904
                                         (let ((__tmp155905
                                                (##direct-structure-ref
                                                 _hd155550_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp155905 _rest155549_))))
                                    (declare (not safe))
                                    (_lp155527_ __tmp155904))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _hd155550_
                                         'gx#module-export::t))
                                      (let ((__tmp155902
                                             (let ((__tmp155903
                                                    (##direct-structure-ref
                                                     _hd155550_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp155903
                                                     _rest155549_))))
                                        (declare (not safe))
                                        (_lp155527_ __tmp155902))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _hd155550_
                                             'gx#import-set::t))
                                          (let ((__tmp155900
                                                 (let ((__tmp155901
                                                        (##direct-structure-ref
                                                         _hd155550_
                                                         '1
                                                         gx#import-set::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp155901
                                                         _rest155549_))))
                                            (declare (not safe))
                                            (_lp155527_ __tmp155900))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _hd155550_))))))))))
              (if (let () (declare (not safe)) (##pair? _rest155530155538_))
                  (let ((_hd155535155560_
                         (let ()
                           (declare (not safe))
                           (##car _rest155530155538_)))
                        (_tl155536155562_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest155530155538_))))
                    (let* ((_hd155565_ _hd155535155560_)
                           (_rest155567_ _tl155536155562_))
                      (declare (not safe))
                      (_K155534155557_ _rest155567_ _hd155565_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_ctx155503_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _ctx155503_
                    'gx#module-context::t))
                 (let ((__tmp155914
                        (##structure-ref
                         _ctx155503_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp155914)))
            '#!void
            (let* ((_ht155505_
                    (##structure-ref
                     (gxc#current-compile-optimizer-info)
                     '2
                     gxc#optimizer-info::t
                     '#f))
                   (_id155507_
                    (##structure-ref
                     _ctx155503_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_mod155509_
                    (let ()
                      (declare (not safe))
                      (hash-get _ht155505_ _id155507_))))
              (let ((_$e155512_ _mod155509_))
                (if _$e155512_
                    _$e155512_
                    (let* ((_mod155515_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-import-ssxi _ctx155503_)))
                           (_val155520_
                            (let ((_$e155517_ _mod155515_))
                              (if _$e155517_ _$e155517_ '#!void))))
                      (let ()
                        (declare (not safe))
                        (hash-put! _ht155505_ _id155507_ _val155520_))
                      _val155520_)))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_ctx155501_)
        (if (##structure-ref _ctx155501_ '1 gx#expander-context::t '#f)
            (let ((__tmp155915
                   (##structure-ref
                    _ctx155501_
                    '1
                    gx#expander-context::t
                    '#f)))
              (declare (not safe))
              (gxc#optimizer-import-ssxi-by-id __tmp155915))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_id155478_)
        (letrec ((_catch-e155480_
                  (lambda (_exn155499_)
                    (if (gxc#current-compile-verbose)
                        (begin
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"Failed to load ssxi module for "
                             _id155478_))
                          (display-exception _exn155499_))
                        '#!void)
                    '#f))
                 (_import-e155481_
                  (lambda ()
                    (let* ((_str-id155484_
                            (string-append
                             (let ()
                               (declare (not safe))
                               (gxc#module-id->path-string _id155478_))
                             '".ssxi"))
                           (_artefact-path155492_
                            (let ((_odir155485155487_
                                   (gxc#current-compile-output-dir)))
                              (if _odir155485155487_
                                  (let ((_odir155490_ _odir155485155487_))
                                    (path-expand
                                     (string-append _str-id155484_ '".ss")
                                     _odir155490_))
                                  '#f)))
                           (_library-path155494_
                            (string->symbol
                             (string-append '":" _str-id155484_ '".ss")))
                           (_ssxi-path155496_
                            (if (and _artefact-path155492_
                                     (file-exists? _artefact-path155492_))
                                _artefact-path155492_
                                _library-path155494_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _ssxi-path155496_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _ssxi-path155496_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (with-catch _catch-e155480_ _import-e155481_)))))
    (define gxc#optimize-source
      (lambda (_stx155469_)
        (let () (declare (not safe)) (gxc#apply-collect-mutators _stx155469_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _stx155469_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _stx155469_))
        (let* ((_stx155471_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _stx155469_)))
               (_stx155473_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _stx155471_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _stx155473_))
          (let ((_stx155476_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _stx155473_))))
            (declare (not safe))
            (gxc#apply-optimize-call _stx155476_)))))
    (define gxc#&generate-ssxi
      (make-promise
       (lambda ()
         (let ((_tbl155466_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp155916 (force gxc#&generate-runtime-empty)))
             (declare (not safe))
             (hash-merge! _tbl155466_ __tmp155916))
           (let ()
             (declare (not safe))
             (hash-put! _tbl155466_ '%#begin gxc#generate-runtime-begin%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl155466_
              '%#begin-syntax
              gxc#generate-ssxi-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl155466_ '%#module gxc#generate-ssxi-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl155466_
              '%#define-values
              gxc#generate-ssxi-define-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl155466_ '%#call gxc#generate-ssxi-call%))
           _tbl155466_))))
    (define gxc#apply-generate-ssxi
      (lambda (_stx155449_ . _args155451_)
        (let ((__tmp155918
               (lambda ()
                 (declare (not safe))
                 (if (null? _args155451_)
                     (gxc#compile-e__0 _stx155449_)
                     (let ((_arg1155456_ (car _args155451_))
                           (_rest155458_ (cdr _args155451_)))
                       (if (null? _rest155458_)
                           (gxc#compile-e__1 _stx155449_ _arg1155456_)
                           (let ((_arg2155461_ (car _rest155458_))
                                 (_rest155463_ (cdr _rest155458_)))
                             (if (null? _rest155463_)
                                 (gxc#compile-e__2
                                  _stx155449_
                                  _arg1155456_
                                  _arg2155461_)
                                 (apply gxc#compile-e
                                        _stx155449_
                                        _arg1155456_
                                        _arg2155461_
                                        _rest155463_))))))))
              (__tmp155917 (force gxc#&generate-ssxi)))
          (declare (not safe))
          (call-with-parameters
           __tmp155918
           gxc#current-compile-methods
           __tmp155917))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_stx155410_)
        (let* ((_g155412155422_
                (lambda (_g155413155419_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g155413155419_))))
               (_g155411155446_
                (lambda (_g155413155425_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g155413155425_))
                      (let ((_e155417155427_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g155413155425_))))
                        (let ((_hd155416155430_
                               (let ()
                                 (declare (not safe))
                                 (##car _e155417155427_)))
                              (_tl155415155432_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e155417155427_))))
                          ((lambda (_L155435_)
                             (let ((__tmp155921
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _stx155410_))))
                                   (__tmp155919
                                    (let ((__tmp155920
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp155920 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp155921
                                gx#current-expander-phi
                                __tmp155919)))
                           _tl155415155432_)))
                      (let ()
                        (declare (not safe))
                        (_g155412155422_ _g155413155425_))))))
          (declare (not safe))
          (_g155411155446_ _stx155410_))))
    (define gxc#generate-ssxi-module%
      (lambda (_stx155350_)
        (let* ((_g155352155366_
                (lambda (_g155353155363_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g155353155363_))))
               (_g155351155407_
                (lambda (_g155353155369_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g155353155369_))
                      (let ((_e155358155371_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g155353155369_))))
                        (let ((_hd155357155374_
                               (let ()
                                 (declare (not safe))
                                 (##car _e155358155371_)))
                              (_tl155356155376_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e155358155371_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl155356155376_))
                              (let ((_e155361155379_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl155356155376_))))
                                (let ((_hd155360155382_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e155361155379_)))
                                      (_tl155359155384_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e155361155379_))))
                                  ((lambda (_L155387_ _L155388_)
                                     (let* ((_ctx155401_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L155388_)))
                                            (_code155403_
                                             (##structure-ref
                                              _ctx155401_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp155922
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _code155403_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp155922
                                          gx#current-expander-context
                                          _ctx155401_))))
                                   _tl155359155384_
                                   _hd155360155382_)))
                              (let ()
                                (declare (not safe))
                                (_g155352155366_ _g155353155369_)))))
                      (let ()
                        (declare (not safe))
                        (_g155352155366_ _g155353155369_))))))
          (declare (not safe))
          (_g155351155407_ _stx155350_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_stx155160_)
        (letrec ((_generate-e155162_
                  (lambda (_id155339_)
                    (let* ((_sym155341_
                            (if (let ((__tmp155923
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp155923))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _id155339_))
                                '#f))
                           (_$e155343_
                            (if _sym155341_
                                (let ()
                                  (declare (not safe))
                                  (gxc#optimizer-lookup-type _sym155341_))
                                '#f)))
                      (if _$e155343_
                          ((lambda (_type155346_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"generate typedecl " _sym155341_))
                             (let* ((_typedecl155348_
                                     (let ((__method155891
                                            (let ()
                                              (declare (not safe))
                                              (method-ref
                                               _type155346_
                                               'typedecl))))
                                       (if __method155891
                                           (__method155891 _type155346_)
                                           (let ()
                                             (declare (not safe))
                                             (error '"Missing method"
                                                    _type155346_
                                                    'typedecl)))))
                                    (__tmp155924
                                     (let ((__tmp155925
                                            (let ()
                                              (declare (not safe))
                                              (cons _typedecl155348_ '()))))
                                       (declare (not safe))
                                       (cons _sym155341_ __tmp155925))))
                               (declare (not safe))
                               (cons 'declare-type __tmp155924)))
                           _$e155343_)
                          '(begin))))))
          (let* ((___stx155589155590_ _stx155160_)
                 (_g155165155203_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx155589155590_)))))
            (let ((___kont155591155592_
                   (lambda (_L155321_)
                     (let ()
                       (declare (not safe))
                       (_generate-e155162_ _L155321_))))
                  (___kont155593155594_
                   (lambda (_L155256_)
                     (let ((_types155282_
                            (map _generate-e155162_
                                 (let ((__tmp155926
                                        (lambda (_g155274155277_
                                                 _g155275155279_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g155274155277_
                                                  _g155275155279_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp155926 '() _L155256_)))))
                       (declare (not safe))
                       (cons 'begin _types155282_)))))
              (let ((___match155644155645_
                     (lambda (_e155183155208_
                              _hd155182155211_
                              _tl155181155213_
                              _e155186155216_
                              _hd155185155219_
                              _tl155184155221_
                              ___splice155595155596_
                              _target155187155224_
                              _tl155189155226_)
                       (letrec ((_loop155190155229_
                                 (lambda (_hd155188155232_ _id155194155234_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd155188155232_))
                                       (let ((_e155191155237_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd155188155232_))))
                                         (let ((_lp-tl155193155242_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e155191155237_)))
                                               (_lp-hd155192155240_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e155191155237_))))
                                           (let ((__tmp155927
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd155192155240_
                                                          _id155194155234_))))
                                             (declare (not safe))
                                             (_loop155190155229_
                                              _lp-tl155193155242_
                                              __tmp155927))))
                                       (let ((_id155195155245_
                                              (reverse _id155194155234_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl155184155221_))
                                             (let ((_e155198155248_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl155184155221_))))
                                               (let ((_tl155196155253_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e155198155248_)))
                                                     (_hd155197155251_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e155198155248_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl155196155253_))
                                                     (___kont155593155594_
                                                      _id155195155245_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g155165155203_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g155165155203_))))))))
                         (let ()
                           (declare (not safe))
                           (_loop155190155229_ _target155187155224_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx155589155590_))
                    (let ((_e155170155289_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx155589155590_))))
                      (let ((_tl155168155294_
                             (let ()
                               (declare (not safe))
                               (##cdr _e155170155289_)))
                            (_hd155169155292_
                             (let ()
                               (declare (not safe))
                               (##car _e155170155289_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl155168155294_))
                            (let ((_e155173155297_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl155168155294_))))
                              (let ((_tl155171155302_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e155173155297_)))
                                    (_hd155172155300_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e155173155297_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd155172155300_))
                                    (let ((_e155176155305_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd155172155300_))))
                                      (let ((_tl155174155310_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e155176155305_)))
                                            (_hd155175155308_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e155176155305_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl155174155310_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl155171155302_))
                                                (let ((_e155179155313_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl155171155302_))))
                                                  (let ((_tl155177155318_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e155179155313_)))
                                                        (_hd155178155316_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e155179155313_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl155177155318_))
                                                        (___kont155591155592_
                                                         _hd155175155308_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _hd155172155300_))
                                                            (let ((___splice155595155596_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _hd155172155300_ '0))))
                      (let ((_tl155189155226_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice155595155596_ '1)))
                            (_target155187155224_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice155595155596_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl155189155226_))
                            (___match155644155645_
                             _e155170155289_
                             _hd155169155292_
                             _tl155168155294_
                             _e155173155297_
                             _hd155172155300_
                             _tl155171155302_
                             ___splice155595155596_
                             _target155187155224_
                             _tl155189155226_)
                            (let () (declare (not safe)) (_g155165155203_)))))
                    (let () (declare (not safe)) (_g155165155203_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _hd155172155300_))
                                                    (let ((___splice155595155596_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _hd155172155300_
                                                              '0))))
                                                      (let ((_tl155189155226_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice155595155596_ '1)))
                    (_target155187155224_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice155595155596_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl155189155226_))
                    (___match155644155645_
                     _e155170155289_
                     _hd155169155292_
                     _tl155168155294_
                     _e155173155297_
                     _hd155172155300_
                     _tl155171155302_
                     ___splice155595155596_
                     _target155187155224_
                     _tl155189155226_)
                    (let () (declare (not safe)) (_g155165155203_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g155165155203_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _hd155172155300_))
                                                (let ((___splice155595155596_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _hd155172155300_
                                                          '0))))
                                                  (let ((_tl155189155226_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice155595155596_
                                                            '1)))
                                                        (_target155187155224_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice155595155596_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl155189155226_))
                                                        (___match155644155645_
                                                         _e155170155289_
                                                         _hd155169155292_
                                                         _tl155168155294_
                                                         _e155173155297_
                                                         _hd155172155300_
                                                         _tl155171155302_
                                                         ___splice155595155596_
                                                         _target155187155224_
                                                         _tl155189155226_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g155165155203_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g155165155203_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd155172155300_))
                                        (let ((___splice155595155596_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd155172155300_
                                                  '0))))
                                          (let ((_tl155189155226_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice155595155596_
                                                    '1)))
                                                (_target155187155224_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice155595155596_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl155189155226_))
                                                (___match155644155645_
                                                 _e155170155289_
                                                 _hd155169155292_
                                                 _tl155168155294_
                                                 _e155173155297_
                                                 _hd155172155300_
                                                 _tl155171155302_
                                                 ___splice155595155596_
                                                 _target155187155224_
                                                 _tl155189155226_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g155165155203_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g155165155203_))))))
                            (let () (declare (not safe)) (_g155165155203_)))))
                    (let () (declare (not safe)) (_g155165155203_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_stx154714_)
        (let* ((___stx155647155648_ _stx154714_)
               (_g154718154820_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx155647155648_)))))
          (let ((___kont155649155650_
                 (lambda (_L155110_ _L155111_ _L155112_ _L155113_ _L155114_)
                   (let ((__tmp155928
                          (let ((__tmp155935
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L155113_)))
                                (__tmp155929
                                 (let ((__tmp155934
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L155112_)))
                                       (__tmp155930
                                        (let ((__tmp155933
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L155111_)))
                                              (__tmp155931
                                               (let ((__tmp155932
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L155110_))))
                                                 (declare (not safe))
                                                 (cons __tmp155932 '()))))
                                          (declare (not safe))
                                          (cons __tmp155933 __tmp155931))))
                                   (declare (not safe))
                                   (cons __tmp155934 __tmp155930))))
                            (declare (not safe))
                            (cons __tmp155935 __tmp155929))))
                     (declare (not safe))
                     (cons 'declare-method __tmp155928))))
                (___kont155651155652_
                 (lambda (_L154936_ _L154937_ _L154938_ _L154939_)
                   (let ((__tmp155936
                          (let ((__tmp155942
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L154938_)))
                                (__tmp155937
                                 (let ((__tmp155941
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L154937_)))
                                       (__tmp155938
                                        (let ((__tmp155940
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L154936_)))
                                              (__tmp155939
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '#f '()))))
                                          (declare (not safe))
                                          (cons __tmp155940 __tmp155939))))
                                   (declare (not safe))
                                   (cons __tmp155941 __tmp155938))))
                            (declare (not safe))
                            (cons __tmp155942 __tmp155937))))
                     (declare (not safe))
                     (cons 'declare-method __tmp155936))))
                (___kont155653155654_ (lambda () '(begin))))
            (let ((___match155782155783_
                   (lambda (_e154727154982_
                            _hd154726154985_
                            _tl154725154987_
                            _e154730154990_
                            _hd154729154993_
                            _tl154728154995_
                            _e154733154998_
                            _hd154732155001_
                            _tl154731155003_
                            _e154736155006_
                            _hd154735155009_
                            _tl154734155011_
                            _e154739155014_
                            _hd154738155017_
                            _tl154737155019_
                            _e154742155022_
                            _hd154741155025_
                            _tl154740155027_
                            _e154745155030_
                            _hd154744155033_
                            _tl154743155035_
                            _e154748155038_
                            _hd154747155041_
                            _tl154746155043_
                            _e154751155046_
                            _hd154750155049_
                            _tl154749155051_
                            _e154754155054_
                            _hd154753155057_
                            _tl154752155059_
                            _e154757155062_
                            _hd154756155065_
                            _tl154755155067_
                            _e154760155070_
                            _hd154759155073_
                            _tl154758155075_
                            _e154763155078_
                            _hd154762155081_
                            _tl154761155083_
                            _e154766155086_
                            _hd154765155089_
                            _tl154764155091_
                            _e154769155094_
                            _hd154768155097_
                            _tl154767155099_
                            _e154772155102_
                            _hd154771155105_
                            _tl154770155107_)
                     (let ((_L155110_ _hd154771155105_)
                           (_L155111_ _hd154762155081_)
                           (_L155112_ _hd154753155057_)
                           (_L155113_ _hd154744155033_)
                           (_L155114_ _hd154735155009_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L155114_
                              'bind-method!))
                           (___kont155649155650_
                            _L155110_
                            _L155111_
                            _L155112_
                            _L155113_
                            _L155114_)
                           (___kont155653155654_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx155647155648_))
                  (let ((_e154727154982_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx155647155648_))))
                    (let ((_tl154725154987_
                           (let ()
                             (declare (not safe))
                             (##cdr _e154727154982_)))
                          (_hd154726154985_
                           (let ()
                             (declare (not safe))
                             (##car _e154727154982_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl154725154987_))
                          (let ((_e154730154990_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl154725154987_))))
                            (let ((_tl154728154995_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e154730154990_)))
                                  (_hd154729154993_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e154730154990_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd154729154993_))
                                  (let ((_e154733154998_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd154729154993_))))
                                    (let ((_tl154731155003_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e154733154998_)))
                                          (_hd154732155001_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e154733154998_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd154732155001_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd154732155001_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl154731155003_))
                                                  (let ((_e154736155006_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl154731155003_))))
                                                    (let ((_tl154734155011_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e154736155006_)))
                                                          (_hd154735155009_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e154736155006_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl154734155011_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl154728154995_))
                      (let ((_e154739155014_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl154728154995_))))
                        (let ((_tl154737155019_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e154739155014_)))
                              (_hd154738155017_
                               (let ()
                                 (declare (not safe))
                                 (##car _e154739155014_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd154738155017_))
                              (let ((_e154742155022_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd154738155017_))))
                                (let ((_tl154740155027_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e154742155022_)))
                                      (_hd154741155025_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e154742155022_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd154741155025_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd154741155025_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl154740155027_))
                                              (let ((_e154745155030_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl154740155027_))))
                                                (let ((_tl154743155035_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e154745155030_)))
                                                      (_hd154744155033_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e154745155030_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl154743155035_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl154737155019_))
                                                          (let ((_e154748155038_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl154737155019_))))
                    (let ((_tl154746155043_
                           (let ()
                             (declare (not safe))
                             (##cdr _e154748155038_)))
                          (_hd154747155041_
                           (let ()
                             (declare (not safe))
                             (##car _e154748155038_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd154747155041_))
                          (let ((_e154751155046_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd154747155041_))))
                            (let ((_tl154749155051_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e154751155046_)))
                                  (_hd154750155049_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e154751155046_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd154750155049_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd154750155049_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl154749155051_))
                                          (let ((_e154754155054_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl154749155051_))))
                                            (let ((_tl154752155059_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e154754155054_)))
                                                  (_hd154753155057_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e154754155054_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl154752155059_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl154746155043_))
                                                      (let ((_e154757155062_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl154746155043_))))
                (let ((_tl154755155067_
                       (let () (declare (not safe)) (##cdr _e154757155062_)))
                      (_hd154756155065_
                       (let () (declare (not safe)) (##car _e154757155062_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd154756155065_))
                      (let ((_e154760155070_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd154756155065_))))
                        (let ((_tl154758155075_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e154760155070_)))
                              (_hd154759155073_
                               (let ()
                                 (declare (not safe))
                                 (##car _e154760155070_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd154759155073_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd154759155073_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl154758155075_))
                                      (let ((_e154763155078_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl154758155075_))))
                                        (let ((_tl154761155083_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e154763155078_)))
                                              (_hd154762155081_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e154763155078_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl154761155083_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl154755155067_))
                                                  (let ((_e154766155086_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl154755155067_))))
                                                    (let ((_tl154764155091_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e154766155086_)))
                                                          (_hd154765155089_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e154766155086_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd154765155089_))
                                                          (let ((_e154769155094_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd154765155089_))))
                    (let ((_tl154767155099_
                           (let ()
                             (declare (not safe))
                             (##cdr _e154769155094_)))
                          (_hd154768155097_
                           (let ()
                             (declare (not safe))
                             (##car _e154769155094_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd154768155097_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd154768155097_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl154767155099_))
                                  (let ((_e154772155102_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl154767155099_))))
                                    (let ((_tl154770155107_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e154772155102_)))
                                          (_hd154771155105_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e154772155102_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl154770155107_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl154764155091_))
                                              (___match155782155783_
                                               _e154727154982_
                                               _hd154726154985_
                                               _tl154725154987_
                                               _e154730154990_
                                               _hd154729154993_
                                               _tl154728154995_
                                               _e154733154998_
                                               _hd154732155001_
                                               _tl154731155003_
                                               _e154736155006_
                                               _hd154735155009_
                                               _tl154734155011_
                                               _e154739155014_
                                               _hd154738155017_
                                               _tl154737155019_
                                               _e154742155022_
                                               _hd154741155025_
                                               _tl154740155027_
                                               _e154745155030_
                                               _hd154744155033_
                                               _tl154743155035_
                                               _e154748155038_
                                               _hd154747155041_
                                               _tl154746155043_
                                               _e154751155046_
                                               _hd154750155049_
                                               _tl154749155051_
                                               _e154754155054_
                                               _hd154753155057_
                                               _tl154752155059_
                                               _e154757155062_
                                               _hd154756155065_
                                               _tl154755155067_
                                               _e154760155070_
                                               _hd154759155073_
                                               _tl154758155075_
                                               _e154763155078_
                                               _hd154762155081_
                                               _tl154761155083_
                                               _e154766155086_
                                               _hd154765155089_
                                               _tl154764155091_
                                               _e154769155094_
                                               _hd154768155097_
                                               _tl154767155099_
                                               _e154772155102_
                                               _hd154771155105_
                                               _tl154770155107_)
                                              (___kont155653155654_))
                                          (___kont155653155654_))))
                                  (___kont155653155654_))
                              (___kont155653155654_))
                          (___kont155653155654_))))
                  (___kont155653155654_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl154755155067_))
                                                      (if (let ((__tmp155943
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp155943 'bind-method!))
                  (let ((_L154936_ _hd154762155081_)
                        (_L154937_ _hd154753155057_)
                        (_L154938_ _hd154744155033_)
                        (_L154939_ _hd154735155009_))
                    (___kont155651155652_
                     _L154936_
                     _L154937_
                     _L154938_
                     _L154939_))
                  (___kont155653155654_))
              (___kont155653155654_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont155653155654_))))
                                      (___kont155653155654_))
                                  (___kont155653155654_))
                              (___kont155653155654_))))
                      (___kont155653155654_))))
              (___kont155653155654_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont155653155654_))))
                                          (___kont155653155654_))
                                      (___kont155653155654_))
                                  (___kont155653155654_))))
                          (___kont155653155654_))))
                  (___kont155653155654_))
              (___kont155653155654_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont155653155654_))
                                          (___kont155653155654_))
                                      (___kont155653155654_))))
                              (___kont155653155654_))))
                      (___kont155653155654_))
                  (___kont155653155654_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont155653155654_))
                                              (___kont155653155654_))
                                          (___kont155653155654_))))
                                  (___kont155653155654_))))
                          (___kont155653155654_))))
                  (___kont155653155654_)))))))
    (define gxc#!alias::typedecl
      (lambda (_self154690_)
        (let* ((_self154691154697_ _self154690_)
               (_E154693154701_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154691154697_))))
               (_K154694154706_
                (lambda (_alias-id154704_)
                  (let ((__tmp155944
                         (let ()
                           (declare (not safe))
                           (cons _alias-id154704_ '()))))
                    (declare (not safe))
                    (cons '@alias __tmp155944)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self154691154697_ 'gxc#!alias::t))
              (let* ((_e154695154709_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154691154697_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_alias-id154712_ _e154695154709_))
                (declare (not safe))
                (_K154694154706_ _alias-id154712_))
              (let () (declare (not safe)) (_E154693154701_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_self154481_)
        (let* ((_self154482154497_ _self154481_)
               (_E154484154501_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154482154497_))))
               (_K154485154515_
                (lambda (_methods154504_
                         _metaclass154505_
                         _final?154506_
                         _struct?154507_
                         _constructor154508_
                         _fields154509_
                         _slots154510_
                         _precendence-list154511_
                         _super154512_
                         _id154513_)
                  (let ((__tmp155945
                         (let ((__tmp155946
                                (let ((__tmp155947
                                       (let ((__tmp155948
                                              (let ((__tmp155949
                                                     (let ((__tmp155950
                                                            (let ((__tmp155951
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp155952
                                  (let ((__tmp155953
                                         (let ((__tmp155954
                                                (let ((__tmp155955
                                                       (if _methods154504_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (hash->list
                                                              _methods154504_))
                                                           '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp155955 '()))))
                                           (declare (not safe))
                                           (cons _metaclass154505_
                                                 __tmp155954))))
                                    (declare (not safe))
                                    (cons _final?154506_ __tmp155953))))
                             (declare (not safe))
                             (cons _struct?154507_ __tmp155952))))
                      (declare (not safe))
                      (cons _constructor154508_ __tmp155951))))
               (declare (not safe))
               (cons _fields154509_ __tmp155950))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _slots154510_
                                                      __tmp155949))))
                                         (declare (not safe))
                                         (cons _precendence-list154511_
                                               __tmp155948))))
                                  (declare (not safe))
                                  (cons _super154512_ __tmp155947))))
                           (declare (not safe))
                           (cons _id154513_ __tmp155946))))
                    (declare (not safe))
                    (cons '@class __tmp155945)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self154482154497_ 'gxc#!class::t))
              (let* ((_e154486154518_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154482154497_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_id154521_ _e154486154518_)
                     (_e154487154523_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154482154497_
                         '2
                         gxc#!class::t
                         '#f)))
                     (_super154526_ _e154487154523_)
                     (_e154488154528_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154482154497_
                         '3
                         gxc#!class::t
                         '#f)))
                     (_precendence-list154531_ _e154488154528_)
                     (_e154489154533_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154482154497_
                         '4
                         gxc#!class::t
                         '#f)))
                     (_slots154536_ _e154489154533_)
                     (_e154490154538_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154482154497_
                         '5
                         gxc#!class::t
                         '#f)))
                     (_fields154541_ _e154490154538_)
                     (_e154491154543_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154482154497_
                         '6
                         gxc#!class::t
                         '#f)))
                     (_constructor154546_ _e154491154543_)
                     (_e154492154548_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154482154497_
                         '7
                         gxc#!class::t
                         '#f)))
                     (_struct?154551_ _e154492154548_)
                     (_e154493154553_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154482154497_
                         '8
                         gxc#!class::t
                         '#f)))
                     (_final?154556_ _e154493154553_)
                     (_e154494154558_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154482154497_
                         '9
                         gxc#!class::t
                         '#f)))
                     (_metaclass154561_ _e154494154558_)
                     (_e154495154563_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154482154497_
                         '10
                         gxc#!class::t
                         '#f)))
                     (_methods154566_ _e154495154563_))
                (declare (not safe))
                (_K154485154515_
                 _methods154566_
                 _metaclass154561_
                 _final?154556_
                 _struct?154551_
                 _constructor154546_
                 _fields154541_
                 _slots154536_
                 _precendence-list154531_
                 _super154526_
                 _id154521_))
              (let () (declare (not safe)) (_E154484154501_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_self154335_)
        (let* ((_self154336154342_ _self154335_)
               (_E154338154346_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154336154342_))))
               (_K154339154351_
                (lambda (_klass-id154349_)
                  (let ((__tmp155956
                         (let ()
                           (declare (not safe))
                           (cons _klass-id154349_ '()))))
                    (declare (not safe))
                    (cons '@predicate __tmp155956)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self154336154342_
                 'gxc#!predicate::t))
              (let* ((_e154340154354_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154336154342_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id154357_ _e154340154354_))
                (declare (not safe))
                (_K154339154351_ _klass-id154357_))
              (let () (declare (not safe)) (_E154338154346_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_self154189_)
        (let* ((_self154190154196_ _self154189_)
               (_E154192154200_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154190154196_))))
               (_K154193154205_
                (lambda (_klass-id154203_)
                  (let ((__tmp155957
                         (let ()
                           (declare (not safe))
                           (cons _klass-id154203_ '()))))
                    (declare (not safe))
                    (cons '@constructor __tmp155957)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self154190154196_
                 'gxc#!constructor::t))
              (let* ((_e154194154208_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154190154196_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id154211_ _e154194154208_))
                (declare (not safe))
                (_K154193154205_ _klass-id154211_))
              (let () (declare (not safe)) (_E154192154200_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_self154029_)
        (let* ((_self154030154038_ _self154029_)
               (_E154032154042_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154030154038_))))
               (_K154033154049_
                (lambda (_checked?154045_ _slot154046_ _klass-id154047_)
                  (let ((__tmp155958
                         (let ((__tmp155959
                                (let ((__tmp155960
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?154045_ '()))))
                                  (declare (not safe))
                                  (cons _slot154046_ __tmp155960))))
                           (declare (not safe))
                           (cons _klass-id154047_ __tmp155959))))
                    (declare (not safe))
                    (cons '@accessor __tmp155958)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self154030154038_
                 'gxc#!accessor::t))
              (let* ((_e154034154052_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154030154038_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id154055_ _e154034154052_)
                     (_e154035154057_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154030154038_
                         '2
                         gxc#!accessor::t
                         '#f)))
                     (_slot154060_ _e154035154057_)
                     (_e154036154062_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154030154038_
                         '3
                         gxc#!accessor::t
                         '#f)))
                     (_checked?154065_ _e154036154062_))
                (declare (not safe))
                (_K154033154049_
                 _checked?154065_
                 _slot154060_
                 _klass-id154055_))
              (let () (declare (not safe)) (_E154032154042_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_self153869_)
        (let* ((_self153870153878_ _self153869_)
               (_E153872153882_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self153870153878_))))
               (_K153873153889_
                (lambda (_checked?153885_ _slot153886_ _klass-id153887_)
                  (let ((__tmp155961
                         (let ((__tmp155962
                                (let ((__tmp155963
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?153885_ '()))))
                                  (declare (not safe))
                                  (cons _slot153886_ __tmp155963))))
                           (declare (not safe))
                           (cons _klass-id153887_ __tmp155962))))
                    (declare (not safe))
                    (cons '@mutator __tmp155961)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self153870153878_ 'gxc#!mutator::t))
              (let* ((_e153874153892_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153870153878_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id153895_ _e153874153892_)
                     (_e153875153897_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153870153878_
                         '2
                         gxc#!mutator::t
                         '#f)))
                     (_slot153900_ _e153875153897_)
                     (_e153876153902_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153870153878_
                         '3
                         gxc#!mutator::t
                         '#f)))
                     (_checked?153905_ _e153876153902_))
                (declare (not safe))
                (_K153873153889_
                 _checked?153905_
                 _slot153900_
                 _klass-id153895_))
              (let () (declare (not safe)) (_E153872153882_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!lambda::typedecl
      (lambda (_self153695_)
        (let* ((_self153696153706_ _self153695_)
               (_E153698153710_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self153696153706_))))
               (_K153699153721_
                (lambda (_typedecl153713_
                         _inline153714_
                         _dispatch153715_
                         _arity153716_)
                  (if _inline153714_
                      (let ((_$e153718_ _typedecl153713_))
                        (if _$e153718_
                            _$e153718_
                            (let ()
                              (declare (not safe))
                              (error '"Cannot generate typedecl for inline rules"))))
                      (let ((__tmp155964
                             (let ((__tmp155965
                                    (let ()
                                      (declare (not safe))
                                      (cons _dispatch153715_ '()))))
                               (declare (not safe))
                               (cons _arity153716_ __tmp155965))))
                        (declare (not safe))
                        (cons '@lambda __tmp155964))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self153696153706_ 'gxc#!lambda::t))
              (let* ((_e153700153724_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153696153706_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e153701153727_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153696153706_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity153730_ _e153701153727_)
                     (_e153702153732_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153696153706_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch153735_ _e153702153732_)
                     (_e153703153737_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153696153706_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline153740_ _e153703153737_)
                     (_e153704153742_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153696153706_
                         '5
                         gxc#!lambda::t
                         '#f)))
                     (_typedecl153745_ _e153704153742_))
                (declare (not safe))
                (_K153699153721_
                 _typedecl153745_
                 _inline153740_
                 _dispatch153735_
                 _arity153730_))
              (let () (declare (not safe)) (_E153698153710_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_self153506_)
        (letrec ((_clause-e153508_
                  (lambda (_clause153538_)
                    (let* ((_clause153539153547_ _clause153538_)
                           (_E153541153551_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _clause153539153547_))))
                           (_K153542153557_
                            (lambda (_dispatch153554_ _arity153555_)
                              (let ((__tmp155966
                                     (let ()
                                       (declare (not safe))
                                       (cons _dispatch153554_ '()))))
                                (declare (not safe))
                                (cons _arity153555_ __tmp155966)))))
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _clause153539153547_
                             'gxc#!lambda::t))
                          (let* ((_e153543153560_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause153539153547_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                                 (_e153544153563_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause153539153547_
                                     '2
                                     gxc#!lambda::t
                                     '#f)))
                                 (_arity153566_ _e153544153563_)
                                 (_e153545153568_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause153539153547_
                                     '3
                                     gxc#!lambda::t
                                     '#f)))
                                 (_dispatch153571_ _e153545153568_))
                            (declare (not safe))
                            (_K153542153557_ _dispatch153571_ _arity153566_))
                          (let () (declare (not safe)) (_E153541153551_)))))))
          (let* ((_self153509153516_ _self153506_)
                 (_E153511153520_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching" _self153509153516_))))
                 (_K153512153527_
                  (lambda (_clauses153523_)
                    (let ((_clauses153525_
                           (map _clause-e153508_ _clauses153523_)))
                      (declare (not safe))
                      (cons '@case-lambda _clauses153525_)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of?
                   _self153509153516_
                   'gxc#!case-lambda::t))
                (let* ((_e153513153530_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self153509153516_
                           '1
                           gxc#!type::t
                           '#f)))
                       (_e153514153533_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self153509153516_
                           '2
                           gxc#!case-lambda::t
                           '#f)))
                       (_clauses153536_ _e153514153533_))
                  (declare (not safe))
                  (_K153512153527_ _clauses153536_))
                (let () (declare (not safe)) (_E153511153520_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_self153349_)
        (let* ((_self153350153358_ _self153349_)
               (_E153352153362_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self153350153358_))))
               (_K153353153368_
                (lambda (_dispatch153365_ _table153366_)
                  (let ((__tmp155967
                         (let ((__tmp155968
                                (let ()
                                  (declare (not safe))
                                  (cons _dispatch153365_ '()))))
                           (declare (not safe))
                           (cons _table153366_ __tmp155968))))
                    (declare (not safe))
                    (cons '@kw-lambda __tmp155967)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self153350153358_
                 'gxc#!kw-lambda::t))
              (let* ((_e153354153371_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153350153358_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e153355153374_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153350153358_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table153377_ _e153355153374_)
                     (_e153356153379_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153350153358_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch153382_ _e153356153379_))
                (declare (not safe))
                (_K153353153368_ _dispatch153382_ _table153377_))
              (let () (declare (not safe)) (_E153352153362_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda::t
       'typedecl
       gxc#!kw-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_self153192_)
        (let* ((_self153193153201_ _self153192_)
               (_E153195153205_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self153193153201_))))
               (_K153196153211_
                (lambda (_main153208_ _keys153209_)
                  (let ((__tmp155969
                         (let ((__tmp155970
                                (let ()
                                  (declare (not safe))
                                  (cons _main153208_ '()))))
                           (declare (not safe))
                           (cons _keys153209_ __tmp155970))))
                    (declare (not safe))
                    (cons '@kw-lambda-dispatch __tmp155969)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self153193153201_
                 'gxc#!kw-lambda-primary::t))
              (let* ((_e153197153214_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153193153201_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e153198153217_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153193153201_
                         '2
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_keys153220_ _e153198153217_)
                     (_e153199153222_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153193153201_
                         '3
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_main153225_ _e153199153222_))
                (declare (not safe))
                (_K153196153211_ _main153225_ _keys153220_))
              (let () (declare (not safe)) (_E153195153205_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))))
