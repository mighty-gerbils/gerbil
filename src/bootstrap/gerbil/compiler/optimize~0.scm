(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1710781154)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (gxc#current-compile-optimizer-info)
            '#!void
            (gxc#current-compile-optimizer-info
             (let ((__obj158754
                    (let ()
                      (declare (not safe))
                      (##structure gxc#optimizer-info::t '#f '#f '#f))))
               (gxc#optimizer-info:::init! __obj158754)
               __obj158754)))))
    (define gxc#optimize!
      (lambda (_ctx158447_)
        (let ((__tmp158760
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _ctx158447_))
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-builtin-ssxi _ctx158447_))
                 (let ((__tmp158762
                        (##structure-ref
                         (gxc#current-compile-optimizer-info)
                         '2
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp158761
                        (##structure-ref
                         _ctx158447_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp158762 __tmp158761 '#t))
                 (let ((_code158450_
                        (let ((__tmp158763
                               (##structure-ref
                                _ctx158447_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp158763))))
                   (##structure-set!
                    _ctx158447_
                    _code158450_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp158759 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp158758 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters
           __tmp158760
           gxc#current-compile-mutators
           __tmp158759
           gxc#current-compile-local-type
           __tmp158758))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_ctx158436_)
        (letrec ((_load-it!158438_
                  (lambda (_id158445_)
                    (if (let ((__tmp158765
                               (##structure-ref
                                (gxc#current-compile-optimizer-info)
                                '2
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp158765 _id158445_))
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-import-ssxi-by-id _id158445_))
                          (let ((__tmp158764
                                 (##structure-ref
                                  (gxc#current-compile-optimizer-info)
                                  '2
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp158764 _id158445_ '#t)))))))
          (let* ((_modid158440_
                  (##structure-ref _ctx158436_ '1 gx#expander-context::t '#f))
                 (_modid-str158442_ (symbol->string _modid158440_)))
            (for-each
             _load-it!158438_
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
      (lambda (_ctx158381_)
        (letrec* ((_deps158383_
                   (let* ((_imports158427_
                           (##structure-ref
                            _ctx158381_
                            '8
                            gx#module-context::t
                            '#f))
                          (_$e158429_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _ctx158381_))))
                     (if _$e158429_
                         ((lambda (_g158431158433_)
                            (let ()
                              (declare (not safe))
                              (cons _g158431158433_ _imports158427_)))
                          _$e158429_)
                         _imports158427_))))
          (let _lp158385_ ((_rest158387_ _deps158383_))
            (let* ((_rest158388158396_ _rest158387_)
                   (_else158390158404_ (lambda () '#!void))
                   (_K158392158415_
                    (lambda (_rest158407_ _hd158408_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _hd158408_
                             'gx#module-context::t))
                          (begin
                            (if (let ((__tmp158779
                                       (##structure-ref
                                        (gxc#current-compile-optimizer-info)
                                        '2
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp158778
                                       (##structure-ref
                                        _hd158408_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (hash-get __tmp158779 __tmp158778))
                                '#!void
                                (begin
                                  (let ((_$e158410_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _hd158408_))))
                                    (if _$e158410_
                                        ((lambda (_pre158413_)
                                           (let ((__tmp158776
                                                  (let ((__tmp158777
                                                         (##structure-ref
                                                          _hd158408_
                                                          '8
                                                          gx#module-context::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (cons _pre158413_
                                                          __tmp158777))))
                                             (declare (not safe))
                                             (_lp158385_ __tmp158776)))
                                         _$e158410_)
                                        (let ((__tmp158775
                                               (##structure-ref
                                                _hd158408_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                          (declare (not safe))
                                          (_lp158385_ __tmp158775))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _hd158408_))))
                            (let ()
                              (declare (not safe))
                              (_lp158385_ _rest158407_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _hd158408_
                                 'gx#prelude-context::t))
                              (begin
                                (if (let ((__tmp158774
                                           (##structure-ref
                                            (gxc#current-compile-optimizer-info)
                                            '2
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp158773
                                           (##structure-ref
                                            _hd158408_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (hash-get __tmp158774 __tmp158773))
                                    '#!void
                                    (begin
                                      (let ((__tmp158772
                                             (##structure-ref
                                              _hd158408_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_lp158385_ __tmp158772))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi _hd158408_))))
                                (let ()
                                  (declare (not safe))
                                  (_lp158385_ _rest158407_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _hd158408_
                                     'gx#module-import::t))
                                  (let ((__tmp158770
                                         (let ((__tmp158771
                                                (##direct-structure-ref
                                                 _hd158408_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp158771 _rest158407_))))
                                    (declare (not safe))
                                    (_lp158385_ __tmp158770))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _hd158408_
                                         'gx#module-export::t))
                                      (let ((__tmp158768
                                             (let ((__tmp158769
                                                    (##direct-structure-ref
                                                     _hd158408_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp158769
                                                     _rest158407_))))
                                        (declare (not safe))
                                        (_lp158385_ __tmp158768))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _hd158408_
                                             'gx#import-set::t))
                                          (let ((__tmp158766
                                                 (let ((__tmp158767
                                                        (##direct-structure-ref
                                                         _hd158408_
                                                         '1
                                                         gx#import-set::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp158767
                                                         _rest158407_))))
                                            (declare (not safe))
                                            (_lp158385_ __tmp158766))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _hd158408_))))))))))
              (if (let () (declare (not safe)) (##pair? _rest158388158396_))
                  (let ((_hd158393158418_
                         (let ()
                           (declare (not safe))
                           (##car _rest158388158396_)))
                        (_tl158394158420_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest158388158396_))))
                    (let* ((_hd158423_ _hd158393158418_)
                           (_rest158425_ _tl158394158420_))
                      (declare (not safe))
                      (_K158392158415_ _rest158425_ _hd158423_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_ctx158361_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _ctx158361_
                    'gx#module-context::t))
                 (let ((__tmp158780
                        (##structure-ref
                         _ctx158361_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp158780)))
            '#!void
            (let* ((_ht158363_
                    (##structure-ref
                     (gxc#current-compile-optimizer-info)
                     '2
                     gxc#optimizer-info::t
                     '#f))
                   (_id158365_
                    (##structure-ref
                     _ctx158361_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_mod158367_
                    (let ()
                      (declare (not safe))
                      (hash-get _ht158363_ _id158365_))))
              (let ((_$e158370_ _mod158367_))
                (if _$e158370_
                    _$e158370_
                    (let* ((_mod158373_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-import-ssxi _ctx158361_)))
                           (_val158378_
                            (let ((_$e158375_ _mod158373_))
                              (if _$e158375_ _$e158375_ '#!void))))
                      (let ()
                        (declare (not safe))
                        (hash-put! _ht158363_ _id158365_ _val158378_))
                      _val158378_)))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_ctx158359_)
        (if (##structure-ref _ctx158359_ '1 gx#expander-context::t '#f)
            (let ((__tmp158781
                   (##structure-ref
                    _ctx158359_
                    '1
                    gx#expander-context::t
                    '#f)))
              (declare (not safe))
              (gxc#optimizer-import-ssxi-by-id __tmp158781))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_id158336_)
        (letrec ((_catch-e158338_
                  (lambda (_exn158357_)
                    (if (gxc#current-compile-verbose)
                        (begin
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"Failed to load ssxi module for "
                             _id158336_))
                          (display-exception _exn158357_))
                        '#!void)
                    '#f))
                 (_import-e158339_
                  (lambda ()
                    (let* ((_str-id158342_
                            (string-append
                             (let ()
                               (declare (not safe))
                               (gxc#module-id->path-string _id158336_))
                             '".ssxi"))
                           (_artefact-path158350_
                            (let ((_odir158343158345_
                                   (gxc#current-compile-output-dir)))
                              (if _odir158343158345_
                                  (let ((_odir158348_ _odir158343158345_))
                                    (path-expand
                                     (string-append _str-id158342_ '".ss")
                                     _odir158348_))
                                  '#f)))
                           (_library-path158352_
                            (string->symbol
                             (string-append '":" _str-id158342_ '".ss")))
                           (_ssxi-path158354_
                            (if (and _artefact-path158350_
                                     (file-exists? _artefact-path158350_))
                                _artefact-path158350_
                                _library-path158352_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _ssxi-path158354_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _ssxi-path158354_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (with-catch _catch-e158338_ _import-e158339_)))))
    (define gxc#optimize-source
      (lambda (_stx158327_)
        (let () (declare (not safe)) (gxc#apply-collect-mutators _stx158327_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _stx158327_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _stx158327_))
        (let* ((_stx158329_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _stx158327_)))
               (_stx158331_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _stx158329_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _stx158331_))
          (let ((_stx158334_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _stx158331_))))
            (declare (not safe))
            (gxc#apply-optimize-call _stx158334_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp158784 (list gxc#::generate-runtime-empty::t))
            (__tmp158782
             (let ((__tmp158783
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp158783 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp158784
         '()
         __tmp158782
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _$args158324_
        (apply make-instance gxc#::generate-ssxi::t _$args158324_)))
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
      (lambda (_stx158316_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_self158319_
                (let ((__obj158756
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj158756))
               (__tmp158785
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self158319_ _stx158316_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp158785
           gxc#current-compile-method
           _self158319_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_self158276_ _stx158277_)
        (let* ((_g158279158289_
                (lambda (_g158280158286_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g158280158286_))))
               (_g158278158313_
                (lambda (_g158280158292_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g158280158292_))
                      (let ((_e158284158294_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g158280158292_))))
                        (let ((_hd158283158297_
                               (let ()
                                 (declare (not safe))
                                 (##car _e158284158294_)))
                              (_tl158282158299_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e158284158294_))))
                          ((lambda (_L158302_)
                             (let ((__tmp158788
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _self158276_
                                         _stx158277_))))
                                   (__tmp158786
                                    (let ((__tmp158787
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp158787 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp158788
                                gx#current-expander-phi
                                __tmp158786)))
                           _tl158282158299_)))
                      (let ()
                        (declare (not safe))
                        (_g158279158289_ _g158280158292_))))))
          (declare (not safe))
          (_g158278158313_ _stx158277_))))
    (define gxc#generate-ssxi-module%
      (lambda (_self158215_ _stx158216_)
        (let* ((_g158218158232_
                (lambda (_g158219158229_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g158219158229_))))
               (_g158217158273_
                (lambda (_g158219158235_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g158219158235_))
                      (let ((_e158224158237_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g158219158235_))))
                        (let ((_hd158223158240_
                               (let ()
                                 (declare (not safe))
                                 (##car _e158224158237_)))
                              (_tl158222158242_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e158224158237_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl158222158242_))
                              (let ((_e158227158245_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl158222158242_))))
                                (let ((_hd158226158248_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e158227158245_)))
                                      (_tl158225158250_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e158227158245_))))
                                  ((lambda (_L158253_ _L158254_)
                                     (let* ((_ctx158267_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L158254_)))
                                            (_code158269_
                                             (##structure-ref
                                              _ctx158267_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp158789
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self158215_
                                                   _code158269_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp158789
                                          gx#current-expander-context
                                          _ctx158267_))))
                                   _tl158225158250_
                                   _hd158226158248_)))
                              (let ()
                                (declare (not safe))
                                (_g158218158232_ _g158219158235_)))))
                      (let ()
                        (declare (not safe))
                        (_g158218158232_ _g158219158235_))))))
          (declare (not safe))
          (_g158217158273_ _stx158216_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_self158024_ _stx158025_)
        (letrec ((_generate-e158027_
                  (lambda (_id158204_)
                    (let* ((_sym158206_
                            (if (let ((__tmp158790
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp158790))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _id158204_))
                                '#f))
                           (_$e158208_
                            (if _sym158206_
                                (let ()
                                  (declare (not safe))
                                  (gxc#optimizer-lookup-type _sym158206_))
                                '#f)))
                      (if _$e158208_
                          ((lambda (_type158211_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"generate typedecl " _sym158206_))
                             (let* ((_typedecl158213_
                                     (let ((__method158757
                                            (let ()
                                              (declare (not safe))
                                              (method-ref
                                               _type158211_
                                               'typedecl))))
                                       (if __method158757
                                           (__method158757 _type158211_)
                                           (let ()
                                             (declare (not safe))
                                             (error '"Missing method"
                                                    _type158211_
                                                    'typedecl)))))
                                    (__tmp158791
                                     (let ((__tmp158792
                                            (let ()
                                              (declare (not safe))
                                              (cons _typedecl158213_ '()))))
                                       (declare (not safe))
                                       (cons _sym158206_ __tmp158792))))
                               (declare (not safe))
                               (cons 'declare-type __tmp158791)))
                           _$e158208_)
                          '(begin))))))
          (let* ((___stx158453158454_ _stx158025_)
                 (_g158030158068_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx158453158454_)))))
            (let ((___kont158455158456_
                   (lambda (_L158186_)
                     (let ()
                       (declare (not safe))
                       (_generate-e158027_ _L158186_))))
                  (___kont158457158458_
                   (lambda (_L158121_)
                     (let ((_types158147_
                            (map _generate-e158027_
                                 (let ((__tmp158793
                                        (lambda (_g158139158142_
                                                 _g158140158144_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g158139158142_
                                                  _g158140158144_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp158793 '() _L158121_)))))
                       (declare (not safe))
                       (cons 'begin _types158147_)))))
              (let ((___match158508158509_
                     (lambda (_e158048158073_
                              _hd158047158076_
                              _tl158046158078_
                              _e158051158081_
                              _hd158050158084_
                              _tl158049158086_
                              ___splice158459158460_
                              _target158052158089_
                              _tl158054158091_)
                       (letrec ((_loop158055158094_
                                 (lambda (_hd158053158097_ _id158059158099_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd158053158097_))
                                       (let ((_e158056158102_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd158053158097_))))
                                         (let ((_lp-tl158058158107_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e158056158102_)))
                                               (_lp-hd158057158105_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e158056158102_))))
                                           (let ((__tmp158794
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd158057158105_
                                                          _id158059158099_))))
                                             (declare (not safe))
                                             (_loop158055158094_
                                              _lp-tl158058158107_
                                              __tmp158794))))
                                       (let ((_id158060158110_
                                              (reverse _id158059158099_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl158049158086_))
                                             (let ((_e158063158113_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl158049158086_))))
                                               (let ((_tl158061158118_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e158063158113_)))
                                                     (_hd158062158116_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e158063158113_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl158061158118_))
                                                     (___kont158457158458_
                                                      _id158060158110_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g158030158068_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g158030158068_))))))))
                         (let ()
                           (declare (not safe))
                           (_loop158055158094_ _target158052158089_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx158453158454_))
                    (let ((_e158035158154_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx158453158454_))))
                      (let ((_tl158033158159_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158035158154_)))
                            (_hd158034158157_
                             (let ()
                               (declare (not safe))
                               (##car _e158035158154_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158033158159_))
                            (let ((_e158038158162_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl158033158159_))))
                              (let ((_tl158036158167_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158038158162_)))
                                    (_hd158037158165_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158038158162_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd158037158165_))
                                    (let ((_e158041158170_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd158037158165_))))
                                      (let ((_tl158039158175_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e158041158170_)))
                                            (_hd158040158173_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e158041158170_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl158039158175_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl158036158167_))
                                                (let ((_e158044158178_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl158036158167_))))
                                                  (let ((_tl158042158183_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e158044158178_)))
                                                        (_hd158043158181_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e158044158178_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl158042158183_))
                                                        (___kont158455158456_
                                                         _hd158040158173_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _hd158037158165_))
                                                            (let ((___splice158459158460_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _hd158037158165_ '0))))
                      (let ((_tl158054158091_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice158459158460_ '1)))
                            (_target158052158089_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice158459158460_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl158054158091_))
                            (___match158508158509_
                             _e158035158154_
                             _hd158034158157_
                             _tl158033158159_
                             _e158038158162_
                             _hd158037158165_
                             _tl158036158167_
                             ___splice158459158460_
                             _target158052158089_
                             _tl158054158091_)
                            (let () (declare (not safe)) (_g158030158068_)))))
                    (let () (declare (not safe)) (_g158030158068_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _hd158037158165_))
                                                    (let ((___splice158459158460_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _hd158037158165_
                                                              '0))))
                                                      (let ((_tl158054158091_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice158459158460_ '1)))
                    (_target158052158089_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice158459158460_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl158054158091_))
                    (___match158508158509_
                     _e158035158154_
                     _hd158034158157_
                     _tl158033158159_
                     _e158038158162_
                     _hd158037158165_
                     _tl158036158167_
                     ___splice158459158460_
                     _target158052158089_
                     _tl158054158091_)
                    (let () (declare (not safe)) (_g158030158068_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g158030158068_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _hd158037158165_))
                                                (let ((___splice158459158460_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _hd158037158165_
                                                          '0))))
                                                  (let ((_tl158054158091_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice158459158460_
                                                            '1)))
                                                        (_target158052158089_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice158459158460_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl158054158091_))
                                                        (___match158508158509_
                                                         _e158035158154_
                                                         _hd158034158157_
                                                         _tl158033158159_
                                                         _e158038158162_
                                                         _hd158037158165_
                                                         _tl158036158167_
                                                         ___splice158459158460_
                                                         _target158052158089_
                                                         _tl158054158091_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g158030158068_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g158030158068_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd158037158165_))
                                        (let ((___splice158459158460_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd158037158165_
                                                  '0))))
                                          (let ((_tl158054158091_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice158459158460_
                                                    '1)))
                                                (_target158052158089_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice158459158460_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl158054158091_))
                                                (___match158508158509_
                                                 _e158035158154_
                                                 _hd158034158157_
                                                 _tl158033158159_
                                                 _e158038158162_
                                                 _hd158037158165_
                                                 _tl158036158167_
                                                 ___splice158459158460_
                                                 _target158052158089_
                                                 _tl158054158091_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g158030158068_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g158030158068_))))))
                            (let () (declare (not safe)) (_g158030158068_)))))
                    (let () (declare (not safe)) (_g158030158068_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_self157577_ _stx157578_)
        (let* ((___stx158511158512_ _stx157578_)
               (_g157582157684_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx158511158512_)))))
          (let ((___kont158513158514_
                 (lambda (_L157974_ _L157975_ _L157976_ _L157977_ _L157978_)
                   (let ((__tmp158795
                          (let ((__tmp158802
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L157977_)))
                                (__tmp158796
                                 (let ((__tmp158801
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L157976_)))
                                       (__tmp158797
                                        (let ((__tmp158800
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L157975_)))
                                              (__tmp158798
                                               (let ((__tmp158799
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L157974_))))
                                                 (declare (not safe))
                                                 (cons __tmp158799 '()))))
                                          (declare (not safe))
                                          (cons __tmp158800 __tmp158798))))
                                   (declare (not safe))
                                   (cons __tmp158801 __tmp158797))))
                            (declare (not safe))
                            (cons __tmp158802 __tmp158796))))
                     (declare (not safe))
                     (cons 'declare-method __tmp158795))))
                (___kont158515158516_
                 (lambda (_L157800_ _L157801_ _L157802_ _L157803_)
                   (let ((__tmp158803
                          (let ((__tmp158809
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L157802_)))
                                (__tmp158804
                                 (let ((__tmp158808
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L157801_)))
                                       (__tmp158805
                                        (let ((__tmp158807
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L157800_)))
                                              (__tmp158806
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '#f '()))))
                                          (declare (not safe))
                                          (cons __tmp158807 __tmp158806))))
                                   (declare (not safe))
                                   (cons __tmp158808 __tmp158805))))
                            (declare (not safe))
                            (cons __tmp158809 __tmp158804))))
                     (declare (not safe))
                     (cons 'declare-method __tmp158803))))
                (___kont158517158518_ (lambda () '(begin))))
            (let ((___match158646158647_
                   (lambda (_e157591157846_
                            _hd157590157849_
                            _tl157589157851_
                            _e157594157854_
                            _hd157593157857_
                            _tl157592157859_
                            _e157597157862_
                            _hd157596157865_
                            _tl157595157867_
                            _e157600157870_
                            _hd157599157873_
                            _tl157598157875_
                            _e157603157878_
                            _hd157602157881_
                            _tl157601157883_
                            _e157606157886_
                            _hd157605157889_
                            _tl157604157891_
                            _e157609157894_
                            _hd157608157897_
                            _tl157607157899_
                            _e157612157902_
                            _hd157611157905_
                            _tl157610157907_
                            _e157615157910_
                            _hd157614157913_
                            _tl157613157915_
                            _e157618157918_
                            _hd157617157921_
                            _tl157616157923_
                            _e157621157926_
                            _hd157620157929_
                            _tl157619157931_
                            _e157624157934_
                            _hd157623157937_
                            _tl157622157939_
                            _e157627157942_
                            _hd157626157945_
                            _tl157625157947_
                            _e157630157950_
                            _hd157629157953_
                            _tl157628157955_
                            _e157633157958_
                            _hd157632157961_
                            _tl157631157963_
                            _e157636157966_
                            _hd157635157969_
                            _tl157634157971_)
                     (let ((_L157974_ _hd157635157969_)
                           (_L157975_ _hd157626157945_)
                           (_L157976_ _hd157617157921_)
                           (_L157977_ _hd157608157897_)
                           (_L157978_ _hd157599157873_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L157978_
                              'bind-method!))
                           (___kont158513158514_
                            _L157974_
                            _L157975_
                            _L157976_
                            _L157977_
                            _L157978_)
                           (___kont158517158518_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx158511158512_))
                  (let ((_e157591157846_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx158511158512_))))
                    (let ((_tl157589157851_
                           (let ()
                             (declare (not safe))
                             (##cdr _e157591157846_)))
                          (_hd157590157849_
                           (let ()
                             (declare (not safe))
                             (##car _e157591157846_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl157589157851_))
                          (let ((_e157594157854_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl157589157851_))))
                            (let ((_tl157592157859_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e157594157854_)))
                                  (_hd157593157857_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e157594157854_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd157593157857_))
                                  (let ((_e157597157862_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd157593157857_))))
                                    (let ((_tl157595157867_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e157597157862_)))
                                          (_hd157596157865_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e157597157862_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd157596157865_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd157596157865_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl157595157867_))
                                                  (let ((_e157600157870_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl157595157867_))))
                                                    (let ((_tl157598157875_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e157600157870_)))
                                                          (_hd157599157873_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e157600157870_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl157598157875_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl157592157859_))
                      (let ((_e157603157878_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl157592157859_))))
                        (let ((_tl157601157883_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e157603157878_)))
                              (_hd157602157881_
                               (let ()
                                 (declare (not safe))
                                 (##car _e157603157878_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd157602157881_))
                              (let ((_e157606157886_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd157602157881_))))
                                (let ((_tl157604157891_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e157606157886_)))
                                      (_hd157605157889_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e157606157886_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd157605157889_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd157605157889_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl157604157891_))
                                              (let ((_e157609157894_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl157604157891_))))
                                                (let ((_tl157607157899_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e157609157894_)))
                                                      (_hd157608157897_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e157609157894_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl157607157899_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl157601157883_))
                                                          (let ((_e157612157902_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl157601157883_))))
                    (let ((_tl157610157907_
                           (let ()
                             (declare (not safe))
                             (##cdr _e157612157902_)))
                          (_hd157611157905_
                           (let ()
                             (declare (not safe))
                             (##car _e157612157902_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd157611157905_))
                          (let ((_e157615157910_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd157611157905_))))
                            (let ((_tl157613157915_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e157615157910_)))
                                  (_hd157614157913_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e157615157910_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd157614157913_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd157614157913_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl157613157915_))
                                          (let ((_e157618157918_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl157613157915_))))
                                            (let ((_tl157616157923_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e157618157918_)))
                                                  (_hd157617157921_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e157618157918_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl157616157923_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl157610157907_))
                                                      (let ((_e157621157926_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl157610157907_))))
                (let ((_tl157619157931_
                       (let () (declare (not safe)) (##cdr _e157621157926_)))
                      (_hd157620157929_
                       (let () (declare (not safe)) (##car _e157621157926_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd157620157929_))
                      (let ((_e157624157934_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd157620157929_))))
                        (let ((_tl157622157939_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e157624157934_)))
                              (_hd157623157937_
                               (let ()
                                 (declare (not safe))
                                 (##car _e157624157934_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd157623157937_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd157623157937_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl157622157939_))
                                      (let ((_e157627157942_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl157622157939_))))
                                        (let ((_tl157625157947_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e157627157942_)))
                                              (_hd157626157945_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e157627157942_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl157625157947_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl157619157931_))
                                                  (let ((_e157630157950_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl157619157931_))))
                                                    (let ((_tl157628157955_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e157630157950_)))
                                                          (_hd157629157953_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e157630157950_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd157629157953_))
                                                          (let ((_e157633157958_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd157629157953_))))
                    (let ((_tl157631157963_
                           (let ()
                             (declare (not safe))
                             (##cdr _e157633157958_)))
                          (_hd157632157961_
                           (let ()
                             (declare (not safe))
                             (##car _e157633157958_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd157632157961_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd157632157961_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl157631157963_))
                                  (let ((_e157636157966_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl157631157963_))))
                                    (let ((_tl157634157971_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e157636157966_)))
                                          (_hd157635157969_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e157636157966_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl157634157971_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl157628157955_))
                                              (___match158646158647_
                                               _e157591157846_
                                               _hd157590157849_
                                               _tl157589157851_
                                               _e157594157854_
                                               _hd157593157857_
                                               _tl157592157859_
                                               _e157597157862_
                                               _hd157596157865_
                                               _tl157595157867_
                                               _e157600157870_
                                               _hd157599157873_
                                               _tl157598157875_
                                               _e157603157878_
                                               _hd157602157881_
                                               _tl157601157883_
                                               _e157606157886_
                                               _hd157605157889_
                                               _tl157604157891_
                                               _e157609157894_
                                               _hd157608157897_
                                               _tl157607157899_
                                               _e157612157902_
                                               _hd157611157905_
                                               _tl157610157907_
                                               _e157615157910_
                                               _hd157614157913_
                                               _tl157613157915_
                                               _e157618157918_
                                               _hd157617157921_
                                               _tl157616157923_
                                               _e157621157926_
                                               _hd157620157929_
                                               _tl157619157931_
                                               _e157624157934_
                                               _hd157623157937_
                                               _tl157622157939_
                                               _e157627157942_
                                               _hd157626157945_
                                               _tl157625157947_
                                               _e157630157950_
                                               _hd157629157953_
                                               _tl157628157955_
                                               _e157633157958_
                                               _hd157632157961_
                                               _tl157631157963_
                                               _e157636157966_
                                               _hd157635157969_
                                               _tl157634157971_)
                                              (___kont158517158518_))
                                          (___kont158517158518_))))
                                  (___kont158517158518_))
                              (___kont158517158518_))
                          (___kont158517158518_))))
                  (___kont158517158518_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl157619157931_))
                                                      (if (let ((__tmp158810
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp158810 'bind-method!))
                  (let ((_L157800_ _hd157626157945_)
                        (_L157801_ _hd157617157921_)
                        (_L157802_ _hd157608157897_)
                        (_L157803_ _hd157599157873_))
                    (___kont158515158516_
                     _L157800_
                     _L157801_
                     _L157802_
                     _L157803_))
                  (___kont158517158518_))
              (___kont158517158518_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont158517158518_))))
                                      (___kont158517158518_))
                                  (___kont158517158518_))
                              (___kont158517158518_))))
                      (___kont158517158518_))))
              (___kont158517158518_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont158517158518_))))
                                          (___kont158517158518_))
                                      (___kont158517158518_))
                                  (___kont158517158518_))))
                          (___kont158517158518_))))
                  (___kont158517158518_))
              (___kont158517158518_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont158517158518_))
                                          (___kont158517158518_))
                                      (___kont158517158518_))))
                              (___kont158517158518_))))
                      (___kont158517158518_))
                  (___kont158517158518_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont158517158518_))
                                              (___kont158517158518_))
                                          (___kont158517158518_))))
                                  (___kont158517158518_))))
                          (___kont158517158518_))))
                  (___kont158517158518_)))))))
    (define gxc#!alias::typedecl
      (lambda (_self157553_)
        (let* ((_self157554157560_ _self157553_)
               (_E157556157564_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self157554157560_))))
               (_K157557157569_
                (lambda (_alias-id157567_)
                  (let ((__tmp158811
                         (let ()
                           (declare (not safe))
                           (cons _alias-id157567_ '()))))
                    (declare (not safe))
                    (cons '@alias __tmp158811)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self157554157560_ 'gxc#!alias::t))
              (let* ((_e157558157572_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157554157560_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_alias-id157575_ _e157558157572_))
                (declare (not safe))
                (_K157557157569_ _alias-id157575_))
              (let () (declare (not safe)) (_E157556157564_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_self157337_)
        (let* ((_self157338157354_ _self157337_)
               (_E157340157358_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self157338157354_))))
               (_K157341157373_
                (lambda (_methods157361_
                         _metaclass157362_
                         _system?157363_
                         _final?157364_
                         _struct?157365_
                         _constructor157366_
                         _fields157367_
                         _slots157368_
                         _precendence-list157369_
                         _super157370_
                         _id157371_)
                  (let ((__tmp158812
                         (let ((__tmp158813
                                (let ((__tmp158814
                                       (let ((__tmp158815
                                              (let ((__tmp158816
                                                     (let ((__tmp158817
                                                            (let ((__tmp158818
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp158819
                                  (let ((__tmp158820
                                         (let ((__tmp158821
                                                (let ((__tmp158822
                                                       (let ((__tmp158823
                                                              (if _methods157361_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (hash->list _methods157361_))
                          '#f)))
                 (declare (not safe))
                 (cons __tmp158823 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _metaclass157362_
                                                        __tmp158822))))
                                           (declare (not safe))
                                           (cons _system?157363_
                                                 __tmp158821))))
                                    (declare (not safe))
                                    (cons _final?157364_ __tmp158820))))
                             (declare (not safe))
                             (cons _struct?157365_ __tmp158819))))
                      (declare (not safe))
                      (cons _constructor157366_ __tmp158818))))
               (declare (not safe))
               (cons _fields157367_ __tmp158817))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _slots157368_
                                                      __tmp158816))))
                                         (declare (not safe))
                                         (cons _precendence-list157369_
                                               __tmp158815))))
                                  (declare (not safe))
                                  (cons _super157370_ __tmp158814))))
                           (declare (not safe))
                           (cons _id157371_ __tmp158813))))
                    (declare (not safe))
                    (cons '@class __tmp158812)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self157338157354_ 'gxc#!class::t))
              (let* ((_e157342157376_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157338157354_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_id157379_ _e157342157376_)
                     (_e157343157381_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157338157354_
                         '2
                         gxc#!class::t
                         '#f)))
                     (_super157384_ _e157343157381_)
                     (_e157344157386_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157338157354_
                         '3
                         gxc#!class::t
                         '#f)))
                     (_precendence-list157389_ _e157344157386_)
                     (_e157345157391_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157338157354_
                         '4
                         gxc#!class::t
                         '#f)))
                     (_slots157394_ _e157345157391_)
                     (_e157346157396_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157338157354_
                         '5
                         gxc#!class::t
                         '#f)))
                     (_fields157399_ _e157346157396_)
                     (_e157347157401_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157338157354_
                         '6
                         gxc#!class::t
                         '#f)))
                     (_constructor157404_ _e157347157401_)
                     (_e157348157406_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157338157354_
                         '7
                         gxc#!class::t
                         '#f)))
                     (_struct?157409_ _e157348157406_)
                     (_e157349157411_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157338157354_
                         '8
                         gxc#!class::t
                         '#f)))
                     (_final?157414_ _e157349157411_)
                     (_e157350157416_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157338157354_
                         '9
                         gxc#!class::t
                         '#f)))
                     (_system?157419_ _e157350157416_)
                     (_e157351157421_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157338157354_
                         '10
                         gxc#!class::t
                         '#f)))
                     (_metaclass157424_ _e157351157421_)
                     (_e157352157426_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157338157354_
                         '11
                         gxc#!class::t
                         '#f)))
                     (_methods157429_ _e157352157426_))
                (declare (not safe))
                (_K157341157373_
                 _methods157429_
                 _metaclass157424_
                 _system?157419_
                 _final?157414_
                 _struct?157409_
                 _constructor157404_
                 _fields157399_
                 _slots157394_
                 _precendence-list157389_
                 _super157384_
                 _id157379_))
              (let () (declare (not safe)) (_E157340157358_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_self157191_)
        (let* ((_self157192157198_ _self157191_)
               (_E157194157202_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self157192157198_))))
               (_K157195157207_
                (lambda (_klass-id157205_)
                  (let ((__tmp158824
                         (let ()
                           (declare (not safe))
                           (cons _klass-id157205_ '()))))
                    (declare (not safe))
                    (cons '@predicate __tmp158824)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self157192157198_
                 'gxc#!predicate::t))
              (let* ((_e157196157210_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157192157198_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id157213_ _e157196157210_))
                (declare (not safe))
                (_K157195157207_ _klass-id157213_))
              (let () (declare (not safe)) (_E157194157202_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_self157045_)
        (let* ((_self157046157052_ _self157045_)
               (_E157048157056_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self157046157052_))))
               (_K157049157061_
                (lambda (_klass-id157059_)
                  (let ((__tmp158825
                         (let ()
                           (declare (not safe))
                           (cons _klass-id157059_ '()))))
                    (declare (not safe))
                    (cons '@constructor __tmp158825)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self157046157052_
                 'gxc#!constructor::t))
              (let* ((_e157050157064_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157046157052_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id157067_ _e157050157064_))
                (declare (not safe))
                (_K157049157061_ _klass-id157067_))
              (let () (declare (not safe)) (_E157048157056_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_self156885_)
        (let* ((_self156886156894_ _self156885_)
               (_E156888156898_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self156886156894_))))
               (_K156889156905_
                (lambda (_checked?156901_ _slot156902_ _klass-id156903_)
                  (let ((__tmp158826
                         (let ((__tmp158827
                                (let ((__tmp158828
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?156901_ '()))))
                                  (declare (not safe))
                                  (cons _slot156902_ __tmp158828))))
                           (declare (not safe))
                           (cons _klass-id156903_ __tmp158827))))
                    (declare (not safe))
                    (cons '@accessor __tmp158826)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self156886156894_
                 'gxc#!accessor::t))
              (let* ((_e156890156908_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156886156894_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id156911_ _e156890156908_)
                     (_e156891156913_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156886156894_
                         '2
                         gxc#!accessor::t
                         '#f)))
                     (_slot156916_ _e156891156913_)
                     (_e156892156918_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156886156894_
                         '3
                         gxc#!accessor::t
                         '#f)))
                     (_checked?156921_ _e156892156918_))
                (declare (not safe))
                (_K156889156905_
                 _checked?156921_
                 _slot156916_
                 _klass-id156911_))
              (let () (declare (not safe)) (_E156888156898_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_self156725_)
        (let* ((_self156726156734_ _self156725_)
               (_E156728156738_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self156726156734_))))
               (_K156729156745_
                (lambda (_checked?156741_ _slot156742_ _klass-id156743_)
                  (let ((__tmp158829
                         (let ((__tmp158830
                                (let ((__tmp158831
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?156741_ '()))))
                                  (declare (not safe))
                                  (cons _slot156742_ __tmp158831))))
                           (declare (not safe))
                           (cons _klass-id156743_ __tmp158830))))
                    (declare (not safe))
                    (cons '@mutator __tmp158829)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self156726156734_ 'gxc#!mutator::t))
              (let* ((_e156730156748_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156726156734_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id156751_ _e156730156748_)
                     (_e156731156753_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156726156734_
                         '2
                         gxc#!mutator::t
                         '#f)))
                     (_slot156756_ _e156731156753_)
                     (_e156732156758_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156726156734_
                         '3
                         gxc#!mutator::t
                         '#f)))
                     (_checked?156761_ _e156732156758_))
                (declare (not safe))
                (_K156729156745_
                 _checked?156761_
                 _slot156756_
                 _klass-id156751_))
              (let () (declare (not safe)) (_E156728156738_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!lambda::typedecl
      (lambda (_self156551_)
        (let* ((_self156552156562_ _self156551_)
               (_E156554156566_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self156552156562_))))
               (_K156555156577_
                (lambda (_typedecl156569_
                         _inline156570_
                         _dispatch156571_
                         _arity156572_)
                  (if _inline156570_
                      (let ((_$e156574_ _typedecl156569_))
                        (if _$e156574_
                            _$e156574_
                            (let ()
                              (declare (not safe))
                              (error '"Cannot generate typedecl for inline rules"))))
                      (let ((__tmp158832
                             (let ((__tmp158833
                                    (let ()
                                      (declare (not safe))
                                      (cons _dispatch156571_ '()))))
                               (declare (not safe))
                               (cons _arity156572_ __tmp158833))))
                        (declare (not safe))
                        (cons '@lambda __tmp158832))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self156552156562_ 'gxc#!lambda::t))
              (let* ((_e156556156580_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156552156562_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e156557156583_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156552156562_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity156586_ _e156557156583_)
                     (_e156558156588_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156552156562_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch156591_ _e156558156588_)
                     (_e156559156593_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156552156562_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline156596_ _e156559156593_)
                     (_e156560156598_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156552156562_
                         '5
                         gxc#!lambda::t
                         '#f)))
                     (_typedecl156601_ _e156560156598_))
                (declare (not safe))
                (_K156555156577_
                 _typedecl156601_
                 _inline156596_
                 _dispatch156591_
                 _arity156586_))
              (let () (declare (not safe)) (_E156554156566_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_self156362_)
        (letrec ((_clause-e156364_
                  (lambda (_clause156394_)
                    (let* ((_clause156395156403_ _clause156394_)
                           (_E156397156407_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _clause156395156403_))))
                           (_K156398156413_
                            (lambda (_dispatch156410_ _arity156411_)
                              (let ((__tmp158834
                                     (let ()
                                       (declare (not safe))
                                       (cons _dispatch156410_ '()))))
                                (declare (not safe))
                                (cons _arity156411_ __tmp158834)))))
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _clause156395156403_
                             'gxc#!lambda::t))
                          (let* ((_e156399156416_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause156395156403_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                                 (_e156400156419_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause156395156403_
                                     '2
                                     gxc#!lambda::t
                                     '#f)))
                                 (_arity156422_ _e156400156419_)
                                 (_e156401156424_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause156395156403_
                                     '3
                                     gxc#!lambda::t
                                     '#f)))
                                 (_dispatch156427_ _e156401156424_))
                            (declare (not safe))
                            (_K156398156413_ _dispatch156427_ _arity156422_))
                          (let () (declare (not safe)) (_E156397156407_)))))))
          (let* ((_self156365156372_ _self156362_)
                 (_E156367156376_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching" _self156365156372_))))
                 (_K156368156383_
                  (lambda (_clauses156379_)
                    (let ((_clauses156381_
                           (map _clause-e156364_ _clauses156379_)))
                      (declare (not safe))
                      (cons '@case-lambda _clauses156381_)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of?
                   _self156365156372_
                   'gxc#!case-lambda::t))
                (let* ((_e156369156386_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self156365156372_
                           '1
                           gxc#!type::t
                           '#f)))
                       (_e156370156389_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self156365156372_
                           '2
                           gxc#!case-lambda::t
                           '#f)))
                       (_clauses156392_ _e156370156389_))
                  (declare (not safe))
                  (_K156368156383_ _clauses156392_))
                (let () (declare (not safe)) (_E156367156376_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_self156205_)
        (let* ((_self156206156214_ _self156205_)
               (_E156208156218_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self156206156214_))))
               (_K156209156224_
                (lambda (_dispatch156221_ _table156222_)
                  (let ((__tmp158835
                         (let ((__tmp158836
                                (let ()
                                  (declare (not safe))
                                  (cons _dispatch156221_ '()))))
                           (declare (not safe))
                           (cons _table156222_ __tmp158836))))
                    (declare (not safe))
                    (cons '@kw-lambda __tmp158835)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self156206156214_
                 'gxc#!kw-lambda::t))
              (let* ((_e156210156227_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156206156214_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e156211156230_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156206156214_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table156233_ _e156211156230_)
                     (_e156212156235_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156206156214_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch156238_ _e156212156235_))
                (declare (not safe))
                (_K156209156224_ _dispatch156238_ _table156233_))
              (let () (declare (not safe)) (_E156208156218_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda::t
       'typedecl
       gxc#!kw-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_self156048_)
        (let* ((_self156049156057_ _self156048_)
               (_E156051156061_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self156049156057_))))
               (_K156052156067_
                (lambda (_main156064_ _keys156065_)
                  (let ((__tmp158837
                         (let ((__tmp158838
                                (let ()
                                  (declare (not safe))
                                  (cons _main156064_ '()))))
                           (declare (not safe))
                           (cons _keys156065_ __tmp158838))))
                    (declare (not safe))
                    (cons '@kw-lambda-dispatch __tmp158837)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self156049156057_
                 'gxc#!kw-lambda-primary::t))
              (let* ((_e156053156070_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156049156057_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e156054156073_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156049156057_
                         '2
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_keys156076_ _e156054156073_)
                     (_e156055156078_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156049156057_
                         '3
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_main156081_ _e156055156078_))
                (declare (not safe))
                (_K156052156067_ _main156081_ _keys156076_))
              (let () (declare (not safe)) (_E156051156061_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))))
