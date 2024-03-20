(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1710943503)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (gxc#current-compile-optimizer-info)
            '#!void
            (gxc#current-compile-optimizer-info
             (let ((__obj158740
                    (let ()
                      (declare (not safe))
                      (##structure gxc#optimizer-info::t '#f '#f '#f))))
               (gxc#optimizer-info:::init! __obj158740)
               __obj158740)))))
    (define gxc#optimize!
      (lambda (_ctx158433_)
        (let ((__tmp158746
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _ctx158433_))
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-builtin-ssxi _ctx158433_))
                 (let ((__tmp158748
                        (##structure-ref
                         (gxc#current-compile-optimizer-info)
                         '2
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp158747
                        (##structure-ref
                         _ctx158433_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp158748 __tmp158747 '#t))
                 (let ((_code158436_
                        (let ((__tmp158749
                               (##structure-ref
                                _ctx158433_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp158749))))
                   (##structure-set!
                    _ctx158433_
                    _code158436_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp158745 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp158744 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters
           __tmp158746
           gxc#current-compile-mutators
           __tmp158745
           gxc#current-compile-local-type
           __tmp158744))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_ctx158422_)
        (letrec ((_load-it!158424_
                  (lambda (_id158431_)
                    (if (let ((__tmp158751
                               (##structure-ref
                                (gxc#current-compile-optimizer-info)
                                '2
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp158751 _id158431_))
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-import-ssxi-by-id _id158431_))
                          (let ((__tmp158750
                                 (##structure-ref
                                  (gxc#current-compile-optimizer-info)
                                  '2
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp158750 _id158431_ '#t)))))))
          (let* ((_modid158426_
                  (##structure-ref _ctx158422_ '1 gx#expander-context::t '#f))
                 (_modid-str158428_ (symbol->string _modid158426_)))
            (for-each
             _load-it!158424_
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
      (lambda (_ctx158367_)
        (letrec* ((_deps158369_
                   (let* ((_imports158413_
                           (##structure-ref
                            _ctx158367_
                            '8
                            gx#module-context::t
                            '#f))
                          (_$e158415_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _ctx158367_))))
                     (if _$e158415_
                         ((lambda (_g158417158419_)
                            (let ()
                              (declare (not safe))
                              (cons _g158417158419_ _imports158413_)))
                          _$e158415_)
                         _imports158413_))))
          (let _lp158371_ ((_rest158373_ _deps158369_))
            (let* ((_rest158374158382_ _rest158373_)
                   (_else158376158390_ (lambda () '#!void))
                   (_K158378158401_
                    (lambda (_rest158393_ _hd158394_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _hd158394_
                             'gx#module-context::t))
                          (begin
                            (if (let ((__tmp158765
                                       (##structure-ref
                                        (gxc#current-compile-optimizer-info)
                                        '2
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp158764
                                       (##structure-ref
                                        _hd158394_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (hash-get __tmp158765 __tmp158764))
                                '#!void
                                (begin
                                  (let ((_$e158396_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _hd158394_))))
                                    (if _$e158396_
                                        ((lambda (_pre158399_)
                                           (let ((__tmp158762
                                                  (let ((__tmp158763
                                                         (##structure-ref
                                                          _hd158394_
                                                          '8
                                                          gx#module-context::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (cons _pre158399_
                                                          __tmp158763))))
                                             (declare (not safe))
                                             (_lp158371_ __tmp158762)))
                                         _$e158396_)
                                        (let ((__tmp158761
                                               (##structure-ref
                                                _hd158394_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                          (declare (not safe))
                                          (_lp158371_ __tmp158761))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _hd158394_))))
                            (let ()
                              (declare (not safe))
                              (_lp158371_ _rest158393_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _hd158394_
                                 'gx#prelude-context::t))
                              (begin
                                (if (let ((__tmp158760
                                           (##structure-ref
                                            (gxc#current-compile-optimizer-info)
                                            '2
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp158759
                                           (##structure-ref
                                            _hd158394_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (hash-get __tmp158760 __tmp158759))
                                    '#!void
                                    (begin
                                      (let ((__tmp158758
                                             (##structure-ref
                                              _hd158394_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_lp158371_ __tmp158758))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi _hd158394_))))
                                (let ()
                                  (declare (not safe))
                                  (_lp158371_ _rest158393_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _hd158394_
                                     'gx#module-import::t))
                                  (let ((__tmp158756
                                         (let ((__tmp158757
                                                (##direct-structure-ref
                                                 _hd158394_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp158757 _rest158393_))))
                                    (declare (not safe))
                                    (_lp158371_ __tmp158756))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _hd158394_
                                         'gx#module-export::t))
                                      (let ((__tmp158754
                                             (let ((__tmp158755
                                                    (##direct-structure-ref
                                                     _hd158394_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp158755
                                                     _rest158393_))))
                                        (declare (not safe))
                                        (_lp158371_ __tmp158754))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _hd158394_
                                             'gx#import-set::t))
                                          (let ((__tmp158752
                                                 (let ((__tmp158753
                                                        (##direct-structure-ref
                                                         _hd158394_
                                                         '1
                                                         gx#import-set::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp158753
                                                         _rest158393_))))
                                            (declare (not safe))
                                            (_lp158371_ __tmp158752))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _hd158394_))))))))))
              (if (let () (declare (not safe)) (##pair? _rest158374158382_))
                  (let ((_hd158379158404_
                         (let ()
                           (declare (not safe))
                           (##car _rest158374158382_)))
                        (_tl158380158406_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest158374158382_))))
                    (let* ((_hd158409_ _hd158379158404_)
                           (_rest158411_ _tl158380158406_))
                      (declare (not safe))
                      (_K158378158401_ _rest158411_ _hd158409_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_ctx158347_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _ctx158347_
                    'gx#module-context::t))
                 (let ((__tmp158766
                        (##structure-ref
                         _ctx158347_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp158766)))
            '#!void
            (let* ((_ht158349_
                    (##structure-ref
                     (gxc#current-compile-optimizer-info)
                     '2
                     gxc#optimizer-info::t
                     '#f))
                   (_id158351_
                    (##structure-ref
                     _ctx158347_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_mod158353_
                    (let ()
                      (declare (not safe))
                      (hash-get _ht158349_ _id158351_))))
              (let ((_$e158356_ _mod158353_))
                (if _$e158356_
                    _$e158356_
                    (let* ((_mod158359_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-import-ssxi _ctx158347_)))
                           (_val158364_
                            (let ((_$e158361_ _mod158359_))
                              (if _$e158361_ _$e158361_ '#!void))))
                      (let ()
                        (declare (not safe))
                        (hash-put! _ht158349_ _id158351_ _val158364_))
                      _val158364_)))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_ctx158345_)
        (if (##structure-ref _ctx158345_ '1 gx#expander-context::t '#f)
            (let ((__tmp158767
                   (##structure-ref
                    _ctx158345_
                    '1
                    gx#expander-context::t
                    '#f)))
              (declare (not safe))
              (gxc#optimizer-import-ssxi-by-id __tmp158767))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_id158322_)
        (letrec ((_catch-e158324_
                  (lambda (_exn158343_)
                    (if (gxc#current-compile-verbose)
                        (begin
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"Failed to load ssxi module for "
                             _id158322_))
                          (display-exception _exn158343_))
                        '#!void)
                    '#f))
                 (_import-e158325_
                  (lambda ()
                    (let* ((_str-id158328_
                            (string-append
                             (let ()
                               (declare (not safe))
                               (gxc#module-id->path-string _id158322_))
                             '".ssxi"))
                           (_artefact-path158336_
                            (let ((_odir158329158331_
                                   (gxc#current-compile-output-dir)))
                              (if _odir158329158331_
                                  (let ((_odir158334_ _odir158329158331_))
                                    (path-expand
                                     (string-append _str-id158328_ '".ss")
                                     _odir158334_))
                                  '#f)))
                           (_library-path158338_
                            (string->symbol
                             (string-append '":" _str-id158328_ '".ss")))
                           (_ssxi-path158340_
                            (if (and _artefact-path158336_
                                     (file-exists? _artefact-path158336_))
                                _artefact-path158336_
                                _library-path158338_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _ssxi-path158340_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _ssxi-path158340_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (with-catch _catch-e158324_ _import-e158325_)))))
    (define gxc#optimize-source
      (lambda (_stx158313_)
        (let () (declare (not safe)) (gxc#apply-collect-mutators _stx158313_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _stx158313_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _stx158313_))
        (let* ((_stx158315_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _stx158313_)))
               (_stx158317_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _stx158315_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _stx158317_))
          (let ((_stx158320_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _stx158317_))))
            (declare (not safe))
            (gxc#apply-optimize-call _stx158320_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp158770 (list gxc#::generate-runtime-empty::t))
            (__tmp158768
             (let ((__tmp158769
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp158769 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp158770
         '()
         __tmp158768
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _$args158310_
        (apply make-instance gxc#::generate-ssxi::t _$args158310_)))
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
      (lambda (_stx158302_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_self158305_
                (let ((__obj158742
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj158742))
               (__tmp158771
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self158305_ _stx158302_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp158771
           gxc#current-compile-method
           _self158305_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_self158262_ _stx158263_)
        (let* ((_g158265158275_
                (lambda (_g158266158272_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g158266158272_))))
               (_g158264158299_
                (lambda (_g158266158278_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g158266158278_))
                      (let ((_e158270158280_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g158266158278_))))
                        (let ((_hd158269158283_
                               (let ()
                                 (declare (not safe))
                                 (##car _e158270158280_)))
                              (_tl158268158285_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e158270158280_))))
                          ((lambda (_L158288_)
                             (let ((__tmp158774
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _self158262_
                                         _stx158263_))))
                                   (__tmp158772
                                    (let ((__tmp158773
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp158773 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp158774
                                gx#current-expander-phi
                                __tmp158772)))
                           _tl158268158285_)))
                      (let ()
                        (declare (not safe))
                        (_g158265158275_ _g158266158278_))))))
          (declare (not safe))
          (_g158264158299_ _stx158263_))))
    (define gxc#generate-ssxi-module%
      (lambda (_self158201_ _stx158202_)
        (let* ((_g158204158218_
                (lambda (_g158205158215_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g158205158215_))))
               (_g158203158259_
                (lambda (_g158205158221_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g158205158221_))
                      (let ((_e158210158223_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g158205158221_))))
                        (let ((_hd158209158226_
                               (let ()
                                 (declare (not safe))
                                 (##car _e158210158223_)))
                              (_tl158208158228_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e158210158223_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl158208158228_))
                              (let ((_e158213158231_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl158208158228_))))
                                (let ((_hd158212158234_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e158213158231_)))
                                      (_tl158211158236_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e158213158231_))))
                                  ((lambda (_L158239_ _L158240_)
                                     (let* ((_ctx158253_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L158240_)))
                                            (_code158255_
                                             (##structure-ref
                                              _ctx158253_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp158775
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self158201_
                                                   _code158255_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp158775
                                          gx#current-expander-context
                                          _ctx158253_))))
                                   _tl158211158236_
                                   _hd158212158234_)))
                              (let ()
                                (declare (not safe))
                                (_g158204158218_ _g158205158221_)))))
                      (let ()
                        (declare (not safe))
                        (_g158204158218_ _g158205158221_))))))
          (declare (not safe))
          (_g158203158259_ _stx158202_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_self158010_ _stx158011_)
        (letrec ((_generate-e158013_
                  (lambda (_id158190_)
                    (let* ((_sym158192_
                            (if (let ((__tmp158776
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp158776))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _id158190_))
                                '#f))
                           (_$e158194_
                            (if _sym158192_
                                (let ()
                                  (declare (not safe))
                                  (gxc#optimizer-lookup-type _sym158192_))
                                '#f)))
                      (if _$e158194_
                          ((lambda (_type158197_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"generate typedecl " _sym158192_))
                             (let* ((_typedecl158199_
                                     (let ((__method158743
                                            (let ()
                                              (declare (not safe))
                                              (method-ref
                                               _type158197_
                                               'typedecl))))
                                       (if __method158743
                                           (__method158743 _type158197_)
                                           (let ()
                                             (declare (not safe))
                                             (error '"Missing method"
                                                    _type158197_
                                                    'typedecl)))))
                                    (__tmp158777
                                     (let ((__tmp158778
                                            (let ()
                                              (declare (not safe))
                                              (cons _typedecl158199_ '()))))
                                       (declare (not safe))
                                       (cons _sym158192_ __tmp158778))))
                               (declare (not safe))
                               (cons 'declare-type __tmp158777)))
                           _$e158194_)
                          '(begin))))))
          (let* ((___stx158439158440_ _stx158011_)
                 (_g158016158054_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx158439158440_)))))
            (let ((___kont158441158442_
                   (lambda (_L158172_)
                     (let ()
                       (declare (not safe))
                       (_generate-e158013_ _L158172_))))
                  (___kont158443158444_
                   (lambda (_L158107_)
                     (let ((_types158133_
                            (map _generate-e158013_
                                 (let ((__tmp158779
                                        (lambda (_g158125158128_
                                                 _g158126158130_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g158125158128_
                                                  _g158126158130_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp158779 '() _L158107_)))))
                       (declare (not safe))
                       (cons 'begin _types158133_)))))
              (let ((___match158494158495_
                     (lambda (_e158034158059_
                              _hd158033158062_
                              _tl158032158064_
                              _e158037158067_
                              _hd158036158070_
                              _tl158035158072_
                              ___splice158445158446_
                              _target158038158075_
                              _tl158040158077_)
                       (letrec ((_loop158041158080_
                                 (lambda (_hd158039158083_ _id158045158085_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd158039158083_))
                                       (let ((_e158042158088_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd158039158083_))))
                                         (let ((_lp-tl158044158093_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e158042158088_)))
                                               (_lp-hd158043158091_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e158042158088_))))
                                           (let ((__tmp158780
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd158043158091_
                                                          _id158045158085_))))
                                             (declare (not safe))
                                             (_loop158041158080_
                                              _lp-tl158044158093_
                                              __tmp158780))))
                                       (let ((_id158046158096_
                                              (reverse _id158045158085_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl158035158072_))
                                             (let ((_e158049158099_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl158035158072_))))
                                               (let ((_tl158047158104_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e158049158099_)))
                                                     (_hd158048158102_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e158049158099_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl158047158104_))
                                                     (___kont158443158444_
                                                      _id158046158096_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g158016158054_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g158016158054_))))))))
                         (let ()
                           (declare (not safe))
                           (_loop158041158080_ _target158038158075_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx158439158440_))
                    (let ((_e158021158140_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx158439158440_))))
                      (let ((_tl158019158145_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158021158140_)))
                            (_hd158020158143_
                             (let ()
                               (declare (not safe))
                               (##car _e158021158140_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158019158145_))
                            (let ((_e158024158148_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl158019158145_))))
                              (let ((_tl158022158153_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158024158148_)))
                                    (_hd158023158151_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158024158148_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd158023158151_))
                                    (let ((_e158027158156_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd158023158151_))))
                                      (let ((_tl158025158161_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e158027158156_)))
                                            (_hd158026158159_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e158027158156_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl158025158161_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl158022158153_))
                                                (let ((_e158030158164_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl158022158153_))))
                                                  (let ((_tl158028158169_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e158030158164_)))
                                                        (_hd158029158167_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e158030158164_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl158028158169_))
                                                        (___kont158441158442_
                                                         _hd158026158159_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _hd158023158151_))
                                                            (let ((___splice158445158446_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _hd158023158151_ '0))))
                      (let ((_tl158040158077_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice158445158446_ '1)))
                            (_target158038158075_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice158445158446_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl158040158077_))
                            (___match158494158495_
                             _e158021158140_
                             _hd158020158143_
                             _tl158019158145_
                             _e158024158148_
                             _hd158023158151_
                             _tl158022158153_
                             ___splice158445158446_
                             _target158038158075_
                             _tl158040158077_)
                            (let () (declare (not safe)) (_g158016158054_)))))
                    (let () (declare (not safe)) (_g158016158054_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _hd158023158151_))
                                                    (let ((___splice158445158446_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _hd158023158151_
                                                              '0))))
                                                      (let ((_tl158040158077_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice158445158446_ '1)))
                    (_target158038158075_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice158445158446_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl158040158077_))
                    (___match158494158495_
                     _e158021158140_
                     _hd158020158143_
                     _tl158019158145_
                     _e158024158148_
                     _hd158023158151_
                     _tl158022158153_
                     ___splice158445158446_
                     _target158038158075_
                     _tl158040158077_)
                    (let () (declare (not safe)) (_g158016158054_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g158016158054_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _hd158023158151_))
                                                (let ((___splice158445158446_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _hd158023158151_
                                                          '0))))
                                                  (let ((_tl158040158077_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice158445158446_
                                                            '1)))
                                                        (_target158038158075_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice158445158446_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl158040158077_))
                                                        (___match158494158495_
                                                         _e158021158140_
                                                         _hd158020158143_
                                                         _tl158019158145_
                                                         _e158024158148_
                                                         _hd158023158151_
                                                         _tl158022158153_
                                                         ___splice158445158446_
                                                         _target158038158075_
                                                         _tl158040158077_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g158016158054_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g158016158054_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd158023158151_))
                                        (let ((___splice158445158446_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd158023158151_
                                                  '0))))
                                          (let ((_tl158040158077_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice158445158446_
                                                    '1)))
                                                (_target158038158075_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice158445158446_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl158040158077_))
                                                (___match158494158495_
                                                 _e158021158140_
                                                 _hd158020158143_
                                                 _tl158019158145_
                                                 _e158024158148_
                                                 _hd158023158151_
                                                 _tl158022158153_
                                                 ___splice158445158446_
                                                 _target158038158075_
                                                 _tl158040158077_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g158016158054_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g158016158054_))))))
                            (let () (declare (not safe)) (_g158016158054_)))))
                    (let () (declare (not safe)) (_g158016158054_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_self157563_ _stx157564_)
        (let* ((___stx158497158498_ _stx157564_)
               (_g157568157670_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx158497158498_)))))
          (let ((___kont158499158500_
                 (lambda (_L157960_ _L157961_ _L157962_ _L157963_ _L157964_)
                   (let ((__tmp158781
                          (let ((__tmp158788
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L157963_)))
                                (__tmp158782
                                 (let ((__tmp158787
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L157962_)))
                                       (__tmp158783
                                        (let ((__tmp158786
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L157961_)))
                                              (__tmp158784
                                               (let ((__tmp158785
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L157960_))))
                                                 (declare (not safe))
                                                 (cons __tmp158785 '()))))
                                          (declare (not safe))
                                          (cons __tmp158786 __tmp158784))))
                                   (declare (not safe))
                                   (cons __tmp158787 __tmp158783))))
                            (declare (not safe))
                            (cons __tmp158788 __tmp158782))))
                     (declare (not safe))
                     (cons 'declare-method __tmp158781))))
                (___kont158501158502_
                 (lambda (_L157786_ _L157787_ _L157788_ _L157789_)
                   (let ((__tmp158789
                          (let ((__tmp158795
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L157788_)))
                                (__tmp158790
                                 (let ((__tmp158794
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L157787_)))
                                       (__tmp158791
                                        (let ((__tmp158793
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L157786_)))
                                              (__tmp158792
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '#f '()))))
                                          (declare (not safe))
                                          (cons __tmp158793 __tmp158792))))
                                   (declare (not safe))
                                   (cons __tmp158794 __tmp158791))))
                            (declare (not safe))
                            (cons __tmp158795 __tmp158790))))
                     (declare (not safe))
                     (cons 'declare-method __tmp158789))))
                (___kont158503158504_ (lambda () '(begin))))
            (let ((___match158632158633_
                   (lambda (_e157577157832_
                            _hd157576157835_
                            _tl157575157837_
                            _e157580157840_
                            _hd157579157843_
                            _tl157578157845_
                            _e157583157848_
                            _hd157582157851_
                            _tl157581157853_
                            _e157586157856_
                            _hd157585157859_
                            _tl157584157861_
                            _e157589157864_
                            _hd157588157867_
                            _tl157587157869_
                            _e157592157872_
                            _hd157591157875_
                            _tl157590157877_
                            _e157595157880_
                            _hd157594157883_
                            _tl157593157885_
                            _e157598157888_
                            _hd157597157891_
                            _tl157596157893_
                            _e157601157896_
                            _hd157600157899_
                            _tl157599157901_
                            _e157604157904_
                            _hd157603157907_
                            _tl157602157909_
                            _e157607157912_
                            _hd157606157915_
                            _tl157605157917_
                            _e157610157920_
                            _hd157609157923_
                            _tl157608157925_
                            _e157613157928_
                            _hd157612157931_
                            _tl157611157933_
                            _e157616157936_
                            _hd157615157939_
                            _tl157614157941_
                            _e157619157944_
                            _hd157618157947_
                            _tl157617157949_
                            _e157622157952_
                            _hd157621157955_
                            _tl157620157957_)
                     (let ((_L157960_ _hd157621157955_)
                           (_L157961_ _hd157612157931_)
                           (_L157962_ _hd157603157907_)
                           (_L157963_ _hd157594157883_)
                           (_L157964_ _hd157585157859_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L157964_
                              'bind-method!))
                           (___kont158499158500_
                            _L157960_
                            _L157961_
                            _L157962_
                            _L157963_
                            _L157964_)
                           (___kont158503158504_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx158497158498_))
                  (let ((_e157577157832_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx158497158498_))))
                    (let ((_tl157575157837_
                           (let ()
                             (declare (not safe))
                             (##cdr _e157577157832_)))
                          (_hd157576157835_
                           (let ()
                             (declare (not safe))
                             (##car _e157577157832_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl157575157837_))
                          (let ((_e157580157840_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl157575157837_))))
                            (let ((_tl157578157845_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e157580157840_)))
                                  (_hd157579157843_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e157580157840_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd157579157843_))
                                  (let ((_e157583157848_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd157579157843_))))
                                    (let ((_tl157581157853_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e157583157848_)))
                                          (_hd157582157851_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e157583157848_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd157582157851_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd157582157851_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl157581157853_))
                                                  (let ((_e157586157856_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl157581157853_))))
                                                    (let ((_tl157584157861_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e157586157856_)))
                                                          (_hd157585157859_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e157586157856_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl157584157861_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl157578157845_))
                      (let ((_e157589157864_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl157578157845_))))
                        (let ((_tl157587157869_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e157589157864_)))
                              (_hd157588157867_
                               (let ()
                                 (declare (not safe))
                                 (##car _e157589157864_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd157588157867_))
                              (let ((_e157592157872_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd157588157867_))))
                                (let ((_tl157590157877_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e157592157872_)))
                                      (_hd157591157875_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e157592157872_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd157591157875_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd157591157875_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl157590157877_))
                                              (let ((_e157595157880_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl157590157877_))))
                                                (let ((_tl157593157885_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e157595157880_)))
                                                      (_hd157594157883_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e157595157880_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl157593157885_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl157587157869_))
                                                          (let ((_e157598157888_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl157587157869_))))
                    (let ((_tl157596157893_
                           (let ()
                             (declare (not safe))
                             (##cdr _e157598157888_)))
                          (_hd157597157891_
                           (let ()
                             (declare (not safe))
                             (##car _e157598157888_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd157597157891_))
                          (let ((_e157601157896_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd157597157891_))))
                            (let ((_tl157599157901_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e157601157896_)))
                                  (_hd157600157899_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e157601157896_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd157600157899_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd157600157899_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl157599157901_))
                                          (let ((_e157604157904_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl157599157901_))))
                                            (let ((_tl157602157909_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e157604157904_)))
                                                  (_hd157603157907_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e157604157904_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl157602157909_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl157596157893_))
                                                      (let ((_e157607157912_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl157596157893_))))
                (let ((_tl157605157917_
                       (let () (declare (not safe)) (##cdr _e157607157912_)))
                      (_hd157606157915_
                       (let () (declare (not safe)) (##car _e157607157912_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd157606157915_))
                      (let ((_e157610157920_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd157606157915_))))
                        (let ((_tl157608157925_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e157610157920_)))
                              (_hd157609157923_
                               (let ()
                                 (declare (not safe))
                                 (##car _e157610157920_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd157609157923_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd157609157923_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl157608157925_))
                                      (let ((_e157613157928_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl157608157925_))))
                                        (let ((_tl157611157933_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e157613157928_)))
                                              (_hd157612157931_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e157613157928_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl157611157933_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl157605157917_))
                                                  (let ((_e157616157936_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl157605157917_))))
                                                    (let ((_tl157614157941_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e157616157936_)))
                                                          (_hd157615157939_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e157616157936_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd157615157939_))
                                                          (let ((_e157619157944_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd157615157939_))))
                    (let ((_tl157617157949_
                           (let ()
                             (declare (not safe))
                             (##cdr _e157619157944_)))
                          (_hd157618157947_
                           (let ()
                             (declare (not safe))
                             (##car _e157619157944_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd157618157947_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd157618157947_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl157617157949_))
                                  (let ((_e157622157952_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl157617157949_))))
                                    (let ((_tl157620157957_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e157622157952_)))
                                          (_hd157621157955_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e157622157952_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl157620157957_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl157614157941_))
                                              (___match158632158633_
                                               _e157577157832_
                                               _hd157576157835_
                                               _tl157575157837_
                                               _e157580157840_
                                               _hd157579157843_
                                               _tl157578157845_
                                               _e157583157848_
                                               _hd157582157851_
                                               _tl157581157853_
                                               _e157586157856_
                                               _hd157585157859_
                                               _tl157584157861_
                                               _e157589157864_
                                               _hd157588157867_
                                               _tl157587157869_
                                               _e157592157872_
                                               _hd157591157875_
                                               _tl157590157877_
                                               _e157595157880_
                                               _hd157594157883_
                                               _tl157593157885_
                                               _e157598157888_
                                               _hd157597157891_
                                               _tl157596157893_
                                               _e157601157896_
                                               _hd157600157899_
                                               _tl157599157901_
                                               _e157604157904_
                                               _hd157603157907_
                                               _tl157602157909_
                                               _e157607157912_
                                               _hd157606157915_
                                               _tl157605157917_
                                               _e157610157920_
                                               _hd157609157923_
                                               _tl157608157925_
                                               _e157613157928_
                                               _hd157612157931_
                                               _tl157611157933_
                                               _e157616157936_
                                               _hd157615157939_
                                               _tl157614157941_
                                               _e157619157944_
                                               _hd157618157947_
                                               _tl157617157949_
                                               _e157622157952_
                                               _hd157621157955_
                                               _tl157620157957_)
                                              (___kont158503158504_))
                                          (___kont158503158504_))))
                                  (___kont158503158504_))
                              (___kont158503158504_))
                          (___kont158503158504_))))
                  (___kont158503158504_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl157605157917_))
                                                      (if (let ((__tmp158796
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp158796 'bind-method!))
                  (let ((_L157786_ _hd157612157931_)
                        (_L157787_ _hd157603157907_)
                        (_L157788_ _hd157594157883_)
                        (_L157789_ _hd157585157859_))
                    (___kont158501158502_
                     _L157786_
                     _L157787_
                     _L157788_
                     _L157789_))
                  (___kont158503158504_))
              (___kont158503158504_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont158503158504_))))
                                      (___kont158503158504_))
                                  (___kont158503158504_))
                              (___kont158503158504_))))
                      (___kont158503158504_))))
              (___kont158503158504_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont158503158504_))))
                                          (___kont158503158504_))
                                      (___kont158503158504_))
                                  (___kont158503158504_))))
                          (___kont158503158504_))))
                  (___kont158503158504_))
              (___kont158503158504_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont158503158504_))
                                          (___kont158503158504_))
                                      (___kont158503158504_))))
                              (___kont158503158504_))))
                      (___kont158503158504_))
                  (___kont158503158504_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont158503158504_))
                                              (___kont158503158504_))
                                          (___kont158503158504_))))
                                  (___kont158503158504_))))
                          (___kont158503158504_))))
                  (___kont158503158504_)))))))
    (define gxc#!alias::typedecl
      (lambda (_self157539_)
        (let* ((_self157540157546_ _self157539_)
               (_E157542157550_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self157540157546_))))
               (_K157543157555_
                (lambda (_alias-id157553_)
                  (let ((__tmp158797
                         (let ()
                           (declare (not safe))
                           (cons _alias-id157553_ '()))))
                    (declare (not safe))
                    (cons '@alias __tmp158797)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self157540157546_ 'gxc#!alias::t))
              (let* ((_e157544157558_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157540157546_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_alias-id157561_ _e157544157558_))
                (declare (not safe))
                (_K157543157555_ _alias-id157561_))
              (let () (declare (not safe)) (_E157542157550_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_self157323_)
        (let* ((_self157324157340_ _self157323_)
               (_E157326157344_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self157324157340_))))
               (_K157327157359_
                (lambda (_methods157347_
                         _metaclass157348_
                         _system?157349_
                         _final?157350_
                         _struct?157351_
                         _constructor157352_
                         _fields157353_
                         _slots157354_
                         _precendence-list157355_
                         _super157356_
                         _id157357_)
                  (let ((__tmp158798
                         (let ((__tmp158799
                                (let ((__tmp158800
                                       (let ((__tmp158801
                                              (let ((__tmp158802
                                                     (let ((__tmp158803
                                                            (let ((__tmp158804
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp158805
                                  (let ((__tmp158806
                                         (let ((__tmp158807
                                                (let ((__tmp158808
                                                       (let ((__tmp158809
                                                              (if _methods157347_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (hash->list _methods157347_))
                          '#f)))
                 (declare (not safe))
                 (cons __tmp158809 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _metaclass157348_
                                                        __tmp158808))))
                                           (declare (not safe))
                                           (cons _system?157349_
                                                 __tmp158807))))
                                    (declare (not safe))
                                    (cons _final?157350_ __tmp158806))))
                             (declare (not safe))
                             (cons _struct?157351_ __tmp158805))))
                      (declare (not safe))
                      (cons _constructor157352_ __tmp158804))))
               (declare (not safe))
               (cons _fields157353_ __tmp158803))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _slots157354_
                                                      __tmp158802))))
                                         (declare (not safe))
                                         (cons _precendence-list157355_
                                               __tmp158801))))
                                  (declare (not safe))
                                  (cons _super157356_ __tmp158800))))
                           (declare (not safe))
                           (cons _id157357_ __tmp158799))))
                    (declare (not safe))
                    (cons '@class __tmp158798)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self157324157340_ 'gxc#!class::t))
              (let* ((_e157328157362_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157324157340_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_id157365_ _e157328157362_)
                     (_e157329157367_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157324157340_
                         '2
                         gxc#!class::t
                         '#f)))
                     (_super157370_ _e157329157367_)
                     (_e157330157372_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157324157340_
                         '3
                         gxc#!class::t
                         '#f)))
                     (_precendence-list157375_ _e157330157372_)
                     (_e157331157377_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157324157340_
                         '4
                         gxc#!class::t
                         '#f)))
                     (_slots157380_ _e157331157377_)
                     (_e157332157382_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157324157340_
                         '5
                         gxc#!class::t
                         '#f)))
                     (_fields157385_ _e157332157382_)
                     (_e157333157387_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157324157340_
                         '6
                         gxc#!class::t
                         '#f)))
                     (_constructor157390_ _e157333157387_)
                     (_e157334157392_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157324157340_
                         '7
                         gxc#!class::t
                         '#f)))
                     (_struct?157395_ _e157334157392_)
                     (_e157335157397_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157324157340_
                         '8
                         gxc#!class::t
                         '#f)))
                     (_final?157400_ _e157335157397_)
                     (_e157336157402_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157324157340_
                         '9
                         gxc#!class::t
                         '#f)))
                     (_system?157405_ _e157336157402_)
                     (_e157337157407_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157324157340_
                         '10
                         gxc#!class::t
                         '#f)))
                     (_metaclass157410_ _e157337157407_)
                     (_e157338157412_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157324157340_
                         '11
                         gxc#!class::t
                         '#f)))
                     (_methods157415_ _e157338157412_))
                (declare (not safe))
                (_K157327157359_
                 _methods157415_
                 _metaclass157410_
                 _system?157405_
                 _final?157400_
                 _struct?157395_
                 _constructor157390_
                 _fields157385_
                 _slots157380_
                 _precendence-list157375_
                 _super157370_
                 _id157365_))
              (let () (declare (not safe)) (_E157326157344_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_self157177_)
        (let* ((_self157178157184_ _self157177_)
               (_E157180157188_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self157178157184_))))
               (_K157181157193_
                (lambda (_klass-id157191_)
                  (let ((__tmp158810
                         (let ()
                           (declare (not safe))
                           (cons _klass-id157191_ '()))))
                    (declare (not safe))
                    (cons '@predicate __tmp158810)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self157178157184_
                 'gxc#!predicate::t))
              (let* ((_e157182157196_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157178157184_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id157199_ _e157182157196_))
                (declare (not safe))
                (_K157181157193_ _klass-id157199_))
              (let () (declare (not safe)) (_E157180157188_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_self157031_)
        (let* ((_self157032157038_ _self157031_)
               (_E157034157042_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self157032157038_))))
               (_K157035157047_
                (lambda (_klass-id157045_)
                  (let ((__tmp158811
                         (let ()
                           (declare (not safe))
                           (cons _klass-id157045_ '()))))
                    (declare (not safe))
                    (cons '@constructor __tmp158811)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self157032157038_
                 'gxc#!constructor::t))
              (let* ((_e157036157050_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157032157038_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id157053_ _e157036157050_))
                (declare (not safe))
                (_K157035157047_ _klass-id157053_))
              (let () (declare (not safe)) (_E157034157042_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_self156871_)
        (let* ((_self156872156880_ _self156871_)
               (_E156874156884_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self156872156880_))))
               (_K156875156891_
                (lambda (_checked?156887_ _slot156888_ _klass-id156889_)
                  (let ((__tmp158812
                         (let ((__tmp158813
                                (let ((__tmp158814
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?156887_ '()))))
                                  (declare (not safe))
                                  (cons _slot156888_ __tmp158814))))
                           (declare (not safe))
                           (cons _klass-id156889_ __tmp158813))))
                    (declare (not safe))
                    (cons '@accessor __tmp158812)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self156872156880_
                 'gxc#!accessor::t))
              (let* ((_e156876156894_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156872156880_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id156897_ _e156876156894_)
                     (_e156877156899_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156872156880_
                         '2
                         gxc#!accessor::t
                         '#f)))
                     (_slot156902_ _e156877156899_)
                     (_e156878156904_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156872156880_
                         '3
                         gxc#!accessor::t
                         '#f)))
                     (_checked?156907_ _e156878156904_))
                (declare (not safe))
                (_K156875156891_
                 _checked?156907_
                 _slot156902_
                 _klass-id156897_))
              (let () (declare (not safe)) (_E156874156884_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_self156711_)
        (let* ((_self156712156720_ _self156711_)
               (_E156714156724_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self156712156720_))))
               (_K156715156731_
                (lambda (_checked?156727_ _slot156728_ _klass-id156729_)
                  (let ((__tmp158815
                         (let ((__tmp158816
                                (let ((__tmp158817
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?156727_ '()))))
                                  (declare (not safe))
                                  (cons _slot156728_ __tmp158817))))
                           (declare (not safe))
                           (cons _klass-id156729_ __tmp158816))))
                    (declare (not safe))
                    (cons '@mutator __tmp158815)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self156712156720_ 'gxc#!mutator::t))
              (let* ((_e156716156734_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156712156720_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id156737_ _e156716156734_)
                     (_e156717156739_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156712156720_
                         '2
                         gxc#!mutator::t
                         '#f)))
                     (_slot156742_ _e156717156739_)
                     (_e156718156744_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156712156720_
                         '3
                         gxc#!mutator::t
                         '#f)))
                     (_checked?156747_ _e156718156744_))
                (declare (not safe))
                (_K156715156731_
                 _checked?156747_
                 _slot156742_
                 _klass-id156737_))
              (let () (declare (not safe)) (_E156714156724_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!lambda::typedecl
      (lambda (_self156537_)
        (let* ((_self156538156548_ _self156537_)
               (_E156540156552_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self156538156548_))))
               (_K156541156563_
                (lambda (_typedecl156555_
                         _inline156556_
                         _dispatch156557_
                         _arity156558_)
                  (if _inline156556_
                      (let ((_$e156560_ _typedecl156555_))
                        (if _$e156560_
                            _$e156560_
                            (let ()
                              (declare (not safe))
                              (error '"Cannot generate typedecl for inline rules"))))
                      (let ((__tmp158818
                             (let ((__tmp158819
                                    (let ()
                                      (declare (not safe))
                                      (cons _dispatch156557_ '()))))
                               (declare (not safe))
                               (cons _arity156558_ __tmp158819))))
                        (declare (not safe))
                        (cons '@lambda __tmp158818))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self156538156548_ 'gxc#!lambda::t))
              (let* ((_e156542156566_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156538156548_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e156543156569_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156538156548_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity156572_ _e156543156569_)
                     (_e156544156574_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156538156548_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch156577_ _e156544156574_)
                     (_e156545156579_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156538156548_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline156582_ _e156545156579_)
                     (_e156546156584_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156538156548_
                         '5
                         gxc#!lambda::t
                         '#f)))
                     (_typedecl156587_ _e156546156584_))
                (declare (not safe))
                (_K156541156563_
                 _typedecl156587_
                 _inline156582_
                 _dispatch156577_
                 _arity156572_))
              (let () (declare (not safe)) (_E156540156552_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_self156348_)
        (letrec ((_clause-e156350_
                  (lambda (_clause156380_)
                    (let* ((_clause156381156389_ _clause156380_)
                           (_E156383156393_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _clause156381156389_))))
                           (_K156384156399_
                            (lambda (_dispatch156396_ _arity156397_)
                              (let ((__tmp158820
                                     (let ()
                                       (declare (not safe))
                                       (cons _dispatch156396_ '()))))
                                (declare (not safe))
                                (cons _arity156397_ __tmp158820)))))
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _clause156381156389_
                             'gxc#!lambda::t))
                          (let* ((_e156385156402_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause156381156389_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                                 (_e156386156405_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause156381156389_
                                     '2
                                     gxc#!lambda::t
                                     '#f)))
                                 (_arity156408_ _e156386156405_)
                                 (_e156387156410_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause156381156389_
                                     '3
                                     gxc#!lambda::t
                                     '#f)))
                                 (_dispatch156413_ _e156387156410_))
                            (declare (not safe))
                            (_K156384156399_ _dispatch156413_ _arity156408_))
                          (let () (declare (not safe)) (_E156383156393_)))))))
          (let* ((_self156351156358_ _self156348_)
                 (_E156353156362_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching" _self156351156358_))))
                 (_K156354156369_
                  (lambda (_clauses156365_)
                    (let ((_clauses156367_
                           (map _clause-e156350_ _clauses156365_)))
                      (declare (not safe))
                      (cons '@case-lambda _clauses156367_)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of?
                   _self156351156358_
                   'gxc#!case-lambda::t))
                (let* ((_e156355156372_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self156351156358_
                           '1
                           gxc#!type::t
                           '#f)))
                       (_e156356156375_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self156351156358_
                           '2
                           gxc#!case-lambda::t
                           '#f)))
                       (_clauses156378_ _e156356156375_))
                  (declare (not safe))
                  (_K156354156369_ _clauses156378_))
                (let () (declare (not safe)) (_E156353156362_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_self156191_)
        (let* ((_self156192156200_ _self156191_)
               (_E156194156204_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self156192156200_))))
               (_K156195156210_
                (lambda (_dispatch156207_ _table156208_)
                  (let ((__tmp158821
                         (let ((__tmp158822
                                (let ()
                                  (declare (not safe))
                                  (cons _dispatch156207_ '()))))
                           (declare (not safe))
                           (cons _table156208_ __tmp158822))))
                    (declare (not safe))
                    (cons '@kw-lambda __tmp158821)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self156192156200_
                 'gxc#!kw-lambda::t))
              (let* ((_e156196156213_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156192156200_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e156197156216_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156192156200_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table156219_ _e156197156216_)
                     (_e156198156221_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156192156200_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch156224_ _e156198156221_))
                (declare (not safe))
                (_K156195156210_ _dispatch156224_ _table156219_))
              (let () (declare (not safe)) (_E156194156204_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda::t
       'typedecl
       gxc#!kw-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_self156034_)
        (let* ((_self156035156043_ _self156034_)
               (_E156037156047_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self156035156043_))))
               (_K156038156053_
                (lambda (_main156050_ _keys156051_)
                  (let ((__tmp158823
                         (let ((__tmp158824
                                (let ()
                                  (declare (not safe))
                                  (cons _main156050_ '()))))
                           (declare (not safe))
                           (cons _keys156051_ __tmp158824))))
                    (declare (not safe))
                    (cons '@kw-lambda-dispatch __tmp158823)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self156035156043_
                 'gxc#!kw-lambda-primary::t))
              (let* ((_e156039156056_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156035156043_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e156040156059_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156035156043_
                         '2
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_keys156062_ _e156040156059_)
                     (_e156041156064_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156035156043_
                         '3
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_main156067_ _e156041156064_))
                (declare (not safe))
                (_K156038156053_ _main156067_ _keys156062_))
              (let () (declare (not safe)) (_E156037156047_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))))
