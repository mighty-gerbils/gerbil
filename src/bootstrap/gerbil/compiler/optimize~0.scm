(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1711108660)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (gxc#current-compile-optimizer-info)
            '#!void
            (gxc#current-compile-optimizer-info
             (let ((__obj158749
                    (let ()
                      (declare (not safe))
                      (##structure gxc#optimizer-info::t '#f '#f '#f))))
               (gxc#optimizer-info:::init! __obj158749)
               __obj158749)))))
    (define gxc#optimize!
      (lambda (_ctx158442_)
        (let ((__tmp158755
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _ctx158442_))
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-builtin-ssxi _ctx158442_))
                 (let ((__tmp158757
                        (##structure-ref
                         (gxc#current-compile-optimizer-info)
                         '2
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp158756
                        (##structure-ref
                         _ctx158442_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp158757 __tmp158756 '#t))
                 (let ((_code158445_
                        (let ((__tmp158758
                               (##structure-ref
                                _ctx158442_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp158758))))
                   (##structure-set!
                    _ctx158442_
                    _code158445_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp158754 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp158753 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters
           __tmp158755
           gxc#current-compile-mutators
           __tmp158754
           gxc#current-compile-local-type
           __tmp158753))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_ctx158431_)
        (letrec ((_load-it!158433_
                  (lambda (_id158440_)
                    (if (let ((__tmp158760
                               (##structure-ref
                                (gxc#current-compile-optimizer-info)
                                '2
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp158760 _id158440_))
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-import-ssxi-by-id _id158440_))
                          (let ((__tmp158759
                                 (##structure-ref
                                  (gxc#current-compile-optimizer-info)
                                  '2
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp158759 _id158440_ '#t)))))))
          (let* ((_modid158435_
                  (##structure-ref _ctx158431_ '1 gx#expander-context::t '#f))
                 (_modid-str158437_ (symbol->string _modid158435_)))
            (for-each
             _load-it!158433_
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
      (lambda (_ctx158376_)
        (letrec* ((_deps158378_
                   (let* ((_imports158422_
                           (##structure-ref
                            _ctx158376_
                            '8
                            gx#module-context::t
                            '#f))
                          (_$e158424_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _ctx158376_))))
                     (if _$e158424_
                         ((lambda (_g158426158428_)
                            (let ()
                              (declare (not safe))
                              (cons _g158426158428_ _imports158422_)))
                          _$e158424_)
                         _imports158422_))))
          (let _lp158380_ ((_rest158382_ _deps158378_))
            (let* ((_rest158383158391_ _rest158382_)
                   (_else158385158399_ (lambda () '#!void))
                   (_K158387158410_
                    (lambda (_rest158402_ _hd158403_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _hd158403_
                             'gx#module-context::t))
                          (begin
                            (if (let ((__tmp158774
                                       (##structure-ref
                                        (gxc#current-compile-optimizer-info)
                                        '2
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp158773
                                       (##structure-ref
                                        _hd158403_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (hash-get __tmp158774 __tmp158773))
                                '#!void
                                (begin
                                  (let ((_$e158405_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _hd158403_))))
                                    (if _$e158405_
                                        ((lambda (_pre158408_)
                                           (let ((__tmp158771
                                                  (let ((__tmp158772
                                                         (##structure-ref
                                                          _hd158403_
                                                          '8
                                                          gx#module-context::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (cons _pre158408_
                                                          __tmp158772))))
                                             (declare (not safe))
                                             (_lp158380_ __tmp158771)))
                                         _$e158405_)
                                        (let ((__tmp158770
                                               (##structure-ref
                                                _hd158403_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                          (declare (not safe))
                                          (_lp158380_ __tmp158770))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _hd158403_))))
                            (let ()
                              (declare (not safe))
                              (_lp158380_ _rest158402_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _hd158403_
                                 'gx#prelude-context::t))
                              (begin
                                (if (let ((__tmp158769
                                           (##structure-ref
                                            (gxc#current-compile-optimizer-info)
                                            '2
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp158768
                                           (##structure-ref
                                            _hd158403_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (hash-get __tmp158769 __tmp158768))
                                    '#!void
                                    (begin
                                      (let ((__tmp158767
                                             (##structure-ref
                                              _hd158403_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_lp158380_ __tmp158767))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi _hd158403_))))
                                (let ()
                                  (declare (not safe))
                                  (_lp158380_ _rest158402_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _hd158403_
                                     'gx#module-import::t))
                                  (let ((__tmp158765
                                         (let ((__tmp158766
                                                (##direct-structure-ref
                                                 _hd158403_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp158766 _rest158402_))))
                                    (declare (not safe))
                                    (_lp158380_ __tmp158765))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _hd158403_
                                         'gx#module-export::t))
                                      (let ((__tmp158763
                                             (let ((__tmp158764
                                                    (##direct-structure-ref
                                                     _hd158403_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp158764
                                                     _rest158402_))))
                                        (declare (not safe))
                                        (_lp158380_ __tmp158763))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _hd158403_
                                             'gx#import-set::t))
                                          (let ((__tmp158761
                                                 (let ((__tmp158762
                                                        (##direct-structure-ref
                                                         _hd158403_
                                                         '1
                                                         gx#import-set::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp158762
                                                         _rest158402_))))
                                            (declare (not safe))
                                            (_lp158380_ __tmp158761))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _hd158403_))))))))))
              (if (let () (declare (not safe)) (##pair? _rest158383158391_))
                  (let ((_hd158388158413_
                         (let ()
                           (declare (not safe))
                           (##car _rest158383158391_)))
                        (_tl158389158415_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest158383158391_))))
                    (let* ((_hd158418_ _hd158388158413_)
                           (_rest158420_ _tl158389158415_))
                      (declare (not safe))
                      (_K158387158410_ _rest158420_ _hd158418_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_ctx158356_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _ctx158356_
                    'gx#module-context::t))
                 (let ((__tmp158775
                        (##structure-ref
                         _ctx158356_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp158775)))
            '#!void
            (let* ((_ht158358_
                    (##structure-ref
                     (gxc#current-compile-optimizer-info)
                     '2
                     gxc#optimizer-info::t
                     '#f))
                   (_id158360_
                    (##structure-ref
                     _ctx158356_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_mod158362_
                    (let ()
                      (declare (not safe))
                      (hash-get _ht158358_ _id158360_))))
              (let ((_$e158365_ _mod158362_))
                (if _$e158365_
                    _$e158365_
                    (let* ((_mod158368_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-import-ssxi _ctx158356_)))
                           (_val158373_
                            (let ((_$e158370_ _mod158368_))
                              (if _$e158370_ _$e158370_ '#!void))))
                      (let ()
                        (declare (not safe))
                        (hash-put! _ht158358_ _id158360_ _val158373_))
                      _val158373_)))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_ctx158354_)
        (if (##structure-ref _ctx158354_ '1 gx#expander-context::t '#f)
            (let ((__tmp158776
                   (##structure-ref
                    _ctx158354_
                    '1
                    gx#expander-context::t
                    '#f)))
              (declare (not safe))
              (gxc#optimizer-import-ssxi-by-id __tmp158776))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_id158331_)
        (letrec ((_catch-e158333_
                  (lambda (_exn158352_)
                    (if (gxc#current-compile-verbose)
                        (begin
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"Failed to load ssxi module for "
                             _id158331_))
                          (display-exception _exn158352_))
                        '#!void)
                    '#f))
                 (_import-e158334_
                  (lambda ()
                    (let* ((_str-id158337_
                            (string-append
                             (let ()
                               (declare (not safe))
                               (gxc#module-id->path-string _id158331_))
                             '".ssxi"))
                           (_artefact-path158345_
                            (let ((_odir158338158340_
                                   (gxc#current-compile-output-dir)))
                              (if _odir158338158340_
                                  (let ((_odir158343_ _odir158338158340_))
                                    (path-expand
                                     (string-append _str-id158337_ '".ss")
                                     _odir158343_))
                                  '#f)))
                           (_library-path158347_
                            (string->symbol
                             (string-append '":" _str-id158337_ '".ss")))
                           (_ssxi-path158349_
                            (if (and _artefact-path158345_
                                     (file-exists? _artefact-path158345_))
                                _artefact-path158345_
                                _library-path158347_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _ssxi-path158349_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _ssxi-path158349_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (with-catch _catch-e158333_ _import-e158334_)))))
    (define gxc#optimize-source
      (lambda (_stx158322_)
        (let () (declare (not safe)) (gxc#apply-collect-mutators _stx158322_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _stx158322_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _stx158322_))
        (let* ((_stx158324_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _stx158322_)))
               (_stx158326_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _stx158324_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _stx158326_))
          (let ((_stx158329_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _stx158326_))))
            (declare (not safe))
            (gxc#apply-optimize-call _stx158329_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp158779 (list gxc#::generate-runtime-empty::t))
            (__tmp158777
             (let ((__tmp158778
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp158778 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp158779
         '()
         __tmp158777
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _$args158319_
        (apply make-instance gxc#::generate-ssxi::t _$args158319_)))
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
      (lambda (_stx158311_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_self158314_
                (let ((__obj158751
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj158751))
               (__tmp158780
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self158314_ _stx158311_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp158780
           gxc#current-compile-method
           _self158314_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_self158271_ _stx158272_)
        (let* ((_g158274158284_
                (lambda (_g158275158281_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g158275158281_))))
               (_g158273158308_
                (lambda (_g158275158287_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g158275158287_))
                      (let ((_e158279158289_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g158275158287_))))
                        (let ((_hd158278158292_
                               (let ()
                                 (declare (not safe))
                                 (##car _e158279158289_)))
                              (_tl158277158294_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e158279158289_))))
                          ((lambda (_L158297_)
                             (let ((__tmp158783
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _self158271_
                                         _stx158272_))))
                                   (__tmp158781
                                    (let ((__tmp158782
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp158782 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp158783
                                gx#current-expander-phi
                                __tmp158781)))
                           _tl158277158294_)))
                      (let ()
                        (declare (not safe))
                        (_g158274158284_ _g158275158287_))))))
          (declare (not safe))
          (_g158273158308_ _stx158272_))))
    (define gxc#generate-ssxi-module%
      (lambda (_self158210_ _stx158211_)
        (let* ((_g158213158227_
                (lambda (_g158214158224_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g158214158224_))))
               (_g158212158268_
                (lambda (_g158214158230_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g158214158230_))
                      (let ((_e158219158232_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g158214158230_))))
                        (let ((_hd158218158235_
                               (let ()
                                 (declare (not safe))
                                 (##car _e158219158232_)))
                              (_tl158217158237_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e158219158232_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl158217158237_))
                              (let ((_e158222158240_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl158217158237_))))
                                (let ((_hd158221158243_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e158222158240_)))
                                      (_tl158220158245_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e158222158240_))))
                                  ((lambda (_L158248_ _L158249_)
                                     (let* ((_ctx158262_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L158249_)))
                                            (_code158264_
                                             (##structure-ref
                                              _ctx158262_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp158784
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self158210_
                                                   _code158264_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp158784
                                          gx#current-expander-context
                                          _ctx158262_))))
                                   _tl158220158245_
                                   _hd158221158243_)))
                              (let ()
                                (declare (not safe))
                                (_g158213158227_ _g158214158230_)))))
                      (let ()
                        (declare (not safe))
                        (_g158213158227_ _g158214158230_))))))
          (declare (not safe))
          (_g158212158268_ _stx158211_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_self158019_ _stx158020_)
        (letrec ((_generate-e158022_
                  (lambda (_id158199_)
                    (let* ((_sym158201_
                            (if (let ((__tmp158785
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp158785))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _id158199_))
                                '#f))
                           (_$e158203_
                            (if _sym158201_
                                (let ()
                                  (declare (not safe))
                                  (gxc#optimizer-lookup-type _sym158201_))
                                '#f)))
                      (if _$e158203_
                          ((lambda (_type158206_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"generate typedecl " _sym158201_))
                             (let* ((_typedecl158208_
                                     (let ((__method158752
                                            (let ()
                                              (declare (not safe))
                                              (method-ref
                                               _type158206_
                                               'typedecl))))
                                       (if __method158752
                                           (__method158752 _type158206_)
                                           (let ()
                                             (declare (not safe))
                                             (error '"Missing method"
                                                    _type158206_
                                                    'typedecl)))))
                                    (__tmp158786
                                     (let ((__tmp158787
                                            (let ()
                                              (declare (not safe))
                                              (cons _typedecl158208_ '()))))
                                       (declare (not safe))
                                       (cons _sym158201_ __tmp158787))))
                               (declare (not safe))
                               (cons 'declare-type __tmp158786)))
                           _$e158203_)
                          '(begin))))))
          (let* ((___stx158448158449_ _stx158020_)
                 (_g158025158063_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx158448158449_)))))
            (let ((___kont158450158451_
                   (lambda (_L158181_)
                     (let ()
                       (declare (not safe))
                       (_generate-e158022_ _L158181_))))
                  (___kont158452158453_
                   (lambda (_L158116_)
                     (let ((_types158142_
                            (map _generate-e158022_
                                 (let ((__tmp158788
                                        (lambda (_g158134158137_
                                                 _g158135158139_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g158134158137_
                                                  _g158135158139_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp158788 '() _L158116_)))))
                       (declare (not safe))
                       (cons 'begin _types158142_)))))
              (let ((___match158503158504_
                     (lambda (_e158043158068_
                              _hd158042158071_
                              _tl158041158073_
                              _e158046158076_
                              _hd158045158079_
                              _tl158044158081_
                              ___splice158454158455_
                              _target158047158084_
                              _tl158049158086_)
                       (letrec ((_loop158050158089_
                                 (lambda (_hd158048158092_ _id158054158094_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd158048158092_))
                                       (let ((_e158051158097_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd158048158092_))))
                                         (let ((_lp-tl158053158102_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e158051158097_)))
                                               (_lp-hd158052158100_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e158051158097_))))
                                           (let ((__tmp158789
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd158052158100_
                                                          _id158054158094_))))
                                             (declare (not safe))
                                             (_loop158050158089_
                                              _lp-tl158053158102_
                                              __tmp158789))))
                                       (let ((_id158055158105_
                                              (reverse _id158054158094_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl158044158081_))
                                             (let ((_e158058158108_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl158044158081_))))
                                               (let ((_tl158056158113_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e158058158108_)))
                                                     (_hd158057158111_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e158058158108_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl158056158113_))
                                                     (___kont158452158453_
                                                      _id158055158105_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g158025158063_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g158025158063_))))))))
                         (let ()
                           (declare (not safe))
                           (_loop158050158089_ _target158047158084_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx158448158449_))
                    (let ((_e158030158149_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx158448158449_))))
                      (let ((_tl158028158154_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158030158149_)))
                            (_hd158029158152_
                             (let ()
                               (declare (not safe))
                               (##car _e158030158149_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158028158154_))
                            (let ((_e158033158157_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl158028158154_))))
                              (let ((_tl158031158162_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158033158157_)))
                                    (_hd158032158160_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158033158157_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd158032158160_))
                                    (let ((_e158036158165_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd158032158160_))))
                                      (let ((_tl158034158170_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e158036158165_)))
                                            (_hd158035158168_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e158036158165_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl158034158170_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl158031158162_))
                                                (let ((_e158039158173_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl158031158162_))))
                                                  (let ((_tl158037158178_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e158039158173_)))
                                                        (_hd158038158176_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e158039158173_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl158037158178_))
                                                        (___kont158450158451_
                                                         _hd158035158168_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _hd158032158160_))
                                                            (let ((___splice158454158455_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _hd158032158160_ '0))))
                      (let ((_tl158049158086_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice158454158455_ '1)))
                            (_target158047158084_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice158454158455_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl158049158086_))
                            (___match158503158504_
                             _e158030158149_
                             _hd158029158152_
                             _tl158028158154_
                             _e158033158157_
                             _hd158032158160_
                             _tl158031158162_
                             ___splice158454158455_
                             _target158047158084_
                             _tl158049158086_)
                            (let () (declare (not safe)) (_g158025158063_)))))
                    (let () (declare (not safe)) (_g158025158063_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _hd158032158160_))
                                                    (let ((___splice158454158455_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _hd158032158160_
                                                              '0))))
                                                      (let ((_tl158049158086_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice158454158455_ '1)))
                    (_target158047158084_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice158454158455_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl158049158086_))
                    (___match158503158504_
                     _e158030158149_
                     _hd158029158152_
                     _tl158028158154_
                     _e158033158157_
                     _hd158032158160_
                     _tl158031158162_
                     ___splice158454158455_
                     _target158047158084_
                     _tl158049158086_)
                    (let () (declare (not safe)) (_g158025158063_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g158025158063_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _hd158032158160_))
                                                (let ((___splice158454158455_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _hd158032158160_
                                                          '0))))
                                                  (let ((_tl158049158086_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice158454158455_
                                                            '1)))
                                                        (_target158047158084_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice158454158455_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl158049158086_))
                                                        (___match158503158504_
                                                         _e158030158149_
                                                         _hd158029158152_
                                                         _tl158028158154_
                                                         _e158033158157_
                                                         _hd158032158160_
                                                         _tl158031158162_
                                                         ___splice158454158455_
                                                         _target158047158084_
                                                         _tl158049158086_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g158025158063_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g158025158063_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd158032158160_))
                                        (let ((___splice158454158455_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd158032158160_
                                                  '0))))
                                          (let ((_tl158049158086_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice158454158455_
                                                    '1)))
                                                (_target158047158084_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice158454158455_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl158049158086_))
                                                (___match158503158504_
                                                 _e158030158149_
                                                 _hd158029158152_
                                                 _tl158028158154_
                                                 _e158033158157_
                                                 _hd158032158160_
                                                 _tl158031158162_
                                                 ___splice158454158455_
                                                 _target158047158084_
                                                 _tl158049158086_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g158025158063_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g158025158063_))))))
                            (let () (declare (not safe)) (_g158025158063_)))))
                    (let () (declare (not safe)) (_g158025158063_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_self157572_ _stx157573_)
        (let* ((___stx158506158507_ _stx157573_)
               (_g157577157679_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx158506158507_)))))
          (let ((___kont158508158509_
                 (lambda (_L157969_ _L157970_ _L157971_ _L157972_ _L157973_)
                   (let ((__tmp158790
                          (let ((__tmp158797
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L157972_)))
                                (__tmp158791
                                 (let ((__tmp158796
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L157971_)))
                                       (__tmp158792
                                        (let ((__tmp158795
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L157970_)))
                                              (__tmp158793
                                               (let ((__tmp158794
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L157969_))))
                                                 (declare (not safe))
                                                 (cons __tmp158794 '()))))
                                          (declare (not safe))
                                          (cons __tmp158795 __tmp158793))))
                                   (declare (not safe))
                                   (cons __tmp158796 __tmp158792))))
                            (declare (not safe))
                            (cons __tmp158797 __tmp158791))))
                     (declare (not safe))
                     (cons 'declare-method __tmp158790))))
                (___kont158510158511_
                 (lambda (_L157795_ _L157796_ _L157797_ _L157798_)
                   (let ((__tmp158798
                          (let ((__tmp158804
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L157797_)))
                                (__tmp158799
                                 (let ((__tmp158803
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L157796_)))
                                       (__tmp158800
                                        (let ((__tmp158802
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L157795_)))
                                              (__tmp158801
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '#f '()))))
                                          (declare (not safe))
                                          (cons __tmp158802 __tmp158801))))
                                   (declare (not safe))
                                   (cons __tmp158803 __tmp158800))))
                            (declare (not safe))
                            (cons __tmp158804 __tmp158799))))
                     (declare (not safe))
                     (cons 'declare-method __tmp158798))))
                (___kont158512158513_ (lambda () '(begin))))
            (let ((___match158641158642_
                   (lambda (_e157586157841_
                            _hd157585157844_
                            _tl157584157846_
                            _e157589157849_
                            _hd157588157852_
                            _tl157587157854_
                            _e157592157857_
                            _hd157591157860_
                            _tl157590157862_
                            _e157595157865_
                            _hd157594157868_
                            _tl157593157870_
                            _e157598157873_
                            _hd157597157876_
                            _tl157596157878_
                            _e157601157881_
                            _hd157600157884_
                            _tl157599157886_
                            _e157604157889_
                            _hd157603157892_
                            _tl157602157894_
                            _e157607157897_
                            _hd157606157900_
                            _tl157605157902_
                            _e157610157905_
                            _hd157609157908_
                            _tl157608157910_
                            _e157613157913_
                            _hd157612157916_
                            _tl157611157918_
                            _e157616157921_
                            _hd157615157924_
                            _tl157614157926_
                            _e157619157929_
                            _hd157618157932_
                            _tl157617157934_
                            _e157622157937_
                            _hd157621157940_
                            _tl157620157942_
                            _e157625157945_
                            _hd157624157948_
                            _tl157623157950_
                            _e157628157953_
                            _hd157627157956_
                            _tl157626157958_
                            _e157631157961_
                            _hd157630157964_
                            _tl157629157966_)
                     (let ((_L157969_ _hd157630157964_)
                           (_L157970_ _hd157621157940_)
                           (_L157971_ _hd157612157916_)
                           (_L157972_ _hd157603157892_)
                           (_L157973_ _hd157594157868_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L157973_
                              'bind-method!))
                           (___kont158508158509_
                            _L157969_
                            _L157970_
                            _L157971_
                            _L157972_
                            _L157973_)
                           (___kont158512158513_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx158506158507_))
                  (let ((_e157586157841_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx158506158507_))))
                    (let ((_tl157584157846_
                           (let ()
                             (declare (not safe))
                             (##cdr _e157586157841_)))
                          (_hd157585157844_
                           (let ()
                             (declare (not safe))
                             (##car _e157586157841_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl157584157846_))
                          (let ((_e157589157849_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl157584157846_))))
                            (let ((_tl157587157854_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e157589157849_)))
                                  (_hd157588157852_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e157589157849_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd157588157852_))
                                  (let ((_e157592157857_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd157588157852_))))
                                    (let ((_tl157590157862_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e157592157857_)))
                                          (_hd157591157860_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e157592157857_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd157591157860_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd157591157860_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl157590157862_))
                                                  (let ((_e157595157865_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl157590157862_))))
                                                    (let ((_tl157593157870_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e157595157865_)))
                                                          (_hd157594157868_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e157595157865_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl157593157870_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl157587157854_))
                      (let ((_e157598157873_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl157587157854_))))
                        (let ((_tl157596157878_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e157598157873_)))
                              (_hd157597157876_
                               (let ()
                                 (declare (not safe))
                                 (##car _e157598157873_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd157597157876_))
                              (let ((_e157601157881_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd157597157876_))))
                                (let ((_tl157599157886_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e157601157881_)))
                                      (_hd157600157884_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e157601157881_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd157600157884_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd157600157884_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl157599157886_))
                                              (let ((_e157604157889_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl157599157886_))))
                                                (let ((_tl157602157894_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e157604157889_)))
                                                      (_hd157603157892_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e157604157889_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl157602157894_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl157596157878_))
                                                          (let ((_e157607157897_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl157596157878_))))
                    (let ((_tl157605157902_
                           (let ()
                             (declare (not safe))
                             (##cdr _e157607157897_)))
                          (_hd157606157900_
                           (let ()
                             (declare (not safe))
                             (##car _e157607157897_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd157606157900_))
                          (let ((_e157610157905_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd157606157900_))))
                            (let ((_tl157608157910_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e157610157905_)))
                                  (_hd157609157908_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e157610157905_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd157609157908_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd157609157908_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl157608157910_))
                                          (let ((_e157613157913_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl157608157910_))))
                                            (let ((_tl157611157918_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e157613157913_)))
                                                  (_hd157612157916_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e157613157913_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl157611157918_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl157605157902_))
                                                      (let ((_e157616157921_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl157605157902_))))
                (let ((_tl157614157926_
                       (let () (declare (not safe)) (##cdr _e157616157921_)))
                      (_hd157615157924_
                       (let () (declare (not safe)) (##car _e157616157921_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd157615157924_))
                      (let ((_e157619157929_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd157615157924_))))
                        (let ((_tl157617157934_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e157619157929_)))
                              (_hd157618157932_
                               (let ()
                                 (declare (not safe))
                                 (##car _e157619157929_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd157618157932_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd157618157932_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl157617157934_))
                                      (let ((_e157622157937_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl157617157934_))))
                                        (let ((_tl157620157942_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e157622157937_)))
                                              (_hd157621157940_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e157622157937_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl157620157942_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl157614157926_))
                                                  (let ((_e157625157945_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl157614157926_))))
                                                    (let ((_tl157623157950_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e157625157945_)))
                                                          (_hd157624157948_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e157625157945_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd157624157948_))
                                                          (let ((_e157628157953_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd157624157948_))))
                    (let ((_tl157626157958_
                           (let ()
                             (declare (not safe))
                             (##cdr _e157628157953_)))
                          (_hd157627157956_
                           (let ()
                             (declare (not safe))
                             (##car _e157628157953_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd157627157956_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd157627157956_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl157626157958_))
                                  (let ((_e157631157961_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl157626157958_))))
                                    (let ((_tl157629157966_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e157631157961_)))
                                          (_hd157630157964_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e157631157961_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl157629157966_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl157623157950_))
                                              (___match158641158642_
                                               _e157586157841_
                                               _hd157585157844_
                                               _tl157584157846_
                                               _e157589157849_
                                               _hd157588157852_
                                               _tl157587157854_
                                               _e157592157857_
                                               _hd157591157860_
                                               _tl157590157862_
                                               _e157595157865_
                                               _hd157594157868_
                                               _tl157593157870_
                                               _e157598157873_
                                               _hd157597157876_
                                               _tl157596157878_
                                               _e157601157881_
                                               _hd157600157884_
                                               _tl157599157886_
                                               _e157604157889_
                                               _hd157603157892_
                                               _tl157602157894_
                                               _e157607157897_
                                               _hd157606157900_
                                               _tl157605157902_
                                               _e157610157905_
                                               _hd157609157908_
                                               _tl157608157910_
                                               _e157613157913_
                                               _hd157612157916_
                                               _tl157611157918_
                                               _e157616157921_
                                               _hd157615157924_
                                               _tl157614157926_
                                               _e157619157929_
                                               _hd157618157932_
                                               _tl157617157934_
                                               _e157622157937_
                                               _hd157621157940_
                                               _tl157620157942_
                                               _e157625157945_
                                               _hd157624157948_
                                               _tl157623157950_
                                               _e157628157953_
                                               _hd157627157956_
                                               _tl157626157958_
                                               _e157631157961_
                                               _hd157630157964_
                                               _tl157629157966_)
                                              (___kont158512158513_))
                                          (___kont158512158513_))))
                                  (___kont158512158513_))
                              (___kont158512158513_))
                          (___kont158512158513_))))
                  (___kont158512158513_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl157614157926_))
                                                      (if (let ((__tmp158805
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp158805 'bind-method!))
                  (let ((_L157795_ _hd157621157940_)
                        (_L157796_ _hd157612157916_)
                        (_L157797_ _hd157603157892_)
                        (_L157798_ _hd157594157868_))
                    (___kont158510158511_
                     _L157795_
                     _L157796_
                     _L157797_
                     _L157798_))
                  (___kont158512158513_))
              (___kont158512158513_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont158512158513_))))
                                      (___kont158512158513_))
                                  (___kont158512158513_))
                              (___kont158512158513_))))
                      (___kont158512158513_))))
              (___kont158512158513_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont158512158513_))))
                                          (___kont158512158513_))
                                      (___kont158512158513_))
                                  (___kont158512158513_))))
                          (___kont158512158513_))))
                  (___kont158512158513_))
              (___kont158512158513_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont158512158513_))
                                          (___kont158512158513_))
                                      (___kont158512158513_))))
                              (___kont158512158513_))))
                      (___kont158512158513_))
                  (___kont158512158513_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont158512158513_))
                                              (___kont158512158513_))
                                          (___kont158512158513_))))
                                  (___kont158512158513_))))
                          (___kont158512158513_))))
                  (___kont158512158513_)))))))
    (define gxc#!alias::typedecl
      (lambda (_self157548_)
        (let* ((_self157549157555_ _self157548_)
               (_E157551157559_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self157549157555_))))
               (_K157552157564_
                (lambda (_alias-id157562_)
                  (let ((__tmp158806
                         (let ()
                           (declare (not safe))
                           (cons _alias-id157562_ '()))))
                    (declare (not safe))
                    (cons '@alias __tmp158806)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self157549157555_ 'gxc#!alias::t))
              (let* ((_e157553157567_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157549157555_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_alias-id157570_ _e157553157567_))
                (declare (not safe))
                (_K157552157564_ _alias-id157570_))
              (let () (declare (not safe)) (_E157551157559_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_self157332_)
        (let* ((_self157333157349_ _self157332_)
               (_E157335157353_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self157333157349_))))
               (_K157336157368_
                (lambda (_methods157356_
                         _metaclass157357_
                         _system?157358_
                         _final?157359_
                         _struct?157360_
                         _constructor157361_
                         _fields157362_
                         _slots157363_
                         _precendence-list157364_
                         _super157365_
                         _id157366_)
                  (let ((__tmp158807
                         (let ((__tmp158808
                                (let ((__tmp158809
                                       (let ((__tmp158810
                                              (let ((__tmp158811
                                                     (let ((__tmp158812
                                                            (let ((__tmp158813
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp158814
                                  (let ((__tmp158815
                                         (let ((__tmp158816
                                                (let ((__tmp158817
                                                       (let ((__tmp158818
                                                              (if _methods157356_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (hash->list _methods157356_))
                          '#f)))
                 (declare (not safe))
                 (cons __tmp158818 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _metaclass157357_
                                                        __tmp158817))))
                                           (declare (not safe))
                                           (cons _system?157358_
                                                 __tmp158816))))
                                    (declare (not safe))
                                    (cons _final?157359_ __tmp158815))))
                             (declare (not safe))
                             (cons _struct?157360_ __tmp158814))))
                      (declare (not safe))
                      (cons _constructor157361_ __tmp158813))))
               (declare (not safe))
               (cons _fields157362_ __tmp158812))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _slots157363_
                                                      __tmp158811))))
                                         (declare (not safe))
                                         (cons _precendence-list157364_
                                               __tmp158810))))
                                  (declare (not safe))
                                  (cons _super157365_ __tmp158809))))
                           (declare (not safe))
                           (cons _id157366_ __tmp158808))))
                    (declare (not safe))
                    (cons '@class __tmp158807)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self157333157349_ 'gxc#!class::t))
              (let* ((_e157337157371_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157333157349_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_id157374_ _e157337157371_)
                     (_e157338157376_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157333157349_
                         '2
                         gxc#!class::t
                         '#f)))
                     (_super157379_ _e157338157376_)
                     (_e157339157381_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157333157349_
                         '3
                         gxc#!class::t
                         '#f)))
                     (_precendence-list157384_ _e157339157381_)
                     (_e157340157386_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157333157349_
                         '4
                         gxc#!class::t
                         '#f)))
                     (_slots157389_ _e157340157386_)
                     (_e157341157391_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157333157349_
                         '5
                         gxc#!class::t
                         '#f)))
                     (_fields157394_ _e157341157391_)
                     (_e157342157396_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157333157349_
                         '6
                         gxc#!class::t
                         '#f)))
                     (_constructor157399_ _e157342157396_)
                     (_e157343157401_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157333157349_
                         '7
                         gxc#!class::t
                         '#f)))
                     (_struct?157404_ _e157343157401_)
                     (_e157344157406_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157333157349_
                         '8
                         gxc#!class::t
                         '#f)))
                     (_final?157409_ _e157344157406_)
                     (_e157345157411_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157333157349_
                         '9
                         gxc#!class::t
                         '#f)))
                     (_system?157414_ _e157345157411_)
                     (_e157346157416_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157333157349_
                         '10
                         gxc#!class::t
                         '#f)))
                     (_metaclass157419_ _e157346157416_)
                     (_e157347157421_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157333157349_
                         '11
                         gxc#!class::t
                         '#f)))
                     (_methods157424_ _e157347157421_))
                (declare (not safe))
                (_K157336157368_
                 _methods157424_
                 _metaclass157419_
                 _system?157414_
                 _final?157409_
                 _struct?157404_
                 _constructor157399_
                 _fields157394_
                 _slots157389_
                 _precendence-list157384_
                 _super157379_
                 _id157374_))
              (let () (declare (not safe)) (_E157335157353_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_self157186_)
        (let* ((_self157187157193_ _self157186_)
               (_E157189157197_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self157187157193_))))
               (_K157190157202_
                (lambda (_klass-id157200_)
                  (let ((__tmp158819
                         (let ()
                           (declare (not safe))
                           (cons _klass-id157200_ '()))))
                    (declare (not safe))
                    (cons '@predicate __tmp158819)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self157187157193_
                 'gxc#!predicate::t))
              (let* ((_e157191157205_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157187157193_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id157208_ _e157191157205_))
                (declare (not safe))
                (_K157190157202_ _klass-id157208_))
              (let () (declare (not safe)) (_E157189157197_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_self157040_)
        (let* ((_self157041157047_ _self157040_)
               (_E157043157051_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self157041157047_))))
               (_K157044157056_
                (lambda (_klass-id157054_)
                  (let ((__tmp158820
                         (let ()
                           (declare (not safe))
                           (cons _klass-id157054_ '()))))
                    (declare (not safe))
                    (cons '@constructor __tmp158820)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self157041157047_
                 'gxc#!constructor::t))
              (let* ((_e157045157059_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157041157047_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id157062_ _e157045157059_))
                (declare (not safe))
                (_K157044157056_ _klass-id157062_))
              (let () (declare (not safe)) (_E157043157051_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_self156880_)
        (let* ((_self156881156889_ _self156880_)
               (_E156883156893_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self156881156889_))))
               (_K156884156900_
                (lambda (_checked?156896_ _slot156897_ _klass-id156898_)
                  (let ((__tmp158821
                         (let ((__tmp158822
                                (let ((__tmp158823
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?156896_ '()))))
                                  (declare (not safe))
                                  (cons _slot156897_ __tmp158823))))
                           (declare (not safe))
                           (cons _klass-id156898_ __tmp158822))))
                    (declare (not safe))
                    (cons '@accessor __tmp158821)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self156881156889_
                 'gxc#!accessor::t))
              (let* ((_e156885156903_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156881156889_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id156906_ _e156885156903_)
                     (_e156886156908_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156881156889_
                         '2
                         gxc#!accessor::t
                         '#f)))
                     (_slot156911_ _e156886156908_)
                     (_e156887156913_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156881156889_
                         '3
                         gxc#!accessor::t
                         '#f)))
                     (_checked?156916_ _e156887156913_))
                (declare (not safe))
                (_K156884156900_
                 _checked?156916_
                 _slot156911_
                 _klass-id156906_))
              (let () (declare (not safe)) (_E156883156893_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_self156720_)
        (let* ((_self156721156729_ _self156720_)
               (_E156723156733_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self156721156729_))))
               (_K156724156740_
                (lambda (_checked?156736_ _slot156737_ _klass-id156738_)
                  (let ((__tmp158824
                         (let ((__tmp158825
                                (let ((__tmp158826
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?156736_ '()))))
                                  (declare (not safe))
                                  (cons _slot156737_ __tmp158826))))
                           (declare (not safe))
                           (cons _klass-id156738_ __tmp158825))))
                    (declare (not safe))
                    (cons '@mutator __tmp158824)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self156721156729_ 'gxc#!mutator::t))
              (let* ((_e156725156743_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156721156729_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id156746_ _e156725156743_)
                     (_e156726156748_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156721156729_
                         '2
                         gxc#!mutator::t
                         '#f)))
                     (_slot156751_ _e156726156748_)
                     (_e156727156753_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156721156729_
                         '3
                         gxc#!mutator::t
                         '#f)))
                     (_checked?156756_ _e156727156753_))
                (declare (not safe))
                (_K156724156740_
                 _checked?156756_
                 _slot156751_
                 _klass-id156746_))
              (let () (declare (not safe)) (_E156723156733_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!lambda::typedecl
      (lambda (_self156546_)
        (let* ((_self156547156557_ _self156546_)
               (_E156549156561_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self156547156557_))))
               (_K156550156572_
                (lambda (_typedecl156564_
                         _inline156565_
                         _dispatch156566_
                         _arity156567_)
                  (if _inline156565_
                      (let ((_$e156569_ _typedecl156564_))
                        (if _$e156569_
                            _$e156569_
                            (let ()
                              (declare (not safe))
                              (error '"Cannot generate typedecl for inline rules"))))
                      (let ((__tmp158827
                             (let ((__tmp158828
                                    (let ()
                                      (declare (not safe))
                                      (cons _dispatch156566_ '()))))
                               (declare (not safe))
                               (cons _arity156567_ __tmp158828))))
                        (declare (not safe))
                        (cons '@lambda __tmp158827))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self156547156557_ 'gxc#!lambda::t))
              (let* ((_e156551156575_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156547156557_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e156552156578_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156547156557_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity156581_ _e156552156578_)
                     (_e156553156583_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156547156557_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch156586_ _e156553156583_)
                     (_e156554156588_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156547156557_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline156591_ _e156554156588_)
                     (_e156555156593_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156547156557_
                         '5
                         gxc#!lambda::t
                         '#f)))
                     (_typedecl156596_ _e156555156593_))
                (declare (not safe))
                (_K156550156572_
                 _typedecl156596_
                 _inline156591_
                 _dispatch156586_
                 _arity156581_))
              (let () (declare (not safe)) (_E156549156561_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_self156357_)
        (letrec ((_clause-e156359_
                  (lambda (_clause156389_)
                    (let* ((_clause156390156398_ _clause156389_)
                           (_E156392156402_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _clause156390156398_))))
                           (_K156393156408_
                            (lambda (_dispatch156405_ _arity156406_)
                              (let ((__tmp158829
                                     (let ()
                                       (declare (not safe))
                                       (cons _dispatch156405_ '()))))
                                (declare (not safe))
                                (cons _arity156406_ __tmp158829)))))
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _clause156390156398_
                             'gxc#!lambda::t))
                          (let* ((_e156394156411_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause156390156398_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                                 (_e156395156414_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause156390156398_
                                     '2
                                     gxc#!lambda::t
                                     '#f)))
                                 (_arity156417_ _e156395156414_)
                                 (_e156396156419_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause156390156398_
                                     '3
                                     gxc#!lambda::t
                                     '#f)))
                                 (_dispatch156422_ _e156396156419_))
                            (declare (not safe))
                            (_K156393156408_ _dispatch156422_ _arity156417_))
                          (let () (declare (not safe)) (_E156392156402_)))))))
          (let* ((_self156360156367_ _self156357_)
                 (_E156362156371_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching" _self156360156367_))))
                 (_K156363156378_
                  (lambda (_clauses156374_)
                    (let ((_clauses156376_
                           (map _clause-e156359_ _clauses156374_)))
                      (declare (not safe))
                      (cons '@case-lambda _clauses156376_)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of?
                   _self156360156367_
                   'gxc#!case-lambda::t))
                (let* ((_e156364156381_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self156360156367_
                           '1
                           gxc#!type::t
                           '#f)))
                       (_e156365156384_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self156360156367_
                           '2
                           gxc#!case-lambda::t
                           '#f)))
                       (_clauses156387_ _e156365156384_))
                  (declare (not safe))
                  (_K156363156378_ _clauses156387_))
                (let () (declare (not safe)) (_E156362156371_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_self156200_)
        (let* ((_self156201156209_ _self156200_)
               (_E156203156213_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self156201156209_))))
               (_K156204156219_
                (lambda (_dispatch156216_ _table156217_)
                  (let ((__tmp158830
                         (let ((__tmp158831
                                (let ()
                                  (declare (not safe))
                                  (cons _dispatch156216_ '()))))
                           (declare (not safe))
                           (cons _table156217_ __tmp158831))))
                    (declare (not safe))
                    (cons '@kw-lambda __tmp158830)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self156201156209_
                 'gxc#!kw-lambda::t))
              (let* ((_e156205156222_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156201156209_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e156206156225_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156201156209_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table156228_ _e156206156225_)
                     (_e156207156230_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156201156209_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch156233_ _e156207156230_))
                (declare (not safe))
                (_K156204156219_ _dispatch156233_ _table156228_))
              (let () (declare (not safe)) (_E156203156213_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda::t
       'typedecl
       gxc#!kw-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_self156043_)
        (let* ((_self156044156052_ _self156043_)
               (_E156046156056_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self156044156052_))))
               (_K156047156062_
                (lambda (_main156059_ _keys156060_)
                  (let ((__tmp158832
                         (let ((__tmp158833
                                (let ()
                                  (declare (not safe))
                                  (cons _main156059_ '()))))
                           (declare (not safe))
                           (cons _keys156060_ __tmp158833))))
                    (declare (not safe))
                    (cons '@kw-lambda-dispatch __tmp158832)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self156044156052_
                 'gxc#!kw-lambda-primary::t))
              (let* ((_e156048156065_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156044156052_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e156049156068_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156044156052_
                         '2
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_keys156071_ _e156049156068_)
                     (_e156050156073_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156044156052_
                         '3
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_main156076_ _e156050156073_))
                (declare (not safe))
                (_K156047156062_ _main156076_ _keys156071_))
              (let () (declare (not safe)) (_E156046156056_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))))
