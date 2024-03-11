(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1710139358)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (gxc#current-compile-optimizer-info)
            '#!void
            (gxc#current-compile-optimizer-info
             (let ((__obj157538
                    (let ()
                      (declare (not safe))
                      (##structure gxc#optimizer-info::t '#f '#f '#f))))
               (gxc#optimizer-info:::init! __obj157538)
               __obj157538)))))
    (define gxc#optimize!
      (lambda (_ctx157231_)
        (let ((__tmp157544
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _ctx157231_))
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-builtin-ssxi _ctx157231_))
                 (let ((__tmp157546
                        (##structure-ref
                         (gxc#current-compile-optimizer-info)
                         '2
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp157545
                        (##structure-ref
                         _ctx157231_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp157546 __tmp157545 '#t))
                 (let ((_code157234_
                        (let ((__tmp157547
                               (##structure-ref
                                _ctx157231_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp157547))))
                   (##structure-set!
                    _ctx157231_
                    _code157234_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp157543 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp157542 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters
           __tmp157544
           gxc#current-compile-mutators
           __tmp157543
           gxc#current-compile-local-type
           __tmp157542))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_ctx157220_)
        (letrec ((_load-it!157222_
                  (lambda (_id157229_)
                    (if (let ((__tmp157549
                               (##structure-ref
                                (gxc#current-compile-optimizer-info)
                                '2
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp157549 _id157229_))
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-import-ssxi-by-id _id157229_))
                          (let ((__tmp157548
                                 (##structure-ref
                                  (gxc#current-compile-optimizer-info)
                                  '2
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp157548 _id157229_ '#t)))))))
          (let* ((_modid157224_
                  (##structure-ref _ctx157220_ '1 gx#expander-context::t '#f))
                 (_modid-str157226_ (symbol->string _modid157224_)))
            (if (let ()
                  (declare (not safe))
                  (string-prefix? '"gerbil/core" _modid-str157226_))
                (let ()
                  (declare (not safe))
                  (_load-it!157222_ 'gerbil/builtin))
                (for-each
                 _load-it!157222_
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
      (lambda (_ctx157165_)
        (letrec* ((_deps157167_
                   (let* ((_imports157211_
                           (##structure-ref
                            _ctx157165_
                            '8
                            gx#module-context::t
                            '#f))
                          (_$e157213_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _ctx157165_))))
                     (if _$e157213_
                         ((lambda (_g157215157217_)
                            (let ()
                              (declare (not safe))
                              (cons _g157215157217_ _imports157211_)))
                          _$e157213_)
                         _imports157211_))))
          (let _lp157169_ ((_rest157171_ _deps157167_))
            (let* ((_rest157172157180_ _rest157171_)
                   (_else157174157188_ (lambda () '#!void))
                   (_K157176157199_
                    (lambda (_rest157191_ _hd157192_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _hd157192_
                             'gx#module-context::t))
                          (begin
                            (if (let ((__tmp157563
                                       (##structure-ref
                                        (gxc#current-compile-optimizer-info)
                                        '2
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp157562
                                       (##structure-ref
                                        _hd157192_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (hash-get __tmp157563 __tmp157562))
                                '#!void
                                (begin
                                  (let ((_$e157194_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _hd157192_))))
                                    (if _$e157194_
                                        ((lambda (_pre157197_)
                                           (let ((__tmp157560
                                                  (let ((__tmp157561
                                                         (##structure-ref
                                                          _hd157192_
                                                          '8
                                                          gx#module-context::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (cons _pre157197_
                                                          __tmp157561))))
                                             (declare (not safe))
                                             (_lp157169_ __tmp157560)))
                                         _$e157194_)
                                        (let ((__tmp157559
                                               (##structure-ref
                                                _hd157192_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                          (declare (not safe))
                                          (_lp157169_ __tmp157559))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _hd157192_))))
                            (let ()
                              (declare (not safe))
                              (_lp157169_ _rest157191_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _hd157192_
                                 'gx#prelude-context::t))
                              (begin
                                (if (let ((__tmp157558
                                           (##structure-ref
                                            (gxc#current-compile-optimizer-info)
                                            '2
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp157557
                                           (##structure-ref
                                            _hd157192_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (hash-get __tmp157558 __tmp157557))
                                    '#!void
                                    (begin
                                      (let ((__tmp157556
                                             (##structure-ref
                                              _hd157192_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_lp157169_ __tmp157556))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi _hd157192_))))
                                (let ()
                                  (declare (not safe))
                                  (_lp157169_ _rest157191_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _hd157192_
                                     'gx#module-import::t))
                                  (let ((__tmp157554
                                         (let ((__tmp157555
                                                (##direct-structure-ref
                                                 _hd157192_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp157555 _rest157191_))))
                                    (declare (not safe))
                                    (_lp157169_ __tmp157554))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _hd157192_
                                         'gx#module-export::t))
                                      (let ((__tmp157552
                                             (let ((__tmp157553
                                                    (##direct-structure-ref
                                                     _hd157192_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp157553
                                                     _rest157191_))))
                                        (declare (not safe))
                                        (_lp157169_ __tmp157552))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _hd157192_
                                             'gx#import-set::t))
                                          (let ((__tmp157550
                                                 (let ((__tmp157551
                                                        (##direct-structure-ref
                                                         _hd157192_
                                                         '1
                                                         gx#import-set::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp157551
                                                         _rest157191_))))
                                            (declare (not safe))
                                            (_lp157169_ __tmp157550))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _hd157192_))))))))))
              (if (let () (declare (not safe)) (##pair? _rest157172157180_))
                  (let ((_hd157177157202_
                         (let ()
                           (declare (not safe))
                           (##car _rest157172157180_)))
                        (_tl157178157204_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest157172157180_))))
                    (let* ((_hd157207_ _hd157177157202_)
                           (_rest157209_ _tl157178157204_))
                      (declare (not safe))
                      (_K157176157199_ _rest157209_ _hd157207_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_ctx157145_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _ctx157145_
                    'gx#module-context::t))
                 (let ((__tmp157564
                        (##structure-ref
                         _ctx157145_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp157564)))
            '#!void
            (let* ((_ht157147_
                    (##structure-ref
                     (gxc#current-compile-optimizer-info)
                     '2
                     gxc#optimizer-info::t
                     '#f))
                   (_id157149_
                    (##structure-ref
                     _ctx157145_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_mod157151_
                    (let ()
                      (declare (not safe))
                      (hash-get _ht157147_ _id157149_))))
              (let ((_$e157154_ _mod157151_))
                (if _$e157154_
                    _$e157154_
                    (let* ((_mod157157_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-import-ssxi _ctx157145_)))
                           (_val157162_
                            (let ((_$e157159_ _mod157157_))
                              (if _$e157159_ _$e157159_ '#!void))))
                      (let ()
                        (declare (not safe))
                        (hash-put! _ht157147_ _id157149_ _val157162_))
                      _val157162_)))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_ctx157143_)
        (if (##structure-ref _ctx157143_ '1 gx#expander-context::t '#f)
            (let ((__tmp157565
                   (##structure-ref
                    _ctx157143_
                    '1
                    gx#expander-context::t
                    '#f)))
              (declare (not safe))
              (gxc#optimizer-import-ssxi-by-id __tmp157565))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_id157120_)
        (letrec ((_catch-e157122_
                  (lambda (_exn157141_)
                    (if (gxc#current-compile-verbose)
                        (begin
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"Failed to load ssxi module for "
                             _id157120_))
                          (let ()
                            (declare (not safe))
                            (display-exception _exn157141_)))
                        '#!void)
                    '#f))
                 (_import-e157123_
                  (lambda ()
                    (let* ((_str-id157126_
                            (string-append
                             (let ()
                               (declare (not safe))
                               (gxc#module-id->path-string _id157120_))
                             '".ssxi"))
                           (_artefact-path157134_
                            (let ((_odir157127157129_
                                   (gxc#current-compile-output-dir)))
                              (if _odir157127157129_
                                  (let ((_odir157132_ _odir157127157129_))
                                    (path-expand
                                     (string-append _str-id157126_ '".ss")
                                     _odir157132_))
                                  '#f)))
                           (_library-path157136_
                            (string->symbol
                             (string-append '":" _str-id157126_ '".ss")))
                           (_ssxi-path157138_
                            (if (and _artefact-path157134_
                                     (file-exists? _artefact-path157134_))
                                _artefact-path157134_
                                _library-path157136_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _ssxi-path157138_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _ssxi-path157138_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (with-catch _catch-e157122_ _import-e157123_)))))
    (define gxc#optimize-source
      (lambda (_stx157111_)
        (let () (declare (not safe)) (gxc#apply-collect-mutators _stx157111_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _stx157111_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _stx157111_))
        (let* ((_stx157113_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _stx157111_)))
               (_stx157115_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _stx157113_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _stx157115_))
          (let ((_stx157118_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _stx157115_))))
            (declare (not safe))
            (gxc#apply-optimize-call _stx157118_)))))
    (define gxc#&generate-ssxi::t
      (let ((__tmp157568 (list gxc#&generate-runtime-empty::t))
            (__tmp157566
             (let ((__tmp157567
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp157567 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#&generate-ssxi::t
         '&generate-ssxi
         __tmp157568
         '()
         __tmp157566
         '#f)))
    (define gxc#&generate-ssxi?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#&generate-ssxi::t)))
    (define gxc#make-&generate-ssxi
      (lambda _$args157108_
        (apply make-instance gxc#&generate-ssxi::t _$args157108_)))
    (define gxc#&generate-ssxi-bind-methods!
      (let ((__tmp157569
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
        (make-promise __tmp157569)))
    (define gxc#apply-generate-ssxi
      (lambda (_stx157100_)
        (force gxc#&generate-ssxi-bind-methods!)
        (let* ((_self157103_
                (let ((__obj157540
                       (let ()
                         (declare (not safe))
                         (##structure gxc#&generate-ssxi::t))))
                  __obj157540))
               (__tmp157570
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self157103_ _stx157100_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp157570
           gxc#current-compile-method
           _self157103_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_self157060_ _stx157061_)
        (let* ((_g157063157073_
                (lambda (_g157064157070_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g157064157070_))))
               (_g157062157097_
                (lambda (_g157064157076_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g157064157076_))
                      (let ((_e157068157078_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g157064157076_))))
                        (let ((_hd157067157081_
                               (let ()
                                 (declare (not safe))
                                 (##car _e157068157078_)))
                              (_tl157066157083_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e157068157078_))))
                          ((lambda (_L157086_)
                             (let ((__tmp157573
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _self157060_
                                         _stx157061_))))
                                   (__tmp157571
                                    (let ((__tmp157572
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp157572 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp157573
                                gx#current-expander-phi
                                __tmp157571)))
                           _tl157066157083_)))
                      (let ()
                        (declare (not safe))
                        (_g157063157073_ _g157064157076_))))))
          (declare (not safe))
          (_g157062157097_ _stx157061_))))
    (define gxc#generate-ssxi-module%
      (lambda (_self156999_ _stx157000_)
        (let* ((_g157002157016_
                (lambda (_g157003157013_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g157003157013_))))
               (_g157001157057_
                (lambda (_g157003157019_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g157003157019_))
                      (let ((_e157008157021_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g157003157019_))))
                        (let ((_hd157007157024_
                               (let ()
                                 (declare (not safe))
                                 (##car _e157008157021_)))
                              (_tl157006157026_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e157008157021_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl157006157026_))
                              (let ((_e157011157029_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl157006157026_))))
                                (let ((_hd157010157032_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e157011157029_)))
                                      (_tl157009157034_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e157011157029_))))
                                  ((lambda (_L157037_ _L157038_)
                                     (let* ((_ctx157051_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L157038_)))
                                            (_code157053_
                                             (##structure-ref
                                              _ctx157051_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp157574
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self156999_
                                                   _code157053_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp157574
                                          gx#current-expander-context
                                          _ctx157051_))))
                                   _tl157009157034_
                                   _hd157010157032_)))
                              (let ()
                                (declare (not safe))
                                (_g157002157016_ _g157003157019_)))))
                      (let ()
                        (declare (not safe))
                        (_g157002157016_ _g157003157019_))))))
          (declare (not safe))
          (_g157001157057_ _stx157000_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_self156808_ _stx156809_)
        (letrec ((_generate-e156811_
                  (lambda (_id156988_)
                    (let* ((_sym156990_
                            (if (let ((__tmp157575
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp157575))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _id156988_))
                                '#f))
                           (_$e156992_
                            (if _sym156990_
                                (let ()
                                  (declare (not safe))
                                  (gxc#optimizer-lookup-type _sym156990_))
                                '#f)))
                      (if _$e156992_
                          ((lambda (_type156995_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"generate typedecl " _sym156990_))
                             (let* ((_typedecl156997_
                                     (let ((__method157541
                                            (let ()
                                              (declare (not safe))
                                              (method-ref
                                               _type156995_
                                               'typedecl))))
                                       (if __method157541
                                           (__method157541 _type156995_)
                                           (let ()
                                             (declare (not safe))
                                             (error '"Missing method"
                                                    _type156995_
                                                    'typedecl)))))
                                    (__tmp157576
                                     (let ((__tmp157577
                                            (let ()
                                              (declare (not safe))
                                              (cons _typedecl156997_ '()))))
                                       (declare (not safe))
                                       (cons _sym156990_ __tmp157577))))
                               (declare (not safe))
                               (cons 'declare-type __tmp157576)))
                           _$e156992_)
                          '(begin))))))
          (let* ((___stx157237157238_ _stx156809_)
                 (_g156814156852_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx157237157238_)))))
            (let ((___kont157239157240_
                   (lambda (_L156970_)
                     (let ()
                       (declare (not safe))
                       (_generate-e156811_ _L156970_))))
                  (___kont157241157242_
                   (lambda (_L156905_)
                     (let ((_types156931_
                            (map _generate-e156811_
                                 (let ((__tmp157578
                                        (lambda (_g156923156926_
                                                 _g156924156928_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g156923156926_
                                                  _g156924156928_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp157578 '() _L156905_)))))
                       (declare (not safe))
                       (cons 'begin _types156931_)))))
              (let ((___match157292157293_
                     (lambda (_e156832156857_
                              _hd156831156860_
                              _tl156830156862_
                              _e156835156865_
                              _hd156834156868_
                              _tl156833156870_
                              ___splice157243157244_
                              _target156836156873_
                              _tl156838156875_)
                       (letrec ((_loop156839156878_
                                 (lambda (_hd156837156881_ _id156843156883_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd156837156881_))
                                       (let ((_e156840156886_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd156837156881_))))
                                         (let ((_lp-tl156842156891_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e156840156886_)))
                                               (_lp-hd156841156889_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e156840156886_))))
                                           (let ((__tmp157579
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd156841156889_
                                                          _id156843156883_))))
                                             (declare (not safe))
                                             (_loop156839156878_
                                              _lp-tl156842156891_
                                              __tmp157579))))
                                       (let ((_id156844156894_
                                              (reverse _id156843156883_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl156833156870_))
                                             (let ((_e156847156897_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl156833156870_))))
                                               (let ((_tl156845156902_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e156847156897_)))
                                                     (_hd156846156900_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e156847156897_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl156845156902_))
                                                     (___kont157241157242_
                                                      _id156844156894_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g156814156852_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g156814156852_))))))))
                         (let ()
                           (declare (not safe))
                           (_loop156839156878_ _target156836156873_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx157237157238_))
                    (let ((_e156819156938_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx157237157238_))))
                      (let ((_tl156817156943_
                             (let ()
                               (declare (not safe))
                               (##cdr _e156819156938_)))
                            (_hd156818156941_
                             (let ()
                               (declare (not safe))
                               (##car _e156819156938_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl156817156943_))
                            (let ((_e156822156946_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl156817156943_))))
                              (let ((_tl156820156951_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e156822156946_)))
                                    (_hd156821156949_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e156822156946_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd156821156949_))
                                    (let ((_e156825156954_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd156821156949_))))
                                      (let ((_tl156823156959_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e156825156954_)))
                                            (_hd156824156957_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e156825156954_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl156823156959_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl156820156951_))
                                                (let ((_e156828156962_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl156820156951_))))
                                                  (let ((_tl156826156967_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e156828156962_)))
                                                        (_hd156827156965_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e156828156962_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl156826156967_))
                                                        (___kont157239157240_
                                                         _hd156824156957_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _hd156821156949_))
                                                            (let ((___splice157243157244_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _hd156821156949_ '0))))
                      (let ((_tl156838156875_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice157243157244_ '1)))
                            (_target156836156873_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice157243157244_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl156838156875_))
                            (___match157292157293_
                             _e156819156938_
                             _hd156818156941_
                             _tl156817156943_
                             _e156822156946_
                             _hd156821156949_
                             _tl156820156951_
                             ___splice157243157244_
                             _target156836156873_
                             _tl156838156875_)
                            (let () (declare (not safe)) (_g156814156852_)))))
                    (let () (declare (not safe)) (_g156814156852_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _hd156821156949_))
                                                    (let ((___splice157243157244_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _hd156821156949_
                                                              '0))))
                                                      (let ((_tl156838156875_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice157243157244_ '1)))
                    (_target156836156873_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice157243157244_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl156838156875_))
                    (___match157292157293_
                     _e156819156938_
                     _hd156818156941_
                     _tl156817156943_
                     _e156822156946_
                     _hd156821156949_
                     _tl156820156951_
                     ___splice157243157244_
                     _target156836156873_
                     _tl156838156875_)
                    (let () (declare (not safe)) (_g156814156852_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g156814156852_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _hd156821156949_))
                                                (let ((___splice157243157244_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _hd156821156949_
                                                          '0))))
                                                  (let ((_tl156838156875_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice157243157244_
                                                            '1)))
                                                        (_target156836156873_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice157243157244_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl156838156875_))
                                                        (___match157292157293_
                                                         _e156819156938_
                                                         _hd156818156941_
                                                         _tl156817156943_
                                                         _e156822156946_
                                                         _hd156821156949_
                                                         _tl156820156951_
                                                         ___splice157243157244_
                                                         _target156836156873_
                                                         _tl156838156875_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g156814156852_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g156814156852_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd156821156949_))
                                        (let ((___splice157243157244_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd156821156949_
                                                  '0))))
                                          (let ((_tl156838156875_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice157243157244_
                                                    '1)))
                                                (_target156836156873_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice157243157244_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl156838156875_))
                                                (___match157292157293_
                                                 _e156819156938_
                                                 _hd156818156941_
                                                 _tl156817156943_
                                                 _e156822156946_
                                                 _hd156821156949_
                                                 _tl156820156951_
                                                 ___splice157243157244_
                                                 _target156836156873_
                                                 _tl156838156875_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g156814156852_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g156814156852_))))))
                            (let () (declare (not safe)) (_g156814156852_)))))
                    (let () (declare (not safe)) (_g156814156852_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_self156361_ _stx156362_)
        (let* ((___stx157295157296_ _stx156362_)
               (_g156366156468_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx157295157296_)))))
          (let ((___kont157297157298_
                 (lambda (_L156758_ _L156759_ _L156760_ _L156761_ _L156762_)
                   (let ((__tmp157580
                          (let ((__tmp157587
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L156761_)))
                                (__tmp157581
                                 (let ((__tmp157586
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L156760_)))
                                       (__tmp157582
                                        (let ((__tmp157585
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L156759_)))
                                              (__tmp157583
                                               (let ((__tmp157584
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L156758_))))
                                                 (declare (not safe))
                                                 (cons __tmp157584 '()))))
                                          (declare (not safe))
                                          (cons __tmp157585 __tmp157583))))
                                   (declare (not safe))
                                   (cons __tmp157586 __tmp157582))))
                            (declare (not safe))
                            (cons __tmp157587 __tmp157581))))
                     (declare (not safe))
                     (cons 'declare-method __tmp157580))))
                (___kont157299157300_
                 (lambda (_L156584_ _L156585_ _L156586_ _L156587_)
                   (let ((__tmp157588
                          (let ((__tmp157594
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L156586_)))
                                (__tmp157589
                                 (let ((__tmp157593
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L156585_)))
                                       (__tmp157590
                                        (let ((__tmp157592
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L156584_)))
                                              (__tmp157591
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '#f '()))))
                                          (declare (not safe))
                                          (cons __tmp157592 __tmp157591))))
                                   (declare (not safe))
                                   (cons __tmp157593 __tmp157590))))
                            (declare (not safe))
                            (cons __tmp157594 __tmp157589))))
                     (declare (not safe))
                     (cons 'declare-method __tmp157588))))
                (___kont157301157302_ (lambda () '(begin))))
            (let ((___match157430157431_
                   (lambda (_e156375156630_
                            _hd156374156633_
                            _tl156373156635_
                            _e156378156638_
                            _hd156377156641_
                            _tl156376156643_
                            _e156381156646_
                            _hd156380156649_
                            _tl156379156651_
                            _e156384156654_
                            _hd156383156657_
                            _tl156382156659_
                            _e156387156662_
                            _hd156386156665_
                            _tl156385156667_
                            _e156390156670_
                            _hd156389156673_
                            _tl156388156675_
                            _e156393156678_
                            _hd156392156681_
                            _tl156391156683_
                            _e156396156686_
                            _hd156395156689_
                            _tl156394156691_
                            _e156399156694_
                            _hd156398156697_
                            _tl156397156699_
                            _e156402156702_
                            _hd156401156705_
                            _tl156400156707_
                            _e156405156710_
                            _hd156404156713_
                            _tl156403156715_
                            _e156408156718_
                            _hd156407156721_
                            _tl156406156723_
                            _e156411156726_
                            _hd156410156729_
                            _tl156409156731_
                            _e156414156734_
                            _hd156413156737_
                            _tl156412156739_
                            _e156417156742_
                            _hd156416156745_
                            _tl156415156747_
                            _e156420156750_
                            _hd156419156753_
                            _tl156418156755_)
                     (let ((_L156758_ _hd156419156753_)
                           (_L156759_ _hd156410156729_)
                           (_L156760_ _hd156401156705_)
                           (_L156761_ _hd156392156681_)
                           (_L156762_ _hd156383156657_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L156762_
                              'bind-method!))
                           (___kont157297157298_
                            _L156758_
                            _L156759_
                            _L156760_
                            _L156761_
                            _L156762_)
                           (___kont157301157302_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx157295157296_))
                  (let ((_e156375156630_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx157295157296_))))
                    (let ((_tl156373156635_
                           (let ()
                             (declare (not safe))
                             (##cdr _e156375156630_)))
                          (_hd156374156633_
                           (let ()
                             (declare (not safe))
                             (##car _e156375156630_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl156373156635_))
                          (let ((_e156378156638_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl156373156635_))))
                            (let ((_tl156376156643_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e156378156638_)))
                                  (_hd156377156641_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e156378156638_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd156377156641_))
                                  (let ((_e156381156646_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd156377156641_))))
                                    (let ((_tl156379156651_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e156381156646_)))
                                          (_hd156380156649_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e156381156646_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd156380156649_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd156380156649_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl156379156651_))
                                                  (let ((_e156384156654_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl156379156651_))))
                                                    (let ((_tl156382156659_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e156384156654_)))
                                                          (_hd156383156657_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e156384156654_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl156382156659_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl156376156643_))
                      (let ((_e156387156662_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl156376156643_))))
                        (let ((_tl156385156667_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e156387156662_)))
                              (_hd156386156665_
                               (let ()
                                 (declare (not safe))
                                 (##car _e156387156662_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd156386156665_))
                              (let ((_e156390156670_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd156386156665_))))
                                (let ((_tl156388156675_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e156390156670_)))
                                      (_hd156389156673_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e156390156670_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd156389156673_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd156389156673_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl156388156675_))
                                              (let ((_e156393156678_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl156388156675_))))
                                                (let ((_tl156391156683_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e156393156678_)))
                                                      (_hd156392156681_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e156393156678_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl156391156683_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl156385156667_))
                                                          (let ((_e156396156686_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl156385156667_))))
                    (let ((_tl156394156691_
                           (let ()
                             (declare (not safe))
                             (##cdr _e156396156686_)))
                          (_hd156395156689_
                           (let ()
                             (declare (not safe))
                             (##car _e156396156686_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd156395156689_))
                          (let ((_e156399156694_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd156395156689_))))
                            (let ((_tl156397156699_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e156399156694_)))
                                  (_hd156398156697_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e156399156694_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd156398156697_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd156398156697_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl156397156699_))
                                          (let ((_e156402156702_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl156397156699_))))
                                            (let ((_tl156400156707_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e156402156702_)))
                                                  (_hd156401156705_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e156402156702_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl156400156707_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl156394156691_))
                                                      (let ((_e156405156710_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl156394156691_))))
                (let ((_tl156403156715_
                       (let () (declare (not safe)) (##cdr _e156405156710_)))
                      (_hd156404156713_
                       (let () (declare (not safe)) (##car _e156405156710_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd156404156713_))
                      (let ((_e156408156718_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd156404156713_))))
                        (let ((_tl156406156723_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e156408156718_)))
                              (_hd156407156721_
                               (let ()
                                 (declare (not safe))
                                 (##car _e156408156718_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd156407156721_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd156407156721_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl156406156723_))
                                      (let ((_e156411156726_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl156406156723_))))
                                        (let ((_tl156409156731_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e156411156726_)))
                                              (_hd156410156729_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e156411156726_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl156409156731_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl156403156715_))
                                                  (let ((_e156414156734_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl156403156715_))))
                                                    (let ((_tl156412156739_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e156414156734_)))
                                                          (_hd156413156737_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e156414156734_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd156413156737_))
                                                          (let ((_e156417156742_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd156413156737_))))
                    (let ((_tl156415156747_
                           (let ()
                             (declare (not safe))
                             (##cdr _e156417156742_)))
                          (_hd156416156745_
                           (let ()
                             (declare (not safe))
                             (##car _e156417156742_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd156416156745_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd156416156745_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl156415156747_))
                                  (let ((_e156420156750_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl156415156747_))))
                                    (let ((_tl156418156755_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e156420156750_)))
                                          (_hd156419156753_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e156420156750_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl156418156755_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl156412156739_))
                                              (___match157430157431_
                                               _e156375156630_
                                               _hd156374156633_
                                               _tl156373156635_
                                               _e156378156638_
                                               _hd156377156641_
                                               _tl156376156643_
                                               _e156381156646_
                                               _hd156380156649_
                                               _tl156379156651_
                                               _e156384156654_
                                               _hd156383156657_
                                               _tl156382156659_
                                               _e156387156662_
                                               _hd156386156665_
                                               _tl156385156667_
                                               _e156390156670_
                                               _hd156389156673_
                                               _tl156388156675_
                                               _e156393156678_
                                               _hd156392156681_
                                               _tl156391156683_
                                               _e156396156686_
                                               _hd156395156689_
                                               _tl156394156691_
                                               _e156399156694_
                                               _hd156398156697_
                                               _tl156397156699_
                                               _e156402156702_
                                               _hd156401156705_
                                               _tl156400156707_
                                               _e156405156710_
                                               _hd156404156713_
                                               _tl156403156715_
                                               _e156408156718_
                                               _hd156407156721_
                                               _tl156406156723_
                                               _e156411156726_
                                               _hd156410156729_
                                               _tl156409156731_
                                               _e156414156734_
                                               _hd156413156737_
                                               _tl156412156739_
                                               _e156417156742_
                                               _hd156416156745_
                                               _tl156415156747_
                                               _e156420156750_
                                               _hd156419156753_
                                               _tl156418156755_)
                                              (___kont157301157302_))
                                          (___kont157301157302_))))
                                  (___kont157301157302_))
                              (___kont157301157302_))
                          (___kont157301157302_))))
                  (___kont157301157302_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl156403156715_))
                                                      (if (let ((__tmp157595
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp157595 'bind-method!))
                  (let ((_L156584_ _hd156410156729_)
                        (_L156585_ _hd156401156705_)
                        (_L156586_ _hd156392156681_)
                        (_L156587_ _hd156383156657_))
                    (___kont157299157300_
                     _L156584_
                     _L156585_
                     _L156586_
                     _L156587_))
                  (___kont157301157302_))
              (___kont157301157302_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont157301157302_))))
                                      (___kont157301157302_))
                                  (___kont157301157302_))
                              (___kont157301157302_))))
                      (___kont157301157302_))))
              (___kont157301157302_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont157301157302_))))
                                          (___kont157301157302_))
                                      (___kont157301157302_))
                                  (___kont157301157302_))))
                          (___kont157301157302_))))
                  (___kont157301157302_))
              (___kont157301157302_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont157301157302_))
                                          (___kont157301157302_))
                                      (___kont157301157302_))))
                              (___kont157301157302_))))
                      (___kont157301157302_))
                  (___kont157301157302_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont157301157302_))
                                              (___kont157301157302_))
                                          (___kont157301157302_))))
                                  (___kont157301157302_))))
                          (___kont157301157302_))))
                  (___kont157301157302_)))))))
    (define gxc#!alias::typedecl
      (lambda (_self156337_)
        (let* ((_self156338156344_ _self156337_)
               (_E156340156348_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self156338156344_))))
               (_K156341156353_
                (lambda (_alias-id156351_)
                  (let ((__tmp157596
                         (let ()
                           (declare (not safe))
                           (cons _alias-id156351_ '()))))
                    (declare (not safe))
                    (cons '@alias __tmp157596)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self156338156344_ 'gxc#!alias::t))
              (let* ((_e156342156356_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156338156344_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_alias-id156359_ _e156342156356_))
                (declare (not safe))
                (_K156341156353_ _alias-id156359_))
              (let () (declare (not safe)) (_E156340156348_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_self156128_)
        (let* ((_self156129156144_ _self156128_)
               (_E156131156148_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self156129156144_))))
               (_K156132156162_
                (lambda (_methods156151_
                         _metaclass156152_
                         _final?156153_
                         _struct?156154_
                         _constructor156155_
                         _fields156156_
                         _slots156157_
                         _precendence-list156158_
                         _super156159_
                         _id156160_)
                  (let ((__tmp157597
                         (let ((__tmp157598
                                (let ((__tmp157599
                                       (let ((__tmp157600
                                              (let ((__tmp157601
                                                     (let ((__tmp157602
                                                            (let ((__tmp157603
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp157604
                                  (let ((__tmp157605
                                         (let ((__tmp157606
                                                (let ((__tmp157607
                                                       (if _methods156151_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (hash->list
                                                              _methods156151_))
                                                           '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp157607 '()))))
                                           (declare (not safe))
                                           (cons _metaclass156152_
                                                 __tmp157606))))
                                    (declare (not safe))
                                    (cons _final?156153_ __tmp157605))))
                             (declare (not safe))
                             (cons _struct?156154_ __tmp157604))))
                      (declare (not safe))
                      (cons _constructor156155_ __tmp157603))))
               (declare (not safe))
               (cons _fields156156_ __tmp157602))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _slots156157_
                                                      __tmp157601))))
                                         (declare (not safe))
                                         (cons _precendence-list156158_
                                               __tmp157600))))
                                  (declare (not safe))
                                  (cons _super156159_ __tmp157599))))
                           (declare (not safe))
                           (cons _id156160_ __tmp157598))))
                    (declare (not safe))
                    (cons '@class __tmp157597)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self156129156144_ 'gxc#!class::t))
              (let* ((_e156133156165_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156129156144_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_id156168_ _e156133156165_)
                     (_e156134156170_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156129156144_
                         '2
                         gxc#!class::t
                         '#f)))
                     (_super156173_ _e156134156170_)
                     (_e156135156175_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156129156144_
                         '3
                         gxc#!class::t
                         '#f)))
                     (_precendence-list156178_ _e156135156175_)
                     (_e156136156180_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156129156144_
                         '4
                         gxc#!class::t
                         '#f)))
                     (_slots156183_ _e156136156180_)
                     (_e156137156185_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156129156144_
                         '5
                         gxc#!class::t
                         '#f)))
                     (_fields156188_ _e156137156185_)
                     (_e156138156190_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156129156144_
                         '6
                         gxc#!class::t
                         '#f)))
                     (_constructor156193_ _e156138156190_)
                     (_e156139156195_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156129156144_
                         '7
                         gxc#!class::t
                         '#f)))
                     (_struct?156198_ _e156139156195_)
                     (_e156140156200_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156129156144_
                         '8
                         gxc#!class::t
                         '#f)))
                     (_final?156203_ _e156140156200_)
                     (_e156141156205_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156129156144_
                         '9
                         gxc#!class::t
                         '#f)))
                     (_metaclass156208_ _e156141156205_)
                     (_e156142156210_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156129156144_
                         '10
                         gxc#!class::t
                         '#f)))
                     (_methods156213_ _e156142156210_))
                (declare (not safe))
                (_K156132156162_
                 _methods156213_
                 _metaclass156208_
                 _final?156203_
                 _struct?156198_
                 _constructor156193_
                 _fields156188_
                 _slots156183_
                 _precendence-list156178_
                 _super156173_
                 _id156168_))
              (let () (declare (not safe)) (_E156131156148_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_self155982_)
        (let* ((_self155983155989_ _self155982_)
               (_E155985155993_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self155983155989_))))
               (_K155986155998_
                (lambda (_klass-id155996_)
                  (let ((__tmp157608
                         (let ()
                           (declare (not safe))
                           (cons _klass-id155996_ '()))))
                    (declare (not safe))
                    (cons '@predicate __tmp157608)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self155983155989_
                 'gxc#!predicate::t))
              (let* ((_e155987156001_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155983155989_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id156004_ _e155987156001_))
                (declare (not safe))
                (_K155986155998_ _klass-id156004_))
              (let () (declare (not safe)) (_E155985155993_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_self155836_)
        (let* ((_self155837155843_ _self155836_)
               (_E155839155847_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self155837155843_))))
               (_K155840155852_
                (lambda (_klass-id155850_)
                  (let ((__tmp157609
                         (let ()
                           (declare (not safe))
                           (cons _klass-id155850_ '()))))
                    (declare (not safe))
                    (cons '@constructor __tmp157609)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self155837155843_
                 'gxc#!constructor::t))
              (let* ((_e155841155855_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155837155843_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id155858_ _e155841155855_))
                (declare (not safe))
                (_K155840155852_ _klass-id155858_))
              (let () (declare (not safe)) (_E155839155847_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_self155676_)
        (let* ((_self155677155685_ _self155676_)
               (_E155679155689_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self155677155685_))))
               (_K155680155696_
                (lambda (_checked?155692_ _slot155693_ _klass-id155694_)
                  (let ((__tmp157610
                         (let ((__tmp157611
                                (let ((__tmp157612
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?155692_ '()))))
                                  (declare (not safe))
                                  (cons _slot155693_ __tmp157612))))
                           (declare (not safe))
                           (cons _klass-id155694_ __tmp157611))))
                    (declare (not safe))
                    (cons '@accessor __tmp157610)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self155677155685_
                 'gxc#!accessor::t))
              (let* ((_e155681155699_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155677155685_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id155702_ _e155681155699_)
                     (_e155682155704_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155677155685_
                         '2
                         gxc#!accessor::t
                         '#f)))
                     (_slot155707_ _e155682155704_)
                     (_e155683155709_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155677155685_
                         '3
                         gxc#!accessor::t
                         '#f)))
                     (_checked?155712_ _e155683155709_))
                (declare (not safe))
                (_K155680155696_
                 _checked?155712_
                 _slot155707_
                 _klass-id155702_))
              (let () (declare (not safe)) (_E155679155689_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_self155516_)
        (let* ((_self155517155525_ _self155516_)
               (_E155519155529_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self155517155525_))))
               (_K155520155536_
                (lambda (_checked?155532_ _slot155533_ _klass-id155534_)
                  (let ((__tmp157613
                         (let ((__tmp157614
                                (let ((__tmp157615
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?155532_ '()))))
                                  (declare (not safe))
                                  (cons _slot155533_ __tmp157615))))
                           (declare (not safe))
                           (cons _klass-id155534_ __tmp157614))))
                    (declare (not safe))
                    (cons '@mutator __tmp157613)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self155517155525_ 'gxc#!mutator::t))
              (let* ((_e155521155539_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155517155525_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id155542_ _e155521155539_)
                     (_e155522155544_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155517155525_
                         '2
                         gxc#!mutator::t
                         '#f)))
                     (_slot155547_ _e155522155544_)
                     (_e155523155549_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155517155525_
                         '3
                         gxc#!mutator::t
                         '#f)))
                     (_checked?155552_ _e155523155549_))
                (declare (not safe))
                (_K155520155536_
                 _checked?155552_
                 _slot155547_
                 _klass-id155542_))
              (let () (declare (not safe)) (_E155519155529_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!lambda::typedecl
      (lambda (_self155342_)
        (let* ((_self155343155353_ _self155342_)
               (_E155345155357_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self155343155353_))))
               (_K155346155368_
                (lambda (_typedecl155360_
                         _inline155361_
                         _dispatch155362_
                         _arity155363_)
                  (if _inline155361_
                      (let ((_$e155365_ _typedecl155360_))
                        (if _$e155365_
                            _$e155365_
                            (let ()
                              (declare (not safe))
                              (error '"Cannot generate typedecl for inline rules"))))
                      (let ((__tmp157616
                             (let ((__tmp157617
                                    (let ()
                                      (declare (not safe))
                                      (cons _dispatch155362_ '()))))
                               (declare (not safe))
                               (cons _arity155363_ __tmp157617))))
                        (declare (not safe))
                        (cons '@lambda __tmp157616))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self155343155353_ 'gxc#!lambda::t))
              (let* ((_e155347155371_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155343155353_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e155348155374_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155343155353_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity155377_ _e155348155374_)
                     (_e155349155379_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155343155353_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch155382_ _e155349155379_)
                     (_e155350155384_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155343155353_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline155387_ _e155350155384_)
                     (_e155351155389_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155343155353_
                         '5
                         gxc#!lambda::t
                         '#f)))
                     (_typedecl155392_ _e155351155389_))
                (declare (not safe))
                (_K155346155368_
                 _typedecl155392_
                 _inline155387_
                 _dispatch155382_
                 _arity155377_))
              (let () (declare (not safe)) (_E155345155357_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_self155153_)
        (letrec ((_clause-e155155_
                  (lambda (_clause155185_)
                    (let* ((_clause155186155194_ _clause155185_)
                           (_E155188155198_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _clause155186155194_))))
                           (_K155189155204_
                            (lambda (_dispatch155201_ _arity155202_)
                              (let ((__tmp157618
                                     (let ()
                                       (declare (not safe))
                                       (cons _dispatch155201_ '()))))
                                (declare (not safe))
                                (cons _arity155202_ __tmp157618)))))
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _clause155186155194_
                             'gxc#!lambda::t))
                          (let* ((_e155190155207_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause155186155194_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                                 (_e155191155210_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause155186155194_
                                     '2
                                     gxc#!lambda::t
                                     '#f)))
                                 (_arity155213_ _e155191155210_)
                                 (_e155192155215_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause155186155194_
                                     '3
                                     gxc#!lambda::t
                                     '#f)))
                                 (_dispatch155218_ _e155192155215_))
                            (declare (not safe))
                            (_K155189155204_ _dispatch155218_ _arity155213_))
                          (let () (declare (not safe)) (_E155188155198_)))))))
          (let* ((_self155156155163_ _self155153_)
                 (_E155158155167_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching" _self155156155163_))))
                 (_K155159155174_
                  (lambda (_clauses155170_)
                    (let ((_clauses155172_
                           (map _clause-e155155_ _clauses155170_)))
                      (declare (not safe))
                      (cons '@case-lambda _clauses155172_)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of?
                   _self155156155163_
                   'gxc#!case-lambda::t))
                (let* ((_e155160155177_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self155156155163_
                           '1
                           gxc#!type::t
                           '#f)))
                       (_e155161155180_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self155156155163_
                           '2
                           gxc#!case-lambda::t
                           '#f)))
                       (_clauses155183_ _e155161155180_))
                  (declare (not safe))
                  (_K155159155174_ _clauses155183_))
                (let () (declare (not safe)) (_E155158155167_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_self154996_)
        (let* ((_self154997155005_ _self154996_)
               (_E154999155009_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154997155005_))))
               (_K155000155015_
                (lambda (_dispatch155012_ _table155013_)
                  (let ((__tmp157619
                         (let ((__tmp157620
                                (let ()
                                  (declare (not safe))
                                  (cons _dispatch155012_ '()))))
                           (declare (not safe))
                           (cons _table155013_ __tmp157620))))
                    (declare (not safe))
                    (cons '@kw-lambda __tmp157619)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self154997155005_
                 'gxc#!kw-lambda::t))
              (let* ((_e155001155018_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154997155005_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e155002155021_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154997155005_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table155024_ _e155002155021_)
                     (_e155003155026_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154997155005_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch155029_ _e155003155026_))
                (declare (not safe))
                (_K155000155015_ _dispatch155029_ _table155024_))
              (let () (declare (not safe)) (_E154999155009_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda::t
       'typedecl
       gxc#!kw-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_self154839_)
        (let* ((_self154840154848_ _self154839_)
               (_E154842154852_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154840154848_))))
               (_K154843154858_
                (lambda (_main154855_ _keys154856_)
                  (let ((__tmp157621
                         (let ((__tmp157622
                                (let ()
                                  (declare (not safe))
                                  (cons _main154855_ '()))))
                           (declare (not safe))
                           (cons _keys154856_ __tmp157622))))
                    (declare (not safe))
                    (cons '@kw-lambda-dispatch __tmp157621)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self154840154848_
                 'gxc#!kw-lambda-primary::t))
              (let* ((_e154844154861_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154840154848_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e154845154864_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154840154848_
                         '2
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_keys154867_ _e154845154864_)
                     (_e154846154869_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154840154848_
                         '3
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_main154872_ _e154846154869_))
                (declare (not safe))
                (_K154843154858_ _main154872_ _keys154867_))
              (let () (declare (not safe)) (_E154842154852_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))))
