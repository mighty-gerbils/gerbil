(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1710694214)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (gxc#current-compile-optimizer-info)
            '#!void
            (gxc#current-compile-optimizer-info
             (let ((__obj155721
                    (let ()
                      (declare (not safe))
                      (##structure gxc#optimizer-info::t '#f '#f '#f))))
               (gxc#optimizer-info:::init! __obj155721)
               __obj155721)))))
    (define gxc#optimize!
      (lambda (_ctx155414_)
        (let ((__tmp155727
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _ctx155414_))
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-builtin-ssxi _ctx155414_))
                 (let ((__tmp155729
                        (##structure-ref
                         (gxc#current-compile-optimizer-info)
                         '2
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp155728
                        (##structure-ref
                         _ctx155414_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp155729 __tmp155728 '#t))
                 (let ((_code155417_
                        (let ((__tmp155730
                               (##structure-ref
                                _ctx155414_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp155730))))
                   (##structure-set!
                    _ctx155414_
                    _code155417_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp155726 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp155725 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters
           __tmp155727
           gxc#current-compile-mutators
           __tmp155726
           gxc#current-compile-local-type
           __tmp155725))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_ctx155403_)
        (letrec ((_load-it!155405_
                  (lambda (_id155412_)
                    (if (let ((__tmp155731
                               (##structure-ref
                                (gxc#current-compile-optimizer-info)
                                '2
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp155731 _id155412_))
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-import-ssxi-by-id _id155412_))
                          (let ((__tmp155732
                                 (##structure-ref
                                  (gxc#current-compile-optimizer-info)
                                  '2
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp155732 _id155412_ '#t)))))))
          (let* ((_modid155407_
                  (##structure-ref _ctx155403_ '1 gx#expander-context::t '#f))
                 (_modid-str155409_ (symbol->string _modid155407_)))
            (if (let ()
                  (declare (not safe))
                  (string-prefix? '"gerbil/core" _modid-str155409_))
                (let ()
                  (declare (not safe))
                  (_load-it!155405_ 'gerbil/builtin))
                (for-each
                 _load-it!155405_
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
                   gerbil/builtin)))))))
    (define gxc#optimizer-load-ssxi-deps
      (lambda (_ctx155348_)
        (letrec* ((_deps155350_
                   (let* ((_imports155394_
                           (##structure-ref
                            _ctx155348_
                            '8
                            gx#module-context::t
                            '#f))
                          (_$e155396_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _ctx155348_))))
                     (if _$e155396_
                         ((lambda (_g155398155400_)
                            (let ()
                              (declare (not safe))
                              (cons _g155398155400_ _imports155394_)))
                          _$e155396_)
                         _imports155394_))))
          (let _lp155352_ ((_rest155354_ _deps155350_))
            (let* ((_rest155355155363_ _rest155354_)
                   (_else155357155371_ (lambda () '#!void))
                   (_K155359155382_
                    (lambda (_rest155374_ _hd155375_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _hd155375_
                             'gx#module-context::t))
                          (begin
                            (if (let ((__tmp155734
                                       (##structure-ref
                                        (gxc#current-compile-optimizer-info)
                                        '2
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp155733
                                       (##structure-ref
                                        _hd155375_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (hash-get __tmp155734 __tmp155733))
                                '#!void
                                (begin
                                  (let ((_$e155377_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _hd155375_))))
                                    (if _$e155377_
                                        ((lambda (_pre155380_)
                                           (let ((__tmp155735
                                                  (let ((__tmp155736
                                                         (##structure-ref
                                                          _hd155375_
                                                          '8
                                                          gx#module-context::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (cons _pre155380_
                                                          __tmp155736))))
                                             (declare (not safe))
                                             (_lp155352_ __tmp155735)))
                                         _$e155377_)
                                        (let ((__tmp155737
                                               (##structure-ref
                                                _hd155375_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                          (declare (not safe))
                                          (_lp155352_ __tmp155737))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _hd155375_))))
                            (let ()
                              (declare (not safe))
                              (_lp155352_ _rest155374_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _hd155375_
                                 'gx#prelude-context::t))
                              (begin
                                (if (let ((__tmp155739
                                           (##structure-ref
                                            (gxc#current-compile-optimizer-info)
                                            '2
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp155738
                                           (##structure-ref
                                            _hd155375_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (hash-get __tmp155739 __tmp155738))
                                    '#!void
                                    (begin
                                      (let ((__tmp155740
                                             (##structure-ref
                                              _hd155375_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_lp155352_ __tmp155740))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi _hd155375_))))
                                (let ()
                                  (declare (not safe))
                                  (_lp155352_ _rest155374_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _hd155375_
                                     'gx#module-import::t))
                                  (let ((__tmp155741
                                         (let ((__tmp155742
                                                (##direct-structure-ref
                                                 _hd155375_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp155742 _rest155374_))))
                                    (declare (not safe))
                                    (_lp155352_ __tmp155741))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _hd155375_
                                         'gx#module-export::t))
                                      (let ((__tmp155743
                                             (let ((__tmp155744
                                                    (##direct-structure-ref
                                                     _hd155375_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp155744
                                                     _rest155374_))))
                                        (declare (not safe))
                                        (_lp155352_ __tmp155743))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _hd155375_
                                             'gx#import-set::t))
                                          (let ((__tmp155745
                                                 (let ((__tmp155746
                                                        (##direct-structure-ref
                                                         _hd155375_
                                                         '1
                                                         gx#import-set::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp155746
                                                         _rest155374_))))
                                            (declare (not safe))
                                            (_lp155352_ __tmp155745))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _hd155375_))))))))))
              (if (let () (declare (not safe)) (##pair? _rest155355155363_))
                  (let ((_hd155360155385_
                         (let ()
                           (declare (not safe))
                           (##car _rest155355155363_)))
                        (_tl155361155387_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest155355155363_))))
                    (let* ((_hd155390_ _hd155360155385_)
                           (_rest155392_ _tl155361155387_))
                      (declare (not safe))
                      (_K155359155382_ _rest155392_ _hd155390_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_ctx155328_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _ctx155328_
                    'gx#module-context::t))
                 (let ((__tmp155747
                        (##structure-ref
                         _ctx155328_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp155747)))
            '#!void
            (let* ((_ht155330_
                    (##structure-ref
                     (gxc#current-compile-optimizer-info)
                     '2
                     gxc#optimizer-info::t
                     '#f))
                   (_id155332_
                    (##structure-ref
                     _ctx155328_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_mod155334_
                    (let ()
                      (declare (not safe))
                      (hash-get _ht155330_ _id155332_))))
              (let ((_$e155337_ _mod155334_))
                (if _$e155337_
                    _$e155337_
                    (let* ((_mod155340_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-import-ssxi _ctx155328_)))
                           (_val155345_
                            (let ((_$e155342_ _mod155340_))
                              (if _$e155342_ _$e155342_ '#!void))))
                      (let ()
                        (declare (not safe))
                        (hash-put! _ht155330_ _id155332_ _val155345_))
                      _val155345_)))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_ctx155326_)
        (if (##structure-ref _ctx155326_ '1 gx#expander-context::t '#f)
            (let ((__tmp155748
                   (##structure-ref
                    _ctx155326_
                    '1
                    gx#expander-context::t
                    '#f)))
              (declare (not safe))
              (gxc#optimizer-import-ssxi-by-id __tmp155748))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_id155303_)
        (letrec ((_catch-e155305_
                  (lambda (_exn155324_)
                    (if (gxc#current-compile-verbose)
                        (begin
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"Failed to load ssxi module for "
                             _id155303_))
                          (display-exception _exn155324_))
                        '#!void)
                    '#f))
                 (_import-e155306_
                  (lambda ()
                    (let* ((_str-id155309_
                            (string-append
                             (let ()
                               (declare (not safe))
                               (gxc#module-id->path-string _id155303_))
                             '".ssxi"))
                           (_artefact-path155317_
                            (let ((_odir155310155312_
                                   (gxc#current-compile-output-dir)))
                              (if _odir155310155312_
                                  (let ((_odir155315_ _odir155310155312_))
                                    (path-expand
                                     (string-append _str-id155309_ '".ss")
                                     _odir155315_))
                                  '#f)))
                           (_library-path155319_
                            (string->symbol
                             (string-append '":" _str-id155309_ '".ss")))
                           (_ssxi-path155321_
                            (if (and _artefact-path155317_
                                     (file-exists? _artefact-path155317_))
                                _artefact-path155317_
                                _library-path155319_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _ssxi-path155321_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _ssxi-path155321_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (with-catch _catch-e155305_ _import-e155306_)))))
    (define gxc#optimize-source
      (lambda (_stx155294_)
        (let () (declare (not safe)) (gxc#apply-collect-mutators _stx155294_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _stx155294_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _stx155294_))
        (let* ((_stx155296_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _stx155294_)))
               (_stx155298_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _stx155296_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _stx155298_))
          (let ((_stx155301_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _stx155298_))))
            (declare (not safe))
            (gxc#apply-optimize-call _stx155301_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp155751 (list gxc#::generate-runtime-empty::t))
            (__tmp155749
             (let ((__tmp155750
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp155750 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp155751
         '()
         __tmp155749
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _$args155291_
        (apply make-instance gxc#::generate-ssxi::t _$args155291_)))
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
      (lambda (_stx155283_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_self155286_
                (let ((__obj155723
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj155723))
               (__tmp155752
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self155286_ _stx155283_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp155752
           gxc#current-compile-method
           _self155286_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_self155243_ _stx155244_)
        (let* ((_g155246155256_
                (lambda (_g155247155253_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g155247155253_))))
               (_g155245155280_
                (lambda (_g155247155259_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g155247155259_))
                      (let ((_e155249155261_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g155247155259_))))
                        (let ((_hd155250155264_
                               (let ()
                                 (declare (not safe))
                                 (##car _e155249155261_)))
                              (_tl155251155266_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e155249155261_))))
                          ((lambda (_L155269_)
                             (let ((__tmp155755
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _self155243_
                                         _stx155244_))))
                                   (__tmp155753
                                    (let ((__tmp155754
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp155754 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp155755
                                gx#current-expander-phi
                                __tmp155753)))
                           _tl155251155266_)))
                      (let ()
                        (declare (not safe))
                        (_g155246155256_ _g155247155259_))))))
          (declare (not safe))
          (_g155245155280_ _stx155244_))))
    (define gxc#generate-ssxi-module%
      (lambda (_self155182_ _stx155183_)
        (let* ((_g155185155199_
                (lambda (_g155186155196_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g155186155196_))))
               (_g155184155240_
                (lambda (_g155186155202_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g155186155202_))
                      (let ((_e155189155204_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g155186155202_))))
                        (let ((_hd155190155207_
                               (let ()
                                 (declare (not safe))
                                 (##car _e155189155204_)))
                              (_tl155191155209_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e155189155204_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl155191155209_))
                              (let ((_e155192155212_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl155191155209_))))
                                (let ((_hd155193155215_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e155192155212_)))
                                      (_tl155194155217_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e155192155212_))))
                                  ((lambda (_L155220_ _L155221_)
                                     (let* ((_ctx155234_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L155221_)))
                                            (_code155236_
                                             (##structure-ref
                                              _ctx155234_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp155756
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self155182_
                                                   _code155236_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp155756
                                          gx#current-expander-context
                                          _ctx155234_))))
                                   _tl155194155217_
                                   _hd155193155215_)))
                              (let ()
                                (declare (not safe))
                                (_g155185155199_ _g155186155202_)))))
                      (let ()
                        (declare (not safe))
                        (_g155185155199_ _g155186155202_))))))
          (declare (not safe))
          (_g155184155240_ _stx155183_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_self154991_ _stx154992_)
        (letrec ((_generate-e154994_
                  (lambda (_id155171_)
                    (let* ((_sym155173_
                            (if (let ((__tmp155757
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp155757))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _id155171_))
                                '#f))
                           (_$e155175_
                            (if _sym155173_
                                (let ()
                                  (declare (not safe))
                                  (gxc#optimizer-lookup-type _sym155173_))
                                '#f)))
                      (if _$e155175_
                          ((lambda (_type155178_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"generate typedecl " _sym155173_))
                             (let* ((_typedecl155180_
                                     (let ((__method155724
                                            (let ()
                                              (declare (not safe))
                                              (method-ref
                                               _type155178_
                                               'typedecl))))
                                       (if __method155724
                                           (__method155724 _type155178_)
                                           (let ()
                                             (declare (not safe))
                                             (error '"Missing method"
                                                    _type155178_
                                                    'typedecl)))))
                                    (__tmp155758
                                     (let ((__tmp155759
                                            (let ()
                                              (declare (not safe))
                                              (cons _typedecl155180_ '()))))
                                       (declare (not safe))
                                       (cons _sym155173_ __tmp155759))))
                               (declare (not safe))
                               (cons 'declare-type __tmp155758)))
                           _$e155175_)
                          '(begin))))))
          (let* ((___stx155420155421_ _stx154992_)
                 (_g154997155035_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx155420155421_)))))
            (let ((___kont155422155423_
                   (lambda (_L155153_)
                     (let ()
                       (declare (not safe))
                       (_generate-e154994_ _L155153_))))
                  (___kont155424155425_
                   (lambda (_L155088_)
                     (let ((_types155114_
                            (map _generate-e154994_
                                 (let ((__tmp155760
                                        (lambda (_g155106155109_
                                                 _g155107155111_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g155106155109_
                                                  _g155107155111_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp155760 '() _L155088_)))))
                       (declare (not safe))
                       (cons 'begin _types155114_)))))
              (let ((___match155475155476_
                     (lambda (_e155013155040_
                              _hd155014155043_
                              _tl155015155045_
                              _e155016155048_
                              _hd155017155051_
                              _tl155018155053_
                              ___splice155426155427_
                              _target155019155056_
                              _tl155021155058_)
                       (letrec ((_loop155022155061_
                                 (lambda (_hd155020155064_ _id155026155066_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd155020155064_))
                                       (let ((_e155023155069_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd155020155064_))))
                                         (let ((_lp-tl155025155074_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e155023155069_)))
                                               (_lp-hd155024155072_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e155023155069_))))
                                           (let ((__tmp155761
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd155024155072_
                                                          _id155026155066_))))
                                             (declare (not safe))
                                             (_loop155022155061_
                                              _lp-tl155025155074_
                                              __tmp155761))))
                                       (let ((_id155027155077_
                                              (reverse _id155026155066_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl155018155053_))
                                             (let ((_e155028155080_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl155018155053_))))
                                               (let ((_tl155030155085_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e155028155080_)))
                                                     (_hd155029155083_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e155028155080_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl155030155085_))
                                                     (___kont155424155425_
                                                      _id155027155077_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g154997155035_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g154997155035_))))))))
                         (let ()
                           (declare (not safe))
                           (_loop155022155061_ _target155019155056_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx155420155421_))
                    (let ((_e155000155121_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx155420155421_))))
                      (let ((_tl155002155126_
                             (let ()
                               (declare (not safe))
                               (##cdr _e155000155121_)))
                            (_hd155001155124_
                             (let ()
                               (declare (not safe))
                               (##car _e155000155121_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl155002155126_))
                            (let ((_e155003155129_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl155002155126_))))
                              (let ((_tl155005155134_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e155003155129_)))
                                    (_hd155004155132_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e155003155129_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd155004155132_))
                                    (let ((_e155006155137_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd155004155132_))))
                                      (let ((_tl155008155142_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e155006155137_)))
                                            (_hd155007155140_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e155006155137_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl155008155142_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl155005155134_))
                                                (let ((_e155009155145_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl155005155134_))))
                                                  (let ((_tl155011155150_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e155009155145_)))
                                                        (_hd155010155148_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e155009155145_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl155011155150_))
                                                        (___kont155422155423_
                                                         _hd155007155140_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _hd155004155132_))
                                                            (let ((___splice155426155427_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _hd155004155132_ '0))))
                      (let ((_tl155021155058_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice155426155427_ '1)))
                            (_target155019155056_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice155426155427_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl155021155058_))
                            (___match155475155476_
                             _e155000155121_
                             _hd155001155124_
                             _tl155002155126_
                             _e155003155129_
                             _hd155004155132_
                             _tl155005155134_
                             ___splice155426155427_
                             _target155019155056_
                             _tl155021155058_)
                            (let () (declare (not safe)) (_g154997155035_)))))
                    (let () (declare (not safe)) (_g154997155035_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _hd155004155132_))
                                                    (let ((___splice155426155427_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _hd155004155132_
                                                              '0))))
                                                      (let ((_tl155021155058_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice155426155427_ '1)))
                    (_target155019155056_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice155426155427_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl155021155058_))
                    (___match155475155476_
                     _e155000155121_
                     _hd155001155124_
                     _tl155002155126_
                     _e155003155129_
                     _hd155004155132_
                     _tl155005155134_
                     ___splice155426155427_
                     _target155019155056_
                     _tl155021155058_)
                    (let () (declare (not safe)) (_g154997155035_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g154997155035_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _hd155004155132_))
                                                (let ((___splice155426155427_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _hd155004155132_
                                                          '0))))
                                                  (let ((_tl155021155058_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice155426155427_
                                                            '1)))
                                                        (_target155019155056_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice155426155427_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl155021155058_))
                                                        (___match155475155476_
                                                         _e155000155121_
                                                         _hd155001155124_
                                                         _tl155002155126_
                                                         _e155003155129_
                                                         _hd155004155132_
                                                         _tl155005155134_
                                                         ___splice155426155427_
                                                         _target155019155056_
                                                         _tl155021155058_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g154997155035_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g154997155035_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd155004155132_))
                                        (let ((___splice155426155427_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd155004155132_
                                                  '0))))
                                          (let ((_tl155021155058_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice155426155427_
                                                    '1)))
                                                (_target155019155056_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice155426155427_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl155021155058_))
                                                (___match155475155476_
                                                 _e155000155121_
                                                 _hd155001155124_
                                                 _tl155002155126_
                                                 _e155003155129_
                                                 _hd155004155132_
                                                 _tl155005155134_
                                                 ___splice155426155427_
                                                 _target155019155056_
                                                 _tl155021155058_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g154997155035_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g154997155035_))))))
                            (let () (declare (not safe)) (_g154997155035_)))))
                    (let () (declare (not safe)) (_g154997155035_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_self154544_ _stx154545_)
        (let* ((___stx155478155479_ _stx154545_)
               (_g154549154651_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx155478155479_)))))
          (let ((___kont155480155481_
                 (lambda (_L154941_ _L154942_ _L154943_ _L154944_ _L154945_)
                   (let ((__tmp155762
                          (let ((__tmp155769
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L154944_)))
                                (__tmp155763
                                 (let ((__tmp155768
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L154943_)))
                                       (__tmp155764
                                        (let ((__tmp155767
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L154942_)))
                                              (__tmp155765
                                               (let ((__tmp155766
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L154941_))))
                                                 (declare (not safe))
                                                 (cons __tmp155766 '()))))
                                          (declare (not safe))
                                          (cons __tmp155767 __tmp155765))))
                                   (declare (not safe))
                                   (cons __tmp155768 __tmp155764))))
                            (declare (not safe))
                            (cons __tmp155769 __tmp155763))))
                     (declare (not safe))
                     (cons 'declare-method __tmp155762))))
                (___kont155482155483_
                 (lambda (_L154767_ _L154768_ _L154769_ _L154770_)
                   (let ((__tmp155770
                          (let ((__tmp155776
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L154769_)))
                                (__tmp155771
                                 (let ((__tmp155775
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L154768_)))
                                       (__tmp155772
                                        (let ((__tmp155774
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L154767_)))
                                              (__tmp155773
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '#f '()))))
                                          (declare (not safe))
                                          (cons __tmp155774 __tmp155773))))
                                   (declare (not safe))
                                   (cons __tmp155775 __tmp155772))))
                            (declare (not safe))
                            (cons __tmp155776 __tmp155771))))
                     (declare (not safe))
                     (cons 'declare-method __tmp155770))))
                (___kont155484155485_ (lambda () '(begin))))
            (let ((___match155613155614_
                   (lambda (_e154556154813_
                            _hd154557154816_
                            _tl154558154818_
                            _e154559154821_
                            _hd154560154824_
                            _tl154561154826_
                            _e154562154829_
                            _hd154563154832_
                            _tl154564154834_
                            _e154565154837_
                            _hd154566154840_
                            _tl154567154842_
                            _e154568154845_
                            _hd154569154848_
                            _tl154570154850_
                            _e154571154853_
                            _hd154572154856_
                            _tl154573154858_
                            _e154574154861_
                            _hd154575154864_
                            _tl154576154866_
                            _e154577154869_
                            _hd154578154872_
                            _tl154579154874_
                            _e154580154877_
                            _hd154581154880_
                            _tl154582154882_
                            _e154583154885_
                            _hd154584154888_
                            _tl154585154890_
                            _e154586154893_
                            _hd154587154896_
                            _tl154588154898_
                            _e154589154901_
                            _hd154590154904_
                            _tl154591154906_
                            _e154592154909_
                            _hd154593154912_
                            _tl154594154914_
                            _e154595154917_
                            _hd154596154920_
                            _tl154597154922_
                            _e154598154925_
                            _hd154599154928_
                            _tl154600154930_
                            _e154601154933_
                            _hd154602154936_
                            _tl154603154938_)
                     (let ((_L154941_ _hd154602154936_)
                           (_L154942_ _hd154593154912_)
                           (_L154943_ _hd154584154888_)
                           (_L154944_ _hd154575154864_)
                           (_L154945_ _hd154566154840_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L154945_
                              'bind-method!))
                           (___kont155480155481_
                            _L154941_
                            _L154942_
                            _L154943_
                            _L154944_
                            _L154945_)
                           (___kont155484155485_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx155478155479_))
                  (let ((_e154556154813_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx155478155479_))))
                    (let ((_tl154558154818_
                           (let ()
                             (declare (not safe))
                             (##cdr _e154556154813_)))
                          (_hd154557154816_
                           (let ()
                             (declare (not safe))
                             (##car _e154556154813_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl154558154818_))
                          (let ((_e154559154821_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl154558154818_))))
                            (let ((_tl154561154826_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e154559154821_)))
                                  (_hd154560154824_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e154559154821_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd154560154824_))
                                  (let ((_e154562154829_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd154560154824_))))
                                    (let ((_tl154564154834_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e154562154829_)))
                                          (_hd154563154832_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e154562154829_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd154563154832_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd154563154832_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl154564154834_))
                                                  (let ((_e154565154837_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl154564154834_))))
                                                    (let ((_tl154567154842_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e154565154837_)))
                                                          (_hd154566154840_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e154565154837_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl154567154842_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl154561154826_))
                      (let ((_e154568154845_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl154561154826_))))
                        (let ((_tl154570154850_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e154568154845_)))
                              (_hd154569154848_
                               (let ()
                                 (declare (not safe))
                                 (##car _e154568154845_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd154569154848_))
                              (let ((_e154571154853_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd154569154848_))))
                                (let ((_tl154573154858_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e154571154853_)))
                                      (_hd154572154856_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e154571154853_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd154572154856_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd154572154856_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl154573154858_))
                                              (let ((_e154574154861_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl154573154858_))))
                                                (let ((_tl154576154866_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e154574154861_)))
                                                      (_hd154575154864_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e154574154861_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl154576154866_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl154570154850_))
                                                          (let ((_e154577154869_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl154570154850_))))
                    (let ((_tl154579154874_
                           (let ()
                             (declare (not safe))
                             (##cdr _e154577154869_)))
                          (_hd154578154872_
                           (let ()
                             (declare (not safe))
                             (##car _e154577154869_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd154578154872_))
                          (let ((_e154580154877_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd154578154872_))))
                            (let ((_tl154582154882_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e154580154877_)))
                                  (_hd154581154880_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e154580154877_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd154581154880_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd154581154880_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl154582154882_))
                                          (let ((_e154583154885_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl154582154882_))))
                                            (let ((_tl154585154890_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e154583154885_)))
                                                  (_hd154584154888_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e154583154885_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl154585154890_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl154579154874_))
                                                      (let ((_e154586154893_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl154579154874_))))
                (let ((_tl154588154898_
                       (let () (declare (not safe)) (##cdr _e154586154893_)))
                      (_hd154587154896_
                       (let () (declare (not safe)) (##car _e154586154893_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd154587154896_))
                      (let ((_e154589154901_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd154587154896_))))
                        (let ((_tl154591154906_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e154589154901_)))
                              (_hd154590154904_
                               (let ()
                                 (declare (not safe))
                                 (##car _e154589154901_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd154590154904_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd154590154904_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl154591154906_))
                                      (let ((_e154592154909_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl154591154906_))))
                                        (let ((_tl154594154914_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e154592154909_)))
                                              (_hd154593154912_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e154592154909_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl154594154914_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl154588154898_))
                                                  (let ((_e154595154917_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl154588154898_))))
                                                    (let ((_tl154597154922_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e154595154917_)))
                                                          (_hd154596154920_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e154595154917_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd154596154920_))
                                                          (let ((_e154598154925_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd154596154920_))))
                    (let ((_tl154600154930_
                           (let ()
                             (declare (not safe))
                             (##cdr _e154598154925_)))
                          (_hd154599154928_
                           (let ()
                             (declare (not safe))
                             (##car _e154598154925_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd154599154928_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd154599154928_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl154600154930_))
                                  (let ((_e154601154933_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl154600154930_))))
                                    (let ((_tl154603154938_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e154601154933_)))
                                          (_hd154602154936_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e154601154933_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl154603154938_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl154597154922_))
                                              (___match155613155614_
                                               _e154556154813_
                                               _hd154557154816_
                                               _tl154558154818_
                                               _e154559154821_
                                               _hd154560154824_
                                               _tl154561154826_
                                               _e154562154829_
                                               _hd154563154832_
                                               _tl154564154834_
                                               _e154565154837_
                                               _hd154566154840_
                                               _tl154567154842_
                                               _e154568154845_
                                               _hd154569154848_
                                               _tl154570154850_
                                               _e154571154853_
                                               _hd154572154856_
                                               _tl154573154858_
                                               _e154574154861_
                                               _hd154575154864_
                                               _tl154576154866_
                                               _e154577154869_
                                               _hd154578154872_
                                               _tl154579154874_
                                               _e154580154877_
                                               _hd154581154880_
                                               _tl154582154882_
                                               _e154583154885_
                                               _hd154584154888_
                                               _tl154585154890_
                                               _e154586154893_
                                               _hd154587154896_
                                               _tl154588154898_
                                               _e154589154901_
                                               _hd154590154904_
                                               _tl154591154906_
                                               _e154592154909_
                                               _hd154593154912_
                                               _tl154594154914_
                                               _e154595154917_
                                               _hd154596154920_
                                               _tl154597154922_
                                               _e154598154925_
                                               _hd154599154928_
                                               _tl154600154930_
                                               _e154601154933_
                                               _hd154602154936_
                                               _tl154603154938_)
                                              (___kont155484155485_))
                                          (___kont155484155485_))))
                                  (___kont155484155485_))
                              (___kont155484155485_))
                          (___kont155484155485_))))
                  (___kont155484155485_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl154588154898_))
                                                      (if (let ((__tmp155777
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp155777 'bind-method!))
                  (let ((_L154767_ _hd154593154912_)
                        (_L154768_ _hd154584154888_)
                        (_L154769_ _hd154575154864_)
                        (_L154770_ _hd154566154840_))
                    (___kont155482155483_
                     _L154767_
                     _L154768_
                     _L154769_
                     _L154770_))
                  (___kont155484155485_))
              (___kont155484155485_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont155484155485_))))
                                      (___kont155484155485_))
                                  (___kont155484155485_))
                              (___kont155484155485_))))
                      (___kont155484155485_))))
              (___kont155484155485_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont155484155485_))))
                                          (___kont155484155485_))
                                      (___kont155484155485_))
                                  (___kont155484155485_))))
                          (___kont155484155485_))))
                  (___kont155484155485_))
              (___kont155484155485_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont155484155485_))
                                          (___kont155484155485_))
                                      (___kont155484155485_))))
                              (___kont155484155485_))))
                      (___kont155484155485_))
                  (___kont155484155485_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont155484155485_))
                                              (___kont155484155485_))
                                          (___kont155484155485_))))
                                  (___kont155484155485_))))
                          (___kont155484155485_))))
                  (___kont155484155485_)))))))
    (define gxc#!alias::typedecl
      (lambda (_self154520_)
        (let* ((_self154521154527_ _self154520_)
               (_E154523154531_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154521154527_))))
               (_K154524154536_
                (lambda (_alias-id154534_)
                  (let ((__tmp155778
                         (let ()
                           (declare (not safe))
                           (cons _alias-id154534_ '()))))
                    (declare (not safe))
                    (cons '@alias __tmp155778)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self154521154527_ 'gxc#!alias::t))
              (let* ((_e154525154539_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154521154527_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_alias-id154542_ _e154525154539_))
                (declare (not safe))
                (_K154524154536_ _alias-id154542_))
              (let () (declare (not safe)) (_E154523154531_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_self154304_)
        (let* ((_self154305154321_ _self154304_)
               (_E154307154325_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154305154321_))))
               (_K154308154340_
                (lambda (_methods154328_
                         _metaclass154329_
                         _system?154330_
                         _final?154331_
                         _struct?154332_
                         _constructor154333_
                         _fields154334_
                         _slots154335_
                         _precendence-list154336_
                         _super154337_
                         _id154338_)
                  (let ((__tmp155779
                         (let ((__tmp155780
                                (let ((__tmp155781
                                       (let ((__tmp155782
                                              (let ((__tmp155783
                                                     (let ((__tmp155784
                                                            (let ((__tmp155785
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp155786
                                  (let ((__tmp155787
                                         (let ((__tmp155788
                                                (let ((__tmp155789
                                                       (let ((__tmp155790
                                                              (if _methods154328_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (hash->list _methods154328_))
                          '#f)))
                 (declare (not safe))
                 (cons __tmp155790 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _metaclass154329_
                                                        __tmp155789))))
                                           (declare (not safe))
                                           (cons _system?154330_
                                                 __tmp155788))))
                                    (declare (not safe))
                                    (cons _final?154331_ __tmp155787))))
                             (declare (not safe))
                             (cons _struct?154332_ __tmp155786))))
                      (declare (not safe))
                      (cons _constructor154333_ __tmp155785))))
               (declare (not safe))
               (cons _fields154334_ __tmp155784))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _slots154335_
                                                      __tmp155783))))
                                         (declare (not safe))
                                         (cons _precendence-list154336_
                                               __tmp155782))))
                                  (declare (not safe))
                                  (cons _super154337_ __tmp155781))))
                           (declare (not safe))
                           (cons _id154338_ __tmp155780))))
                    (declare (not safe))
                    (cons '@class __tmp155779)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self154305154321_ 'gxc#!class::t))
              (let* ((_e154309154343_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154305154321_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_id154346_ _e154309154343_)
                     (_e154310154348_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154305154321_
                         '2
                         gxc#!class::t
                         '#f)))
                     (_super154351_ _e154310154348_)
                     (_e154311154353_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154305154321_
                         '3
                         gxc#!class::t
                         '#f)))
                     (_precendence-list154356_ _e154311154353_)
                     (_e154312154358_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154305154321_
                         '4
                         gxc#!class::t
                         '#f)))
                     (_slots154361_ _e154312154358_)
                     (_e154313154363_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154305154321_
                         '5
                         gxc#!class::t
                         '#f)))
                     (_fields154366_ _e154313154363_)
                     (_e154314154368_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154305154321_
                         '6
                         gxc#!class::t
                         '#f)))
                     (_constructor154371_ _e154314154368_)
                     (_e154315154373_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154305154321_
                         '7
                         gxc#!class::t
                         '#f)))
                     (_struct?154376_ _e154315154373_)
                     (_e154316154378_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154305154321_
                         '8
                         gxc#!class::t
                         '#f)))
                     (_final?154381_ _e154316154378_)
                     (_e154317154383_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154305154321_
                         '9
                         gxc#!class::t
                         '#f)))
                     (_system?154386_ _e154317154383_)
                     (_e154318154388_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154305154321_
                         '10
                         gxc#!class::t
                         '#f)))
                     (_metaclass154391_ _e154318154388_)
                     (_e154319154393_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154305154321_
                         '11
                         gxc#!class::t
                         '#f)))
                     (_methods154396_ _e154319154393_))
                (declare (not safe))
                (_K154308154340_
                 _methods154396_
                 _metaclass154391_
                 _system?154386_
                 _final?154381_
                 _struct?154376_
                 _constructor154371_
                 _fields154366_
                 _slots154361_
                 _precendence-list154356_
                 _super154351_
                 _id154346_))
              (let () (declare (not safe)) (_E154307154325_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_self154158_)
        (let* ((_self154159154165_ _self154158_)
               (_E154161154169_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154159154165_))))
               (_K154162154174_
                (lambda (_klass-id154172_)
                  (let ((__tmp155791
                         (let ()
                           (declare (not safe))
                           (cons _klass-id154172_ '()))))
                    (declare (not safe))
                    (cons '@predicate __tmp155791)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self154159154165_
                 'gxc#!predicate::t))
              (let* ((_e154163154177_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154159154165_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id154180_ _e154163154177_))
                (declare (not safe))
                (_K154162154174_ _klass-id154180_))
              (let () (declare (not safe)) (_E154161154169_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_self154012_)
        (let* ((_self154013154019_ _self154012_)
               (_E154015154023_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154013154019_))))
               (_K154016154028_
                (lambda (_klass-id154026_)
                  (let ((__tmp155792
                         (let ()
                           (declare (not safe))
                           (cons _klass-id154026_ '()))))
                    (declare (not safe))
                    (cons '@constructor __tmp155792)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self154013154019_
                 'gxc#!constructor::t))
              (let* ((_e154017154031_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154013154019_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id154034_ _e154017154031_))
                (declare (not safe))
                (_K154016154028_ _klass-id154034_))
              (let () (declare (not safe)) (_E154015154023_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_self153852_)
        (let* ((_self153853153861_ _self153852_)
               (_E153855153865_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self153853153861_))))
               (_K153856153872_
                (lambda (_checked?153868_ _slot153869_ _klass-id153870_)
                  (let ((__tmp155793
                         (let ((__tmp155794
                                (let ((__tmp155795
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?153868_ '()))))
                                  (declare (not safe))
                                  (cons _slot153869_ __tmp155795))))
                           (declare (not safe))
                           (cons _klass-id153870_ __tmp155794))))
                    (declare (not safe))
                    (cons '@accessor __tmp155793)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self153853153861_
                 'gxc#!accessor::t))
              (let* ((_e153857153875_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153853153861_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id153878_ _e153857153875_)
                     (_e153858153880_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153853153861_
                         '2
                         gxc#!accessor::t
                         '#f)))
                     (_slot153883_ _e153858153880_)
                     (_e153859153885_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153853153861_
                         '3
                         gxc#!accessor::t
                         '#f)))
                     (_checked?153888_ _e153859153885_))
                (declare (not safe))
                (_K153856153872_
                 _checked?153888_
                 _slot153883_
                 _klass-id153878_))
              (let () (declare (not safe)) (_E153855153865_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_self153692_)
        (let* ((_self153693153701_ _self153692_)
               (_E153695153705_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self153693153701_))))
               (_K153696153712_
                (lambda (_checked?153708_ _slot153709_ _klass-id153710_)
                  (let ((__tmp155796
                         (let ((__tmp155797
                                (let ((__tmp155798
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?153708_ '()))))
                                  (declare (not safe))
                                  (cons _slot153709_ __tmp155798))))
                           (declare (not safe))
                           (cons _klass-id153710_ __tmp155797))))
                    (declare (not safe))
                    (cons '@mutator __tmp155796)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self153693153701_ 'gxc#!mutator::t))
              (let* ((_e153697153715_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153693153701_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id153718_ _e153697153715_)
                     (_e153698153720_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153693153701_
                         '2
                         gxc#!mutator::t
                         '#f)))
                     (_slot153723_ _e153698153720_)
                     (_e153699153725_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153693153701_
                         '3
                         gxc#!mutator::t
                         '#f)))
                     (_checked?153728_ _e153699153725_))
                (declare (not safe))
                (_K153696153712_
                 _checked?153728_
                 _slot153723_
                 _klass-id153718_))
              (let () (declare (not safe)) (_E153695153705_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!lambda::typedecl
      (lambda (_self153518_)
        (let* ((_self153519153529_ _self153518_)
               (_E153521153533_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self153519153529_))))
               (_K153522153544_
                (lambda (_typedecl153536_
                         _inline153537_
                         _dispatch153538_
                         _arity153539_)
                  (if _inline153537_
                      (let ((_$e153541_ _typedecl153536_))
                        (if _$e153541_
                            _$e153541_
                            (let ()
                              (declare (not safe))
                              (error '"Cannot generate typedecl for inline rules"))))
                      (let ((__tmp155799
                             (let ((__tmp155800
                                    (let ()
                                      (declare (not safe))
                                      (cons _dispatch153538_ '()))))
                               (declare (not safe))
                               (cons _arity153539_ __tmp155800))))
                        (declare (not safe))
                        (cons '@lambda __tmp155799))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self153519153529_ 'gxc#!lambda::t))
              (let* ((_e153523153547_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153519153529_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e153524153550_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153519153529_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity153553_ _e153524153550_)
                     (_e153525153555_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153519153529_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch153558_ _e153525153555_)
                     (_e153526153560_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153519153529_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline153563_ _e153526153560_)
                     (_e153527153565_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153519153529_
                         '5
                         gxc#!lambda::t
                         '#f)))
                     (_typedecl153568_ _e153527153565_))
                (declare (not safe))
                (_K153522153544_
                 _typedecl153568_
                 _inline153563_
                 _dispatch153558_
                 _arity153553_))
              (let () (declare (not safe)) (_E153521153533_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_self153329_)
        (letrec ((_clause-e153331_
                  (lambda (_clause153361_)
                    (let* ((_clause153362153370_ _clause153361_)
                           (_E153364153374_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _clause153362153370_))))
                           (_K153365153380_
                            (lambda (_dispatch153377_ _arity153378_)
                              (let ((__tmp155801
                                     (let ()
                                       (declare (not safe))
                                       (cons _dispatch153377_ '()))))
                                (declare (not safe))
                                (cons _arity153378_ __tmp155801)))))
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _clause153362153370_
                             'gxc#!lambda::t))
                          (let* ((_e153366153383_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause153362153370_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                                 (_e153367153386_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause153362153370_
                                     '2
                                     gxc#!lambda::t
                                     '#f)))
                                 (_arity153389_ _e153367153386_)
                                 (_e153368153391_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause153362153370_
                                     '3
                                     gxc#!lambda::t
                                     '#f)))
                                 (_dispatch153394_ _e153368153391_))
                            (declare (not safe))
                            (_K153365153380_ _dispatch153394_ _arity153389_))
                          (let () (declare (not safe)) (_E153364153374_)))))))
          (let* ((_self153332153339_ _self153329_)
                 (_E153334153343_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching" _self153332153339_))))
                 (_K153335153350_
                  (lambda (_clauses153346_)
                    (let ((_clauses153348_
                           (map _clause-e153331_ _clauses153346_)))
                      (declare (not safe))
                      (cons '@case-lambda _clauses153348_)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of?
                   _self153332153339_
                   'gxc#!case-lambda::t))
                (let* ((_e153336153353_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self153332153339_
                           '1
                           gxc#!type::t
                           '#f)))
                       (_e153337153356_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self153332153339_
                           '2
                           gxc#!case-lambda::t
                           '#f)))
                       (_clauses153359_ _e153337153356_))
                  (declare (not safe))
                  (_K153335153350_ _clauses153359_))
                (let () (declare (not safe)) (_E153334153343_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_self153172_)
        (let* ((_self153173153181_ _self153172_)
               (_E153175153185_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self153173153181_))))
               (_K153176153191_
                (lambda (_dispatch153188_ _table153189_)
                  (let ((__tmp155802
                         (let ((__tmp155803
                                (let ()
                                  (declare (not safe))
                                  (cons _dispatch153188_ '()))))
                           (declare (not safe))
                           (cons _table153189_ __tmp155803))))
                    (declare (not safe))
                    (cons '@kw-lambda __tmp155802)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self153173153181_
                 'gxc#!kw-lambda::t))
              (let* ((_e153177153194_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153173153181_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e153178153197_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153173153181_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table153200_ _e153178153197_)
                     (_e153179153202_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153173153181_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch153205_ _e153179153202_))
                (declare (not safe))
                (_K153176153191_ _dispatch153205_ _table153200_))
              (let () (declare (not safe)) (_E153175153185_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda::t
       'typedecl
       gxc#!kw-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_self153015_)
        (let* ((_self153016153024_ _self153015_)
               (_E153018153028_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self153016153024_))))
               (_K153019153034_
                (lambda (_main153031_ _keys153032_)
                  (let ((__tmp155804
                         (let ((__tmp155805
                                (let ()
                                  (declare (not safe))
                                  (cons _main153031_ '()))))
                           (declare (not safe))
                           (cons _keys153032_ __tmp155805))))
                    (declare (not safe))
                    (cons '@kw-lambda-dispatch __tmp155804)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self153016153024_
                 'gxc#!kw-lambda-primary::t))
              (let* ((_e153020153037_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153016153024_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e153021153040_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153016153024_
                         '2
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_keys153043_ _e153021153040_)
                     (_e153022153045_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153016153024_
                         '3
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_main153048_ _e153022153045_))
                (declare (not safe))
                (_K153019153034_ _main153048_ _keys153043_))
              (let () (declare (not safe)) (_E153018153028_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))))
