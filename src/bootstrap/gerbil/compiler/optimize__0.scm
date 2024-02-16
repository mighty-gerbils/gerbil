(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1708102809)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (gxc#current-compile-optimizer-info)
            '#!void
            (gxc#current-compile-optimizer-info
             (let ((__obj291663
                    (let ()
                      (declare (not safe))
                      (##structure gxc#optimizer-info::t '#f '#f '#f))))
               (gxc#optimizer-info:::init! __obj291663)
               __obj291663)))))
    (define gxc#optimize!
      (lambda (_ctx286788_)
        (let ((__tmp291667
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _ctx286788_))
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-builtin-ssxi))
                 (let ((__tmp291669
                        (##structure-ref
                         (gxc#current-compile-optimizer-info)
                         '2
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp291668
                        (##structure-ref
                         _ctx286788_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (table-set! __tmp291669 __tmp291668 '#t))
                 (let ((_code286791_
                        (let ((__tmp291670
                               (##structure-ref
                                _ctx286788_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp291670))))
                   (##structure-set!
                    _ctx286788_
                    _code286791_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp291666
               (let () (declare (not safe)) (make-table 'test: eq?)))
              (__tmp291665
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (call-with-parameters
           __tmp291667
           gxc#current-compile-mutators
           __tmp291666
           gxc#current-compile-local-type
           __tmp291665))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda ()
        (let ()
          (declare (not safe))
          (gxc#optimizer-import-ssxi-by-id 'gerbil/builtin))
        (let ((__tmp291671
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-set! __tmp291671 'gerbil/builtin '#t))))
    (define gxc#optimizer-load-ssxi-deps
      (lambda (_ctx286732_)
        (letrec* ((_deps286734_
                   (let* ((_imports286778_
                           (##structure-ref
                            _ctx286732_
                            '8
                            gx#module-context::t
                            '#f))
                          (_$e286780_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _ctx286732_))))
                     (if _$e286780_
                         ((lambda (_g286782286784_)
                            (let ()
                              (declare (not safe))
                              (cons _g286782286784_ _imports286778_)))
                          _$e286780_)
                         _imports286778_))))
          (let _lp286736_ ((_rest286738_ _deps286734_))
            (let* ((_rest286739286747_ _rest286738_)
                   (_else286741286755_ (lambda () '#!void))
                   (_K286743286766_
                    (lambda (_rest286758_ _hd286759_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _hd286759_
                             'gx#module-context::t))
                          (begin
                            (if (let ((__tmp291685
                                       (##structure-ref
                                        (gxc#current-compile-optimizer-info)
                                        '2
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp291684
                                       (##structure-ref
                                        _hd286759_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (table-ref __tmp291685 __tmp291684 '#f))
                                '#!void
                                (begin
                                  (let ((_$e286761_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _hd286759_))))
                                    (if _$e286761_
                                        ((lambda (_pre286764_)
                                           (let ((__tmp291682
                                                  (let ((__tmp291683
                                                         (##structure-ref
                                                          _hd286759_
                                                          '8
                                                          gx#module-context::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (cons _pre286764_
                                                          __tmp291683))))
                                             (declare (not safe))
                                             (_lp286736_ __tmp291682)))
                                         _$e286761_)
                                        (let ((__tmp291681
                                               (##structure-ref
                                                _hd286759_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                          (declare (not safe))
                                          (_lp286736_ __tmp291681))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _hd286759_))))
                            (let ()
                              (declare (not safe))
                              (_lp286736_ _rest286758_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _hd286759_
                                 'gx#prelude-context::t))
                              (begin
                                (if (let ((__tmp291680
                                           (##structure-ref
                                            (gxc#current-compile-optimizer-info)
                                            '2
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp291679
                                           (##structure-ref
                                            _hd286759_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (table-ref __tmp291680 __tmp291679 '#f))
                                    '#!void
                                    (begin
                                      (let ((__tmp291678
                                             (##structure-ref
                                              _hd286759_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_lp286736_ __tmp291678))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi _hd286759_))))
                                (let ()
                                  (declare (not safe))
                                  (_lp286736_ _rest286758_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _hd286759_
                                     'gx#module-import::t))
                                  (let ((__tmp291676
                                         (let ((__tmp291677
                                                (##direct-structure-ref
                                                 _hd286759_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp291677 _rest286758_))))
                                    (declare (not safe))
                                    (_lp286736_ __tmp291676))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _hd286759_
                                         'gx#module-export::t))
                                      (let ((__tmp291674
                                             (let ((__tmp291675
                                                    (##direct-structure-ref
                                                     _hd286759_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp291675
                                                     _rest286758_))))
                                        (declare (not safe))
                                        (_lp286736_ __tmp291674))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _hd286759_
                                             'gx#import-set::t))
                                          (let ((__tmp291672
                                                 (let ((__tmp291673
                                                        (##direct-structure-ref
                                                         _hd286759_
                                                         '1
                                                         gx#import-set::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp291673
                                                         _rest286758_))))
                                            (declare (not safe))
                                            (_lp286736_ __tmp291672))
                                          (error '"Unexpected module import"
                                                 _hd286759_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest286739286747_))
                  (let ((_hd286744286769_
                         (let ()
                           (declare (not safe))
                           (##car _rest286739286747_)))
                        (_tl286745286771_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest286739286747_))))
                    (let* ((_hd286774_ _hd286744286769_)
                           (_rest286776_ _tl286745286771_))
                      (declare (not safe))
                      (_K286743286766_ _rest286776_ _hd286774_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_ctx286712_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _ctx286712_
                    'gx#module-context::t))
                 (let ((__tmp291686
                        (##structure-ref
                         _ctx286712_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp291686)))
            '#!void
            (let* ((_ht286714_
                    (##structure-ref
                     (gxc#current-compile-optimizer-info)
                     '2
                     gxc#optimizer-info::t
                     '#f))
                   (_id286716_
                    (##structure-ref
                     _ctx286712_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_mod286718_
                    (let ()
                      (declare (not safe))
                      (table-ref _ht286714_ _id286716_ '#f))))
              (let ((_$e286721_ _mod286718_))
                (if _$e286721_
                    _$e286721_
                    (let* ((_mod286724_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-import-ssxi _ctx286712_)))
                           (_val286729_
                            (let ((_$e286726_ _mod286724_))
                              (if _$e286726_ _$e286726_ '#!void))))
                      (let ()
                        (declare (not safe))
                        (table-set! _ht286714_ _id286716_ _val286729_))
                      _val286729_)))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_ctx286710_)
        (if (##structure-ref _ctx286710_ '1 gx#expander-context::t '#f)
            (let ((__tmp291687
                   (##structure-ref
                    _ctx286710_
                    '1
                    gx#expander-context::t
                    '#f)))
              (declare (not safe))
              (gxc#optimizer-import-ssxi-by-id __tmp291687))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_id286687_)
        (letrec ((_catch-e286689_
                  (lambda (_exn286708_)
                    (if (gxc#current-compile-verbose)
                        (begin
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"Failed to load ssxi module for "
                             _id286687_))
                          (display-exception _exn286708_))
                        '#!void)
                    '#f))
                 (_import-e286690_
                  (lambda ()
                    (let* ((_str-id286693_
                            (string-append
                             (let ()
                               (declare (not safe))
                               (gxc#module-id->path-string _id286687_))
                             '".ssxi"))
                           (_artefact-path286701_
                            (let ((_odir286694286696_
                                   (gxc#current-compile-output-dir)))
                              (if _odir286694286696_
                                  (let ((_odir286699_ _odir286694286696_))
                                    (path-expand
                                     (string-append _str-id286693_ '".ss")
                                     _odir286699_))
                                  '#f)))
                           (_library-path286703_
                            (string->symbol
                             (string-append '":" _str-id286693_ '".ss")))
                           (_ssxi-path286705_
                            (if (and _artefact-path286701_
                                     (file-exists? _artefact-path286701_))
                                _artefact-path286701_
                                _library-path286703_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _ssxi-path286705_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _ssxi-path286705_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (with-catch _catch-e286689_ _import-e286690_)))))
    (define gxc#optimize-source
      (lambda (_stx286678_)
        (let () (declare (not safe)) (gxc#apply-collect-mutators _stx286678_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _stx286678_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _stx286678_))
        (let* ((_stx286680_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _stx286678_)))
               (_stx286682_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _stx286680_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _stx286682_))
          (let ((_stx286685_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _stx286682_))))
            (declare (not safe))
            (gxc#apply-optimize-call _stx286685_)))))
    (define gxc#&generate-ssxi
      (make-promise
       (lambda ()
         (let ((_tbl286675_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp291688 (force gxc#&generate-runtime-empty)))
             (declare (not safe))
             (hash-copy! _tbl286675_ __tmp291688))
           (let ()
             (declare (not safe))
             (table-set! _tbl286675_ '%#begin gxc#generate-runtime-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl286675_
              '%#begin-syntax
              gxc#generate-ssxi-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl286675_ '%#module gxc#generate-ssxi-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl286675_
              '%#define-values
              gxc#generate-ssxi-define-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl286675_ '%#call gxc#generate-ssxi-call%))
           _tbl286675_))))
    (define gxc#apply-generate-ssxi
      (lambda (_stx286658_ . _args286660_)
        (let ((__tmp291690
               (lambda ()
                 (declare (not safe))
                 (if (null? _args286660_)
                     (gxc#compile-e__0 _stx286658_)
                     (let ((_arg1286665_ (car _args286660_))
                           (_rest286667_ (cdr _args286660_)))
                       (if (null? _rest286667_)
                           (gxc#compile-e__1 _stx286658_ _arg1286665_)
                           (let ((_arg2286670_ (car _rest286667_))
                                 (_rest286672_ (cdr _rest286667_)))
                             (if (null? _rest286672_)
                                 (gxc#compile-e__2
                                  _stx286658_
                                  _arg1286665_
                                  _arg2286670_)
                                 (apply gxc#compile-e
                                        _stx286658_
                                        _arg1286665_
                                        _arg2286670_
                                        _rest286672_))))))))
              (__tmp291689 (force gxc#&generate-ssxi)))
          (declare (not safe))
          (call-with-parameters
           __tmp291690
           gxc#current-compile-methods
           __tmp291689))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_stx286619_)
        (let* ((_g286621286631_
                (lambda (_g286622286628_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g286622286628_))))
               (_g286620286655_
                (lambda (_g286622286634_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g286622286634_))
                      (let ((_e286626286636_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g286622286634_))))
                        (let ((_hd286625286639_
                               (let ()
                                 (declare (not safe))
                                 (##car _e286626286636_)))
                              (_tl286624286641_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e286626286636_))))
                          ((lambda (_L286644_)
                             (let ((__tmp291693
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _stx286619_))))
                                   (__tmp291691
                                    (let ((__tmp291692
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp291692 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp291693
                                gx#current-expander-phi
                                __tmp291691)))
                           _tl286624286641_)))
                      (let ()
                        (declare (not safe))
                        (_g286621286631_ _g286622286634_))))))
          (declare (not safe))
          (_g286620286655_ _stx286619_))))
    (define gxc#generate-ssxi-module%
      (lambda (_stx286559_)
        (let* ((_g286561286575_
                (lambda (_g286562286572_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g286562286572_))))
               (_g286560286616_
                (lambda (_g286562286578_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g286562286578_))
                      (let ((_e286567286580_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g286562286578_))))
                        (let ((_hd286566286583_
                               (let ()
                                 (declare (not safe))
                                 (##car _e286567286580_)))
                              (_tl286565286585_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e286567286580_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl286565286585_))
                              (let ((_e286570286588_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl286565286585_))))
                                (let ((_hd286569286591_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e286570286588_)))
                                      (_tl286568286593_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e286570286588_))))
                                  ((lambda (_L286596_ _L286597_)
                                     (let* ((_ctx286610_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L286597_)))
                                            (_code286612_
                                             (##structure-ref
                                              _ctx286610_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp291694
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _code286612_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp291694
                                          gx#current-expander-context
                                          _ctx286610_))))
                                   _tl286568286593_
                                   _hd286569286591_)))
                              (let ()
                                (declare (not safe))
                                (_g286561286575_ _g286562286578_)))))
                      (let ()
                        (declare (not safe))
                        (_g286561286575_ _g286562286578_))))))
          (declare (not safe))
          (_g286560286616_ _stx286559_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_stx286369_)
        (letrec ((_generate-e286371_
                  (lambda (_id286548_)
                    (let* ((_sym286550_
                            (if (let ((__tmp291695
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp291695))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _id286548_))
                                '#f))
                           (_$e286552_
                            (if _sym286550_
                                (let ()
                                  (declare (not safe))
                                  (gxc#optimizer-lookup-type _sym286550_))
                                '#f)))
                      (if _$e286552_
                          ((lambda (_type286555_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"generate typedecl " _sym286550_))
                             (let* ((_typedecl286557_
                                     (let ((__method291664
                                            (let ()
                                              (declare (not safe))
                                              (method-ref
                                               _type286555_
                                               'typedecl))))
                                       (if __method291664
                                           (__method291664 _type286555_)
                                           (error '"Missing method"
                                                  _type286555_
                                                  'typedecl))))
                                    (__tmp291696
                                     (let ((__tmp291697
                                            (let ()
                                              (declare (not safe))
                                              (cons _typedecl286557_ '()))))
                                       (declare (not safe))
                                       (cons _sym286550_ __tmp291697))))
                               (declare (not safe))
                               (cons 'declare-type __tmp291696)))
                           _$e286552_)
                          '(begin))))))
          (let* ((___stx291362291363_ _stx286369_)
                 (_g286374286412_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx291362291363_)))))
            (let ((___kont291364291365_
                   (lambda (_L286530_)
                     (let ()
                       (declare (not safe))
                       (_generate-e286371_ _L286530_))))
                  (___kont291366291367_
                   (lambda (_L286465_)
                     (let ((_types286491_
                            (map _generate-e286371_
                                 (let ((__tmp291698
                                        (lambda (_g286483286486_
                                                 _g286484286488_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g286483286486_
                                                  _g286484286488_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp291698 '() _L286465_)))))
                       (declare (not safe))
                       (cons 'begin _types286491_)))))
              (let ((___match291417291418_
                     (lambda (_e286392286417_
                              _hd286391286420_
                              _tl286390286422_
                              _e286395286425_
                              _hd286394286428_
                              _tl286393286430_
                              ___splice291368291369_
                              _target286396286433_
                              _tl286398286435_)
                       (letrec ((_loop286399286438_
                                 (lambda (_hd286397286441_ _id286403286443_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd286397286441_))
                                       (let ((_e286400286446_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd286397286441_))))
                                         (let ((_lp-tl286402286451_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e286400286446_)))
                                               (_lp-hd286401286449_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e286400286446_))))
                                           (let ((__tmp291699
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd286401286449_
                                                          _id286403286443_))))
                                             (declare (not safe))
                                             (_loop286399286438_
                                              _lp-tl286402286451_
                                              __tmp291699))))
                                       (let ((_id286404286454_
                                              (reverse _id286403286443_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl286393286430_))
                                             (let ((_e286407286457_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl286393286430_))))
                                               (let ((_tl286405286462_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e286407286457_)))
                                                     (_hd286406286460_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e286407286457_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl286405286462_))
                                                     (___kont291366291367_
                                                      _id286404286454_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g286374286412_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g286374286412_))))))))
                         (let ()
                           (declare (not safe))
                           (_loop286399286438_ _target286396286433_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx291362291363_))
                    (let ((_e286379286498_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx291362291363_))))
                      (let ((_tl286377286503_
                             (let ()
                               (declare (not safe))
                               (##cdr _e286379286498_)))
                            (_hd286378286501_
                             (let ()
                               (declare (not safe))
                               (##car _e286379286498_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl286377286503_))
                            (let ((_e286382286506_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl286377286503_))))
                              (let ((_tl286380286511_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e286382286506_)))
                                    (_hd286381286509_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e286382286506_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd286381286509_))
                                    (let ((_e286385286514_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd286381286509_))))
                                      (let ((_tl286383286519_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e286385286514_)))
                                            (_hd286384286517_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e286385286514_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl286383286519_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl286380286511_))
                                                (let ((_e286388286522_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl286380286511_))))
                                                  (let ((_tl286386286527_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e286388286522_)))
                                                        (_hd286387286525_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e286388286522_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl286386286527_))
                                                        (___kont291364291365_
                                                         _hd286384286517_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _hd286381286509_))
                                                            (let ((___splice291368291369_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _hd286381286509_ '0))))
                      (let ((_tl286398286435_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice291368291369_ '1)))
                            (_target286396286433_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice291368291369_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl286398286435_))
                            (___match291417291418_
                             _e286379286498_
                             _hd286378286501_
                             _tl286377286503_
                             _e286382286506_
                             _hd286381286509_
                             _tl286380286511_
                             ___splice291368291369_
                             _target286396286433_
                             _tl286398286435_)
                            (let () (declare (not safe)) (_g286374286412_)))))
                    (let () (declare (not safe)) (_g286374286412_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _hd286381286509_))
                                                    (let ((___splice291368291369_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _hd286381286509_
                                                              '0))))
                                                      (let ((_tl286398286435_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice291368291369_ '1)))
                    (_target286396286433_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice291368291369_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl286398286435_))
                    (___match291417291418_
                     _e286379286498_
                     _hd286378286501_
                     _tl286377286503_
                     _e286382286506_
                     _hd286381286509_
                     _tl286380286511_
                     ___splice291368291369_
                     _target286396286433_
                     _tl286398286435_)
                    (let () (declare (not safe)) (_g286374286412_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g286374286412_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _hd286381286509_))
                                                (let ((___splice291368291369_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _hd286381286509_
                                                          '0))))
                                                  (let ((_tl286398286435_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice291368291369_
                                                            '1)))
                                                        (_target286396286433_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice291368291369_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl286398286435_))
                                                        (___match291417291418_
                                                         _e286379286498_
                                                         _hd286378286501_
                                                         _tl286377286503_
                                                         _e286382286506_
                                                         _hd286381286509_
                                                         _tl286380286511_
                                                         ___splice291368291369_
                                                         _target286396286433_
                                                         _tl286398286435_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g286374286412_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g286374286412_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd286381286509_))
                                        (let ((___splice291368291369_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd286381286509_
                                                  '0))))
                                          (let ((_tl286398286435_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice291368291369_
                                                    '1)))
                                                (_target286396286433_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice291368291369_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl286398286435_))
                                                (___match291417291418_
                                                 _e286379286498_
                                                 _hd286378286501_
                                                 _tl286377286503_
                                                 _e286382286506_
                                                 _hd286381286509_
                                                 _tl286380286511_
                                                 ___splice291368291369_
                                                 _target286396286433_
                                                 _tl286398286435_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g286374286412_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g286374286412_))))))
                            (let () (declare (not safe)) (_g286374286412_)))))
                    (let () (declare (not safe)) (_g286374286412_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_stx285923_)
        (let* ((___stx291420291421_ _stx285923_)
               (_g285927286029_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx291420291421_)))))
          (let ((___kont291422291423_
                 (lambda (_L286319_ _L286320_ _L286321_ _L286322_ _L286323_)
                   (let ((__tmp291700
                          (let ((__tmp291707
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L286322_)))
                                (__tmp291701
                                 (let ((__tmp291706
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L286321_)))
                                       (__tmp291702
                                        (let ((__tmp291705
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L286320_)))
                                              (__tmp291703
                                               (let ((__tmp291704
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L286319_))))
                                                 (declare (not safe))
                                                 (cons __tmp291704 '()))))
                                          (declare (not safe))
                                          (cons __tmp291705 __tmp291703))))
                                   (declare (not safe))
                                   (cons __tmp291706 __tmp291702))))
                            (declare (not safe))
                            (cons __tmp291707 __tmp291701))))
                     (declare (not safe))
                     (cons 'declare-method __tmp291700))))
                (___kont291424291425_
                 (lambda (_L286145_ _L286146_ _L286147_ _L286148_)
                   (let ((__tmp291708
                          (let ((__tmp291714
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L286147_)))
                                (__tmp291709
                                 (let ((__tmp291713
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L286146_)))
                                       (__tmp291710
                                        (let ((__tmp291712
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L286145_)))
                                              (__tmp291711
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '#f '()))))
                                          (declare (not safe))
                                          (cons __tmp291712 __tmp291711))))
                                   (declare (not safe))
                                   (cons __tmp291713 __tmp291710))))
                            (declare (not safe))
                            (cons __tmp291714 __tmp291709))))
                     (declare (not safe))
                     (cons 'declare-method __tmp291708))))
                (___kont291426291427_ (lambda () '(begin))))
            (let ((___match291555291556_
                   (lambda (_e285936286191_
                            _hd285935286194_
                            _tl285934286196_
                            _e285939286199_
                            _hd285938286202_
                            _tl285937286204_
                            _e285942286207_
                            _hd285941286210_
                            _tl285940286212_
                            _e285945286215_
                            _hd285944286218_
                            _tl285943286220_
                            _e285948286223_
                            _hd285947286226_
                            _tl285946286228_
                            _e285951286231_
                            _hd285950286234_
                            _tl285949286236_
                            _e285954286239_
                            _hd285953286242_
                            _tl285952286244_
                            _e285957286247_
                            _hd285956286250_
                            _tl285955286252_
                            _e285960286255_
                            _hd285959286258_
                            _tl285958286260_
                            _e285963286263_
                            _hd285962286266_
                            _tl285961286268_
                            _e285966286271_
                            _hd285965286274_
                            _tl285964286276_
                            _e285969286279_
                            _hd285968286282_
                            _tl285967286284_
                            _e285972286287_
                            _hd285971286290_
                            _tl285970286292_
                            _e285975286295_
                            _hd285974286298_
                            _tl285973286300_
                            _e285978286303_
                            _hd285977286306_
                            _tl285976286308_
                            _e285981286311_
                            _hd285980286314_
                            _tl285979286316_)
                     (let ((_L286319_ _hd285980286314_)
                           (_L286320_ _hd285971286290_)
                           (_L286321_ _hd285962286266_)
                           (_L286322_ _hd285953286242_)
                           (_L286323_ _hd285944286218_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L286323_
                              'bind-method!))
                           (___kont291422291423_
                            _L286319_
                            _L286320_
                            _L286321_
                            _L286322_
                            _L286323_)
                           (___kont291426291427_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx291420291421_))
                  (let ((_e285936286191_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx291420291421_))))
                    (let ((_tl285934286196_
                           (let ()
                             (declare (not safe))
                             (##cdr _e285936286191_)))
                          (_hd285935286194_
                           (let ()
                             (declare (not safe))
                             (##car _e285936286191_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl285934286196_))
                          (let ((_e285939286199_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl285934286196_))))
                            (let ((_tl285937286204_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e285939286199_)))
                                  (_hd285938286202_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e285939286199_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd285938286202_))
                                  (let ((_e285942286207_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd285938286202_))))
                                    (let ((_tl285940286212_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e285942286207_)))
                                          (_hd285941286210_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e285942286207_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd285941286210_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd285941286210_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl285940286212_))
                                                  (let ((_e285945286215_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl285940286212_))))
                                                    (let ((_tl285943286220_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e285945286215_)))
                                                          (_hd285944286218_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e285945286215_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl285943286220_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl285937286204_))
                      (let ((_e285948286223_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl285937286204_))))
                        (let ((_tl285946286228_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e285948286223_)))
                              (_hd285947286226_
                               (let ()
                                 (declare (not safe))
                                 (##car _e285948286223_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd285947286226_))
                              (let ((_e285951286231_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd285947286226_))))
                                (let ((_tl285949286236_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e285951286231_)))
                                      (_hd285950286234_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e285951286231_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd285950286234_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd285950286234_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl285949286236_))
                                              (let ((_e285954286239_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl285949286236_))))
                                                (let ((_tl285952286244_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e285954286239_)))
                                                      (_hd285953286242_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e285954286239_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl285952286244_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl285946286228_))
                                                          (let ((_e285957286247_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl285946286228_))))
                    (let ((_tl285955286252_
                           (let ()
                             (declare (not safe))
                             (##cdr _e285957286247_)))
                          (_hd285956286250_
                           (let ()
                             (declare (not safe))
                             (##car _e285957286247_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd285956286250_))
                          (let ((_e285960286255_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd285956286250_))))
                            (let ((_tl285958286260_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e285960286255_)))
                                  (_hd285959286258_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e285960286255_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd285959286258_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd285959286258_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl285958286260_))
                                          (let ((_e285963286263_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl285958286260_))))
                                            (let ((_tl285961286268_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e285963286263_)))
                                                  (_hd285962286266_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e285963286263_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl285961286268_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl285955286252_))
                                                      (let ((_e285966286271_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl285955286252_))))
                (let ((_tl285964286276_
                       (let () (declare (not safe)) (##cdr _e285966286271_)))
                      (_hd285965286274_
                       (let () (declare (not safe)) (##car _e285966286271_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd285965286274_))
                      (let ((_e285969286279_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd285965286274_))))
                        (let ((_tl285967286284_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e285969286279_)))
                              (_hd285968286282_
                               (let ()
                                 (declare (not safe))
                                 (##car _e285969286279_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd285968286282_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd285968286282_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl285967286284_))
                                      (let ((_e285972286287_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl285967286284_))))
                                        (let ((_tl285970286292_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e285972286287_)))
                                              (_hd285971286290_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e285972286287_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl285970286292_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl285964286276_))
                                                  (let ((_e285975286295_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl285964286276_))))
                                                    (let ((_tl285973286300_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e285975286295_)))
                                                          (_hd285974286298_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e285975286295_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd285974286298_))
                                                          (let ((_e285978286303_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd285974286298_))))
                    (let ((_tl285976286308_
                           (let ()
                             (declare (not safe))
                             (##cdr _e285978286303_)))
                          (_hd285977286306_
                           (let ()
                             (declare (not safe))
                             (##car _e285978286303_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd285977286306_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd285977286306_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl285976286308_))
                                  (let ((_e285981286311_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl285976286308_))))
                                    (let ((_tl285979286316_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e285981286311_)))
                                          (_hd285980286314_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e285981286311_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl285979286316_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl285973286300_))
                                              (___match291555291556_
                                               _e285936286191_
                                               _hd285935286194_
                                               _tl285934286196_
                                               _e285939286199_
                                               _hd285938286202_
                                               _tl285937286204_
                                               _e285942286207_
                                               _hd285941286210_
                                               _tl285940286212_
                                               _e285945286215_
                                               _hd285944286218_
                                               _tl285943286220_
                                               _e285948286223_
                                               _hd285947286226_
                                               _tl285946286228_
                                               _e285951286231_
                                               _hd285950286234_
                                               _tl285949286236_
                                               _e285954286239_
                                               _hd285953286242_
                                               _tl285952286244_
                                               _e285957286247_
                                               _hd285956286250_
                                               _tl285955286252_
                                               _e285960286255_
                                               _hd285959286258_
                                               _tl285958286260_
                                               _e285963286263_
                                               _hd285962286266_
                                               _tl285961286268_
                                               _e285966286271_
                                               _hd285965286274_
                                               _tl285964286276_
                                               _e285969286279_
                                               _hd285968286282_
                                               _tl285967286284_
                                               _e285972286287_
                                               _hd285971286290_
                                               _tl285970286292_
                                               _e285975286295_
                                               _hd285974286298_
                                               _tl285973286300_
                                               _e285978286303_
                                               _hd285977286306_
                                               _tl285976286308_
                                               _e285981286311_
                                               _hd285980286314_
                                               _tl285979286316_)
                                              (___kont291426291427_))
                                          (___kont291426291427_))))
                                  (___kont291426291427_))
                              (___kont291426291427_))
                          (___kont291426291427_))))
                  (___kont291426291427_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl285964286276_))
                                                      (if (let ((__tmp291715
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp291715 'bind-method!))
                  (let ((_L286145_ _hd285971286290_)
                        (_L286146_ _hd285962286266_)
                        (_L286147_ _hd285953286242_)
                        (_L286148_ _hd285944286218_))
                    (___kont291424291425_
                     _L286145_
                     _L286146_
                     _L286147_
                     _L286148_))
                  (___kont291426291427_))
              (___kont291426291427_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont291426291427_))))
                                      (___kont291426291427_))
                                  (___kont291426291427_))
                              (___kont291426291427_))))
                      (___kont291426291427_))))
              (___kont291426291427_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont291426291427_))))
                                          (___kont291426291427_))
                                      (___kont291426291427_))
                                  (___kont291426291427_))))
                          (___kont291426291427_))))
                  (___kont291426291427_))
              (___kont291426291427_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont291426291427_))
                                          (___kont291426291427_))
                                      (___kont291426291427_))))
                              (___kont291426291427_))))
                      (___kont291426291427_))
                  (___kont291426291427_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont291426291427_))
                                              (___kont291426291427_))
                                          (___kont291426291427_))))
                                  (___kont291426291427_))))
                          (___kont291426291427_))))
                  (___kont291426291427_)))))))
    (define gxc#!alias::typedecl
      (lambda (_self285899_)
        (let* ((_self285900285906_ _self285899_)
               (_E285902285910_
                (lambda () (error '"No clause matching" _self285900285906_)))
               (_K285903285915_
                (lambda (_alias-id285913_)
                  (let ((__tmp291716
                         (let ()
                           (declare (not safe))
                           (cons _alias-id285913_ '()))))
                    (declare (not safe))
                    (cons '@alias __tmp291716)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self285900285906_ 'gxc#!alias::t))
              (let* ((_e285904285918_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285900285906_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_alias-id285921_ _e285904285918_))
                (declare (not safe))
                (_K285903285915_ _alias-id285921_))
              (let () (declare (not safe)) (_E285902285910_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_self285690_)
        (let* ((_self285691285706_ _self285690_)
               (_E285693285710_
                (lambda () (error '"No clause matching" _self285691285706_)))
               (_K285694285724_
                (lambda (_methods285713_
                         _metaclass285714_
                         _final?285715_
                         _struct?285716_
                         _constructor285717_
                         _fields285718_
                         _slots285719_
                         _precendence-list285720_
                         _super285721_
                         _id285722_)
                  (let ((__tmp291717
                         (let ((__tmp291718
                                (let ((__tmp291719
                                       (let ((__tmp291720
                                              (let ((__tmp291721
                                                     (let ((__tmp291722
                                                            (let ((__tmp291723
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp291724
                                  (let ((__tmp291725
                                         (let ((__tmp291726
                                                (let ((__tmp291727
                                                       (if _methods285713_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (table->list
                                                              _methods285713_))
                                                           '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp291727 '()))))
                                           (declare (not safe))
                                           (cons _metaclass285714_
                                                 __tmp291726))))
                                    (declare (not safe))
                                    (cons _final?285715_ __tmp291725))))
                             (declare (not safe))
                             (cons _struct?285716_ __tmp291724))))
                      (declare (not safe))
                      (cons _constructor285717_ __tmp291723))))
               (declare (not safe))
               (cons _fields285718_ __tmp291722))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _slots285719_
                                                      __tmp291721))))
                                         (declare (not safe))
                                         (cons _precendence-list285720_
                                               __tmp291720))))
                                  (declare (not safe))
                                  (cons _super285721_ __tmp291719))))
                           (declare (not safe))
                           (cons _id285722_ __tmp291718))))
                    (declare (not safe))
                    (cons '@class __tmp291717)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self285691285706_ 'gxc#!class::t))
              (let* ((_e285695285727_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285691285706_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_id285730_ _e285695285727_)
                     (_e285696285732_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285691285706_
                         '2
                         gxc#!class::t
                         '#f)))
                     (_super285735_ _e285696285732_)
                     (_e285697285737_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285691285706_
                         '3
                         gxc#!class::t
                         '#f)))
                     (_precendence-list285740_ _e285697285737_)
                     (_e285698285742_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285691285706_
                         '4
                         gxc#!class::t
                         '#f)))
                     (_slots285745_ _e285698285742_)
                     (_e285699285747_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285691285706_
                         '5
                         gxc#!class::t
                         '#f)))
                     (_fields285750_ _e285699285747_)
                     (_e285700285752_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285691285706_
                         '6
                         gxc#!class::t
                         '#f)))
                     (_constructor285755_ _e285700285752_)
                     (_e285701285757_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285691285706_
                         '7
                         gxc#!class::t
                         '#f)))
                     (_struct?285760_ _e285701285757_)
                     (_e285702285762_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285691285706_
                         '8
                         gxc#!class::t
                         '#f)))
                     (_final?285765_ _e285702285762_)
                     (_e285703285767_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285691285706_
                         '9
                         gxc#!class::t
                         '#f)))
                     (_metaclass285770_ _e285703285767_)
                     (_e285704285772_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285691285706_
                         '10
                         gxc#!class::t
                         '#f)))
                     (_methods285775_ _e285704285772_))
                (declare (not safe))
                (_K285694285724_
                 _methods285775_
                 _metaclass285770_
                 _final?285765_
                 _struct?285760_
                 _constructor285755_
                 _fields285750_
                 _slots285745_
                 _precendence-list285740_
                 _super285735_
                 _id285730_))
              (let () (declare (not safe)) (_E285693285710_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_self285544_)
        (let* ((_self285545285551_ _self285544_)
               (_E285547285555_
                (lambda () (error '"No clause matching" _self285545285551_)))
               (_K285548285560_
                (lambda (_klass-id285558_)
                  (let ((__tmp291728
                         (let ()
                           (declare (not safe))
                           (cons _klass-id285558_ '()))))
                    (declare (not safe))
                    (cons '@predicate __tmp291728)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self285545285551_
                 'gxc#!predicate::t))
              (let* ((_e285549285563_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285545285551_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id285566_ _e285549285563_))
                (declare (not safe))
                (_K285548285560_ _klass-id285566_))
              (let () (declare (not safe)) (_E285547285555_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!predicate::t 'typedecl gxc#!predicate::typedecl '#f))
    (define gxc#!constructor::typedecl
      (lambda (_self285398_)
        (let* ((_self285399285405_ _self285398_)
               (_E285401285409_
                (lambda () (error '"No clause matching" _self285399285405_)))
               (_K285402285414_
                (lambda (_klass-id285412_)
                  (let ((__tmp291729
                         (let ()
                           (declare (not safe))
                           (cons _klass-id285412_ '()))))
                    (declare (not safe))
                    (cons '@constructor __tmp291729)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self285399285405_
                 'gxc#!constructor::t))
              (let* ((_e285403285417_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285399285405_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id285420_ _e285403285417_))
                (declare (not safe))
                (_K285402285414_ _klass-id285420_))
              (let () (declare (not safe)) (_E285401285409_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_self285238_)
        (let* ((_self285239285247_ _self285238_)
               (_E285241285251_
                (lambda () (error '"No clause matching" _self285239285247_)))
               (_K285242285258_
                (lambda (_checked?285254_ _slot285255_ _klass-id285256_)
                  (let ((__tmp291730
                         (let ((__tmp291731
                                (let ((__tmp291732
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?285254_ '()))))
                                  (declare (not safe))
                                  (cons _slot285255_ __tmp291732))))
                           (declare (not safe))
                           (cons _klass-id285256_ __tmp291731))))
                    (declare (not safe))
                    (cons '@accessor __tmp291730)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self285239285247_
                 'gxc#!accessor::t))
              (let* ((_e285243285261_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285239285247_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id285264_ _e285243285261_)
                     (_e285244285266_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285239285247_
                         '2
                         gxc#!accessor::t
                         '#f)))
                     (_slot285269_ _e285244285266_)
                     (_e285245285271_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285239285247_
                         '3
                         gxc#!accessor::t
                         '#f)))
                     (_checked?285274_ _e285245285271_))
                (declare (not safe))
                (_K285242285258_
                 _checked?285274_
                 _slot285269_
                 _klass-id285264_))
              (let () (declare (not safe)) (_E285241285251_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_self285078_)
        (let* ((_self285079285087_ _self285078_)
               (_E285081285091_
                (lambda () (error '"No clause matching" _self285079285087_)))
               (_K285082285098_
                (lambda (_checked?285094_ _slot285095_ _klass-id285096_)
                  (let ((__tmp291733
                         (let ((__tmp291734
                                (let ((__tmp291735
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?285094_ '()))))
                                  (declare (not safe))
                                  (cons _slot285095_ __tmp291735))))
                           (declare (not safe))
                           (cons _klass-id285096_ __tmp291734))))
                    (declare (not safe))
                    (cons '@mutator __tmp291733)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self285079285087_ 'gxc#!mutator::t))
              (let* ((_e285083285101_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285079285087_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id285104_ _e285083285101_)
                     (_e285084285106_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285079285087_
                         '2
                         gxc#!mutator::t
                         '#f)))
                     (_slot285109_ _e285084285106_)
                     (_e285085285111_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285079285087_
                         '3
                         gxc#!mutator::t
                         '#f)))
                     (_checked?285114_ _e285085285111_))
                (declare (not safe))
                (_K285082285098_
                 _checked?285114_
                 _slot285109_
                 _klass-id285104_))
              (let () (declare (not safe)) (_E285081285091_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!lambda::typedecl
      (lambda (_self284904_)
        (let* ((_self284905284915_ _self284904_)
               (_E284907284919_
                (lambda () (error '"No clause matching" _self284905284915_)))
               (_K284908284930_
                (lambda (_typedecl284922_
                         _inline284923_
                         _dispatch284924_
                         _arity284925_)
                  (if _inline284923_
                      (let ((_$e284927_ _typedecl284922_))
                        (if _$e284927_
                            _$e284927_
                            (error '"Cannot generate typedecl for inline rules")))
                      (let ((__tmp291736
                             (let ((__tmp291737
                                    (let ()
                                      (declare (not safe))
                                      (cons _dispatch284924_ '()))))
                               (declare (not safe))
                               (cons _arity284925_ __tmp291737))))
                        (declare (not safe))
                        (cons '@lambda __tmp291736))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self284905284915_ 'gxc#!lambda::t))
              (let* ((_e284909284933_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284905284915_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e284910284936_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284905284915_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity284939_ _e284910284936_)
                     (_e284911284941_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284905284915_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch284944_ _e284911284941_)
                     (_e284912284946_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284905284915_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline284949_ _e284912284946_)
                     (_e284913284951_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284905284915_
                         '5
                         gxc#!lambda::t
                         '#f)))
                     (_typedecl284954_ _e284913284951_))
                (declare (not safe))
                (_K284908284930_
                 _typedecl284954_
                 _inline284949_
                 _dispatch284944_
                 _arity284939_))
              (let () (declare (not safe)) (_E284907284919_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_self284715_)
        (letrec ((_clause-e284717_
                  (lambda (_clause284747_)
                    (let* ((_clause284748284756_ _clause284747_)
                           (_E284750284760_
                            (lambda ()
                              (error '"No clause matching"
                                     _clause284748284756_)))
                           (_K284751284766_
                            (lambda (_dispatch284763_ _arity284764_)
                              (let ((__tmp291738
                                     (let ()
                                       (declare (not safe))
                                       (cons _dispatch284763_ '()))))
                                (declare (not safe))
                                (cons _arity284764_ __tmp291738)))))
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _clause284748284756_
                             'gxc#!lambda::t))
                          (let* ((_e284752284769_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause284748284756_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                                 (_e284753284772_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause284748284756_
                                     '2
                                     gxc#!lambda::t
                                     '#f)))
                                 (_arity284775_ _e284753284772_)
                                 (_e284754284777_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause284748284756_
                                     '3
                                     gxc#!lambda::t
                                     '#f)))
                                 (_dispatch284780_ _e284754284777_))
                            (declare (not safe))
                            (_K284751284766_ _dispatch284780_ _arity284775_))
                          (let () (declare (not safe)) (_E284750284760_)))))))
          (let* ((_self284718284725_ _self284715_)
                 (_E284720284729_
                  (lambda () (error '"No clause matching" _self284718284725_)))
                 (_K284721284736_
                  (lambda (_clauses284732_)
                    (let ((_clauses284734_
                           (map _clause-e284717_ _clauses284732_)))
                      (declare (not safe))
                      (cons '@case-lambda _clauses284734_)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of?
                   _self284718284725_
                   'gxc#!case-lambda::t))
                (let* ((_e284722284739_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self284718284725_
                           '1
                           gxc#!type::t
                           '#f)))
                       (_e284723284742_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self284718284725_
                           '2
                           gxc#!case-lambda::t
                           '#f)))
                       (_clauses284745_ _e284723284742_))
                  (declare (not safe))
                  (_K284721284736_ _clauses284745_))
                (let () (declare (not safe)) (_E284720284729_)))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_self284558_)
        (let* ((_self284559284567_ _self284558_)
               (_E284561284571_
                (lambda () (error '"No clause matching" _self284559284567_)))
               (_K284562284577_
                (lambda (_dispatch284574_ _table284575_)
                  (let ((__tmp291739
                         (let ((__tmp291740
                                (let ()
                                  (declare (not safe))
                                  (cons _dispatch284574_ '()))))
                           (declare (not safe))
                           (cons _table284575_ __tmp291740))))
                    (declare (not safe))
                    (cons '@kw-lambda __tmp291739)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self284559284567_
                 'gxc#!kw-lambda::t))
              (let* ((_e284563284580_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284559284567_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e284564284583_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284559284567_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table284586_ _e284564284583_)
                     (_e284565284588_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284559284567_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch284591_ _e284565284588_))
                (declare (not safe))
                (_K284562284577_ _dispatch284591_ _table284586_))
              (let () (declare (not safe)) (_E284561284571_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!kw-lambda::t 'typedecl gxc#!kw-lambda::typedecl '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_self284401_)
        (let* ((_self284402284410_ _self284401_)
               (_E284404284414_
                (lambda () (error '"No clause matching" _self284402284410_)))
               (_K284405284420_
                (lambda (_main284417_ _keys284418_)
                  (let ((__tmp291741
                         (let ((__tmp291742
                                (let ()
                                  (declare (not safe))
                                  (cons _main284417_ '()))))
                           (declare (not safe))
                           (cons _keys284418_ __tmp291742))))
                    (declare (not safe))
                    (cons '@kw-lambda-dispatch __tmp291741)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self284402284410_
                 'gxc#!kw-lambda-primary::t))
              (let* ((_e284406284423_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284402284410_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e284407284426_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284402284410_
                         '2
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_keys284429_ _e284407284426_)
                     (_e284408284431_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284402284410_
                         '3
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_main284434_ _e284408284431_))
                (declare (not safe))
                (_K284405284420_ _main284434_ _keys284429_))
              (let () (declare (not safe)) (_E284404284414_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))))
