(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1711709202)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (gxc#current-compile-optimizer-info)
            '#!void
            (gxc#current-compile-optimizer-info
             (let ((__obj155894
                    (let ()
                      (declare (not safe))
                      (##structure gxc#optimizer-info::t '#f '#f '#f '#f))))
               (gxc#optimizer-info:::init! __obj155894)
               __obj155894)))))
    (define gxc#optimize!
      (lambda (_ctx155503_)
        (let ((__tmp155901
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-builtin-ssxi _ctx155503_))
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _ctx155503_))
                 (let ((__tmp155903
                        (##structure-ref
                         (gxc#current-compile-optimizer-info)
                         '3
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp155902
                        (##structure-ref
                         _ctx155503_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp155903 __tmp155902 '#t))
                 (let ((_code155506_
                        (let ((__tmp155904
                               (##structure-ref
                                _ctx155503_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp155904))))
                   (##structure-set!
                    _ctx155503_
                    _code155506_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp155900 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp155899 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (__call-with-parameters
           __tmp155901
           gxc#current-compile-mutators
           __tmp155900
           gxc#current-compile-local-type
           __tmp155899))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_ctx155492_)
        (letrec ((_load-it!155494_
                  (lambda (_id155501_)
                    (if (let ((__tmp155905
                               (##structure-ref
                                (gxc#current-compile-optimizer-info)
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp155905 _id155501_))
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-import-ssxi-by-id _id155501_))
                          (let ((__tmp155906
                                 (##structure-ref
                                  (gxc#current-compile-optimizer-info)
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp155906 _id155501_ '#t)))))))
          (let* ((_modid155496_
                  (##structure-ref _ctx155492_ '1 gx#expander-context::t '#f))
                 (_modid-str155498_ (symbol->string _modid155496_)))
            (let ()
              (declare (not safe))
              (##for-each
               _load-it!155494_
               '(gerbil/builtin
                 gerbil/runtime/gambit
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
                 gerbil/builtin-inline-rules)))))))
    (define gxc#optimizer-load-ssxi-deps
      (lambda (_ctx155437_)
        (letrec* ((_deps155439_
                   (let* ((_imports155483_
                           (##structure-ref
                            _ctx155437_
                            '8
                            gx#module-context::t
                            '#f))
                          (_$e155485_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _ctx155437_))))
                     (if _$e155485_
                         ((lambda (_g155487155489_)
                            (cons _g155487155489_ _imports155483_))
                          _$e155485_)
                         _imports155483_))))
          (let _lp155441_ ((_rest155443_ _deps155439_))
            (let* ((_rest155444155452_ _rest155443_)
                   (_else155446155460_ (lambda () '#!void))
                   (_K155448155471_
                    (lambda (_rest155463_ _hd155464_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _hd155464_
                             'gx#module-context::t))
                          (begin
                            (if (let ((__tmp155908
                                       (##structure-ref
                                        (gxc#current-compile-optimizer-info)
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp155907
                                       (##structure-ref
                                        _hd155464_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (hash-get __tmp155908 __tmp155907))
                                '#!void
                                (begin
                                  (let ((_$e155466_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _hd155464_))))
                                    (if _$e155466_
                                        ((lambda (_pre155469_)
                                           (let ((__tmp155909
                                                  (cons _pre155469_
                                                        (##structure-ref
                                                         _hd155464_
                                                         '8
                                                         gx#module-context::t
                                                         '#f))))
                                             (declare (not safe))
                                             (_lp155441_ __tmp155909)))
                                         _$e155466_)
                                        (let ((__tmp155910
                                               (##structure-ref
                                                _hd155464_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                          (declare (not safe))
                                          (_lp155441_ __tmp155910))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _hd155464_))))
                            (let ()
                              (declare (not safe))
                              (_lp155441_ _rest155463_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _hd155464_
                                 'gx#prelude-context::t))
                              (begin
                                (if (let ((__tmp155912
                                           (##structure-ref
                                            (gxc#current-compile-optimizer-info)
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp155911
                                           (##structure-ref
                                            _hd155464_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (hash-get __tmp155912 __tmp155911))
                                    '#!void
                                    (begin
                                      (let ((__tmp155913
                                             (##structure-ref
                                              _hd155464_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_lp155441_ __tmp155913))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi _hd155464_))))
                                (let ()
                                  (declare (not safe))
                                  (_lp155441_ _rest155463_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _hd155464_
                                     'gx#module-import::t))
                                  (let ((__tmp155914
                                         (cons (##direct-structure-ref
                                                _hd155464_
                                                '1
                                                gx#module-import::t
                                                '#f)
                                               _rest155463_)))
                                    (declare (not safe))
                                    (_lp155441_ __tmp155914))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _hd155464_
                                         'gx#module-export::t))
                                      (let ((__tmp155915
                                             (cons (##direct-structure-ref
                                                    _hd155464_
                                                    '1
                                                    gx#module-export::t
                                                    '#f)
                                                   _rest155463_)))
                                        (declare (not safe))
                                        (_lp155441_ __tmp155915))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _hd155464_
                                             'gx#import-set::t))
                                          (let ((__tmp155916
                                                 (cons (##direct-structure-ref
                                                        _hd155464_
                                                        '1
                                                        gx#import-set::t
                                                        '#f)
                                                       _rest155463_)))
                                            (declare (not safe))
                                            (_lp155441_ __tmp155916))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _hd155464_))))))))))
              (if (let () (declare (not safe)) (##pair? _rest155444155452_))
                  (let ((_hd155449155474_
                         (let ()
                           (declare (not safe))
                           (##car _rest155444155452_)))
                        (_tl155450155476_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest155444155452_))))
                    (let* ((_hd155479_ _hd155449155474_)
                           (_rest155481_ _tl155450155476_))
                      (declare (not safe))
                      (_K155448155471_ _rest155481_ _hd155479_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_ctx155417_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _ctx155417_
                    'gx#module-context::t))
                 (let ((__tmp155917
                        (##structure-ref
                         _ctx155417_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp155917)))
            '#!void
            (let* ((_ht155419_
                    (##structure-ref
                     (gxc#current-compile-optimizer-info)
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_id155421_
                    (##structure-ref
                     _ctx155417_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_mod155423_
                    (let ()
                      (declare (not safe))
                      (hash-get _ht155419_ _id155421_))))
              (let ((_$e155426_ _mod155423_))
                (if _$e155426_
                    _$e155426_
                    (let* ((_mod155429_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-import-ssxi _ctx155417_)))
                           (_val155434_
                            (let ((_$e155431_ _mod155429_))
                              (if _$e155431_ _$e155431_ '#!void))))
                      (let ()
                        (declare (not safe))
                        (hash-put! _ht155419_ _id155421_ _val155434_))
                      _val155434_)))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_ctx155415_)
        (if (##structure-ref _ctx155415_ '1 gx#expander-context::t '#f)
            (let ((__tmp155918
                   (##structure-ref
                    _ctx155415_
                    '1
                    gx#expander-context::t
                    '#f)))
              (declare (not safe))
              (gxc#optimizer-import-ssxi-by-id __tmp155918))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_id155392_)
        (letrec ((_catch-e155394_
                  (lambda (_exn155413_)
                    (let ()
                      (declare (not safe))
                      (display-exception _exn155413_))
                    (let ()
                      (declare (not safe))
                      (__displayln
                       '"*** WARNING Failed to load ssxi module for "
                       _id155392_))
                    '#f))
                 (_import-e155395_
                  (lambda ()
                    (let* ((_str-id155398_
                            (let ((__tmp155919
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string _id155392_))))
                              (declare (not safe))
                              (##string-append __tmp155919 '".ssxi")))
                           (_artefact-path155406_
                            (let ((_odir155399155401_
                                   (gxc#current-compile-output-dir)))
                              (if _odir155399155401_
                                  (let ((_odir155404_ _odir155399155401_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append _str-id155398_ '".ss"))
                                     _odir155404_))
                                  '#f)))
                           (_library-path155408_
                            (let ((__tmp155920
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _str-id155398_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp155920)))
                           (_ssxi-path155410_
                            (if (and _artefact-path155406_
                                     (file-exists? _artefact-path155406_))
                                _artefact-path155406_
                                _library-path155408_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _ssxi-path155410_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _ssxi-path155410_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _catch-e155394_ _import-e155395_)))))
    (define gxc#optimize-source
      (lambda (_stx155383_)
        (let () (declare (not safe)) (gxc#apply-collect-mutators _stx155383_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _stx155383_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _stx155383_))
        (let* ((_stx155385_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _stx155383_)))
               (_stx155387_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _stx155385_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _stx155387_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _stx155387_))
          (let ((_stx155390_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _stx155387_))))
            (declare (not safe))
            (gxc#apply-optimize-call _stx155390_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp155922 (list gxc#::generate-runtime-empty::t))
            (__tmp155921 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp155922
         '()
         __tmp155921
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _$args155380_
        (apply make-instance gxc#::generate-ssxi::t _$args155380_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp155923
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
                  '%#begin-annotation
                  gxc#generate-ssxi-begin-annotation%))
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
                 (__seal-class! gxc#::generate-ssxi::t)))))
        (declare (not safe))
        (__make-promise __tmp155923)))
    (define gxc#apply-generate-ssxi
      (lambda (_stx155372_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_self155375_
                (let ((__obj155896
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj155896))
               (__tmp155924
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self155375_ _stx155372_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp155924
           gxc#current-compile-method
           _self155375_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_self155332_ _stx155333_)
        (let* ((_g155335155345_
                (lambda (_g155336155342_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g155336155342_))))
               (_g155334155369_
                (lambda (_g155336155348_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g155336155348_))
                      (let ((_e155340155350_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g155336155348_))))
                        (let ((_hd155339155353_
                               (let ()
                                 (declare (not safe))
                                 (##car _e155340155350_)))
                              (_tl155338155355_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e155340155350_))))
                          ((lambda (_L155358_)
                             (let ((__tmp155927
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _self155332_
                                         _stx155333_))))
                                   (__tmp155925
                                    (let ((__tmp155926
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (##fx+ __tmp155926 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp155927
                                gx#current-expander-phi
                                __tmp155925)))
                           _tl155338155355_)))
                      (let ()
                        (declare (not safe))
                        (_g155335155345_ _g155336155348_))))))
          (declare (not safe))
          (_g155334155369_ _stx155333_))))
    (define gxc#generate-ssxi-module%
      (lambda (_self155271_ _stx155272_)
        (let* ((_g155274155288_
                (lambda (_g155275155285_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g155275155285_))))
               (_g155273155329_
                (lambda (_g155275155291_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g155275155291_))
                      (let ((_e155280155293_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g155275155291_))))
                        (let ((_hd155279155296_
                               (let ()
                                 (declare (not safe))
                                 (##car _e155280155293_)))
                              (_tl155278155298_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e155280155293_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl155278155298_))
                              (let ((_e155283155301_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl155278155298_))))
                                (let ((_hd155282155304_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e155283155301_)))
                                      (_tl155281155306_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e155283155301_))))
                                  ((lambda (_L155309_ _L155310_)
                                     (let* ((_ctx155323_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L155310_)))
                                            (_code155325_
                                             (##structure-ref
                                              _ctx155323_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp155928
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self155271_
                                                   _code155325_)))))
                                         (declare (not safe))
                                         (__call-with-parameters
                                          __tmp155928
                                          gx#current-expander-context
                                          _ctx155323_))))
                                   _tl155281155306_
                                   _hd155282155304_)))
                              (let ()
                                (declare (not safe))
                                (_g155274155288_ _g155275155291_)))))
                      (let ()
                        (declare (not safe))
                        (_g155274155288_ _g155275155291_))))))
          (declare (not safe))
          (_g155273155329_ _stx155272_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_self155075_ _stx155076_)
        (letrec ((_generate-e155078_
                  (lambda (_id155255_)
                    (let* ((_sym155257_
                            (if (let ((__tmp155929
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp155929))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _id155255_))
                                '#f))
                           (_$e155259_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _sym155257_))))
                      (if _$e155259_
                          ((lambda (_klass155262_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _sym155257_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _sym155257_
                                                     (cons (let ((__method155897
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _klass155262_ 'typedecl))))
                     (if __method155897
                         (__method155897 _klass155262_)
                         (let ()
                           (declare (not safe))
                           (error '"Missing method" _klass155262_ 'typedecl))))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _sym155257_
                                                           (cons '(optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'typedecl
                           'class::t)
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _$e155259_)
                          (let ((_$e155264_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _sym155257_))))
                            (if _$e155264_
                                ((lambda (_type155267_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _sym155257_))
                                   (let ((_typedecl155269_
                                          (let ((__method155898
                                                 (let ()
                                                   (declare (not safe))
                                                   (__method-ref
                                                    _type155267_
                                                    'typedecl))))
                                            (if __method155898
                                                (__method155898 _type155267_)
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"Missing method"
                                                         _type155267_
                                                         'typedecl))))))
                                     (cons 'declare-type
                                           (cons _sym155257_
                                                 (cons _typedecl155269_
                                                       '())))))
                                 _$e155264_)
                                '(begin))))))))
          (let* ((___stx155509155510_ _stx155076_)
                 (_g155081155119_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx155509155510_)))))
            (let ((___kont155511155512_
                   (lambda (_L155237_)
                     (let ()
                       (declare (not safe))
                       (_generate-e155078_ _L155237_))))
                  (___kont155513155514_
                   (lambda (_L155172_)
                     (let ((_types155198_
                            (map _generate-e155078_
                                 (let ((__tmp155930
                                        (lambda (_g155190155193_
                                                 _g155191155195_)
                                          (cons _g155190155193_
                                                _g155191155195_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp155930 '() _L155172_)))))
                       (cons 'begin _types155198_)))))
              (let ((___match155564155565_
                     (lambda (_e155099155124_
                              _hd155098155127_
                              _tl155097155129_
                              _e155102155132_
                              _hd155101155135_
                              _tl155100155137_
                              ___splice155515155516_
                              _target155103155140_
                              _tl155105155142_)
                       (letrec ((_loop155106155145_
                                 (lambda (_hd155104155148_ _id155110155150_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd155104155148_))
                                       (let ((_e155107155153_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd155104155148_))))
                                         (let ((_lp-tl155109155158_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e155107155153_)))
                                               (_lp-hd155108155156_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e155107155153_))))
                                           (let ((__tmp155931
                                                  (cons _lp-hd155108155156_
                                                        _id155110155150_)))
                                             (declare (not safe))
                                             (_loop155106155145_
                                              _lp-tl155109155158_
                                              __tmp155931))))
                                       (let ((_id155111155161_
                                              (reverse _id155110155150_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl155100155137_))
                                             (let ((_e155114155164_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl155100155137_))))
                                               (let ((_tl155112155169_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e155114155164_)))
                                                     (_hd155113155167_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e155114155164_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl155112155169_))
                                                     (___kont155513155514_
                                                      _id155111155161_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g155081155119_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g155081155119_))))))))
                         (let ()
                           (declare (not safe))
                           (_loop155106155145_ _target155103155140_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx155509155510_))
                    (let ((_e155086155205_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx155509155510_))))
                      (let ((_tl155084155210_
                             (let ()
                               (declare (not safe))
                               (##cdr _e155086155205_)))
                            (_hd155085155208_
                             (let ()
                               (declare (not safe))
                               (##car _e155086155205_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl155084155210_))
                            (let ((_e155089155213_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl155084155210_))))
                              (let ((_tl155087155218_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e155089155213_)))
                                    (_hd155088155216_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e155089155213_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd155088155216_))
                                    (let ((_e155092155221_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd155088155216_))))
                                      (let ((_tl155090155226_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e155092155221_)))
                                            (_hd155091155224_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e155092155221_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl155090155226_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl155087155218_))
                                                (let ((_e155095155229_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl155087155218_))))
                                                  (let ((_tl155093155234_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e155095155229_)))
                                                        (_hd155094155232_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e155095155229_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl155093155234_))
                                                        (___kont155511155512_
                                                         _hd155091155224_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _hd155088155216_))
                                                            (let ((___splice155515155516_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _hd155088155216_ '0))))
                      (let ((_tl155105155142_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice155515155516_ '1)))
                            (_target155103155140_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice155515155516_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl155105155142_))
                            (___match155564155565_
                             _e155086155205_
                             _hd155085155208_
                             _tl155084155210_
                             _e155089155213_
                             _hd155088155216_
                             _tl155087155218_
                             ___splice155515155516_
                             _target155103155140_
                             _tl155105155142_)
                            (let () (declare (not safe)) (_g155081155119_)))))
                    (let () (declare (not safe)) (_g155081155119_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _hd155088155216_))
                                                    (let ((___splice155515155516_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _hd155088155216_
                                                              '0))))
                                                      (let ((_tl155105155142_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice155515155516_ '1)))
                    (_target155103155140_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice155515155516_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl155105155142_))
                    (___match155564155565_
                     _e155086155205_
                     _hd155085155208_
                     _tl155084155210_
                     _e155089155213_
                     _hd155088155216_
                     _tl155087155218_
                     ___splice155515155516_
                     _target155103155140_
                     _tl155105155142_)
                    (let () (declare (not safe)) (_g155081155119_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g155081155119_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _hd155088155216_))
                                                (let ((___splice155515155516_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _hd155088155216_
                                                          '0))))
                                                  (let ((_tl155105155142_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice155515155516_
                                                            '1)))
                                                        (_target155103155140_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice155515155516_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl155105155142_))
                                                        (___match155564155565_
                                                         _e155086155205_
                                                         _hd155085155208_
                                                         _tl155084155210_
                                                         _e155089155213_
                                                         _hd155088155216_
                                                         _tl155087155218_
                                                         ___splice155515155516_
                                                         _target155103155140_
                                                         _tl155105155142_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g155081155119_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g155081155119_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd155088155216_))
                                        (let ((___splice155515155516_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd155088155216_
                                                  '0))))
                                          (let ((_tl155105155142_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice155515155516_
                                                    '1)))
                                                (_target155103155140_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice155515155516_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl155105155142_))
                                                (___match155564155565_
                                                 _e155086155205_
                                                 _hd155085155208_
                                                 _tl155084155210_
                                                 _e155089155213_
                                                 _hd155088155216_
                                                 _tl155087155218_
                                                 ___splice155515155516_
                                                 _target155103155140_
                                                 _tl155105155142_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g155081155119_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g155081155119_))))))
                            (let () (declare (not safe)) (_g155081155119_)))))
                    (let () (declare (not safe)) (_g155081155119_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_self154628_ _stx154629_)
        (let* ((___stx155567155568_ _stx154629_)
               (_g154633154735_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx155567155568_)))))
          (let ((___kont155569155570_
                 (lambda (_L155025_ _L155026_ _L155027_ _L155028_ _L155029_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _L155028_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _L155027_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol _L155026_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _L155025_))
                                                 '())))))))
                (___kont155571155572_
                 (lambda (_L154851_ _L154852_ _L154853_ _L154854_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _L154853_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _L154852_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol _L154851_))
                                           (cons '#f '())))))))
                (___kont155573155574_ (lambda () '(begin))))
            (let ((___match155702155703_
                   (lambda (_e154642154897_
                            _hd154641154900_
                            _tl154640154902_
                            _e154645154905_
                            _hd154644154908_
                            _tl154643154910_
                            _e154648154913_
                            _hd154647154916_
                            _tl154646154918_
                            _e154651154921_
                            _hd154650154924_
                            _tl154649154926_
                            _e154654154929_
                            _hd154653154932_
                            _tl154652154934_
                            _e154657154937_
                            _hd154656154940_
                            _tl154655154942_
                            _e154660154945_
                            _hd154659154948_
                            _tl154658154950_
                            _e154663154953_
                            _hd154662154956_
                            _tl154661154958_
                            _e154666154961_
                            _hd154665154964_
                            _tl154664154966_
                            _e154669154969_
                            _hd154668154972_
                            _tl154667154974_
                            _e154672154977_
                            _hd154671154980_
                            _tl154670154982_
                            _e154675154985_
                            _hd154674154988_
                            _tl154673154990_
                            _e154678154993_
                            _hd154677154996_
                            _tl154676154998_
                            _e154681155001_
                            _hd154680155004_
                            _tl154679155006_
                            _e154684155009_
                            _hd154683155012_
                            _tl154682155014_
                            _e154687155017_
                            _hd154686155020_
                            _tl154685155022_)
                     (let ((_L155025_ _hd154686155020_)
                           (_L155026_ _hd154677154996_)
                           (_L155027_ _hd154668154972_)
                           (_L155028_ _hd154659154948_)
                           (_L155029_ _hd154650154924_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L155029_
                              'bind-method!))
                           (___kont155569155570_
                            _L155025_
                            _L155026_
                            _L155027_
                            _L155028_
                            _L155029_)
                           (___kont155573155574_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx155567155568_))
                  (let ((_e154642154897_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx155567155568_))))
                    (let ((_tl154640154902_
                           (let ()
                             (declare (not safe))
                             (##cdr _e154642154897_)))
                          (_hd154641154900_
                           (let ()
                             (declare (not safe))
                             (##car _e154642154897_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl154640154902_))
                          (let ((_e154645154905_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl154640154902_))))
                            (let ((_tl154643154910_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e154645154905_)))
                                  (_hd154644154908_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e154645154905_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd154644154908_))
                                  (let ((_e154648154913_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd154644154908_))))
                                    (let ((_tl154646154918_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e154648154913_)))
                                          (_hd154647154916_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e154648154913_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd154647154916_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd154647154916_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl154646154918_))
                                                  (let ((_e154651154921_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl154646154918_))))
                                                    (let ((_tl154649154926_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e154651154921_)))
                                                          (_hd154650154924_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e154651154921_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl154649154926_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl154643154910_))
                      (let ((_e154654154929_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl154643154910_))))
                        (let ((_tl154652154934_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e154654154929_)))
                              (_hd154653154932_
                               (let ()
                                 (declare (not safe))
                                 (##car _e154654154929_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd154653154932_))
                              (let ((_e154657154937_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd154653154932_))))
                                (let ((_tl154655154942_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e154657154937_)))
                                      (_hd154656154940_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e154657154937_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd154656154940_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd154656154940_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl154655154942_))
                                              (let ((_e154660154945_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl154655154942_))))
                                                (let ((_tl154658154950_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e154660154945_)))
                                                      (_hd154659154948_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e154660154945_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl154658154950_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl154652154934_))
                                                          (let ((_e154663154953_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl154652154934_))))
                    (let ((_tl154661154958_
                           (let ()
                             (declare (not safe))
                             (##cdr _e154663154953_)))
                          (_hd154662154956_
                           (let ()
                             (declare (not safe))
                             (##car _e154663154953_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd154662154956_))
                          (let ((_e154666154961_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd154662154956_))))
                            (let ((_tl154664154966_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e154666154961_)))
                                  (_hd154665154964_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e154666154961_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd154665154964_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd154665154964_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl154664154966_))
                                          (let ((_e154669154969_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl154664154966_))))
                                            (let ((_tl154667154974_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e154669154969_)))
                                                  (_hd154668154972_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e154669154969_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl154667154974_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl154661154958_))
                                                      (let ((_e154672154977_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl154661154958_))))
                (let ((_tl154670154982_
                       (let () (declare (not safe)) (##cdr _e154672154977_)))
                      (_hd154671154980_
                       (let () (declare (not safe)) (##car _e154672154977_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd154671154980_))
                      (let ((_e154675154985_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd154671154980_))))
                        (let ((_tl154673154990_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e154675154985_)))
                              (_hd154674154988_
                               (let ()
                                 (declare (not safe))
                                 (##car _e154675154985_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd154674154988_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd154674154988_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl154673154990_))
                                      (let ((_e154678154993_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl154673154990_))))
                                        (let ((_tl154676154998_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e154678154993_)))
                                              (_hd154677154996_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e154678154993_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl154676154998_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl154670154982_))
                                                  (let ((_e154681155001_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl154670154982_))))
                                                    (let ((_tl154679155006_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e154681155001_)))
                                                          (_hd154680155004_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e154681155001_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd154680155004_))
                                                          (let ((_e154684155009_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd154680155004_))))
                    (let ((_tl154682155014_
                           (let ()
                             (declare (not safe))
                             (##cdr _e154684155009_)))
                          (_hd154683155012_
                           (let ()
                             (declare (not safe))
                             (##car _e154684155009_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd154683155012_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd154683155012_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl154682155014_))
                                  (let ((_e154687155017_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl154682155014_))))
                                    (let ((_tl154685155022_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e154687155017_)))
                                          (_hd154686155020_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e154687155017_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl154685155022_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl154679155006_))
                                              (___match155702155703_
                                               _e154642154897_
                                               _hd154641154900_
                                               _tl154640154902_
                                               _e154645154905_
                                               _hd154644154908_
                                               _tl154643154910_
                                               _e154648154913_
                                               _hd154647154916_
                                               _tl154646154918_
                                               _e154651154921_
                                               _hd154650154924_
                                               _tl154649154926_
                                               _e154654154929_
                                               _hd154653154932_
                                               _tl154652154934_
                                               _e154657154937_
                                               _hd154656154940_
                                               _tl154655154942_
                                               _e154660154945_
                                               _hd154659154948_
                                               _tl154658154950_
                                               _e154663154953_
                                               _hd154662154956_
                                               _tl154661154958_
                                               _e154666154961_
                                               _hd154665154964_
                                               _tl154664154966_
                                               _e154669154969_
                                               _hd154668154972_
                                               _tl154667154974_
                                               _e154672154977_
                                               _hd154671154980_
                                               _tl154670154982_
                                               _e154675154985_
                                               _hd154674154988_
                                               _tl154673154990_
                                               _e154678154993_
                                               _hd154677154996_
                                               _tl154676154998_
                                               _e154681155001_
                                               _hd154680155004_
                                               _tl154679155006_
                                               _e154684155009_
                                               _hd154683155012_
                                               _tl154682155014_
                                               _e154687155017_
                                               _hd154686155020_
                                               _tl154685155022_)
                                              (___kont155573155574_))
                                          (___kont155573155574_))))
                                  (___kont155573155574_))
                              (___kont155573155574_))
                          (___kont155573155574_))))
                  (___kont155573155574_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl154670154982_))
                                                      (if (let ((__tmp155932
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp155932 'bind-method!))
                  (let ((_L154851_ _hd154677154996_)
                        (_L154852_ _hd154668154972_)
                        (_L154853_ _hd154659154948_)
                        (_L154854_ _hd154650154924_))
                    (___kont155571155572_
                     _L154851_
                     _L154852_
                     _L154853_
                     _L154854_))
                  (___kont155573155574_))
              (___kont155573155574_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont155573155574_))))
                                      (___kont155573155574_))
                                  (___kont155573155574_))
                              (___kont155573155574_))))
                      (___kont155573155574_))))
              (___kont155573155574_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont155573155574_))))
                                          (___kont155573155574_))
                                      (___kont155573155574_))
                                  (___kont155573155574_))))
                          (___kont155573155574_))))
                  (___kont155573155574_))
              (___kont155573155574_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont155573155574_))
                                          (___kont155573155574_))
                                      (___kont155573155574_))))
                              (___kont155573155574_))))
                      (___kont155573155574_))
                  (___kont155573155574_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont155573155574_))
                                              (___kont155573155574_))
                                          (___kont155573155574_))))
                                  (___kont155573155574_))))
                          (___kont155573155574_))))
                  (___kont155573155574_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_self154452_ _stx154453_)
        (let* ((___stx155811155812_ _stx154453_)
               (_g154456154496_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx155811155812_)))))
          (let ((___kont155813155814_
                 (lambda (_L154602_ _L154603_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _L154603_))
                               (cons _L154602_ '())))))
                (___kont155815155816_ (lambda (_L154525_ _L154526_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx155811155812_))
                (let ((_e154462154546_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx155811155812_))))
                  (let ((_tl154460154551_
                         (let () (declare (not safe)) (##cdr _e154462154546_)))
                        (_hd154461154549_
                         (let ()
                           (declare (not safe))
                           (##car _e154462154546_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl154460154551_))
                        (let ((_e154465154554_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl154460154551_))))
                          (let ((_tl154463154559_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e154465154554_)))
                                (_hd154464154557_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e154465154554_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd154464154557_))
                                (let ((_e154468154562_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd154464154557_))))
                                  (let ((_tl154466154567_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e154468154562_)))
                                        (_hd154467154565_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e154468154562_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd154467154565_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _hd154467154565_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl154466154567_))
                                                (let ((_e154471154570_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl154466154567_))))
                                                  (let ((_tl154469154575_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e154471154570_)))
                                                        (_hd154470154573_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e154471154570_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl154469154575_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl154463154559_))
                                                            (let ((_e154474154578_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl154463154559_))))
                      (let ((_tl154472154583_
                             (let ()
                               (declare (not safe))
                               (##cdr _e154474154578_)))
                            (_hd154473154581_
                             (let ()
                               (declare (not safe))
                               (##car _e154474154578_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd154473154581_))
                            (let ((_e154477154586_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd154473154581_))))
                              (let ((_tl154475154591_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e154477154586_)))
                                    (_hd154476154589_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e154477154586_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd154476154589_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd154476154589_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl154475154591_))
                                            (let ((_e154480154594_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl154475154591_))))
                                              (let ((_tl154478154599_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e154480154594_)))
                                                    (_hd154479154597_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e154480154594_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl154478154599_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl154472154583_))
                                                        (___kont155813155814_
                                                         _hd154479154597_
                                                         _hd154470154573_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g154456154496_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl154472154583_))
                                                        (___kont155815155816_
                                                         _hd154473154581_
                                                         _hd154464154557_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g154456154496_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl154472154583_))
                                                (___kont155815155816_
                                                 _hd154473154581_
                                                 _hd154464154557_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g154456154496_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl154472154583_))
                                            (___kont155815155816_
                                             _hd154473154581_
                                             _hd154464154557_)
                                            (let ()
                                              (declare (not safe))
                                              (_g154456154496_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl154472154583_))
                                        (___kont155815155816_
                                         _hd154473154581_
                                         _hd154464154557_)
                                        (let ()
                                          (declare (not safe))
                                          (_g154456154496_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl154472154583_))
                                (___kont155815155816_
                                 _hd154473154581_
                                 _hd154464154557_)
                                (let ()
                                  (declare (not safe))
                                  (_g154456154496_))))))
                    (let () (declare (not safe)) (_g154456154496_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl154463154559_))
                    (let ((_e154491154517_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl154463154559_))))
                      (let ((_tl154489154522_
                             (let ()
                               (declare (not safe))
                               (##cdr _e154491154517_)))
                            (_hd154490154520_
                             (let ()
                               (declare (not safe))
                               (##car _e154491154517_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl154489154522_))
                            (___kont155815155816_
                             _hd154490154520_
                             _hd154464154557_)
                            (let () (declare (not safe)) (_g154456154496_)))))
                    (let () (declare (not safe)) (_g154456154496_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl154463154559_))
                                                    (let ((_e154491154517_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl154463154559_))))
                                                      (let ((_tl154489154522_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e154491154517_)))
                    (_hd154490154520_
                     (let () (declare (not safe)) (##car _e154491154517_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl154489154522_))
                    (___kont155815155816_ _hd154490154520_ _hd154464154557_)
                    (let () (declare (not safe)) (_g154456154496_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g154456154496_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl154463154559_))
                                                (let ((_e154491154517_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl154463154559_))))
                                                  (let ((_tl154489154522_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e154491154517_)))
                                                        (_hd154490154520_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e154491154517_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl154489154522_))
                                                        (___kont155815155816_
                                                         _hd154490154520_
                                                         _hd154464154557_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g154456154496_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g154456154496_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl154463154559_))
                                            (let ((_e154491154517_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl154463154559_))))
                                              (let ((_tl154489154522_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e154491154517_)))
                                                    (_hd154490154520_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e154491154517_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl154489154522_))
                                                    (___kont155815155816_
                                                     _hd154490154520_
                                                     _hd154464154557_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g154456154496_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g154456154496_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl154463154559_))
                                    (let ((_e154491154517_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl154463154559_))))
                                      (let ((_tl154489154522_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e154491154517_)))
                                            (_hd154490154520_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e154491154517_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl154489154522_))
                                            (___kont155815155816_
                                             _hd154490154520_
                                             _hd154464154557_)
                                            (let ()
                                              (declare (not safe))
                                              (_g154456154496_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g154456154496_))))))
                        (let () (declare (not safe)) (_g154456154496_)))))
                (let () (declare (not safe)) (_g154456154496_)))))))
    (define gxc#!alias::typedecl
      (lambda (_self154428_)
        (let* ((_self154429154435_ _self154428_)
               (_E154431154439_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154429154435_))))
               (_K154432154444_
                (lambda (_alias-id154442_)
                  (cons '@alias (cons _alias-id154442_ '())))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self154429154435_ 'gxc#!alias::t))
              (let* ((_e154433154447_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154429154435_
                         '1
                         '#f
                         '#f)))
                     (_alias-id154450_ _e154433154447_))
                (declare (not safe))
                (_K154432154444_ _alias-id154450_))
              (let () (declare (not safe)) (_E154431154439_))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_self154212_)
        (let* ((_self154213154229_ _self154212_)
               (_E154215154233_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154213154229_))))
               (_K154216154248_
                (lambda (_methods154236_
                         _metaclass154237_
                         _system?154238_
                         _final?154239_
                         _struct?154240_
                         _constructor154241_
                         _fields154242_
                         _slots154243_
                         _precendence-list154244_
                         _super154245_
                         _id154246_)
                  (cons '@class
                        (cons _id154246_
                              (cons _super154245_
                                    (cons _precendence-list154244_
                                          (cons _slots154243_
                                                (cons _fields154242_
                                                      (cons _constructor154241_
                                                            (cons _struct?154240_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _final?154239_
                                (cons _system?154238_
                                      (cons _metaclass154237_
                                            (cons (if _methods154236_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _methods154236_))
                                                      '#f)
                                                  '())))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self154213154229_ 'gxc#!class::t))
              (let* ((_e154217154251_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154213154229_
                         '1
                         '#f
                         '#f)))
                     (_id154254_ _e154217154251_)
                     (_e154218154256_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154213154229_
                         '2
                         '#f
                         '#f)))
                     (_super154259_ _e154218154256_)
                     (_e154219154261_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154213154229_
                         '3
                         '#f
                         '#f)))
                     (_precendence-list154264_ _e154219154261_)
                     (_e154220154266_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154213154229_
                         '4
                         '#f
                         '#f)))
                     (_slots154269_ _e154220154266_)
                     (_e154221154271_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154213154229_
                         '5
                         '#f
                         '#f)))
                     (_fields154274_ _e154221154271_)
                     (_e154222154276_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154213154229_
                         '6
                         '#f
                         '#f)))
                     (_constructor154279_ _e154222154276_)
                     (_e154223154281_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154213154229_
                         '7
                         '#f
                         '#f)))
                     (_struct?154284_ _e154223154281_)
                     (_e154224154286_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154213154229_
                         '8
                         '#f
                         '#f)))
                     (_final?154289_ _e154224154286_)
                     (_e154225154291_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154213154229_
                         '9
                         '#f
                         '#f)))
                     (_system?154294_ _e154225154291_)
                     (_e154226154296_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154213154229_
                         '10
                         '#f
                         '#f)))
                     (_metaclass154299_ _e154226154296_)
                     (_e154227154301_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154213154229_
                         '11
                         '#f
                         '#f)))
                     (_methods154304_ _e154227154301_))
                (declare (not safe))
                (_K154216154248_
                 _methods154304_
                 _metaclass154299_
                 _system?154294_
                 _final?154289_
                 _struct?154284_
                 _constructor154279_
                 _fields154274_
                 _slots154269_
                 _precendence-list154264_
                 _super154259_
                 _id154254_))
              (let () (declare (not safe)) (_E154215154233_))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_self154086_)
        (let ((_klass-id154088_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _self154086_ '1 '#f '#f))))
          (cons '@predicate (cons _klass-id154088_ '())))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_self153960_)
        (let ((_klass-id153962_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _self153960_ '1 '#f '#f))))
          (cons '@constructor (cons _klass-id153962_ '())))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_self153796_)
        (let* ((_self153797153806_ _self153796_)
               (_E153799153810_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self153797153806_))))
               (_K153800153817_
                (lambda (_checked?153813_ _slot153814_ _klass-id153815_)
                  (cons '@accessor
                        (cons _klass-id153815_
                              (cons _slot153814_
                                    (cons _checked?153813_ '())))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self153797153806_
                 'gxc#!accessor::t))
              (let* ((_e153801153820_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153797153806_
                         '1
                         '#f
                         '#f)))
                     (_klass-id153823_ _e153801153820_)
                     (_e153802153825_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153797153806_
                         '2
                         '#f
                         '#f)))
                     (_e153803153828_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153797153806_
                         '3
                         '#f
                         '#f)))
                     (_slot153831_ _e153803153828_)
                     (_e153804153833_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153797153806_
                         '4
                         '#f
                         '#f)))
                     (_checked?153836_ _e153804153833_))
                (declare (not safe))
                (_K153800153817_
                 _checked?153836_
                 _slot153831_
                 _klass-id153823_))
              (let () (declare (not safe)) (_E153799153810_))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_self153632_)
        (let* ((_self153633153642_ _self153632_)
               (_E153635153646_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self153633153642_))))
               (_K153636153653_
                (lambda (_checked?153649_ _slot153650_ _klass-id153651_)
                  (cons '@mutator
                        (cons _klass-id153651_
                              (cons _slot153650_
                                    (cons _checked?153649_ '())))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self153633153642_ 'gxc#!mutator::t))
              (let* ((_e153637153656_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153633153642_
                         '1
                         '#f
                         '#f)))
                     (_klass-id153659_ _e153637153656_)
                     (_e153638153661_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153633153642_
                         '2
                         '#f
                         '#f)))
                     (_e153639153664_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153633153642_
                         '3
                         '#f
                         '#f)))
                     (_slot153667_ _e153639153664_)
                     (_e153640153669_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153633153642_
                         '4
                         '#f
                         '#f)))
                     (_checked?153672_ _e153640153669_))
                (declare (not safe))
                (_K153636153653_
                 _checked?153672_
                 _slot153667_
                 _klass-id153659_))
              (let () (declare (not safe)) (_E153635153646_))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_self153479_)
        (let* ((_self153480153487_ _self153479_)
               (_E153482153491_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self153480153487_))))
               (_K153483153497_
                (lambda (_methods153494_ _klass-id153495_)
                  (cons '@interface
                        (cons _klass-id153495_ (cons _methods153494_ '()))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self153480153487_
                 'gxc#!interface::t))
              (let* ((_e153484153500_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153480153487_
                         '1
                         '#f
                         '#f)))
                     (_klass-id153503_ _e153484153500_)
                     (_e153485153505_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153480153487_
                         '2
                         '#f
                         '#f)))
                     (_methods153508_ _e153485153505_))
                (declare (not safe))
                (_K153483153497_ _methods153508_ _klass-id153503_))
              (let () (declare (not safe)) (_E153482153491_))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!interface::t
       'typedecl
       gxc#!interface::typedecl
       '#f))
    (define gxc#!lambda::typedecl
      (lambda (_self153315_)
        (let* ((_self153316153325_ _self153315_)
               (_E153318153329_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self153316153325_))))
               (_K153319153336_
                (lambda (_dispatch153332_ _arity153333_ _signature153334_)
                  (if _signature153334_
                      (cons '@lambda
                            (cons _arity153333_
                                  (cons _dispatch153332_
                                        (cons 'signature:
                                              (cons (cons 'return:
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _signature153334_
                           '1
                           '#f
                           '#f))
                        (cons 'effect:
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _signature153334_
                                       '2
                                       '#f
                                       '#f))
                                    (cons 'arguments:
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _signature153334_
                                                   '3
                                                   '#f
                                                   '#f))
                                                (cons 'unchecked:
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _signature153334_
                                                               '4
                                                               '#f
                                                               '#f))
                                                            '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))))
                      (cons '@lambda
                            (cons _arity153333_
                                  (cons _dispatch153332_ '())))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self153316153325_ 'gxc#!lambda::t))
              (let* ((_e153320153339_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153316153325_
                         '1
                         '#f
                         '#f)))
                     (_e153321153342_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153316153325_
                         '2
                         '#f
                         '#f)))
                     (_signature153345_ _e153321153342_)
                     (_e153322153347_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153316153325_
                         '3
                         '#f
                         '#f)))
                     (_arity153350_ _e153322153347_)
                     (_e153323153352_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153316153325_
                         '4
                         '#f
                         '#f)))
                     (_dispatch153355_ _e153323153352_))
                (declare (not safe))
                (_K153319153336_
                 _dispatch153355_
                 _arity153350_
                 _signature153345_))
              (let () (declare (not safe)) (_E153318153329_))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_self153183_)
        (letrec ((_clause-e153185_
                  (lambda (_clause153191_)
                    (cdr (let ()
                           (declare (not safe))
                           (gxc#!lambda::typedecl _clause153191_))))))
          (let* ((_clauses153187_
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _self153183_ '3 '#f '#f)))
                 (_clauses153189_ (map _clause-e153185_ _clauses153187_)))
            (cons '@case-lambda _clauses153189_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_self153022_)
        (let* ((_self153023153032_ _self153022_)
               (_E153025153036_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self153023153032_))))
               (_K153026153042_
                (lambda (_dispatch153039_ _table153040_)
                  (cons '@kw-lambda
                        (cons _table153040_ (cons _dispatch153039_ '()))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self153023153032_
                 'gxc#!kw-lambda::t))
              (let* ((_e153027153045_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153023153032_
                         '1
                         '#f
                         '#f)))
                     (_e153028153048_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153023153032_
                         '2
                         '#f
                         '#f)))
                     (_e153029153051_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153023153032_
                         '3
                         '#f
                         '#f)))
                     (_table153054_ _e153029153051_)
                     (_e153030153056_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153023153032_
                         '4
                         '#f
                         '#f)))
                     (_dispatch153059_ _e153030153056_))
                (declare (not safe))
                (_K153026153042_ _dispatch153059_ _table153054_))
              (let () (declare (not safe)) (_E153025153036_))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!kw-lambda::t
       'typedecl
       gxc#!kw-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_self152861_)
        (let* ((_self152862152871_ _self152861_)
               (_E152864152875_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self152862152871_))))
               (_K152865152881_
                (lambda (_main152878_ _keys152879_)
                  (cons '@kw-lambda-dispatch
                        (cons _keys152879_ (cons _main152878_ '()))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self152862152871_
                 'gxc#!kw-lambda-primary::t))
              (let* ((_e152866152884_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self152862152871_
                         '1
                         '#f
                         '#f)))
                     (_e152867152887_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self152862152871_
                         '2
                         '#f
                         '#f)))
                     (_e152868152890_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self152862152871_
                         '3
                         '#f
                         '#f)))
                     (_keys152893_ _e152868152890_)
                     (_e152869152895_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self152862152871_
                         '4
                         '#f
                         '#f)))
                     (_main152898_ _e152869152895_))
                (declare (not safe))
                (_K152865152881_ _main152898_ _keys152893_))
              (let () (declare (not safe)) (_E152864152875_))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))))
