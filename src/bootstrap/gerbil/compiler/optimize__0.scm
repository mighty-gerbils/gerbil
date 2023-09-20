(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1695199296)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (gxc#current-compile-optimizer-info)
            '#!void
            (gxc#current-compile-optimizer-info
             (let ((__obj63885 (make-object gxc#optimizer-info::t '3)))
               (gxc#optimizer-info:::init! __obj63885)
               __obj63885)))))
    (define gxc#optimize!
      (lambda (_ctx63578_)
        (call-with-parameters
         (lambda ()
           (gxc#optimizer-load-ssxi-deps _ctx63578_)
           (table-set!
            (##structure-ref
             (gxc#current-compile-optimizer-info)
             '2
             gxc#optimizer-info::t
             '#f)
            (##structure-ref _ctx63578_ '1 gx#expander-context::t '#f)
            '#t)
           (let ((_code63581_
                  (gxc#optimize-source
                   (##structure-ref _ctx63578_ '11 gx#module-context::t '#f))))
             (##structure-set!
              _ctx63578_
              _code63581_
              '11
              gx#module-context::t
              '#f)))
         gxc#current-compile-mutators
         (make-table 'test: eq?)
         gxc#current-compile-local-type
         (make-table 'test: eq?))))
    (define gxc#optimizer-load-ssxi-deps
      (lambda (_ctx63523_)
        (letrec* ((_deps63525_
                   (let* ((_imports63569_
                           (##structure-ref
                            _ctx63523_
                            '8
                            gx#module-context::t
                            '#f))
                          (_$e63571_ (gx#core-context-prelude__% _ctx63523_)))
                     (if _$e63571_
                         ((lambda (_g6357363575_)
                            (cons _g6357363575_ _imports63569_))
                          _$e63571_)
                         _imports63569_))))
          (let _lp63527_ ((_rest63529_ _deps63525_))
            (let* ((_rest6353063538_ _rest63529_)
                   (_else6353263546_ (lambda () '#!void))
                   (_K6353463557_
                    (lambda (_rest63549_ _hd63550_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _hd63550_
                             'gx#module-context::t))
                          (begin
                            (if (table-ref
                                 (##structure-ref
                                  (gxc#current-compile-optimizer-info)
                                  '2
                                  gxc#optimizer-info::t
                                  '#f)
                                 (##structure-ref
                                  _hd63550_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '#f)
                                '#!void
                                (begin
                                  (let ((_$e63552_
                                         (gx#core-context-prelude__%
                                          _hd63550_)))
                                    (if _$e63552_
                                        ((lambda (_pre63555_)
                                           (_lp63527_
                                            (cons _pre63555_
                                                  (##structure-ref
                                                   _hd63550_
                                                   '8
                                                   gx#module-context::t
                                                   '#f))))
                                         _$e63552_)
                                        (_lp63527_
                                         (##structure-ref
                                          _hd63550_
                                          '8
                                          gx#module-context::t
                                          '#f))))
                                  (gxc#optimizer-load-ssxi _hd63550_)))
                            (_lp63527_ _rest63549_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _hd63550_
                                 'gx#prelude-context::t))
                              (begin
                                (if (table-ref
                                     (##structure-ref
                                      (gxc#current-compile-optimizer-info)
                                      '2
                                      gxc#optimizer-info::t
                                      '#f)
                                     (##structure-ref
                                      _hd63550_
                                      '1
                                      gx#expander-context::t
                                      '#f)
                                     '#f)
                                    '#!void
                                    (begin
                                      (_lp63527_
                                       (##structure-ref
                                        _hd63550_
                                        '7
                                        gx#prelude-context::t
                                        '#f))
                                      (gxc#optimizer-load-ssxi _hd63550_)))
                                (_lp63527_ _rest63549_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _hd63550_
                                     'gx#module-import::t))
                                  (_lp63527_
                                   (cons (##direct-structure-ref
                                          _hd63550_
                                          '1
                                          gx#module-import::t
                                          '#f)
                                         _rest63549_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _hd63550_
                                         'gx#module-export::t))
                                      (_lp63527_
                                       (cons (##direct-structure-ref
                                              _hd63550_
                                              '1
                                              gx#module-export::t
                                              '#f)
                                             _rest63549_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _hd63550_
                                             'gx#import-set::t))
                                          (_lp63527_
                                           (cons (##direct-structure-ref
                                                  _hd63550_
                                                  '1
                                                  gx#import-set::t
                                                  '#f)
                                                 _rest63549_))
                                          (error '"Unexpected module import"
                                                 _hd63550_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest6353063538_))
                  (let ((_hd6353563560_
                         (let ()
                           (declare (not safe))
                           (##car _rest6353063538_)))
                        (_tl6353663562_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6353063538_))))
                    (let* ((_hd63565_ _hd6353563560_)
                           (_rest63567_ _tl6353663562_))
                      (_K6353463557_ _rest63567_ _hd63565_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_ctx63503_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of? _ctx63503_ 'gx#module-context::t))
                 (list? (##structure-ref
                         _ctx63503_
                         '7
                         gx#module-context::t
                         '#f)))
            '#!void
            (let* ((_ht63505_
                    (##structure-ref
                     (gxc#current-compile-optimizer-info)
                     '2
                     gxc#optimizer-info::t
                     '#f))
                   (_id63507_
                    (##structure-ref _ctx63503_ '1 gx#expander-context::t '#f))
                   (_mod63509_ (table-ref _ht63505_ _id63507_ '#f)))
              (let ((_$e63512_ _mod63509_))
                (if _$e63512_
                    _$e63512_
                    (let* ((_mod63515_ (gxc#optimizer-import-ssxi _ctx63503_))
                           (_val63520_
                            (let ((_$e63517_ _mod63515_))
                              (if _$e63517_ _$e63517_ '#!void))))
                      (table-set! _ht63505_ _id63507_ _val63520_)
                      _val63520_)))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_ctx63480_)
        (letrec ((_catch-e63482_
                  (lambda (_exn63501_)
                    (if (gxc#current-compile-verbose)
                        (begin
                          (displayln
                           '"Failed to load ssxi module for "
                           (##structure-ref
                            _ctx63480_
                            '1
                            gx#expander-context::t
                            '#f))
                          (display-exception _exn63501_))
                        '#!void)
                    '#f))
                 (_import-e63483_
                  (lambda ()
                    (let* ((_str-id63486_
                            (string-append
                             (gxc#module-id->path-string
                              (##structure-ref
                               _ctx63480_
                               '1
                               gx#expander-context::t
                               '#f))
                             '".ssxi"))
                           (_artefact-path63494_
                            (let ((_odir6348763489_
                                   (gxc#current-compile-output-dir)))
                              (if _odir6348763489_
                                  (let ((_odir63492_ _odir6348763489_))
                                    (path-expand
                                     (string-append _str-id63486_ '".ss")
                                     _odir63492_))
                                  '#f)))
                           (_library-path63496_
                            (string->symbol
                             (string-append '":" _str-id63486_ '".ss")))
                           (_ssxi-path63498_
                            (if (and _artefact-path63494_
                                     (file-exists? _artefact-path63494_))
                                _artefact-path63494_
                                _library-path63496_)))
                      (gxc#verbose '"Loading ssxi module " _ssxi-path63498_)
                      (gx#import-module__% _ssxi-path63498_ '#t '#t)))))
          (if (##structure-ref _ctx63480_ '1 gx#expander-context::t '#f)
              (with-exception-catcher _catch-e63482_ _import-e63483_)
              '#f))))
    (define gxc#optimize-source
      (lambda (_stx63471_)
        (gxc#apply-collect-mutators _stx63471_)
        (gxc#apply-collect-methods _stx63471_)
        (gxc#apply-collect-top-level-type-info _stx63471_)
        (let* ((_stx63473_ (gxc#apply-generate-method-specializers _stx63471_))
               (_stx63475_ (gxc#apply-lift-top-lambdas _stx63473_)))
          (gxc#apply-collect-type-info _stx63475_)
          (let ((_stx63478_ (gxc#apply-optimize-annotated _stx63475_)))
            (gxc#apply-optimize-call _stx63478_)))))
    (define gxc#&generate-ssxi
      (make-promise
       (lambda ()
         (let ((_tbl63468_ (make-table 'test: eq?)))
           (hash-copy! _tbl63468_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl63468_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl63468_
            '%#begin-syntax
            gxc#generate-ssxi-begin-syntax%)
           (table-set! _tbl63468_ '%#module gxc#generate-ssxi-module%)
           (table-set!
            _tbl63468_
            '%#define-values
            gxc#generate-ssxi-define-values%)
           (table-set! _tbl63468_ '%#call gxc#generate-ssxi-call%)
           _tbl63468_))))
    (define gxc#apply-generate-ssxi
      (lambda (_stx63461_ . _args63463_)
        (call-with-parameters
         (lambda () (apply gxc#compile-e _stx63461_ _args63463_))
         gxc#current-compile-methods
         (force gxc#&generate-ssxi))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_stx63422_)
        (let* ((_g6342463434_
                (lambda (_g6342563431_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g6342563431_)))
               (_g6342363458_
                (lambda (_g6342563437_)
                  (if (gx#stx-pair? _g6342563437_)
                      (let ((_e6342763439_ (gx#stx-e _g6342563437_)))
                        (let ((_hd6342863442_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6342763439_)))
                              (_tl6342963444_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6342763439_))))
                          ((lambda (_L63447_)
                             (call-with-parameters
                              (lambda ()
                                (gxc#generate-runtime-begin% _stx63422_))
                              gx#current-expander-phi
                              (fx+ (gx#current-expander-phi) '1)))
                           _tl6342963444_)))
                      (_g6342463434_ _g6342563437_)))))
          (_g6342363458_ _stx63422_))))
    (define gxc#generate-ssxi-module%
      (lambda (_stx63362_)
        (let* ((_g6336463378_
                (lambda (_g6336563375_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g6336563375_)))
               (_g6336363419_
                (lambda (_g6336563381_)
                  (if (gx#stx-pair? _g6336563381_)
                      (let ((_e6336863383_ (gx#stx-e _g6336563381_)))
                        (let ((_hd6336963386_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6336863383_)))
                              (_tl6337063388_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6336863383_))))
                          (if (gx#stx-pair? _tl6337063388_)
                              (let ((_e6337163391_ (gx#stx-e _tl6337063388_)))
                                (let ((_hd6337263394_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6337163391_)))
                                      (_tl6337363396_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6337163391_))))
                                  ((lambda (_L63399_ _L63400_)
                                     (let* ((_ctx63413_
                                             (gx#syntax-local-e__0 _L63400_))
                                            (_code63415_
                                             (##structure-ref
                                              _ctx63413_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (call-with-parameters
                                        (lambda () (gxc#compile-e _code63415_))
                                        gx#current-expander-context
                                        _ctx63413_)))
                                   _tl6337363396_
                                   _hd6337263394_)))
                              (_g6336463378_ _g6336563381_))))
                      (_g6336463378_ _g6336563381_)))))
          (_g6336363419_ _stx63362_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_stx63172_)
        (letrec ((_generate-e63174_
                  (lambda (_id63351_)
                    (let* ((_sym63353_
                            (if (gx#identifier? (gx#datum->syntax__0 '#f 'id))
                                (gxc#identifier-symbol _id63351_)
                                '#f))
                           (_$e63355_
                            (if _sym63353_
                                (gxc#optimizer-lookup-type _sym63353_)
                                '#f)))
                      (if _$e63355_
                          ((lambda (_type63358_)
                             (gxc#verbose '"generate typedecl " _sym63353_)
                             (let ((_typedecl63360_
                                    (let ((__method63886
                                           (method-ref _type63358_ 'typedecl)))
                                      (if __method63886
                                          (__method63886 _type63358_)
                                          (error '"Missing method"
                                                 _type63358_
                                                 'typedecl)))))
                               (cons 'declare-type
                                     (cons _sym63353_
                                           (cons _typedecl63360_ '())))))
                           _$e63355_)
                          '(begin))))))
          (let* ((___stx6358463585_ _stx63172_)
                 (_g6317763215_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     ___stx6358463585_))))
            (let ((___kont6358663587_
                   (lambda (_L63333_) (_generate-e63174_ _L63333_)))
                  (___kont6358863589_
                   (lambda (_L63268_)
                     (let ((_types63294_
                            (map _generate-e63174_
                                 (foldr1 (lambda (_g6328663289_ _g6328763291_)
                                           (cons _g6328663289_ _g6328763291_))
                                         '()
                                         _L63268_))))
                       (cons 'begin _types63294_)))))
              (let ((___match6363963640_
                     (lambda (_e6319363220_
                              _hd6319463223_
                              _tl6319563225_
                              _e6319663228_
                              _hd6319763231_
                              _tl6319863233_
                              ___splice6359063591_
                              _target6319963236_
                              _tl6320163238_)
                       (letrec ((_loop6320263241_
                                 (lambda (_hd6320063244_ _id6320663246_)
                                   (if (gx#stx-pair? _hd6320063244_)
                                       (let ((_e6320363249_
                                              (gx#stx-e _hd6320063244_)))
                                         (let ((_lp-tl6320563254_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e6320363249_)))
                                               (_lp-hd6320463252_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e6320363249_))))
                                           (_loop6320263241_
                                            _lp-tl6320563254_
                                            (cons _lp-hd6320463252_
                                                  _id6320663246_))))
                                       (let ((_id6320763257_
                                              (reverse _id6320663246_)))
                                         (if (gx#stx-pair? _tl6319863233_)
                                             (let ((_e6320863260_
                                                    (gx#stx-e _tl6319863233_)))
                                               (let ((_tl6321063265_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e6320863260_)))
                                                     (_hd6320963263_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e6320863260_))))
                                                 (if (gx#stx-null?
                                                      _tl6321063265_)
                                                     (___kont6358863589_
                                                      _id6320763257_)
                                                     (_g6317763215_))))
                                             (_g6317763215_)))))))
                         (_loop6320263241_ _target6319963236_ '())))))
                (if (gx#stx-pair? ___stx6358463585_)
                    (let ((_e6318063301_ (gx#stx-e ___stx6358463585_)))
                      (let ((_tl6318263306_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6318063301_)))
                            (_hd6318163304_
                             (let ()
                               (declare (not safe))
                               (##car _e6318063301_))))
                        (if (gx#stx-pair? _tl6318263306_)
                            (let ((_e6318363309_ (gx#stx-e _tl6318263306_)))
                              (let ((_tl6318563314_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6318363309_)))
                                    (_hd6318463312_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6318363309_))))
                                (if (gx#stx-pair? _hd6318463312_)
                                    (let ((_e6318663317_
                                           (gx#stx-e _hd6318463312_)))
                                      (let ((_tl6318863322_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6318663317_)))
                                            (_hd6318763320_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6318663317_))))
                                        (if (gx#stx-null? _tl6318863322_)
                                            (if (gx#stx-pair? _tl6318563314_)
                                                (let ((_e6318963325_
                                                       (gx#stx-e
                                                        _tl6318563314_)))
                                                  (let ((_tl6319163330_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e6318963325_)))
                                                        (_hd6319063328_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e6318963325_))))
                                                    (if (gx#stx-null?
                                                         _tl6319163330_)
                                                        (___kont6358663587_
                                                         _hd6318763320_)
                                                        (if (gx#stx-pair/null?
                                                             _hd6318463312_)
                                                            (let ((___splice6359063591_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice _hd6318463312_ '0)))
                      (let ((_tl6320163238_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice6359063591_ '1)))
                            (_target6319963236_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice6359063591_ '0))))
                        (if (gx#stx-null? _tl6320163238_)
                            (___match6363963640_
                             _e6318063301_
                             _hd6318163304_
                             _tl6318263306_
                             _e6318363309_
                             _hd6318463312_
                             _tl6318563314_
                             ___splice6359063591_
                             _target6319963236_
                             _tl6320163238_)
                            (_g6317763215_))))
                    (_g6317763215_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair/null?
                                                     _hd6318463312_)
                                                    (let ((___splice6359063591_
                                                           (gx#syntax-split-splice
                                                            _hd6318463312_
                                                            '0)))
                                                      (let ((_tl6320163238_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice6359063591_ '1)))
                    (_target6319963236_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice6359063591_ '0))))
                (if (gx#stx-null? _tl6320163238_)
                    (___match6363963640_
                     _e6318063301_
                     _hd6318163304_
                     _tl6318263306_
                     _e6318363309_
                     _hd6318463312_
                     _tl6318563314_
                     ___splice6359063591_
                     _target6319963236_
                     _tl6320163238_)
                    (_g6317763215_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g6317763215_)))
                                            (if (gx#stx-pair/null?
                                                 _hd6318463312_)
                                                (let ((___splice6359063591_
                                                       (gx#syntax-split-splice
                                                        _hd6318463312_
                                                        '0)))
                                                  (let ((_tl6320163238_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice6359063591_
                                                            '1)))
                                                        (_target6319963236_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice6359063591_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _tl6320163238_)
                                                        (___match6363963640_
                                                         _e6318063301_
                                                         _hd6318163304_
                                                         _tl6318263306_
                                                         _e6318363309_
                                                         _hd6318463312_
                                                         _tl6318563314_
                                                         ___splice6359063591_
                                                         _target6319963236_
                                                         _tl6320163238_)
                                                        (_g6317763215_))))
                                                (_g6317763215_)))))
                                    (if (gx#stx-pair/null? _hd6318463312_)
                                        (let ((___splice6359063591_
                                               (gx#syntax-split-splice
                                                _hd6318463312_
                                                '0)))
                                          (let ((_tl6320163238_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice6359063591_
                                                    '1)))
                                                (_target6319963236_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice6359063591_
                                                    '0))))
                                            (if (gx#stx-null? _tl6320163238_)
                                                (___match6363963640_
                                                 _e6318063301_
                                                 _hd6318163304_
                                                 _tl6318263306_
                                                 _e6318363309_
                                                 _hd6318463312_
                                                 _tl6318563314_
                                                 ___splice6359063591_
                                                 _target6319963236_
                                                 _tl6320163238_)
                                                (_g6317763215_))))
                                        (_g6317763215_)))))
                            (_g6317763215_))))
                    (_g6317763215_))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_stx62726_)
        (let* ((___stx6364263643_ _stx62726_)
               (_g6273062832_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx6364263643_))))
          (let ((___kont6364463645_
                 (lambda (_L63122_ _L63123_ _L63124_ _L63125_ _L63126_)
                   (cons 'declare-method
                         (cons (gxc#identifier-symbol _L63125_)
                               (cons (gx#stx-e _L63124_)
                                     (cons (gxc#identifier-symbol _L63123_)
                                           (cons (gx#stx-e _L63122_) '())))))))
                (___kont6364663647_
                 (lambda (_L62948_ _L62949_ _L62950_ _L62951_)
                   (cons 'declare-method
                         (cons (gxc#identifier-symbol _L62950_)
                               (cons (gx#stx-e _L62949_)
                                     (cons (gxc#identifier-symbol _L62948_)
                                           (cons '#f '())))))))
                (___kont6364863649_ (lambda () '(begin))))
            (let ((___match6377763778_
                   (lambda (_e6273762994_
                            _hd6273862997_
                            _tl6273962999_
                            _e6274063002_
                            _hd6274163005_
                            _tl6274263007_
                            _e6274363010_
                            _hd6274463013_
                            _tl6274563015_
                            _e6274663018_
                            _hd6274763021_
                            _tl6274863023_
                            _e6274963026_
                            _hd6275063029_
                            _tl6275163031_
                            _e6275263034_
                            _hd6275363037_
                            _tl6275463039_
                            _e6275563042_
                            _hd6275663045_
                            _tl6275763047_
                            _e6275863050_
                            _hd6275963053_
                            _tl6276063055_
                            _e6276163058_
                            _hd6276263061_
                            _tl6276363063_
                            _e6276463066_
                            _hd6276563069_
                            _tl6276663071_
                            _e6276763074_
                            _hd6276863077_
                            _tl6276963079_
                            _e6277063082_
                            _hd6277163085_
                            _tl6277263087_
                            _e6277363090_
                            _hd6277463093_
                            _tl6277563095_
                            _e6277663098_
                            _hd6277763101_
                            _tl6277863103_
                            _e6277963106_
                            _hd6278063109_
                            _tl6278163111_
                            _e6278263114_
                            _hd6278363117_
                            _tl6278463119_)
                     (let ((_L63122_ _hd6278363117_)
                           (_L63123_ _hd6277463093_)
                           (_L63124_ _hd6276563069_)
                           (_L63125_ _hd6275663045_)
                           (_L63126_ _hd6274763021_))
                       (if (gxc#runtime-identifier=? _L63126_ 'bind-method!)
                           (___kont6364463645_
                            _L63122_
                            _L63123_
                            _L63124_
                            _L63125_
                            _L63126_)
                           (___kont6364863649_))))))
              (if (gx#stx-pair? ___stx6364263643_)
                  (let ((_e6273762994_ (gx#stx-e ___stx6364263643_)))
                    (let ((_tl6273962999_
                           (let () (declare (not safe)) (##cdr _e6273762994_)))
                          (_hd6273862997_
                           (let ()
                             (declare (not safe))
                             (##car _e6273762994_))))
                      (if (gx#stx-pair? _tl6273962999_)
                          (let ((_e6274063002_ (gx#stx-e _tl6273962999_)))
                            (let ((_tl6274263007_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e6274063002_)))
                                  (_hd6274163005_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e6274063002_))))
                              (if (gx#stx-pair? _hd6274163005_)
                                  (let ((_e6274363010_
                                         (gx#stx-e _hd6274163005_)))
                                    (let ((_tl6274563015_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e6274363010_)))
                                          (_hd6274463013_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e6274363010_))))
                                      (if (gx#identifier? _hd6274463013_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd6274463013_)
                                              (if (gx#stx-pair? _tl6274563015_)
                                                  (let ((_e6274663018_
                                                         (gx#stx-e
                                                          _tl6274563015_)))
                                                    (let ((_tl6274863023_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e6274663018_)))
                                                          (_hd6274763021_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e6274663018_))))
                                                      (if (gx#stx-null?
                                                           _tl6274863023_)
                                                          (if (gx#stx-pair?
                                                               _tl6274263007_)
                                                              (let ((_e6274963026_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl6274263007_)))
                        (let ((_tl6275163031_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6274963026_)))
                              (_hd6275063029_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6274963026_))))
                          (if (gx#stx-pair? _hd6275063029_)
                              (let ((_e6275263034_ (gx#stx-e _hd6275063029_)))
                                (let ((_tl6275463039_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6275263034_)))
                                      (_hd6275363037_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6275263034_))))
                                  (if (gx#identifier? _hd6275363037_)
                                      (if (gx#stx-eq? '%#ref _hd6275363037_)
                                          (if (gx#stx-pair? _tl6275463039_)
                                              (let ((_e6275563042_
                                                     (gx#stx-e
                                                      _tl6275463039_)))
                                                (let ((_tl6275763047_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e6275563042_)))
                                                      (_hd6275663045_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e6275563042_))))
                                                  (if (gx#stx-null?
                                                       _tl6275763047_)
                                                      (if (gx#stx-pair?
                                                           _tl6275163031_)
                                                          (let ((_e6275863050_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl6275163031_)))
                    (let ((_tl6276063055_
                           (let () (declare (not safe)) (##cdr _e6275863050_)))
                          (_hd6275963053_
                           (let ()
                             (declare (not safe))
                             (##car _e6275863050_))))
                      (if (gx#stx-pair? _hd6275963053_)
                          (let ((_e6276163058_ (gx#stx-e _hd6275963053_)))
                            (let ((_tl6276363063_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e6276163058_)))
                                  (_hd6276263061_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e6276163058_))))
                              (if (gx#identifier? _hd6276263061_)
                                  (if (gx#stx-eq? '%#quote _hd6276263061_)
                                      (if (gx#stx-pair? _tl6276363063_)
                                          (let ((_e6276463066_
                                                 (gx#stx-e _tl6276363063_)))
                                            (let ((_tl6276663071_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e6276463066_)))
                                                  (_hd6276563069_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e6276463066_))))
                                              (if (gx#stx-null? _tl6276663071_)
                                                  (if (gx#stx-pair?
                                                       _tl6276063055_)
                                                      (let ((_e6276763074_
                                                             (gx#stx-e
                                                              _tl6276063055_)))
                                                        (let ((_tl6276963079_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e6276763074_)))
                      (_hd6276863077_
                       (let () (declare (not safe)) (##car _e6276763074_))))
                  (if (gx#stx-pair? _hd6276863077_)
                      (let ((_e6277063082_ (gx#stx-e _hd6276863077_)))
                        (let ((_tl6277263087_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6277063082_)))
                              (_hd6277163085_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6277063082_))))
                          (if (gx#identifier? _hd6277163085_)
                              (if (gx#stx-eq? '%#ref _hd6277163085_)
                                  (if (gx#stx-pair? _tl6277263087_)
                                      (let ((_e6277363090_
                                             (gx#stx-e _tl6277263087_)))
                                        (let ((_tl6277563095_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e6277363090_)))
                                              (_hd6277463093_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e6277363090_))))
                                          (if (gx#stx-null? _tl6277563095_)
                                              (if (gx#stx-pair? _tl6276963079_)
                                                  (let ((_e6277663098_
                                                         (gx#stx-e
                                                          _tl6276963079_)))
                                                    (let ((_tl6277863103_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e6277663098_)))
                                                          (_hd6277763101_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e6277663098_))))
                                                      (if (gx#stx-pair?
                                                           _hd6277763101_)
                                                          (let ((_e6277963106_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd6277763101_)))
                    (let ((_tl6278163111_
                           (let () (declare (not safe)) (##cdr _e6277963106_)))
                          (_hd6278063109_
                           (let ()
                             (declare (not safe))
                             (##car _e6277963106_))))
                      (if (gx#identifier? _hd6278063109_)
                          (if (gx#stx-eq? '%#quote _hd6278063109_)
                              (if (gx#stx-pair? _tl6278163111_)
                                  (let ((_e6278263114_
                                         (gx#stx-e _tl6278163111_)))
                                    (let ((_tl6278463119_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e6278263114_)))
                                          (_hd6278363117_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e6278263114_))))
                                      (if (gx#stx-null? _tl6278463119_)
                                          (if (gx#stx-null? _tl6277863103_)
                                              (___match6377763778_
                                               _e6273762994_
                                               _hd6273862997_
                                               _tl6273962999_
                                               _e6274063002_
                                               _hd6274163005_
                                               _tl6274263007_
                                               _e6274363010_
                                               _hd6274463013_
                                               _tl6274563015_
                                               _e6274663018_
                                               _hd6274763021_
                                               _tl6274863023_
                                               _e6274963026_
                                               _hd6275063029_
                                               _tl6275163031_
                                               _e6275263034_
                                               _hd6275363037_
                                               _tl6275463039_
                                               _e6275563042_
                                               _hd6275663045_
                                               _tl6275763047_
                                               _e6275863050_
                                               _hd6275963053_
                                               _tl6276063055_
                                               _e6276163058_
                                               _hd6276263061_
                                               _tl6276363063_
                                               _e6276463066_
                                               _hd6276563069_
                                               _tl6276663071_
                                               _e6276763074_
                                               _hd6276863077_
                                               _tl6276963079_
                                               _e6277063082_
                                               _hd6277163085_
                                               _tl6277263087_
                                               _e6277363090_
                                               _hd6277463093_
                                               _tl6277563095_
                                               _e6277663098_
                                               _hd6277763101_
                                               _tl6277863103_
                                               _e6277963106_
                                               _hd6278063109_
                                               _tl6278163111_
                                               _e6278263114_
                                               _hd6278363117_
                                               _tl6278463119_)
                                              (___kont6364863649_))
                                          (___kont6364863649_))))
                                  (___kont6364863649_))
                              (___kont6364863649_))
                          (___kont6364863649_))))
                  (___kont6364863649_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _tl6276963079_)
                                                      (if (gxc#runtime-identifier=?
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '-bind-method)
                                                           'bind-method!)
                                                          (let ((_L62948_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd6277463093_)
                        (_L62949_ _hd6276563069_)
                        (_L62950_ _hd6275663045_)
                        (_L62951_ _hd6274763021_))
                    (___kont6364663647_ _L62948_ _L62949_ _L62950_ _L62951_))
                  (___kont6364863649_))
              (___kont6364863649_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont6364863649_))))
                                      (___kont6364863649_))
                                  (___kont6364863649_))
                              (___kont6364863649_))))
                      (___kont6364863649_))))
              (___kont6364863649_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont6364863649_))))
                                          (___kont6364863649_))
                                      (___kont6364863649_))
                                  (___kont6364863649_))))
                          (___kont6364863649_))))
                  (___kont6364863649_))
              (___kont6364863649_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont6364863649_))
                                          (___kont6364863649_))
                                      (___kont6364863649_))))
                              (___kont6364863649_))))
                      (___kont6364863649_))
                  (___kont6364863649_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont6364863649_))
                                              (___kont6364863649_))
                                          (___kont6364863649_))))
                                  (___kont6364863649_))))
                          (___kont6364863649_))))
                  (___kont6364863649_)))))))
    (define gxc#!alias::typedecl
      (lambda (_self62702_)
        (let* ((_self6270362709_ _self62702_)
               (_E6270562713_
                (lambda () (error '"No clause matching" _self6270362709_)))
               (_K6270662718_
                (lambda (_alias-id62716_)
                  (cons '@alias (cons _alias-id62716_ '())))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self6270362709_ 'gxc#!alias::t))
              (let* ((_e6270762721_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6270362709_ '1)))
                     (_alias-id62724_ _e6270762721_))
                (_K6270662718_ _alias-id62724_))
              (_E6270562713_)))))
    (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f)
    (define gxc#!struct-type::typedecl
      (lambda (_self62524_)
        (let* ((_self6252562536_ _self62524_)
               (_E6252762540_
                (lambda () (error '"No clause matching" _self6252562536_)))
               (_K6252862549_
                (lambda (_plist62543_
                         _ctor62544_
                         _fields62545_
                         _super62546_
                         _type-id62547_)
                  (cons '@struct-type
                        (cons _type-id62547_
                              (cons _super62546_
                                    (cons _fields62545_
                                          (cons _ctor62544_
                                                (cons _plist62543_ '())))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6252562536_
                 'gxc#!struct-type::t))
              (let* ((_e6252962552_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6252562536_ '1)))
                     (_type-id62555_ _e6252962552_)
                     (_e6253062557_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6252562536_ '2)))
                     (_super62560_ _e6253062557_)
                     (_e6253162562_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6252562536_ '3)))
                     (_fields62565_ _e6253162562_)
                     (_e6253262567_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6252562536_ '4)))
                     (_e6253362570_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6252562536_ '5)))
                     (_ctor62573_ _e6253362570_)
                     (_e6253462575_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6252562536_ '6)))
                     (_plist62578_ _e6253462575_))
                (_K6252862549_
                 _plist62578_
                 _ctor62573_
                 _fields62565_
                 _super62560_
                 _type-id62555_))
              (_E6252762540_)))))
    (bind-method! gxc#!struct-type::t 'typedecl gxc#!struct-type::typedecl '#f)
    (define gxc#!struct-pred::typedecl
      (lambda (_self62378_)
        (let* ((_self6237962385_ _self62378_)
               (_E6238162389_
                (lambda () (error '"No clause matching" _self6237962385_)))
               (_K6238262394_
                (lambda (_struct-t62392_)
                  (cons '@struct-pred (cons _struct-t62392_ '())))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6237962385_
                 'gxc#!struct-pred::t))
              (let* ((_e6238362397_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6237962385_ '1)))
                     (_struct-t62400_ _e6238362397_))
                (_K6238262394_ _struct-t62400_))
              (_E6238162389_)))))
    (bind-method! gxc#!struct-pred::t 'typedecl gxc#!struct-pred::typedecl '#f)
    (define gxc#!struct-cons::typedecl
      (lambda (_self62232_)
        (let* ((_self6223362239_ _self62232_)
               (_E6223562243_
                (lambda () (error '"No clause matching" _self6223362239_)))
               (_K6223662248_
                (lambda (_struct-t62246_)
                  (cons '@struct-cons (cons _struct-t62246_ '())))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6223362239_
                 'gxc#!struct-cons::t))
              (let* ((_e6223762251_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6223362239_ '1)))
                     (_struct-t62254_ _e6223762251_))
                (_K6223662248_ _struct-t62254_))
              (_E6223562243_)))))
    (bind-method! gxc#!struct-cons::t 'typedecl gxc#!struct-cons::typedecl '#f)
    (define gxc#!struct-getf::typedecl
      (lambda (_self62072_)
        (let* ((_self6207362081_ _self62072_)
               (_E6207562085_
                (lambda () (error '"No clause matching" _self6207362081_)))
               (_K6207662092_
                (lambda (_unchecked?62088_ _off62089_ _struct-t62090_)
                  (cons '@struct-getf
                        (cons _struct-t62090_
                              (cons _off62089_
                                    (cons _unchecked?62088_ '())))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6207362081_
                 'gxc#!struct-getf::t))
              (let* ((_e6207762095_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6207362081_ '1)))
                     (_struct-t62098_ _e6207762095_)
                     (_e6207862100_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6207362081_ '2)))
                     (_off62103_ _e6207862100_)
                     (_e6207962105_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6207362081_ '3)))
                     (_unchecked?62108_ _e6207962105_))
                (_K6207662092_ _unchecked?62108_ _off62103_ _struct-t62098_))
              (_E6207562085_)))))
    (bind-method! gxc#!struct-getf::t 'typedecl gxc#!struct-getf::typedecl '#f)
    (define gxc#!struct-setf::typedecl
      (lambda (_self61912_)
        (let* ((_self6191361921_ _self61912_)
               (_E6191561925_
                (lambda () (error '"No clause matching" _self6191361921_)))
               (_K6191661932_
                (lambda (_unchecked?61928_ _off61929_ _struct-t61930_)
                  (cons '@struct-setf
                        (cons _struct-t61930_
                              (cons _off61929_
                                    (cons _unchecked?61928_ '())))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6191361921_
                 'gxc#!struct-setf::t))
              (let* ((_e6191761935_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6191361921_ '1)))
                     (_struct-t61938_ _e6191761935_)
                     (_e6191861940_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6191361921_ '2)))
                     (_off61943_ _e6191861940_)
                     (_e6191961945_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6191361921_ '3)))
                     (_unchecked?61948_ _e6191961945_))
                (_K6191661932_ _unchecked?61948_ _off61943_ _struct-t61938_))
              (_E6191561925_)))))
    (bind-method! gxc#!struct-setf::t 'typedecl gxc#!struct-setf::typedecl '#f)
    (define gxc#!class-type::typedecl
      (lambda (_self61724_)
        (let* ((_self6172561737_ _self61724_)
               (_E6172761741_
                (lambda () (error '"No clause matching" _self6172561737_)))
               (_K6172861752_
                (lambda (_plist61744_
                         _ctor61745_
                         _xslots61746_
                         _slots61747_
                         _mixin61748_
                         _super61749_
                         _type-id61750_)
                  (cons '@class-type
                        (cons _type-id61750_
                              (cons _super61749_
                                    (cons _mixin61748_
                                          (cons _slots61747_
                                                (cons _xslots61746_
                                                      (cons _ctor61745_
                                                            (cons _plist61744_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6172561737_
                 'gxc#!class-type::t))
              (let* ((_e6172961755_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6172561737_ '1)))
                     (_type-id61758_ _e6172961755_)
                     (_e6173061760_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6172561737_ '2)))
                     (_super61763_ _e6173061760_)
                     (_e6173161765_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6172561737_ '3)))
                     (_mixin61768_ _e6173161765_)
                     (_e6173261770_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6172561737_ '4)))
                     (_slots61773_ _e6173261770_)
                     (_e6173361775_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6172561737_ '5)))
                     (_xslots61778_ _e6173361775_)
                     (_e6173461780_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6172561737_ '6)))
                     (_ctor61783_ _e6173461780_)
                     (_e6173561785_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6172561737_ '7)))
                     (_plist61788_ _e6173561785_))
                (_K6172861752_
                 _plist61788_
                 _ctor61783_
                 _xslots61778_
                 _slots61773_
                 _mixin61768_
                 _super61763_
                 _type-id61758_))
              (_E6172761741_)))))
    (bind-method! gxc#!class-type::t 'typedecl gxc#!class-type::typedecl '#f)
    (define gxc#!class-pred::typedecl
      (lambda (_self61578_)
        (let* ((_self6157961585_ _self61578_)
               (_E6158161589_
                (lambda () (error '"No clause matching" _self6157961585_)))
               (_K6158261594_
                (lambda (_class-t61592_)
                  (cons '@class-pred (cons _class-t61592_ '())))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6157961585_
                 'gxc#!class-pred::t))
              (let* ((_e6158361597_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6157961585_ '1)))
                     (_class-t61600_ _e6158361597_))
                (_K6158261594_ _class-t61600_))
              (_E6158161589_)))))
    (bind-method! gxc#!class-pred::t 'typedecl gxc#!class-pred::typedecl '#f)
    (define gxc#!class-cons::typedecl
      (lambda (_self61432_)
        (let* ((_self6143361439_ _self61432_)
               (_E6143561443_
                (lambda () (error '"No clause matching" _self6143361439_)))
               (_K6143661448_
                (lambda (_class-t61446_)
                  (cons '@class-cons (cons _class-t61446_ '())))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6143361439_
                 'gxc#!class-cons::t))
              (let* ((_e6143761451_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6143361439_ '1)))
                     (_class-t61454_ _e6143761451_))
                (_K6143661448_ _class-t61454_))
              (_E6143561443_)))))
    (bind-method! gxc#!class-cons::t 'typedecl gxc#!class-cons::typedecl '#f)
    (define gxc#!class-getf::typedecl
      (lambda (_self61272_)
        (let* ((_self6127361281_ _self61272_)
               (_E6127561285_
                (lambda () (error '"No clause matching" _self6127361281_)))
               (_K6127661292_
                (lambda (_unchecked?61288_ _slot61289_ _class-t61290_)
                  (cons '@class-getf
                        (cons _class-t61290_
                              (cons _slot61289_
                                    (cons _unchecked?61288_ '())))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6127361281_
                 'gxc#!class-getf::t))
              (let* ((_e6127761295_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6127361281_ '1)))
                     (_class-t61298_ _e6127761295_)
                     (_e6127861300_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6127361281_ '2)))
                     (_slot61303_ _e6127861300_)
                     (_e6127961305_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6127361281_ '3)))
                     (_unchecked?61308_ _e6127961305_))
                (_K6127661292_ _unchecked?61308_ _slot61303_ _class-t61298_))
              (_E6127561285_)))))
    (bind-method! gxc#!class-getf::t 'typedecl gxc#!class-getf::typedecl '#f)
    (define gxc#!class-setf::typedecl
      (lambda (_self61112_)
        (let* ((_self6111361121_ _self61112_)
               (_E6111561125_
                (lambda () (error '"No clause matching" _self6111361121_)))
               (_K6111661132_
                (lambda (_unchecked?61128_ _slot61129_ _class-t61130_)
                  (cons '@class-setf
                        (cons _class-t61130_
                              (cons _slot61129_
                                    (cons _unchecked?61128_ '())))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6111361121_
                 'gxc#!class-setf::t))
              (let* ((_e6111761135_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6111361121_ '1)))
                     (_class-t61138_ _e6111761135_)
                     (_e6111861140_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6111361121_ '2)))
                     (_slot61143_ _e6111861140_)
                     (_e6111961145_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6111361121_ '3)))
                     (_unchecked?61148_ _e6111961145_))
                (_K6111661132_ _unchecked?61148_ _slot61143_ _class-t61138_))
              (_E6111561125_)))))
    (bind-method! gxc#!class-setf::t 'typedecl gxc#!class-setf::typedecl '#f)
    (define gxc#!lambda::typedecl
      (lambda (_self60938_)
        (let* ((_self6093960949_ _self60938_)
               (_E6094160953_
                (lambda () (error '"No clause matching" _self6093960949_)))
               (_K6094260964_
                (lambda (_typedecl60956_
                         _inline60957_
                         _dispatch60958_
                         _arity60959_)
                  (if _inline60957_
                      (let ((_$e60961_ _typedecl60956_))
                        (if _$e60961_
                            _$e60961_
                            (error '"Cannot generate typedecl for inline rules")))
                      (cons '@lambda
                            (cons _arity60959_ (cons _dispatch60958_ '())))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self6093960949_ 'gxc#!lambda::t))
              (let* ((_e6094360967_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6093960949_ '1)))
                     (_e6094460970_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6093960949_ '2)))
                     (_arity60973_ _e6094460970_)
                     (_e6094560975_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6093960949_ '3)))
                     (_dispatch60978_ _e6094560975_)
                     (_e6094660980_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6093960949_ '4)))
                     (_inline60983_ _e6094660980_)
                     (_e6094760985_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6093960949_ '5)))
                     (_typedecl60988_ _e6094760985_))
                (_K6094260964_
                 _typedecl60988_
                 _inline60983_
                 _dispatch60978_
                 _arity60973_))
              (_E6094160953_)))))
    (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f)
    (define gxc#!case-lambda::typedecl
      (lambda (_self60749_)
        (letrec ((_clause-e60751_
                  (lambda (_clause60781_)
                    (let* ((_clause6078260790_ _clause60781_)
                           (_E6078460794_
                            (lambda ()
                              (error '"No clause matching"
                                     _clause6078260790_)))
                           (_K6078560800_
                            (lambda (_dispatch60797_ _arity60798_)
                              (cons _arity60798_ (cons _dispatch60797_ '())))))
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _clause6078260790_
                             'gxc#!lambda::t))
                          (let* ((_e6078660803_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _clause6078260790_ '1)))
                                 (_e6078760806_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _clause6078260790_ '2)))
                                 (_arity60809_ _e6078760806_)
                                 (_e6078860811_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _clause6078260790_ '3)))
                                 (_dispatch60814_ _e6078860811_))
                            (_K6078560800_ _dispatch60814_ _arity60809_))
                          (_E6078460794_))))))
          (let* ((_self6075260759_ _self60749_)
                 (_E6075460763_
                  (lambda () (error '"No clause matching" _self6075260759_)))
                 (_K6075560770_
                  (lambda (_clauses60766_)
                    (let ((_clauses60768_
                           (map _clause-e60751_ _clauses60766_)))
                      (cons '@case-lambda _clauses60768_)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of?
                   _self6075260759_
                   'gxc#!case-lambda::t))
                (let* ((_e6075660773_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _self6075260759_ '1)))
                       (_e6075760776_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _self6075260759_ '2)))
                       (_clauses60779_ _e6075760776_))
                  (_K6075560770_ _clauses60779_))
                (_E6075460763_))))))
    (bind-method! gxc#!case-lambda::t 'typedecl gxc#!case-lambda::typedecl '#f)
    (define gxc#!kw-lambda::typedecl
      (lambda (_self60592_)
        (let* ((_self6059360601_ _self60592_)
               (_E6059560605_
                (lambda () (error '"No clause matching" _self6059360601_)))
               (_K6059660611_
                (lambda (_dispatch60608_ _table60609_)
                  (cons '@kw-lambda
                        (cons _table60609_ (cons _dispatch60608_ '()))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self6059360601_ 'gxc#!kw-lambda::t))
              (let* ((_e6059760614_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6059360601_ '1)))
                     (_e6059860617_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6059360601_ '2)))
                     (_table60620_ _e6059860617_)
                     (_e6059960622_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6059360601_ '3)))
                     (_dispatch60625_ _e6059960622_))
                (_K6059660611_ _dispatch60625_ _table60620_))
              (_E6059560605_)))))
    (bind-method! gxc#!kw-lambda::t 'typedecl gxc#!kw-lambda::typedecl '#f)
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_self60435_)
        (let* ((_self6043660444_ _self60435_)
               (_E6043860448_
                (lambda () (error '"No clause matching" _self6043660444_)))
               (_K6043960454_
                (lambda (_main60451_ _keys60452_)
                  (cons '@kw-lambda-dispatch
                        (cons _keys60452_ (cons _main60451_ '()))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6043660444_
                 'gxc#!kw-lambda-primary::t))
              (let* ((_e6044060457_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6043660444_ '1)))
                     (_e6044160460_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6043660444_ '2)))
                     (_keys60463_ _e6044160460_)
                     (_e6044260465_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6043660444_ '3)))
                     (_main60468_ _e6044260465_))
                (_K6043960454_ _main60468_ _keys60463_))
              (_E6043860448_)))))
    (bind-method!
     gxc#!kw-lambda-primary::t
     'typedecl
     gxc#!kw-lambda-primary::typedecl
     '#f)))
