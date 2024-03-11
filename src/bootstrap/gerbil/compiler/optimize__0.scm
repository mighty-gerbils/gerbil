(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1710140934)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (gxc#current-compile-optimizer-info)
            '#!void
            (gxc#current-compile-optimizer-info
             (let ((__obj157537
                    (let ()
                      (declare (not safe))
                      (##structure gxc#optimizer-info::t '#f '#f '#f))))
               (gxc#optimizer-info:::init! __obj157537)
               __obj157537)))))
    (define gxc#optimize!
      (lambda (_ctx157230_)
        (let ((__tmp157543
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _ctx157230_))
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-builtin-ssxi _ctx157230_))
                 (let ((__tmp157545
                        (##structure-ref
                         (gxc#current-compile-optimizer-info)
                         '2
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp157544
                        (##structure-ref
                         _ctx157230_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp157545 __tmp157544 '#t))
                 (let ((_code157233_
                        (let ((__tmp157546
                               (##structure-ref
                                _ctx157230_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp157546))))
                   (##structure-set!
                    _ctx157230_
                    _code157233_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp157542 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp157541 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters
           __tmp157543
           gxc#current-compile-mutators
           __tmp157542
           gxc#current-compile-local-type
           __tmp157541))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_ctx157219_)
        (letrec ((_load-it!157221_
                  (lambda (_id157228_)
                    (if (let ((__tmp157548
                               (##structure-ref
                                (gxc#current-compile-optimizer-info)
                                '2
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp157548 _id157228_))
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-import-ssxi-by-id _id157228_))
                          (let ((__tmp157547
                                 (##structure-ref
                                  (gxc#current-compile-optimizer-info)
                                  '2
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp157547 _id157228_ '#t)))))))
          (let* ((_modid157223_
                  (##structure-ref _ctx157219_ '1 gx#expander-context::t '#f))
                 (_modid-str157225_ (symbol->string _modid157223_)))
            (if (let ()
                  (declare (not safe))
                  (string-prefix? '"gerbil/core" _modid-str157225_))
                (let ()
                  (declare (not safe))
                  (_load-it!157221_ 'gerbil/builtin))
                (for-each
                 _load-it!157221_
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
      (lambda (_ctx157164_)
        (letrec* ((_deps157166_
                   (let* ((_imports157210_
                           (##structure-ref
                            _ctx157164_
                            '8
                            gx#module-context::t
                            '#f))
                          (_$e157212_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _ctx157164_))))
                     (if _$e157212_
                         ((lambda (_g157214157216_)
                            (let ()
                              (declare (not safe))
                              (cons _g157214157216_ _imports157210_)))
                          _$e157212_)
                         _imports157210_))))
          (let _lp157168_ ((_rest157170_ _deps157166_))
            (let* ((_rest157171157179_ _rest157170_)
                   (_else157173157187_ (lambda () '#!void))
                   (_K157175157198_
                    (lambda (_rest157190_ _hd157191_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _hd157191_
                             'gx#module-context::t))
                          (begin
                            (if (let ((__tmp157562
                                       (##structure-ref
                                        (gxc#current-compile-optimizer-info)
                                        '2
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp157561
                                       (##structure-ref
                                        _hd157191_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (hash-get __tmp157562 __tmp157561))
                                '#!void
                                (begin
                                  (let ((_$e157193_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _hd157191_))))
                                    (if _$e157193_
                                        ((lambda (_pre157196_)
                                           (let ((__tmp157559
                                                  (let ((__tmp157560
                                                         (##structure-ref
                                                          _hd157191_
                                                          '8
                                                          gx#module-context::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (cons _pre157196_
                                                          __tmp157560))))
                                             (declare (not safe))
                                             (_lp157168_ __tmp157559)))
                                         _$e157193_)
                                        (let ((__tmp157558
                                               (##structure-ref
                                                _hd157191_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                          (declare (not safe))
                                          (_lp157168_ __tmp157558))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _hd157191_))))
                            (let ()
                              (declare (not safe))
                              (_lp157168_ _rest157190_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _hd157191_
                                 'gx#prelude-context::t))
                              (begin
                                (if (let ((__tmp157557
                                           (##structure-ref
                                            (gxc#current-compile-optimizer-info)
                                            '2
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp157556
                                           (##structure-ref
                                            _hd157191_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (hash-get __tmp157557 __tmp157556))
                                    '#!void
                                    (begin
                                      (let ((__tmp157555
                                             (##structure-ref
                                              _hd157191_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_lp157168_ __tmp157555))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi _hd157191_))))
                                (let ()
                                  (declare (not safe))
                                  (_lp157168_ _rest157190_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _hd157191_
                                     'gx#module-import::t))
                                  (let ((__tmp157553
                                         (let ((__tmp157554
                                                (##direct-structure-ref
                                                 _hd157191_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp157554 _rest157190_))))
                                    (declare (not safe))
                                    (_lp157168_ __tmp157553))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _hd157191_
                                         'gx#module-export::t))
                                      (let ((__tmp157551
                                             (let ((__tmp157552
                                                    (##direct-structure-ref
                                                     _hd157191_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp157552
                                                     _rest157190_))))
                                        (declare (not safe))
                                        (_lp157168_ __tmp157551))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _hd157191_
                                             'gx#import-set::t))
                                          (let ((__tmp157549
                                                 (let ((__tmp157550
                                                        (##direct-structure-ref
                                                         _hd157191_
                                                         '1
                                                         gx#import-set::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp157550
                                                         _rest157190_))))
                                            (declare (not safe))
                                            (_lp157168_ __tmp157549))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _hd157191_))))))))))
              (if (let () (declare (not safe)) (##pair? _rest157171157179_))
                  (let ((_hd157176157201_
                         (let ()
                           (declare (not safe))
                           (##car _rest157171157179_)))
                        (_tl157177157203_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest157171157179_))))
                    (let* ((_hd157206_ _hd157176157201_)
                           (_rest157208_ _tl157177157203_))
                      (declare (not safe))
                      (_K157175157198_ _rest157208_ _hd157206_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_ctx157144_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _ctx157144_
                    'gx#module-context::t))
                 (let ((__tmp157563
                        (##structure-ref
                         _ctx157144_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp157563)))
            '#!void
            (let* ((_ht157146_
                    (##structure-ref
                     (gxc#current-compile-optimizer-info)
                     '2
                     gxc#optimizer-info::t
                     '#f))
                   (_id157148_
                    (##structure-ref
                     _ctx157144_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_mod157150_
                    (let ()
                      (declare (not safe))
                      (hash-get _ht157146_ _id157148_))))
              (let ((_$e157153_ _mod157150_))
                (if _$e157153_
                    _$e157153_
                    (let* ((_mod157156_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-import-ssxi _ctx157144_)))
                           (_val157161_
                            (let ((_$e157158_ _mod157156_))
                              (if _$e157158_ _$e157158_ '#!void))))
                      (let ()
                        (declare (not safe))
                        (hash-put! _ht157146_ _id157148_ _val157161_))
                      _val157161_)))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_ctx157142_)
        (if (##structure-ref _ctx157142_ '1 gx#expander-context::t '#f)
            (let ((__tmp157564
                   (##structure-ref
                    _ctx157142_
                    '1
                    gx#expander-context::t
                    '#f)))
              (declare (not safe))
              (gxc#optimizer-import-ssxi-by-id __tmp157564))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_id157119_)
        (letrec ((_catch-e157121_
                  (lambda (_exn157140_)
                    (if (gxc#current-compile-verbose)
                        (begin
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"Failed to load ssxi module for "
                             _id157119_))
                          (let ()
                            (declare (not safe))
                            (display-exception _exn157140_)))
                        '#!void)
                    '#f))
                 (_import-e157122_
                  (lambda ()
                    (let* ((_str-id157125_
                            (string-append
                             (let ()
                               (declare (not safe))
                               (gxc#module-id->path-string _id157119_))
                             '".ssxi"))
                           (_artefact-path157133_
                            (let ((_odir157126157128_
                                   (gxc#current-compile-output-dir)))
                              (if _odir157126157128_
                                  (let ((_odir157131_ _odir157126157128_))
                                    (path-expand
                                     (string-append _str-id157125_ '".ss")
                                     _odir157131_))
                                  '#f)))
                           (_library-path157135_
                            (string->symbol
                             (string-append '":" _str-id157125_ '".ss")))
                           (_ssxi-path157137_
                            (if (and _artefact-path157133_
                                     (file-exists? _artefact-path157133_))
                                _artefact-path157133_
                                _library-path157135_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _ssxi-path157137_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _ssxi-path157137_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (with-catch _catch-e157121_ _import-e157122_)))))
    (define gxc#optimize-source
      (lambda (_stx157110_)
        (let () (declare (not safe)) (gxc#apply-collect-mutators _stx157110_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _stx157110_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _stx157110_))
        (let* ((_stx157112_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _stx157110_)))
               (_stx157114_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _stx157112_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _stx157114_))
          (let ((_stx157117_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _stx157114_))))
            (declare (not safe))
            (gxc#apply-optimize-call _stx157117_)))))
    (define gxc#&generate-ssxi::t
      (let ((__tmp157567 (list gxc#&generate-runtime-empty::t))
            (__tmp157565
             (let ((__tmp157566
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp157566 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#&generate-ssxi::t
         '&generate-ssxi
         __tmp157567
         '()
         __tmp157565
         '#f)))
    (define gxc#&generate-ssxi?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#&generate-ssxi::t)))
    (define gxc#make-&generate-ssxi
      (lambda _$args157107_
        (apply make-instance gxc#&generate-ssxi::t _$args157107_)))
    (define gxc#&generate-ssxi-bind-methods!
      (let ((__tmp157568
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
        (make-promise __tmp157568)))
    (define gxc#apply-generate-ssxi
      (lambda (_stx157099_)
        (force gxc#&generate-ssxi-bind-methods!)
        (let* ((_self157102_
                (let ((__obj157539
                       (let ()
                         (declare (not safe))
                         (##structure gxc#&generate-ssxi::t))))
                  __obj157539))
               (__tmp157569
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self157102_ _stx157099_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp157569
           gxc#current-compile-method
           _self157102_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_self157059_ _stx157060_)
        (let* ((_g157062157072_
                (lambda (_g157063157069_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g157063157069_))))
               (_g157061157096_
                (lambda (_g157063157075_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g157063157075_))
                      (let ((_e157067157077_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g157063157075_))))
                        (let ((_hd157066157080_
                               (let ()
                                 (declare (not safe))
                                 (##car _e157067157077_)))
                              (_tl157065157082_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e157067157077_))))
                          ((lambda (_L157085_)
                             (let ((__tmp157572
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _self157059_
                                         _stx157060_))))
                                   (__tmp157570
                                    (let ((__tmp157571
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp157571 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp157572
                                gx#current-expander-phi
                                __tmp157570)))
                           _tl157065157082_)))
                      (let ()
                        (declare (not safe))
                        (_g157062157072_ _g157063157075_))))))
          (declare (not safe))
          (_g157061157096_ _stx157060_))))
    (define gxc#generate-ssxi-module%
      (lambda (_self156998_ _stx156999_)
        (let* ((_g157001157015_
                (lambda (_g157002157012_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g157002157012_))))
               (_g157000157056_
                (lambda (_g157002157018_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g157002157018_))
                      (let ((_e157007157020_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g157002157018_))))
                        (let ((_hd157006157023_
                               (let ()
                                 (declare (not safe))
                                 (##car _e157007157020_)))
                              (_tl157005157025_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e157007157020_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl157005157025_))
                              (let ((_e157010157028_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl157005157025_))))
                                (let ((_hd157009157031_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e157010157028_)))
                                      (_tl157008157033_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e157010157028_))))
                                  ((lambda (_L157036_ _L157037_)
                                     (let* ((_ctx157050_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L157037_)))
                                            (_code157052_
                                             (##structure-ref
                                              _ctx157050_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp157573
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self156998_
                                                   _code157052_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp157573
                                          gx#current-expander-context
                                          _ctx157050_))))
                                   _tl157008157033_
                                   _hd157009157031_)))
                              (let ()
                                (declare (not safe))
                                (_g157001157015_ _g157002157018_)))))
                      (let ()
                        (declare (not safe))
                        (_g157001157015_ _g157002157018_))))))
          (declare (not safe))
          (_g157000157056_ _stx156999_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_self156807_ _stx156808_)
        (letrec ((_generate-e156810_
                  (lambda (_id156987_)
                    (let* ((_sym156989_
                            (if (let ((__tmp157574
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp157574))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _id156987_))
                                '#f))
                           (_$e156991_
                            (if _sym156989_
                                (let ()
                                  (declare (not safe))
                                  (gxc#optimizer-lookup-type _sym156989_))
                                '#f)))
                      (if _$e156991_
                          ((lambda (_type156994_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"generate typedecl " _sym156989_))
                             (let* ((_typedecl156996_
                                     (let ((__method157540
                                            (let ()
                                              (declare (not safe))
                                              (method-ref
                                               _type156994_
                                               'typedecl))))
                                       (if __method157540
                                           (__method157540 _type156994_)
                                           (let ()
                                             (declare (not safe))
                                             (error '"Missing method"
                                                    _type156994_
                                                    'typedecl)))))
                                    (__tmp157575
                                     (let ((__tmp157576
                                            (let ()
                                              (declare (not safe))
                                              (cons _typedecl156996_ '()))))
                                       (declare (not safe))
                                       (cons _sym156989_ __tmp157576))))
                               (declare (not safe))
                               (cons 'declare-type __tmp157575)))
                           _$e156991_)
                          '(begin))))))
          (let* ((___stx157236157237_ _stx156808_)
                 (_g156813156851_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx157236157237_)))))
            (let ((___kont157238157239_
                   (lambda (_L156969_)
                     (let ()
                       (declare (not safe))
                       (_generate-e156810_ _L156969_))))
                  (___kont157240157241_
                   (lambda (_L156904_)
                     (let ((_types156930_
                            (map _generate-e156810_
                                 (let ((__tmp157577
                                        (lambda (_g156922156925_
                                                 _g156923156927_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g156922156925_
                                                  _g156923156927_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp157577 '() _L156904_)))))
                       (declare (not safe))
                       (cons 'begin _types156930_)))))
              (let ((___match157291157292_
                     (lambda (_e156831156856_
                              _hd156830156859_
                              _tl156829156861_
                              _e156834156864_
                              _hd156833156867_
                              _tl156832156869_
                              ___splice157242157243_
                              _target156835156872_
                              _tl156837156874_)
                       (letrec ((_loop156838156877_
                                 (lambda (_hd156836156880_ _id156842156882_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd156836156880_))
                                       (let ((_e156839156885_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd156836156880_))))
                                         (let ((_lp-tl156841156890_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e156839156885_)))
                                               (_lp-hd156840156888_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e156839156885_))))
                                           (let ((__tmp157578
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd156840156888_
                                                          _id156842156882_))))
                                             (declare (not safe))
                                             (_loop156838156877_
                                              _lp-tl156841156890_
                                              __tmp157578))))
                                       (let ((_id156843156893_
                                              (reverse _id156842156882_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl156832156869_))
                                             (let ((_e156846156896_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl156832156869_))))
                                               (let ((_tl156844156901_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e156846156896_)))
                                                     (_hd156845156899_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e156846156896_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl156844156901_))
                                                     (___kont157240157241_
                                                      _id156843156893_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g156813156851_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g156813156851_))))))))
                         (let ()
                           (declare (not safe))
                           (_loop156838156877_ _target156835156872_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx157236157237_))
                    (let ((_e156818156937_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx157236157237_))))
                      (let ((_tl156816156942_
                             (let ()
                               (declare (not safe))
                               (##cdr _e156818156937_)))
                            (_hd156817156940_
                             (let ()
                               (declare (not safe))
                               (##car _e156818156937_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl156816156942_))
                            (let ((_e156821156945_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl156816156942_))))
                              (let ((_tl156819156950_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e156821156945_)))
                                    (_hd156820156948_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e156821156945_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd156820156948_))
                                    (let ((_e156824156953_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd156820156948_))))
                                      (let ((_tl156822156958_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e156824156953_)))
                                            (_hd156823156956_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e156824156953_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl156822156958_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl156819156950_))
                                                (let ((_e156827156961_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl156819156950_))))
                                                  (let ((_tl156825156966_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e156827156961_)))
                                                        (_hd156826156964_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e156827156961_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl156825156966_))
                                                        (___kont157238157239_
                                                         _hd156823156956_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _hd156820156948_))
                                                            (let ((___splice157242157243_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _hd156820156948_ '0))))
                      (let ((_tl156837156874_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice157242157243_ '1)))
                            (_target156835156872_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice157242157243_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl156837156874_))
                            (___match157291157292_
                             _e156818156937_
                             _hd156817156940_
                             _tl156816156942_
                             _e156821156945_
                             _hd156820156948_
                             _tl156819156950_
                             ___splice157242157243_
                             _target156835156872_
                             _tl156837156874_)
                            (let () (declare (not safe)) (_g156813156851_)))))
                    (let () (declare (not safe)) (_g156813156851_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _hd156820156948_))
                                                    (let ((___splice157242157243_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _hd156820156948_
                                                              '0))))
                                                      (let ((_tl156837156874_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice157242157243_ '1)))
                    (_target156835156872_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice157242157243_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl156837156874_))
                    (___match157291157292_
                     _e156818156937_
                     _hd156817156940_
                     _tl156816156942_
                     _e156821156945_
                     _hd156820156948_
                     _tl156819156950_
                     ___splice157242157243_
                     _target156835156872_
                     _tl156837156874_)
                    (let () (declare (not safe)) (_g156813156851_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g156813156851_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _hd156820156948_))
                                                (let ((___splice157242157243_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _hd156820156948_
                                                          '0))))
                                                  (let ((_tl156837156874_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice157242157243_
                                                            '1)))
                                                        (_target156835156872_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice157242157243_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl156837156874_))
                                                        (___match157291157292_
                                                         _e156818156937_
                                                         _hd156817156940_
                                                         _tl156816156942_
                                                         _e156821156945_
                                                         _hd156820156948_
                                                         _tl156819156950_
                                                         ___splice157242157243_
                                                         _target156835156872_
                                                         _tl156837156874_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g156813156851_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g156813156851_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd156820156948_))
                                        (let ((___splice157242157243_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd156820156948_
                                                  '0))))
                                          (let ((_tl156837156874_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice157242157243_
                                                    '1)))
                                                (_target156835156872_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice157242157243_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl156837156874_))
                                                (___match157291157292_
                                                 _e156818156937_
                                                 _hd156817156940_
                                                 _tl156816156942_
                                                 _e156821156945_
                                                 _hd156820156948_
                                                 _tl156819156950_
                                                 ___splice157242157243_
                                                 _target156835156872_
                                                 _tl156837156874_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g156813156851_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g156813156851_))))))
                            (let () (declare (not safe)) (_g156813156851_)))))
                    (let () (declare (not safe)) (_g156813156851_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_self156360_ _stx156361_)
        (let* ((___stx157294157295_ _stx156361_)
               (_g156365156467_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx157294157295_)))))
          (let ((___kont157296157297_
                 (lambda (_L156757_ _L156758_ _L156759_ _L156760_ _L156761_)
                   (let ((__tmp157579
                          (let ((__tmp157586
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L156760_)))
                                (__tmp157580
                                 (let ((__tmp157585
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L156759_)))
                                       (__tmp157581
                                        (let ((__tmp157584
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L156758_)))
                                              (__tmp157582
                                               (let ((__tmp157583
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L156757_))))
                                                 (declare (not safe))
                                                 (cons __tmp157583 '()))))
                                          (declare (not safe))
                                          (cons __tmp157584 __tmp157582))))
                                   (declare (not safe))
                                   (cons __tmp157585 __tmp157581))))
                            (declare (not safe))
                            (cons __tmp157586 __tmp157580))))
                     (declare (not safe))
                     (cons 'declare-method __tmp157579))))
                (___kont157298157299_
                 (lambda (_L156583_ _L156584_ _L156585_ _L156586_)
                   (let ((__tmp157587
                          (let ((__tmp157593
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L156585_)))
                                (__tmp157588
                                 (let ((__tmp157592
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L156584_)))
                                       (__tmp157589
                                        (let ((__tmp157591
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L156583_)))
                                              (__tmp157590
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '#f '()))))
                                          (declare (not safe))
                                          (cons __tmp157591 __tmp157590))))
                                   (declare (not safe))
                                   (cons __tmp157592 __tmp157589))))
                            (declare (not safe))
                            (cons __tmp157593 __tmp157588))))
                     (declare (not safe))
                     (cons 'declare-method __tmp157587))))
                (___kont157300157301_ (lambda () '(begin))))
            (let ((___match157429157430_
                   (lambda (_e156374156629_
                            _hd156373156632_
                            _tl156372156634_
                            _e156377156637_
                            _hd156376156640_
                            _tl156375156642_
                            _e156380156645_
                            _hd156379156648_
                            _tl156378156650_
                            _e156383156653_
                            _hd156382156656_
                            _tl156381156658_
                            _e156386156661_
                            _hd156385156664_
                            _tl156384156666_
                            _e156389156669_
                            _hd156388156672_
                            _tl156387156674_
                            _e156392156677_
                            _hd156391156680_
                            _tl156390156682_
                            _e156395156685_
                            _hd156394156688_
                            _tl156393156690_
                            _e156398156693_
                            _hd156397156696_
                            _tl156396156698_
                            _e156401156701_
                            _hd156400156704_
                            _tl156399156706_
                            _e156404156709_
                            _hd156403156712_
                            _tl156402156714_
                            _e156407156717_
                            _hd156406156720_
                            _tl156405156722_
                            _e156410156725_
                            _hd156409156728_
                            _tl156408156730_
                            _e156413156733_
                            _hd156412156736_
                            _tl156411156738_
                            _e156416156741_
                            _hd156415156744_
                            _tl156414156746_
                            _e156419156749_
                            _hd156418156752_
                            _tl156417156754_)
                     (let ((_L156757_ _hd156418156752_)
                           (_L156758_ _hd156409156728_)
                           (_L156759_ _hd156400156704_)
                           (_L156760_ _hd156391156680_)
                           (_L156761_ _hd156382156656_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L156761_
                              'bind-method!))
                           (___kont157296157297_
                            _L156757_
                            _L156758_
                            _L156759_
                            _L156760_
                            _L156761_)
                           (___kont157300157301_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx157294157295_))
                  (let ((_e156374156629_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx157294157295_))))
                    (let ((_tl156372156634_
                           (let ()
                             (declare (not safe))
                             (##cdr _e156374156629_)))
                          (_hd156373156632_
                           (let ()
                             (declare (not safe))
                             (##car _e156374156629_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl156372156634_))
                          (let ((_e156377156637_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl156372156634_))))
                            (let ((_tl156375156642_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e156377156637_)))
                                  (_hd156376156640_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e156377156637_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd156376156640_))
                                  (let ((_e156380156645_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd156376156640_))))
                                    (let ((_tl156378156650_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e156380156645_)))
                                          (_hd156379156648_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e156380156645_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd156379156648_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd156379156648_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl156378156650_))
                                                  (let ((_e156383156653_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl156378156650_))))
                                                    (let ((_tl156381156658_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e156383156653_)))
                                                          (_hd156382156656_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e156383156653_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl156381156658_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl156375156642_))
                      (let ((_e156386156661_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl156375156642_))))
                        (let ((_tl156384156666_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e156386156661_)))
                              (_hd156385156664_
                               (let ()
                                 (declare (not safe))
                                 (##car _e156386156661_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd156385156664_))
                              (let ((_e156389156669_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd156385156664_))))
                                (let ((_tl156387156674_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e156389156669_)))
                                      (_hd156388156672_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e156389156669_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd156388156672_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd156388156672_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl156387156674_))
                                              (let ((_e156392156677_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl156387156674_))))
                                                (let ((_tl156390156682_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e156392156677_)))
                                                      (_hd156391156680_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e156392156677_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl156390156682_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl156384156666_))
                                                          (let ((_e156395156685_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl156384156666_))))
                    (let ((_tl156393156690_
                           (let ()
                             (declare (not safe))
                             (##cdr _e156395156685_)))
                          (_hd156394156688_
                           (let ()
                             (declare (not safe))
                             (##car _e156395156685_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd156394156688_))
                          (let ((_e156398156693_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd156394156688_))))
                            (let ((_tl156396156698_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e156398156693_)))
                                  (_hd156397156696_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e156398156693_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd156397156696_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd156397156696_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl156396156698_))
                                          (let ((_e156401156701_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl156396156698_))))
                                            (let ((_tl156399156706_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e156401156701_)))
                                                  (_hd156400156704_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e156401156701_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl156399156706_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl156393156690_))
                                                      (let ((_e156404156709_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl156393156690_))))
                (let ((_tl156402156714_
                       (let () (declare (not safe)) (##cdr _e156404156709_)))
                      (_hd156403156712_
                       (let () (declare (not safe)) (##car _e156404156709_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd156403156712_))
                      (let ((_e156407156717_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd156403156712_))))
                        (let ((_tl156405156722_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e156407156717_)))
                              (_hd156406156720_
                               (let ()
                                 (declare (not safe))
                                 (##car _e156407156717_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd156406156720_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd156406156720_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl156405156722_))
                                      (let ((_e156410156725_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl156405156722_))))
                                        (let ((_tl156408156730_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e156410156725_)))
                                              (_hd156409156728_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e156410156725_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl156408156730_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl156402156714_))
                                                  (let ((_e156413156733_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl156402156714_))))
                                                    (let ((_tl156411156738_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e156413156733_)))
                                                          (_hd156412156736_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e156413156733_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd156412156736_))
                                                          (let ((_e156416156741_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd156412156736_))))
                    (let ((_tl156414156746_
                           (let ()
                             (declare (not safe))
                             (##cdr _e156416156741_)))
                          (_hd156415156744_
                           (let ()
                             (declare (not safe))
                             (##car _e156416156741_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd156415156744_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd156415156744_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl156414156746_))
                                  (let ((_e156419156749_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl156414156746_))))
                                    (let ((_tl156417156754_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e156419156749_)))
                                          (_hd156418156752_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e156419156749_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl156417156754_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl156411156738_))
                                              (___match157429157430_
                                               _e156374156629_
                                               _hd156373156632_
                                               _tl156372156634_
                                               _e156377156637_
                                               _hd156376156640_
                                               _tl156375156642_
                                               _e156380156645_
                                               _hd156379156648_
                                               _tl156378156650_
                                               _e156383156653_
                                               _hd156382156656_
                                               _tl156381156658_
                                               _e156386156661_
                                               _hd156385156664_
                                               _tl156384156666_
                                               _e156389156669_
                                               _hd156388156672_
                                               _tl156387156674_
                                               _e156392156677_
                                               _hd156391156680_
                                               _tl156390156682_
                                               _e156395156685_
                                               _hd156394156688_
                                               _tl156393156690_
                                               _e156398156693_
                                               _hd156397156696_
                                               _tl156396156698_
                                               _e156401156701_
                                               _hd156400156704_
                                               _tl156399156706_
                                               _e156404156709_
                                               _hd156403156712_
                                               _tl156402156714_
                                               _e156407156717_
                                               _hd156406156720_
                                               _tl156405156722_
                                               _e156410156725_
                                               _hd156409156728_
                                               _tl156408156730_
                                               _e156413156733_
                                               _hd156412156736_
                                               _tl156411156738_
                                               _e156416156741_
                                               _hd156415156744_
                                               _tl156414156746_
                                               _e156419156749_
                                               _hd156418156752_
                                               _tl156417156754_)
                                              (___kont157300157301_))
                                          (___kont157300157301_))))
                                  (___kont157300157301_))
                              (___kont157300157301_))
                          (___kont157300157301_))))
                  (___kont157300157301_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl156402156714_))
                                                      (if (let ((__tmp157594
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp157594 'bind-method!))
                  (let ((_L156583_ _hd156409156728_)
                        (_L156584_ _hd156400156704_)
                        (_L156585_ _hd156391156680_)
                        (_L156586_ _hd156382156656_))
                    (___kont157298157299_
                     _L156583_
                     _L156584_
                     _L156585_
                     _L156586_))
                  (___kont157300157301_))
              (___kont157300157301_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont157300157301_))))
                                      (___kont157300157301_))
                                  (___kont157300157301_))
                              (___kont157300157301_))))
                      (___kont157300157301_))))
              (___kont157300157301_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont157300157301_))))
                                          (___kont157300157301_))
                                      (___kont157300157301_))
                                  (___kont157300157301_))))
                          (___kont157300157301_))))
                  (___kont157300157301_))
              (___kont157300157301_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont157300157301_))
                                          (___kont157300157301_))
                                      (___kont157300157301_))))
                              (___kont157300157301_))))
                      (___kont157300157301_))
                  (___kont157300157301_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont157300157301_))
                                              (___kont157300157301_))
                                          (___kont157300157301_))))
                                  (___kont157300157301_))))
                          (___kont157300157301_))))
                  (___kont157300157301_)))))))
    (define gxc#!alias::typedecl
      (lambda (_self156336_)
        (let* ((_self156337156343_ _self156336_)
               (_E156339156347_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self156337156343_))))
               (_K156340156352_
                (lambda (_alias-id156350_)
                  (let ((__tmp157595
                         (let ()
                           (declare (not safe))
                           (cons _alias-id156350_ '()))))
                    (declare (not safe))
                    (cons '@alias __tmp157595)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self156337156343_ 'gxc#!alias::t))
              (let* ((_e156341156355_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156337156343_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_alias-id156358_ _e156341156355_))
                (declare (not safe))
                (_K156340156352_ _alias-id156358_))
              (let () (declare (not safe)) (_E156339156347_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_self156127_)
        (let* ((_self156128156143_ _self156127_)
               (_E156130156147_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self156128156143_))))
               (_K156131156161_
                (lambda (_methods156150_
                         _metaclass156151_
                         _final?156152_
                         _struct?156153_
                         _constructor156154_
                         _fields156155_
                         _slots156156_
                         _precendence-list156157_
                         _super156158_
                         _id156159_)
                  (let ((__tmp157596
                         (let ((__tmp157597
                                (let ((__tmp157598
                                       (let ((__tmp157599
                                              (let ((__tmp157600
                                                     (let ((__tmp157601
                                                            (let ((__tmp157602
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp157603
                                  (let ((__tmp157604
                                         (let ((__tmp157605
                                                (let ((__tmp157606
                                                       (if _methods156150_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (hash->list
                                                              _methods156150_))
                                                           '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp157606 '()))))
                                           (declare (not safe))
                                           (cons _metaclass156151_
                                                 __tmp157605))))
                                    (declare (not safe))
                                    (cons _final?156152_ __tmp157604))))
                             (declare (not safe))
                             (cons _struct?156153_ __tmp157603))))
                      (declare (not safe))
                      (cons _constructor156154_ __tmp157602))))
               (declare (not safe))
               (cons _fields156155_ __tmp157601))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _slots156156_
                                                      __tmp157600))))
                                         (declare (not safe))
                                         (cons _precendence-list156157_
                                               __tmp157599))))
                                  (declare (not safe))
                                  (cons _super156158_ __tmp157598))))
                           (declare (not safe))
                           (cons _id156159_ __tmp157597))))
                    (declare (not safe))
                    (cons '@class __tmp157596)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self156128156143_ 'gxc#!class::t))
              (let* ((_e156132156164_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156128156143_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_id156167_ _e156132156164_)
                     (_e156133156169_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156128156143_
                         '2
                         gxc#!class::t
                         '#f)))
                     (_super156172_ _e156133156169_)
                     (_e156134156174_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156128156143_
                         '3
                         gxc#!class::t
                         '#f)))
                     (_precendence-list156177_ _e156134156174_)
                     (_e156135156179_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156128156143_
                         '4
                         gxc#!class::t
                         '#f)))
                     (_slots156182_ _e156135156179_)
                     (_e156136156184_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156128156143_
                         '5
                         gxc#!class::t
                         '#f)))
                     (_fields156187_ _e156136156184_)
                     (_e156137156189_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156128156143_
                         '6
                         gxc#!class::t
                         '#f)))
                     (_constructor156192_ _e156137156189_)
                     (_e156138156194_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156128156143_
                         '7
                         gxc#!class::t
                         '#f)))
                     (_struct?156197_ _e156138156194_)
                     (_e156139156199_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156128156143_
                         '8
                         gxc#!class::t
                         '#f)))
                     (_final?156202_ _e156139156199_)
                     (_e156140156204_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156128156143_
                         '9
                         gxc#!class::t
                         '#f)))
                     (_metaclass156207_ _e156140156204_)
                     (_e156141156209_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156128156143_
                         '10
                         gxc#!class::t
                         '#f)))
                     (_methods156212_ _e156141156209_))
                (declare (not safe))
                (_K156131156161_
                 _methods156212_
                 _metaclass156207_
                 _final?156202_
                 _struct?156197_
                 _constructor156192_
                 _fields156187_
                 _slots156182_
                 _precendence-list156177_
                 _super156172_
                 _id156167_))
              (let () (declare (not safe)) (_E156130156147_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_self155981_)
        (let* ((_self155982155988_ _self155981_)
               (_E155984155992_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self155982155988_))))
               (_K155985155997_
                (lambda (_klass-id155995_)
                  (let ((__tmp157607
                         (let ()
                           (declare (not safe))
                           (cons _klass-id155995_ '()))))
                    (declare (not safe))
                    (cons '@predicate __tmp157607)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self155982155988_
                 'gxc#!predicate::t))
              (let* ((_e155986156000_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155982155988_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id156003_ _e155986156000_))
                (declare (not safe))
                (_K155985155997_ _klass-id156003_))
              (let () (declare (not safe)) (_E155984155992_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_self155835_)
        (let* ((_self155836155842_ _self155835_)
               (_E155838155846_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self155836155842_))))
               (_K155839155851_
                (lambda (_klass-id155849_)
                  (let ((__tmp157608
                         (let ()
                           (declare (not safe))
                           (cons _klass-id155849_ '()))))
                    (declare (not safe))
                    (cons '@constructor __tmp157608)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self155836155842_
                 'gxc#!constructor::t))
              (let* ((_e155840155854_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155836155842_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id155857_ _e155840155854_))
                (declare (not safe))
                (_K155839155851_ _klass-id155857_))
              (let () (declare (not safe)) (_E155838155846_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_self155675_)
        (let* ((_self155676155684_ _self155675_)
               (_E155678155688_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self155676155684_))))
               (_K155679155695_
                (lambda (_checked?155691_ _slot155692_ _klass-id155693_)
                  (let ((__tmp157609
                         (let ((__tmp157610
                                (let ((__tmp157611
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?155691_ '()))))
                                  (declare (not safe))
                                  (cons _slot155692_ __tmp157611))))
                           (declare (not safe))
                           (cons _klass-id155693_ __tmp157610))))
                    (declare (not safe))
                    (cons '@accessor __tmp157609)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self155676155684_
                 'gxc#!accessor::t))
              (let* ((_e155680155698_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155676155684_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id155701_ _e155680155698_)
                     (_e155681155703_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155676155684_
                         '2
                         gxc#!accessor::t
                         '#f)))
                     (_slot155706_ _e155681155703_)
                     (_e155682155708_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155676155684_
                         '3
                         gxc#!accessor::t
                         '#f)))
                     (_checked?155711_ _e155682155708_))
                (declare (not safe))
                (_K155679155695_
                 _checked?155711_
                 _slot155706_
                 _klass-id155701_))
              (let () (declare (not safe)) (_E155678155688_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_self155515_)
        (let* ((_self155516155524_ _self155515_)
               (_E155518155528_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self155516155524_))))
               (_K155519155535_
                (lambda (_checked?155531_ _slot155532_ _klass-id155533_)
                  (let ((__tmp157612
                         (let ((__tmp157613
                                (let ((__tmp157614
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?155531_ '()))))
                                  (declare (not safe))
                                  (cons _slot155532_ __tmp157614))))
                           (declare (not safe))
                           (cons _klass-id155533_ __tmp157613))))
                    (declare (not safe))
                    (cons '@mutator __tmp157612)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self155516155524_ 'gxc#!mutator::t))
              (let* ((_e155520155538_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155516155524_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id155541_ _e155520155538_)
                     (_e155521155543_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155516155524_
                         '2
                         gxc#!mutator::t
                         '#f)))
                     (_slot155546_ _e155521155543_)
                     (_e155522155548_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155516155524_
                         '3
                         gxc#!mutator::t
                         '#f)))
                     (_checked?155551_ _e155522155548_))
                (declare (not safe))
                (_K155519155535_
                 _checked?155551_
                 _slot155546_
                 _klass-id155541_))
              (let () (declare (not safe)) (_E155518155528_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!lambda::typedecl
      (lambda (_self155341_)
        (let* ((_self155342155352_ _self155341_)
               (_E155344155356_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self155342155352_))))
               (_K155345155367_
                (lambda (_typedecl155359_
                         _inline155360_
                         _dispatch155361_
                         _arity155362_)
                  (if _inline155360_
                      (let ((_$e155364_ _typedecl155359_))
                        (if _$e155364_
                            _$e155364_
                            (let ()
                              (declare (not safe))
                              (error '"Cannot generate typedecl for inline rules"))))
                      (let ((__tmp157615
                             (let ((__tmp157616
                                    (let ()
                                      (declare (not safe))
                                      (cons _dispatch155361_ '()))))
                               (declare (not safe))
                               (cons _arity155362_ __tmp157616))))
                        (declare (not safe))
                        (cons '@lambda __tmp157615))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self155342155352_ 'gxc#!lambda::t))
              (let* ((_e155346155370_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155342155352_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e155347155373_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155342155352_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity155376_ _e155347155373_)
                     (_e155348155378_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155342155352_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch155381_ _e155348155378_)
                     (_e155349155383_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155342155352_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline155386_ _e155349155383_)
                     (_e155350155388_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155342155352_
                         '5
                         gxc#!lambda::t
                         '#f)))
                     (_typedecl155391_ _e155350155388_))
                (declare (not safe))
                (_K155345155367_
                 _typedecl155391_
                 _inline155386_
                 _dispatch155381_
                 _arity155376_))
              (let () (declare (not safe)) (_E155344155356_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_self155152_)
        (letrec ((_clause-e155154_
                  (lambda (_clause155184_)
                    (let* ((_clause155185155193_ _clause155184_)
                           (_E155187155197_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _clause155185155193_))))
                           (_K155188155203_
                            (lambda (_dispatch155200_ _arity155201_)
                              (let ((__tmp157617
                                     (let ()
                                       (declare (not safe))
                                       (cons _dispatch155200_ '()))))
                                (declare (not safe))
                                (cons _arity155201_ __tmp157617)))))
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _clause155185155193_
                             'gxc#!lambda::t))
                          (let* ((_e155189155206_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause155185155193_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                                 (_e155190155209_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause155185155193_
                                     '2
                                     gxc#!lambda::t
                                     '#f)))
                                 (_arity155212_ _e155190155209_)
                                 (_e155191155214_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause155185155193_
                                     '3
                                     gxc#!lambda::t
                                     '#f)))
                                 (_dispatch155217_ _e155191155214_))
                            (declare (not safe))
                            (_K155188155203_ _dispatch155217_ _arity155212_))
                          (let () (declare (not safe)) (_E155187155197_)))))))
          (let* ((_self155155155162_ _self155152_)
                 (_E155157155166_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching" _self155155155162_))))
                 (_K155158155173_
                  (lambda (_clauses155169_)
                    (let ((_clauses155171_
                           (map _clause-e155154_ _clauses155169_)))
                      (declare (not safe))
                      (cons '@case-lambda _clauses155171_)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of?
                   _self155155155162_
                   'gxc#!case-lambda::t))
                (let* ((_e155159155176_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self155155155162_
                           '1
                           gxc#!type::t
                           '#f)))
                       (_e155160155179_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self155155155162_
                           '2
                           gxc#!case-lambda::t
                           '#f)))
                       (_clauses155182_ _e155160155179_))
                  (declare (not safe))
                  (_K155158155173_ _clauses155182_))
                (let () (declare (not safe)) (_E155157155166_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_self154995_)
        (let* ((_self154996155004_ _self154995_)
               (_E154998155008_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154996155004_))))
               (_K154999155014_
                (lambda (_dispatch155011_ _table155012_)
                  (let ((__tmp157618
                         (let ((__tmp157619
                                (let ()
                                  (declare (not safe))
                                  (cons _dispatch155011_ '()))))
                           (declare (not safe))
                           (cons _table155012_ __tmp157619))))
                    (declare (not safe))
                    (cons '@kw-lambda __tmp157618)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self154996155004_
                 'gxc#!kw-lambda::t))
              (let* ((_e155000155017_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154996155004_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e155001155020_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154996155004_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table155023_ _e155001155020_)
                     (_e155002155025_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154996155004_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch155028_ _e155002155025_))
                (declare (not safe))
                (_K154999155014_ _dispatch155028_ _table155023_))
              (let () (declare (not safe)) (_E154998155008_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda::t
       'typedecl
       gxc#!kw-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_self154838_)
        (let* ((_self154839154847_ _self154838_)
               (_E154841154851_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154839154847_))))
               (_K154842154857_
                (lambda (_main154854_ _keys154855_)
                  (let ((__tmp157620
                         (let ((__tmp157621
                                (let ()
                                  (declare (not safe))
                                  (cons _main154854_ '()))))
                           (declare (not safe))
                           (cons _keys154855_ __tmp157621))))
                    (declare (not safe))
                    (cons '@kw-lambda-dispatch __tmp157620)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self154839154847_
                 'gxc#!kw-lambda-primary::t))
              (let* ((_e154843154860_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154839154847_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e154844154863_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154839154847_
                         '2
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_keys154866_ _e154844154863_)
                     (_e154845154868_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154839154847_
                         '3
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_main154871_ _e154845154868_))
                (declare (not safe))
                (_K154842154857_ _main154871_ _keys154866_))
              (let () (declare (not safe)) (_E154841154851_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))))
