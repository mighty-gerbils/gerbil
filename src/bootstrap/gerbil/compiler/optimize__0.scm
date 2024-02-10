(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1707601722)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (gxc#current-compile-optimizer-info)
            '#!void
            (gxc#current-compile-optimizer-info
             (let ((__obj287322
                    (let ()
                      (declare (not safe))
                      (##structure gxc#optimizer-info::t '#f '#f '#f))))
               (gxc#optimizer-info:::init! __obj287322)
               __obj287322)))))
    (define gxc#optimize!
      (lambda (_ctx282547_)
        (let ((__tmp287326
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _ctx282547_))
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-builtin-ssxi))
                 (let ((__tmp287328
                        (##structure-ref
                         (gxc#current-compile-optimizer-info)
                         '2
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp287327
                        (##structure-ref
                         _ctx282547_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (table-set! __tmp287328 __tmp287327 '#t))
                 (let ((_code282550_
                        (let ((__tmp287329
                               (##structure-ref
                                _ctx282547_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp287329))))
                   (##structure-set!
                    _ctx282547_
                    _code282550_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp287325
               (let () (declare (not safe)) (make-table 'test: eq?)))
              (__tmp287324
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (call-with-parameters
           __tmp287326
           gxc#current-compile-mutators
           __tmp287325
           gxc#current-compile-local-type
           __tmp287324))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda ()
        (let ()
          (declare (not safe))
          (gxc#optimizer-import-ssxi-by-id 'gerbil/builtin))
        (let ((__tmp287330
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-set! __tmp287330 'gerbil/builtin '#t))))
    (define gxc#optimizer-load-ssxi-deps
      (lambda (_ctx282491_)
        (letrec* ((_deps282493_
                   (let* ((_imports282537_
                           (##structure-ref
                            _ctx282491_
                            '8
                            gx#module-context::t
                            '#f))
                          (_$e282539_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _ctx282491_))))
                     (if _$e282539_
                         ((lambda (_g282541282543_)
                            (let ()
                              (declare (not safe))
                              (cons _g282541282543_ _imports282537_)))
                          _$e282539_)
                         _imports282537_))))
          (let _lp282495_ ((_rest282497_ _deps282493_))
            (let* ((_rest282498282506_ _rest282497_)
                   (_else282500282514_ (lambda () '#!void))
                   (_K282502282525_
                    (lambda (_rest282517_ _hd282518_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _hd282518_
                             'gx#module-context::t))
                          (begin
                            (if (let ((__tmp287344
                                       (##structure-ref
                                        (gxc#current-compile-optimizer-info)
                                        '2
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp287343
                                       (##structure-ref
                                        _hd282518_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (table-ref __tmp287344 __tmp287343 '#f))
                                '#!void
                                (begin
                                  (let ((_$e282520_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _hd282518_))))
                                    (if _$e282520_
                                        ((lambda (_pre282523_)
                                           (let ((__tmp287341
                                                  (let ((__tmp287342
                                                         (##structure-ref
                                                          _hd282518_
                                                          '8
                                                          gx#module-context::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (cons _pre282523_
                                                          __tmp287342))))
                                             (declare (not safe))
                                             (_lp282495_ __tmp287341)))
                                         _$e282520_)
                                        (let ((__tmp287340
                                               (##structure-ref
                                                _hd282518_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                          (declare (not safe))
                                          (_lp282495_ __tmp287340))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _hd282518_))))
                            (let ()
                              (declare (not safe))
                              (_lp282495_ _rest282517_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _hd282518_
                                 'gx#prelude-context::t))
                              (begin
                                (if (let ((__tmp287339
                                           (##structure-ref
                                            (gxc#current-compile-optimizer-info)
                                            '2
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp287338
                                           (##structure-ref
                                            _hd282518_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (table-ref __tmp287339 __tmp287338 '#f))
                                    '#!void
                                    (begin
                                      (let ((__tmp287337
                                             (##structure-ref
                                              _hd282518_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_lp282495_ __tmp287337))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi _hd282518_))))
                                (let ()
                                  (declare (not safe))
                                  (_lp282495_ _rest282517_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _hd282518_
                                     'gx#module-import::t))
                                  (let ((__tmp287335
                                         (let ((__tmp287336
                                                (##direct-structure-ref
                                                 _hd282518_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp287336 _rest282517_))))
                                    (declare (not safe))
                                    (_lp282495_ __tmp287335))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _hd282518_
                                         'gx#module-export::t))
                                      (let ((__tmp287333
                                             (let ((__tmp287334
                                                    (##direct-structure-ref
                                                     _hd282518_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp287334
                                                     _rest282517_))))
                                        (declare (not safe))
                                        (_lp282495_ __tmp287333))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _hd282518_
                                             'gx#import-set::t))
                                          (let ((__tmp287331
                                                 (let ((__tmp287332
                                                        (##direct-structure-ref
                                                         _hd282518_
                                                         '1
                                                         gx#import-set::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp287332
                                                         _rest282517_))))
                                            (declare (not safe))
                                            (_lp282495_ __tmp287331))
                                          (error '"Unexpected module import"
                                                 _hd282518_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest282498282506_))
                  (let ((_hd282503282528_
                         (let ()
                           (declare (not safe))
                           (##car _rest282498282506_)))
                        (_tl282504282530_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest282498282506_))))
                    (let* ((_hd282533_ _hd282503282528_)
                           (_rest282535_ _tl282504282530_))
                      (declare (not safe))
                      (_K282502282525_ _rest282535_ _hd282533_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_ctx282471_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _ctx282471_
                    'gx#module-context::t))
                 (let ((__tmp287345
                        (##structure-ref
                         _ctx282471_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp287345)))
            '#!void
            (let* ((_ht282473_
                    (##structure-ref
                     (gxc#current-compile-optimizer-info)
                     '2
                     gxc#optimizer-info::t
                     '#f))
                   (_id282475_
                    (##structure-ref
                     _ctx282471_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_mod282477_
                    (let ()
                      (declare (not safe))
                      (table-ref _ht282473_ _id282475_ '#f))))
              (let ((_$e282480_ _mod282477_))
                (if _$e282480_
                    _$e282480_
                    (let* ((_mod282483_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-import-ssxi _ctx282471_)))
                           (_val282488_
                            (let ((_$e282485_ _mod282483_))
                              (if _$e282485_ _$e282485_ '#!void))))
                      (let ()
                        (declare (not safe))
                        (table-set! _ht282473_ _id282475_ _val282488_))
                      _val282488_)))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_ctx282469_)
        (if (##structure-ref _ctx282469_ '1 gx#expander-context::t '#f)
            (let ((__tmp287346
                   (##structure-ref
                    _ctx282469_
                    '1
                    gx#expander-context::t
                    '#f)))
              (declare (not safe))
              (gxc#optimizer-import-ssxi-by-id __tmp287346))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_id282446_)
        (letrec ((_catch-e282448_
                  (lambda (_exn282467_)
                    (if (gxc#current-compile-verbose)
                        (begin
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"Failed to load ssxi module for "
                             _id282446_))
                          (display-exception _exn282467_))
                        '#!void)
                    '#f))
                 (_import-e282449_
                  (lambda ()
                    (let* ((_str-id282452_
                            (string-append
                             (let ()
                               (declare (not safe))
                               (gxc#module-id->path-string _id282446_))
                             '".ssxi"))
                           (_artefact-path282460_
                            (let ((_odir282453282455_
                                   (gxc#current-compile-output-dir)))
                              (if _odir282453282455_
                                  (let ((_odir282458_ _odir282453282455_))
                                    (path-expand
                                     (string-append _str-id282452_ '".ss")
                                     _odir282458_))
                                  '#f)))
                           (_library-path282462_
                            (string->symbol
                             (string-append '":" _str-id282452_ '".ss")))
                           (_ssxi-path282464_
                            (if (and _artefact-path282460_
                                     (file-exists? _artefact-path282460_))
                                _artefact-path282460_
                                _library-path282462_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _ssxi-path282464_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _ssxi-path282464_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (with-catch _catch-e282448_ _import-e282449_)))))
    (define gxc#optimize-source
      (lambda (_stx282437_)
        (let () (declare (not safe)) (gxc#apply-collect-mutators _stx282437_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _stx282437_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _stx282437_))
        (let* ((_stx282439_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _stx282437_)))
               (_stx282441_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _stx282439_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _stx282441_))
          (let ((_stx282444_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _stx282441_))))
            (declare (not safe))
            (gxc#apply-optimize-call _stx282444_)))))
    (define gxc#&generate-ssxi
      (make-promise
       (lambda ()
         (let ((_tbl282434_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp287347 (force gxc#&generate-runtime-empty)))
             (declare (not safe))
             (hash-copy! _tbl282434_ __tmp287347))
           (let ()
             (declare (not safe))
             (table-set! _tbl282434_ '%#begin gxc#generate-runtime-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl282434_
              '%#begin-syntax
              gxc#generate-ssxi-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl282434_ '%#module gxc#generate-ssxi-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl282434_
              '%#define-values
              gxc#generate-ssxi-define-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl282434_ '%#call gxc#generate-ssxi-call%))
           _tbl282434_))))
    (define gxc#apply-generate-ssxi
      (lambda (_stx282417_ . _args282419_)
        (let ((__tmp287349
               (lambda ()
                 (declare (not safe))
                 (if (null? _args282419_)
                     (gxc#compile-e__0 _stx282417_)
                     (let ((_arg1282424_ (car _args282419_))
                           (_rest282426_ (cdr _args282419_)))
                       (if (null? _rest282426_)
                           (gxc#compile-e__1 _stx282417_ _arg1282424_)
                           (let ((_arg2282429_ (car _rest282426_))
                                 (_rest282431_ (cdr _rest282426_)))
                             (if (null? _rest282431_)
                                 (gxc#compile-e__2
                                  _stx282417_
                                  _arg1282424_
                                  _arg2282429_)
                                 (apply gxc#compile-e
                                        _stx282417_
                                        _arg1282424_
                                        _arg2282429_
                                        _rest282431_))))))))
              (__tmp287348 (force gxc#&generate-ssxi)))
          (declare (not safe))
          (call-with-parameters
           __tmp287349
           gxc#current-compile-methods
           __tmp287348))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_stx282378_)
        (let* ((_g282380282390_
                (lambda (_g282381282387_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g282381282387_))))
               (_g282379282414_
                (lambda (_g282381282393_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g282381282393_))
                      (let ((_e282385282395_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g282381282393_))))
                        (let ((_hd282384282398_
                               (let ()
                                 (declare (not safe))
                                 (##car _e282385282395_)))
                              (_tl282383282400_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e282385282395_))))
                          ((lambda (_L282403_)
                             (let ((__tmp287352
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _stx282378_))))
                                   (__tmp287350
                                    (let ((__tmp287351
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp287351 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp287352
                                gx#current-expander-phi
                                __tmp287350)))
                           _tl282383282400_)))
                      (let ()
                        (declare (not safe))
                        (_g282380282390_ _g282381282393_))))))
          (declare (not safe))
          (_g282379282414_ _stx282378_))))
    (define gxc#generate-ssxi-module%
      (lambda (_stx282318_)
        (let* ((_g282320282334_
                (lambda (_g282321282331_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g282321282331_))))
               (_g282319282375_
                (lambda (_g282321282337_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g282321282337_))
                      (let ((_e282326282339_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g282321282337_))))
                        (let ((_hd282325282342_
                               (let ()
                                 (declare (not safe))
                                 (##car _e282326282339_)))
                              (_tl282324282344_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e282326282339_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl282324282344_))
                              (let ((_e282329282347_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl282324282344_))))
                                (let ((_hd282328282350_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e282329282347_)))
                                      (_tl282327282352_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e282329282347_))))
                                  ((lambda (_L282355_ _L282356_)
                                     (let* ((_ctx282369_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L282356_)))
                                            (_code282371_
                                             (##structure-ref
                                              _ctx282369_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp287353
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _code282371_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp287353
                                          gx#current-expander-context
                                          _ctx282369_))))
                                   _tl282327282352_
                                   _hd282328282350_)))
                              (let ()
                                (declare (not safe))
                                (_g282320282334_ _g282321282337_)))))
                      (let ()
                        (declare (not safe))
                        (_g282320282334_ _g282321282337_))))))
          (declare (not safe))
          (_g282319282375_ _stx282318_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_stx282128_)
        (letrec ((_generate-e282130_
                  (lambda (_id282307_)
                    (let* ((_sym282309_
                            (if (let ((__tmp287354
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp287354))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _id282307_))
                                '#f))
                           (_$e282311_
                            (if _sym282309_
                                (let ()
                                  (declare (not safe))
                                  (gxc#optimizer-lookup-type _sym282309_))
                                '#f)))
                      (if _$e282311_
                          ((lambda (_type282314_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"generate typedecl " _sym282309_))
                             (let* ((_typedecl282316_
                                     (let ((__method287323
                                            (let ()
                                              (declare (not safe))
                                              (method-ref
                                               _type282314_
                                               'typedecl))))
                                       (if __method287323
                                           (__method287323 _type282314_)
                                           (error '"Missing method"
                                                  _type282314_
                                                  'typedecl))))
                                    (__tmp287355
                                     (let ((__tmp287356
                                            (let ()
                                              (declare (not safe))
                                              (cons _typedecl282316_ '()))))
                                       (declare (not safe))
                                       (cons _sym282309_ __tmp287356))))
                               (declare (not safe))
                               (cons 'declare-type __tmp287355)))
                           _$e282311_)
                          '(begin))))))
          (let* ((___stx287021287022_ _stx282128_)
                 (_g282133282171_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx287021287022_)))))
            (let ((___kont287023287024_
                   (lambda (_L282289_)
                     (let ()
                       (declare (not safe))
                       (_generate-e282130_ _L282289_))))
                  (___kont287025287026_
                   (lambda (_L282224_)
                     (let ((_types282250_
                            (map _generate-e282130_
                                 (let ((__tmp287357
                                        (lambda (_g282242282245_
                                                 _g282243282247_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g282242282245_
                                                  _g282243282247_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp287357 '() _L282224_)))))
                       (declare (not safe))
                       (cons 'begin _types282250_)))))
              (let ((___match287076287077_
                     (lambda (_e282151282176_
                              _hd282150282179_
                              _tl282149282181_
                              _e282154282184_
                              _hd282153282187_
                              _tl282152282189_
                              ___splice287027287028_
                              _target282155282192_
                              _tl282157282194_)
                       (letrec ((_loop282158282197_
                                 (lambda (_hd282156282200_ _id282162282202_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd282156282200_))
                                       (let ((_e282159282205_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd282156282200_))))
                                         (let ((_lp-tl282161282210_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e282159282205_)))
                                               (_lp-hd282160282208_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e282159282205_))))
                                           (let ((__tmp287358
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd282160282208_
                                                          _id282162282202_))))
                                             (declare (not safe))
                                             (_loop282158282197_
                                              _lp-tl282161282210_
                                              __tmp287358))))
                                       (let ((_id282163282213_
                                              (reverse _id282162282202_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl282152282189_))
                                             (let ((_e282166282216_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl282152282189_))))
                                               (let ((_tl282164282221_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e282166282216_)))
                                                     (_hd282165282219_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e282166282216_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl282164282221_))
                                                     (___kont287025287026_
                                                      _id282163282213_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g282133282171_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g282133282171_))))))))
                         (let ()
                           (declare (not safe))
                           (_loop282158282197_ _target282155282192_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx287021287022_))
                    (let ((_e282138282257_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx287021287022_))))
                      (let ((_tl282136282262_
                             (let ()
                               (declare (not safe))
                               (##cdr _e282138282257_)))
                            (_hd282137282260_
                             (let ()
                               (declare (not safe))
                               (##car _e282138282257_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl282136282262_))
                            (let ((_e282141282265_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl282136282262_))))
                              (let ((_tl282139282270_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e282141282265_)))
                                    (_hd282140282268_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e282141282265_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd282140282268_))
                                    (let ((_e282144282273_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd282140282268_))))
                                      (let ((_tl282142282278_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e282144282273_)))
                                            (_hd282143282276_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e282144282273_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl282142282278_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl282139282270_))
                                                (let ((_e282147282281_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl282139282270_))))
                                                  (let ((_tl282145282286_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e282147282281_)))
                                                        (_hd282146282284_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e282147282281_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl282145282286_))
                                                        (___kont287023287024_
                                                         _hd282143282276_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _hd282140282268_))
                                                            (let ((___splice287027287028_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _hd282140282268_ '0))))
                      (let ((_tl282157282194_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice287027287028_ '1)))
                            (_target282155282192_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice287027287028_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl282157282194_))
                            (___match287076287077_
                             _e282138282257_
                             _hd282137282260_
                             _tl282136282262_
                             _e282141282265_
                             _hd282140282268_
                             _tl282139282270_
                             ___splice287027287028_
                             _target282155282192_
                             _tl282157282194_)
                            (let () (declare (not safe)) (_g282133282171_)))))
                    (let () (declare (not safe)) (_g282133282171_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _hd282140282268_))
                                                    (let ((___splice287027287028_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _hd282140282268_
                                                              '0))))
                                                      (let ((_tl282157282194_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice287027287028_ '1)))
                    (_target282155282192_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice287027287028_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl282157282194_))
                    (___match287076287077_
                     _e282138282257_
                     _hd282137282260_
                     _tl282136282262_
                     _e282141282265_
                     _hd282140282268_
                     _tl282139282270_
                     ___splice287027287028_
                     _target282155282192_
                     _tl282157282194_)
                    (let () (declare (not safe)) (_g282133282171_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g282133282171_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _hd282140282268_))
                                                (let ((___splice287027287028_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _hd282140282268_
                                                          '0))))
                                                  (let ((_tl282157282194_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice287027287028_
                                                            '1)))
                                                        (_target282155282192_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice287027287028_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl282157282194_))
                                                        (___match287076287077_
                                                         _e282138282257_
                                                         _hd282137282260_
                                                         _tl282136282262_
                                                         _e282141282265_
                                                         _hd282140282268_
                                                         _tl282139282270_
                                                         ___splice287027287028_
                                                         _target282155282192_
                                                         _tl282157282194_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g282133282171_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g282133282171_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd282140282268_))
                                        (let ((___splice287027287028_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd282140282268_
                                                  '0))))
                                          (let ((_tl282157282194_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice287027287028_
                                                    '1)))
                                                (_target282155282192_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice287027287028_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl282157282194_))
                                                (___match287076287077_
                                                 _e282138282257_
                                                 _hd282137282260_
                                                 _tl282136282262_
                                                 _e282141282265_
                                                 _hd282140282268_
                                                 _tl282139282270_
                                                 ___splice287027287028_
                                                 _target282155282192_
                                                 _tl282157282194_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g282133282171_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g282133282171_))))))
                            (let () (declare (not safe)) (_g282133282171_)))))
                    (let () (declare (not safe)) (_g282133282171_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_stx281682_)
        (let* ((___stx287079287080_ _stx281682_)
               (_g281686281788_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx287079287080_)))))
          (let ((___kont287081287082_
                 (lambda (_L282078_ _L282079_ _L282080_ _L282081_ _L282082_)
                   (let ((__tmp287359
                          (let ((__tmp287366
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L282081_)))
                                (__tmp287360
                                 (let ((__tmp287365
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L282080_)))
                                       (__tmp287361
                                        (let ((__tmp287364
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L282079_)))
                                              (__tmp287362
                                               (let ((__tmp287363
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L282078_))))
                                                 (declare (not safe))
                                                 (cons __tmp287363 '()))))
                                          (declare (not safe))
                                          (cons __tmp287364 __tmp287362))))
                                   (declare (not safe))
                                   (cons __tmp287365 __tmp287361))))
                            (declare (not safe))
                            (cons __tmp287366 __tmp287360))))
                     (declare (not safe))
                     (cons 'declare-method __tmp287359))))
                (___kont287083287084_
                 (lambda (_L281904_ _L281905_ _L281906_ _L281907_)
                   (let ((__tmp287367
                          (let ((__tmp287373
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L281906_)))
                                (__tmp287368
                                 (let ((__tmp287372
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L281905_)))
                                       (__tmp287369
                                        (let ((__tmp287371
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L281904_)))
                                              (__tmp287370
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '#f '()))))
                                          (declare (not safe))
                                          (cons __tmp287371 __tmp287370))))
                                   (declare (not safe))
                                   (cons __tmp287372 __tmp287369))))
                            (declare (not safe))
                            (cons __tmp287373 __tmp287368))))
                     (declare (not safe))
                     (cons 'declare-method __tmp287367))))
                (___kont287085287086_ (lambda () '(begin))))
            (let ((___match287214287215_
                   (lambda (_e281695281950_
                            _hd281694281953_
                            _tl281693281955_
                            _e281698281958_
                            _hd281697281961_
                            _tl281696281963_
                            _e281701281966_
                            _hd281700281969_
                            _tl281699281971_
                            _e281704281974_
                            _hd281703281977_
                            _tl281702281979_
                            _e281707281982_
                            _hd281706281985_
                            _tl281705281987_
                            _e281710281990_
                            _hd281709281993_
                            _tl281708281995_
                            _e281713281998_
                            _hd281712282001_
                            _tl281711282003_
                            _e281716282006_
                            _hd281715282009_
                            _tl281714282011_
                            _e281719282014_
                            _hd281718282017_
                            _tl281717282019_
                            _e281722282022_
                            _hd281721282025_
                            _tl281720282027_
                            _e281725282030_
                            _hd281724282033_
                            _tl281723282035_
                            _e281728282038_
                            _hd281727282041_
                            _tl281726282043_
                            _e281731282046_
                            _hd281730282049_
                            _tl281729282051_
                            _e281734282054_
                            _hd281733282057_
                            _tl281732282059_
                            _e281737282062_
                            _hd281736282065_
                            _tl281735282067_
                            _e281740282070_
                            _hd281739282073_
                            _tl281738282075_)
                     (let ((_L282078_ _hd281739282073_)
                           (_L282079_ _hd281730282049_)
                           (_L282080_ _hd281721282025_)
                           (_L282081_ _hd281712282001_)
                           (_L282082_ _hd281703281977_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L282082_
                              'bind-method!))
                           (___kont287081287082_
                            _L282078_
                            _L282079_
                            _L282080_
                            _L282081_
                            _L282082_)
                           (___kont287085287086_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx287079287080_))
                  (let ((_e281695281950_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx287079287080_))))
                    (let ((_tl281693281955_
                           (let ()
                             (declare (not safe))
                             (##cdr _e281695281950_)))
                          (_hd281694281953_
                           (let ()
                             (declare (not safe))
                             (##car _e281695281950_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl281693281955_))
                          (let ((_e281698281958_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl281693281955_))))
                            (let ((_tl281696281963_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e281698281958_)))
                                  (_hd281697281961_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e281698281958_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd281697281961_))
                                  (let ((_e281701281966_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd281697281961_))))
                                    (let ((_tl281699281971_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e281701281966_)))
                                          (_hd281700281969_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e281701281966_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd281700281969_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd281700281969_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl281699281971_))
                                                  (let ((_e281704281974_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl281699281971_))))
                                                    (let ((_tl281702281979_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e281704281974_)))
                                                          (_hd281703281977_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e281704281974_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl281702281979_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl281696281963_))
                      (let ((_e281707281982_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl281696281963_))))
                        (let ((_tl281705281987_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e281707281982_)))
                              (_hd281706281985_
                               (let ()
                                 (declare (not safe))
                                 (##car _e281707281982_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd281706281985_))
                              (let ((_e281710281990_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd281706281985_))))
                                (let ((_tl281708281995_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e281710281990_)))
                                      (_hd281709281993_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e281710281990_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd281709281993_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd281709281993_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl281708281995_))
                                              (let ((_e281713281998_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl281708281995_))))
                                                (let ((_tl281711282003_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e281713281998_)))
                                                      (_hd281712282001_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e281713281998_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl281711282003_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl281705281987_))
                                                          (let ((_e281716282006_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl281705281987_))))
                    (let ((_tl281714282011_
                           (let ()
                             (declare (not safe))
                             (##cdr _e281716282006_)))
                          (_hd281715282009_
                           (let ()
                             (declare (not safe))
                             (##car _e281716282006_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd281715282009_))
                          (let ((_e281719282014_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd281715282009_))))
                            (let ((_tl281717282019_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e281719282014_)))
                                  (_hd281718282017_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e281719282014_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd281718282017_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd281718282017_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl281717282019_))
                                          (let ((_e281722282022_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl281717282019_))))
                                            (let ((_tl281720282027_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e281722282022_)))
                                                  (_hd281721282025_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e281722282022_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl281720282027_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl281714282011_))
                                                      (let ((_e281725282030_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl281714282011_))))
                (let ((_tl281723282035_
                       (let () (declare (not safe)) (##cdr _e281725282030_)))
                      (_hd281724282033_
                       (let () (declare (not safe)) (##car _e281725282030_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd281724282033_))
                      (let ((_e281728282038_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd281724282033_))))
                        (let ((_tl281726282043_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e281728282038_)))
                              (_hd281727282041_
                               (let ()
                                 (declare (not safe))
                                 (##car _e281728282038_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd281727282041_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd281727282041_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl281726282043_))
                                      (let ((_e281731282046_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl281726282043_))))
                                        (let ((_tl281729282051_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e281731282046_)))
                                              (_hd281730282049_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e281731282046_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl281729282051_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl281723282035_))
                                                  (let ((_e281734282054_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl281723282035_))))
                                                    (let ((_tl281732282059_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e281734282054_)))
                                                          (_hd281733282057_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e281734282054_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd281733282057_))
                                                          (let ((_e281737282062_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd281733282057_))))
                    (let ((_tl281735282067_
                           (let ()
                             (declare (not safe))
                             (##cdr _e281737282062_)))
                          (_hd281736282065_
                           (let ()
                             (declare (not safe))
                             (##car _e281737282062_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd281736282065_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd281736282065_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl281735282067_))
                                  (let ((_e281740282070_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl281735282067_))))
                                    (let ((_tl281738282075_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e281740282070_)))
                                          (_hd281739282073_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e281740282070_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl281738282075_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl281732282059_))
                                              (___match287214287215_
                                               _e281695281950_
                                               _hd281694281953_
                                               _tl281693281955_
                                               _e281698281958_
                                               _hd281697281961_
                                               _tl281696281963_
                                               _e281701281966_
                                               _hd281700281969_
                                               _tl281699281971_
                                               _e281704281974_
                                               _hd281703281977_
                                               _tl281702281979_
                                               _e281707281982_
                                               _hd281706281985_
                                               _tl281705281987_
                                               _e281710281990_
                                               _hd281709281993_
                                               _tl281708281995_
                                               _e281713281998_
                                               _hd281712282001_
                                               _tl281711282003_
                                               _e281716282006_
                                               _hd281715282009_
                                               _tl281714282011_
                                               _e281719282014_
                                               _hd281718282017_
                                               _tl281717282019_
                                               _e281722282022_
                                               _hd281721282025_
                                               _tl281720282027_
                                               _e281725282030_
                                               _hd281724282033_
                                               _tl281723282035_
                                               _e281728282038_
                                               _hd281727282041_
                                               _tl281726282043_
                                               _e281731282046_
                                               _hd281730282049_
                                               _tl281729282051_
                                               _e281734282054_
                                               _hd281733282057_
                                               _tl281732282059_
                                               _e281737282062_
                                               _hd281736282065_
                                               _tl281735282067_
                                               _e281740282070_
                                               _hd281739282073_
                                               _tl281738282075_)
                                              (___kont287085287086_))
                                          (___kont287085287086_))))
                                  (___kont287085287086_))
                              (___kont287085287086_))
                          (___kont287085287086_))))
                  (___kont287085287086_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl281723282035_))
                                                      (if (let ((__tmp287374
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp287374 'bind-method!))
                  (let ((_L281904_ _hd281730282049_)
                        (_L281905_ _hd281721282025_)
                        (_L281906_ _hd281712282001_)
                        (_L281907_ _hd281703281977_))
                    (___kont287083287084_
                     _L281904_
                     _L281905_
                     _L281906_
                     _L281907_))
                  (___kont287085287086_))
              (___kont287085287086_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont287085287086_))))
                                      (___kont287085287086_))
                                  (___kont287085287086_))
                              (___kont287085287086_))))
                      (___kont287085287086_))))
              (___kont287085287086_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont287085287086_))))
                                          (___kont287085287086_))
                                      (___kont287085287086_))
                                  (___kont287085287086_))))
                          (___kont287085287086_))))
                  (___kont287085287086_))
              (___kont287085287086_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont287085287086_))
                                          (___kont287085287086_))
                                      (___kont287085287086_))))
                              (___kont287085287086_))))
                      (___kont287085287086_))
                  (___kont287085287086_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont287085287086_))
                                              (___kont287085287086_))
                                          (___kont287085287086_))))
                                  (___kont287085287086_))))
                          (___kont287085287086_))))
                  (___kont287085287086_)))))))
    (define gxc#!alias::typedecl
      (lambda (_self281658_)
        (let* ((_self281659281665_ _self281658_)
               (_E281661281669_
                (lambda () (error '"No clause matching" _self281659281665_)))
               (_K281662281674_
                (lambda (_alias-id281672_)
                  (let ((__tmp287375
                         (let ()
                           (declare (not safe))
                           (cons _alias-id281672_ '()))))
                    (declare (not safe))
                    (cons '@alias __tmp287375)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self281659281665_ 'gxc#!alias::t))
              (let* ((_e281663281677_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281659281665_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_alias-id281680_ _e281663281677_))
                (declare (not safe))
                (_K281662281674_ _alias-id281680_))
              (let () (declare (not safe)) (_E281661281669_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_self281456_)
        (let* ((_self281457281471_ _self281456_)
               (_E281459281475_
                (lambda () (error '"No clause matching" _self281457281471_)))
               (_K281460281488_
                (lambda (_methods281478_
                         _final?281479_
                         _struct?281480_
                         _constructor281481_
                         _fields281482_
                         _slots281483_
                         _precendence-list281484_
                         _super281485_
                         _id281486_)
                  (let ((__tmp287376
                         (let ((__tmp287377
                                (let ((__tmp287378
                                       (let ((__tmp287379
                                              (let ((__tmp287380
                                                     (let ((__tmp287381
                                                            (let ((__tmp287382
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp287383
                                  (let ((__tmp287384
                                         (let ((__tmp287385
                                                (if _methods281478_
                                                    (let ()
                                                      (declare (not safe))
                                                      (table->list
                                                       _methods281478_))
                                                    '#f)))
                                           (declare (not safe))
                                           (cons __tmp287385 '()))))
                                    (declare (not safe))
                                    (cons _final?281479_ __tmp287384))))
                             (declare (not safe))
                             (cons _struct?281480_ __tmp287383))))
                      (declare (not safe))
                      (cons _constructor281481_ __tmp287382))))
               (declare (not safe))
               (cons _fields281482_ __tmp287381))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _slots281483_
                                                      __tmp287380))))
                                         (declare (not safe))
                                         (cons _precendence-list281484_
                                               __tmp287379))))
                                  (declare (not safe))
                                  (cons _super281485_ __tmp287378))))
                           (declare (not safe))
                           (cons _id281486_ __tmp287377))))
                    (declare (not safe))
                    (cons '@class __tmp287376)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self281457281471_ 'gxc#!class::t))
              (let* ((_e281461281491_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281457281471_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_id281494_ _e281461281491_)
                     (_e281462281496_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281457281471_
                         '2
                         gxc#!class::t
                         '#f)))
                     (_super281499_ _e281462281496_)
                     (_e281463281501_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281457281471_
                         '3
                         gxc#!class::t
                         '#f)))
                     (_precendence-list281504_ _e281463281501_)
                     (_e281464281506_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281457281471_
                         '4
                         gxc#!class::t
                         '#f)))
                     (_slots281509_ _e281464281506_)
                     (_e281465281511_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281457281471_
                         '5
                         gxc#!class::t
                         '#f)))
                     (_fields281514_ _e281465281511_)
                     (_e281466281516_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281457281471_
                         '6
                         gxc#!class::t
                         '#f)))
                     (_constructor281519_ _e281466281516_)
                     (_e281467281521_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281457281471_
                         '7
                         gxc#!class::t
                         '#f)))
                     (_struct?281524_ _e281467281521_)
                     (_e281468281526_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281457281471_
                         '8
                         gxc#!class::t
                         '#f)))
                     (_final?281529_ _e281468281526_)
                     (_e281469281531_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281457281471_
                         '9
                         gxc#!class::t
                         '#f)))
                     (_methods281534_ _e281469281531_))
                (declare (not safe))
                (_K281460281488_
                 _methods281534_
                 _final?281529_
                 _struct?281524_
                 _constructor281519_
                 _fields281514_
                 _slots281509_
                 _precendence-list281504_
                 _super281499_
                 _id281494_))
              (let () (declare (not safe)) (_E281459281475_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_self281310_)
        (let* ((_self281311281317_ _self281310_)
               (_E281313281321_
                (lambda () (error '"No clause matching" _self281311281317_)))
               (_K281314281326_
                (lambda (_klass-id281324_)
                  (let ((__tmp287386
                         (let ()
                           (declare (not safe))
                           (cons _klass-id281324_ '()))))
                    (declare (not safe))
                    (cons '@predicate __tmp287386)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self281311281317_
                 'gxc#!predicate::t))
              (let* ((_e281315281329_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281311281317_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id281332_ _e281315281329_))
                (declare (not safe))
                (_K281314281326_ _klass-id281332_))
              (let () (declare (not safe)) (_E281313281321_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!predicate::t 'typedecl gxc#!predicate::typedecl '#f))
    (define gxc#!constructor::typedecl
      (lambda (_self281164_)
        (let* ((_self281165281171_ _self281164_)
               (_E281167281175_
                (lambda () (error '"No clause matching" _self281165281171_)))
               (_K281168281180_
                (lambda (_klass-id281178_)
                  (let ((__tmp287387
                         (let ()
                           (declare (not safe))
                           (cons _klass-id281178_ '()))))
                    (declare (not safe))
                    (cons '@constructor __tmp287387)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self281165281171_
                 'gxc#!constructor::t))
              (let* ((_e281169281183_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281165281171_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id281186_ _e281169281183_))
                (declare (not safe))
                (_K281168281180_ _klass-id281186_))
              (let () (declare (not safe)) (_E281167281175_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_self281004_)
        (let* ((_self281005281013_ _self281004_)
               (_E281007281017_
                (lambda () (error '"No clause matching" _self281005281013_)))
               (_K281008281024_
                (lambda (_checked?281020_ _slot281021_ _klass-id281022_)
                  (let ((__tmp287388
                         (let ((__tmp287389
                                (let ((__tmp287390
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?281020_ '()))))
                                  (declare (not safe))
                                  (cons _slot281021_ __tmp287390))))
                           (declare (not safe))
                           (cons _klass-id281022_ __tmp287389))))
                    (declare (not safe))
                    (cons '@accessor __tmp287388)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self281005281013_
                 'gxc#!accessor::t))
              (let* ((_e281009281027_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281005281013_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id281030_ _e281009281027_)
                     (_e281010281032_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281005281013_
                         '2
                         gxc#!accessor::t
                         '#f)))
                     (_slot281035_ _e281010281032_)
                     (_e281011281037_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281005281013_
                         '3
                         gxc#!accessor::t
                         '#f)))
                     (_checked?281040_ _e281011281037_))
                (declare (not safe))
                (_K281008281024_
                 _checked?281040_
                 _slot281035_
                 _klass-id281030_))
              (let () (declare (not safe)) (_E281007281017_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_self280844_)
        (let* ((_self280845280853_ _self280844_)
               (_E280847280857_
                (lambda () (error '"No clause matching" _self280845280853_)))
               (_K280848280864_
                (lambda (_checked?280860_ _slot280861_ _klass-id280862_)
                  (let ((__tmp287391
                         (let ((__tmp287392
                                (let ((__tmp287393
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?280860_ '()))))
                                  (declare (not safe))
                                  (cons _slot280861_ __tmp287393))))
                           (declare (not safe))
                           (cons _klass-id280862_ __tmp287392))))
                    (declare (not safe))
                    (cons '@mutator __tmp287391)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self280845280853_ 'gxc#!mutator::t))
              (let* ((_e280849280867_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280845280853_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id280870_ _e280849280867_)
                     (_e280850280872_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280845280853_
                         '2
                         gxc#!mutator::t
                         '#f)))
                     (_slot280875_ _e280850280872_)
                     (_e280851280877_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280845280853_
                         '3
                         gxc#!mutator::t
                         '#f)))
                     (_checked?280880_ _e280851280877_))
                (declare (not safe))
                (_K280848280864_
                 _checked?280880_
                 _slot280875_
                 _klass-id280870_))
              (let () (declare (not safe)) (_E280847280857_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!lambda::typedecl
      (lambda (_self280670_)
        (let* ((_self280671280681_ _self280670_)
               (_E280673280685_
                (lambda () (error '"No clause matching" _self280671280681_)))
               (_K280674280696_
                (lambda (_typedecl280688_
                         _inline280689_
                         _dispatch280690_
                         _arity280691_)
                  (if _inline280689_
                      (let ((_$e280693_ _typedecl280688_))
                        (if _$e280693_
                            _$e280693_
                            (error '"Cannot generate typedecl for inline rules")))
                      (let ((__tmp287394
                             (let ((__tmp287395
                                    (let ()
                                      (declare (not safe))
                                      (cons _dispatch280690_ '()))))
                               (declare (not safe))
                               (cons _arity280691_ __tmp287395))))
                        (declare (not safe))
                        (cons '@lambda __tmp287394))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self280671280681_ 'gxc#!lambda::t))
              (let* ((_e280675280699_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280671280681_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e280676280702_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280671280681_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity280705_ _e280676280702_)
                     (_e280677280707_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280671280681_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch280710_ _e280677280707_)
                     (_e280678280712_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280671280681_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline280715_ _e280678280712_)
                     (_e280679280717_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280671280681_
                         '5
                         gxc#!lambda::t
                         '#f)))
                     (_typedecl280720_ _e280679280717_))
                (declare (not safe))
                (_K280674280696_
                 _typedecl280720_
                 _inline280715_
                 _dispatch280710_
                 _arity280705_))
              (let () (declare (not safe)) (_E280673280685_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_self280481_)
        (letrec ((_clause-e280483_
                  (lambda (_clause280513_)
                    (let* ((_clause280514280522_ _clause280513_)
                           (_E280516280526_
                            (lambda ()
                              (error '"No clause matching"
                                     _clause280514280522_)))
                           (_K280517280532_
                            (lambda (_dispatch280529_ _arity280530_)
                              (let ((__tmp287396
                                     (let ()
                                       (declare (not safe))
                                       (cons _dispatch280529_ '()))))
                                (declare (not safe))
                                (cons _arity280530_ __tmp287396)))))
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _clause280514280522_
                             'gxc#!lambda::t))
                          (let* ((_e280518280535_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause280514280522_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                                 (_e280519280538_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause280514280522_
                                     '2
                                     gxc#!lambda::t
                                     '#f)))
                                 (_arity280541_ _e280519280538_)
                                 (_e280520280543_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause280514280522_
                                     '3
                                     gxc#!lambda::t
                                     '#f)))
                                 (_dispatch280546_ _e280520280543_))
                            (declare (not safe))
                            (_K280517280532_ _dispatch280546_ _arity280541_))
                          (let () (declare (not safe)) (_E280516280526_)))))))
          (let* ((_self280484280491_ _self280481_)
                 (_E280486280495_
                  (lambda () (error '"No clause matching" _self280484280491_)))
                 (_K280487280502_
                  (lambda (_clauses280498_)
                    (let ((_clauses280500_
                           (map _clause-e280483_ _clauses280498_)))
                      (declare (not safe))
                      (cons '@case-lambda _clauses280500_)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of?
                   _self280484280491_
                   'gxc#!case-lambda::t))
                (let* ((_e280488280505_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self280484280491_
                           '1
                           gxc#!type::t
                           '#f)))
                       (_e280489280508_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self280484280491_
                           '2
                           gxc#!case-lambda::t
                           '#f)))
                       (_clauses280511_ _e280489280508_))
                  (declare (not safe))
                  (_K280487280502_ _clauses280511_))
                (let () (declare (not safe)) (_E280486280495_)))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_self280324_)
        (let* ((_self280325280333_ _self280324_)
               (_E280327280337_
                (lambda () (error '"No clause matching" _self280325280333_)))
               (_K280328280343_
                (lambda (_dispatch280340_ _table280341_)
                  (let ((__tmp287397
                         (let ((__tmp287398
                                (let ()
                                  (declare (not safe))
                                  (cons _dispatch280340_ '()))))
                           (declare (not safe))
                           (cons _table280341_ __tmp287398))))
                    (declare (not safe))
                    (cons '@kw-lambda __tmp287397)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self280325280333_
                 'gxc#!kw-lambda::t))
              (let* ((_e280329280346_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280325280333_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e280330280349_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280325280333_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table280352_ _e280330280349_)
                     (_e280331280354_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280325280333_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch280357_ _e280331280354_))
                (declare (not safe))
                (_K280328280343_ _dispatch280357_ _table280352_))
              (let () (declare (not safe)) (_E280327280337_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!kw-lambda::t 'typedecl gxc#!kw-lambda::typedecl '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_self280167_)
        (let* ((_self280168280176_ _self280167_)
               (_E280170280180_
                (lambda () (error '"No clause matching" _self280168280176_)))
               (_K280171280186_
                (lambda (_main280183_ _keys280184_)
                  (let ((__tmp287399
                         (let ((__tmp287400
                                (let ()
                                  (declare (not safe))
                                  (cons _main280183_ '()))))
                           (declare (not safe))
                           (cons _keys280184_ __tmp287400))))
                    (declare (not safe))
                    (cons '@kw-lambda-dispatch __tmp287399)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self280168280176_
                 'gxc#!kw-lambda-primary::t))
              (let* ((_e280172280189_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280168280176_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e280173280192_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280168280176_
                         '2
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_keys280195_ _e280173280192_)
                     (_e280174280197_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280168280176_
                         '3
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_main280200_ _e280174280197_))
                (declare (not safe))
                (_K280171280186_ _main280200_ _keys280195_))
              (let () (declare (not safe)) (_E280170280180_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))))
