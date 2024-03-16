(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1710617613)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (gxc#current-compile-optimizer-info)
            '#!void
            (gxc#current-compile-optimizer-info
             (let ((__obj155769
                    (let ()
                      (declare (not safe))
                      (##structure gxc#optimizer-info::t '#f '#f '#f))))
               (gxc#optimizer-info:::init! __obj155769)
               __obj155769)))))
    (define gxc#optimize!
      (lambda (_ctx155462_)
        (let ((__tmp155775
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _ctx155462_))
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-builtin-ssxi _ctx155462_))
                 (let ((__tmp155777
                        (##structure-ref
                         (gxc#current-compile-optimizer-info)
                         '2
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp155776
                        (##structure-ref
                         _ctx155462_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp155777 __tmp155776 '#t))
                 (let ((_code155465_
                        (let ((__tmp155778
                               (##structure-ref
                                _ctx155462_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp155778))))
                   (##structure-set!
                    _ctx155462_
                    _code155465_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp155774 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp155773 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters
           __tmp155775
           gxc#current-compile-mutators
           __tmp155774
           gxc#current-compile-local-type
           __tmp155773))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_ctx155451_)
        (letrec ((_load-it!155453_
                  (lambda (_id155460_)
                    (if (let ((__tmp155779
                               (##structure-ref
                                (gxc#current-compile-optimizer-info)
                                '2
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp155779 _id155460_))
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-import-ssxi-by-id _id155460_))
                          (let ((__tmp155780
                                 (##structure-ref
                                  (gxc#current-compile-optimizer-info)
                                  '2
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp155780 _id155460_ '#t)))))))
          (let* ((_modid155455_
                  (##structure-ref _ctx155451_ '1 gx#expander-context::t '#f))
                 (_modid-str155457_ (symbol->string _modid155455_)))
            (if (let ()
                  (declare (not safe))
                  (string-prefix? '"gerbil/core" _modid-str155457_))
                (let ()
                  (declare (not safe))
                  (_load-it!155453_ 'gerbil/builtin))
                (for-each
                 _load-it!155453_
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
      (lambda (_ctx155396_)
        (letrec* ((_deps155398_
                   (let* ((_imports155442_
                           (##structure-ref
                            _ctx155396_
                            '8
                            gx#module-context::t
                            '#f))
                          (_$e155444_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _ctx155396_))))
                     (if _$e155444_
                         ((lambda (_g155446155448_)
                            (let ()
                              (declare (not safe))
                              (cons _g155446155448_ _imports155442_)))
                          _$e155444_)
                         _imports155442_))))
          (let _lp155400_ ((_rest155402_ _deps155398_))
            (let* ((_rest155403155411_ _rest155402_)
                   (_else155405155419_ (lambda () '#!void))
                   (_K155407155430_
                    (lambda (_rest155422_ _hd155423_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _hd155423_
                             'gx#module-context::t))
                          (begin
                            (if (let ((__tmp155782
                                       (##structure-ref
                                        (gxc#current-compile-optimizer-info)
                                        '2
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp155781
                                       (##structure-ref
                                        _hd155423_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (hash-get __tmp155782 __tmp155781))
                                '#!void
                                (begin
                                  (let ((_$e155425_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _hd155423_))))
                                    (if _$e155425_
                                        ((lambda (_pre155428_)
                                           (let ((__tmp155783
                                                  (let ((__tmp155784
                                                         (##structure-ref
                                                          _hd155423_
                                                          '8
                                                          gx#module-context::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (cons _pre155428_
                                                          __tmp155784))))
                                             (declare (not safe))
                                             (_lp155400_ __tmp155783)))
                                         _$e155425_)
                                        (let ((__tmp155785
                                               (##structure-ref
                                                _hd155423_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                          (declare (not safe))
                                          (_lp155400_ __tmp155785))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _hd155423_))))
                            (let ()
                              (declare (not safe))
                              (_lp155400_ _rest155422_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _hd155423_
                                 'gx#prelude-context::t))
                              (begin
                                (if (let ((__tmp155787
                                           (##structure-ref
                                            (gxc#current-compile-optimizer-info)
                                            '2
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp155786
                                           (##structure-ref
                                            _hd155423_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (hash-get __tmp155787 __tmp155786))
                                    '#!void
                                    (begin
                                      (let ((__tmp155788
                                             (##structure-ref
                                              _hd155423_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_lp155400_ __tmp155788))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi _hd155423_))))
                                (let ()
                                  (declare (not safe))
                                  (_lp155400_ _rest155422_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _hd155423_
                                     'gx#module-import::t))
                                  (let ((__tmp155789
                                         (let ((__tmp155790
                                                (##direct-structure-ref
                                                 _hd155423_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp155790 _rest155422_))))
                                    (declare (not safe))
                                    (_lp155400_ __tmp155789))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _hd155423_
                                         'gx#module-export::t))
                                      (let ((__tmp155791
                                             (let ((__tmp155792
                                                    (##direct-structure-ref
                                                     _hd155423_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp155792
                                                     _rest155422_))))
                                        (declare (not safe))
                                        (_lp155400_ __tmp155791))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _hd155423_
                                             'gx#import-set::t))
                                          (let ((__tmp155793
                                                 (let ((__tmp155794
                                                        (##direct-structure-ref
                                                         _hd155423_
                                                         '1
                                                         gx#import-set::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp155794
                                                         _rest155422_))))
                                            (declare (not safe))
                                            (_lp155400_ __tmp155793))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _hd155423_))))))))))
              (if (let () (declare (not safe)) (##pair? _rest155403155411_))
                  (let ((_hd155408155433_
                         (let ()
                           (declare (not safe))
                           (##car _rest155403155411_)))
                        (_tl155409155435_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest155403155411_))))
                    (let* ((_hd155438_ _hd155408155433_)
                           (_rest155440_ _tl155409155435_))
                      (declare (not safe))
                      (_K155407155430_ _rest155440_ _hd155438_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_ctx155376_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _ctx155376_
                    'gx#module-context::t))
                 (let ((__tmp155795
                        (##structure-ref
                         _ctx155376_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp155795)))
            '#!void
            (let* ((_ht155378_
                    (##structure-ref
                     (gxc#current-compile-optimizer-info)
                     '2
                     gxc#optimizer-info::t
                     '#f))
                   (_id155380_
                    (##structure-ref
                     _ctx155376_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_mod155382_
                    (let ()
                      (declare (not safe))
                      (hash-get _ht155378_ _id155380_))))
              (let ((_$e155385_ _mod155382_))
                (if _$e155385_
                    _$e155385_
                    (let* ((_mod155388_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-import-ssxi _ctx155376_)))
                           (_val155393_
                            (let ((_$e155390_ _mod155388_))
                              (if _$e155390_ _$e155390_ '#!void))))
                      (let ()
                        (declare (not safe))
                        (hash-put! _ht155378_ _id155380_ _val155393_))
                      _val155393_)))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_ctx155374_)
        (if (##structure-ref _ctx155374_ '1 gx#expander-context::t '#f)
            (let ((__tmp155796
                   (##structure-ref
                    _ctx155374_
                    '1
                    gx#expander-context::t
                    '#f)))
              (declare (not safe))
              (gxc#optimizer-import-ssxi-by-id __tmp155796))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_id155351_)
        (letrec ((_catch-e155353_
                  (lambda (_exn155372_)
                    (if (gxc#current-compile-verbose)
                        (begin
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"Failed to load ssxi module for "
                             _id155351_))
                          (display-exception _exn155372_))
                        '#!void)
                    '#f))
                 (_import-e155354_
                  (lambda ()
                    (let* ((_str-id155357_
                            (string-append
                             (let ()
                               (declare (not safe))
                               (gxc#module-id->path-string _id155351_))
                             '".ssxi"))
                           (_artefact-path155365_
                            (let ((_odir155358155360_
                                   (gxc#current-compile-output-dir)))
                              (if _odir155358155360_
                                  (let ((_odir155363_ _odir155358155360_))
                                    (path-expand
                                     (string-append _str-id155357_ '".ss")
                                     _odir155363_))
                                  '#f)))
                           (_library-path155367_
                            (string->symbol
                             (string-append '":" _str-id155357_ '".ss")))
                           (_ssxi-path155369_
                            (if (and _artefact-path155365_
                                     (file-exists? _artefact-path155365_))
                                _artefact-path155365_
                                _library-path155367_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _ssxi-path155369_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _ssxi-path155369_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (with-catch _catch-e155353_ _import-e155354_)))))
    (define gxc#optimize-source
      (lambda (_stx155342_)
        (let () (declare (not safe)) (gxc#apply-collect-mutators _stx155342_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _stx155342_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _stx155342_))
        (let* ((_stx155344_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _stx155342_)))
               (_stx155346_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _stx155344_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _stx155346_))
          (let ((_stx155349_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _stx155346_))))
            (declare (not safe))
            (gxc#apply-optimize-call _stx155349_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp155799 (list gxc#::generate-runtime-empty::t))
            (__tmp155797
             (let ((__tmp155798
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp155798 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp155799
         '()
         __tmp155797
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _$args155339_
        (apply make-instance gxc#::generate-ssxi::t _$args155339_)))
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
      (lambda (_stx155331_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_self155334_
                (let ((__obj155771
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj155771))
               (__tmp155800
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self155334_ _stx155331_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp155800
           gxc#current-compile-method
           _self155334_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_self155291_ _stx155292_)
        (let* ((_g155294155304_
                (lambda (_g155295155301_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g155295155301_))))
               (_g155293155328_
                (lambda (_g155295155307_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g155295155307_))
                      (let ((_e155297155309_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g155295155307_))))
                        (let ((_hd155298155312_
                               (let ()
                                 (declare (not safe))
                                 (##car _e155297155309_)))
                              (_tl155299155314_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e155297155309_))))
                          ((lambda (_L155317_)
                             (let ((__tmp155803
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _self155291_
                                         _stx155292_))))
                                   (__tmp155801
                                    (let ((__tmp155802
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp155802 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp155803
                                gx#current-expander-phi
                                __tmp155801)))
                           _tl155299155314_)))
                      (let ()
                        (declare (not safe))
                        (_g155294155304_ _g155295155307_))))))
          (declare (not safe))
          (_g155293155328_ _stx155292_))))
    (define gxc#generate-ssxi-module%
      (lambda (_self155230_ _stx155231_)
        (let* ((_g155233155247_
                (lambda (_g155234155244_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g155234155244_))))
               (_g155232155288_
                (lambda (_g155234155250_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g155234155250_))
                      (let ((_e155237155252_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g155234155250_))))
                        (let ((_hd155238155255_
                               (let ()
                                 (declare (not safe))
                                 (##car _e155237155252_)))
                              (_tl155239155257_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e155237155252_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl155239155257_))
                              (let ((_e155240155260_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl155239155257_))))
                                (let ((_hd155241155263_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e155240155260_)))
                                      (_tl155242155265_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e155240155260_))))
                                  ((lambda (_L155268_ _L155269_)
                                     (let* ((_ctx155282_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L155269_)))
                                            (_code155284_
                                             (##structure-ref
                                              _ctx155282_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp155804
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self155230_
                                                   _code155284_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp155804
                                          gx#current-expander-context
                                          _ctx155282_))))
                                   _tl155242155265_
                                   _hd155241155263_)))
                              (let ()
                                (declare (not safe))
                                (_g155233155247_ _g155234155250_)))))
                      (let ()
                        (declare (not safe))
                        (_g155233155247_ _g155234155250_))))))
          (declare (not safe))
          (_g155232155288_ _stx155231_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_self155039_ _stx155040_)
        (letrec ((_generate-e155042_
                  (lambda (_id155219_)
                    (let* ((_sym155221_
                            (if (let ((__tmp155805
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp155805))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _id155219_))
                                '#f))
                           (_$e155223_
                            (if _sym155221_
                                (let ()
                                  (declare (not safe))
                                  (gxc#optimizer-lookup-type _sym155221_))
                                '#f)))
                      (if _$e155223_
                          ((lambda (_type155226_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"generate typedecl " _sym155221_))
                             (let* ((_typedecl155228_
                                     (let ((__method155772
                                            (let ()
                                              (declare (not safe))
                                              (method-ref
                                               _type155226_
                                               'typedecl))))
                                       (if __method155772
                                           (__method155772 _type155226_)
                                           (let ()
                                             (declare (not safe))
                                             (error '"Missing method"
                                                    _type155226_
                                                    'typedecl)))))
                                    (__tmp155806
                                     (let ((__tmp155807
                                            (let ()
                                              (declare (not safe))
                                              (cons _typedecl155228_ '()))))
                                       (declare (not safe))
                                       (cons _sym155221_ __tmp155807))))
                               (declare (not safe))
                               (cons 'declare-type __tmp155806)))
                           _$e155223_)
                          '(begin))))))
          (let* ((___stx155468155469_ _stx155040_)
                 (_g155045155083_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx155468155469_)))))
            (let ((___kont155470155471_
                   (lambda (_L155201_)
                     (let ()
                       (declare (not safe))
                       (_generate-e155042_ _L155201_))))
                  (___kont155472155473_
                   (lambda (_L155136_)
                     (let ((_types155162_
                            (map _generate-e155042_
                                 (let ((__tmp155808
                                        (lambda (_g155154155157_
                                                 _g155155155159_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g155154155157_
                                                  _g155155155159_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp155808 '() _L155136_)))))
                       (declare (not safe))
                       (cons 'begin _types155162_)))))
              (let ((___match155523155524_
                     (lambda (_e155061155088_
                              _hd155062155091_
                              _tl155063155093_
                              _e155064155096_
                              _hd155065155099_
                              _tl155066155101_
                              ___splice155474155475_
                              _target155067155104_
                              _tl155069155106_)
                       (letrec ((_loop155070155109_
                                 (lambda (_hd155068155112_ _id155074155114_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd155068155112_))
                                       (let ((_e155071155117_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd155068155112_))))
                                         (let ((_lp-tl155073155122_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e155071155117_)))
                                               (_lp-hd155072155120_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e155071155117_))))
                                           (let ((__tmp155809
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd155072155120_
                                                          _id155074155114_))))
                                             (declare (not safe))
                                             (_loop155070155109_
                                              _lp-tl155073155122_
                                              __tmp155809))))
                                       (let ((_id155075155125_
                                              (reverse _id155074155114_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl155066155101_))
                                             (let ((_e155076155128_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl155066155101_))))
                                               (let ((_tl155078155133_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e155076155128_)))
                                                     (_hd155077155131_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e155076155128_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl155078155133_))
                                                     (___kont155472155473_
                                                      _id155075155125_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g155045155083_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g155045155083_))))))))
                         (let ()
                           (declare (not safe))
                           (_loop155070155109_ _target155067155104_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx155468155469_))
                    (let ((_e155048155169_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx155468155469_))))
                      (let ((_tl155050155174_
                             (let ()
                               (declare (not safe))
                               (##cdr _e155048155169_)))
                            (_hd155049155172_
                             (let ()
                               (declare (not safe))
                               (##car _e155048155169_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl155050155174_))
                            (let ((_e155051155177_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl155050155174_))))
                              (let ((_tl155053155182_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e155051155177_)))
                                    (_hd155052155180_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e155051155177_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd155052155180_))
                                    (let ((_e155054155185_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd155052155180_))))
                                      (let ((_tl155056155190_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e155054155185_)))
                                            (_hd155055155188_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e155054155185_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl155056155190_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl155053155182_))
                                                (let ((_e155057155193_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl155053155182_))))
                                                  (let ((_tl155059155198_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e155057155193_)))
                                                        (_hd155058155196_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e155057155193_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl155059155198_))
                                                        (___kont155470155471_
                                                         _hd155055155188_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _hd155052155180_))
                                                            (let ((___splice155474155475_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _hd155052155180_ '0))))
                      (let ((_tl155069155106_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice155474155475_ '1)))
                            (_target155067155104_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice155474155475_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl155069155106_))
                            (___match155523155524_
                             _e155048155169_
                             _hd155049155172_
                             _tl155050155174_
                             _e155051155177_
                             _hd155052155180_
                             _tl155053155182_
                             ___splice155474155475_
                             _target155067155104_
                             _tl155069155106_)
                            (let () (declare (not safe)) (_g155045155083_)))))
                    (let () (declare (not safe)) (_g155045155083_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _hd155052155180_))
                                                    (let ((___splice155474155475_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _hd155052155180_
                                                              '0))))
                                                      (let ((_tl155069155106_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice155474155475_ '1)))
                    (_target155067155104_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice155474155475_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl155069155106_))
                    (___match155523155524_
                     _e155048155169_
                     _hd155049155172_
                     _tl155050155174_
                     _e155051155177_
                     _hd155052155180_
                     _tl155053155182_
                     ___splice155474155475_
                     _target155067155104_
                     _tl155069155106_)
                    (let () (declare (not safe)) (_g155045155083_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g155045155083_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _hd155052155180_))
                                                (let ((___splice155474155475_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _hd155052155180_
                                                          '0))))
                                                  (let ((_tl155069155106_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice155474155475_
                                                            '1)))
                                                        (_target155067155104_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice155474155475_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl155069155106_))
                                                        (___match155523155524_
                                                         _e155048155169_
                                                         _hd155049155172_
                                                         _tl155050155174_
                                                         _e155051155177_
                                                         _hd155052155180_
                                                         _tl155053155182_
                                                         ___splice155474155475_
                                                         _target155067155104_
                                                         _tl155069155106_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g155045155083_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g155045155083_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd155052155180_))
                                        (let ((___splice155474155475_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd155052155180_
                                                  '0))))
                                          (let ((_tl155069155106_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice155474155475_
                                                    '1)))
                                                (_target155067155104_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice155474155475_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl155069155106_))
                                                (___match155523155524_
                                                 _e155048155169_
                                                 _hd155049155172_
                                                 _tl155050155174_
                                                 _e155051155177_
                                                 _hd155052155180_
                                                 _tl155053155182_
                                                 ___splice155474155475_
                                                 _target155067155104_
                                                 _tl155069155106_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g155045155083_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g155045155083_))))))
                            (let () (declare (not safe)) (_g155045155083_)))))
                    (let () (declare (not safe)) (_g155045155083_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_self154592_ _stx154593_)
        (let* ((___stx155526155527_ _stx154593_)
               (_g154597154699_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx155526155527_)))))
          (let ((___kont155528155529_
                 (lambda (_L154989_ _L154990_ _L154991_ _L154992_ _L154993_)
                   (let ((__tmp155810
                          (let ((__tmp155817
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L154992_)))
                                (__tmp155811
                                 (let ((__tmp155816
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L154991_)))
                                       (__tmp155812
                                        (let ((__tmp155815
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L154990_)))
                                              (__tmp155813
                                               (let ((__tmp155814
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L154989_))))
                                                 (declare (not safe))
                                                 (cons __tmp155814 '()))))
                                          (declare (not safe))
                                          (cons __tmp155815 __tmp155813))))
                                   (declare (not safe))
                                   (cons __tmp155816 __tmp155812))))
                            (declare (not safe))
                            (cons __tmp155817 __tmp155811))))
                     (declare (not safe))
                     (cons 'declare-method __tmp155810))))
                (___kont155530155531_
                 (lambda (_L154815_ _L154816_ _L154817_ _L154818_)
                   (let ((__tmp155818
                          (let ((__tmp155824
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L154817_)))
                                (__tmp155819
                                 (let ((__tmp155823
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L154816_)))
                                       (__tmp155820
                                        (let ((__tmp155822
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L154815_)))
                                              (__tmp155821
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '#f '()))))
                                          (declare (not safe))
                                          (cons __tmp155822 __tmp155821))))
                                   (declare (not safe))
                                   (cons __tmp155823 __tmp155820))))
                            (declare (not safe))
                            (cons __tmp155824 __tmp155819))))
                     (declare (not safe))
                     (cons 'declare-method __tmp155818))))
                (___kont155532155533_ (lambda () '(begin))))
            (let ((___match155661155662_
                   (lambda (_e154604154861_
                            _hd154605154864_
                            _tl154606154866_
                            _e154607154869_
                            _hd154608154872_
                            _tl154609154874_
                            _e154610154877_
                            _hd154611154880_
                            _tl154612154882_
                            _e154613154885_
                            _hd154614154888_
                            _tl154615154890_
                            _e154616154893_
                            _hd154617154896_
                            _tl154618154898_
                            _e154619154901_
                            _hd154620154904_
                            _tl154621154906_
                            _e154622154909_
                            _hd154623154912_
                            _tl154624154914_
                            _e154625154917_
                            _hd154626154920_
                            _tl154627154922_
                            _e154628154925_
                            _hd154629154928_
                            _tl154630154930_
                            _e154631154933_
                            _hd154632154936_
                            _tl154633154938_
                            _e154634154941_
                            _hd154635154944_
                            _tl154636154946_
                            _e154637154949_
                            _hd154638154952_
                            _tl154639154954_
                            _e154640154957_
                            _hd154641154960_
                            _tl154642154962_
                            _e154643154965_
                            _hd154644154968_
                            _tl154645154970_
                            _e154646154973_
                            _hd154647154976_
                            _tl154648154978_
                            _e154649154981_
                            _hd154650154984_
                            _tl154651154986_)
                     (let ((_L154989_ _hd154650154984_)
                           (_L154990_ _hd154641154960_)
                           (_L154991_ _hd154632154936_)
                           (_L154992_ _hd154623154912_)
                           (_L154993_ _hd154614154888_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L154993_
                              'bind-method!))
                           (___kont155528155529_
                            _L154989_
                            _L154990_
                            _L154991_
                            _L154992_
                            _L154993_)
                           (___kont155532155533_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx155526155527_))
                  (let ((_e154604154861_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx155526155527_))))
                    (let ((_tl154606154866_
                           (let ()
                             (declare (not safe))
                             (##cdr _e154604154861_)))
                          (_hd154605154864_
                           (let ()
                             (declare (not safe))
                             (##car _e154604154861_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl154606154866_))
                          (let ((_e154607154869_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl154606154866_))))
                            (let ((_tl154609154874_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e154607154869_)))
                                  (_hd154608154872_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e154607154869_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd154608154872_))
                                  (let ((_e154610154877_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd154608154872_))))
                                    (let ((_tl154612154882_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e154610154877_)))
                                          (_hd154611154880_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e154610154877_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd154611154880_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd154611154880_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl154612154882_))
                                                  (let ((_e154613154885_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl154612154882_))))
                                                    (let ((_tl154615154890_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e154613154885_)))
                                                          (_hd154614154888_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e154613154885_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl154615154890_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl154609154874_))
                      (let ((_e154616154893_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl154609154874_))))
                        (let ((_tl154618154898_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e154616154893_)))
                              (_hd154617154896_
                               (let ()
                                 (declare (not safe))
                                 (##car _e154616154893_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd154617154896_))
                              (let ((_e154619154901_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd154617154896_))))
                                (let ((_tl154621154906_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e154619154901_)))
                                      (_hd154620154904_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e154619154901_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd154620154904_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd154620154904_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl154621154906_))
                                              (let ((_e154622154909_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl154621154906_))))
                                                (let ((_tl154624154914_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e154622154909_)))
                                                      (_hd154623154912_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e154622154909_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl154624154914_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl154618154898_))
                                                          (let ((_e154625154917_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl154618154898_))))
                    (let ((_tl154627154922_
                           (let ()
                             (declare (not safe))
                             (##cdr _e154625154917_)))
                          (_hd154626154920_
                           (let ()
                             (declare (not safe))
                             (##car _e154625154917_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd154626154920_))
                          (let ((_e154628154925_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd154626154920_))))
                            (let ((_tl154630154930_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e154628154925_)))
                                  (_hd154629154928_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e154628154925_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd154629154928_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd154629154928_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl154630154930_))
                                          (let ((_e154631154933_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl154630154930_))))
                                            (let ((_tl154633154938_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e154631154933_)))
                                                  (_hd154632154936_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e154631154933_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl154633154938_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl154627154922_))
                                                      (let ((_e154634154941_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl154627154922_))))
                (let ((_tl154636154946_
                       (let () (declare (not safe)) (##cdr _e154634154941_)))
                      (_hd154635154944_
                       (let () (declare (not safe)) (##car _e154634154941_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd154635154944_))
                      (let ((_e154637154949_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd154635154944_))))
                        (let ((_tl154639154954_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e154637154949_)))
                              (_hd154638154952_
                               (let ()
                                 (declare (not safe))
                                 (##car _e154637154949_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd154638154952_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd154638154952_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl154639154954_))
                                      (let ((_e154640154957_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl154639154954_))))
                                        (let ((_tl154642154962_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e154640154957_)))
                                              (_hd154641154960_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e154640154957_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl154642154962_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl154636154946_))
                                                  (let ((_e154643154965_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl154636154946_))))
                                                    (let ((_tl154645154970_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e154643154965_)))
                                                          (_hd154644154968_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e154643154965_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd154644154968_))
                                                          (let ((_e154646154973_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd154644154968_))))
                    (let ((_tl154648154978_
                           (let ()
                             (declare (not safe))
                             (##cdr _e154646154973_)))
                          (_hd154647154976_
                           (let ()
                             (declare (not safe))
                             (##car _e154646154973_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd154647154976_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd154647154976_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl154648154978_))
                                  (let ((_e154649154981_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl154648154978_))))
                                    (let ((_tl154651154986_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e154649154981_)))
                                          (_hd154650154984_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e154649154981_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl154651154986_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl154645154970_))
                                              (___match155661155662_
                                               _e154604154861_
                                               _hd154605154864_
                                               _tl154606154866_
                                               _e154607154869_
                                               _hd154608154872_
                                               _tl154609154874_
                                               _e154610154877_
                                               _hd154611154880_
                                               _tl154612154882_
                                               _e154613154885_
                                               _hd154614154888_
                                               _tl154615154890_
                                               _e154616154893_
                                               _hd154617154896_
                                               _tl154618154898_
                                               _e154619154901_
                                               _hd154620154904_
                                               _tl154621154906_
                                               _e154622154909_
                                               _hd154623154912_
                                               _tl154624154914_
                                               _e154625154917_
                                               _hd154626154920_
                                               _tl154627154922_
                                               _e154628154925_
                                               _hd154629154928_
                                               _tl154630154930_
                                               _e154631154933_
                                               _hd154632154936_
                                               _tl154633154938_
                                               _e154634154941_
                                               _hd154635154944_
                                               _tl154636154946_
                                               _e154637154949_
                                               _hd154638154952_
                                               _tl154639154954_
                                               _e154640154957_
                                               _hd154641154960_
                                               _tl154642154962_
                                               _e154643154965_
                                               _hd154644154968_
                                               _tl154645154970_
                                               _e154646154973_
                                               _hd154647154976_
                                               _tl154648154978_
                                               _e154649154981_
                                               _hd154650154984_
                                               _tl154651154986_)
                                              (___kont155532155533_))
                                          (___kont155532155533_))))
                                  (___kont155532155533_))
                              (___kont155532155533_))
                          (___kont155532155533_))))
                  (___kont155532155533_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl154636154946_))
                                                      (if (let ((__tmp155825
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp155825 'bind-method!))
                  (let ((_L154815_ _hd154641154960_)
                        (_L154816_ _hd154632154936_)
                        (_L154817_ _hd154623154912_)
                        (_L154818_ _hd154614154888_))
                    (___kont155530155531_
                     _L154815_
                     _L154816_
                     _L154817_
                     _L154818_))
                  (___kont155532155533_))
              (___kont155532155533_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont155532155533_))))
                                      (___kont155532155533_))
                                  (___kont155532155533_))
                              (___kont155532155533_))))
                      (___kont155532155533_))))
              (___kont155532155533_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont155532155533_))))
                                          (___kont155532155533_))
                                      (___kont155532155533_))
                                  (___kont155532155533_))))
                          (___kont155532155533_))))
                  (___kont155532155533_))
              (___kont155532155533_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont155532155533_))
                                          (___kont155532155533_))
                                      (___kont155532155533_))))
                              (___kont155532155533_))))
                      (___kont155532155533_))
                  (___kont155532155533_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont155532155533_))
                                              (___kont155532155533_))
                                          (___kont155532155533_))))
                                  (___kont155532155533_))))
                          (___kont155532155533_))))
                  (___kont155532155533_)))))))
    (define gxc#!alias::typedecl
      (lambda (_self154568_)
        (let* ((_self154569154575_ _self154568_)
               (_E154571154579_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154569154575_))))
               (_K154572154584_
                (lambda (_alias-id154582_)
                  (let ((__tmp155826
                         (let ()
                           (declare (not safe))
                           (cons _alias-id154582_ '()))))
                    (declare (not safe))
                    (cons '@alias __tmp155826)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self154569154575_ 'gxc#!alias::t))
              (let* ((_e154573154587_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154569154575_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_alias-id154590_ _e154573154587_))
                (declare (not safe))
                (_K154572154584_ _alias-id154590_))
              (let () (declare (not safe)) (_E154571154579_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_self154352_)
        (let* ((_self154353154369_ _self154352_)
               (_E154355154373_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154353154369_))))
               (_K154356154388_
                (lambda (_methods154376_
                         _metaclass154377_
                         _system?154378_
                         _final?154379_
                         _struct?154380_
                         _constructor154381_
                         _fields154382_
                         _slots154383_
                         _precendence-list154384_
                         _super154385_
                         _id154386_)
                  (let ((__tmp155827
                         (let ((__tmp155828
                                (let ((__tmp155829
                                       (let ((__tmp155830
                                              (let ((__tmp155831
                                                     (let ((__tmp155832
                                                            (let ((__tmp155833
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp155834
                                  (let ((__tmp155835
                                         (let ((__tmp155836
                                                (let ((__tmp155837
                                                       (let ((__tmp155838
                                                              (if _methods154376_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (hash->list _methods154376_))
                          '#f)))
                 (declare (not safe))
                 (cons __tmp155838 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _metaclass154377_
                                                        __tmp155837))))
                                           (declare (not safe))
                                           (cons _system?154378_
                                                 __tmp155836))))
                                    (declare (not safe))
                                    (cons _final?154379_ __tmp155835))))
                             (declare (not safe))
                             (cons _struct?154380_ __tmp155834))))
                      (declare (not safe))
                      (cons _constructor154381_ __tmp155833))))
               (declare (not safe))
               (cons _fields154382_ __tmp155832))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _slots154383_
                                                      __tmp155831))))
                                         (declare (not safe))
                                         (cons _precendence-list154384_
                                               __tmp155830))))
                                  (declare (not safe))
                                  (cons _super154385_ __tmp155829))))
                           (declare (not safe))
                           (cons _id154386_ __tmp155828))))
                    (declare (not safe))
                    (cons '@class __tmp155827)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self154353154369_ 'gxc#!class::t))
              (let* ((_e154357154391_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154353154369_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_id154394_ _e154357154391_)
                     (_e154358154396_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154353154369_
                         '2
                         gxc#!class::t
                         '#f)))
                     (_super154399_ _e154358154396_)
                     (_e154359154401_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154353154369_
                         '3
                         gxc#!class::t
                         '#f)))
                     (_precendence-list154404_ _e154359154401_)
                     (_e154360154406_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154353154369_
                         '4
                         gxc#!class::t
                         '#f)))
                     (_slots154409_ _e154360154406_)
                     (_e154361154411_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154353154369_
                         '5
                         gxc#!class::t
                         '#f)))
                     (_fields154414_ _e154361154411_)
                     (_e154362154416_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154353154369_
                         '6
                         gxc#!class::t
                         '#f)))
                     (_constructor154419_ _e154362154416_)
                     (_e154363154421_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154353154369_
                         '7
                         gxc#!class::t
                         '#f)))
                     (_struct?154424_ _e154363154421_)
                     (_e154364154426_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154353154369_
                         '8
                         gxc#!class::t
                         '#f)))
                     (_final?154429_ _e154364154426_)
                     (_e154365154431_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154353154369_
                         '9
                         gxc#!class::t
                         '#f)))
                     (_system?154434_ _e154365154431_)
                     (_e154366154436_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154353154369_
                         '10
                         gxc#!class::t
                         '#f)))
                     (_metaclass154439_ _e154366154436_)
                     (_e154367154441_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154353154369_
                         '11
                         gxc#!class::t
                         '#f)))
                     (_methods154444_ _e154367154441_))
                (declare (not safe))
                (_K154356154388_
                 _methods154444_
                 _metaclass154439_
                 _system?154434_
                 _final?154429_
                 _struct?154424_
                 _constructor154419_
                 _fields154414_
                 _slots154409_
                 _precendence-list154404_
                 _super154399_
                 _id154394_))
              (let () (declare (not safe)) (_E154355154373_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_self154206_)
        (let* ((_self154207154213_ _self154206_)
               (_E154209154217_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154207154213_))))
               (_K154210154222_
                (lambda (_klass-id154220_)
                  (let ((__tmp155839
                         (let ()
                           (declare (not safe))
                           (cons _klass-id154220_ '()))))
                    (declare (not safe))
                    (cons '@predicate __tmp155839)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self154207154213_
                 'gxc#!predicate::t))
              (let* ((_e154211154225_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154207154213_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id154228_ _e154211154225_))
                (declare (not safe))
                (_K154210154222_ _klass-id154228_))
              (let () (declare (not safe)) (_E154209154217_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_self154060_)
        (let* ((_self154061154067_ _self154060_)
               (_E154063154071_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154061154067_))))
               (_K154064154076_
                (lambda (_klass-id154074_)
                  (let ((__tmp155840
                         (let ()
                           (declare (not safe))
                           (cons _klass-id154074_ '()))))
                    (declare (not safe))
                    (cons '@constructor __tmp155840)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self154061154067_
                 'gxc#!constructor::t))
              (let* ((_e154065154079_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154061154067_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id154082_ _e154065154079_))
                (declare (not safe))
                (_K154064154076_ _klass-id154082_))
              (let () (declare (not safe)) (_E154063154071_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_self153900_)
        (let* ((_self153901153909_ _self153900_)
               (_E153903153913_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self153901153909_))))
               (_K153904153920_
                (lambda (_checked?153916_ _slot153917_ _klass-id153918_)
                  (let ((__tmp155841
                         (let ((__tmp155842
                                (let ((__tmp155843
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?153916_ '()))))
                                  (declare (not safe))
                                  (cons _slot153917_ __tmp155843))))
                           (declare (not safe))
                           (cons _klass-id153918_ __tmp155842))))
                    (declare (not safe))
                    (cons '@accessor __tmp155841)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self153901153909_
                 'gxc#!accessor::t))
              (let* ((_e153905153923_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153901153909_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id153926_ _e153905153923_)
                     (_e153906153928_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153901153909_
                         '2
                         gxc#!accessor::t
                         '#f)))
                     (_slot153931_ _e153906153928_)
                     (_e153907153933_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153901153909_
                         '3
                         gxc#!accessor::t
                         '#f)))
                     (_checked?153936_ _e153907153933_))
                (declare (not safe))
                (_K153904153920_
                 _checked?153936_
                 _slot153931_
                 _klass-id153926_))
              (let () (declare (not safe)) (_E153903153913_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_self153740_)
        (let* ((_self153741153749_ _self153740_)
               (_E153743153753_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self153741153749_))))
               (_K153744153760_
                (lambda (_checked?153756_ _slot153757_ _klass-id153758_)
                  (let ((__tmp155844
                         (let ((__tmp155845
                                (let ((__tmp155846
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?153756_ '()))))
                                  (declare (not safe))
                                  (cons _slot153757_ __tmp155846))))
                           (declare (not safe))
                           (cons _klass-id153758_ __tmp155845))))
                    (declare (not safe))
                    (cons '@mutator __tmp155844)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self153741153749_ 'gxc#!mutator::t))
              (let* ((_e153745153763_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153741153749_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id153766_ _e153745153763_)
                     (_e153746153768_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153741153749_
                         '2
                         gxc#!mutator::t
                         '#f)))
                     (_slot153771_ _e153746153768_)
                     (_e153747153773_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153741153749_
                         '3
                         gxc#!mutator::t
                         '#f)))
                     (_checked?153776_ _e153747153773_))
                (declare (not safe))
                (_K153744153760_
                 _checked?153776_
                 _slot153771_
                 _klass-id153766_))
              (let () (declare (not safe)) (_E153743153753_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!lambda::typedecl
      (lambda (_self153566_)
        (let* ((_self153567153577_ _self153566_)
               (_E153569153581_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self153567153577_))))
               (_K153570153592_
                (lambda (_typedecl153584_
                         _inline153585_
                         _dispatch153586_
                         _arity153587_)
                  (if _inline153585_
                      (let ((_$e153589_ _typedecl153584_))
                        (if _$e153589_
                            _$e153589_
                            (let ()
                              (declare (not safe))
                              (error '"Cannot generate typedecl for inline rules"))))
                      (let ((__tmp155847
                             (let ((__tmp155848
                                    (let ()
                                      (declare (not safe))
                                      (cons _dispatch153586_ '()))))
                               (declare (not safe))
                               (cons _arity153587_ __tmp155848))))
                        (declare (not safe))
                        (cons '@lambda __tmp155847))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self153567153577_ 'gxc#!lambda::t))
              (let* ((_e153571153595_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153567153577_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e153572153598_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153567153577_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity153601_ _e153572153598_)
                     (_e153573153603_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153567153577_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch153606_ _e153573153603_)
                     (_e153574153608_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153567153577_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline153611_ _e153574153608_)
                     (_e153575153613_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153567153577_
                         '5
                         gxc#!lambda::t
                         '#f)))
                     (_typedecl153616_ _e153575153613_))
                (declare (not safe))
                (_K153570153592_
                 _typedecl153616_
                 _inline153611_
                 _dispatch153606_
                 _arity153601_))
              (let () (declare (not safe)) (_E153569153581_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_self153377_)
        (letrec ((_clause-e153379_
                  (lambda (_clause153409_)
                    (let* ((_clause153410153418_ _clause153409_)
                           (_E153412153422_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _clause153410153418_))))
                           (_K153413153428_
                            (lambda (_dispatch153425_ _arity153426_)
                              (let ((__tmp155849
                                     (let ()
                                       (declare (not safe))
                                       (cons _dispatch153425_ '()))))
                                (declare (not safe))
                                (cons _arity153426_ __tmp155849)))))
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _clause153410153418_
                             'gxc#!lambda::t))
                          (let* ((_e153414153431_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause153410153418_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                                 (_e153415153434_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause153410153418_
                                     '2
                                     gxc#!lambda::t
                                     '#f)))
                                 (_arity153437_ _e153415153434_)
                                 (_e153416153439_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause153410153418_
                                     '3
                                     gxc#!lambda::t
                                     '#f)))
                                 (_dispatch153442_ _e153416153439_))
                            (declare (not safe))
                            (_K153413153428_ _dispatch153442_ _arity153437_))
                          (let () (declare (not safe)) (_E153412153422_)))))))
          (let* ((_self153380153387_ _self153377_)
                 (_E153382153391_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching" _self153380153387_))))
                 (_K153383153398_
                  (lambda (_clauses153394_)
                    (let ((_clauses153396_
                           (map _clause-e153379_ _clauses153394_)))
                      (declare (not safe))
                      (cons '@case-lambda _clauses153396_)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of?
                   _self153380153387_
                   'gxc#!case-lambda::t))
                (let* ((_e153384153401_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self153380153387_
                           '1
                           gxc#!type::t
                           '#f)))
                       (_e153385153404_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self153380153387_
                           '2
                           gxc#!case-lambda::t
                           '#f)))
                       (_clauses153407_ _e153385153404_))
                  (declare (not safe))
                  (_K153383153398_ _clauses153407_))
                (let () (declare (not safe)) (_E153382153391_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_self153220_)
        (let* ((_self153221153229_ _self153220_)
               (_E153223153233_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self153221153229_))))
               (_K153224153239_
                (lambda (_dispatch153236_ _table153237_)
                  (let ((__tmp155850
                         (let ((__tmp155851
                                (let ()
                                  (declare (not safe))
                                  (cons _dispatch153236_ '()))))
                           (declare (not safe))
                           (cons _table153237_ __tmp155851))))
                    (declare (not safe))
                    (cons '@kw-lambda __tmp155850)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self153221153229_
                 'gxc#!kw-lambda::t))
              (let* ((_e153225153242_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153221153229_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e153226153245_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153221153229_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table153248_ _e153226153245_)
                     (_e153227153250_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153221153229_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch153253_ _e153227153250_))
                (declare (not safe))
                (_K153224153239_ _dispatch153253_ _table153248_))
              (let () (declare (not safe)) (_E153223153233_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda::t
       'typedecl
       gxc#!kw-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_self153063_)
        (let* ((_self153064153072_ _self153063_)
               (_E153066153076_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self153064153072_))))
               (_K153067153082_
                (lambda (_main153079_ _keys153080_)
                  (let ((__tmp155852
                         (let ((__tmp155853
                                (let ()
                                  (declare (not safe))
                                  (cons _main153079_ '()))))
                           (declare (not safe))
                           (cons _keys153080_ __tmp155853))))
                    (declare (not safe))
                    (cons '@kw-lambda-dispatch __tmp155852)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self153064153072_
                 'gxc#!kw-lambda-primary::t))
              (let* ((_e153068153085_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153064153072_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e153069153088_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153064153072_
                         '2
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_keys153091_ _e153069153088_)
                     (_e153070153093_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153064153072_
                         '3
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_main153096_ _e153070153093_))
                (declare (not safe))
                (_K153067153082_ _main153096_ _keys153091_))
              (let () (declare (not safe)) (_E153066153076_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))))
