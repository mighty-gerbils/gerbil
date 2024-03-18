(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1710770274)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (gxc#current-compile-optimizer-info)
            '#!void
            (gxc#current-compile-optimizer-info
             (let ((__obj158707
                    (let ()
                      (declare (not safe))
                      (##structure gxc#optimizer-info::t '#f '#f '#f))))
               (gxc#optimizer-info:::init! __obj158707)
               __obj158707)))))
    (define gxc#optimize!
      (lambda (_ctx158400_)
        (let ((__tmp158713
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _ctx158400_))
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-builtin-ssxi _ctx158400_))
                 (let ((__tmp158715
                        (##structure-ref
                         (gxc#current-compile-optimizer-info)
                         '2
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp158714
                        (##structure-ref
                         _ctx158400_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp158715 __tmp158714 '#t))
                 (let ((_code158403_
                        (let ((__tmp158716
                               (##structure-ref
                                _ctx158400_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp158716))))
                   (##structure-set!
                    _ctx158400_
                    _code158403_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp158712 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp158711 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters
           __tmp158713
           gxc#current-compile-mutators
           __tmp158712
           gxc#current-compile-local-type
           __tmp158711))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_ctx158389_)
        (letrec ((_load-it!158391_
                  (lambda (_id158398_)
                    (if (let ((__tmp158718
                               (##structure-ref
                                (gxc#current-compile-optimizer-info)
                                '2
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp158718 _id158398_))
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-import-ssxi-by-id _id158398_))
                          (let ((__tmp158717
                                 (##structure-ref
                                  (gxc#current-compile-optimizer-info)
                                  '2
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp158717 _id158398_ '#t)))))))
          (let* ((_modid158393_
                  (##structure-ref _ctx158389_ '1 gx#expander-context::t '#f))
                 (_modid-str158395_ (symbol->string _modid158393_)))
            (for-each
             _load-it!158391_
             '(gerbil/runtime/gambit
               gerbil/runtime/util
               gerbil/runtime/table
               gerbil/runtime/control
               gerbil/runtime/system
               gerbil/runtime/c3
               gerbil/runtime/mop
               gerbil/runtime/mop-system-classes
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
               gerbil/builtin))))))
    (define gxc#optimizer-load-ssxi-deps
      (lambda (_ctx158334_)
        (letrec* ((_deps158336_
                   (let* ((_imports158380_
                           (##structure-ref
                            _ctx158334_
                            '8
                            gx#module-context::t
                            '#f))
                          (_$e158382_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _ctx158334_))))
                     (if _$e158382_
                         ((lambda (_g158384158386_)
                            (let ()
                              (declare (not safe))
                              (cons _g158384158386_ _imports158380_)))
                          _$e158382_)
                         _imports158380_))))
          (let _lp158338_ ((_rest158340_ _deps158336_))
            (let* ((_rest158341158349_ _rest158340_)
                   (_else158343158357_ (lambda () '#!void))
                   (_K158345158368_
                    (lambda (_rest158360_ _hd158361_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _hd158361_
                             'gx#module-context::t))
                          (begin
                            (if (let ((__tmp158732
                                       (##structure-ref
                                        (gxc#current-compile-optimizer-info)
                                        '2
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp158731
                                       (##structure-ref
                                        _hd158361_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (hash-get __tmp158732 __tmp158731))
                                '#!void
                                (begin
                                  (let ((_$e158363_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _hd158361_))))
                                    (if _$e158363_
                                        ((lambda (_pre158366_)
                                           (let ((__tmp158729
                                                  (let ((__tmp158730
                                                         (##structure-ref
                                                          _hd158361_
                                                          '8
                                                          gx#module-context::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (cons _pre158366_
                                                          __tmp158730))))
                                             (declare (not safe))
                                             (_lp158338_ __tmp158729)))
                                         _$e158363_)
                                        (let ((__tmp158728
                                               (##structure-ref
                                                _hd158361_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                          (declare (not safe))
                                          (_lp158338_ __tmp158728))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _hd158361_))))
                            (let ()
                              (declare (not safe))
                              (_lp158338_ _rest158360_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _hd158361_
                                 'gx#prelude-context::t))
                              (begin
                                (if (let ((__tmp158727
                                           (##structure-ref
                                            (gxc#current-compile-optimizer-info)
                                            '2
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp158726
                                           (##structure-ref
                                            _hd158361_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (hash-get __tmp158727 __tmp158726))
                                    '#!void
                                    (begin
                                      (let ((__tmp158725
                                             (##structure-ref
                                              _hd158361_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_lp158338_ __tmp158725))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi _hd158361_))))
                                (let ()
                                  (declare (not safe))
                                  (_lp158338_ _rest158360_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _hd158361_
                                     'gx#module-import::t))
                                  (let ((__tmp158723
                                         (let ((__tmp158724
                                                (##direct-structure-ref
                                                 _hd158361_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp158724 _rest158360_))))
                                    (declare (not safe))
                                    (_lp158338_ __tmp158723))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _hd158361_
                                         'gx#module-export::t))
                                      (let ((__tmp158721
                                             (let ((__tmp158722
                                                    (##direct-structure-ref
                                                     _hd158361_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp158722
                                                     _rest158360_))))
                                        (declare (not safe))
                                        (_lp158338_ __tmp158721))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _hd158361_
                                             'gx#import-set::t))
                                          (let ((__tmp158719
                                                 (let ((__tmp158720
                                                        (##direct-structure-ref
                                                         _hd158361_
                                                         '1
                                                         gx#import-set::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp158720
                                                         _rest158360_))))
                                            (declare (not safe))
                                            (_lp158338_ __tmp158719))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _hd158361_))))))))))
              (if (let () (declare (not safe)) (##pair? _rest158341158349_))
                  (let ((_hd158346158371_
                         (let ()
                           (declare (not safe))
                           (##car _rest158341158349_)))
                        (_tl158347158373_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest158341158349_))))
                    (let* ((_hd158376_ _hd158346158371_)
                           (_rest158378_ _tl158347158373_))
                      (declare (not safe))
                      (_K158345158368_ _rest158378_ _hd158376_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_ctx158314_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _ctx158314_
                    'gx#module-context::t))
                 (let ((__tmp158733
                        (##structure-ref
                         _ctx158314_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp158733)))
            '#!void
            (let* ((_ht158316_
                    (##structure-ref
                     (gxc#current-compile-optimizer-info)
                     '2
                     gxc#optimizer-info::t
                     '#f))
                   (_id158318_
                    (##structure-ref
                     _ctx158314_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_mod158320_
                    (let ()
                      (declare (not safe))
                      (hash-get _ht158316_ _id158318_))))
              (let ((_$e158323_ _mod158320_))
                (if _$e158323_
                    _$e158323_
                    (let* ((_mod158326_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-import-ssxi _ctx158314_)))
                           (_val158331_
                            (let ((_$e158328_ _mod158326_))
                              (if _$e158328_ _$e158328_ '#!void))))
                      (let ()
                        (declare (not safe))
                        (hash-put! _ht158316_ _id158318_ _val158331_))
                      _val158331_)))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_ctx158312_)
        (if (##structure-ref _ctx158312_ '1 gx#expander-context::t '#f)
            (let ((__tmp158734
                   (##structure-ref
                    _ctx158312_
                    '1
                    gx#expander-context::t
                    '#f)))
              (declare (not safe))
              (gxc#optimizer-import-ssxi-by-id __tmp158734))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_id158289_)
        (letrec ((_catch-e158291_
                  (lambda (_exn158310_)
                    (if (gxc#current-compile-verbose)
                        (begin
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"Failed to load ssxi module for "
                             _id158289_))
                          (display-exception _exn158310_))
                        '#!void)
                    '#f))
                 (_import-e158292_
                  (lambda ()
                    (let* ((_str-id158295_
                            (string-append
                             (let ()
                               (declare (not safe))
                               (gxc#module-id->path-string _id158289_))
                             '".ssxi"))
                           (_artefact-path158303_
                            (let ((_odir158296158298_
                                   (gxc#current-compile-output-dir)))
                              (if _odir158296158298_
                                  (let ((_odir158301_ _odir158296158298_))
                                    (path-expand
                                     (string-append _str-id158295_ '".ss")
                                     _odir158301_))
                                  '#f)))
                           (_library-path158305_
                            (string->symbol
                             (string-append '":" _str-id158295_ '".ss")))
                           (_ssxi-path158307_
                            (if (and _artefact-path158303_
                                     (file-exists? _artefact-path158303_))
                                _artefact-path158303_
                                _library-path158305_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _ssxi-path158307_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _ssxi-path158307_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (with-catch _catch-e158291_ _import-e158292_)))))
    (define gxc#optimize-source
      (lambda (_stx158280_)
        (let () (declare (not safe)) (gxc#apply-collect-mutators _stx158280_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _stx158280_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _stx158280_))
        (let* ((_stx158282_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _stx158280_)))
               (_stx158284_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _stx158282_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _stx158284_))
          (let ((_stx158287_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _stx158284_))))
            (declare (not safe))
            (gxc#apply-optimize-call _stx158287_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp158737 (list gxc#::generate-runtime-empty::t))
            (__tmp158735
             (let ((__tmp158736
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp158736 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp158737
         '()
         __tmp158735
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _$args158277_
        (apply make-instance gxc#::generate-ssxi::t _$args158277_)))
    (define gxc#::generate-ssxi-bind-methods!
      (make-promise
       (lambda ()
         (force gxc#::generate-runtime-empty-bind-methods!)
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::generate-ssxi::t
            '%#begin
            gxc#generate-runtime-begin%))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::generate-ssxi::t
            '%#begin-syntax
            gxc#generate-ssxi-begin-syntax%))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::generate-ssxi::t
            '%#module
            gxc#generate-ssxi-module%))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::generate-ssxi::t
            '%#define-values
            gxc#generate-ssxi-define-values%))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::generate-ssxi::t
            '%#call
            gxc#generate-ssxi-call%))
         (let () (declare (not safe)) (seal-class! gxc#::generate-ssxi::t)))))
    (define gxc#apply-generate-ssxi
      (lambda (_stx158269_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_self158272_
                (let ((__obj158709
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj158709))
               (__tmp158738
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self158272_ _stx158269_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp158738
           gxc#current-compile-method
           _self158272_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_self158229_ _stx158230_)
        (let* ((_g158232158242_
                (lambda (_g158233158239_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g158233158239_))))
               (_g158231158266_
                (lambda (_g158233158245_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g158233158245_))
                      (let ((_e158237158247_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g158233158245_))))
                        (let ((_hd158236158250_
                               (let ()
                                 (declare (not safe))
                                 (##car _e158237158247_)))
                              (_tl158235158252_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e158237158247_))))
                          ((lambda (_L158255_)
                             (let ((__tmp158741
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _self158229_
                                         _stx158230_))))
                                   (__tmp158739
                                    (let ((__tmp158740
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp158740 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp158741
                                gx#current-expander-phi
                                __tmp158739)))
                           _tl158235158252_)))
                      (let ()
                        (declare (not safe))
                        (_g158232158242_ _g158233158245_))))))
          (declare (not safe))
          (_g158231158266_ _stx158230_))))
    (define gxc#generate-ssxi-module%
      (lambda (_self158168_ _stx158169_)
        (let* ((_g158171158185_
                (lambda (_g158172158182_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g158172158182_))))
               (_g158170158226_
                (lambda (_g158172158188_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g158172158188_))
                      (let ((_e158177158190_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g158172158188_))))
                        (let ((_hd158176158193_
                               (let ()
                                 (declare (not safe))
                                 (##car _e158177158190_)))
                              (_tl158175158195_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e158177158190_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl158175158195_))
                              (let ((_e158180158198_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl158175158195_))))
                                (let ((_hd158179158201_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e158180158198_)))
                                      (_tl158178158203_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e158180158198_))))
                                  ((lambda (_L158206_ _L158207_)
                                     (let* ((_ctx158220_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L158207_)))
                                            (_code158222_
                                             (##structure-ref
                                              _ctx158220_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp158742
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self158168_
                                                   _code158222_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp158742
                                          gx#current-expander-context
                                          _ctx158220_))))
                                   _tl158178158203_
                                   _hd158179158201_)))
                              (let ()
                                (declare (not safe))
                                (_g158171158185_ _g158172158188_)))))
                      (let ()
                        (declare (not safe))
                        (_g158171158185_ _g158172158188_))))))
          (declare (not safe))
          (_g158170158226_ _stx158169_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_self157977_ _stx157978_)
        (letrec ((_generate-e157980_
                  (lambda (_id158157_)
                    (let* ((_sym158159_
                            (if (let ((__tmp158743
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp158743))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _id158157_))
                                '#f))
                           (_$e158161_
                            (if _sym158159_
                                (let ()
                                  (declare (not safe))
                                  (gxc#optimizer-lookup-type _sym158159_))
                                '#f)))
                      (if _$e158161_
                          ((lambda (_type158164_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"generate typedecl " _sym158159_))
                             (let* ((_typedecl158166_
                                     (let ((__method158710
                                            (let ()
                                              (declare (not safe))
                                              (method-ref
                                               _type158164_
                                               'typedecl))))
                                       (if __method158710
                                           (__method158710 _type158164_)
                                           (let ()
                                             (declare (not safe))
                                             (error '"Missing method"
                                                    _type158164_
                                                    'typedecl)))))
                                    (__tmp158744
                                     (let ((__tmp158745
                                            (let ()
                                              (declare (not safe))
                                              (cons _typedecl158166_ '()))))
                                       (declare (not safe))
                                       (cons _sym158159_ __tmp158745))))
                               (declare (not safe))
                               (cons 'declare-type __tmp158744)))
                           _$e158161_)
                          '(begin))))))
          (let* ((___stx158406158407_ _stx157978_)
                 (_g157983158021_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx158406158407_)))))
            (let ((___kont158408158409_
                   (lambda (_L158139_)
                     (let ()
                       (declare (not safe))
                       (_generate-e157980_ _L158139_))))
                  (___kont158410158411_
                   (lambda (_L158074_)
                     (let ((_types158100_
                            (map _generate-e157980_
                                 (let ((__tmp158746
                                        (lambda (_g158092158095_
                                                 _g158093158097_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g158092158095_
                                                  _g158093158097_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp158746 '() _L158074_)))))
                       (declare (not safe))
                       (cons 'begin _types158100_)))))
              (let ((___match158461158462_
                     (lambda (_e158001158026_
                              _hd158000158029_
                              _tl157999158031_
                              _e158004158034_
                              _hd158003158037_
                              _tl158002158039_
                              ___splice158412158413_
                              _target158005158042_
                              _tl158007158044_)
                       (letrec ((_loop158008158047_
                                 (lambda (_hd158006158050_ _id158012158052_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd158006158050_))
                                       (let ((_e158009158055_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd158006158050_))))
                                         (let ((_lp-tl158011158060_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e158009158055_)))
                                               (_lp-hd158010158058_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e158009158055_))))
                                           (let ((__tmp158747
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd158010158058_
                                                          _id158012158052_))))
                                             (declare (not safe))
                                             (_loop158008158047_
                                              _lp-tl158011158060_
                                              __tmp158747))))
                                       (let ((_id158013158063_
                                              (reverse _id158012158052_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl158002158039_))
                                             (let ((_e158016158066_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl158002158039_))))
                                               (let ((_tl158014158071_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e158016158066_)))
                                                     (_hd158015158069_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e158016158066_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl158014158071_))
                                                     (___kont158410158411_
                                                      _id158013158063_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g157983158021_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g157983158021_))))))))
                         (let ()
                           (declare (not safe))
                           (_loop158008158047_ _target158005158042_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx158406158407_))
                    (let ((_e157988158107_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx158406158407_))))
                      (let ((_tl157986158112_
                             (let ()
                               (declare (not safe))
                               (##cdr _e157988158107_)))
                            (_hd157987158110_
                             (let ()
                               (declare (not safe))
                               (##car _e157988158107_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl157986158112_))
                            (let ((_e157991158115_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl157986158112_))))
                              (let ((_tl157989158120_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e157991158115_)))
                                    (_hd157990158118_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e157991158115_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd157990158118_))
                                    (let ((_e157994158123_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd157990158118_))))
                                      (let ((_tl157992158128_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e157994158123_)))
                                            (_hd157993158126_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e157994158123_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl157992158128_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl157989158120_))
                                                (let ((_e157997158131_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl157989158120_))))
                                                  (let ((_tl157995158136_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e157997158131_)))
                                                        (_hd157996158134_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e157997158131_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl157995158136_))
                                                        (___kont158408158409_
                                                         _hd157993158126_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _hd157990158118_))
                                                            (let ((___splice158412158413_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _hd157990158118_ '0))))
                      (let ((_tl158007158044_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice158412158413_ '1)))
                            (_target158005158042_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice158412158413_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl158007158044_))
                            (___match158461158462_
                             _e157988158107_
                             _hd157987158110_
                             _tl157986158112_
                             _e157991158115_
                             _hd157990158118_
                             _tl157989158120_
                             ___splice158412158413_
                             _target158005158042_
                             _tl158007158044_)
                            (let () (declare (not safe)) (_g157983158021_)))))
                    (let () (declare (not safe)) (_g157983158021_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _hd157990158118_))
                                                    (let ((___splice158412158413_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _hd157990158118_
                                                              '0))))
                                                      (let ((_tl158007158044_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice158412158413_ '1)))
                    (_target158005158042_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice158412158413_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl158007158044_))
                    (___match158461158462_
                     _e157988158107_
                     _hd157987158110_
                     _tl157986158112_
                     _e157991158115_
                     _hd157990158118_
                     _tl157989158120_
                     ___splice158412158413_
                     _target158005158042_
                     _tl158007158044_)
                    (let () (declare (not safe)) (_g157983158021_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g157983158021_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _hd157990158118_))
                                                (let ((___splice158412158413_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _hd157990158118_
                                                          '0))))
                                                  (let ((_tl158007158044_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice158412158413_
                                                            '1)))
                                                        (_target158005158042_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice158412158413_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl158007158044_))
                                                        (___match158461158462_
                                                         _e157988158107_
                                                         _hd157987158110_
                                                         _tl157986158112_
                                                         _e157991158115_
                                                         _hd157990158118_
                                                         _tl157989158120_
                                                         ___splice158412158413_
                                                         _target158005158042_
                                                         _tl158007158044_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g157983158021_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g157983158021_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd157990158118_))
                                        (let ((___splice158412158413_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd157990158118_
                                                  '0))))
                                          (let ((_tl158007158044_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice158412158413_
                                                    '1)))
                                                (_target158005158042_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice158412158413_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl158007158044_))
                                                (___match158461158462_
                                                 _e157988158107_
                                                 _hd157987158110_
                                                 _tl157986158112_
                                                 _e157991158115_
                                                 _hd157990158118_
                                                 _tl157989158120_
                                                 ___splice158412158413_
                                                 _target158005158042_
                                                 _tl158007158044_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g157983158021_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g157983158021_))))))
                            (let () (declare (not safe)) (_g157983158021_)))))
                    (let () (declare (not safe)) (_g157983158021_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_self157530_ _stx157531_)
        (let* ((___stx158464158465_ _stx157531_)
               (_g157535157637_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx158464158465_)))))
          (let ((___kont158466158467_
                 (lambda (_L157927_ _L157928_ _L157929_ _L157930_ _L157931_)
                   (let ((__tmp158748
                          (let ((__tmp158755
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L157930_)))
                                (__tmp158749
                                 (let ((__tmp158754
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L157929_)))
                                       (__tmp158750
                                        (let ((__tmp158753
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L157928_)))
                                              (__tmp158751
                                               (let ((__tmp158752
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L157927_))))
                                                 (declare (not safe))
                                                 (cons __tmp158752 '()))))
                                          (declare (not safe))
                                          (cons __tmp158753 __tmp158751))))
                                   (declare (not safe))
                                   (cons __tmp158754 __tmp158750))))
                            (declare (not safe))
                            (cons __tmp158755 __tmp158749))))
                     (declare (not safe))
                     (cons 'declare-method __tmp158748))))
                (___kont158468158469_
                 (lambda (_L157753_ _L157754_ _L157755_ _L157756_)
                   (let ((__tmp158756
                          (let ((__tmp158762
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L157755_)))
                                (__tmp158757
                                 (let ((__tmp158761
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L157754_)))
                                       (__tmp158758
                                        (let ((__tmp158760
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L157753_)))
                                              (__tmp158759
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '#f '()))))
                                          (declare (not safe))
                                          (cons __tmp158760 __tmp158759))))
                                   (declare (not safe))
                                   (cons __tmp158761 __tmp158758))))
                            (declare (not safe))
                            (cons __tmp158762 __tmp158757))))
                     (declare (not safe))
                     (cons 'declare-method __tmp158756))))
                (___kont158470158471_ (lambda () '(begin))))
            (let ((___match158599158600_
                   (lambda (_e157544157799_
                            _hd157543157802_
                            _tl157542157804_
                            _e157547157807_
                            _hd157546157810_
                            _tl157545157812_
                            _e157550157815_
                            _hd157549157818_
                            _tl157548157820_
                            _e157553157823_
                            _hd157552157826_
                            _tl157551157828_
                            _e157556157831_
                            _hd157555157834_
                            _tl157554157836_
                            _e157559157839_
                            _hd157558157842_
                            _tl157557157844_
                            _e157562157847_
                            _hd157561157850_
                            _tl157560157852_
                            _e157565157855_
                            _hd157564157858_
                            _tl157563157860_
                            _e157568157863_
                            _hd157567157866_
                            _tl157566157868_
                            _e157571157871_
                            _hd157570157874_
                            _tl157569157876_
                            _e157574157879_
                            _hd157573157882_
                            _tl157572157884_
                            _e157577157887_
                            _hd157576157890_
                            _tl157575157892_
                            _e157580157895_
                            _hd157579157898_
                            _tl157578157900_
                            _e157583157903_
                            _hd157582157906_
                            _tl157581157908_
                            _e157586157911_
                            _hd157585157914_
                            _tl157584157916_
                            _e157589157919_
                            _hd157588157922_
                            _tl157587157924_)
                     (let ((_L157927_ _hd157588157922_)
                           (_L157928_ _hd157579157898_)
                           (_L157929_ _hd157570157874_)
                           (_L157930_ _hd157561157850_)
                           (_L157931_ _hd157552157826_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L157931_
                              'bind-method!))
                           (___kont158466158467_
                            _L157927_
                            _L157928_
                            _L157929_
                            _L157930_
                            _L157931_)
                           (___kont158470158471_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx158464158465_))
                  (let ((_e157544157799_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx158464158465_))))
                    (let ((_tl157542157804_
                           (let ()
                             (declare (not safe))
                             (##cdr _e157544157799_)))
                          (_hd157543157802_
                           (let ()
                             (declare (not safe))
                             (##car _e157544157799_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl157542157804_))
                          (let ((_e157547157807_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl157542157804_))))
                            (let ((_tl157545157812_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e157547157807_)))
                                  (_hd157546157810_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e157547157807_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd157546157810_))
                                  (let ((_e157550157815_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd157546157810_))))
                                    (let ((_tl157548157820_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e157550157815_)))
                                          (_hd157549157818_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e157550157815_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd157549157818_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd157549157818_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl157548157820_))
                                                  (let ((_e157553157823_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl157548157820_))))
                                                    (let ((_tl157551157828_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e157553157823_)))
                                                          (_hd157552157826_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e157553157823_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl157551157828_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl157545157812_))
                      (let ((_e157556157831_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl157545157812_))))
                        (let ((_tl157554157836_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e157556157831_)))
                              (_hd157555157834_
                               (let ()
                                 (declare (not safe))
                                 (##car _e157556157831_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd157555157834_))
                              (let ((_e157559157839_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd157555157834_))))
                                (let ((_tl157557157844_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e157559157839_)))
                                      (_hd157558157842_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e157559157839_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd157558157842_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd157558157842_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl157557157844_))
                                              (let ((_e157562157847_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl157557157844_))))
                                                (let ((_tl157560157852_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e157562157847_)))
                                                      (_hd157561157850_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e157562157847_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl157560157852_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl157554157836_))
                                                          (let ((_e157565157855_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl157554157836_))))
                    (let ((_tl157563157860_
                           (let ()
                             (declare (not safe))
                             (##cdr _e157565157855_)))
                          (_hd157564157858_
                           (let ()
                             (declare (not safe))
                             (##car _e157565157855_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd157564157858_))
                          (let ((_e157568157863_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd157564157858_))))
                            (let ((_tl157566157868_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e157568157863_)))
                                  (_hd157567157866_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e157568157863_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd157567157866_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd157567157866_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl157566157868_))
                                          (let ((_e157571157871_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl157566157868_))))
                                            (let ((_tl157569157876_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e157571157871_)))
                                                  (_hd157570157874_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e157571157871_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl157569157876_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl157563157860_))
                                                      (let ((_e157574157879_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl157563157860_))))
                (let ((_tl157572157884_
                       (let () (declare (not safe)) (##cdr _e157574157879_)))
                      (_hd157573157882_
                       (let () (declare (not safe)) (##car _e157574157879_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd157573157882_))
                      (let ((_e157577157887_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd157573157882_))))
                        (let ((_tl157575157892_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e157577157887_)))
                              (_hd157576157890_
                               (let ()
                                 (declare (not safe))
                                 (##car _e157577157887_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd157576157890_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd157576157890_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl157575157892_))
                                      (let ((_e157580157895_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl157575157892_))))
                                        (let ((_tl157578157900_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e157580157895_)))
                                              (_hd157579157898_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e157580157895_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl157578157900_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl157572157884_))
                                                  (let ((_e157583157903_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl157572157884_))))
                                                    (let ((_tl157581157908_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e157583157903_)))
                                                          (_hd157582157906_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e157583157903_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd157582157906_))
                                                          (let ((_e157586157911_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd157582157906_))))
                    (let ((_tl157584157916_
                           (let ()
                             (declare (not safe))
                             (##cdr _e157586157911_)))
                          (_hd157585157914_
                           (let ()
                             (declare (not safe))
                             (##car _e157586157911_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd157585157914_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd157585157914_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl157584157916_))
                                  (let ((_e157589157919_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl157584157916_))))
                                    (let ((_tl157587157924_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e157589157919_)))
                                          (_hd157588157922_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e157589157919_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl157587157924_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl157581157908_))
                                              (___match158599158600_
                                               _e157544157799_
                                               _hd157543157802_
                                               _tl157542157804_
                                               _e157547157807_
                                               _hd157546157810_
                                               _tl157545157812_
                                               _e157550157815_
                                               _hd157549157818_
                                               _tl157548157820_
                                               _e157553157823_
                                               _hd157552157826_
                                               _tl157551157828_
                                               _e157556157831_
                                               _hd157555157834_
                                               _tl157554157836_
                                               _e157559157839_
                                               _hd157558157842_
                                               _tl157557157844_
                                               _e157562157847_
                                               _hd157561157850_
                                               _tl157560157852_
                                               _e157565157855_
                                               _hd157564157858_
                                               _tl157563157860_
                                               _e157568157863_
                                               _hd157567157866_
                                               _tl157566157868_
                                               _e157571157871_
                                               _hd157570157874_
                                               _tl157569157876_
                                               _e157574157879_
                                               _hd157573157882_
                                               _tl157572157884_
                                               _e157577157887_
                                               _hd157576157890_
                                               _tl157575157892_
                                               _e157580157895_
                                               _hd157579157898_
                                               _tl157578157900_
                                               _e157583157903_
                                               _hd157582157906_
                                               _tl157581157908_
                                               _e157586157911_
                                               _hd157585157914_
                                               _tl157584157916_
                                               _e157589157919_
                                               _hd157588157922_
                                               _tl157587157924_)
                                              (___kont158470158471_))
                                          (___kont158470158471_))))
                                  (___kont158470158471_))
                              (___kont158470158471_))
                          (___kont158470158471_))))
                  (___kont158470158471_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl157572157884_))
                                                      (if (let ((__tmp158763
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp158763 'bind-method!))
                  (let ((_L157753_ _hd157579157898_)
                        (_L157754_ _hd157570157874_)
                        (_L157755_ _hd157561157850_)
                        (_L157756_ _hd157552157826_))
                    (___kont158468158469_
                     _L157753_
                     _L157754_
                     _L157755_
                     _L157756_))
                  (___kont158470158471_))
              (___kont158470158471_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont158470158471_))))
                                      (___kont158470158471_))
                                  (___kont158470158471_))
                              (___kont158470158471_))))
                      (___kont158470158471_))))
              (___kont158470158471_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont158470158471_))))
                                          (___kont158470158471_))
                                      (___kont158470158471_))
                                  (___kont158470158471_))))
                          (___kont158470158471_))))
                  (___kont158470158471_))
              (___kont158470158471_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont158470158471_))
                                          (___kont158470158471_))
                                      (___kont158470158471_))))
                              (___kont158470158471_))))
                      (___kont158470158471_))
                  (___kont158470158471_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont158470158471_))
                                              (___kont158470158471_))
                                          (___kont158470158471_))))
                                  (___kont158470158471_))))
                          (___kont158470158471_))))
                  (___kont158470158471_)))))))
    (define gxc#!alias::typedecl
      (lambda (_self157506_)
        (let* ((_self157507157513_ _self157506_)
               (_E157509157517_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self157507157513_))))
               (_K157510157522_
                (lambda (_alias-id157520_)
                  (let ((__tmp158764
                         (let ()
                           (declare (not safe))
                           (cons _alias-id157520_ '()))))
                    (declare (not safe))
                    (cons '@alias __tmp158764)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self157507157513_ 'gxc#!alias::t))
              (let* ((_e157511157525_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157507157513_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_alias-id157528_ _e157511157525_))
                (declare (not safe))
                (_K157510157522_ _alias-id157528_))
              (let () (declare (not safe)) (_E157509157517_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_self157290_)
        (let* ((_self157291157307_ _self157290_)
               (_E157293157311_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self157291157307_))))
               (_K157294157326_
                (lambda (_methods157314_
                         _metaclass157315_
                         _system?157316_
                         _final?157317_
                         _struct?157318_
                         _constructor157319_
                         _fields157320_
                         _slots157321_
                         _precendence-list157322_
                         _super157323_
                         _id157324_)
                  (let ((__tmp158765
                         (let ((__tmp158766
                                (let ((__tmp158767
                                       (let ((__tmp158768
                                              (let ((__tmp158769
                                                     (let ((__tmp158770
                                                            (let ((__tmp158771
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp158772
                                  (let ((__tmp158773
                                         (let ((__tmp158774
                                                (let ((__tmp158775
                                                       (let ((__tmp158776
                                                              (if _methods157314_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (hash->list _methods157314_))
                          '#f)))
                 (declare (not safe))
                 (cons __tmp158776 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _metaclass157315_
                                                        __tmp158775))))
                                           (declare (not safe))
                                           (cons _system?157316_
                                                 __tmp158774))))
                                    (declare (not safe))
                                    (cons _final?157317_ __tmp158773))))
                             (declare (not safe))
                             (cons _struct?157318_ __tmp158772))))
                      (declare (not safe))
                      (cons _constructor157319_ __tmp158771))))
               (declare (not safe))
               (cons _fields157320_ __tmp158770))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _slots157321_
                                                      __tmp158769))))
                                         (declare (not safe))
                                         (cons _precendence-list157322_
                                               __tmp158768))))
                                  (declare (not safe))
                                  (cons _super157323_ __tmp158767))))
                           (declare (not safe))
                           (cons _id157324_ __tmp158766))))
                    (declare (not safe))
                    (cons '@class __tmp158765)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self157291157307_ 'gxc#!class::t))
              (let* ((_e157295157329_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157291157307_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_id157332_ _e157295157329_)
                     (_e157296157334_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157291157307_
                         '2
                         gxc#!class::t
                         '#f)))
                     (_super157337_ _e157296157334_)
                     (_e157297157339_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157291157307_
                         '3
                         gxc#!class::t
                         '#f)))
                     (_precendence-list157342_ _e157297157339_)
                     (_e157298157344_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157291157307_
                         '4
                         gxc#!class::t
                         '#f)))
                     (_slots157347_ _e157298157344_)
                     (_e157299157349_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157291157307_
                         '5
                         gxc#!class::t
                         '#f)))
                     (_fields157352_ _e157299157349_)
                     (_e157300157354_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157291157307_
                         '6
                         gxc#!class::t
                         '#f)))
                     (_constructor157357_ _e157300157354_)
                     (_e157301157359_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157291157307_
                         '7
                         gxc#!class::t
                         '#f)))
                     (_struct?157362_ _e157301157359_)
                     (_e157302157364_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157291157307_
                         '8
                         gxc#!class::t
                         '#f)))
                     (_final?157367_ _e157302157364_)
                     (_e157303157369_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157291157307_
                         '9
                         gxc#!class::t
                         '#f)))
                     (_system?157372_ _e157303157369_)
                     (_e157304157374_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157291157307_
                         '10
                         gxc#!class::t
                         '#f)))
                     (_metaclass157377_ _e157304157374_)
                     (_e157305157379_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157291157307_
                         '11
                         gxc#!class::t
                         '#f)))
                     (_methods157382_ _e157305157379_))
                (declare (not safe))
                (_K157294157326_
                 _methods157382_
                 _metaclass157377_
                 _system?157372_
                 _final?157367_
                 _struct?157362_
                 _constructor157357_
                 _fields157352_
                 _slots157347_
                 _precendence-list157342_
                 _super157337_
                 _id157332_))
              (let () (declare (not safe)) (_E157293157311_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_self157144_)
        (let* ((_self157145157151_ _self157144_)
               (_E157147157155_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self157145157151_))))
               (_K157148157160_
                (lambda (_klass-id157158_)
                  (let ((__tmp158777
                         (let ()
                           (declare (not safe))
                           (cons _klass-id157158_ '()))))
                    (declare (not safe))
                    (cons '@predicate __tmp158777)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self157145157151_
                 'gxc#!predicate::t))
              (let* ((_e157149157163_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157145157151_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id157166_ _e157149157163_))
                (declare (not safe))
                (_K157148157160_ _klass-id157166_))
              (let () (declare (not safe)) (_E157147157155_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_self156998_)
        (let* ((_self156999157005_ _self156998_)
               (_E157001157009_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self156999157005_))))
               (_K157002157014_
                (lambda (_klass-id157012_)
                  (let ((__tmp158778
                         (let ()
                           (declare (not safe))
                           (cons _klass-id157012_ '()))))
                    (declare (not safe))
                    (cons '@constructor __tmp158778)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self156999157005_
                 'gxc#!constructor::t))
              (let* ((_e157003157017_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156999157005_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id157020_ _e157003157017_))
                (declare (not safe))
                (_K157002157014_ _klass-id157020_))
              (let () (declare (not safe)) (_E157001157009_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_self156838_)
        (let* ((_self156839156847_ _self156838_)
               (_E156841156851_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self156839156847_))))
               (_K156842156858_
                (lambda (_checked?156854_ _slot156855_ _klass-id156856_)
                  (let ((__tmp158779
                         (let ((__tmp158780
                                (let ((__tmp158781
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?156854_ '()))))
                                  (declare (not safe))
                                  (cons _slot156855_ __tmp158781))))
                           (declare (not safe))
                           (cons _klass-id156856_ __tmp158780))))
                    (declare (not safe))
                    (cons '@accessor __tmp158779)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self156839156847_
                 'gxc#!accessor::t))
              (let* ((_e156843156861_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156839156847_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id156864_ _e156843156861_)
                     (_e156844156866_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156839156847_
                         '2
                         gxc#!accessor::t
                         '#f)))
                     (_slot156869_ _e156844156866_)
                     (_e156845156871_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156839156847_
                         '3
                         gxc#!accessor::t
                         '#f)))
                     (_checked?156874_ _e156845156871_))
                (declare (not safe))
                (_K156842156858_
                 _checked?156874_
                 _slot156869_
                 _klass-id156864_))
              (let () (declare (not safe)) (_E156841156851_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_self156678_)
        (let* ((_self156679156687_ _self156678_)
               (_E156681156691_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self156679156687_))))
               (_K156682156698_
                (lambda (_checked?156694_ _slot156695_ _klass-id156696_)
                  (let ((__tmp158782
                         (let ((__tmp158783
                                (let ((__tmp158784
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?156694_ '()))))
                                  (declare (not safe))
                                  (cons _slot156695_ __tmp158784))))
                           (declare (not safe))
                           (cons _klass-id156696_ __tmp158783))))
                    (declare (not safe))
                    (cons '@mutator __tmp158782)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self156679156687_ 'gxc#!mutator::t))
              (let* ((_e156683156701_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156679156687_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id156704_ _e156683156701_)
                     (_e156684156706_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156679156687_
                         '2
                         gxc#!mutator::t
                         '#f)))
                     (_slot156709_ _e156684156706_)
                     (_e156685156711_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156679156687_
                         '3
                         gxc#!mutator::t
                         '#f)))
                     (_checked?156714_ _e156685156711_))
                (declare (not safe))
                (_K156682156698_
                 _checked?156714_
                 _slot156709_
                 _klass-id156704_))
              (let () (declare (not safe)) (_E156681156691_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!lambda::typedecl
      (lambda (_self156504_)
        (let* ((_self156505156515_ _self156504_)
               (_E156507156519_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self156505156515_))))
               (_K156508156530_
                (lambda (_typedecl156522_
                         _inline156523_
                         _dispatch156524_
                         _arity156525_)
                  (if _inline156523_
                      (let ((_$e156527_ _typedecl156522_))
                        (if _$e156527_
                            _$e156527_
                            (let ()
                              (declare (not safe))
                              (error '"Cannot generate typedecl for inline rules"))))
                      (let ((__tmp158785
                             (let ((__tmp158786
                                    (let ()
                                      (declare (not safe))
                                      (cons _dispatch156524_ '()))))
                               (declare (not safe))
                               (cons _arity156525_ __tmp158786))))
                        (declare (not safe))
                        (cons '@lambda __tmp158785))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self156505156515_ 'gxc#!lambda::t))
              (let* ((_e156509156533_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156505156515_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e156510156536_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156505156515_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity156539_ _e156510156536_)
                     (_e156511156541_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156505156515_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch156544_ _e156511156541_)
                     (_e156512156546_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156505156515_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline156549_ _e156512156546_)
                     (_e156513156551_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156505156515_
                         '5
                         gxc#!lambda::t
                         '#f)))
                     (_typedecl156554_ _e156513156551_))
                (declare (not safe))
                (_K156508156530_
                 _typedecl156554_
                 _inline156549_
                 _dispatch156544_
                 _arity156539_))
              (let () (declare (not safe)) (_E156507156519_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_self156315_)
        (letrec ((_clause-e156317_
                  (lambda (_clause156347_)
                    (let* ((_clause156348156356_ _clause156347_)
                           (_E156350156360_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _clause156348156356_))))
                           (_K156351156366_
                            (lambda (_dispatch156363_ _arity156364_)
                              (let ((__tmp158787
                                     (let ()
                                       (declare (not safe))
                                       (cons _dispatch156363_ '()))))
                                (declare (not safe))
                                (cons _arity156364_ __tmp158787)))))
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _clause156348156356_
                             'gxc#!lambda::t))
                          (let* ((_e156352156369_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause156348156356_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                                 (_e156353156372_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause156348156356_
                                     '2
                                     gxc#!lambda::t
                                     '#f)))
                                 (_arity156375_ _e156353156372_)
                                 (_e156354156377_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause156348156356_
                                     '3
                                     gxc#!lambda::t
                                     '#f)))
                                 (_dispatch156380_ _e156354156377_))
                            (declare (not safe))
                            (_K156351156366_ _dispatch156380_ _arity156375_))
                          (let () (declare (not safe)) (_E156350156360_)))))))
          (let* ((_self156318156325_ _self156315_)
                 (_E156320156329_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching" _self156318156325_))))
                 (_K156321156336_
                  (lambda (_clauses156332_)
                    (let ((_clauses156334_
                           (map _clause-e156317_ _clauses156332_)))
                      (declare (not safe))
                      (cons '@case-lambda _clauses156334_)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of?
                   _self156318156325_
                   'gxc#!case-lambda::t))
                (let* ((_e156322156339_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self156318156325_
                           '1
                           gxc#!type::t
                           '#f)))
                       (_e156323156342_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self156318156325_
                           '2
                           gxc#!case-lambda::t
                           '#f)))
                       (_clauses156345_ _e156323156342_))
                  (declare (not safe))
                  (_K156321156336_ _clauses156345_))
                (let () (declare (not safe)) (_E156320156329_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_self156158_)
        (let* ((_self156159156167_ _self156158_)
               (_E156161156171_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self156159156167_))))
               (_K156162156177_
                (lambda (_dispatch156174_ _table156175_)
                  (let ((__tmp158788
                         (let ((__tmp158789
                                (let ()
                                  (declare (not safe))
                                  (cons _dispatch156174_ '()))))
                           (declare (not safe))
                           (cons _table156175_ __tmp158789))))
                    (declare (not safe))
                    (cons '@kw-lambda __tmp158788)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self156159156167_
                 'gxc#!kw-lambda::t))
              (let* ((_e156163156180_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156159156167_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e156164156183_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156159156167_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table156186_ _e156164156183_)
                     (_e156165156188_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156159156167_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch156191_ _e156165156188_))
                (declare (not safe))
                (_K156162156177_ _dispatch156191_ _table156186_))
              (let () (declare (not safe)) (_E156161156171_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda::t
       'typedecl
       gxc#!kw-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_self156001_)
        (let* ((_self156002156010_ _self156001_)
               (_E156004156014_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self156002156010_))))
               (_K156005156020_
                (lambda (_main156017_ _keys156018_)
                  (let ((__tmp158790
                         (let ((__tmp158791
                                (let ()
                                  (declare (not safe))
                                  (cons _main156017_ '()))))
                           (declare (not safe))
                           (cons _keys156018_ __tmp158791))))
                    (declare (not safe))
                    (cons '@kw-lambda-dispatch __tmp158790)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self156002156010_
                 'gxc#!kw-lambda-primary::t))
              (let* ((_e156006156023_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156002156010_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e156007156026_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156002156010_
                         '2
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_keys156029_ _e156007156026_)
                     (_e156008156031_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156002156010_
                         '3
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_main156034_ _e156008156031_))
                (declare (not safe))
                (_K156005156020_ _main156034_ _keys156029_))
              (let () (declare (not safe)) (_E156004156014_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))))
