(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1707610220)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (gxc#current-compile-optimizer-info)
            '#!void
            (gxc#current-compile-optimizer-info
             (let ((__obj287354
                    (let ()
                      (declare (not safe))
                      (##structure gxc#optimizer-info::t '#f '#f '#f))))
               (gxc#optimizer-info:::init! __obj287354)
               __obj287354)))))
    (define gxc#optimize!
      (lambda (_ctx282579_)
        (let ((__tmp287358
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _ctx282579_))
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-builtin-ssxi))
                 (let ((__tmp287360
                        (##structure-ref
                         (gxc#current-compile-optimizer-info)
                         '2
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp287359
                        (##structure-ref
                         _ctx282579_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (table-set! __tmp287360 __tmp287359 '#t))
                 (let ((_code282582_
                        (let ((__tmp287361
                               (##structure-ref
                                _ctx282579_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp287361))))
                   (##structure-set!
                    _ctx282579_
                    _code282582_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp287357
               (let () (declare (not safe)) (make-table 'test: eq?)))
              (__tmp287356
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (call-with-parameters
           __tmp287358
           gxc#current-compile-mutators
           __tmp287357
           gxc#current-compile-local-type
           __tmp287356))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda ()
        (let ()
          (declare (not safe))
          (gxc#optimizer-import-ssxi-by-id 'gerbil/builtin))
        (let ((__tmp287362
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-set! __tmp287362 'gerbil/builtin '#t))))
    (define gxc#optimizer-load-ssxi-deps
      (lambda (_ctx282523_)
        (letrec* ((_deps282525_
                   (let* ((_imports282569_
                           (##structure-ref
                            _ctx282523_
                            '8
                            gx#module-context::t
                            '#f))
                          (_$e282571_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _ctx282523_))))
                     (if _$e282571_
                         ((lambda (_g282573282575_)
                            (let ()
                              (declare (not safe))
                              (cons _g282573282575_ _imports282569_)))
                          _$e282571_)
                         _imports282569_))))
          (let _lp282527_ ((_rest282529_ _deps282525_))
            (let* ((_rest282530282538_ _rest282529_)
                   (_else282532282546_ (lambda () '#!void))
                   (_K282534282557_
                    (lambda (_rest282549_ _hd282550_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _hd282550_
                             'gx#module-context::t))
                          (begin
                            (if (let ((__tmp287376
                                       (##structure-ref
                                        (gxc#current-compile-optimizer-info)
                                        '2
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp287375
                                       (##structure-ref
                                        _hd282550_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (table-ref __tmp287376 __tmp287375 '#f))
                                '#!void
                                (begin
                                  (let ((_$e282552_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _hd282550_))))
                                    (if _$e282552_
                                        ((lambda (_pre282555_)
                                           (let ((__tmp287373
                                                  (let ((__tmp287374
                                                         (##structure-ref
                                                          _hd282550_
                                                          '8
                                                          gx#module-context::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (cons _pre282555_
                                                          __tmp287374))))
                                             (declare (not safe))
                                             (_lp282527_ __tmp287373)))
                                         _$e282552_)
                                        (let ((__tmp287372
                                               (##structure-ref
                                                _hd282550_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                          (declare (not safe))
                                          (_lp282527_ __tmp287372))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _hd282550_))))
                            (let ()
                              (declare (not safe))
                              (_lp282527_ _rest282549_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _hd282550_
                                 'gx#prelude-context::t))
                              (begin
                                (if (let ((__tmp287371
                                           (##structure-ref
                                            (gxc#current-compile-optimizer-info)
                                            '2
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp287370
                                           (##structure-ref
                                            _hd282550_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (table-ref __tmp287371 __tmp287370 '#f))
                                    '#!void
                                    (begin
                                      (let ((__tmp287369
                                             (##structure-ref
                                              _hd282550_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_lp282527_ __tmp287369))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi _hd282550_))))
                                (let ()
                                  (declare (not safe))
                                  (_lp282527_ _rest282549_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _hd282550_
                                     'gx#module-import::t))
                                  (let ((__tmp287367
                                         (let ((__tmp287368
                                                (##direct-structure-ref
                                                 _hd282550_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp287368 _rest282549_))))
                                    (declare (not safe))
                                    (_lp282527_ __tmp287367))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _hd282550_
                                         'gx#module-export::t))
                                      (let ((__tmp287365
                                             (let ((__tmp287366
                                                    (##direct-structure-ref
                                                     _hd282550_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp287366
                                                     _rest282549_))))
                                        (declare (not safe))
                                        (_lp282527_ __tmp287365))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _hd282550_
                                             'gx#import-set::t))
                                          (let ((__tmp287363
                                                 (let ((__tmp287364
                                                        (##direct-structure-ref
                                                         _hd282550_
                                                         '1
                                                         gx#import-set::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp287364
                                                         _rest282549_))))
                                            (declare (not safe))
                                            (_lp282527_ __tmp287363))
                                          (error '"Unexpected module import"
                                                 _hd282550_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest282530282538_))
                  (let ((_hd282535282560_
                         (let ()
                           (declare (not safe))
                           (##car _rest282530282538_)))
                        (_tl282536282562_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest282530282538_))))
                    (let* ((_hd282565_ _hd282535282560_)
                           (_rest282567_ _tl282536282562_))
                      (declare (not safe))
                      (_K282534282557_ _rest282567_ _hd282565_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_ctx282503_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _ctx282503_
                    'gx#module-context::t))
                 (let ((__tmp287377
                        (##structure-ref
                         _ctx282503_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp287377)))
            '#!void
            (let* ((_ht282505_
                    (##structure-ref
                     (gxc#current-compile-optimizer-info)
                     '2
                     gxc#optimizer-info::t
                     '#f))
                   (_id282507_
                    (##structure-ref
                     _ctx282503_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_mod282509_
                    (let ()
                      (declare (not safe))
                      (table-ref _ht282505_ _id282507_ '#f))))
              (let ((_$e282512_ _mod282509_))
                (if _$e282512_
                    _$e282512_
                    (let* ((_mod282515_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-import-ssxi _ctx282503_)))
                           (_val282520_
                            (let ((_$e282517_ _mod282515_))
                              (if _$e282517_ _$e282517_ '#!void))))
                      (let ()
                        (declare (not safe))
                        (table-set! _ht282505_ _id282507_ _val282520_))
                      _val282520_)))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_ctx282501_)
        (if (##structure-ref _ctx282501_ '1 gx#expander-context::t '#f)
            (let ((__tmp287378
                   (##structure-ref
                    _ctx282501_
                    '1
                    gx#expander-context::t
                    '#f)))
              (declare (not safe))
              (gxc#optimizer-import-ssxi-by-id __tmp287378))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_id282478_)
        (letrec ((_catch-e282480_
                  (lambda (_exn282499_)
                    (if (gxc#current-compile-verbose)
                        (begin
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"Failed to load ssxi module for "
                             _id282478_))
                          (display-exception _exn282499_))
                        '#!void)
                    '#f))
                 (_import-e282481_
                  (lambda ()
                    (let* ((_str-id282484_
                            (string-append
                             (let ()
                               (declare (not safe))
                               (gxc#module-id->path-string _id282478_))
                             '".ssxi"))
                           (_artefact-path282492_
                            (let ((_odir282485282487_
                                   (gxc#current-compile-output-dir)))
                              (if _odir282485282487_
                                  (let ((_odir282490_ _odir282485282487_))
                                    (path-expand
                                     (string-append _str-id282484_ '".ss")
                                     _odir282490_))
                                  '#f)))
                           (_library-path282494_
                            (string->symbol
                             (string-append '":" _str-id282484_ '".ss")))
                           (_ssxi-path282496_
                            (if (and _artefact-path282492_
                                     (file-exists? _artefact-path282492_))
                                _artefact-path282492_
                                _library-path282494_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _ssxi-path282496_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _ssxi-path282496_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (with-catch _catch-e282480_ _import-e282481_)))))
    (define gxc#optimize-source
      (lambda (_stx282469_)
        (let () (declare (not safe)) (gxc#apply-collect-mutators _stx282469_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _stx282469_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _stx282469_))
        (let* ((_stx282471_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _stx282469_)))
               (_stx282473_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _stx282471_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _stx282473_))
          (let ((_stx282476_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _stx282473_))))
            (declare (not safe))
            (gxc#apply-optimize-call _stx282476_)))))
    (define gxc#&generate-ssxi
      (make-promise
       (lambda ()
         (let ((_tbl282466_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp287379 (force gxc#&generate-runtime-empty)))
             (declare (not safe))
             (hash-copy! _tbl282466_ __tmp287379))
           (let ()
             (declare (not safe))
             (table-set! _tbl282466_ '%#begin gxc#generate-runtime-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl282466_
              '%#begin-syntax
              gxc#generate-ssxi-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl282466_ '%#module gxc#generate-ssxi-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl282466_
              '%#define-values
              gxc#generate-ssxi-define-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl282466_ '%#call gxc#generate-ssxi-call%))
           _tbl282466_))))
    (define gxc#apply-generate-ssxi
      (lambda (_stx282449_ . _args282451_)
        (let ((__tmp287381
               (lambda ()
                 (declare (not safe))
                 (if (null? _args282451_)
                     (gxc#compile-e__0 _stx282449_)
                     (let ((_arg1282456_ (car _args282451_))
                           (_rest282458_ (cdr _args282451_)))
                       (if (null? _rest282458_)
                           (gxc#compile-e__1 _stx282449_ _arg1282456_)
                           (let ((_arg2282461_ (car _rest282458_))
                                 (_rest282463_ (cdr _rest282458_)))
                             (if (null? _rest282463_)
                                 (gxc#compile-e__2
                                  _stx282449_
                                  _arg1282456_
                                  _arg2282461_)
                                 (apply gxc#compile-e
                                        _stx282449_
                                        _arg1282456_
                                        _arg2282461_
                                        _rest282463_))))))))
              (__tmp287380 (force gxc#&generate-ssxi)))
          (declare (not safe))
          (call-with-parameters
           __tmp287381
           gxc#current-compile-methods
           __tmp287380))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_stx282410_)
        (let* ((_g282412282422_
                (lambda (_g282413282419_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g282413282419_))))
               (_g282411282446_
                (lambda (_g282413282425_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g282413282425_))
                      (let ((_e282417282427_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g282413282425_))))
                        (let ((_hd282416282430_
                               (let ()
                                 (declare (not safe))
                                 (##car _e282417282427_)))
                              (_tl282415282432_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e282417282427_))))
                          ((lambda (_L282435_)
                             (let ((__tmp287384
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _stx282410_))))
                                   (__tmp287382
                                    (let ((__tmp287383
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp287383 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp287384
                                gx#current-expander-phi
                                __tmp287382)))
                           _tl282415282432_)))
                      (let ()
                        (declare (not safe))
                        (_g282412282422_ _g282413282425_))))))
          (declare (not safe))
          (_g282411282446_ _stx282410_))))
    (define gxc#generate-ssxi-module%
      (lambda (_stx282350_)
        (let* ((_g282352282366_
                (lambda (_g282353282363_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g282353282363_))))
               (_g282351282407_
                (lambda (_g282353282369_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g282353282369_))
                      (let ((_e282358282371_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g282353282369_))))
                        (let ((_hd282357282374_
                               (let ()
                                 (declare (not safe))
                                 (##car _e282358282371_)))
                              (_tl282356282376_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e282358282371_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl282356282376_))
                              (let ((_e282361282379_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl282356282376_))))
                                (let ((_hd282360282382_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e282361282379_)))
                                      (_tl282359282384_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e282361282379_))))
                                  ((lambda (_L282387_ _L282388_)
                                     (let* ((_ctx282401_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L282388_)))
                                            (_code282403_
                                             (##structure-ref
                                              _ctx282401_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp287385
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _code282403_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp287385
                                          gx#current-expander-context
                                          _ctx282401_))))
                                   _tl282359282384_
                                   _hd282360282382_)))
                              (let ()
                                (declare (not safe))
                                (_g282352282366_ _g282353282369_)))))
                      (let ()
                        (declare (not safe))
                        (_g282352282366_ _g282353282369_))))))
          (declare (not safe))
          (_g282351282407_ _stx282350_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_stx282160_)
        (letrec ((_generate-e282162_
                  (lambda (_id282339_)
                    (let* ((_sym282341_
                            (if (let ((__tmp287386
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp287386))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _id282339_))
                                '#f))
                           (_$e282343_
                            (if _sym282341_
                                (let ()
                                  (declare (not safe))
                                  (gxc#optimizer-lookup-type _sym282341_))
                                '#f)))
                      (if _$e282343_
                          ((lambda (_type282346_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"generate typedecl " _sym282341_))
                             (let* ((_typedecl282348_
                                     (let ((__method287355
                                            (let ()
                                              (declare (not safe))
                                              (method-ref
                                               _type282346_
                                               'typedecl))))
                                       (if __method287355
                                           (__method287355 _type282346_)
                                           (error '"Missing method"
                                                  _type282346_
                                                  'typedecl))))
                                    (__tmp287387
                                     (let ((__tmp287388
                                            (let ()
                                              (declare (not safe))
                                              (cons _typedecl282348_ '()))))
                                       (declare (not safe))
                                       (cons _sym282341_ __tmp287388))))
                               (declare (not safe))
                               (cons 'declare-type __tmp287387)))
                           _$e282343_)
                          '(begin))))))
          (let* ((___stx287053287054_ _stx282160_)
                 (_g282165282203_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx287053287054_)))))
            (let ((___kont287055287056_
                   (lambda (_L282321_)
                     (let ()
                       (declare (not safe))
                       (_generate-e282162_ _L282321_))))
                  (___kont287057287058_
                   (lambda (_L282256_)
                     (let ((_types282282_
                            (map _generate-e282162_
                                 (let ((__tmp287389
                                        (lambda (_g282274282277_
                                                 _g282275282279_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g282274282277_
                                                  _g282275282279_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp287389 '() _L282256_)))))
                       (declare (not safe))
                       (cons 'begin _types282282_)))))
              (let ((___match287108287109_
                     (lambda (_e282183282208_
                              _hd282182282211_
                              _tl282181282213_
                              _e282186282216_
                              _hd282185282219_
                              _tl282184282221_
                              ___splice287059287060_
                              _target282187282224_
                              _tl282189282226_)
                       (letrec ((_loop282190282229_
                                 (lambda (_hd282188282232_ _id282194282234_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd282188282232_))
                                       (let ((_e282191282237_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd282188282232_))))
                                         (let ((_lp-tl282193282242_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e282191282237_)))
                                               (_lp-hd282192282240_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e282191282237_))))
                                           (let ((__tmp287390
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd282192282240_
                                                          _id282194282234_))))
                                             (declare (not safe))
                                             (_loop282190282229_
                                              _lp-tl282193282242_
                                              __tmp287390))))
                                       (let ((_id282195282245_
                                              (reverse _id282194282234_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl282184282221_))
                                             (let ((_e282198282248_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl282184282221_))))
                                               (let ((_tl282196282253_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e282198282248_)))
                                                     (_hd282197282251_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e282198282248_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl282196282253_))
                                                     (___kont287057287058_
                                                      _id282195282245_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g282165282203_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g282165282203_))))))))
                         (let ()
                           (declare (not safe))
                           (_loop282190282229_ _target282187282224_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx287053287054_))
                    (let ((_e282170282289_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx287053287054_))))
                      (let ((_tl282168282294_
                             (let ()
                               (declare (not safe))
                               (##cdr _e282170282289_)))
                            (_hd282169282292_
                             (let ()
                               (declare (not safe))
                               (##car _e282170282289_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl282168282294_))
                            (let ((_e282173282297_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl282168282294_))))
                              (let ((_tl282171282302_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e282173282297_)))
                                    (_hd282172282300_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e282173282297_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd282172282300_))
                                    (let ((_e282176282305_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd282172282300_))))
                                      (let ((_tl282174282310_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e282176282305_)))
                                            (_hd282175282308_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e282176282305_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl282174282310_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl282171282302_))
                                                (let ((_e282179282313_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl282171282302_))))
                                                  (let ((_tl282177282318_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e282179282313_)))
                                                        (_hd282178282316_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e282179282313_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl282177282318_))
                                                        (___kont287055287056_
                                                         _hd282175282308_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _hd282172282300_))
                                                            (let ((___splice287059287060_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _hd282172282300_ '0))))
                      (let ((_tl282189282226_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice287059287060_ '1)))
                            (_target282187282224_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice287059287060_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl282189282226_))
                            (___match287108287109_
                             _e282170282289_
                             _hd282169282292_
                             _tl282168282294_
                             _e282173282297_
                             _hd282172282300_
                             _tl282171282302_
                             ___splice287059287060_
                             _target282187282224_
                             _tl282189282226_)
                            (let () (declare (not safe)) (_g282165282203_)))))
                    (let () (declare (not safe)) (_g282165282203_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _hd282172282300_))
                                                    (let ((___splice287059287060_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _hd282172282300_
                                                              '0))))
                                                      (let ((_tl282189282226_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice287059287060_ '1)))
                    (_target282187282224_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice287059287060_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl282189282226_))
                    (___match287108287109_
                     _e282170282289_
                     _hd282169282292_
                     _tl282168282294_
                     _e282173282297_
                     _hd282172282300_
                     _tl282171282302_
                     ___splice287059287060_
                     _target282187282224_
                     _tl282189282226_)
                    (let () (declare (not safe)) (_g282165282203_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g282165282203_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _hd282172282300_))
                                                (let ((___splice287059287060_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _hd282172282300_
                                                          '0))))
                                                  (let ((_tl282189282226_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice287059287060_
                                                            '1)))
                                                        (_target282187282224_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice287059287060_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl282189282226_))
                                                        (___match287108287109_
                                                         _e282170282289_
                                                         _hd282169282292_
                                                         _tl282168282294_
                                                         _e282173282297_
                                                         _hd282172282300_
                                                         _tl282171282302_
                                                         ___splice287059287060_
                                                         _target282187282224_
                                                         _tl282189282226_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g282165282203_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g282165282203_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd282172282300_))
                                        (let ((___splice287059287060_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd282172282300_
                                                  '0))))
                                          (let ((_tl282189282226_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice287059287060_
                                                    '1)))
                                                (_target282187282224_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice287059287060_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl282189282226_))
                                                (___match287108287109_
                                                 _e282170282289_
                                                 _hd282169282292_
                                                 _tl282168282294_
                                                 _e282173282297_
                                                 _hd282172282300_
                                                 _tl282171282302_
                                                 ___splice287059287060_
                                                 _target282187282224_
                                                 _tl282189282226_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g282165282203_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g282165282203_))))))
                            (let () (declare (not safe)) (_g282165282203_)))))
                    (let () (declare (not safe)) (_g282165282203_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_stx281714_)
        (let* ((___stx287111287112_ _stx281714_)
               (_g281718281820_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx287111287112_)))))
          (let ((___kont287113287114_
                 (lambda (_L282110_ _L282111_ _L282112_ _L282113_ _L282114_)
                   (let ((__tmp287391
                          (let ((__tmp287398
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L282113_)))
                                (__tmp287392
                                 (let ((__tmp287397
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L282112_)))
                                       (__tmp287393
                                        (let ((__tmp287396
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L282111_)))
                                              (__tmp287394
                                               (let ((__tmp287395
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L282110_))))
                                                 (declare (not safe))
                                                 (cons __tmp287395 '()))))
                                          (declare (not safe))
                                          (cons __tmp287396 __tmp287394))))
                                   (declare (not safe))
                                   (cons __tmp287397 __tmp287393))))
                            (declare (not safe))
                            (cons __tmp287398 __tmp287392))))
                     (declare (not safe))
                     (cons 'declare-method __tmp287391))))
                (___kont287115287116_
                 (lambda (_L281936_ _L281937_ _L281938_ _L281939_)
                   (let ((__tmp287399
                          (let ((__tmp287405
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L281938_)))
                                (__tmp287400
                                 (let ((__tmp287404
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L281937_)))
                                       (__tmp287401
                                        (let ((__tmp287403
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L281936_)))
                                              (__tmp287402
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '#f '()))))
                                          (declare (not safe))
                                          (cons __tmp287403 __tmp287402))))
                                   (declare (not safe))
                                   (cons __tmp287404 __tmp287401))))
                            (declare (not safe))
                            (cons __tmp287405 __tmp287400))))
                     (declare (not safe))
                     (cons 'declare-method __tmp287399))))
                (___kont287117287118_ (lambda () '(begin))))
            (let ((___match287246287247_
                   (lambda (_e281727281982_
                            _hd281726281985_
                            _tl281725281987_
                            _e281730281990_
                            _hd281729281993_
                            _tl281728281995_
                            _e281733281998_
                            _hd281732282001_
                            _tl281731282003_
                            _e281736282006_
                            _hd281735282009_
                            _tl281734282011_
                            _e281739282014_
                            _hd281738282017_
                            _tl281737282019_
                            _e281742282022_
                            _hd281741282025_
                            _tl281740282027_
                            _e281745282030_
                            _hd281744282033_
                            _tl281743282035_
                            _e281748282038_
                            _hd281747282041_
                            _tl281746282043_
                            _e281751282046_
                            _hd281750282049_
                            _tl281749282051_
                            _e281754282054_
                            _hd281753282057_
                            _tl281752282059_
                            _e281757282062_
                            _hd281756282065_
                            _tl281755282067_
                            _e281760282070_
                            _hd281759282073_
                            _tl281758282075_
                            _e281763282078_
                            _hd281762282081_
                            _tl281761282083_
                            _e281766282086_
                            _hd281765282089_
                            _tl281764282091_
                            _e281769282094_
                            _hd281768282097_
                            _tl281767282099_
                            _e281772282102_
                            _hd281771282105_
                            _tl281770282107_)
                     (let ((_L282110_ _hd281771282105_)
                           (_L282111_ _hd281762282081_)
                           (_L282112_ _hd281753282057_)
                           (_L282113_ _hd281744282033_)
                           (_L282114_ _hd281735282009_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L282114_
                              'bind-method!))
                           (___kont287113287114_
                            _L282110_
                            _L282111_
                            _L282112_
                            _L282113_
                            _L282114_)
                           (___kont287117287118_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx287111287112_))
                  (let ((_e281727281982_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx287111287112_))))
                    (let ((_tl281725281987_
                           (let ()
                             (declare (not safe))
                             (##cdr _e281727281982_)))
                          (_hd281726281985_
                           (let ()
                             (declare (not safe))
                             (##car _e281727281982_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl281725281987_))
                          (let ((_e281730281990_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl281725281987_))))
                            (let ((_tl281728281995_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e281730281990_)))
                                  (_hd281729281993_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e281730281990_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd281729281993_))
                                  (let ((_e281733281998_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd281729281993_))))
                                    (let ((_tl281731282003_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e281733281998_)))
                                          (_hd281732282001_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e281733281998_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd281732282001_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd281732282001_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl281731282003_))
                                                  (let ((_e281736282006_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl281731282003_))))
                                                    (let ((_tl281734282011_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e281736282006_)))
                                                          (_hd281735282009_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e281736282006_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl281734282011_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl281728281995_))
                      (let ((_e281739282014_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl281728281995_))))
                        (let ((_tl281737282019_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e281739282014_)))
                              (_hd281738282017_
                               (let ()
                                 (declare (not safe))
                                 (##car _e281739282014_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd281738282017_))
                              (let ((_e281742282022_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd281738282017_))))
                                (let ((_tl281740282027_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e281742282022_)))
                                      (_hd281741282025_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e281742282022_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd281741282025_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd281741282025_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl281740282027_))
                                              (let ((_e281745282030_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl281740282027_))))
                                                (let ((_tl281743282035_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e281745282030_)))
                                                      (_hd281744282033_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e281745282030_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl281743282035_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl281737282019_))
                                                          (let ((_e281748282038_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl281737282019_))))
                    (let ((_tl281746282043_
                           (let ()
                             (declare (not safe))
                             (##cdr _e281748282038_)))
                          (_hd281747282041_
                           (let ()
                             (declare (not safe))
                             (##car _e281748282038_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd281747282041_))
                          (let ((_e281751282046_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd281747282041_))))
                            (let ((_tl281749282051_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e281751282046_)))
                                  (_hd281750282049_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e281751282046_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd281750282049_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd281750282049_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl281749282051_))
                                          (let ((_e281754282054_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl281749282051_))))
                                            (let ((_tl281752282059_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e281754282054_)))
                                                  (_hd281753282057_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e281754282054_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl281752282059_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl281746282043_))
                                                      (let ((_e281757282062_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl281746282043_))))
                (let ((_tl281755282067_
                       (let () (declare (not safe)) (##cdr _e281757282062_)))
                      (_hd281756282065_
                       (let () (declare (not safe)) (##car _e281757282062_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd281756282065_))
                      (let ((_e281760282070_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd281756282065_))))
                        (let ((_tl281758282075_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e281760282070_)))
                              (_hd281759282073_
                               (let ()
                                 (declare (not safe))
                                 (##car _e281760282070_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd281759282073_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd281759282073_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl281758282075_))
                                      (let ((_e281763282078_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl281758282075_))))
                                        (let ((_tl281761282083_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e281763282078_)))
                                              (_hd281762282081_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e281763282078_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl281761282083_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl281755282067_))
                                                  (let ((_e281766282086_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl281755282067_))))
                                                    (let ((_tl281764282091_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e281766282086_)))
                                                          (_hd281765282089_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e281766282086_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd281765282089_))
                                                          (let ((_e281769282094_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd281765282089_))))
                    (let ((_tl281767282099_
                           (let ()
                             (declare (not safe))
                             (##cdr _e281769282094_)))
                          (_hd281768282097_
                           (let ()
                             (declare (not safe))
                             (##car _e281769282094_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd281768282097_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd281768282097_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl281767282099_))
                                  (let ((_e281772282102_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl281767282099_))))
                                    (let ((_tl281770282107_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e281772282102_)))
                                          (_hd281771282105_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e281772282102_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl281770282107_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl281764282091_))
                                              (___match287246287247_
                                               _e281727281982_
                                               _hd281726281985_
                                               _tl281725281987_
                                               _e281730281990_
                                               _hd281729281993_
                                               _tl281728281995_
                                               _e281733281998_
                                               _hd281732282001_
                                               _tl281731282003_
                                               _e281736282006_
                                               _hd281735282009_
                                               _tl281734282011_
                                               _e281739282014_
                                               _hd281738282017_
                                               _tl281737282019_
                                               _e281742282022_
                                               _hd281741282025_
                                               _tl281740282027_
                                               _e281745282030_
                                               _hd281744282033_
                                               _tl281743282035_
                                               _e281748282038_
                                               _hd281747282041_
                                               _tl281746282043_
                                               _e281751282046_
                                               _hd281750282049_
                                               _tl281749282051_
                                               _e281754282054_
                                               _hd281753282057_
                                               _tl281752282059_
                                               _e281757282062_
                                               _hd281756282065_
                                               _tl281755282067_
                                               _e281760282070_
                                               _hd281759282073_
                                               _tl281758282075_
                                               _e281763282078_
                                               _hd281762282081_
                                               _tl281761282083_
                                               _e281766282086_
                                               _hd281765282089_
                                               _tl281764282091_
                                               _e281769282094_
                                               _hd281768282097_
                                               _tl281767282099_
                                               _e281772282102_
                                               _hd281771282105_
                                               _tl281770282107_)
                                              (___kont287117287118_))
                                          (___kont287117287118_))))
                                  (___kont287117287118_))
                              (___kont287117287118_))
                          (___kont287117287118_))))
                  (___kont287117287118_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl281755282067_))
                                                      (if (let ((__tmp287406
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp287406 'bind-method!))
                  (let ((_L281936_ _hd281762282081_)
                        (_L281937_ _hd281753282057_)
                        (_L281938_ _hd281744282033_)
                        (_L281939_ _hd281735282009_))
                    (___kont287115287116_
                     _L281936_
                     _L281937_
                     _L281938_
                     _L281939_))
                  (___kont287117287118_))
              (___kont287117287118_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont287117287118_))))
                                      (___kont287117287118_))
                                  (___kont287117287118_))
                              (___kont287117287118_))))
                      (___kont287117287118_))))
              (___kont287117287118_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont287117287118_))))
                                          (___kont287117287118_))
                                      (___kont287117287118_))
                                  (___kont287117287118_))))
                          (___kont287117287118_))))
                  (___kont287117287118_))
              (___kont287117287118_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont287117287118_))
                                          (___kont287117287118_))
                                      (___kont287117287118_))))
                              (___kont287117287118_))))
                      (___kont287117287118_))
                  (___kont287117287118_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont287117287118_))
                                              (___kont287117287118_))
                                          (___kont287117287118_))))
                                  (___kont287117287118_))))
                          (___kont287117287118_))))
                  (___kont287117287118_)))))))
    (define gxc#!alias::typedecl
      (lambda (_self281690_)
        (let* ((_self281691281697_ _self281690_)
               (_E281693281701_
                (lambda () (error '"No clause matching" _self281691281697_)))
               (_K281694281706_
                (lambda (_alias-id281704_)
                  (let ((__tmp287407
                         (let ()
                           (declare (not safe))
                           (cons _alias-id281704_ '()))))
                    (declare (not safe))
                    (cons '@alias __tmp287407)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self281691281697_ 'gxc#!alias::t))
              (let* ((_e281695281709_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281691281697_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_alias-id281712_ _e281695281709_))
                (declare (not safe))
                (_K281694281706_ _alias-id281712_))
              (let () (declare (not safe)) (_E281693281701_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_self281488_)
        (let* ((_self281489281503_ _self281488_)
               (_E281491281507_
                (lambda () (error '"No clause matching" _self281489281503_)))
               (_K281492281520_
                (lambda (_methods281510_
                         _final?281511_
                         _struct?281512_
                         _constructor281513_
                         _fields281514_
                         _slots281515_
                         _precendence-list281516_
                         _super281517_
                         _id281518_)
                  (let ((__tmp287408
                         (let ((__tmp287409
                                (let ((__tmp287410
                                       (let ((__tmp287411
                                              (let ((__tmp287412
                                                     (let ((__tmp287413
                                                            (let ((__tmp287414
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp287415
                                  (let ((__tmp287416
                                         (let ((__tmp287417
                                                (if _methods281510_
                                                    (let ()
                                                      (declare (not safe))
                                                      (table->list
                                                       _methods281510_))
                                                    '#f)))
                                           (declare (not safe))
                                           (cons __tmp287417 '()))))
                                    (declare (not safe))
                                    (cons _final?281511_ __tmp287416))))
                             (declare (not safe))
                             (cons _struct?281512_ __tmp287415))))
                      (declare (not safe))
                      (cons _constructor281513_ __tmp287414))))
               (declare (not safe))
               (cons _fields281514_ __tmp287413))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _slots281515_
                                                      __tmp287412))))
                                         (declare (not safe))
                                         (cons _precendence-list281516_
                                               __tmp287411))))
                                  (declare (not safe))
                                  (cons _super281517_ __tmp287410))))
                           (declare (not safe))
                           (cons _id281518_ __tmp287409))))
                    (declare (not safe))
                    (cons '@class __tmp287408)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self281489281503_ 'gxc#!class::t))
              (let* ((_e281493281523_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281489281503_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_id281526_ _e281493281523_)
                     (_e281494281528_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281489281503_
                         '2
                         gxc#!class::t
                         '#f)))
                     (_super281531_ _e281494281528_)
                     (_e281495281533_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281489281503_
                         '3
                         gxc#!class::t
                         '#f)))
                     (_precendence-list281536_ _e281495281533_)
                     (_e281496281538_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281489281503_
                         '4
                         gxc#!class::t
                         '#f)))
                     (_slots281541_ _e281496281538_)
                     (_e281497281543_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281489281503_
                         '5
                         gxc#!class::t
                         '#f)))
                     (_fields281546_ _e281497281543_)
                     (_e281498281548_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281489281503_
                         '6
                         gxc#!class::t
                         '#f)))
                     (_constructor281551_ _e281498281548_)
                     (_e281499281553_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281489281503_
                         '7
                         gxc#!class::t
                         '#f)))
                     (_struct?281556_ _e281499281553_)
                     (_e281500281558_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281489281503_
                         '8
                         gxc#!class::t
                         '#f)))
                     (_final?281561_ _e281500281558_)
                     (_e281501281563_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281489281503_
                         '9
                         gxc#!class::t
                         '#f)))
                     (_methods281566_ _e281501281563_))
                (declare (not safe))
                (_K281492281520_
                 _methods281566_
                 _final?281561_
                 _struct?281556_
                 _constructor281551_
                 _fields281546_
                 _slots281541_
                 _precendence-list281536_
                 _super281531_
                 _id281526_))
              (let () (declare (not safe)) (_E281491281507_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_self281342_)
        (let* ((_self281343281349_ _self281342_)
               (_E281345281353_
                (lambda () (error '"No clause matching" _self281343281349_)))
               (_K281346281358_
                (lambda (_klass-id281356_)
                  (let ((__tmp287418
                         (let ()
                           (declare (not safe))
                           (cons _klass-id281356_ '()))))
                    (declare (not safe))
                    (cons '@predicate __tmp287418)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self281343281349_
                 'gxc#!predicate::t))
              (let* ((_e281347281361_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281343281349_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id281364_ _e281347281361_))
                (declare (not safe))
                (_K281346281358_ _klass-id281364_))
              (let () (declare (not safe)) (_E281345281353_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!predicate::t 'typedecl gxc#!predicate::typedecl '#f))
    (define gxc#!constructor::typedecl
      (lambda (_self281196_)
        (let* ((_self281197281203_ _self281196_)
               (_E281199281207_
                (lambda () (error '"No clause matching" _self281197281203_)))
               (_K281200281212_
                (lambda (_klass-id281210_)
                  (let ((__tmp287419
                         (let ()
                           (declare (not safe))
                           (cons _klass-id281210_ '()))))
                    (declare (not safe))
                    (cons '@constructor __tmp287419)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self281197281203_
                 'gxc#!constructor::t))
              (let* ((_e281201281215_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281197281203_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id281218_ _e281201281215_))
                (declare (not safe))
                (_K281200281212_ _klass-id281218_))
              (let () (declare (not safe)) (_E281199281207_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_self281036_)
        (let* ((_self281037281045_ _self281036_)
               (_E281039281049_
                (lambda () (error '"No clause matching" _self281037281045_)))
               (_K281040281056_
                (lambda (_checked?281052_ _slot281053_ _klass-id281054_)
                  (let ((__tmp287420
                         (let ((__tmp287421
                                (let ((__tmp287422
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?281052_ '()))))
                                  (declare (not safe))
                                  (cons _slot281053_ __tmp287422))))
                           (declare (not safe))
                           (cons _klass-id281054_ __tmp287421))))
                    (declare (not safe))
                    (cons '@accessor __tmp287420)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self281037281045_
                 'gxc#!accessor::t))
              (let* ((_e281041281059_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281037281045_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id281062_ _e281041281059_)
                     (_e281042281064_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281037281045_
                         '2
                         gxc#!accessor::t
                         '#f)))
                     (_slot281067_ _e281042281064_)
                     (_e281043281069_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281037281045_
                         '3
                         gxc#!accessor::t
                         '#f)))
                     (_checked?281072_ _e281043281069_))
                (declare (not safe))
                (_K281040281056_
                 _checked?281072_
                 _slot281067_
                 _klass-id281062_))
              (let () (declare (not safe)) (_E281039281049_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_self280876_)
        (let* ((_self280877280885_ _self280876_)
               (_E280879280889_
                (lambda () (error '"No clause matching" _self280877280885_)))
               (_K280880280896_
                (lambda (_checked?280892_ _slot280893_ _klass-id280894_)
                  (let ((__tmp287423
                         (let ((__tmp287424
                                (let ((__tmp287425
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?280892_ '()))))
                                  (declare (not safe))
                                  (cons _slot280893_ __tmp287425))))
                           (declare (not safe))
                           (cons _klass-id280894_ __tmp287424))))
                    (declare (not safe))
                    (cons '@mutator __tmp287423)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self280877280885_ 'gxc#!mutator::t))
              (let* ((_e280881280899_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280877280885_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id280902_ _e280881280899_)
                     (_e280882280904_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280877280885_
                         '2
                         gxc#!mutator::t
                         '#f)))
                     (_slot280907_ _e280882280904_)
                     (_e280883280909_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280877280885_
                         '3
                         gxc#!mutator::t
                         '#f)))
                     (_checked?280912_ _e280883280909_))
                (declare (not safe))
                (_K280880280896_
                 _checked?280912_
                 _slot280907_
                 _klass-id280902_))
              (let () (declare (not safe)) (_E280879280889_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!lambda::typedecl
      (lambda (_self280702_)
        (let* ((_self280703280713_ _self280702_)
               (_E280705280717_
                (lambda () (error '"No clause matching" _self280703280713_)))
               (_K280706280728_
                (lambda (_typedecl280720_
                         _inline280721_
                         _dispatch280722_
                         _arity280723_)
                  (if _inline280721_
                      (let ((_$e280725_ _typedecl280720_))
                        (if _$e280725_
                            _$e280725_
                            (error '"Cannot generate typedecl for inline rules")))
                      (let ((__tmp287426
                             (let ((__tmp287427
                                    (let ()
                                      (declare (not safe))
                                      (cons _dispatch280722_ '()))))
                               (declare (not safe))
                               (cons _arity280723_ __tmp287427))))
                        (declare (not safe))
                        (cons '@lambda __tmp287426))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self280703280713_ 'gxc#!lambda::t))
              (let* ((_e280707280731_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280703280713_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e280708280734_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280703280713_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity280737_ _e280708280734_)
                     (_e280709280739_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280703280713_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch280742_ _e280709280739_)
                     (_e280710280744_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280703280713_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline280747_ _e280710280744_)
                     (_e280711280749_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280703280713_
                         '5
                         gxc#!lambda::t
                         '#f)))
                     (_typedecl280752_ _e280711280749_))
                (declare (not safe))
                (_K280706280728_
                 _typedecl280752_
                 _inline280747_
                 _dispatch280742_
                 _arity280737_))
              (let () (declare (not safe)) (_E280705280717_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_self280513_)
        (letrec ((_clause-e280515_
                  (lambda (_clause280545_)
                    (let* ((_clause280546280554_ _clause280545_)
                           (_E280548280558_
                            (lambda ()
                              (error '"No clause matching"
                                     _clause280546280554_)))
                           (_K280549280564_
                            (lambda (_dispatch280561_ _arity280562_)
                              (let ((__tmp287428
                                     (let ()
                                       (declare (not safe))
                                       (cons _dispatch280561_ '()))))
                                (declare (not safe))
                                (cons _arity280562_ __tmp287428)))))
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _clause280546280554_
                             'gxc#!lambda::t))
                          (let* ((_e280550280567_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause280546280554_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                                 (_e280551280570_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause280546280554_
                                     '2
                                     gxc#!lambda::t
                                     '#f)))
                                 (_arity280573_ _e280551280570_)
                                 (_e280552280575_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause280546280554_
                                     '3
                                     gxc#!lambda::t
                                     '#f)))
                                 (_dispatch280578_ _e280552280575_))
                            (declare (not safe))
                            (_K280549280564_ _dispatch280578_ _arity280573_))
                          (let () (declare (not safe)) (_E280548280558_)))))))
          (let* ((_self280516280523_ _self280513_)
                 (_E280518280527_
                  (lambda () (error '"No clause matching" _self280516280523_)))
                 (_K280519280534_
                  (lambda (_clauses280530_)
                    (let ((_clauses280532_
                           (map _clause-e280515_ _clauses280530_)))
                      (declare (not safe))
                      (cons '@case-lambda _clauses280532_)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of?
                   _self280516280523_
                   'gxc#!case-lambda::t))
                (let* ((_e280520280537_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self280516280523_
                           '1
                           gxc#!type::t
                           '#f)))
                       (_e280521280540_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self280516280523_
                           '2
                           gxc#!case-lambda::t
                           '#f)))
                       (_clauses280543_ _e280521280540_))
                  (declare (not safe))
                  (_K280519280534_ _clauses280543_))
                (let () (declare (not safe)) (_E280518280527_)))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_self280356_)
        (let* ((_self280357280365_ _self280356_)
               (_E280359280369_
                (lambda () (error '"No clause matching" _self280357280365_)))
               (_K280360280375_
                (lambda (_dispatch280372_ _table280373_)
                  (let ((__tmp287429
                         (let ((__tmp287430
                                (let ()
                                  (declare (not safe))
                                  (cons _dispatch280372_ '()))))
                           (declare (not safe))
                           (cons _table280373_ __tmp287430))))
                    (declare (not safe))
                    (cons '@kw-lambda __tmp287429)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self280357280365_
                 'gxc#!kw-lambda::t))
              (let* ((_e280361280378_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280357280365_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e280362280381_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280357280365_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table280384_ _e280362280381_)
                     (_e280363280386_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280357280365_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch280389_ _e280363280386_))
                (declare (not safe))
                (_K280360280375_ _dispatch280389_ _table280384_))
              (let () (declare (not safe)) (_E280359280369_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!kw-lambda::t 'typedecl gxc#!kw-lambda::typedecl '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_self280199_)
        (let* ((_self280200280208_ _self280199_)
               (_E280202280212_
                (lambda () (error '"No clause matching" _self280200280208_)))
               (_K280203280218_
                (lambda (_main280215_ _keys280216_)
                  (let ((__tmp287431
                         (let ((__tmp287432
                                (let ()
                                  (declare (not safe))
                                  (cons _main280215_ '()))))
                           (declare (not safe))
                           (cons _keys280216_ __tmp287432))))
                    (declare (not safe))
                    (cons '@kw-lambda-dispatch __tmp287431)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self280200280208_
                 'gxc#!kw-lambda-primary::t))
              (let* ((_e280204280221_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280200280208_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e280205280224_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280200280208_
                         '2
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_keys280227_ _e280205280224_)
                     (_e280206280229_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280200280208_
                         '3
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_main280232_ _e280206280229_))
                (declare (not safe))
                (_K280203280218_ _main280232_ _keys280227_))
              (let () (declare (not safe)) (_E280202280212_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))))
