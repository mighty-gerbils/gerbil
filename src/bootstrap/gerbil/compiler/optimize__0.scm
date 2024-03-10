(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1710106266)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (gxc#current-compile-optimizer-info)
            '#!void
            (gxc#current-compile-optimizer-info
             (let ((__obj157610
                    (let ()
                      (declare (not safe))
                      (##structure gxc#optimizer-info::t '#f '#f '#f))))
               (gxc#optimizer-info:::init! __obj157610)
               __obj157610)))))
    (define gxc#optimize!
      (lambda (_ctx157303_)
        (let ((__tmp157616
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _ctx157303_))
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-builtin-ssxi _ctx157303_))
                 (let ((__tmp157618
                        (##structure-ref
                         (gxc#current-compile-optimizer-info)
                         '2
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp157617
                        (##structure-ref
                         _ctx157303_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp157618 __tmp157617 '#t))
                 (let ((_code157306_
                        (let ((__tmp157619
                               (##structure-ref
                                _ctx157303_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp157619))))
                   (##structure-set!
                    _ctx157303_
                    _code157306_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp157615 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp157614 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters
           __tmp157616
           gxc#current-compile-mutators
           __tmp157615
           gxc#current-compile-local-type
           __tmp157614))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_ctx157292_)
        (letrec ((_load-it!157294_
                  (lambda (_id157301_)
                    (if (let ((__tmp157621
                               (##structure-ref
                                (gxc#current-compile-optimizer-info)
                                '2
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp157621 _id157301_))
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-import-ssxi-by-id _id157301_))
                          (let ((__tmp157620
                                 (##structure-ref
                                  (gxc#current-compile-optimizer-info)
                                  '2
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp157620 _id157301_ '#t)))))))
          (let* ((_modid157296_
                  (##structure-ref _ctx157292_ '1 gx#expander-context::t '#f))
                 (_modid-str157298_ (symbol->string _modid157296_)))
            (if (let ()
                  (declare (not safe))
                  (string-prefix? '"gerbil/core" _modid-str157298_))
                (let ()
                  (declare (not safe))
                  (_load-it!157294_ 'gerbil/builtin))
                (for-each
                 _load-it!157294_
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
      (lambda (_ctx157237_)
        (letrec* ((_deps157239_
                   (let* ((_imports157283_
                           (##structure-ref
                            _ctx157237_
                            '8
                            gx#module-context::t
                            '#f))
                          (_$e157285_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _ctx157237_))))
                     (if _$e157285_
                         ((lambda (_g157287157289_)
                            (let ()
                              (declare (not safe))
                              (cons _g157287157289_ _imports157283_)))
                          _$e157285_)
                         _imports157283_))))
          (let _lp157241_ ((_rest157243_ _deps157239_))
            (let* ((_rest157244157252_ _rest157243_)
                   (_else157246157260_ (lambda () '#!void))
                   (_K157248157271_
                    (lambda (_rest157263_ _hd157264_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _hd157264_
                             'gx#module-context::t))
                          (begin
                            (if (let ((__tmp157635
                                       (##structure-ref
                                        (gxc#current-compile-optimizer-info)
                                        '2
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp157634
                                       (##structure-ref
                                        _hd157264_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (hash-get __tmp157635 __tmp157634))
                                '#!void
                                (begin
                                  (let ((_$e157266_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _hd157264_))))
                                    (if _$e157266_
                                        ((lambda (_pre157269_)
                                           (let ((__tmp157632
                                                  (let ((__tmp157633
                                                         (##structure-ref
                                                          _hd157264_
                                                          '8
                                                          gx#module-context::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (cons _pre157269_
                                                          __tmp157633))))
                                             (declare (not safe))
                                             (_lp157241_ __tmp157632)))
                                         _$e157266_)
                                        (let ((__tmp157631
                                               (##structure-ref
                                                _hd157264_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                          (declare (not safe))
                                          (_lp157241_ __tmp157631))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _hd157264_))))
                            (let ()
                              (declare (not safe))
                              (_lp157241_ _rest157263_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _hd157264_
                                 'gx#prelude-context::t))
                              (begin
                                (if (let ((__tmp157630
                                           (##structure-ref
                                            (gxc#current-compile-optimizer-info)
                                            '2
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp157629
                                           (##structure-ref
                                            _hd157264_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (hash-get __tmp157630 __tmp157629))
                                    '#!void
                                    (begin
                                      (let ((__tmp157628
                                             (##structure-ref
                                              _hd157264_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_lp157241_ __tmp157628))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi _hd157264_))))
                                (let ()
                                  (declare (not safe))
                                  (_lp157241_ _rest157263_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _hd157264_
                                     'gx#module-import::t))
                                  (let ((__tmp157626
                                         (let ((__tmp157627
                                                (##direct-structure-ref
                                                 _hd157264_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp157627 _rest157263_))))
                                    (declare (not safe))
                                    (_lp157241_ __tmp157626))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _hd157264_
                                         'gx#module-export::t))
                                      (let ((__tmp157624
                                             (let ((__tmp157625
                                                    (##direct-structure-ref
                                                     _hd157264_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp157625
                                                     _rest157263_))))
                                        (declare (not safe))
                                        (_lp157241_ __tmp157624))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _hd157264_
                                             'gx#import-set::t))
                                          (let ((__tmp157622
                                                 (let ((__tmp157623
                                                        (##direct-structure-ref
                                                         _hd157264_
                                                         '1
                                                         gx#import-set::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp157623
                                                         _rest157263_))))
                                            (declare (not safe))
                                            (_lp157241_ __tmp157622))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _hd157264_))))))))))
              (if (let () (declare (not safe)) (##pair? _rest157244157252_))
                  (let ((_hd157249157274_
                         (let ()
                           (declare (not safe))
                           (##car _rest157244157252_)))
                        (_tl157250157276_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest157244157252_))))
                    (let* ((_hd157279_ _hd157249157274_)
                           (_rest157281_ _tl157250157276_))
                      (declare (not safe))
                      (_K157248157271_ _rest157281_ _hd157279_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_ctx157217_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _ctx157217_
                    'gx#module-context::t))
                 (let ((__tmp157636
                        (##structure-ref
                         _ctx157217_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp157636)))
            '#!void
            (let* ((_ht157219_
                    (##structure-ref
                     (gxc#current-compile-optimizer-info)
                     '2
                     gxc#optimizer-info::t
                     '#f))
                   (_id157221_
                    (##structure-ref
                     _ctx157217_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_mod157223_
                    (let ()
                      (declare (not safe))
                      (hash-get _ht157219_ _id157221_))))
              (let ((_$e157226_ _mod157223_))
                (if _$e157226_
                    _$e157226_
                    (let* ((_mod157229_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-import-ssxi _ctx157217_)))
                           (_val157234_
                            (let ((_$e157231_ _mod157229_))
                              (if _$e157231_ _$e157231_ '#!void))))
                      (let ()
                        (declare (not safe))
                        (hash-put! _ht157219_ _id157221_ _val157234_))
                      _val157234_)))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_ctx157215_)
        (if (##structure-ref _ctx157215_ '1 gx#expander-context::t '#f)
            (let ((__tmp157637
                   (##structure-ref
                    _ctx157215_
                    '1
                    gx#expander-context::t
                    '#f)))
              (declare (not safe))
              (gxc#optimizer-import-ssxi-by-id __tmp157637))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_id157192_)
        (letrec ((_catch-e157194_
                  (lambda (_exn157213_)
                    (if (gxc#current-compile-verbose)
                        (begin
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"Failed to load ssxi module for "
                             _id157192_))
                          (let ()
                            (declare (not safe))
                            (display-exception _exn157213_)))
                        '#!void)
                    '#f))
                 (_import-e157195_
                  (lambda ()
                    (let* ((_str-id157198_
                            (string-append
                             (let ()
                               (declare (not safe))
                               (gxc#module-id->path-string _id157192_))
                             '".ssxi"))
                           (_artefact-path157206_
                            (let ((_odir157199157201_
                                   (gxc#current-compile-output-dir)))
                              (if _odir157199157201_
                                  (let ((_odir157204_ _odir157199157201_))
                                    (path-expand
                                     (string-append _str-id157198_ '".ss")
                                     _odir157204_))
                                  '#f)))
                           (_library-path157208_
                            (string->symbol
                             (string-append '":" _str-id157198_ '".ss")))
                           (_ssxi-path157210_
                            (if (and _artefact-path157206_
                                     (file-exists? _artefact-path157206_))
                                _artefact-path157206_
                                _library-path157208_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _ssxi-path157210_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _ssxi-path157210_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (with-catch _catch-e157194_ _import-e157195_)))))
    (define gxc#optimize-source
      (lambda (_stx157183_)
        (let () (declare (not safe)) (gxc#apply-collect-mutators _stx157183_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _stx157183_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _stx157183_))
        (let* ((_stx157185_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _stx157183_)))
               (_stx157187_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _stx157185_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _stx157187_))
          (let ((_stx157190_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _stx157187_))))
            (declare (not safe))
            (gxc#apply-optimize-call _stx157190_)))))
    (define gxc#&generate-ssxi::t
      (let ((__tmp157640 (list gxc#&generate-runtime-empty::t))
            (__tmp157638
             (let ((__tmp157639
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp157639 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#&generate-ssxi::t
         '&generate-ssxi
         __tmp157640
         '()
         __tmp157638
         '#f)))
    (define gxc#&generate-ssxi?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#&generate-ssxi::t)))
    (define gxc#make-&generate-ssxi
      (lambda _$args157180_
        (apply make-instance gxc#&generate-ssxi::t _$args157180_)))
    (define gxc#&generate-ssxi-bind-methods!
      (let ((__tmp157641
             (lambda ()
               (force gxc#&generate-runtime-empty-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&generate-ssxi::t
                  '%#begin
                  gxc#generate-runtime-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&generate-ssxi::t
                  '%#begin-syntax
                  gxc#generate-ssxi-begin-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&generate-ssxi::t
                  '%#module
                  gxc#generate-ssxi-module%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&generate-ssxi::t
                  '%#define-values
                  gxc#generate-ssxi-define-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&generate-ssxi::t
                  '%#call
                  gxc#generate-ssxi-call%))
               (let ()
                 (declare (not safe))
                 (seal-class! gxc#&generate-ssxi::t)))))
        (declare (not safe))
        (make-promise __tmp157641)))
    (define gxc#apply-generate-ssxi
      (lambda (_stx157172_)
        (force gxc#&generate-ssxi-bind-methods!)
        (let* ((_self157175_
                (let ((__obj157612
                       (let ()
                         (declare (not safe))
                         (##structure gxc#&generate-ssxi::t))))
                  __obj157612))
               (__tmp157642
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self157175_ _stx157172_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp157642
           gxc#current-compile-method
           _self157175_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_self157132_ _stx157133_)
        (let* ((_g157135157145_
                (lambda (_g157136157142_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g157136157142_))))
               (_g157134157169_
                (lambda (_g157136157148_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g157136157148_))
                      (let ((_e157140157150_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g157136157148_))))
                        (let ((_hd157139157153_
                               (let ()
                                 (declare (not safe))
                                 (##car _e157140157150_)))
                              (_tl157138157155_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e157140157150_))))
                          ((lambda (_L157158_)
                             (let ((__tmp157645
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _self157132_
                                         _stx157133_))))
                                   (__tmp157643
                                    (let ((__tmp157644
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp157644 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp157645
                                gx#current-expander-phi
                                __tmp157643)))
                           _tl157138157155_)))
                      (let ()
                        (declare (not safe))
                        (_g157135157145_ _g157136157148_))))))
          (declare (not safe))
          (_g157134157169_ _stx157133_))))
    (define gxc#generate-ssxi-module%
      (lambda (_self157071_ _stx157072_)
        (let* ((_g157074157088_
                (lambda (_g157075157085_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g157075157085_))))
               (_g157073157129_
                (lambda (_g157075157091_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g157075157091_))
                      (let ((_e157080157093_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g157075157091_))))
                        (let ((_hd157079157096_
                               (let ()
                                 (declare (not safe))
                                 (##car _e157080157093_)))
                              (_tl157078157098_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e157080157093_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl157078157098_))
                              (let ((_e157083157101_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl157078157098_))))
                                (let ((_hd157082157104_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e157083157101_)))
                                      (_tl157081157106_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e157083157101_))))
                                  ((lambda (_L157109_ _L157110_)
                                     (let* ((_ctx157123_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L157110_)))
                                            (_code157125_
                                             (##structure-ref
                                              _ctx157123_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp157646
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self157071_
                                                   _code157125_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp157646
                                          gx#current-expander-context
                                          _ctx157123_))))
                                   _tl157081157106_
                                   _hd157082157104_)))
                              (let ()
                                (declare (not safe))
                                (_g157074157088_ _g157075157091_)))))
                      (let ()
                        (declare (not safe))
                        (_g157074157088_ _g157075157091_))))))
          (declare (not safe))
          (_g157073157129_ _stx157072_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_self156880_ _stx156881_)
        (letrec ((_generate-e156883_
                  (lambda (_id157060_)
                    (let* ((_sym157062_
                            (if (let ((__tmp157647
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp157647))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _id157060_))
                                '#f))
                           (_$e157064_
                            (if _sym157062_
                                (let ()
                                  (declare (not safe))
                                  (gxc#optimizer-lookup-type _sym157062_))
                                '#f)))
                      (if _$e157064_
                          ((lambda (_type157067_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"generate typedecl " _sym157062_))
                             (let* ((_typedecl157069_
                                     (let ((__method157613
                                            (let ()
                                              (declare (not safe))
                                              (method-ref
                                               _type157067_
                                               'typedecl))))
                                       (if __method157613
                                           (__method157613 _type157067_)
                                           (let ()
                                             (declare (not safe))
                                             (error '"Missing method"
                                                    _type157067_
                                                    'typedecl)))))
                                    (__tmp157648
                                     (let ((__tmp157649
                                            (let ()
                                              (declare (not safe))
                                              (cons _typedecl157069_ '()))))
                                       (declare (not safe))
                                       (cons _sym157062_ __tmp157649))))
                               (declare (not safe))
                               (cons 'declare-type __tmp157648)))
                           _$e157064_)
                          '(begin))))))
          (let* ((___stx157309157310_ _stx156881_)
                 (_g156886156924_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx157309157310_)))))
            (let ((___kont157311157312_
                   (lambda (_L157042_)
                     (let ()
                       (declare (not safe))
                       (_generate-e156883_ _L157042_))))
                  (___kont157313157314_
                   (lambda (_L156977_)
                     (let ((_types157003_
                            (map _generate-e156883_
                                 (let ((__tmp157650
                                        (lambda (_g156995156998_
                                                 _g156996157000_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g156995156998_
                                                  _g156996157000_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp157650 '() _L156977_)))))
                       (declare (not safe))
                       (cons 'begin _types157003_)))))
              (let ((___match157364157365_
                     (lambda (_e156904156929_
                              _hd156903156932_
                              _tl156902156934_
                              _e156907156937_
                              _hd156906156940_
                              _tl156905156942_
                              ___splice157315157316_
                              _target156908156945_
                              _tl156910156947_)
                       (letrec ((_loop156911156950_
                                 (lambda (_hd156909156953_ _id156915156955_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd156909156953_))
                                       (let ((_e156912156958_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd156909156953_))))
                                         (let ((_lp-tl156914156963_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e156912156958_)))
                                               (_lp-hd156913156961_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e156912156958_))))
                                           (let ((__tmp157651
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd156913156961_
                                                          _id156915156955_))))
                                             (declare (not safe))
                                             (_loop156911156950_
                                              _lp-tl156914156963_
                                              __tmp157651))))
                                       (let ((_id156916156966_
                                              (reverse _id156915156955_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl156905156942_))
                                             (let ((_e156919156969_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl156905156942_))))
                                               (let ((_tl156917156974_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e156919156969_)))
                                                     (_hd156918156972_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e156919156969_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl156917156974_))
                                                     (___kont157313157314_
                                                      _id156916156966_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g156886156924_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g156886156924_))))))))
                         (let ()
                           (declare (not safe))
                           (_loop156911156950_ _target156908156945_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx157309157310_))
                    (let ((_e156891157010_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx157309157310_))))
                      (let ((_tl156889157015_
                             (let ()
                               (declare (not safe))
                               (##cdr _e156891157010_)))
                            (_hd156890157013_
                             (let ()
                               (declare (not safe))
                               (##car _e156891157010_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl156889157015_))
                            (let ((_e156894157018_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl156889157015_))))
                              (let ((_tl156892157023_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e156894157018_)))
                                    (_hd156893157021_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e156894157018_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd156893157021_))
                                    (let ((_e156897157026_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd156893157021_))))
                                      (let ((_tl156895157031_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e156897157026_)))
                                            (_hd156896157029_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e156897157026_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl156895157031_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl156892157023_))
                                                (let ((_e156900157034_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl156892157023_))))
                                                  (let ((_tl156898157039_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e156900157034_)))
                                                        (_hd156899157037_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e156900157034_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl156898157039_))
                                                        (___kont157311157312_
                                                         _hd156896157029_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _hd156893157021_))
                                                            (let ((___splice157315157316_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _hd156893157021_ '0))))
                      (let ((_tl156910156947_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice157315157316_ '1)))
                            (_target156908156945_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice157315157316_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl156910156947_))
                            (___match157364157365_
                             _e156891157010_
                             _hd156890157013_
                             _tl156889157015_
                             _e156894157018_
                             _hd156893157021_
                             _tl156892157023_
                             ___splice157315157316_
                             _target156908156945_
                             _tl156910156947_)
                            (let () (declare (not safe)) (_g156886156924_)))))
                    (let () (declare (not safe)) (_g156886156924_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _hd156893157021_))
                                                    (let ((___splice157315157316_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _hd156893157021_
                                                              '0))))
                                                      (let ((_tl156910156947_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice157315157316_ '1)))
                    (_target156908156945_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice157315157316_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl156910156947_))
                    (___match157364157365_
                     _e156891157010_
                     _hd156890157013_
                     _tl156889157015_
                     _e156894157018_
                     _hd156893157021_
                     _tl156892157023_
                     ___splice157315157316_
                     _target156908156945_
                     _tl156910156947_)
                    (let () (declare (not safe)) (_g156886156924_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g156886156924_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _hd156893157021_))
                                                (let ((___splice157315157316_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _hd156893157021_
                                                          '0))))
                                                  (let ((_tl156910156947_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice157315157316_
                                                            '1)))
                                                        (_target156908156945_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice157315157316_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl156910156947_))
                                                        (___match157364157365_
                                                         _e156891157010_
                                                         _hd156890157013_
                                                         _tl156889157015_
                                                         _e156894157018_
                                                         _hd156893157021_
                                                         _tl156892157023_
                                                         ___splice157315157316_
                                                         _target156908156945_
                                                         _tl156910156947_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g156886156924_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g156886156924_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd156893157021_))
                                        (let ((___splice157315157316_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd156893157021_
                                                  '0))))
                                          (let ((_tl156910156947_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice157315157316_
                                                    '1)))
                                                (_target156908156945_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice157315157316_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl156910156947_))
                                                (___match157364157365_
                                                 _e156891157010_
                                                 _hd156890157013_
                                                 _tl156889157015_
                                                 _e156894157018_
                                                 _hd156893157021_
                                                 _tl156892157023_
                                                 ___splice157315157316_
                                                 _target156908156945_
                                                 _tl156910156947_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g156886156924_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g156886156924_))))))
                            (let () (declare (not safe)) (_g156886156924_)))))
                    (let () (declare (not safe)) (_g156886156924_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_self156433_ _stx156434_)
        (let* ((___stx157367157368_ _stx156434_)
               (_g156438156540_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx157367157368_)))))
          (let ((___kont157369157370_
                 (lambda (_L156830_ _L156831_ _L156832_ _L156833_ _L156834_)
                   (let ((__tmp157652
                          (let ((__tmp157659
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L156833_)))
                                (__tmp157653
                                 (let ((__tmp157658
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L156832_)))
                                       (__tmp157654
                                        (let ((__tmp157657
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L156831_)))
                                              (__tmp157655
                                               (let ((__tmp157656
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L156830_))))
                                                 (declare (not safe))
                                                 (cons __tmp157656 '()))))
                                          (declare (not safe))
                                          (cons __tmp157657 __tmp157655))))
                                   (declare (not safe))
                                   (cons __tmp157658 __tmp157654))))
                            (declare (not safe))
                            (cons __tmp157659 __tmp157653))))
                     (declare (not safe))
                     (cons 'declare-method __tmp157652))))
                (___kont157371157372_
                 (lambda (_L156656_ _L156657_ _L156658_ _L156659_)
                   (let ((__tmp157660
                          (let ((__tmp157666
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L156658_)))
                                (__tmp157661
                                 (let ((__tmp157665
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L156657_)))
                                       (__tmp157662
                                        (let ((__tmp157664
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L156656_)))
                                              (__tmp157663
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '#f '()))))
                                          (declare (not safe))
                                          (cons __tmp157664 __tmp157663))))
                                   (declare (not safe))
                                   (cons __tmp157665 __tmp157662))))
                            (declare (not safe))
                            (cons __tmp157666 __tmp157661))))
                     (declare (not safe))
                     (cons 'declare-method __tmp157660))))
                (___kont157373157374_ (lambda () '(begin))))
            (let ((___match157502157503_
                   (lambda (_e156447156702_
                            _hd156446156705_
                            _tl156445156707_
                            _e156450156710_
                            _hd156449156713_
                            _tl156448156715_
                            _e156453156718_
                            _hd156452156721_
                            _tl156451156723_
                            _e156456156726_
                            _hd156455156729_
                            _tl156454156731_
                            _e156459156734_
                            _hd156458156737_
                            _tl156457156739_
                            _e156462156742_
                            _hd156461156745_
                            _tl156460156747_
                            _e156465156750_
                            _hd156464156753_
                            _tl156463156755_
                            _e156468156758_
                            _hd156467156761_
                            _tl156466156763_
                            _e156471156766_
                            _hd156470156769_
                            _tl156469156771_
                            _e156474156774_
                            _hd156473156777_
                            _tl156472156779_
                            _e156477156782_
                            _hd156476156785_
                            _tl156475156787_
                            _e156480156790_
                            _hd156479156793_
                            _tl156478156795_
                            _e156483156798_
                            _hd156482156801_
                            _tl156481156803_
                            _e156486156806_
                            _hd156485156809_
                            _tl156484156811_
                            _e156489156814_
                            _hd156488156817_
                            _tl156487156819_
                            _e156492156822_
                            _hd156491156825_
                            _tl156490156827_)
                     (let ((_L156830_ _hd156491156825_)
                           (_L156831_ _hd156482156801_)
                           (_L156832_ _hd156473156777_)
                           (_L156833_ _hd156464156753_)
                           (_L156834_ _hd156455156729_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L156834_
                              'bind-method!))
                           (___kont157369157370_
                            _L156830_
                            _L156831_
                            _L156832_
                            _L156833_
                            _L156834_)
                           (___kont157373157374_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx157367157368_))
                  (let ((_e156447156702_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx157367157368_))))
                    (let ((_tl156445156707_
                           (let ()
                             (declare (not safe))
                             (##cdr _e156447156702_)))
                          (_hd156446156705_
                           (let ()
                             (declare (not safe))
                             (##car _e156447156702_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl156445156707_))
                          (let ((_e156450156710_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl156445156707_))))
                            (let ((_tl156448156715_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e156450156710_)))
                                  (_hd156449156713_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e156450156710_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd156449156713_))
                                  (let ((_e156453156718_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd156449156713_))))
                                    (let ((_tl156451156723_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e156453156718_)))
                                          (_hd156452156721_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e156453156718_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd156452156721_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd156452156721_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl156451156723_))
                                                  (let ((_e156456156726_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl156451156723_))))
                                                    (let ((_tl156454156731_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e156456156726_)))
                                                          (_hd156455156729_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e156456156726_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl156454156731_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl156448156715_))
                      (let ((_e156459156734_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl156448156715_))))
                        (let ((_tl156457156739_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e156459156734_)))
                              (_hd156458156737_
                               (let ()
                                 (declare (not safe))
                                 (##car _e156459156734_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd156458156737_))
                              (let ((_e156462156742_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd156458156737_))))
                                (let ((_tl156460156747_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e156462156742_)))
                                      (_hd156461156745_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e156462156742_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd156461156745_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd156461156745_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl156460156747_))
                                              (let ((_e156465156750_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl156460156747_))))
                                                (let ((_tl156463156755_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e156465156750_)))
                                                      (_hd156464156753_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e156465156750_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl156463156755_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl156457156739_))
                                                          (let ((_e156468156758_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl156457156739_))))
                    (let ((_tl156466156763_
                           (let ()
                             (declare (not safe))
                             (##cdr _e156468156758_)))
                          (_hd156467156761_
                           (let ()
                             (declare (not safe))
                             (##car _e156468156758_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd156467156761_))
                          (let ((_e156471156766_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd156467156761_))))
                            (let ((_tl156469156771_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e156471156766_)))
                                  (_hd156470156769_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e156471156766_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd156470156769_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd156470156769_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl156469156771_))
                                          (let ((_e156474156774_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl156469156771_))))
                                            (let ((_tl156472156779_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e156474156774_)))
                                                  (_hd156473156777_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e156474156774_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl156472156779_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl156466156763_))
                                                      (let ((_e156477156782_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl156466156763_))))
                (let ((_tl156475156787_
                       (let () (declare (not safe)) (##cdr _e156477156782_)))
                      (_hd156476156785_
                       (let () (declare (not safe)) (##car _e156477156782_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd156476156785_))
                      (let ((_e156480156790_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd156476156785_))))
                        (let ((_tl156478156795_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e156480156790_)))
                              (_hd156479156793_
                               (let ()
                                 (declare (not safe))
                                 (##car _e156480156790_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd156479156793_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd156479156793_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl156478156795_))
                                      (let ((_e156483156798_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl156478156795_))))
                                        (let ((_tl156481156803_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e156483156798_)))
                                              (_hd156482156801_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e156483156798_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl156481156803_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl156475156787_))
                                                  (let ((_e156486156806_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl156475156787_))))
                                                    (let ((_tl156484156811_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e156486156806_)))
                                                          (_hd156485156809_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e156486156806_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd156485156809_))
                                                          (let ((_e156489156814_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd156485156809_))))
                    (let ((_tl156487156819_
                           (let ()
                             (declare (not safe))
                             (##cdr _e156489156814_)))
                          (_hd156488156817_
                           (let ()
                             (declare (not safe))
                             (##car _e156489156814_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd156488156817_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd156488156817_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl156487156819_))
                                  (let ((_e156492156822_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl156487156819_))))
                                    (let ((_tl156490156827_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e156492156822_)))
                                          (_hd156491156825_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e156492156822_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl156490156827_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl156484156811_))
                                              (___match157502157503_
                                               _e156447156702_
                                               _hd156446156705_
                                               _tl156445156707_
                                               _e156450156710_
                                               _hd156449156713_
                                               _tl156448156715_
                                               _e156453156718_
                                               _hd156452156721_
                                               _tl156451156723_
                                               _e156456156726_
                                               _hd156455156729_
                                               _tl156454156731_
                                               _e156459156734_
                                               _hd156458156737_
                                               _tl156457156739_
                                               _e156462156742_
                                               _hd156461156745_
                                               _tl156460156747_
                                               _e156465156750_
                                               _hd156464156753_
                                               _tl156463156755_
                                               _e156468156758_
                                               _hd156467156761_
                                               _tl156466156763_
                                               _e156471156766_
                                               _hd156470156769_
                                               _tl156469156771_
                                               _e156474156774_
                                               _hd156473156777_
                                               _tl156472156779_
                                               _e156477156782_
                                               _hd156476156785_
                                               _tl156475156787_
                                               _e156480156790_
                                               _hd156479156793_
                                               _tl156478156795_
                                               _e156483156798_
                                               _hd156482156801_
                                               _tl156481156803_
                                               _e156486156806_
                                               _hd156485156809_
                                               _tl156484156811_
                                               _e156489156814_
                                               _hd156488156817_
                                               _tl156487156819_
                                               _e156492156822_
                                               _hd156491156825_
                                               _tl156490156827_)
                                              (___kont157373157374_))
                                          (___kont157373157374_))))
                                  (___kont157373157374_))
                              (___kont157373157374_))
                          (___kont157373157374_))))
                  (___kont157373157374_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl156475156787_))
                                                      (if (let ((__tmp157667
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp157667 'bind-method!))
                  (let ((_L156656_ _hd156482156801_)
                        (_L156657_ _hd156473156777_)
                        (_L156658_ _hd156464156753_)
                        (_L156659_ _hd156455156729_))
                    (___kont157371157372_
                     _L156656_
                     _L156657_
                     _L156658_
                     _L156659_))
                  (___kont157373157374_))
              (___kont157373157374_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont157373157374_))))
                                      (___kont157373157374_))
                                  (___kont157373157374_))
                              (___kont157373157374_))))
                      (___kont157373157374_))))
              (___kont157373157374_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont157373157374_))))
                                          (___kont157373157374_))
                                      (___kont157373157374_))
                                  (___kont157373157374_))))
                          (___kont157373157374_))))
                  (___kont157373157374_))
              (___kont157373157374_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont157373157374_))
                                          (___kont157373157374_))
                                      (___kont157373157374_))))
                              (___kont157373157374_))))
                      (___kont157373157374_))
                  (___kont157373157374_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont157373157374_))
                                              (___kont157373157374_))
                                          (___kont157373157374_))))
                                  (___kont157373157374_))))
                          (___kont157373157374_))))
                  (___kont157373157374_)))))))
    (define gxc#!alias::typedecl
      (lambda (_self156409_)
        (let* ((_self156410156416_ _self156409_)
               (_E156412156420_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self156410156416_))))
               (_K156413156425_
                (lambda (_alias-id156423_)
                  (let ((__tmp157668
                         (let ()
                           (declare (not safe))
                           (cons _alias-id156423_ '()))))
                    (declare (not safe))
                    (cons '@alias __tmp157668)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self156410156416_ 'gxc#!alias::t))
              (let* ((_e156414156428_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156410156416_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_alias-id156431_ _e156414156428_))
                (declare (not safe))
                (_K156413156425_ _alias-id156431_))
              (let () (declare (not safe)) (_E156412156420_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_self156200_)
        (let* ((_self156201156216_ _self156200_)
               (_E156203156220_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self156201156216_))))
               (_K156204156234_
                (lambda (_methods156223_
                         _metaclass156224_
                         _final?156225_
                         _struct?156226_
                         _constructor156227_
                         _fields156228_
                         _slots156229_
                         _precendence-list156230_
                         _super156231_
                         _id156232_)
                  (let ((__tmp157669
                         (let ((__tmp157670
                                (let ((__tmp157671
                                       (let ((__tmp157672
                                              (let ((__tmp157673
                                                     (let ((__tmp157674
                                                            (let ((__tmp157675
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp157676
                                  (let ((__tmp157677
                                         (let ((__tmp157678
                                                (let ((__tmp157679
                                                       (if _methods156223_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (hash->list
                                                              _methods156223_))
                                                           '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp157679 '()))))
                                           (declare (not safe))
                                           (cons _metaclass156224_
                                                 __tmp157678))))
                                    (declare (not safe))
                                    (cons _final?156225_ __tmp157677))))
                             (declare (not safe))
                             (cons _struct?156226_ __tmp157676))))
                      (declare (not safe))
                      (cons _constructor156227_ __tmp157675))))
               (declare (not safe))
               (cons _fields156228_ __tmp157674))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _slots156229_
                                                      __tmp157673))))
                                         (declare (not safe))
                                         (cons _precendence-list156230_
                                               __tmp157672))))
                                  (declare (not safe))
                                  (cons _super156231_ __tmp157671))))
                           (declare (not safe))
                           (cons _id156232_ __tmp157670))))
                    (declare (not safe))
                    (cons '@class __tmp157669)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self156201156216_ 'gxc#!class::t))
              (let* ((_e156205156237_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156201156216_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_id156240_ _e156205156237_)
                     (_e156206156242_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156201156216_
                         '2
                         gxc#!class::t
                         '#f)))
                     (_super156245_ _e156206156242_)
                     (_e156207156247_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156201156216_
                         '3
                         gxc#!class::t
                         '#f)))
                     (_precendence-list156250_ _e156207156247_)
                     (_e156208156252_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156201156216_
                         '4
                         gxc#!class::t
                         '#f)))
                     (_slots156255_ _e156208156252_)
                     (_e156209156257_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156201156216_
                         '5
                         gxc#!class::t
                         '#f)))
                     (_fields156260_ _e156209156257_)
                     (_e156210156262_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156201156216_
                         '6
                         gxc#!class::t
                         '#f)))
                     (_constructor156265_ _e156210156262_)
                     (_e156211156267_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156201156216_
                         '7
                         gxc#!class::t
                         '#f)))
                     (_struct?156270_ _e156211156267_)
                     (_e156212156272_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156201156216_
                         '8
                         gxc#!class::t
                         '#f)))
                     (_final?156275_ _e156212156272_)
                     (_e156213156277_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156201156216_
                         '9
                         gxc#!class::t
                         '#f)))
                     (_metaclass156280_ _e156213156277_)
                     (_e156214156282_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156201156216_
                         '10
                         gxc#!class::t
                         '#f)))
                     (_methods156285_ _e156214156282_))
                (declare (not safe))
                (_K156204156234_
                 _methods156285_
                 _metaclass156280_
                 _final?156275_
                 _struct?156270_
                 _constructor156265_
                 _fields156260_
                 _slots156255_
                 _precendence-list156250_
                 _super156245_
                 _id156240_))
              (let () (declare (not safe)) (_E156203156220_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_self156054_)
        (let* ((_self156055156061_ _self156054_)
               (_E156057156065_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self156055156061_))))
               (_K156058156070_
                (lambda (_klass-id156068_)
                  (let ((__tmp157680
                         (let ()
                           (declare (not safe))
                           (cons _klass-id156068_ '()))))
                    (declare (not safe))
                    (cons '@predicate __tmp157680)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self156055156061_
                 'gxc#!predicate::t))
              (let* ((_e156059156073_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156055156061_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id156076_ _e156059156073_))
                (declare (not safe))
                (_K156058156070_ _klass-id156076_))
              (let () (declare (not safe)) (_E156057156065_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_self155908_)
        (let* ((_self155909155915_ _self155908_)
               (_E155911155919_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self155909155915_))))
               (_K155912155924_
                (lambda (_klass-id155922_)
                  (let ((__tmp157681
                         (let ()
                           (declare (not safe))
                           (cons _klass-id155922_ '()))))
                    (declare (not safe))
                    (cons '@constructor __tmp157681)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self155909155915_
                 'gxc#!constructor::t))
              (let* ((_e155913155927_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155909155915_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id155930_ _e155913155927_))
                (declare (not safe))
                (_K155912155924_ _klass-id155930_))
              (let () (declare (not safe)) (_E155911155919_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_self155748_)
        (let* ((_self155749155757_ _self155748_)
               (_E155751155761_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self155749155757_))))
               (_K155752155768_
                (lambda (_checked?155764_ _slot155765_ _klass-id155766_)
                  (let ((__tmp157682
                         (let ((__tmp157683
                                (let ((__tmp157684
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?155764_ '()))))
                                  (declare (not safe))
                                  (cons _slot155765_ __tmp157684))))
                           (declare (not safe))
                           (cons _klass-id155766_ __tmp157683))))
                    (declare (not safe))
                    (cons '@accessor __tmp157682)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self155749155757_
                 'gxc#!accessor::t))
              (let* ((_e155753155771_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155749155757_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id155774_ _e155753155771_)
                     (_e155754155776_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155749155757_
                         '2
                         gxc#!accessor::t
                         '#f)))
                     (_slot155779_ _e155754155776_)
                     (_e155755155781_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155749155757_
                         '3
                         gxc#!accessor::t
                         '#f)))
                     (_checked?155784_ _e155755155781_))
                (declare (not safe))
                (_K155752155768_
                 _checked?155784_
                 _slot155779_
                 _klass-id155774_))
              (let () (declare (not safe)) (_E155751155761_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_self155588_)
        (let* ((_self155589155597_ _self155588_)
               (_E155591155601_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self155589155597_))))
               (_K155592155608_
                (lambda (_checked?155604_ _slot155605_ _klass-id155606_)
                  (let ((__tmp157685
                         (let ((__tmp157686
                                (let ((__tmp157687
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?155604_ '()))))
                                  (declare (not safe))
                                  (cons _slot155605_ __tmp157687))))
                           (declare (not safe))
                           (cons _klass-id155606_ __tmp157686))))
                    (declare (not safe))
                    (cons '@mutator __tmp157685)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self155589155597_ 'gxc#!mutator::t))
              (let* ((_e155593155611_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155589155597_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id155614_ _e155593155611_)
                     (_e155594155616_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155589155597_
                         '2
                         gxc#!mutator::t
                         '#f)))
                     (_slot155619_ _e155594155616_)
                     (_e155595155621_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155589155597_
                         '3
                         gxc#!mutator::t
                         '#f)))
                     (_checked?155624_ _e155595155621_))
                (declare (not safe))
                (_K155592155608_
                 _checked?155624_
                 _slot155619_
                 _klass-id155614_))
              (let () (declare (not safe)) (_E155591155601_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!lambda::typedecl
      (lambda (_self155414_)
        (let* ((_self155415155425_ _self155414_)
               (_E155417155429_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self155415155425_))))
               (_K155418155440_
                (lambda (_typedecl155432_
                         _inline155433_
                         _dispatch155434_
                         _arity155435_)
                  (if _inline155433_
                      (let ((_$e155437_ _typedecl155432_))
                        (if _$e155437_
                            _$e155437_
                            (let ()
                              (declare (not safe))
                              (error '"Cannot generate typedecl for inline rules"))))
                      (let ((__tmp157688
                             (let ((__tmp157689
                                    (let ()
                                      (declare (not safe))
                                      (cons _dispatch155434_ '()))))
                               (declare (not safe))
                               (cons _arity155435_ __tmp157689))))
                        (declare (not safe))
                        (cons '@lambda __tmp157688))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self155415155425_ 'gxc#!lambda::t))
              (let* ((_e155419155443_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155415155425_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e155420155446_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155415155425_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity155449_ _e155420155446_)
                     (_e155421155451_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155415155425_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch155454_ _e155421155451_)
                     (_e155422155456_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155415155425_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline155459_ _e155422155456_)
                     (_e155423155461_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155415155425_
                         '5
                         gxc#!lambda::t
                         '#f)))
                     (_typedecl155464_ _e155423155461_))
                (declare (not safe))
                (_K155418155440_
                 _typedecl155464_
                 _inline155459_
                 _dispatch155454_
                 _arity155449_))
              (let () (declare (not safe)) (_E155417155429_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_self155225_)
        (letrec ((_clause-e155227_
                  (lambda (_clause155257_)
                    (let* ((_clause155258155266_ _clause155257_)
                           (_E155260155270_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _clause155258155266_))))
                           (_K155261155276_
                            (lambda (_dispatch155273_ _arity155274_)
                              (let ((__tmp157690
                                     (let ()
                                       (declare (not safe))
                                       (cons _dispatch155273_ '()))))
                                (declare (not safe))
                                (cons _arity155274_ __tmp157690)))))
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _clause155258155266_
                             'gxc#!lambda::t))
                          (let* ((_e155262155279_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause155258155266_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                                 (_e155263155282_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause155258155266_
                                     '2
                                     gxc#!lambda::t
                                     '#f)))
                                 (_arity155285_ _e155263155282_)
                                 (_e155264155287_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause155258155266_
                                     '3
                                     gxc#!lambda::t
                                     '#f)))
                                 (_dispatch155290_ _e155264155287_))
                            (declare (not safe))
                            (_K155261155276_ _dispatch155290_ _arity155285_))
                          (let () (declare (not safe)) (_E155260155270_)))))))
          (let* ((_self155228155235_ _self155225_)
                 (_E155230155239_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching" _self155228155235_))))
                 (_K155231155246_
                  (lambda (_clauses155242_)
                    (let ((_clauses155244_
                           (map _clause-e155227_ _clauses155242_)))
                      (declare (not safe))
                      (cons '@case-lambda _clauses155244_)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of?
                   _self155228155235_
                   'gxc#!case-lambda::t))
                (let* ((_e155232155249_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self155228155235_
                           '1
                           gxc#!type::t
                           '#f)))
                       (_e155233155252_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self155228155235_
                           '2
                           gxc#!case-lambda::t
                           '#f)))
                       (_clauses155255_ _e155233155252_))
                  (declare (not safe))
                  (_K155231155246_ _clauses155255_))
                (let () (declare (not safe)) (_E155230155239_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_self155068_)
        (let* ((_self155069155077_ _self155068_)
               (_E155071155081_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self155069155077_))))
               (_K155072155087_
                (lambda (_dispatch155084_ _table155085_)
                  (let ((__tmp157691
                         (let ((__tmp157692
                                (let ()
                                  (declare (not safe))
                                  (cons _dispatch155084_ '()))))
                           (declare (not safe))
                           (cons _table155085_ __tmp157692))))
                    (declare (not safe))
                    (cons '@kw-lambda __tmp157691)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self155069155077_
                 'gxc#!kw-lambda::t))
              (let* ((_e155073155090_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155069155077_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e155074155093_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155069155077_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table155096_ _e155074155093_)
                     (_e155075155098_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155069155077_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch155101_ _e155075155098_))
                (declare (not safe))
                (_K155072155087_ _dispatch155101_ _table155096_))
              (let () (declare (not safe)) (_E155071155081_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda::t
       'typedecl
       gxc#!kw-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_self154911_)
        (let* ((_self154912154920_ _self154911_)
               (_E154914154924_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154912154920_))))
               (_K154915154930_
                (lambda (_main154927_ _keys154928_)
                  (let ((__tmp157693
                         (let ((__tmp157694
                                (let ()
                                  (declare (not safe))
                                  (cons _main154927_ '()))))
                           (declare (not safe))
                           (cons _keys154928_ __tmp157694))))
                    (declare (not safe))
                    (cons '@kw-lambda-dispatch __tmp157693)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self154912154920_
                 'gxc#!kw-lambda-primary::t))
              (let* ((_e154916154933_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154912154920_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e154917154936_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154912154920_
                         '2
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_keys154939_ _e154917154936_)
                     (_e154918154941_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154912154920_
                         '3
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_main154944_ _e154918154941_))
                (declare (not safe))
                (_K154915154930_ _main154944_ _keys154939_))
              (let () (declare (not safe)) (_E154914154924_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))))
