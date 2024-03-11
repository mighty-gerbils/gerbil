(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1710170112)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (gxc#current-compile-optimizer-info)
            '#!void
            (gxc#current-compile-optimizer-info
             (let ((__obj157535
                    (let ()
                      (declare (not safe))
                      (##structure gxc#optimizer-info::t '#f '#f '#f))))
               (gxc#optimizer-info:::init! __obj157535)
               __obj157535)))))
    (define gxc#optimize!
      (lambda (_ctx157228_)
        (let ((__tmp157541
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _ctx157228_))
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-builtin-ssxi _ctx157228_))
                 (let ((__tmp157543
                        (##structure-ref
                         (gxc#current-compile-optimizer-info)
                         '2
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp157542
                        (##structure-ref
                         _ctx157228_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp157543 __tmp157542 '#t))
                 (let ((_code157231_
                        (let ((__tmp157544
                               (##structure-ref
                                _ctx157228_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp157544))))
                   (##structure-set!
                    _ctx157228_
                    _code157231_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp157540 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp157539 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters
           __tmp157541
           gxc#current-compile-mutators
           __tmp157540
           gxc#current-compile-local-type
           __tmp157539))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_ctx157217_)
        (letrec ((_load-it!157219_
                  (lambda (_id157226_)
                    (if (let ((__tmp157546
                               (##structure-ref
                                (gxc#current-compile-optimizer-info)
                                '2
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp157546 _id157226_))
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-import-ssxi-by-id _id157226_))
                          (let ((__tmp157545
                                 (##structure-ref
                                  (gxc#current-compile-optimizer-info)
                                  '2
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp157545 _id157226_ '#t)))))))
          (let* ((_modid157221_
                  (##structure-ref _ctx157217_ '1 gx#expander-context::t '#f))
                 (_modid-str157223_ (symbol->string _modid157221_)))
            (if (let ()
                  (declare (not safe))
                  (string-prefix? '"gerbil/core" _modid-str157223_))
                (let ()
                  (declare (not safe))
                  (_load-it!157219_ 'gerbil/builtin))
                (for-each
                 _load-it!157219_
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
      (lambda (_ctx157162_)
        (letrec* ((_deps157164_
                   (let* ((_imports157208_
                           (##structure-ref
                            _ctx157162_
                            '8
                            gx#module-context::t
                            '#f))
                          (_$e157210_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _ctx157162_))))
                     (if _$e157210_
                         ((lambda (_g157212157214_)
                            (let ()
                              (declare (not safe))
                              (cons _g157212157214_ _imports157208_)))
                          _$e157210_)
                         _imports157208_))))
          (let _lp157166_ ((_rest157168_ _deps157164_))
            (let* ((_rest157169157177_ _rest157168_)
                   (_else157171157185_ (lambda () '#!void))
                   (_K157173157196_
                    (lambda (_rest157188_ _hd157189_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _hd157189_
                             'gx#module-context::t))
                          (begin
                            (if (let ((__tmp157560
                                       (##structure-ref
                                        (gxc#current-compile-optimizer-info)
                                        '2
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp157559
                                       (##structure-ref
                                        _hd157189_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (hash-get __tmp157560 __tmp157559))
                                '#!void
                                (begin
                                  (let ((_$e157191_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _hd157189_))))
                                    (if _$e157191_
                                        ((lambda (_pre157194_)
                                           (let ((__tmp157557
                                                  (let ((__tmp157558
                                                         (##structure-ref
                                                          _hd157189_
                                                          '8
                                                          gx#module-context::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (cons _pre157194_
                                                          __tmp157558))))
                                             (declare (not safe))
                                             (_lp157166_ __tmp157557)))
                                         _$e157191_)
                                        (let ((__tmp157556
                                               (##structure-ref
                                                _hd157189_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                          (declare (not safe))
                                          (_lp157166_ __tmp157556))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _hd157189_))))
                            (let ()
                              (declare (not safe))
                              (_lp157166_ _rest157188_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _hd157189_
                                 'gx#prelude-context::t))
                              (begin
                                (if (let ((__tmp157555
                                           (##structure-ref
                                            (gxc#current-compile-optimizer-info)
                                            '2
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp157554
                                           (##structure-ref
                                            _hd157189_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (hash-get __tmp157555 __tmp157554))
                                    '#!void
                                    (begin
                                      (let ((__tmp157553
                                             (##structure-ref
                                              _hd157189_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_lp157166_ __tmp157553))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi _hd157189_))))
                                (let ()
                                  (declare (not safe))
                                  (_lp157166_ _rest157188_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _hd157189_
                                     'gx#module-import::t))
                                  (let ((__tmp157551
                                         (let ((__tmp157552
                                                (##direct-structure-ref
                                                 _hd157189_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp157552 _rest157188_))))
                                    (declare (not safe))
                                    (_lp157166_ __tmp157551))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _hd157189_
                                         'gx#module-export::t))
                                      (let ((__tmp157549
                                             (let ((__tmp157550
                                                    (##direct-structure-ref
                                                     _hd157189_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp157550
                                                     _rest157188_))))
                                        (declare (not safe))
                                        (_lp157166_ __tmp157549))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _hd157189_
                                             'gx#import-set::t))
                                          (let ((__tmp157547
                                                 (let ((__tmp157548
                                                        (##direct-structure-ref
                                                         _hd157189_
                                                         '1
                                                         gx#import-set::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp157548
                                                         _rest157188_))))
                                            (declare (not safe))
                                            (_lp157166_ __tmp157547))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _hd157189_))))))))))
              (if (let () (declare (not safe)) (##pair? _rest157169157177_))
                  (let ((_hd157174157199_
                         (let ()
                           (declare (not safe))
                           (##car _rest157169157177_)))
                        (_tl157175157201_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest157169157177_))))
                    (let* ((_hd157204_ _hd157174157199_)
                           (_rest157206_ _tl157175157201_))
                      (declare (not safe))
                      (_K157173157196_ _rest157206_ _hd157204_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_ctx157142_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _ctx157142_
                    'gx#module-context::t))
                 (let ((__tmp157561
                        (##structure-ref
                         _ctx157142_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp157561)))
            '#!void
            (let* ((_ht157144_
                    (##structure-ref
                     (gxc#current-compile-optimizer-info)
                     '2
                     gxc#optimizer-info::t
                     '#f))
                   (_id157146_
                    (##structure-ref
                     _ctx157142_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_mod157148_
                    (let ()
                      (declare (not safe))
                      (hash-get _ht157144_ _id157146_))))
              (let ((_$e157151_ _mod157148_))
                (if _$e157151_
                    _$e157151_
                    (let* ((_mod157154_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-import-ssxi _ctx157142_)))
                           (_val157159_
                            (let ((_$e157156_ _mod157154_))
                              (if _$e157156_ _$e157156_ '#!void))))
                      (let ()
                        (declare (not safe))
                        (hash-put! _ht157144_ _id157146_ _val157159_))
                      _val157159_)))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_ctx157140_)
        (if (##structure-ref _ctx157140_ '1 gx#expander-context::t '#f)
            (let ((__tmp157562
                   (##structure-ref
                    _ctx157140_
                    '1
                    gx#expander-context::t
                    '#f)))
              (declare (not safe))
              (gxc#optimizer-import-ssxi-by-id __tmp157562))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_id157117_)
        (letrec ((_catch-e157119_
                  (lambda (_exn157138_)
                    (if (gxc#current-compile-verbose)
                        (begin
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"Failed to load ssxi module for "
                             _id157117_))
                          (let ()
                            (declare (not safe))
                            (display-exception _exn157138_)))
                        '#!void)
                    '#f))
                 (_import-e157120_
                  (lambda ()
                    (let* ((_str-id157123_
                            (string-append
                             (let ()
                               (declare (not safe))
                               (gxc#module-id->path-string _id157117_))
                             '".ssxi"))
                           (_artefact-path157131_
                            (let ((_odir157124157126_
                                   (gxc#current-compile-output-dir)))
                              (if _odir157124157126_
                                  (let ((_odir157129_ _odir157124157126_))
                                    (path-expand
                                     (string-append _str-id157123_ '".ss")
                                     _odir157129_))
                                  '#f)))
                           (_library-path157133_
                            (string->symbol
                             (string-append '":" _str-id157123_ '".ss")))
                           (_ssxi-path157135_
                            (if (and _artefact-path157131_
                                     (file-exists? _artefact-path157131_))
                                _artefact-path157131_
                                _library-path157133_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _ssxi-path157135_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _ssxi-path157135_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (with-catch _catch-e157119_ _import-e157120_)))))
    (define gxc#optimize-source
      (lambda (_stx157108_)
        (let () (declare (not safe)) (gxc#apply-collect-mutators _stx157108_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _stx157108_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _stx157108_))
        (let* ((_stx157110_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _stx157108_)))
               (_stx157112_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _stx157110_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _stx157112_))
          (let ((_stx157115_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _stx157112_))))
            (declare (not safe))
            (gxc#apply-optimize-call _stx157115_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp157565 (list gxc#::generate-runtime-empty::t))
            (__tmp157563
             (let ((__tmp157564
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp157564 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp157565
         '()
         __tmp157563
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _$args157105_
        (apply make-instance gxc#::generate-ssxi::t _$args157105_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp157566
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
               (let ()
                 (declare (not safe))
                 (seal-class! gxc#::generate-ssxi::t)))))
        (declare (not safe))
        (make-promise __tmp157566)))
    (define gxc#apply-generate-ssxi
      (lambda (_stx157097_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_self157100_
                (let ((__obj157537
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj157537))
               (__tmp157567
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self157100_ _stx157097_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp157567
           gxc#current-compile-method
           _self157100_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_self157057_ _stx157058_)
        (let* ((_g157060157070_
                (lambda (_g157061157067_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g157061157067_))))
               (_g157059157094_
                (lambda (_g157061157073_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g157061157073_))
                      (let ((_e157065157075_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g157061157073_))))
                        (let ((_hd157064157078_
                               (let ()
                                 (declare (not safe))
                                 (##car _e157065157075_)))
                              (_tl157063157080_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e157065157075_))))
                          ((lambda (_L157083_)
                             (let ((__tmp157570
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _self157057_
                                         _stx157058_))))
                                   (__tmp157568
                                    (let ((__tmp157569
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp157569 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp157570
                                gx#current-expander-phi
                                __tmp157568)))
                           _tl157063157080_)))
                      (let ()
                        (declare (not safe))
                        (_g157060157070_ _g157061157073_))))))
          (declare (not safe))
          (_g157059157094_ _stx157058_))))
    (define gxc#generate-ssxi-module%
      (lambda (_self156996_ _stx156997_)
        (let* ((_g156999157013_
                (lambda (_g157000157010_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g157000157010_))))
               (_g156998157054_
                (lambda (_g157000157016_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g157000157016_))
                      (let ((_e157005157018_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g157000157016_))))
                        (let ((_hd157004157021_
                               (let ()
                                 (declare (not safe))
                                 (##car _e157005157018_)))
                              (_tl157003157023_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e157005157018_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl157003157023_))
                              (let ((_e157008157026_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl157003157023_))))
                                (let ((_hd157007157029_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e157008157026_)))
                                      (_tl157006157031_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e157008157026_))))
                                  ((lambda (_L157034_ _L157035_)
                                     (let* ((_ctx157048_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L157035_)))
                                            (_code157050_
                                             (##structure-ref
                                              _ctx157048_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp157571
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self156996_
                                                   _code157050_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp157571
                                          gx#current-expander-context
                                          _ctx157048_))))
                                   _tl157006157031_
                                   _hd157007157029_)))
                              (let ()
                                (declare (not safe))
                                (_g156999157013_ _g157000157016_)))))
                      (let ()
                        (declare (not safe))
                        (_g156999157013_ _g157000157016_))))))
          (declare (not safe))
          (_g156998157054_ _stx156997_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_self156805_ _stx156806_)
        (letrec ((_generate-e156808_
                  (lambda (_id156985_)
                    (let* ((_sym156987_
                            (if (let ((__tmp157572
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp157572))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _id156985_))
                                '#f))
                           (_$e156989_
                            (if _sym156987_
                                (let ()
                                  (declare (not safe))
                                  (gxc#optimizer-lookup-type _sym156987_))
                                '#f)))
                      (if _$e156989_
                          ((lambda (_type156992_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"generate typedecl " _sym156987_))
                             (let* ((_typedecl156994_
                                     (let ((__method157538
                                            (let ()
                                              (declare (not safe))
                                              (method-ref
                                               _type156992_
                                               'typedecl))))
                                       (if __method157538
                                           (__method157538 _type156992_)
                                           (let ()
                                             (declare (not safe))
                                             (error '"Missing method"
                                                    _type156992_
                                                    'typedecl)))))
                                    (__tmp157573
                                     (let ((__tmp157574
                                            (let ()
                                              (declare (not safe))
                                              (cons _typedecl156994_ '()))))
                                       (declare (not safe))
                                       (cons _sym156987_ __tmp157574))))
                               (declare (not safe))
                               (cons 'declare-type __tmp157573)))
                           _$e156989_)
                          '(begin))))))
          (let* ((___stx157234157235_ _stx156806_)
                 (_g156811156849_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx157234157235_)))))
            (let ((___kont157236157237_
                   (lambda (_L156967_)
                     (let ()
                       (declare (not safe))
                       (_generate-e156808_ _L156967_))))
                  (___kont157238157239_
                   (lambda (_L156902_)
                     (let ((_types156928_
                            (map _generate-e156808_
                                 (let ((__tmp157575
                                        (lambda (_g156920156923_
                                                 _g156921156925_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g156920156923_
                                                  _g156921156925_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp157575 '() _L156902_)))))
                       (declare (not safe))
                       (cons 'begin _types156928_)))))
              (let ((___match157289157290_
                     (lambda (_e156829156854_
                              _hd156828156857_
                              _tl156827156859_
                              _e156832156862_
                              _hd156831156865_
                              _tl156830156867_
                              ___splice157240157241_
                              _target156833156870_
                              _tl156835156872_)
                       (letrec ((_loop156836156875_
                                 (lambda (_hd156834156878_ _id156840156880_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd156834156878_))
                                       (let ((_e156837156883_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd156834156878_))))
                                         (let ((_lp-tl156839156888_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e156837156883_)))
                                               (_lp-hd156838156886_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e156837156883_))))
                                           (let ((__tmp157576
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd156838156886_
                                                          _id156840156880_))))
                                             (declare (not safe))
                                             (_loop156836156875_
                                              _lp-tl156839156888_
                                              __tmp157576))))
                                       (let ((_id156841156891_
                                              (reverse _id156840156880_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl156830156867_))
                                             (let ((_e156844156894_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl156830156867_))))
                                               (let ((_tl156842156899_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e156844156894_)))
                                                     (_hd156843156897_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e156844156894_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl156842156899_))
                                                     (___kont157238157239_
                                                      _id156841156891_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g156811156849_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g156811156849_))))))))
                         (let ()
                           (declare (not safe))
                           (_loop156836156875_ _target156833156870_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx157234157235_))
                    (let ((_e156816156935_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx157234157235_))))
                      (let ((_tl156814156940_
                             (let ()
                               (declare (not safe))
                               (##cdr _e156816156935_)))
                            (_hd156815156938_
                             (let ()
                               (declare (not safe))
                               (##car _e156816156935_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl156814156940_))
                            (let ((_e156819156943_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl156814156940_))))
                              (let ((_tl156817156948_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e156819156943_)))
                                    (_hd156818156946_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e156819156943_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd156818156946_))
                                    (let ((_e156822156951_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd156818156946_))))
                                      (let ((_tl156820156956_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e156822156951_)))
                                            (_hd156821156954_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e156822156951_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl156820156956_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl156817156948_))
                                                (let ((_e156825156959_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl156817156948_))))
                                                  (let ((_tl156823156964_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e156825156959_)))
                                                        (_hd156824156962_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e156825156959_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl156823156964_))
                                                        (___kont157236157237_
                                                         _hd156821156954_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _hd156818156946_))
                                                            (let ((___splice157240157241_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _hd156818156946_ '0))))
                      (let ((_tl156835156872_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice157240157241_ '1)))
                            (_target156833156870_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice157240157241_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl156835156872_))
                            (___match157289157290_
                             _e156816156935_
                             _hd156815156938_
                             _tl156814156940_
                             _e156819156943_
                             _hd156818156946_
                             _tl156817156948_
                             ___splice157240157241_
                             _target156833156870_
                             _tl156835156872_)
                            (let () (declare (not safe)) (_g156811156849_)))))
                    (let () (declare (not safe)) (_g156811156849_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _hd156818156946_))
                                                    (let ((___splice157240157241_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _hd156818156946_
                                                              '0))))
                                                      (let ((_tl156835156872_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice157240157241_ '1)))
                    (_target156833156870_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice157240157241_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl156835156872_))
                    (___match157289157290_
                     _e156816156935_
                     _hd156815156938_
                     _tl156814156940_
                     _e156819156943_
                     _hd156818156946_
                     _tl156817156948_
                     ___splice157240157241_
                     _target156833156870_
                     _tl156835156872_)
                    (let () (declare (not safe)) (_g156811156849_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g156811156849_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _hd156818156946_))
                                                (let ((___splice157240157241_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _hd156818156946_
                                                          '0))))
                                                  (let ((_tl156835156872_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice157240157241_
                                                            '1)))
                                                        (_target156833156870_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice157240157241_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl156835156872_))
                                                        (___match157289157290_
                                                         _e156816156935_
                                                         _hd156815156938_
                                                         _tl156814156940_
                                                         _e156819156943_
                                                         _hd156818156946_
                                                         _tl156817156948_
                                                         ___splice157240157241_
                                                         _target156833156870_
                                                         _tl156835156872_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g156811156849_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g156811156849_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd156818156946_))
                                        (let ((___splice157240157241_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd156818156946_
                                                  '0))))
                                          (let ((_tl156835156872_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice157240157241_
                                                    '1)))
                                                (_target156833156870_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice157240157241_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl156835156872_))
                                                (___match157289157290_
                                                 _e156816156935_
                                                 _hd156815156938_
                                                 _tl156814156940_
                                                 _e156819156943_
                                                 _hd156818156946_
                                                 _tl156817156948_
                                                 ___splice157240157241_
                                                 _target156833156870_
                                                 _tl156835156872_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g156811156849_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g156811156849_))))))
                            (let () (declare (not safe)) (_g156811156849_)))))
                    (let () (declare (not safe)) (_g156811156849_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_self156358_ _stx156359_)
        (let* ((___stx157292157293_ _stx156359_)
               (_g156363156465_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx157292157293_)))))
          (let ((___kont157294157295_
                 (lambda (_L156755_ _L156756_ _L156757_ _L156758_ _L156759_)
                   (let ((__tmp157577
                          (let ((__tmp157584
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L156758_)))
                                (__tmp157578
                                 (let ((__tmp157583
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L156757_)))
                                       (__tmp157579
                                        (let ((__tmp157582
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L156756_)))
                                              (__tmp157580
                                               (let ((__tmp157581
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L156755_))))
                                                 (declare (not safe))
                                                 (cons __tmp157581 '()))))
                                          (declare (not safe))
                                          (cons __tmp157582 __tmp157580))))
                                   (declare (not safe))
                                   (cons __tmp157583 __tmp157579))))
                            (declare (not safe))
                            (cons __tmp157584 __tmp157578))))
                     (declare (not safe))
                     (cons 'declare-method __tmp157577))))
                (___kont157296157297_
                 (lambda (_L156581_ _L156582_ _L156583_ _L156584_)
                   (let ((__tmp157585
                          (let ((__tmp157591
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L156583_)))
                                (__tmp157586
                                 (let ((__tmp157590
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L156582_)))
                                       (__tmp157587
                                        (let ((__tmp157589
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L156581_)))
                                              (__tmp157588
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '#f '()))))
                                          (declare (not safe))
                                          (cons __tmp157589 __tmp157588))))
                                   (declare (not safe))
                                   (cons __tmp157590 __tmp157587))))
                            (declare (not safe))
                            (cons __tmp157591 __tmp157586))))
                     (declare (not safe))
                     (cons 'declare-method __tmp157585))))
                (___kont157298157299_ (lambda () '(begin))))
            (let ((___match157427157428_
                   (lambda (_e156372156627_
                            _hd156371156630_
                            _tl156370156632_
                            _e156375156635_
                            _hd156374156638_
                            _tl156373156640_
                            _e156378156643_
                            _hd156377156646_
                            _tl156376156648_
                            _e156381156651_
                            _hd156380156654_
                            _tl156379156656_
                            _e156384156659_
                            _hd156383156662_
                            _tl156382156664_
                            _e156387156667_
                            _hd156386156670_
                            _tl156385156672_
                            _e156390156675_
                            _hd156389156678_
                            _tl156388156680_
                            _e156393156683_
                            _hd156392156686_
                            _tl156391156688_
                            _e156396156691_
                            _hd156395156694_
                            _tl156394156696_
                            _e156399156699_
                            _hd156398156702_
                            _tl156397156704_
                            _e156402156707_
                            _hd156401156710_
                            _tl156400156712_
                            _e156405156715_
                            _hd156404156718_
                            _tl156403156720_
                            _e156408156723_
                            _hd156407156726_
                            _tl156406156728_
                            _e156411156731_
                            _hd156410156734_
                            _tl156409156736_
                            _e156414156739_
                            _hd156413156742_
                            _tl156412156744_
                            _e156417156747_
                            _hd156416156750_
                            _tl156415156752_)
                     (let ((_L156755_ _hd156416156750_)
                           (_L156756_ _hd156407156726_)
                           (_L156757_ _hd156398156702_)
                           (_L156758_ _hd156389156678_)
                           (_L156759_ _hd156380156654_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L156759_
                              'bind-method!))
                           (___kont157294157295_
                            _L156755_
                            _L156756_
                            _L156757_
                            _L156758_
                            _L156759_)
                           (___kont157298157299_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx157292157293_))
                  (let ((_e156372156627_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx157292157293_))))
                    (let ((_tl156370156632_
                           (let ()
                             (declare (not safe))
                             (##cdr _e156372156627_)))
                          (_hd156371156630_
                           (let ()
                             (declare (not safe))
                             (##car _e156372156627_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl156370156632_))
                          (let ((_e156375156635_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl156370156632_))))
                            (let ((_tl156373156640_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e156375156635_)))
                                  (_hd156374156638_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e156375156635_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd156374156638_))
                                  (let ((_e156378156643_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd156374156638_))))
                                    (let ((_tl156376156648_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e156378156643_)))
                                          (_hd156377156646_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e156378156643_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd156377156646_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd156377156646_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl156376156648_))
                                                  (let ((_e156381156651_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl156376156648_))))
                                                    (let ((_tl156379156656_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e156381156651_)))
                                                          (_hd156380156654_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e156381156651_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl156379156656_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl156373156640_))
                      (let ((_e156384156659_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl156373156640_))))
                        (let ((_tl156382156664_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e156384156659_)))
                              (_hd156383156662_
                               (let ()
                                 (declare (not safe))
                                 (##car _e156384156659_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd156383156662_))
                              (let ((_e156387156667_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd156383156662_))))
                                (let ((_tl156385156672_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e156387156667_)))
                                      (_hd156386156670_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e156387156667_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd156386156670_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd156386156670_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl156385156672_))
                                              (let ((_e156390156675_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl156385156672_))))
                                                (let ((_tl156388156680_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e156390156675_)))
                                                      (_hd156389156678_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e156390156675_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl156388156680_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl156382156664_))
                                                          (let ((_e156393156683_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl156382156664_))))
                    (let ((_tl156391156688_
                           (let ()
                             (declare (not safe))
                             (##cdr _e156393156683_)))
                          (_hd156392156686_
                           (let ()
                             (declare (not safe))
                             (##car _e156393156683_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd156392156686_))
                          (let ((_e156396156691_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd156392156686_))))
                            (let ((_tl156394156696_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e156396156691_)))
                                  (_hd156395156694_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e156396156691_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd156395156694_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd156395156694_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl156394156696_))
                                          (let ((_e156399156699_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl156394156696_))))
                                            (let ((_tl156397156704_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e156399156699_)))
                                                  (_hd156398156702_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e156399156699_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl156397156704_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl156391156688_))
                                                      (let ((_e156402156707_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl156391156688_))))
                (let ((_tl156400156712_
                       (let () (declare (not safe)) (##cdr _e156402156707_)))
                      (_hd156401156710_
                       (let () (declare (not safe)) (##car _e156402156707_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd156401156710_))
                      (let ((_e156405156715_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd156401156710_))))
                        (let ((_tl156403156720_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e156405156715_)))
                              (_hd156404156718_
                               (let ()
                                 (declare (not safe))
                                 (##car _e156405156715_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd156404156718_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd156404156718_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl156403156720_))
                                      (let ((_e156408156723_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl156403156720_))))
                                        (let ((_tl156406156728_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e156408156723_)))
                                              (_hd156407156726_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e156408156723_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl156406156728_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl156400156712_))
                                                  (let ((_e156411156731_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl156400156712_))))
                                                    (let ((_tl156409156736_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e156411156731_)))
                                                          (_hd156410156734_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e156411156731_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd156410156734_))
                                                          (let ((_e156414156739_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd156410156734_))))
                    (let ((_tl156412156744_
                           (let ()
                             (declare (not safe))
                             (##cdr _e156414156739_)))
                          (_hd156413156742_
                           (let ()
                             (declare (not safe))
                             (##car _e156414156739_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd156413156742_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd156413156742_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl156412156744_))
                                  (let ((_e156417156747_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl156412156744_))))
                                    (let ((_tl156415156752_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e156417156747_)))
                                          (_hd156416156750_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e156417156747_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl156415156752_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl156409156736_))
                                              (___match157427157428_
                                               _e156372156627_
                                               _hd156371156630_
                                               _tl156370156632_
                                               _e156375156635_
                                               _hd156374156638_
                                               _tl156373156640_
                                               _e156378156643_
                                               _hd156377156646_
                                               _tl156376156648_
                                               _e156381156651_
                                               _hd156380156654_
                                               _tl156379156656_
                                               _e156384156659_
                                               _hd156383156662_
                                               _tl156382156664_
                                               _e156387156667_
                                               _hd156386156670_
                                               _tl156385156672_
                                               _e156390156675_
                                               _hd156389156678_
                                               _tl156388156680_
                                               _e156393156683_
                                               _hd156392156686_
                                               _tl156391156688_
                                               _e156396156691_
                                               _hd156395156694_
                                               _tl156394156696_
                                               _e156399156699_
                                               _hd156398156702_
                                               _tl156397156704_
                                               _e156402156707_
                                               _hd156401156710_
                                               _tl156400156712_
                                               _e156405156715_
                                               _hd156404156718_
                                               _tl156403156720_
                                               _e156408156723_
                                               _hd156407156726_
                                               _tl156406156728_
                                               _e156411156731_
                                               _hd156410156734_
                                               _tl156409156736_
                                               _e156414156739_
                                               _hd156413156742_
                                               _tl156412156744_
                                               _e156417156747_
                                               _hd156416156750_
                                               _tl156415156752_)
                                              (___kont157298157299_))
                                          (___kont157298157299_))))
                                  (___kont157298157299_))
                              (___kont157298157299_))
                          (___kont157298157299_))))
                  (___kont157298157299_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl156400156712_))
                                                      (if (let ((__tmp157592
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp157592 'bind-method!))
                  (let ((_L156581_ _hd156407156726_)
                        (_L156582_ _hd156398156702_)
                        (_L156583_ _hd156389156678_)
                        (_L156584_ _hd156380156654_))
                    (___kont157296157297_
                     _L156581_
                     _L156582_
                     _L156583_
                     _L156584_))
                  (___kont157298157299_))
              (___kont157298157299_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont157298157299_))))
                                      (___kont157298157299_))
                                  (___kont157298157299_))
                              (___kont157298157299_))))
                      (___kont157298157299_))))
              (___kont157298157299_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont157298157299_))))
                                          (___kont157298157299_))
                                      (___kont157298157299_))
                                  (___kont157298157299_))))
                          (___kont157298157299_))))
                  (___kont157298157299_))
              (___kont157298157299_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont157298157299_))
                                          (___kont157298157299_))
                                      (___kont157298157299_))))
                              (___kont157298157299_))))
                      (___kont157298157299_))
                  (___kont157298157299_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont157298157299_))
                                              (___kont157298157299_))
                                          (___kont157298157299_))))
                                  (___kont157298157299_))))
                          (___kont157298157299_))))
                  (___kont157298157299_)))))))
    (define gxc#!alias::typedecl
      (lambda (_self156334_)
        (let* ((_self156335156341_ _self156334_)
               (_E156337156345_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self156335156341_))))
               (_K156338156350_
                (lambda (_alias-id156348_)
                  (let ((__tmp157593
                         (let ()
                           (declare (not safe))
                           (cons _alias-id156348_ '()))))
                    (declare (not safe))
                    (cons '@alias __tmp157593)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self156335156341_ 'gxc#!alias::t))
              (let* ((_e156339156353_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156335156341_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_alias-id156356_ _e156339156353_))
                (declare (not safe))
                (_K156338156350_ _alias-id156356_))
              (let () (declare (not safe)) (_E156337156345_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_self156125_)
        (let* ((_self156126156141_ _self156125_)
               (_E156128156145_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self156126156141_))))
               (_K156129156159_
                (lambda (_methods156148_
                         _metaclass156149_
                         _final?156150_
                         _struct?156151_
                         _constructor156152_
                         _fields156153_
                         _slots156154_
                         _precendence-list156155_
                         _super156156_
                         _id156157_)
                  (let ((__tmp157594
                         (let ((__tmp157595
                                (let ((__tmp157596
                                       (let ((__tmp157597
                                              (let ((__tmp157598
                                                     (let ((__tmp157599
                                                            (let ((__tmp157600
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp157601
                                  (let ((__tmp157602
                                         (let ((__tmp157603
                                                (let ((__tmp157604
                                                       (if _methods156148_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (hash->list
                                                              _methods156148_))
                                                           '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp157604 '()))))
                                           (declare (not safe))
                                           (cons _metaclass156149_
                                                 __tmp157603))))
                                    (declare (not safe))
                                    (cons _final?156150_ __tmp157602))))
                             (declare (not safe))
                             (cons _struct?156151_ __tmp157601))))
                      (declare (not safe))
                      (cons _constructor156152_ __tmp157600))))
               (declare (not safe))
               (cons _fields156153_ __tmp157599))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _slots156154_
                                                      __tmp157598))))
                                         (declare (not safe))
                                         (cons _precendence-list156155_
                                               __tmp157597))))
                                  (declare (not safe))
                                  (cons _super156156_ __tmp157596))))
                           (declare (not safe))
                           (cons _id156157_ __tmp157595))))
                    (declare (not safe))
                    (cons '@class __tmp157594)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self156126156141_ 'gxc#!class::t))
              (let* ((_e156130156162_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156126156141_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_id156165_ _e156130156162_)
                     (_e156131156167_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156126156141_
                         '2
                         gxc#!class::t
                         '#f)))
                     (_super156170_ _e156131156167_)
                     (_e156132156172_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156126156141_
                         '3
                         gxc#!class::t
                         '#f)))
                     (_precendence-list156175_ _e156132156172_)
                     (_e156133156177_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156126156141_
                         '4
                         gxc#!class::t
                         '#f)))
                     (_slots156180_ _e156133156177_)
                     (_e156134156182_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156126156141_
                         '5
                         gxc#!class::t
                         '#f)))
                     (_fields156185_ _e156134156182_)
                     (_e156135156187_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156126156141_
                         '6
                         gxc#!class::t
                         '#f)))
                     (_constructor156190_ _e156135156187_)
                     (_e156136156192_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156126156141_
                         '7
                         gxc#!class::t
                         '#f)))
                     (_struct?156195_ _e156136156192_)
                     (_e156137156197_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156126156141_
                         '8
                         gxc#!class::t
                         '#f)))
                     (_final?156200_ _e156137156197_)
                     (_e156138156202_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156126156141_
                         '9
                         gxc#!class::t
                         '#f)))
                     (_metaclass156205_ _e156138156202_)
                     (_e156139156207_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156126156141_
                         '10
                         gxc#!class::t
                         '#f)))
                     (_methods156210_ _e156139156207_))
                (declare (not safe))
                (_K156129156159_
                 _methods156210_
                 _metaclass156205_
                 _final?156200_
                 _struct?156195_
                 _constructor156190_
                 _fields156185_
                 _slots156180_
                 _precendence-list156175_
                 _super156170_
                 _id156165_))
              (let () (declare (not safe)) (_E156128156145_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_self155979_)
        (let* ((_self155980155986_ _self155979_)
               (_E155982155990_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self155980155986_))))
               (_K155983155995_
                (lambda (_klass-id155993_)
                  (let ((__tmp157605
                         (let ()
                           (declare (not safe))
                           (cons _klass-id155993_ '()))))
                    (declare (not safe))
                    (cons '@predicate __tmp157605)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self155980155986_
                 'gxc#!predicate::t))
              (let* ((_e155984155998_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155980155986_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id156001_ _e155984155998_))
                (declare (not safe))
                (_K155983155995_ _klass-id156001_))
              (let () (declare (not safe)) (_E155982155990_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_self155833_)
        (let* ((_self155834155840_ _self155833_)
               (_E155836155844_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self155834155840_))))
               (_K155837155849_
                (lambda (_klass-id155847_)
                  (let ((__tmp157606
                         (let ()
                           (declare (not safe))
                           (cons _klass-id155847_ '()))))
                    (declare (not safe))
                    (cons '@constructor __tmp157606)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self155834155840_
                 'gxc#!constructor::t))
              (let* ((_e155838155852_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155834155840_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id155855_ _e155838155852_))
                (declare (not safe))
                (_K155837155849_ _klass-id155855_))
              (let () (declare (not safe)) (_E155836155844_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_self155673_)
        (let* ((_self155674155682_ _self155673_)
               (_E155676155686_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self155674155682_))))
               (_K155677155693_
                (lambda (_checked?155689_ _slot155690_ _klass-id155691_)
                  (let ((__tmp157607
                         (let ((__tmp157608
                                (let ((__tmp157609
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?155689_ '()))))
                                  (declare (not safe))
                                  (cons _slot155690_ __tmp157609))))
                           (declare (not safe))
                           (cons _klass-id155691_ __tmp157608))))
                    (declare (not safe))
                    (cons '@accessor __tmp157607)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self155674155682_
                 'gxc#!accessor::t))
              (let* ((_e155678155696_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155674155682_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id155699_ _e155678155696_)
                     (_e155679155701_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155674155682_
                         '2
                         gxc#!accessor::t
                         '#f)))
                     (_slot155704_ _e155679155701_)
                     (_e155680155706_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155674155682_
                         '3
                         gxc#!accessor::t
                         '#f)))
                     (_checked?155709_ _e155680155706_))
                (declare (not safe))
                (_K155677155693_
                 _checked?155709_
                 _slot155704_
                 _klass-id155699_))
              (let () (declare (not safe)) (_E155676155686_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_self155513_)
        (let* ((_self155514155522_ _self155513_)
               (_E155516155526_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self155514155522_))))
               (_K155517155533_
                (lambda (_checked?155529_ _slot155530_ _klass-id155531_)
                  (let ((__tmp157610
                         (let ((__tmp157611
                                (let ((__tmp157612
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?155529_ '()))))
                                  (declare (not safe))
                                  (cons _slot155530_ __tmp157612))))
                           (declare (not safe))
                           (cons _klass-id155531_ __tmp157611))))
                    (declare (not safe))
                    (cons '@mutator __tmp157610)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self155514155522_ 'gxc#!mutator::t))
              (let* ((_e155518155536_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155514155522_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id155539_ _e155518155536_)
                     (_e155519155541_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155514155522_
                         '2
                         gxc#!mutator::t
                         '#f)))
                     (_slot155544_ _e155519155541_)
                     (_e155520155546_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155514155522_
                         '3
                         gxc#!mutator::t
                         '#f)))
                     (_checked?155549_ _e155520155546_))
                (declare (not safe))
                (_K155517155533_
                 _checked?155549_
                 _slot155544_
                 _klass-id155539_))
              (let () (declare (not safe)) (_E155516155526_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!lambda::typedecl
      (lambda (_self155339_)
        (let* ((_self155340155350_ _self155339_)
               (_E155342155354_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self155340155350_))))
               (_K155343155365_
                (lambda (_typedecl155357_
                         _inline155358_
                         _dispatch155359_
                         _arity155360_)
                  (if _inline155358_
                      (let ((_$e155362_ _typedecl155357_))
                        (if _$e155362_
                            _$e155362_
                            (let ()
                              (declare (not safe))
                              (error '"Cannot generate typedecl for inline rules"))))
                      (let ((__tmp157613
                             (let ((__tmp157614
                                    (let ()
                                      (declare (not safe))
                                      (cons _dispatch155359_ '()))))
                               (declare (not safe))
                               (cons _arity155360_ __tmp157614))))
                        (declare (not safe))
                        (cons '@lambda __tmp157613))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self155340155350_ 'gxc#!lambda::t))
              (let* ((_e155344155368_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155340155350_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e155345155371_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155340155350_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity155374_ _e155345155371_)
                     (_e155346155376_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155340155350_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch155379_ _e155346155376_)
                     (_e155347155381_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155340155350_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline155384_ _e155347155381_)
                     (_e155348155386_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155340155350_
                         '5
                         gxc#!lambda::t
                         '#f)))
                     (_typedecl155389_ _e155348155386_))
                (declare (not safe))
                (_K155343155365_
                 _typedecl155389_
                 _inline155384_
                 _dispatch155379_
                 _arity155374_))
              (let () (declare (not safe)) (_E155342155354_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_self155150_)
        (letrec ((_clause-e155152_
                  (lambda (_clause155182_)
                    (let* ((_clause155183155191_ _clause155182_)
                           (_E155185155195_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _clause155183155191_))))
                           (_K155186155201_
                            (lambda (_dispatch155198_ _arity155199_)
                              (let ((__tmp157615
                                     (let ()
                                       (declare (not safe))
                                       (cons _dispatch155198_ '()))))
                                (declare (not safe))
                                (cons _arity155199_ __tmp157615)))))
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _clause155183155191_
                             'gxc#!lambda::t))
                          (let* ((_e155187155204_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause155183155191_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                                 (_e155188155207_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause155183155191_
                                     '2
                                     gxc#!lambda::t
                                     '#f)))
                                 (_arity155210_ _e155188155207_)
                                 (_e155189155212_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause155183155191_
                                     '3
                                     gxc#!lambda::t
                                     '#f)))
                                 (_dispatch155215_ _e155189155212_))
                            (declare (not safe))
                            (_K155186155201_ _dispatch155215_ _arity155210_))
                          (let () (declare (not safe)) (_E155185155195_)))))))
          (let* ((_self155153155160_ _self155150_)
                 (_E155155155164_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching" _self155153155160_))))
                 (_K155156155171_
                  (lambda (_clauses155167_)
                    (let ((_clauses155169_
                           (map _clause-e155152_ _clauses155167_)))
                      (declare (not safe))
                      (cons '@case-lambda _clauses155169_)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of?
                   _self155153155160_
                   'gxc#!case-lambda::t))
                (let* ((_e155157155174_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self155153155160_
                           '1
                           gxc#!type::t
                           '#f)))
                       (_e155158155177_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self155153155160_
                           '2
                           gxc#!case-lambda::t
                           '#f)))
                       (_clauses155180_ _e155158155177_))
                  (declare (not safe))
                  (_K155156155171_ _clauses155180_))
                (let () (declare (not safe)) (_E155155155164_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_self154993_)
        (let* ((_self154994155002_ _self154993_)
               (_E154996155006_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154994155002_))))
               (_K154997155012_
                (lambda (_dispatch155009_ _table155010_)
                  (let ((__tmp157616
                         (let ((__tmp157617
                                (let ()
                                  (declare (not safe))
                                  (cons _dispatch155009_ '()))))
                           (declare (not safe))
                           (cons _table155010_ __tmp157617))))
                    (declare (not safe))
                    (cons '@kw-lambda __tmp157616)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self154994155002_
                 'gxc#!kw-lambda::t))
              (let* ((_e154998155015_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154994155002_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e154999155018_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154994155002_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table155021_ _e154999155018_)
                     (_e155000155023_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154994155002_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch155026_ _e155000155023_))
                (declare (not safe))
                (_K154997155012_ _dispatch155026_ _table155021_))
              (let () (declare (not safe)) (_E154996155006_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda::t
       'typedecl
       gxc#!kw-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_self154836_)
        (let* ((_self154837154845_ _self154836_)
               (_E154839154849_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154837154845_))))
               (_K154840154855_
                (lambda (_main154852_ _keys154853_)
                  (let ((__tmp157618
                         (let ((__tmp157619
                                (let ()
                                  (declare (not safe))
                                  (cons _main154852_ '()))))
                           (declare (not safe))
                           (cons _keys154853_ __tmp157619))))
                    (declare (not safe))
                    (cons '@kw-lambda-dispatch __tmp157618)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self154837154845_
                 'gxc#!kw-lambda-primary::t))
              (let* ((_e154841154858_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154837154845_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e154842154861_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154837154845_
                         '2
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_keys154864_ _e154842154861_)
                     (_e154843154866_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154837154845_
                         '3
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_main154869_ _e154843154866_))
                (declare (not safe))
                (_K154840154855_ _main154869_ _keys154864_))
              (let () (declare (not safe)) (_E154839154849_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))))
