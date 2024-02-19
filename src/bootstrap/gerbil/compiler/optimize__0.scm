(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1708334582)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (gxc#current-compile-optimizer-info)
            '#!void
            (gxc#current-compile-optimizer-info
             (let ((__obj295842
                    (let ()
                      (declare (not safe))
                      (##structure gxc#optimizer-info::t '#f '#f '#f))))
               (gxc#optimizer-info:::init! __obj295842)
               __obj295842)))))
    (define gxc#optimize!
      (lambda (_ctx291468_)
        (let ((__tmp295846
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _ctx291468_))
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-builtin-ssxi))
                 (let ((__tmp295848
                        (##structure-ref
                         (gxc#current-compile-optimizer-info)
                         '2
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp295847
                        (##structure-ref
                         _ctx291468_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp295848 __tmp295847 '#t))
                 (let ((_code291471_
                        (let ((__tmp295849
                               (##structure-ref
                                _ctx291468_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp295849))))
                   (##structure-set!
                    _ctx291468_
                    _code291471_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp295845 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp295844 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters
           __tmp295846
           gxc#current-compile-mutators
           __tmp295845
           gxc#current-compile-local-type
           __tmp295844))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda ()
        (let ()
          (declare (not safe))
          (gxc#optimizer-import-ssxi-by-id 'gerbil/builtin))
        (let ((__tmp295850
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp295850 'gerbil/builtin '#t))))
    (define gxc#optimizer-load-ssxi-deps
      (lambda (_ctx291412_)
        (letrec* ((_deps291414_
                   (let* ((_imports291458_
                           (##structure-ref
                            _ctx291412_
                            '8
                            gx#module-context::t
                            '#f))
                          (_$e291460_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _ctx291412_))))
                     (if _$e291460_
                         ((lambda (_g291462291464_)
                            (let ()
                              (declare (not safe))
                              (cons _g291462291464_ _imports291458_)))
                          _$e291460_)
                         _imports291458_))))
          (let _lp291416_ ((_rest291418_ _deps291414_))
            (let* ((_rest291419291427_ _rest291418_)
                   (_else291421291435_ (lambda () '#!void))
                   (_K291423291446_
                    (lambda (_rest291438_ _hd291439_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _hd291439_
                             'gx#module-context::t))
                          (begin
                            (if (let ((__tmp295864
                                       (##structure-ref
                                        (gxc#current-compile-optimizer-info)
                                        '2
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp295863
                                       (##structure-ref
                                        _hd291439_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (hash-get __tmp295864 __tmp295863))
                                '#!void
                                (begin
                                  (let ((_$e291441_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _hd291439_))))
                                    (if _$e291441_
                                        ((lambda (_pre291444_)
                                           (let ((__tmp295861
                                                  (let ((__tmp295862
                                                         (##structure-ref
                                                          _hd291439_
                                                          '8
                                                          gx#module-context::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (cons _pre291444_
                                                          __tmp295862))))
                                             (declare (not safe))
                                             (_lp291416_ __tmp295861)))
                                         _$e291441_)
                                        (let ((__tmp295860
                                               (##structure-ref
                                                _hd291439_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                          (declare (not safe))
                                          (_lp291416_ __tmp295860))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _hd291439_))))
                            (let ()
                              (declare (not safe))
                              (_lp291416_ _rest291438_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _hd291439_
                                 'gx#prelude-context::t))
                              (begin
                                (if (let ((__tmp295859
                                           (##structure-ref
                                            (gxc#current-compile-optimizer-info)
                                            '2
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp295858
                                           (##structure-ref
                                            _hd291439_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (hash-get __tmp295859 __tmp295858))
                                    '#!void
                                    (begin
                                      (let ((__tmp295857
                                             (##structure-ref
                                              _hd291439_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_lp291416_ __tmp295857))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi _hd291439_))))
                                (let ()
                                  (declare (not safe))
                                  (_lp291416_ _rest291438_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _hd291439_
                                     'gx#module-import::t))
                                  (let ((__tmp295855
                                         (let ((__tmp295856
                                                (##direct-structure-ref
                                                 _hd291439_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp295856 _rest291438_))))
                                    (declare (not safe))
                                    (_lp291416_ __tmp295855))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _hd291439_
                                         'gx#module-export::t))
                                      (let ((__tmp295853
                                             (let ((__tmp295854
                                                    (##direct-structure-ref
                                                     _hd291439_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp295854
                                                     _rest291438_))))
                                        (declare (not safe))
                                        (_lp291416_ __tmp295853))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _hd291439_
                                             'gx#import-set::t))
                                          (let ((__tmp295851
                                                 (let ((__tmp295852
                                                        (##direct-structure-ref
                                                         _hd291439_
                                                         '1
                                                         gx#import-set::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp295852
                                                         _rest291438_))))
                                            (declare (not safe))
                                            (_lp291416_ __tmp295851))
                                          (error '"Unexpected module import"
                                                 _hd291439_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest291419291427_))
                  (let ((_hd291424291449_
                         (let ()
                           (declare (not safe))
                           (##car _rest291419291427_)))
                        (_tl291425291451_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest291419291427_))))
                    (let* ((_hd291454_ _hd291424291449_)
                           (_rest291456_ _tl291425291451_))
                      (declare (not safe))
                      (_K291423291446_ _rest291456_ _hd291454_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_ctx291392_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _ctx291392_
                    'gx#module-context::t))
                 (let ((__tmp295865
                        (##structure-ref
                         _ctx291392_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp295865)))
            '#!void
            (let* ((_ht291394_
                    (##structure-ref
                     (gxc#current-compile-optimizer-info)
                     '2
                     gxc#optimizer-info::t
                     '#f))
                   (_id291396_
                    (##structure-ref
                     _ctx291392_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_mod291398_
                    (let ()
                      (declare (not safe))
                      (hash-get _ht291394_ _id291396_))))
              (let ((_$e291401_ _mod291398_))
                (if _$e291401_
                    _$e291401_
                    (let* ((_mod291404_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-import-ssxi _ctx291392_)))
                           (_val291409_
                            (let ((_$e291406_ _mod291404_))
                              (if _$e291406_ _$e291406_ '#!void))))
                      (let ()
                        (declare (not safe))
                        (hash-put! _ht291394_ _id291396_ _val291409_))
                      _val291409_)))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_ctx291390_)
        (if (##structure-ref _ctx291390_ '1 gx#expander-context::t '#f)
            (let ((__tmp295866
                   (##structure-ref
                    _ctx291390_
                    '1
                    gx#expander-context::t
                    '#f)))
              (declare (not safe))
              (gxc#optimizer-import-ssxi-by-id __tmp295866))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_id291367_)
        (letrec ((_catch-e291369_
                  (lambda (_exn291388_)
                    (if (gxc#current-compile-verbose)
                        (begin
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"Failed to load ssxi module for "
                             _id291367_))
                          (display-exception _exn291388_))
                        '#!void)
                    '#f))
                 (_import-e291370_
                  (lambda ()
                    (let* ((_str-id291373_
                            (string-append
                             (let ()
                               (declare (not safe))
                               (gxc#module-id->path-string _id291367_))
                             '".ssxi"))
                           (_artefact-path291381_
                            (let ((_odir291374291376_
                                   (gxc#current-compile-output-dir)))
                              (if _odir291374291376_
                                  (let ((_odir291379_ _odir291374291376_))
                                    (path-expand
                                     (string-append _str-id291373_ '".ss")
                                     _odir291379_))
                                  '#f)))
                           (_library-path291383_
                            (string->symbol
                             (string-append '":" _str-id291373_ '".ss")))
                           (_ssxi-path291385_
                            (if (and _artefact-path291381_
                                     (file-exists? _artefact-path291381_))
                                _artefact-path291381_
                                _library-path291383_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _ssxi-path291385_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _ssxi-path291385_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (with-catch _catch-e291369_ _import-e291370_)))))
    (define gxc#optimize-source
      (lambda (_stx291358_)
        (let () (declare (not safe)) (gxc#apply-collect-mutators _stx291358_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _stx291358_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _stx291358_))
        (let* ((_stx291360_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _stx291358_)))
               (_stx291362_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _stx291360_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _stx291362_))
          (let ((_stx291365_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _stx291362_))))
            (declare (not safe))
            (gxc#apply-optimize-call _stx291365_)))))
    (define gxc#&generate-ssxi
      (make-promise
       (lambda ()
         (let ((_tbl291355_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp295867 (force gxc#&generate-runtime-empty)))
             (declare (not safe))
             (hash-merge! _tbl291355_ __tmp295867))
           (let ()
             (declare (not safe))
             (hash-put! _tbl291355_ '%#begin gxc#generate-runtime-begin%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl291355_
              '%#begin-syntax
              gxc#generate-ssxi-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl291355_ '%#module gxc#generate-ssxi-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl291355_
              '%#define-values
              gxc#generate-ssxi-define-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl291355_ '%#call gxc#generate-ssxi-call%))
           _tbl291355_))))
    (define gxc#apply-generate-ssxi
      (lambda (_stx291338_ . _args291340_)
        (let ((__tmp295869
               (lambda ()
                 (declare (not safe))
                 (if (null? _args291340_)
                     (gxc#compile-e__0 _stx291338_)
                     (let ((_arg1291345_ (car _args291340_))
                           (_rest291347_ (cdr _args291340_)))
                       (if (null? _rest291347_)
                           (gxc#compile-e__1 _stx291338_ _arg1291345_)
                           (let ((_arg2291350_ (car _rest291347_))
                                 (_rest291352_ (cdr _rest291347_)))
                             (if (null? _rest291352_)
                                 (gxc#compile-e__2
                                  _stx291338_
                                  _arg1291345_
                                  _arg2291350_)
                                 (apply gxc#compile-e
                                        _stx291338_
                                        _arg1291345_
                                        _arg2291350_
                                        _rest291352_))))))))
              (__tmp295868 (force gxc#&generate-ssxi)))
          (declare (not safe))
          (call-with-parameters
           __tmp295869
           gxc#current-compile-methods
           __tmp295868))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_stx291299_)
        (let* ((_g291301291311_
                (lambda (_g291302291308_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g291302291308_))))
               (_g291300291335_
                (lambda (_g291302291314_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g291302291314_))
                      (let ((_e291306291316_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g291302291314_))))
                        (let ((_hd291305291319_
                               (let ()
                                 (declare (not safe))
                                 (##car _e291306291316_)))
                              (_tl291304291321_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e291306291316_))))
                          ((lambda (_L291324_)
                             (let ((__tmp295872
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _stx291299_))))
                                   (__tmp295870
                                    (let ((__tmp295871
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp295871 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp295872
                                gx#current-expander-phi
                                __tmp295870)))
                           _tl291304291321_)))
                      (let ()
                        (declare (not safe))
                        (_g291301291311_ _g291302291314_))))))
          (declare (not safe))
          (_g291300291335_ _stx291299_))))
    (define gxc#generate-ssxi-module%
      (lambda (_stx291239_)
        (let* ((_g291241291255_
                (lambda (_g291242291252_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g291242291252_))))
               (_g291240291296_
                (lambda (_g291242291258_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g291242291258_))
                      (let ((_e291247291260_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g291242291258_))))
                        (let ((_hd291246291263_
                               (let ()
                                 (declare (not safe))
                                 (##car _e291247291260_)))
                              (_tl291245291265_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e291247291260_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl291245291265_))
                              (let ((_e291250291268_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl291245291265_))))
                                (let ((_hd291249291271_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e291250291268_)))
                                      (_tl291248291273_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e291250291268_))))
                                  ((lambda (_L291276_ _L291277_)
                                     (let* ((_ctx291290_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L291277_)))
                                            (_code291292_
                                             (##structure-ref
                                              _ctx291290_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp295873
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _code291292_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp295873
                                          gx#current-expander-context
                                          _ctx291290_))))
                                   _tl291248291273_
                                   _hd291249291271_)))
                              (let ()
                                (declare (not safe))
                                (_g291241291255_ _g291242291258_)))))
                      (let ()
                        (declare (not safe))
                        (_g291241291255_ _g291242291258_))))))
          (declare (not safe))
          (_g291240291296_ _stx291239_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_stx291049_)
        (letrec ((_generate-e291051_
                  (lambda (_id291228_)
                    (let* ((_sym291230_
                            (if (let ((__tmp295874
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp295874))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _id291228_))
                                '#f))
                           (_$e291232_
                            (if _sym291230_
                                (let ()
                                  (declare (not safe))
                                  (gxc#optimizer-lookup-type _sym291230_))
                                '#f)))
                      (if _$e291232_
                          ((lambda (_type291235_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"generate typedecl " _sym291230_))
                             (let* ((_typedecl291237_
                                     (let ((__method295843
                                            (let ()
                                              (declare (not safe))
                                              (method-ref
                                               _type291235_
                                               'typedecl))))
                                       (if __method295843
                                           (__method295843 _type291235_)
                                           (error '"Missing method"
                                                  _type291235_
                                                  'typedecl))))
                                    (__tmp295875
                                     (let ((__tmp295876
                                            (let ()
                                              (declare (not safe))
                                              (cons _typedecl291237_ '()))))
                                       (declare (not safe))
                                       (cons _sym291230_ __tmp295876))))
                               (declare (not safe))
                               (cons 'declare-type __tmp295875)))
                           _$e291232_)
                          '(begin))))))
          (let* ((___stx295541295542_ _stx291049_)
                 (_g291054291092_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx295541295542_)))))
            (let ((___kont295543295544_
                   (lambda (_L291210_)
                     (let ()
                       (declare (not safe))
                       (_generate-e291051_ _L291210_))))
                  (___kont295545295546_
                   (lambda (_L291145_)
                     (let ((_types291171_
                            (map _generate-e291051_
                                 (let ((__tmp295877
                                        (lambda (_g291163291166_
                                                 _g291164291168_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g291163291166_
                                                  _g291164291168_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp295877 '() _L291145_)))))
                       (declare (not safe))
                       (cons 'begin _types291171_)))))
              (let ((___match295596295597_
                     (lambda (_e291072291097_
                              _hd291071291100_
                              _tl291070291102_
                              _e291075291105_
                              _hd291074291108_
                              _tl291073291110_
                              ___splice295547295548_
                              _target291076291113_
                              _tl291078291115_)
                       (letrec ((_loop291079291118_
                                 (lambda (_hd291077291121_ _id291083291123_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd291077291121_))
                                       (let ((_e291080291126_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd291077291121_))))
                                         (let ((_lp-tl291082291131_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e291080291126_)))
                                               (_lp-hd291081291129_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e291080291126_))))
                                           (let ((__tmp295878
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd291081291129_
                                                          _id291083291123_))))
                                             (declare (not safe))
                                             (_loop291079291118_
                                              _lp-tl291082291131_
                                              __tmp295878))))
                                       (let ((_id291084291134_
                                              (reverse _id291083291123_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl291073291110_))
                                             (let ((_e291087291137_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl291073291110_))))
                                               (let ((_tl291085291142_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e291087291137_)))
                                                     (_hd291086291140_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e291087291137_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl291085291142_))
                                                     (___kont295545295546_
                                                      _id291084291134_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g291054291092_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g291054291092_))))))))
                         (let ()
                           (declare (not safe))
                           (_loop291079291118_ _target291076291113_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx295541295542_))
                    (let ((_e291059291178_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx295541295542_))))
                      (let ((_tl291057291183_
                             (let ()
                               (declare (not safe))
                               (##cdr _e291059291178_)))
                            (_hd291058291181_
                             (let ()
                               (declare (not safe))
                               (##car _e291059291178_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl291057291183_))
                            (let ((_e291062291186_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl291057291183_))))
                              (let ((_tl291060291191_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e291062291186_)))
                                    (_hd291061291189_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e291062291186_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd291061291189_))
                                    (let ((_e291065291194_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd291061291189_))))
                                      (let ((_tl291063291199_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e291065291194_)))
                                            (_hd291064291197_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e291065291194_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl291063291199_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl291060291191_))
                                                (let ((_e291068291202_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl291060291191_))))
                                                  (let ((_tl291066291207_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e291068291202_)))
                                                        (_hd291067291205_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e291068291202_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl291066291207_))
                                                        (___kont295543295544_
                                                         _hd291064291197_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _hd291061291189_))
                                                            (let ((___splice295547295548_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _hd291061291189_ '0))))
                      (let ((_tl291078291115_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice295547295548_ '1)))
                            (_target291076291113_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice295547295548_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl291078291115_))
                            (___match295596295597_
                             _e291059291178_
                             _hd291058291181_
                             _tl291057291183_
                             _e291062291186_
                             _hd291061291189_
                             _tl291060291191_
                             ___splice295547295548_
                             _target291076291113_
                             _tl291078291115_)
                            (let () (declare (not safe)) (_g291054291092_)))))
                    (let () (declare (not safe)) (_g291054291092_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _hd291061291189_))
                                                    (let ((___splice295547295548_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _hd291061291189_
                                                              '0))))
                                                      (let ((_tl291078291115_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice295547295548_ '1)))
                    (_target291076291113_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice295547295548_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl291078291115_))
                    (___match295596295597_
                     _e291059291178_
                     _hd291058291181_
                     _tl291057291183_
                     _e291062291186_
                     _hd291061291189_
                     _tl291060291191_
                     ___splice295547295548_
                     _target291076291113_
                     _tl291078291115_)
                    (let () (declare (not safe)) (_g291054291092_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g291054291092_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _hd291061291189_))
                                                (let ((___splice295547295548_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _hd291061291189_
                                                          '0))))
                                                  (let ((_tl291078291115_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice295547295548_
                                                            '1)))
                                                        (_target291076291113_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice295547295548_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl291078291115_))
                                                        (___match295596295597_
                                                         _e291059291178_
                                                         _hd291058291181_
                                                         _tl291057291183_
                                                         _e291062291186_
                                                         _hd291061291189_
                                                         _tl291060291191_
                                                         ___splice295547295548_
                                                         _target291076291113_
                                                         _tl291078291115_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g291054291092_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g291054291092_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd291061291189_))
                                        (let ((___splice295547295548_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd291061291189_
                                                  '0))))
                                          (let ((_tl291078291115_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice295547295548_
                                                    '1)))
                                                (_target291076291113_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice295547295548_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl291078291115_))
                                                (___match295596295597_
                                                 _e291059291178_
                                                 _hd291058291181_
                                                 _tl291057291183_
                                                 _e291062291186_
                                                 _hd291061291189_
                                                 _tl291060291191_
                                                 ___splice295547295548_
                                                 _target291076291113_
                                                 _tl291078291115_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g291054291092_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g291054291092_))))))
                            (let () (declare (not safe)) (_g291054291092_)))))
                    (let () (declare (not safe)) (_g291054291092_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_stx290603_)
        (let* ((___stx295599295600_ _stx290603_)
               (_g290607290709_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx295599295600_)))))
          (let ((___kont295601295602_
                 (lambda (_L290999_ _L291000_ _L291001_ _L291002_ _L291003_)
                   (let ((__tmp295879
                          (let ((__tmp295886
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L291002_)))
                                (__tmp295880
                                 (let ((__tmp295885
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L291001_)))
                                       (__tmp295881
                                        (let ((__tmp295884
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L291000_)))
                                              (__tmp295882
                                               (let ((__tmp295883
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L290999_))))
                                                 (declare (not safe))
                                                 (cons __tmp295883 '()))))
                                          (declare (not safe))
                                          (cons __tmp295884 __tmp295882))))
                                   (declare (not safe))
                                   (cons __tmp295885 __tmp295881))))
                            (declare (not safe))
                            (cons __tmp295886 __tmp295880))))
                     (declare (not safe))
                     (cons 'declare-method __tmp295879))))
                (___kont295603295604_
                 (lambda (_L290825_ _L290826_ _L290827_ _L290828_)
                   (let ((__tmp295887
                          (let ((__tmp295893
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L290827_)))
                                (__tmp295888
                                 (let ((__tmp295892
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L290826_)))
                                       (__tmp295889
                                        (let ((__tmp295891
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L290825_)))
                                              (__tmp295890
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '#f '()))))
                                          (declare (not safe))
                                          (cons __tmp295891 __tmp295890))))
                                   (declare (not safe))
                                   (cons __tmp295892 __tmp295889))))
                            (declare (not safe))
                            (cons __tmp295893 __tmp295888))))
                     (declare (not safe))
                     (cons 'declare-method __tmp295887))))
                (___kont295605295606_ (lambda () '(begin))))
            (let ((___match295734295735_
                   (lambda (_e290616290871_
                            _hd290615290874_
                            _tl290614290876_
                            _e290619290879_
                            _hd290618290882_
                            _tl290617290884_
                            _e290622290887_
                            _hd290621290890_
                            _tl290620290892_
                            _e290625290895_
                            _hd290624290898_
                            _tl290623290900_
                            _e290628290903_
                            _hd290627290906_
                            _tl290626290908_
                            _e290631290911_
                            _hd290630290914_
                            _tl290629290916_
                            _e290634290919_
                            _hd290633290922_
                            _tl290632290924_
                            _e290637290927_
                            _hd290636290930_
                            _tl290635290932_
                            _e290640290935_
                            _hd290639290938_
                            _tl290638290940_
                            _e290643290943_
                            _hd290642290946_
                            _tl290641290948_
                            _e290646290951_
                            _hd290645290954_
                            _tl290644290956_
                            _e290649290959_
                            _hd290648290962_
                            _tl290647290964_
                            _e290652290967_
                            _hd290651290970_
                            _tl290650290972_
                            _e290655290975_
                            _hd290654290978_
                            _tl290653290980_
                            _e290658290983_
                            _hd290657290986_
                            _tl290656290988_
                            _e290661290991_
                            _hd290660290994_
                            _tl290659290996_)
                     (let ((_L290999_ _hd290660290994_)
                           (_L291000_ _hd290651290970_)
                           (_L291001_ _hd290642290946_)
                           (_L291002_ _hd290633290922_)
                           (_L291003_ _hd290624290898_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L291003_
                              'bind-method!))
                           (___kont295601295602_
                            _L290999_
                            _L291000_
                            _L291001_
                            _L291002_
                            _L291003_)
                           (___kont295605295606_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx295599295600_))
                  (let ((_e290616290871_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx295599295600_))))
                    (let ((_tl290614290876_
                           (let ()
                             (declare (not safe))
                             (##cdr _e290616290871_)))
                          (_hd290615290874_
                           (let ()
                             (declare (not safe))
                             (##car _e290616290871_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl290614290876_))
                          (let ((_e290619290879_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl290614290876_))))
                            (let ((_tl290617290884_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e290619290879_)))
                                  (_hd290618290882_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e290619290879_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd290618290882_))
                                  (let ((_e290622290887_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd290618290882_))))
                                    (let ((_tl290620290892_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e290622290887_)))
                                          (_hd290621290890_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e290622290887_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd290621290890_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd290621290890_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl290620290892_))
                                                  (let ((_e290625290895_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl290620290892_))))
                                                    (let ((_tl290623290900_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e290625290895_)))
                                                          (_hd290624290898_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e290625290895_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl290623290900_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl290617290884_))
                      (let ((_e290628290903_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl290617290884_))))
                        (let ((_tl290626290908_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e290628290903_)))
                              (_hd290627290906_
                               (let ()
                                 (declare (not safe))
                                 (##car _e290628290903_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd290627290906_))
                              (let ((_e290631290911_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd290627290906_))))
                                (let ((_tl290629290916_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e290631290911_)))
                                      (_hd290630290914_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e290631290911_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd290630290914_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd290630290914_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl290629290916_))
                                              (let ((_e290634290919_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl290629290916_))))
                                                (let ((_tl290632290924_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e290634290919_)))
                                                      (_hd290633290922_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e290634290919_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl290632290924_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl290626290908_))
                                                          (let ((_e290637290927_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl290626290908_))))
                    (let ((_tl290635290932_
                           (let ()
                             (declare (not safe))
                             (##cdr _e290637290927_)))
                          (_hd290636290930_
                           (let ()
                             (declare (not safe))
                             (##car _e290637290927_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd290636290930_))
                          (let ((_e290640290935_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd290636290930_))))
                            (let ((_tl290638290940_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e290640290935_)))
                                  (_hd290639290938_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e290640290935_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd290639290938_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd290639290938_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl290638290940_))
                                          (let ((_e290643290943_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl290638290940_))))
                                            (let ((_tl290641290948_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e290643290943_)))
                                                  (_hd290642290946_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e290643290943_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl290641290948_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl290635290932_))
                                                      (let ((_e290646290951_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl290635290932_))))
                (let ((_tl290644290956_
                       (let () (declare (not safe)) (##cdr _e290646290951_)))
                      (_hd290645290954_
                       (let () (declare (not safe)) (##car _e290646290951_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd290645290954_))
                      (let ((_e290649290959_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd290645290954_))))
                        (let ((_tl290647290964_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e290649290959_)))
                              (_hd290648290962_
                               (let ()
                                 (declare (not safe))
                                 (##car _e290649290959_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd290648290962_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd290648290962_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl290647290964_))
                                      (let ((_e290652290967_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl290647290964_))))
                                        (let ((_tl290650290972_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e290652290967_)))
                                              (_hd290651290970_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e290652290967_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl290650290972_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl290644290956_))
                                                  (let ((_e290655290975_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl290644290956_))))
                                                    (let ((_tl290653290980_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e290655290975_)))
                                                          (_hd290654290978_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e290655290975_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd290654290978_))
                                                          (let ((_e290658290983_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd290654290978_))))
                    (let ((_tl290656290988_
                           (let ()
                             (declare (not safe))
                             (##cdr _e290658290983_)))
                          (_hd290657290986_
                           (let ()
                             (declare (not safe))
                             (##car _e290658290983_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd290657290986_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd290657290986_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl290656290988_))
                                  (let ((_e290661290991_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl290656290988_))))
                                    (let ((_tl290659290996_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e290661290991_)))
                                          (_hd290660290994_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e290661290991_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl290659290996_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl290653290980_))
                                              (___match295734295735_
                                               _e290616290871_
                                               _hd290615290874_
                                               _tl290614290876_
                                               _e290619290879_
                                               _hd290618290882_
                                               _tl290617290884_
                                               _e290622290887_
                                               _hd290621290890_
                                               _tl290620290892_
                                               _e290625290895_
                                               _hd290624290898_
                                               _tl290623290900_
                                               _e290628290903_
                                               _hd290627290906_
                                               _tl290626290908_
                                               _e290631290911_
                                               _hd290630290914_
                                               _tl290629290916_
                                               _e290634290919_
                                               _hd290633290922_
                                               _tl290632290924_
                                               _e290637290927_
                                               _hd290636290930_
                                               _tl290635290932_
                                               _e290640290935_
                                               _hd290639290938_
                                               _tl290638290940_
                                               _e290643290943_
                                               _hd290642290946_
                                               _tl290641290948_
                                               _e290646290951_
                                               _hd290645290954_
                                               _tl290644290956_
                                               _e290649290959_
                                               _hd290648290962_
                                               _tl290647290964_
                                               _e290652290967_
                                               _hd290651290970_
                                               _tl290650290972_
                                               _e290655290975_
                                               _hd290654290978_
                                               _tl290653290980_
                                               _e290658290983_
                                               _hd290657290986_
                                               _tl290656290988_
                                               _e290661290991_
                                               _hd290660290994_
                                               _tl290659290996_)
                                              (___kont295605295606_))
                                          (___kont295605295606_))))
                                  (___kont295605295606_))
                              (___kont295605295606_))
                          (___kont295605295606_))))
                  (___kont295605295606_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl290644290956_))
                                                      (if (let ((__tmp295894
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp295894 'bind-method!))
                  (let ((_L290825_ _hd290651290970_)
                        (_L290826_ _hd290642290946_)
                        (_L290827_ _hd290633290922_)
                        (_L290828_ _hd290624290898_))
                    (___kont295603295604_
                     _L290825_
                     _L290826_
                     _L290827_
                     _L290828_))
                  (___kont295605295606_))
              (___kont295605295606_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont295605295606_))))
                                      (___kont295605295606_))
                                  (___kont295605295606_))
                              (___kont295605295606_))))
                      (___kont295605295606_))))
              (___kont295605295606_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont295605295606_))))
                                          (___kont295605295606_))
                                      (___kont295605295606_))
                                  (___kont295605295606_))))
                          (___kont295605295606_))))
                  (___kont295605295606_))
              (___kont295605295606_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont295605295606_))
                                          (___kont295605295606_))
                                      (___kont295605295606_))))
                              (___kont295605295606_))))
                      (___kont295605295606_))
                  (___kont295605295606_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont295605295606_))
                                              (___kont295605295606_))
                                          (___kont295605295606_))))
                                  (___kont295605295606_))))
                          (___kont295605295606_))))
                  (___kont295605295606_)))))))
    (define gxc#!alias::typedecl
      (lambda (_self290579_)
        (let* ((_self290580290586_ _self290579_)
               (_E290582290590_
                (lambda () (error '"No clause matching" _self290580290586_)))
               (_K290583290595_
                (lambda (_alias-id290593_)
                  (let ((__tmp295895
                         (let ()
                           (declare (not safe))
                           (cons _alias-id290593_ '()))))
                    (declare (not safe))
                    (cons '@alias __tmp295895)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self290580290586_ 'gxc#!alias::t))
              (let* ((_e290584290598_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self290580290586_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_alias-id290601_ _e290584290598_))
                (declare (not safe))
                (_K290583290595_ _alias-id290601_))
              (let () (declare (not safe)) (_E290582290590_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_self290370_)
        (let* ((_self290371290386_ _self290370_)
               (_E290373290390_
                (lambda () (error '"No clause matching" _self290371290386_)))
               (_K290374290404_
                (lambda (_methods290393_
                         _metaclass290394_
                         _final?290395_
                         _struct?290396_
                         _constructor290397_
                         _fields290398_
                         _slots290399_
                         _precendence-list290400_
                         _super290401_
                         _id290402_)
                  (let ((__tmp295896
                         (let ((__tmp295897
                                (let ((__tmp295898
                                       (let ((__tmp295899
                                              (let ((__tmp295900
                                                     (let ((__tmp295901
                                                            (let ((__tmp295902
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp295903
                                  (let ((__tmp295904
                                         (let ((__tmp295905
                                                (let ((__tmp295906
                                                       (if _methods290393_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (hash->list
                                                              _methods290393_))
                                                           '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp295906 '()))))
                                           (declare (not safe))
                                           (cons _metaclass290394_
                                                 __tmp295905))))
                                    (declare (not safe))
                                    (cons _final?290395_ __tmp295904))))
                             (declare (not safe))
                             (cons _struct?290396_ __tmp295903))))
                      (declare (not safe))
                      (cons _constructor290397_ __tmp295902))))
               (declare (not safe))
               (cons _fields290398_ __tmp295901))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _slots290399_
                                                      __tmp295900))))
                                         (declare (not safe))
                                         (cons _precendence-list290400_
                                               __tmp295899))))
                                  (declare (not safe))
                                  (cons _super290401_ __tmp295898))))
                           (declare (not safe))
                           (cons _id290402_ __tmp295897))))
                    (declare (not safe))
                    (cons '@class __tmp295896)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self290371290386_ 'gxc#!class::t))
              (let* ((_e290375290407_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self290371290386_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_id290410_ _e290375290407_)
                     (_e290376290412_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self290371290386_
                         '2
                         gxc#!class::t
                         '#f)))
                     (_super290415_ _e290376290412_)
                     (_e290377290417_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self290371290386_
                         '3
                         gxc#!class::t
                         '#f)))
                     (_precendence-list290420_ _e290377290417_)
                     (_e290378290422_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self290371290386_
                         '4
                         gxc#!class::t
                         '#f)))
                     (_slots290425_ _e290378290422_)
                     (_e290379290427_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self290371290386_
                         '5
                         gxc#!class::t
                         '#f)))
                     (_fields290430_ _e290379290427_)
                     (_e290380290432_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self290371290386_
                         '6
                         gxc#!class::t
                         '#f)))
                     (_constructor290435_ _e290380290432_)
                     (_e290381290437_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self290371290386_
                         '7
                         gxc#!class::t
                         '#f)))
                     (_struct?290440_ _e290381290437_)
                     (_e290382290442_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self290371290386_
                         '8
                         gxc#!class::t
                         '#f)))
                     (_final?290445_ _e290382290442_)
                     (_e290383290447_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self290371290386_
                         '9
                         gxc#!class::t
                         '#f)))
                     (_metaclass290450_ _e290383290447_)
                     (_e290384290452_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self290371290386_
                         '10
                         gxc#!class::t
                         '#f)))
                     (_methods290455_ _e290384290452_))
                (declare (not safe))
                (_K290374290404_
                 _methods290455_
                 _metaclass290450_
                 _final?290445_
                 _struct?290440_
                 _constructor290435_
                 _fields290430_
                 _slots290425_
                 _precendence-list290420_
                 _super290415_
                 _id290410_))
              (let () (declare (not safe)) (_E290373290390_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_self290224_)
        (let* ((_self290225290231_ _self290224_)
               (_E290227290235_
                (lambda () (error '"No clause matching" _self290225290231_)))
               (_K290228290240_
                (lambda (_klass-id290238_)
                  (let ((__tmp295907
                         (let ()
                           (declare (not safe))
                           (cons _klass-id290238_ '()))))
                    (declare (not safe))
                    (cons '@predicate __tmp295907)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self290225290231_
                 'gxc#!predicate::t))
              (let* ((_e290229290243_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self290225290231_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id290246_ _e290229290243_))
                (declare (not safe))
                (_K290228290240_ _klass-id290246_))
              (let () (declare (not safe)) (_E290227290235_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!predicate::t 'typedecl gxc#!predicate::typedecl '#f))
    (define gxc#!constructor::typedecl
      (lambda (_self290078_)
        (let* ((_self290079290085_ _self290078_)
               (_E290081290089_
                (lambda () (error '"No clause matching" _self290079290085_)))
               (_K290082290094_
                (lambda (_klass-id290092_)
                  (let ((__tmp295908
                         (let ()
                           (declare (not safe))
                           (cons _klass-id290092_ '()))))
                    (declare (not safe))
                    (cons '@constructor __tmp295908)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self290079290085_
                 'gxc#!constructor::t))
              (let* ((_e290083290097_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self290079290085_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id290100_ _e290083290097_))
                (declare (not safe))
                (_K290082290094_ _klass-id290100_))
              (let () (declare (not safe)) (_E290081290089_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_self289918_)
        (let* ((_self289919289927_ _self289918_)
               (_E289921289931_
                (lambda () (error '"No clause matching" _self289919289927_)))
               (_K289922289938_
                (lambda (_checked?289934_ _slot289935_ _klass-id289936_)
                  (let ((__tmp295909
                         (let ((__tmp295910
                                (let ((__tmp295911
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?289934_ '()))))
                                  (declare (not safe))
                                  (cons _slot289935_ __tmp295911))))
                           (declare (not safe))
                           (cons _klass-id289936_ __tmp295910))))
                    (declare (not safe))
                    (cons '@accessor __tmp295909)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self289919289927_
                 'gxc#!accessor::t))
              (let* ((_e289923289941_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self289919289927_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id289944_ _e289923289941_)
                     (_e289924289946_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self289919289927_
                         '2
                         gxc#!accessor::t
                         '#f)))
                     (_slot289949_ _e289924289946_)
                     (_e289925289951_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self289919289927_
                         '3
                         gxc#!accessor::t
                         '#f)))
                     (_checked?289954_ _e289925289951_))
                (declare (not safe))
                (_K289922289938_
                 _checked?289954_
                 _slot289949_
                 _klass-id289944_))
              (let () (declare (not safe)) (_E289921289931_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_self289758_)
        (let* ((_self289759289767_ _self289758_)
               (_E289761289771_
                (lambda () (error '"No clause matching" _self289759289767_)))
               (_K289762289778_
                (lambda (_checked?289774_ _slot289775_ _klass-id289776_)
                  (let ((__tmp295912
                         (let ((__tmp295913
                                (let ((__tmp295914
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?289774_ '()))))
                                  (declare (not safe))
                                  (cons _slot289775_ __tmp295914))))
                           (declare (not safe))
                           (cons _klass-id289776_ __tmp295913))))
                    (declare (not safe))
                    (cons '@mutator __tmp295912)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self289759289767_ 'gxc#!mutator::t))
              (let* ((_e289763289781_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self289759289767_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id289784_ _e289763289781_)
                     (_e289764289786_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self289759289767_
                         '2
                         gxc#!mutator::t
                         '#f)))
                     (_slot289789_ _e289764289786_)
                     (_e289765289791_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self289759289767_
                         '3
                         gxc#!mutator::t
                         '#f)))
                     (_checked?289794_ _e289765289791_))
                (declare (not safe))
                (_K289762289778_
                 _checked?289794_
                 _slot289789_
                 _klass-id289784_))
              (let () (declare (not safe)) (_E289761289771_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!lambda::typedecl
      (lambda (_self289584_)
        (let* ((_self289585289595_ _self289584_)
               (_E289587289599_
                (lambda () (error '"No clause matching" _self289585289595_)))
               (_K289588289610_
                (lambda (_typedecl289602_
                         _inline289603_
                         _dispatch289604_
                         _arity289605_)
                  (if _inline289603_
                      (let ((_$e289607_ _typedecl289602_))
                        (if _$e289607_
                            _$e289607_
                            (error '"Cannot generate typedecl for inline rules")))
                      (let ((__tmp295915
                             (let ((__tmp295916
                                    (let ()
                                      (declare (not safe))
                                      (cons _dispatch289604_ '()))))
                               (declare (not safe))
                               (cons _arity289605_ __tmp295916))))
                        (declare (not safe))
                        (cons '@lambda __tmp295915))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self289585289595_ 'gxc#!lambda::t))
              (let* ((_e289589289613_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self289585289595_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e289590289616_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self289585289595_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity289619_ _e289590289616_)
                     (_e289591289621_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self289585289595_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch289624_ _e289591289621_)
                     (_e289592289626_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self289585289595_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline289629_ _e289592289626_)
                     (_e289593289631_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self289585289595_
                         '5
                         gxc#!lambda::t
                         '#f)))
                     (_typedecl289634_ _e289593289631_))
                (declare (not safe))
                (_K289588289610_
                 _typedecl289634_
                 _inline289629_
                 _dispatch289624_
                 _arity289619_))
              (let () (declare (not safe)) (_E289587289599_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_self289395_)
        (letrec ((_clause-e289397_
                  (lambda (_clause289427_)
                    (let* ((_clause289428289436_ _clause289427_)
                           (_E289430289440_
                            (lambda ()
                              (error '"No clause matching"
                                     _clause289428289436_)))
                           (_K289431289446_
                            (lambda (_dispatch289443_ _arity289444_)
                              (let ((__tmp295917
                                     (let ()
                                       (declare (not safe))
                                       (cons _dispatch289443_ '()))))
                                (declare (not safe))
                                (cons _arity289444_ __tmp295917)))))
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _clause289428289436_
                             'gxc#!lambda::t))
                          (let* ((_e289432289449_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause289428289436_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                                 (_e289433289452_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause289428289436_
                                     '2
                                     gxc#!lambda::t
                                     '#f)))
                                 (_arity289455_ _e289433289452_)
                                 (_e289434289457_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause289428289436_
                                     '3
                                     gxc#!lambda::t
                                     '#f)))
                                 (_dispatch289460_ _e289434289457_))
                            (declare (not safe))
                            (_K289431289446_ _dispatch289460_ _arity289455_))
                          (let () (declare (not safe)) (_E289430289440_)))))))
          (let* ((_self289398289405_ _self289395_)
                 (_E289400289409_
                  (lambda () (error '"No clause matching" _self289398289405_)))
                 (_K289401289416_
                  (lambda (_clauses289412_)
                    (let ((_clauses289414_
                           (map _clause-e289397_ _clauses289412_)))
                      (declare (not safe))
                      (cons '@case-lambda _clauses289414_)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of?
                   _self289398289405_
                   'gxc#!case-lambda::t))
                (let* ((_e289402289419_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self289398289405_
                           '1
                           gxc#!type::t
                           '#f)))
                       (_e289403289422_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self289398289405_
                           '2
                           gxc#!case-lambda::t
                           '#f)))
                       (_clauses289425_ _e289403289422_))
                  (declare (not safe))
                  (_K289401289416_ _clauses289425_))
                (let () (declare (not safe)) (_E289400289409_)))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_self289238_)
        (let* ((_self289239289247_ _self289238_)
               (_E289241289251_
                (lambda () (error '"No clause matching" _self289239289247_)))
               (_K289242289257_
                (lambda (_dispatch289254_ _table289255_)
                  (let ((__tmp295918
                         (let ((__tmp295919
                                (let ()
                                  (declare (not safe))
                                  (cons _dispatch289254_ '()))))
                           (declare (not safe))
                           (cons _table289255_ __tmp295919))))
                    (declare (not safe))
                    (cons '@kw-lambda __tmp295918)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self289239289247_
                 'gxc#!kw-lambda::t))
              (let* ((_e289243289260_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self289239289247_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e289244289263_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self289239289247_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table289266_ _e289244289263_)
                     (_e289245289268_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self289239289247_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch289271_ _e289245289268_))
                (declare (not safe))
                (_K289242289257_ _dispatch289271_ _table289266_))
              (let () (declare (not safe)) (_E289241289251_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!kw-lambda::t 'typedecl gxc#!kw-lambda::typedecl '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_self289081_)
        (let* ((_self289082289090_ _self289081_)
               (_E289084289094_
                (lambda () (error '"No clause matching" _self289082289090_)))
               (_K289085289100_
                (lambda (_main289097_ _keys289098_)
                  (let ((__tmp295920
                         (let ((__tmp295921
                                (let ()
                                  (declare (not safe))
                                  (cons _main289097_ '()))))
                           (declare (not safe))
                           (cons _keys289098_ __tmp295921))))
                    (declare (not safe))
                    (cons '@kw-lambda-dispatch __tmp295920)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self289082289090_
                 'gxc#!kw-lambda-primary::t))
              (let* ((_e289086289103_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self289082289090_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e289087289106_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self289082289090_
                         '2
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_keys289109_ _e289087289106_)
                     (_e289088289111_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self289082289090_
                         '3
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_main289114_ _e289088289111_))
                (declare (not safe))
                (_K289085289100_ _main289114_ _keys289109_))
              (let () (declare (not safe)) (_E289084289094_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))))
