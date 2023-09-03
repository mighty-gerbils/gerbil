(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1693679906)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (gxc#current-compile-optimizer-info)
            '#!void
            (gxc#current-compile-optimizer-info
             (let ((__obj63904 (make-object gxc#optimizer-info::t '3)))
               (gxc#optimizer-info:::init! __obj63904)
               __obj63904)))))
    (define gxc#optimize!
      (lambda (_ctx63597_)
        (call-with-parameters
         (lambda ()
           (gxc#optimizer-load-ssxi-deps _ctx63597_)
           (table-set!
            (##structure-ref
             (gxc#current-compile-optimizer-info)
             '2
             gxc#optimizer-info::t
             '#f)
            (##structure-ref _ctx63597_ '1 gx#expander-context::t '#f)
            '#t)
           (let ((_code63600_
                  (gxc#optimize-source
                   (##structure-ref _ctx63597_ '11 gx#module-context::t '#f))))
             (##structure-set!
              _ctx63597_
              _code63600_
              '11
              gx#module-context::t
              '#f)))
         gxc#current-compile-mutators
         (make-table 'test: eq?)
         gxc#current-compile-local-type
         (make-table 'test: eq?))))
    (define gxc#optimizer-load-ssxi-deps
      (lambda (_ctx63542_)
        (letrec* ((_deps63544_
                   (let* ((_imports63588_
                           (##structure-ref
                            _ctx63542_
                            '8
                            gx#module-context::t
                            '#f))
                          (_$e63590_ (gx#core-context-prelude__% _ctx63542_)))
                     (if _$e63590_
                         ((lambda (_g6359263594_)
                            (cons _g6359263594_ _imports63588_))
                          _$e63590_)
                         _imports63588_))))
          (let _lp63546_ ((_rest63548_ _deps63544_))
            (let* ((_rest6354963557_ _rest63548_)
                   (_else6355163565_ (lambda () '#!void))
                   (_K6355363576_
                    (lambda (_rest63568_ _hd63569_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _hd63569_
                             'gx#module-context::t))
                          (begin
                            (if (table-ref
                                 (##structure-ref
                                  (gxc#current-compile-optimizer-info)
                                  '2
                                  gxc#optimizer-info::t
                                  '#f)
                                 (##structure-ref
                                  _hd63569_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '#f)
                                '#!void
                                (begin
                                  (let ((_$e63571_
                                         (gx#core-context-prelude__%
                                          _hd63569_)))
                                    (if _$e63571_
                                        ((lambda (_pre63574_)
                                           (_lp63546_
                                            (cons _pre63574_
                                                  (##structure-ref
                                                   _hd63569_
                                                   '8
                                                   gx#module-context::t
                                                   '#f))))
                                         _$e63571_)
                                        (_lp63546_
                                         (##structure-ref
                                          _hd63569_
                                          '8
                                          gx#module-context::t
                                          '#f))))
                                  (gxc#optimizer-load-ssxi _hd63569_)))
                            (_lp63546_ _rest63568_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _hd63569_
                                 'gx#prelude-context::t))
                              (begin
                                (if (table-ref
                                     (##structure-ref
                                      (gxc#current-compile-optimizer-info)
                                      '2
                                      gxc#optimizer-info::t
                                      '#f)
                                     (##structure-ref
                                      _hd63569_
                                      '1
                                      gx#expander-context::t
                                      '#f)
                                     '#f)
                                    '#!void
                                    (begin
                                      (_lp63546_
                                       (##structure-ref
                                        _hd63569_
                                        '7
                                        gx#prelude-context::t
                                        '#f))
                                      (gxc#optimizer-load-ssxi _hd63569_)))
                                (_lp63546_ _rest63568_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _hd63569_
                                     'gx#module-import::t))
                                  (_lp63546_
                                   (cons (##direct-structure-ref
                                          _hd63569_
                                          '1
                                          gx#module-import::t
                                          '#f)
                                         _rest63568_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _hd63569_
                                         'gx#module-export::t))
                                      (_lp63546_
                                       (cons (##direct-structure-ref
                                              _hd63569_
                                              '1
                                              gx#module-export::t
                                              '#f)
                                             _rest63568_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _hd63569_
                                             'gx#import-set::t))
                                          (_lp63546_
                                           (cons (##direct-structure-ref
                                                  _hd63569_
                                                  '1
                                                  gx#import-set::t
                                                  '#f)
                                                 _rest63568_))
                                          (error '"Unexpected module import"
                                                 _hd63569_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest6354963557_))
                  (let ((_hd6355463579_
                         (let ()
                           (declare (not safe))
                           (##car _rest6354963557_)))
                        (_tl6355563581_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6354963557_))))
                    (let* ((_hd63584_ _hd6355463579_)
                           (_rest63586_ _tl6355563581_))
                      (_K6355363576_ _rest63586_ _hd63584_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_ctx63522_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of? _ctx63522_ 'gx#module-context::t))
                 (list? (##structure-ref
                         _ctx63522_
                         '7
                         gx#module-context::t
                         '#f)))
            '#!void
            (let* ((_ht63524_
                    (##structure-ref
                     (gxc#current-compile-optimizer-info)
                     '2
                     gxc#optimizer-info::t
                     '#f))
                   (_id63526_
                    (##structure-ref _ctx63522_ '1 gx#expander-context::t '#f))
                   (_mod63528_ (table-ref _ht63524_ _id63526_ '#f)))
              (let ((_$e63531_ _mod63528_))
                (if _$e63531_
                    _$e63531_
                    (let* ((_mod63534_ (gxc#optimizer-import-ssxi _ctx63522_))
                           (_val63539_
                            (let ((_$e63536_ _mod63534_))
                              (if _$e63536_ _$e63536_ '#!void))))
                      (table-set! _ht63524_ _id63526_ _val63539_)
                      _val63539_)))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_ctx63499_)
        (letrec ((_catch-e63501_
                  (lambda (_exn63520_)
                    (if (gxc#current-compile-verbose)
                        (begin
                          (displayln
                           '"Failed to load ssxi module for "
                           (##structure-ref
                            _ctx63499_
                            '1
                            gx#expander-context::t
                            '#f))
                          (display-exception _exn63520_))
                        '#!void)
                    '#f))
                 (_import-e63502_
                  (lambda ()
                    (let* ((_str-id63505_
                            (string-append
                             (gxc#module-id->path-string
                              (##structure-ref
                               _ctx63499_
                               '1
                               gx#expander-context::t
                               '#f))
                             '".ssxi"))
                           (_artefact-path63513_
                            (let ((_odir6350663508_
                                   (gxc#current-compile-output-dir)))
                              (if _odir6350663508_
                                  (let ((_odir63511_ _odir6350663508_))
                                    (path-expand
                                     (string-append _str-id63505_ '".ss")
                                     _odir63511_))
                                  '#f)))
                           (_library-path63515_
                            (string->symbol
                             (string-append '":" _str-id63505_ '".ss")))
                           (_ssxi-path63517_
                            (if (and _artefact-path63513_
                                     (file-exists? _artefact-path63513_))
                                _artefact-path63513_
                                _library-path63515_)))
                      (gxc#verbose '"Loading ssxi module " _ssxi-path63517_)
                      (gx#import-module__% _ssxi-path63517_ '#t '#t)))))
          (if (##structure-ref _ctx63499_ '1 gx#expander-context::t '#f)
              (with-exception-catcher _catch-e63501_ _import-e63502_)
              '#f))))
    (define gxc#optimize-source
      (lambda (_stx63490_)
        (gxc#apply-collect-mutators _stx63490_)
        (gxc#apply-collect-methods _stx63490_)
        (gxc#apply-collect-top-level-type-info _stx63490_)
        (let* ((_stx63492_ (gxc#apply-generate-method-specializers _stx63490_))
               (_stx63494_ (gxc#apply-lift-top-lambdas _stx63492_)))
          (gxc#apply-collect-type-info _stx63494_)
          (let ((_stx63497_ (gxc#apply-optimize-annotated _stx63494_)))
            (gxc#apply-optimize-call _stx63497_)))))
    (define gxc#&generate-ssxi
      (make-promise
       (lambda ()
         (let ((_tbl63487_ (make-table 'test: eq?)))
           (hash-copy! _tbl63487_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl63487_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl63487_
            '%#begin-syntax
            gxc#generate-ssxi-begin-syntax%)
           (table-set! _tbl63487_ '%#module gxc#generate-ssxi-module%)
           (table-set!
            _tbl63487_
            '%#define-values
            gxc#generate-ssxi-define-values%)
           (table-set! _tbl63487_ '%#call gxc#generate-ssxi-call%)
           _tbl63487_))))
    (define gxc#apply-generate-ssxi
      (lambda (_stx63480_ . _args63482_)
        (call-with-parameters
         (lambda () (apply gxc#compile-e _stx63480_ _args63482_))
         gxc#current-compile-methods
         (force gxc#&generate-ssxi))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_stx63441_)
        (let* ((_g6344363453_
                (lambda (_g6344463450_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g6344463450_)))
               (_g6344263477_
                (lambda (_g6344463456_)
                  (if (gx#stx-pair? _g6344463456_)
                      (let ((_e6344663458_ (gx#stx-e _g6344463456_)))
                        (let ((_hd6344763461_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6344663458_)))
                              (_tl6344863463_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6344663458_))))
                          ((lambda (_L63466_)
                             (call-with-parameters
                              (lambda ()
                                (gxc#generate-runtime-begin% _stx63441_))
                              gx#current-expander-phi
                              (fx+ (gx#current-expander-phi) '1)))
                           _tl6344863463_)))
                      (_g6344363453_ _g6344463456_)))))
          (_g6344263477_ _stx63441_))))
    (define gxc#generate-ssxi-module%
      (lambda (_stx63381_)
        (let* ((_g6338363397_
                (lambda (_g6338463394_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g6338463394_)))
               (_g6338263438_
                (lambda (_g6338463400_)
                  (if (gx#stx-pair? _g6338463400_)
                      (let ((_e6338763402_ (gx#stx-e _g6338463400_)))
                        (let ((_hd6338863405_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6338763402_)))
                              (_tl6338963407_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6338763402_))))
                          (if (gx#stx-pair? _tl6338963407_)
                              (let ((_e6339063410_ (gx#stx-e _tl6338963407_)))
                                (let ((_hd6339163413_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6339063410_)))
                                      (_tl6339263415_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6339063410_))))
                                  ((lambda (_L63418_ _L63419_)
                                     (let* ((_ctx63432_
                                             (gx#syntax-local-e__0 _L63419_))
                                            (_code63434_
                                             (##structure-ref
                                              _ctx63432_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (call-with-parameters
                                        (lambda () (gxc#compile-e _code63434_))
                                        gx#current-expander-context
                                        _ctx63432_)))
                                   _tl6339263415_
                                   _hd6339163413_)))
                              (_g6338363397_ _g6338463400_))))
                      (_g6338363397_ _g6338463400_)))))
          (_g6338263438_ _stx63381_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_stx63191_)
        (letrec ((_generate-e63193_
                  (lambda (_id63370_)
                    (let* ((_sym63372_
                            (if (gx#identifier? (gx#datum->syntax__0 '#f 'id))
                                (gxc#identifier-symbol _id63370_)
                                '#f))
                           (_$e63374_
                            (if _sym63372_
                                (gxc#optimizer-lookup-type _sym63372_)
                                '#f)))
                      (if _$e63374_
                          ((lambda (_type63377_)
                             (gxc#verbose '"generate typedecl " _sym63372_)
                             (let ((_typedecl63379_
                                    (let ((__method63905
                                           (method-ref _type63377_ 'typedecl)))
                                      (if __method63905
                                          (__method63905 _type63377_)
                                          (error '"Missing method"
                                                 _type63377_
                                                 'typedecl)))))
                               (cons 'declare-type
                                     (cons _sym63372_
                                           (cons _typedecl63379_ '())))))
                           _$e63374_)
                          '(begin))))))
          (let* ((___stx6360363604_ _stx63191_)
                 (_g6319663234_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     ___stx6360363604_))))
            (let ((___kont6360563606_
                   (lambda (_L63352_) (_generate-e63193_ _L63352_)))
                  (___kont6360763608_
                   (lambda (_L63287_)
                     (let ((_types63313_
                            (map _generate-e63193_
                                 (foldr1 (lambda (_g6330563308_ _g6330663310_)
                                           (cons _g6330563308_ _g6330663310_))
                                         '()
                                         _L63287_))))
                       (cons 'begin _types63313_)))))
              (let ((___match6365863659_
                     (lambda (_e6321263239_
                              _hd6321363242_
                              _tl6321463244_
                              _e6321563247_
                              _hd6321663250_
                              _tl6321763252_
                              ___splice6360963610_
                              _target6321863255_
                              _tl6322063257_)
                       (letrec ((_loop6322163260_
                                 (lambda (_hd6321963263_ _id6322563265_)
                                   (if (gx#stx-pair? _hd6321963263_)
                                       (let ((_e6322263268_
                                              (gx#stx-e _hd6321963263_)))
                                         (let ((_lp-tl6322463273_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e6322263268_)))
                                               (_lp-hd6322363271_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e6322263268_))))
                                           (_loop6322163260_
                                            _lp-tl6322463273_
                                            (cons _lp-hd6322363271_
                                                  _id6322563265_))))
                                       (let ((_id6322663276_
                                              (reverse _id6322563265_)))
                                         (if (gx#stx-pair? _tl6321763252_)
                                             (let ((_e6322763279_
                                                    (gx#stx-e _tl6321763252_)))
                                               (let ((_tl6322963284_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e6322763279_)))
                                                     (_hd6322863282_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e6322763279_))))
                                                 (if (gx#stx-null?
                                                      _tl6322963284_)
                                                     (___kont6360763608_
                                                      _id6322663276_)
                                                     (_g6319663234_))))
                                             (_g6319663234_)))))))
                         (_loop6322163260_ _target6321863255_ '())))))
                (if (gx#stx-pair? ___stx6360363604_)
                    (let ((_e6319963320_ (gx#stx-e ___stx6360363604_)))
                      (let ((_tl6320163325_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6319963320_)))
                            (_hd6320063323_
                             (let ()
                               (declare (not safe))
                               (##car _e6319963320_))))
                        (if (gx#stx-pair? _tl6320163325_)
                            (let ((_e6320263328_ (gx#stx-e _tl6320163325_)))
                              (let ((_tl6320463333_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6320263328_)))
                                    (_hd6320363331_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6320263328_))))
                                (if (gx#stx-pair? _hd6320363331_)
                                    (let ((_e6320563336_
                                           (gx#stx-e _hd6320363331_)))
                                      (let ((_tl6320763341_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6320563336_)))
                                            (_hd6320663339_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6320563336_))))
                                        (if (gx#stx-null? _tl6320763341_)
                                            (if (gx#stx-pair? _tl6320463333_)
                                                (let ((_e6320863344_
                                                       (gx#stx-e
                                                        _tl6320463333_)))
                                                  (let ((_tl6321063349_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e6320863344_)))
                                                        (_hd6320963347_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e6320863344_))))
                                                    (if (gx#stx-null?
                                                         _tl6321063349_)
                                                        (___kont6360563606_
                                                         _hd6320663339_)
                                                        (if (gx#stx-pair/null?
                                                             _hd6320363331_)
                                                            (let ((___splice6360963610_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice _hd6320363331_ '0)))
                      (let ((_tl6322063257_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice6360963610_ '1)))
                            (_target6321863255_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice6360963610_ '0))))
                        (if (gx#stx-null? _tl6322063257_)
                            (___match6365863659_
                             _e6319963320_
                             _hd6320063323_
                             _tl6320163325_
                             _e6320263328_
                             _hd6320363331_
                             _tl6320463333_
                             ___splice6360963610_
                             _target6321863255_
                             _tl6322063257_)
                            (_g6319663234_))))
                    (_g6319663234_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair/null?
                                                     _hd6320363331_)
                                                    (let ((___splice6360963610_
                                                           (gx#syntax-split-splice
                                                            _hd6320363331_
                                                            '0)))
                                                      (let ((_tl6322063257_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice6360963610_ '1)))
                    (_target6321863255_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice6360963610_ '0))))
                (if (gx#stx-null? _tl6322063257_)
                    (___match6365863659_
                     _e6319963320_
                     _hd6320063323_
                     _tl6320163325_
                     _e6320263328_
                     _hd6320363331_
                     _tl6320463333_
                     ___splice6360963610_
                     _target6321863255_
                     _tl6322063257_)
                    (_g6319663234_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g6319663234_)))
                                            (if (gx#stx-pair/null?
                                                 _hd6320363331_)
                                                (let ((___splice6360963610_
                                                       (gx#syntax-split-splice
                                                        _hd6320363331_
                                                        '0)))
                                                  (let ((_tl6322063257_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice6360963610_
                                                            '1)))
                                                        (_target6321863255_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice6360963610_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _tl6322063257_)
                                                        (___match6365863659_
                                                         _e6319963320_
                                                         _hd6320063323_
                                                         _tl6320163325_
                                                         _e6320263328_
                                                         _hd6320363331_
                                                         _tl6320463333_
                                                         ___splice6360963610_
                                                         _target6321863255_
                                                         _tl6322063257_)
                                                        (_g6319663234_))))
                                                (_g6319663234_)))))
                                    (if (gx#stx-pair/null? _hd6320363331_)
                                        (let ((___splice6360963610_
                                               (gx#syntax-split-splice
                                                _hd6320363331_
                                                '0)))
                                          (let ((_tl6322063257_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice6360963610_
                                                    '1)))
                                                (_target6321863255_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice6360963610_
                                                    '0))))
                                            (if (gx#stx-null? _tl6322063257_)
                                                (___match6365863659_
                                                 _e6319963320_
                                                 _hd6320063323_
                                                 _tl6320163325_
                                                 _e6320263328_
                                                 _hd6320363331_
                                                 _tl6320463333_
                                                 ___splice6360963610_
                                                 _target6321863255_
                                                 _tl6322063257_)
                                                (_g6319663234_))))
                                        (_g6319663234_)))))
                            (_g6319663234_))))
                    (_g6319663234_))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_stx62745_)
        (let* ((___stx6366163662_ _stx62745_)
               (_g6274962851_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx6366163662_))))
          (let ((___kont6366363664_
                 (lambda (_L63141_ _L63142_ _L63143_ _L63144_ _L63145_)
                   (cons 'declare-method
                         (cons (gxc#identifier-symbol _L63144_)
                               (cons (gx#stx-e _L63143_)
                                     (cons (gxc#identifier-symbol _L63142_)
                                           (cons (gx#stx-e _L63141_) '())))))))
                (___kont6366563666_
                 (lambda (_L62967_ _L62968_ _L62969_ _L62970_)
                   (cons 'declare-method
                         (cons (gxc#identifier-symbol _L62969_)
                               (cons (gx#stx-e _L62968_)
                                     (cons (gxc#identifier-symbol _L62967_)
                                           (cons '#f '())))))))
                (___kont6366763668_ (lambda () '(begin))))
            (let ((___match6379663797_
                   (lambda (_e6275663013_
                            _hd6275763016_
                            _tl6275863018_
                            _e6275963021_
                            _hd6276063024_
                            _tl6276163026_
                            _e6276263029_
                            _hd6276363032_
                            _tl6276463034_
                            _e6276563037_
                            _hd6276663040_
                            _tl6276763042_
                            _e6276863045_
                            _hd6276963048_
                            _tl6277063050_
                            _e6277163053_
                            _hd6277263056_
                            _tl6277363058_
                            _e6277463061_
                            _hd6277563064_
                            _tl6277663066_
                            _e6277763069_
                            _hd6277863072_
                            _tl6277963074_
                            _e6278063077_
                            _hd6278163080_
                            _tl6278263082_
                            _e6278363085_
                            _hd6278463088_
                            _tl6278563090_
                            _e6278663093_
                            _hd6278763096_
                            _tl6278863098_
                            _e6278963101_
                            _hd6279063104_
                            _tl6279163106_
                            _e6279263109_
                            _hd6279363112_
                            _tl6279463114_
                            _e6279563117_
                            _hd6279663120_
                            _tl6279763122_
                            _e6279863125_
                            _hd6279963128_
                            _tl6280063130_
                            _e6280163133_
                            _hd6280263136_
                            _tl6280363138_)
                     (let ((_L63141_ _hd6280263136_)
                           (_L63142_ _hd6279363112_)
                           (_L63143_ _hd6278463088_)
                           (_L63144_ _hd6277563064_)
                           (_L63145_ _hd6276663040_))
                       (if (gxc#runtime-identifier=? _L63145_ 'bind-method!)
                           (___kont6366363664_
                            _L63141_
                            _L63142_
                            _L63143_
                            _L63144_
                            _L63145_)
                           (___kont6366763668_))))))
              (if (gx#stx-pair? ___stx6366163662_)
                  (let ((_e6275663013_ (gx#stx-e ___stx6366163662_)))
                    (let ((_tl6275863018_
                           (let () (declare (not safe)) (##cdr _e6275663013_)))
                          (_hd6275763016_
                           (let ()
                             (declare (not safe))
                             (##car _e6275663013_))))
                      (if (gx#stx-pair? _tl6275863018_)
                          (let ((_e6275963021_ (gx#stx-e _tl6275863018_)))
                            (let ((_tl6276163026_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e6275963021_)))
                                  (_hd6276063024_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e6275963021_))))
                              (if (gx#stx-pair? _hd6276063024_)
                                  (let ((_e6276263029_
                                         (gx#stx-e _hd6276063024_)))
                                    (let ((_tl6276463034_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e6276263029_)))
                                          (_hd6276363032_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e6276263029_))))
                                      (if (gx#identifier? _hd6276363032_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd6276363032_)
                                              (if (gx#stx-pair? _tl6276463034_)
                                                  (let ((_e6276563037_
                                                         (gx#stx-e
                                                          _tl6276463034_)))
                                                    (let ((_tl6276763042_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e6276563037_)))
                                                          (_hd6276663040_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e6276563037_))))
                                                      (if (gx#stx-null?
                                                           _tl6276763042_)
                                                          (if (gx#stx-pair?
                                                               _tl6276163026_)
                                                              (let ((_e6276863045_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl6276163026_)))
                        (let ((_tl6277063050_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6276863045_)))
                              (_hd6276963048_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6276863045_))))
                          (if (gx#stx-pair? _hd6276963048_)
                              (let ((_e6277163053_ (gx#stx-e _hd6276963048_)))
                                (let ((_tl6277363058_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6277163053_)))
                                      (_hd6277263056_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6277163053_))))
                                  (if (gx#identifier? _hd6277263056_)
                                      (if (gx#stx-eq? '%#ref _hd6277263056_)
                                          (if (gx#stx-pair? _tl6277363058_)
                                              (let ((_e6277463061_
                                                     (gx#stx-e
                                                      _tl6277363058_)))
                                                (let ((_tl6277663066_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e6277463061_)))
                                                      (_hd6277563064_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e6277463061_))))
                                                  (if (gx#stx-null?
                                                       _tl6277663066_)
                                                      (if (gx#stx-pair?
                                                           _tl6277063050_)
                                                          (let ((_e6277763069_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl6277063050_)))
                    (let ((_tl6277963074_
                           (let () (declare (not safe)) (##cdr _e6277763069_)))
                          (_hd6277863072_
                           (let ()
                             (declare (not safe))
                             (##car _e6277763069_))))
                      (if (gx#stx-pair? _hd6277863072_)
                          (let ((_e6278063077_ (gx#stx-e _hd6277863072_)))
                            (let ((_tl6278263082_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e6278063077_)))
                                  (_hd6278163080_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e6278063077_))))
                              (if (gx#identifier? _hd6278163080_)
                                  (if (gx#stx-eq? '%#quote _hd6278163080_)
                                      (if (gx#stx-pair? _tl6278263082_)
                                          (let ((_e6278363085_
                                                 (gx#stx-e _tl6278263082_)))
                                            (let ((_tl6278563090_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e6278363085_)))
                                                  (_hd6278463088_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e6278363085_))))
                                              (if (gx#stx-null? _tl6278563090_)
                                                  (if (gx#stx-pair?
                                                       _tl6277963074_)
                                                      (let ((_e6278663093_
                                                             (gx#stx-e
                                                              _tl6277963074_)))
                                                        (let ((_tl6278863098_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e6278663093_)))
                      (_hd6278763096_
                       (let () (declare (not safe)) (##car _e6278663093_))))
                  (if (gx#stx-pair? _hd6278763096_)
                      (let ((_e6278963101_ (gx#stx-e _hd6278763096_)))
                        (let ((_tl6279163106_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6278963101_)))
                              (_hd6279063104_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6278963101_))))
                          (if (gx#identifier? _hd6279063104_)
                              (if (gx#stx-eq? '%#ref _hd6279063104_)
                                  (if (gx#stx-pair? _tl6279163106_)
                                      (let ((_e6279263109_
                                             (gx#stx-e _tl6279163106_)))
                                        (let ((_tl6279463114_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e6279263109_)))
                                              (_hd6279363112_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e6279263109_))))
                                          (if (gx#stx-null? _tl6279463114_)
                                              (if (gx#stx-pair? _tl6278863098_)
                                                  (let ((_e6279563117_
                                                         (gx#stx-e
                                                          _tl6278863098_)))
                                                    (let ((_tl6279763122_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e6279563117_)))
                                                          (_hd6279663120_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e6279563117_))))
                                                      (if (gx#stx-pair?
                                                           _hd6279663120_)
                                                          (let ((_e6279863125_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd6279663120_)))
                    (let ((_tl6280063130_
                           (let () (declare (not safe)) (##cdr _e6279863125_)))
                          (_hd6279963128_
                           (let ()
                             (declare (not safe))
                             (##car _e6279863125_))))
                      (if (gx#identifier? _hd6279963128_)
                          (if (gx#stx-eq? '%#quote _hd6279963128_)
                              (if (gx#stx-pair? _tl6280063130_)
                                  (let ((_e6280163133_
                                         (gx#stx-e _tl6280063130_)))
                                    (let ((_tl6280363138_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e6280163133_)))
                                          (_hd6280263136_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e6280163133_))))
                                      (if (gx#stx-null? _tl6280363138_)
                                          (if (gx#stx-null? _tl6279763122_)
                                              (___match6379663797_
                                               _e6275663013_
                                               _hd6275763016_
                                               _tl6275863018_
                                               _e6275963021_
                                               _hd6276063024_
                                               _tl6276163026_
                                               _e6276263029_
                                               _hd6276363032_
                                               _tl6276463034_
                                               _e6276563037_
                                               _hd6276663040_
                                               _tl6276763042_
                                               _e6276863045_
                                               _hd6276963048_
                                               _tl6277063050_
                                               _e6277163053_
                                               _hd6277263056_
                                               _tl6277363058_
                                               _e6277463061_
                                               _hd6277563064_
                                               _tl6277663066_
                                               _e6277763069_
                                               _hd6277863072_
                                               _tl6277963074_
                                               _e6278063077_
                                               _hd6278163080_
                                               _tl6278263082_
                                               _e6278363085_
                                               _hd6278463088_
                                               _tl6278563090_
                                               _e6278663093_
                                               _hd6278763096_
                                               _tl6278863098_
                                               _e6278963101_
                                               _hd6279063104_
                                               _tl6279163106_
                                               _e6279263109_
                                               _hd6279363112_
                                               _tl6279463114_
                                               _e6279563117_
                                               _hd6279663120_
                                               _tl6279763122_
                                               _e6279863125_
                                               _hd6279963128_
                                               _tl6280063130_
                                               _e6280163133_
                                               _hd6280263136_
                                               _tl6280363138_)
                                              (___kont6366763668_))
                                          (___kont6366763668_))))
                                  (___kont6366763668_))
                              (___kont6366763668_))
                          (___kont6366763668_))))
                  (___kont6366763668_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _tl6278863098_)
                                                      (if (gxc#runtime-identifier=?
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '-bind-method)
                                                           'bind-method!)
                                                          (let ((_L62967_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd6279363112_)
                        (_L62968_ _hd6278463088_)
                        (_L62969_ _hd6277563064_)
                        (_L62970_ _hd6276663040_))
                    (___kont6366563666_ _L62967_ _L62968_ _L62969_ _L62970_))
                  (___kont6366763668_))
              (___kont6366763668_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont6366763668_))))
                                      (___kont6366763668_))
                                  (___kont6366763668_))
                              (___kont6366763668_))))
                      (___kont6366763668_))))
              (___kont6366763668_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont6366763668_))))
                                          (___kont6366763668_))
                                      (___kont6366763668_))
                                  (___kont6366763668_))))
                          (___kont6366763668_))))
                  (___kont6366763668_))
              (___kont6366763668_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont6366763668_))
                                          (___kont6366763668_))
                                      (___kont6366763668_))))
                              (___kont6366763668_))))
                      (___kont6366763668_))
                  (___kont6366763668_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont6366763668_))
                                              (___kont6366763668_))
                                          (___kont6366763668_))))
                                  (___kont6366763668_))))
                          (___kont6366763668_))))
                  (___kont6366763668_)))))))
    (define gxc#!alias::typedecl
      (lambda (_self62721_)
        (let* ((_self6272262728_ _self62721_)
               (_E6272462732_
                (lambda () (error '"No clause matching" _self6272262728_)))
               (_K6272562737_
                (lambda (_alias-id62735_)
                  (cons '@alias (cons _alias-id62735_ '())))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self6272262728_ 'gxc#!alias::t))
              (let* ((_e6272662740_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6272262728_ '1)))
                     (_alias-id62743_ _e6272662740_))
                (_K6272562737_ _alias-id62743_))
              (_E6272462732_)))))
    (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f)
    (define gxc#!struct-type::typedecl
      (lambda (_self62543_)
        (let* ((_self6254462555_ _self62543_)
               (_E6254662559_
                (lambda () (error '"No clause matching" _self6254462555_)))
               (_K6254762568_
                (lambda (_plist62562_
                         _ctor62563_
                         _fields62564_
                         _super62565_
                         _type-id62566_)
                  (cons '@struct-type
                        (cons _type-id62566_
                              (cons _super62565_
                                    (cons _fields62564_
                                          (cons _ctor62563_
                                                (cons _plist62562_ '())))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6254462555_
                 'gxc#!struct-type::t))
              (let* ((_e6254862571_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6254462555_ '1)))
                     (_type-id62574_ _e6254862571_)
                     (_e6254962576_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6254462555_ '2)))
                     (_super62579_ _e6254962576_)
                     (_e6255062581_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6254462555_ '3)))
                     (_fields62584_ _e6255062581_)
                     (_e6255162586_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6254462555_ '4)))
                     (_e6255262589_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6254462555_ '5)))
                     (_ctor62592_ _e6255262589_)
                     (_e6255362594_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6254462555_ '6)))
                     (_plist62597_ _e6255362594_))
                (_K6254762568_
                 _plist62597_
                 _ctor62592_
                 _fields62584_
                 _super62579_
                 _type-id62574_))
              (_E6254662559_)))))
    (bind-method! gxc#!struct-type::t 'typedecl gxc#!struct-type::typedecl '#f)
    (define gxc#!struct-pred::typedecl
      (lambda (_self62397_)
        (let* ((_self6239862404_ _self62397_)
               (_E6240062408_
                (lambda () (error '"No clause matching" _self6239862404_)))
               (_K6240162413_
                (lambda (_struct-t62411_)
                  (cons '@struct-pred (cons _struct-t62411_ '())))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6239862404_
                 'gxc#!struct-pred::t))
              (let* ((_e6240262416_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6239862404_ '1)))
                     (_struct-t62419_ _e6240262416_))
                (_K6240162413_ _struct-t62419_))
              (_E6240062408_)))))
    (bind-method! gxc#!struct-pred::t 'typedecl gxc#!struct-pred::typedecl '#f)
    (define gxc#!struct-cons::typedecl
      (lambda (_self62251_)
        (let* ((_self6225262258_ _self62251_)
               (_E6225462262_
                (lambda () (error '"No clause matching" _self6225262258_)))
               (_K6225562267_
                (lambda (_struct-t62265_)
                  (cons '@struct-cons (cons _struct-t62265_ '())))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6225262258_
                 'gxc#!struct-cons::t))
              (let* ((_e6225662270_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6225262258_ '1)))
                     (_struct-t62273_ _e6225662270_))
                (_K6225562267_ _struct-t62273_))
              (_E6225462262_)))))
    (bind-method! gxc#!struct-cons::t 'typedecl gxc#!struct-cons::typedecl '#f)
    (define gxc#!struct-getf::typedecl
      (lambda (_self62091_)
        (let* ((_self6209262100_ _self62091_)
               (_E6209462104_
                (lambda () (error '"No clause matching" _self6209262100_)))
               (_K6209562111_
                (lambda (_unchecked?62107_ _off62108_ _struct-t62109_)
                  (cons '@struct-getf
                        (cons _struct-t62109_
                              (cons _off62108_
                                    (cons _unchecked?62107_ '())))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6209262100_
                 'gxc#!struct-getf::t))
              (let* ((_e6209662114_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6209262100_ '1)))
                     (_struct-t62117_ _e6209662114_)
                     (_e6209762119_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6209262100_ '2)))
                     (_off62122_ _e6209762119_)
                     (_e6209862124_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6209262100_ '3)))
                     (_unchecked?62127_ _e6209862124_))
                (_K6209562111_ _unchecked?62127_ _off62122_ _struct-t62117_))
              (_E6209462104_)))))
    (bind-method! gxc#!struct-getf::t 'typedecl gxc#!struct-getf::typedecl '#f)
    (define gxc#!struct-setf::typedecl
      (lambda (_self61931_)
        (let* ((_self6193261940_ _self61931_)
               (_E6193461944_
                (lambda () (error '"No clause matching" _self6193261940_)))
               (_K6193561951_
                (lambda (_unchecked?61947_ _off61948_ _struct-t61949_)
                  (cons '@struct-setf
                        (cons _struct-t61949_
                              (cons _off61948_
                                    (cons _unchecked?61947_ '())))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6193261940_
                 'gxc#!struct-setf::t))
              (let* ((_e6193661954_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6193261940_ '1)))
                     (_struct-t61957_ _e6193661954_)
                     (_e6193761959_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6193261940_ '2)))
                     (_off61962_ _e6193761959_)
                     (_e6193861964_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6193261940_ '3)))
                     (_unchecked?61967_ _e6193861964_))
                (_K6193561951_ _unchecked?61967_ _off61962_ _struct-t61957_))
              (_E6193461944_)))))
    (bind-method! gxc#!struct-setf::t 'typedecl gxc#!struct-setf::typedecl '#f)
    (define gxc#!class-type::typedecl
      (lambda (_self61743_)
        (let* ((_self6174461756_ _self61743_)
               (_E6174661760_
                (lambda () (error '"No clause matching" _self6174461756_)))
               (_K6174761771_
                (lambda (_plist61763_
                         _ctor61764_
                         _xslots61765_
                         _slots61766_
                         _mixin61767_
                         _super61768_
                         _type-id61769_)
                  (cons '@class-type
                        (cons _type-id61769_
                              (cons _super61768_
                                    (cons _mixin61767_
                                          (cons _slots61766_
                                                (cons _xslots61765_
                                                      (cons _ctor61764_
                                                            (cons _plist61763_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6174461756_
                 'gxc#!class-type::t))
              (let* ((_e6174861774_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6174461756_ '1)))
                     (_type-id61777_ _e6174861774_)
                     (_e6174961779_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6174461756_ '2)))
                     (_super61782_ _e6174961779_)
                     (_e6175061784_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6174461756_ '3)))
                     (_mixin61787_ _e6175061784_)
                     (_e6175161789_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6174461756_ '4)))
                     (_slots61792_ _e6175161789_)
                     (_e6175261794_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6174461756_ '5)))
                     (_xslots61797_ _e6175261794_)
                     (_e6175361799_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6174461756_ '6)))
                     (_ctor61802_ _e6175361799_)
                     (_e6175461804_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6174461756_ '7)))
                     (_plist61807_ _e6175461804_))
                (_K6174761771_
                 _plist61807_
                 _ctor61802_
                 _xslots61797_
                 _slots61792_
                 _mixin61787_
                 _super61782_
                 _type-id61777_))
              (_E6174661760_)))))
    (bind-method! gxc#!class-type::t 'typedecl gxc#!class-type::typedecl '#f)
    (define gxc#!class-pred::typedecl
      (lambda (_self61597_)
        (let* ((_self6159861604_ _self61597_)
               (_E6160061608_
                (lambda () (error '"No clause matching" _self6159861604_)))
               (_K6160161613_
                (lambda (_class-t61611_)
                  (cons '@class-pred (cons _class-t61611_ '())))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6159861604_
                 'gxc#!class-pred::t))
              (let* ((_e6160261616_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6159861604_ '1)))
                     (_class-t61619_ _e6160261616_))
                (_K6160161613_ _class-t61619_))
              (_E6160061608_)))))
    (bind-method! gxc#!class-pred::t 'typedecl gxc#!class-pred::typedecl '#f)
    (define gxc#!class-cons::typedecl
      (lambda (_self61451_)
        (let* ((_self6145261458_ _self61451_)
               (_E6145461462_
                (lambda () (error '"No clause matching" _self6145261458_)))
               (_K6145561467_
                (lambda (_class-t61465_)
                  (cons '@class-cons (cons _class-t61465_ '())))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6145261458_
                 'gxc#!class-cons::t))
              (let* ((_e6145661470_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6145261458_ '1)))
                     (_class-t61473_ _e6145661470_))
                (_K6145561467_ _class-t61473_))
              (_E6145461462_)))))
    (bind-method! gxc#!class-cons::t 'typedecl gxc#!class-cons::typedecl '#f)
    (define gxc#!class-getf::typedecl
      (lambda (_self61291_)
        (let* ((_self6129261300_ _self61291_)
               (_E6129461304_
                (lambda () (error '"No clause matching" _self6129261300_)))
               (_K6129561311_
                (lambda (_unchecked?61307_ _slot61308_ _class-t61309_)
                  (cons '@class-getf
                        (cons _class-t61309_
                              (cons _slot61308_
                                    (cons _unchecked?61307_ '())))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6129261300_
                 'gxc#!class-getf::t))
              (let* ((_e6129661314_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6129261300_ '1)))
                     (_class-t61317_ _e6129661314_)
                     (_e6129761319_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6129261300_ '2)))
                     (_slot61322_ _e6129761319_)
                     (_e6129861324_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6129261300_ '3)))
                     (_unchecked?61327_ _e6129861324_))
                (_K6129561311_ _unchecked?61327_ _slot61322_ _class-t61317_))
              (_E6129461304_)))))
    (bind-method! gxc#!class-getf::t 'typedecl gxc#!class-getf::typedecl '#f)
    (define gxc#!class-setf::typedecl
      (lambda (_self61131_)
        (let* ((_self6113261140_ _self61131_)
               (_E6113461144_
                (lambda () (error '"No clause matching" _self6113261140_)))
               (_K6113561151_
                (lambda (_unchecked?61147_ _slot61148_ _class-t61149_)
                  (cons '@class-setf
                        (cons _class-t61149_
                              (cons _slot61148_
                                    (cons _unchecked?61147_ '())))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6113261140_
                 'gxc#!class-setf::t))
              (let* ((_e6113661154_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6113261140_ '1)))
                     (_class-t61157_ _e6113661154_)
                     (_e6113761159_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6113261140_ '2)))
                     (_slot61162_ _e6113761159_)
                     (_e6113861164_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6113261140_ '3)))
                     (_unchecked?61167_ _e6113861164_))
                (_K6113561151_ _unchecked?61167_ _slot61162_ _class-t61157_))
              (_E6113461144_)))))
    (bind-method! gxc#!class-setf::t 'typedecl gxc#!class-setf::typedecl '#f)
    (define gxc#!lambda::typedecl
      (lambda (_self60957_)
        (let* ((_self6095860968_ _self60957_)
               (_E6096060972_
                (lambda () (error '"No clause matching" _self6095860968_)))
               (_K6096160983_
                (lambda (_typedecl60975_
                         _inline60976_
                         _dispatch60977_
                         _arity60978_)
                  (if _inline60976_
                      (let ((_$e60980_ _typedecl60975_))
                        (if _$e60980_
                            _$e60980_
                            (error '"Cannot generate typedecl for inline rules")))
                      (cons '@lambda
                            (cons _arity60978_ (cons _dispatch60977_ '())))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self6095860968_ 'gxc#!lambda::t))
              (let* ((_e6096260986_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6095860968_ '1)))
                     (_e6096360989_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6095860968_ '2)))
                     (_arity60992_ _e6096360989_)
                     (_e6096460994_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6095860968_ '3)))
                     (_dispatch60997_ _e6096460994_)
                     (_e6096560999_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6095860968_ '4)))
                     (_inline61002_ _e6096560999_)
                     (_e6096661004_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6095860968_ '5)))
                     (_typedecl61007_ _e6096661004_))
                (_K6096160983_
                 _typedecl61007_
                 _inline61002_
                 _dispatch60997_
                 _arity60992_))
              (_E6096060972_)))))
    (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f)
    (define gxc#!case-lambda::typedecl
      (lambda (_self60768_)
        (letrec ((_clause-e60770_
                  (lambda (_clause60800_)
                    (let* ((_clause6080160809_ _clause60800_)
                           (_E6080360813_
                            (lambda ()
                              (error '"No clause matching"
                                     _clause6080160809_)))
                           (_K6080460819_
                            (lambda (_dispatch60816_ _arity60817_)
                              (cons _arity60817_ (cons _dispatch60816_ '())))))
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _clause6080160809_
                             'gxc#!lambda::t))
                          (let* ((_e6080560822_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _clause6080160809_ '1)))
                                 (_e6080660825_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _clause6080160809_ '2)))
                                 (_arity60828_ _e6080660825_)
                                 (_e6080760830_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _clause6080160809_ '3)))
                                 (_dispatch60833_ _e6080760830_))
                            (_K6080460819_ _dispatch60833_ _arity60828_))
                          (_E6080360813_))))))
          (let* ((_self6077160778_ _self60768_)
                 (_E6077360782_
                  (lambda () (error '"No clause matching" _self6077160778_)))
                 (_K6077460789_
                  (lambda (_clauses60785_)
                    (let ((_clauses60787_
                           (map _clause-e60770_ _clauses60785_)))
                      (cons '@case-lambda _clauses60787_)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of?
                   _self6077160778_
                   'gxc#!case-lambda::t))
                (let* ((_e6077560792_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _self6077160778_ '1)))
                       (_e6077660795_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _self6077160778_ '2)))
                       (_clauses60798_ _e6077660795_))
                  (_K6077460789_ _clauses60798_))
                (_E6077360782_))))))
    (bind-method! gxc#!case-lambda::t 'typedecl gxc#!case-lambda::typedecl '#f)
    (define gxc#!kw-lambda::typedecl
      (lambda (_self60611_)
        (let* ((_self6061260620_ _self60611_)
               (_E6061460624_
                (lambda () (error '"No clause matching" _self6061260620_)))
               (_K6061560630_
                (lambda (_dispatch60627_ _table60628_)
                  (cons '@kw-lambda
                        (cons _table60628_ (cons _dispatch60627_ '()))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self6061260620_ 'gxc#!kw-lambda::t))
              (let* ((_e6061660633_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6061260620_ '1)))
                     (_e6061760636_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6061260620_ '2)))
                     (_table60639_ _e6061760636_)
                     (_e6061860641_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6061260620_ '3)))
                     (_dispatch60644_ _e6061860641_))
                (_K6061560630_ _dispatch60644_ _table60639_))
              (_E6061460624_)))))
    (bind-method! gxc#!kw-lambda::t 'typedecl gxc#!kw-lambda::typedecl '#f)
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_self60454_)
        (let* ((_self6045560463_ _self60454_)
               (_E6045760467_
                (lambda () (error '"No clause matching" _self6045560463_)))
               (_K6045860473_
                (lambda (_main60470_ _keys60471_)
                  (cons '@kw-lambda-dispatch
                        (cons _keys60471_ (cons _main60470_ '()))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6045560463_
                 'gxc#!kw-lambda-primary::t))
              (let* ((_e6045960476_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6045560463_ '1)))
                     (_e6046060479_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6045560463_ '2)))
                     (_keys60482_ _e6046060479_)
                     (_e6046160484_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6045560463_ '3)))
                     (_main60487_ _e6046160484_))
                (_K6045860473_ _main60487_ _keys60482_))
              (_E6045760467_)))))
    (bind-method!
     gxc#!kw-lambda-primary::t
     'typedecl
     gxc#!kw-lambda-primary::typedecl
     '#f)))
