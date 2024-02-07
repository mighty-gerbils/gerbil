(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1707346624)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (gxc#current-compile-optimizer-info)
            '#!void
            (gxc#current-compile-optimizer-info
             (let ((__obj289670 (make-object* gxc#optimizer-info::t '4)))
               (gxc#optimizer-info:::init! __obj289670)
               __obj289670)))))
    (define gxc#optimize!
      (lambda (_ctx285169_)
        (let ((__tmp289674
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _ctx285169_))
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-builtin-ssxi))
                 (let ((__tmp289676
                        (##structure-ref
                         (gxc#current-compile-optimizer-info)
                         '2
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp289675
                        (##structure-ref
                         _ctx285169_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (table-set! __tmp289676 __tmp289675 '#t))
                 (let ((_code285172_
                        (let ((__tmp289677
                               (##structure-ref
                                _ctx285169_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp289677))))
                   (##structure-set!
                    _ctx285169_
                    _code285172_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp289673
               (let () (declare (not safe)) (make-table 'test: eq?)))
              (__tmp289672
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (call-with-parameters
           __tmp289674
           gxc#current-compile-mutators
           __tmp289673
           gxc#current-compile-local-type
           __tmp289672))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda ()
        (let ()
          (declare (not safe))
          (gxc#optimizer-import-ssxi-by-id 'gerbil/builtin))
        (let ((__tmp289678
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-set! __tmp289678 'gerbil/builtin '#t))))
    (define gxc#optimizer-load-ssxi-deps
      (lambda (_ctx285113_)
        (letrec* ((_deps285115_
                   (let* ((_imports285159_
                           (##structure-ref
                            _ctx285113_
                            '8
                            gx#module-context::t
                            '#f))
                          (_$e285161_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _ctx285113_))))
                     (if _$e285161_
                         ((lambda (_g285163285165_)
                            (let ()
                              (declare (not safe))
                              (cons _g285163285165_ _imports285159_)))
                          _$e285161_)
                         _imports285159_))))
          (let _lp285117_ ((_rest285119_ _deps285115_))
            (let* ((_rest285120285128_ _rest285119_)
                   (_else285122285136_ (lambda () '#!void))
                   (_K285124285147_
                    (lambda (_rest285139_ _hd285140_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _hd285140_
                             'gx#module-context::t))
                          (begin
                            (if (let ((__tmp289692
                                       (##structure-ref
                                        (gxc#current-compile-optimizer-info)
                                        '2
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp289691
                                       (##structure-ref
                                        _hd285140_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (table-ref __tmp289692 __tmp289691 '#f))
                                '#!void
                                (begin
                                  (let ((_$e285142_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _hd285140_))))
                                    (if _$e285142_
                                        ((lambda (_pre285145_)
                                           (let ((__tmp289689
                                                  (let ((__tmp289690
                                                         (##structure-ref
                                                          _hd285140_
                                                          '8
                                                          gx#module-context::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (cons _pre285145_
                                                          __tmp289690))))
                                             (declare (not safe))
                                             (_lp285117_ __tmp289689)))
                                         _$e285142_)
                                        (let ((__tmp289688
                                               (##structure-ref
                                                _hd285140_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                          (declare (not safe))
                                          (_lp285117_ __tmp289688))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _hd285140_))))
                            (let ()
                              (declare (not safe))
                              (_lp285117_ _rest285139_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _hd285140_
                                 'gx#prelude-context::t))
                              (begin
                                (if (let ((__tmp289687
                                           (##structure-ref
                                            (gxc#current-compile-optimizer-info)
                                            '2
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp289686
                                           (##structure-ref
                                            _hd285140_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (table-ref __tmp289687 __tmp289686 '#f))
                                    '#!void
                                    (begin
                                      (let ((__tmp289685
                                             (##structure-ref
                                              _hd285140_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_lp285117_ __tmp289685))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi _hd285140_))))
                                (let ()
                                  (declare (not safe))
                                  (_lp285117_ _rest285139_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _hd285140_
                                     'gx#module-import::t))
                                  (let ((__tmp289683
                                         (let ((__tmp289684
                                                (##direct-structure-ref
                                                 _hd285140_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp289684 _rest285139_))))
                                    (declare (not safe))
                                    (_lp285117_ __tmp289683))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _hd285140_
                                         'gx#module-export::t))
                                      (let ((__tmp289681
                                             (let ((__tmp289682
                                                    (##direct-structure-ref
                                                     _hd285140_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp289682
                                                     _rest285139_))))
                                        (declare (not safe))
                                        (_lp285117_ __tmp289681))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _hd285140_
                                             'gx#import-set::t))
                                          (let ((__tmp289679
                                                 (let ((__tmp289680
                                                        (##direct-structure-ref
                                                         _hd285140_
                                                         '1
                                                         gx#import-set::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp289680
                                                         _rest285139_))))
                                            (declare (not safe))
                                            (_lp285117_ __tmp289679))
                                          (error '"Unexpected module import"
                                                 _hd285140_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest285120285128_))
                  (let ((_hd285125285150_
                         (let ()
                           (declare (not safe))
                           (##car _rest285120285128_)))
                        (_tl285126285152_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest285120285128_))))
                    (let* ((_hd285155_ _hd285125285150_)
                           (_rest285157_ _tl285126285152_))
                      (declare (not safe))
                      (_K285124285147_ _rest285157_ _hd285155_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_ctx285093_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _ctx285093_
                    'gx#module-context::t))
                 (let ((__tmp289693
                        (##structure-ref
                         _ctx285093_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp289693)))
            '#!void
            (let* ((_ht285095_
                    (##structure-ref
                     (gxc#current-compile-optimizer-info)
                     '2
                     gxc#optimizer-info::t
                     '#f))
                   (_id285097_
                    (##structure-ref
                     _ctx285093_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_mod285099_
                    (let ()
                      (declare (not safe))
                      (table-ref _ht285095_ _id285097_ '#f))))
              (let ((_$e285102_ _mod285099_))
                (if _$e285102_
                    _$e285102_
                    (let* ((_mod285105_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-import-ssxi _ctx285093_)))
                           (_val285110_
                            (let ((_$e285107_ _mod285105_))
                              (if _$e285107_ _$e285107_ '#!void))))
                      (let ()
                        (declare (not safe))
                        (table-set! _ht285095_ _id285097_ _val285110_))
                      _val285110_)))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_ctx285091_)
        (if (##structure-ref _ctx285091_ '1 gx#expander-context::t '#f)
            (let ((__tmp289694
                   (##structure-ref
                    _ctx285091_
                    '1
                    gx#expander-context::t
                    '#f)))
              (declare (not safe))
              (gxc#optimizer-import-ssxi-by-id __tmp289694))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_id285068_)
        (letrec ((_catch-e285070_
                  (lambda (_exn285089_)
                    (if (gxc#current-compile-verbose)
                        (begin
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"Failed to load ssxi module for "
                             _id285068_))
                          (display-exception _exn285089_))
                        '#!void)
                    '#f))
                 (_import-e285071_
                  (lambda ()
                    (let* ((_str-id285074_
                            (string-append
                             (let ()
                               (declare (not safe))
                               (gxc#module-id->path-string _id285068_))
                             '".ssxi"))
                           (_artefact-path285082_
                            (let ((_odir285075285077_
                                   (gxc#current-compile-output-dir)))
                              (if _odir285075285077_
                                  (let ((_odir285080_ _odir285075285077_))
                                    (path-expand
                                     (string-append _str-id285074_ '".ss")
                                     _odir285080_))
                                  '#f)))
                           (_library-path285084_
                            (string->symbol
                             (string-append '":" _str-id285074_ '".ss")))
                           (_ssxi-path285086_
                            (if (and _artefact-path285082_
                                     (file-exists? _artefact-path285082_))
                                _artefact-path285082_
                                _library-path285084_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _ssxi-path285086_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _ssxi-path285086_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (with-catch _catch-e285070_ _import-e285071_)))))
    (define gxc#optimize-source
      (lambda (_stx285059_)
        (let () (declare (not safe)) (gxc#apply-collect-mutators _stx285059_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _stx285059_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _stx285059_))
        (let* ((_stx285061_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _stx285059_)))
               (_stx285063_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _stx285061_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _stx285063_))
          (let ((_stx285066_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _stx285063_))))
            (declare (not safe))
            (gxc#apply-optimize-call _stx285066_)))))
    (define gxc#&generate-ssxi
      (make-promise
       (lambda ()
         (let ((_tbl285056_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp289695 (force gxc#&generate-runtime-empty)))
             (declare (not safe))
             (hash-copy! _tbl285056_ __tmp289695))
           (let ()
             (declare (not safe))
             (table-set! _tbl285056_ '%#begin gxc#generate-runtime-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl285056_
              '%#begin-syntax
              gxc#generate-ssxi-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl285056_ '%#module gxc#generate-ssxi-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl285056_
              '%#define-values
              gxc#generate-ssxi-define-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl285056_ '%#call gxc#generate-ssxi-call%))
           _tbl285056_))))
    (define gxc#apply-generate-ssxi
      (lambda (_stx285039_ . _args285041_)
        (let ((__tmp289697
               (lambda ()
                 (declare (not safe))
                 (if (null? _args285041_)
                     (gxc#compile-e__0 _stx285039_)
                     (let ((_arg1285046_ (car _args285041_))
                           (_rest285048_ (cdr _args285041_)))
                       (if (null? _rest285048_)
                           (gxc#compile-e__1 _stx285039_ _arg1285046_)
                           (let ((_arg2285051_ (car _rest285048_))
                                 (_rest285053_ (cdr _rest285048_)))
                             (if (null? _rest285053_)
                                 (gxc#compile-e__2
                                  _stx285039_
                                  _arg1285046_
                                  _arg2285051_)
                                 (apply gxc#compile-e
                                        _stx285039_
                                        _arg1285046_
                                        _arg2285051_
                                        _rest285053_))))))))
              (__tmp289696 (force gxc#&generate-ssxi)))
          (declare (not safe))
          (call-with-parameters
           __tmp289697
           gxc#current-compile-methods
           __tmp289696))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_stx285000_)
        (let* ((_g285002285012_
                (lambda (_g285003285009_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g285003285009_))))
               (_g285001285036_
                (lambda (_g285003285015_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g285003285015_))
                      (let ((_e285007285017_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g285003285015_))))
                        (let ((_hd285006285020_
                               (let ()
                                 (declare (not safe))
                                 (##car _e285007285017_)))
                              (_tl285005285022_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e285007285017_))))
                          ((lambda (_L285025_)
                             (let ((__tmp289700
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _stx285000_))))
                                   (__tmp289698
                                    (let ((__tmp289699
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp289699 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp289700
                                gx#current-expander-phi
                                __tmp289698)))
                           _tl285005285022_)))
                      (let ()
                        (declare (not safe))
                        (_g285002285012_ _g285003285015_))))))
          (declare (not safe))
          (_g285001285036_ _stx285000_))))
    (define gxc#generate-ssxi-module%
      (lambda (_stx284940_)
        (let* ((_g284942284956_
                (lambda (_g284943284953_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g284943284953_))))
               (_g284941284997_
                (lambda (_g284943284959_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g284943284959_))
                      (let ((_e284948284961_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g284943284959_))))
                        (let ((_hd284947284964_
                               (let ()
                                 (declare (not safe))
                                 (##car _e284948284961_)))
                              (_tl284946284966_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e284948284961_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl284946284966_))
                              (let ((_e284951284969_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl284946284966_))))
                                (let ((_hd284950284972_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e284951284969_)))
                                      (_tl284949284974_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e284951284969_))))
                                  ((lambda (_L284977_ _L284978_)
                                     (let* ((_ctx284991_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L284978_)))
                                            (_code284993_
                                             (##structure-ref
                                              _ctx284991_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp289701
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _code284993_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp289701
                                          gx#current-expander-context
                                          _ctx284991_))))
                                   _tl284949284974_
                                   _hd284950284972_)))
                              (let ()
                                (declare (not safe))
                                (_g284942284956_ _g284943284959_)))))
                      (let ()
                        (declare (not safe))
                        (_g284942284956_ _g284943284959_))))))
          (declare (not safe))
          (_g284941284997_ _stx284940_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_stx284750_)
        (letrec ((_generate-e284752_
                  (lambda (_id284929_)
                    (let* ((_sym284931_
                            (if (let ((__tmp289702
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp289702))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _id284929_))
                                '#f))
                           (_$e284933_
                            (if _sym284931_
                                (let ()
                                  (declare (not safe))
                                  (gxc#optimizer-lookup-type _sym284931_))
                                '#f)))
                      (if _$e284933_
                          ((lambda (_type284936_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"generate typedecl " _sym284931_))
                             (let* ((_typedecl284938_
                                     (let ((__method289671
                                            (let ()
                                              (declare (not safe))
                                              (method-ref
                                               _type284936_
                                               'typedecl))))
                                       (if __method289671
                                           (__method289671 _type284936_)
                                           (error '"Missing method"
                                                  _type284936_
                                                  'typedecl))))
                                    (__tmp289703
                                     (let ((__tmp289704
                                            (let ()
                                              (declare (not safe))
                                              (cons _typedecl284938_ '()))))
                                       (declare (not safe))
                                       (cons _sym284931_ __tmp289704))))
                               (declare (not safe))
                               (cons 'declare-type __tmp289703)))
                           _$e284933_)
                          '(begin))))))
          (let* ((___stx289369289370_ _stx284750_)
                 (_g284755284793_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx289369289370_)))))
            (let ((___kont289371289372_
                   (lambda (_L284911_)
                     (let ()
                       (declare (not safe))
                       (_generate-e284752_ _L284911_))))
                  (___kont289373289374_
                   (lambda (_L284846_)
                     (let ((_types284872_
                            (map _generate-e284752_
                                 (let ((__tmp289705
                                        (lambda (_g284864284867_
                                                 _g284865284869_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g284864284867_
                                                  _g284865284869_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp289705 '() _L284846_)))))
                       (declare (not safe))
                       (cons 'begin _types284872_)))))
              (let ((___match289424289425_
                     (lambda (_e284773284798_
                              _hd284772284801_
                              _tl284771284803_
                              _e284776284806_
                              _hd284775284809_
                              _tl284774284811_
                              ___splice289375289376_
                              _target284777284814_
                              _tl284779284816_)
                       (letrec ((_loop284780284819_
                                 (lambda (_hd284778284822_ _id284784284824_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd284778284822_))
                                       (let ((_e284781284827_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd284778284822_))))
                                         (let ((_lp-tl284783284832_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e284781284827_)))
                                               (_lp-hd284782284830_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e284781284827_))))
                                           (let ((__tmp289706
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd284782284830_
                                                          _id284784284824_))))
                                             (declare (not safe))
                                             (_loop284780284819_
                                              _lp-tl284783284832_
                                              __tmp289706))))
                                       (let ((_id284785284835_
                                              (reverse _id284784284824_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl284774284811_))
                                             (let ((_e284788284838_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl284774284811_))))
                                               (let ((_tl284786284843_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e284788284838_)))
                                                     (_hd284787284841_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e284788284838_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl284786284843_))
                                                     (___kont289373289374_
                                                      _id284785284835_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g284755284793_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g284755284793_))))))))
                         (let ()
                           (declare (not safe))
                           (_loop284780284819_ _target284777284814_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx289369289370_))
                    (let ((_e284760284879_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx289369289370_))))
                      (let ((_tl284758284884_
                             (let ()
                               (declare (not safe))
                               (##cdr _e284760284879_)))
                            (_hd284759284882_
                             (let ()
                               (declare (not safe))
                               (##car _e284760284879_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl284758284884_))
                            (let ((_e284763284887_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl284758284884_))))
                              (let ((_tl284761284892_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e284763284887_)))
                                    (_hd284762284890_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e284763284887_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd284762284890_))
                                    (let ((_e284766284895_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd284762284890_))))
                                      (let ((_tl284764284900_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e284766284895_)))
                                            (_hd284765284898_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e284766284895_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl284764284900_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl284761284892_))
                                                (let ((_e284769284903_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl284761284892_))))
                                                  (let ((_tl284767284908_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e284769284903_)))
                                                        (_hd284768284906_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e284769284903_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl284767284908_))
                                                        (___kont289371289372_
                                                         _hd284765284898_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _hd284762284890_))
                                                            (let ((___splice289375289376_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _hd284762284890_ '0))))
                      (let ((_tl284779284816_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice289375289376_ '1)))
                            (_target284777284814_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice289375289376_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl284779284816_))
                            (___match289424289425_
                             _e284760284879_
                             _hd284759284882_
                             _tl284758284884_
                             _e284763284887_
                             _hd284762284890_
                             _tl284761284892_
                             ___splice289375289376_
                             _target284777284814_
                             _tl284779284816_)
                            (let () (declare (not safe)) (_g284755284793_)))))
                    (let () (declare (not safe)) (_g284755284793_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _hd284762284890_))
                                                    (let ((___splice289375289376_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _hd284762284890_
                                                              '0))))
                                                      (let ((_tl284779284816_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice289375289376_ '1)))
                    (_target284777284814_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice289375289376_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl284779284816_))
                    (___match289424289425_
                     _e284760284879_
                     _hd284759284882_
                     _tl284758284884_
                     _e284763284887_
                     _hd284762284890_
                     _tl284761284892_
                     ___splice289375289376_
                     _target284777284814_
                     _tl284779284816_)
                    (let () (declare (not safe)) (_g284755284793_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g284755284793_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _hd284762284890_))
                                                (let ((___splice289375289376_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _hd284762284890_
                                                          '0))))
                                                  (let ((_tl284779284816_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice289375289376_
                                                            '1)))
                                                        (_target284777284814_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice289375289376_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl284779284816_))
                                                        (___match289424289425_
                                                         _e284760284879_
                                                         _hd284759284882_
                                                         _tl284758284884_
                                                         _e284763284887_
                                                         _hd284762284890_
                                                         _tl284761284892_
                                                         ___splice289375289376_
                                                         _target284777284814_
                                                         _tl284779284816_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g284755284793_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g284755284793_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd284762284890_))
                                        (let ((___splice289375289376_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd284762284890_
                                                  '0))))
                                          (let ((_tl284779284816_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice289375289376_
                                                    '1)))
                                                (_target284777284814_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice289375289376_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl284779284816_))
                                                (___match289424289425_
                                                 _e284760284879_
                                                 _hd284759284882_
                                                 _tl284758284884_
                                                 _e284763284887_
                                                 _hd284762284890_
                                                 _tl284761284892_
                                                 ___splice289375289376_
                                                 _target284777284814_
                                                 _tl284779284816_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g284755284793_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g284755284793_))))))
                            (let () (declare (not safe)) (_g284755284793_)))))
                    (let () (declare (not safe)) (_g284755284793_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_stx284304_)
        (let* ((___stx289427289428_ _stx284304_)
               (_g284308284410_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx289427289428_)))))
          (let ((___kont289429289430_
                 (lambda (_L284700_ _L284701_ _L284702_ _L284703_ _L284704_)
                   (let ((__tmp289707
                          (let ((__tmp289714
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L284703_)))
                                (__tmp289708
                                 (let ((__tmp289713
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L284702_)))
                                       (__tmp289709
                                        (let ((__tmp289712
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L284701_)))
                                              (__tmp289710
                                               (let ((__tmp289711
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L284700_))))
                                                 (declare (not safe))
                                                 (cons __tmp289711 '()))))
                                          (declare (not safe))
                                          (cons __tmp289712 __tmp289710))))
                                   (declare (not safe))
                                   (cons __tmp289713 __tmp289709))))
                            (declare (not safe))
                            (cons __tmp289714 __tmp289708))))
                     (declare (not safe))
                     (cons 'declare-method __tmp289707))))
                (___kont289431289432_
                 (lambda (_L284526_ _L284527_ _L284528_ _L284529_)
                   (let ((__tmp289715
                          (let ((__tmp289721
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L284528_)))
                                (__tmp289716
                                 (let ((__tmp289720
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L284527_)))
                                       (__tmp289717
                                        (let ((__tmp289719
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L284526_)))
                                              (__tmp289718
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '#f '()))))
                                          (declare (not safe))
                                          (cons __tmp289719 __tmp289718))))
                                   (declare (not safe))
                                   (cons __tmp289720 __tmp289717))))
                            (declare (not safe))
                            (cons __tmp289721 __tmp289716))))
                     (declare (not safe))
                     (cons 'declare-method __tmp289715))))
                (___kont289433289434_ (lambda () '(begin))))
            (let ((___match289562289563_
                   (lambda (_e284317284572_
                            _hd284316284575_
                            _tl284315284577_
                            _e284320284580_
                            _hd284319284583_
                            _tl284318284585_
                            _e284323284588_
                            _hd284322284591_
                            _tl284321284593_
                            _e284326284596_
                            _hd284325284599_
                            _tl284324284601_
                            _e284329284604_
                            _hd284328284607_
                            _tl284327284609_
                            _e284332284612_
                            _hd284331284615_
                            _tl284330284617_
                            _e284335284620_
                            _hd284334284623_
                            _tl284333284625_
                            _e284338284628_
                            _hd284337284631_
                            _tl284336284633_
                            _e284341284636_
                            _hd284340284639_
                            _tl284339284641_
                            _e284344284644_
                            _hd284343284647_
                            _tl284342284649_
                            _e284347284652_
                            _hd284346284655_
                            _tl284345284657_
                            _e284350284660_
                            _hd284349284663_
                            _tl284348284665_
                            _e284353284668_
                            _hd284352284671_
                            _tl284351284673_
                            _e284356284676_
                            _hd284355284679_
                            _tl284354284681_
                            _e284359284684_
                            _hd284358284687_
                            _tl284357284689_
                            _e284362284692_
                            _hd284361284695_
                            _tl284360284697_)
                     (let ((_L284700_ _hd284361284695_)
                           (_L284701_ _hd284352284671_)
                           (_L284702_ _hd284343284647_)
                           (_L284703_ _hd284334284623_)
                           (_L284704_ _hd284325284599_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L284704_
                              'bind-method!))
                           (___kont289429289430_
                            _L284700_
                            _L284701_
                            _L284702_
                            _L284703_
                            _L284704_)
                           (___kont289433289434_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx289427289428_))
                  (let ((_e284317284572_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx289427289428_))))
                    (let ((_tl284315284577_
                           (let ()
                             (declare (not safe))
                             (##cdr _e284317284572_)))
                          (_hd284316284575_
                           (let ()
                             (declare (not safe))
                             (##car _e284317284572_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl284315284577_))
                          (let ((_e284320284580_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl284315284577_))))
                            (let ((_tl284318284585_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e284320284580_)))
                                  (_hd284319284583_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e284320284580_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd284319284583_))
                                  (let ((_e284323284588_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd284319284583_))))
                                    (let ((_tl284321284593_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e284323284588_)))
                                          (_hd284322284591_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e284323284588_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd284322284591_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd284322284591_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl284321284593_))
                                                  (let ((_e284326284596_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl284321284593_))))
                                                    (let ((_tl284324284601_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e284326284596_)))
                                                          (_hd284325284599_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e284326284596_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl284324284601_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl284318284585_))
                      (let ((_e284329284604_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl284318284585_))))
                        (let ((_tl284327284609_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e284329284604_)))
                              (_hd284328284607_
                               (let ()
                                 (declare (not safe))
                                 (##car _e284329284604_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd284328284607_))
                              (let ((_e284332284612_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd284328284607_))))
                                (let ((_tl284330284617_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e284332284612_)))
                                      (_hd284331284615_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e284332284612_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd284331284615_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd284331284615_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl284330284617_))
                                              (let ((_e284335284620_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl284330284617_))))
                                                (let ((_tl284333284625_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e284335284620_)))
                                                      (_hd284334284623_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e284335284620_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl284333284625_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl284327284609_))
                                                          (let ((_e284338284628_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl284327284609_))))
                    (let ((_tl284336284633_
                           (let ()
                             (declare (not safe))
                             (##cdr _e284338284628_)))
                          (_hd284337284631_
                           (let ()
                             (declare (not safe))
                             (##car _e284338284628_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd284337284631_))
                          (let ((_e284341284636_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd284337284631_))))
                            (let ((_tl284339284641_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e284341284636_)))
                                  (_hd284340284639_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e284341284636_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd284340284639_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd284340284639_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl284339284641_))
                                          (let ((_e284344284644_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl284339284641_))))
                                            (let ((_tl284342284649_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e284344284644_)))
                                                  (_hd284343284647_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e284344284644_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl284342284649_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl284336284633_))
                                                      (let ((_e284347284652_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl284336284633_))))
                (let ((_tl284345284657_
                       (let () (declare (not safe)) (##cdr _e284347284652_)))
                      (_hd284346284655_
                       (let () (declare (not safe)) (##car _e284347284652_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd284346284655_))
                      (let ((_e284350284660_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd284346284655_))))
                        (let ((_tl284348284665_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e284350284660_)))
                              (_hd284349284663_
                               (let ()
                                 (declare (not safe))
                                 (##car _e284350284660_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd284349284663_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd284349284663_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl284348284665_))
                                      (let ((_e284353284668_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl284348284665_))))
                                        (let ((_tl284351284673_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e284353284668_)))
                                              (_hd284352284671_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e284353284668_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl284351284673_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl284345284657_))
                                                  (let ((_e284356284676_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl284345284657_))))
                                                    (let ((_tl284354284681_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e284356284676_)))
                                                          (_hd284355284679_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e284356284676_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd284355284679_))
                                                          (let ((_e284359284684_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd284355284679_))))
                    (let ((_tl284357284689_
                           (let ()
                             (declare (not safe))
                             (##cdr _e284359284684_)))
                          (_hd284358284687_
                           (let ()
                             (declare (not safe))
                             (##car _e284359284684_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd284358284687_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd284358284687_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl284357284689_))
                                  (let ((_e284362284692_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl284357284689_))))
                                    (let ((_tl284360284697_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e284362284692_)))
                                          (_hd284361284695_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e284362284692_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl284360284697_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl284354284681_))
                                              (___match289562289563_
                                               _e284317284572_
                                               _hd284316284575_
                                               _tl284315284577_
                                               _e284320284580_
                                               _hd284319284583_
                                               _tl284318284585_
                                               _e284323284588_
                                               _hd284322284591_
                                               _tl284321284593_
                                               _e284326284596_
                                               _hd284325284599_
                                               _tl284324284601_
                                               _e284329284604_
                                               _hd284328284607_
                                               _tl284327284609_
                                               _e284332284612_
                                               _hd284331284615_
                                               _tl284330284617_
                                               _e284335284620_
                                               _hd284334284623_
                                               _tl284333284625_
                                               _e284338284628_
                                               _hd284337284631_
                                               _tl284336284633_
                                               _e284341284636_
                                               _hd284340284639_
                                               _tl284339284641_
                                               _e284344284644_
                                               _hd284343284647_
                                               _tl284342284649_
                                               _e284347284652_
                                               _hd284346284655_
                                               _tl284345284657_
                                               _e284350284660_
                                               _hd284349284663_
                                               _tl284348284665_
                                               _e284353284668_
                                               _hd284352284671_
                                               _tl284351284673_
                                               _e284356284676_
                                               _hd284355284679_
                                               _tl284354284681_
                                               _e284359284684_
                                               _hd284358284687_
                                               _tl284357284689_
                                               _e284362284692_
                                               _hd284361284695_
                                               _tl284360284697_)
                                              (___kont289433289434_))
                                          (___kont289433289434_))))
                                  (___kont289433289434_))
                              (___kont289433289434_))
                          (___kont289433289434_))))
                  (___kont289433289434_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl284345284657_))
                                                      (if (let ((__tmp289722
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp289722 'bind-method!))
                  (let ((_L284526_ _hd284352284671_)
                        (_L284527_ _hd284343284647_)
                        (_L284528_ _hd284334284623_)
                        (_L284529_ _hd284325284599_))
                    (___kont289431289432_
                     _L284526_
                     _L284527_
                     _L284528_
                     _L284529_))
                  (___kont289433289434_))
              (___kont289433289434_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont289433289434_))))
                                      (___kont289433289434_))
                                  (___kont289433289434_))
                              (___kont289433289434_))))
                      (___kont289433289434_))))
              (___kont289433289434_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont289433289434_))))
                                          (___kont289433289434_))
                                      (___kont289433289434_))
                                  (___kont289433289434_))))
                          (___kont289433289434_))))
                  (___kont289433289434_))
              (___kont289433289434_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont289433289434_))
                                          (___kont289433289434_))
                                      (___kont289433289434_))))
                              (___kont289433289434_))))
                      (___kont289433289434_))
                  (___kont289433289434_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont289433289434_))
                                              (___kont289433289434_))
                                          (___kont289433289434_))))
                                  (___kont289433289434_))))
                          (___kont289433289434_))))
                  (___kont289433289434_)))))))
    (define gxc#!alias::typedecl
      (lambda (_self284280_)
        (let* ((_self284281284287_ _self284280_)
               (_E284283284291_
                (lambda () (error '"No clause matching" _self284281284287_)))
               (_K284284284296_
                (lambda (_alias-id284294_)
                  (let ((__tmp289723
                         (let ()
                           (declare (not safe))
                           (cons _alias-id284294_ '()))))
                    (declare (not safe))
                    (cons '@alias __tmp289723)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self284281284287_ 'gxc#!alias::t))
              (let* ((_e284285284299_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284281284287_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_alias-id284302_ _e284285284299_))
                (declare (not safe))
                (_K284284284296_ _alias-id284302_))
              (let () (declare (not safe)) (_E284283284291_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_self284078_)
        (let* ((_self284079284093_ _self284078_)
               (_E284081284097_
                (lambda () (error '"No clause matching" _self284079284093_)))
               (_K284082284110_
                (lambda (_methods284100_
                         _final?284101_
                         _struct?284102_
                         _constructor284103_
                         _fields284104_
                         _slots284105_
                         _precendence-list284106_
                         _super284107_
                         _id284108_)
                  (let ((__tmp289724
                         (let ((__tmp289725
                                (let ((__tmp289726
                                       (let ((__tmp289727
                                              (let ((__tmp289728
                                                     (let ((__tmp289729
                                                            (let ((__tmp289730
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp289731
                                  (let ((__tmp289732
                                         (let ((__tmp289733
                                                (if _methods284100_
                                                    (let ()
                                                      (declare (not safe))
                                                      (table->list
                                                       _methods284100_))
                                                    '#f)))
                                           (declare (not safe))
                                           (cons __tmp289733 '()))))
                                    (declare (not safe))
                                    (cons _final?284101_ __tmp289732))))
                             (declare (not safe))
                             (cons _struct?284102_ __tmp289731))))
                      (declare (not safe))
                      (cons _constructor284103_ __tmp289730))))
               (declare (not safe))
               (cons _fields284104_ __tmp289729))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _slots284105_
                                                      __tmp289728))))
                                         (declare (not safe))
                                         (cons _precendence-list284106_
                                               __tmp289727))))
                                  (declare (not safe))
                                  (cons _super284107_ __tmp289726))))
                           (declare (not safe))
                           (cons _id284108_ __tmp289725))))
                    (declare (not safe))
                    (cons '@class __tmp289724)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self284079284093_ 'gxc#!class::t))
              (let* ((_e284083284113_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284079284093_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_id284116_ _e284083284113_)
                     (_e284084284118_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284079284093_
                         '2
                         gxc#!class::t
                         '#f)))
                     (_super284121_ _e284084284118_)
                     (_e284085284123_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284079284093_
                         '3
                         gxc#!class::t
                         '#f)))
                     (_precendence-list284126_ _e284085284123_)
                     (_e284086284128_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284079284093_
                         '4
                         gxc#!class::t
                         '#f)))
                     (_slots284131_ _e284086284128_)
                     (_e284087284133_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284079284093_
                         '5
                         gxc#!class::t
                         '#f)))
                     (_fields284136_ _e284087284133_)
                     (_e284088284138_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284079284093_
                         '6
                         gxc#!class::t
                         '#f)))
                     (_constructor284141_ _e284088284138_)
                     (_e284089284143_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284079284093_
                         '7
                         gxc#!class::t
                         '#f)))
                     (_struct?284146_ _e284089284143_)
                     (_e284090284148_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284079284093_
                         '8
                         gxc#!class::t
                         '#f)))
                     (_final?284151_ _e284090284148_)
                     (_e284091284153_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284079284093_
                         '9
                         gxc#!class::t
                         '#f)))
                     (_methods284156_ _e284091284153_))
                (declare (not safe))
                (_K284082284110_
                 _methods284156_
                 _final?284151_
                 _struct?284146_
                 _constructor284141_
                 _fields284136_
                 _slots284131_
                 _precendence-list284126_
                 _super284121_
                 _id284116_))
              (let () (declare (not safe)) (_E284081284097_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_self283932_)
        (let* ((_self283933283939_ _self283932_)
               (_E283935283943_
                (lambda () (error '"No clause matching" _self283933283939_)))
               (_K283936283948_
                (lambda (_klass-id283946_)
                  (let ((__tmp289734
                         (let ()
                           (declare (not safe))
                           (cons _klass-id283946_ '()))))
                    (declare (not safe))
                    (cons '@predicate __tmp289734)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self283933283939_
                 'gxc#!predicate::t))
              (let* ((_e283937283951_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283933283939_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id283954_ _e283937283951_))
                (declare (not safe))
                (_K283936283948_ _klass-id283954_))
              (let () (declare (not safe)) (_E283935283943_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!predicate::t 'typedecl gxc#!predicate::typedecl '#f))
    (define gxc#!constructor::typedecl
      (lambda (_self283786_)
        (let* ((_self283787283793_ _self283786_)
               (_E283789283797_
                (lambda () (error '"No clause matching" _self283787283793_)))
               (_K283790283802_
                (lambda (_klass-id283800_)
                  (let ((__tmp289735
                         (let ()
                           (declare (not safe))
                           (cons _klass-id283800_ '()))))
                    (declare (not safe))
                    (cons '@constrctuor __tmp289735)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self283787283793_
                 'gxc#!constructor::t))
              (let* ((_e283791283805_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283787283793_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id283808_ _e283791283805_))
                (declare (not safe))
                (_K283790283802_ _klass-id283808_))
              (let () (declare (not safe)) (_E283789283797_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_self283626_)
        (let* ((_self283627283635_ _self283626_)
               (_E283629283639_
                (lambda () (error '"No clause matching" _self283627283635_)))
               (_K283630283646_
                (lambda (_checked?283642_ _slot283643_ _klass-id283644_)
                  (let ((__tmp289736
                         (let ((__tmp289737
                                (let ((__tmp289738
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?283642_ '()))))
                                  (declare (not safe))
                                  (cons _slot283643_ __tmp289738))))
                           (declare (not safe))
                           (cons _klass-id283644_ __tmp289737))))
                    (declare (not safe))
                    (cons '@accessor __tmp289736)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self283627283635_
                 'gxc#!accessor::t))
              (let* ((_e283631283649_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283627283635_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id283652_ _e283631283649_)
                     (_e283632283654_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283627283635_
                         '2
                         gxc#!accessor::t
                         '#f)))
                     (_slot283657_ _e283632283654_)
                     (_e283633283659_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283627283635_
                         '3
                         gxc#!accessor::t
                         '#f)))
                     (_checked?283662_ _e283633283659_))
                (declare (not safe))
                (_K283630283646_
                 _checked?283662_
                 _slot283657_
                 _klass-id283652_))
              (let () (declare (not safe)) (_E283629283639_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_self283466_)
        (let* ((_self283467283475_ _self283466_)
               (_E283469283479_
                (lambda () (error '"No clause matching" _self283467283475_)))
               (_K283470283486_
                (lambda (_checked?283482_ _slot283483_ _klass-id283484_)
                  (let ((__tmp289739
                         (let ((__tmp289740
                                (let ((__tmp289741
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?283482_ '()))))
                                  (declare (not safe))
                                  (cons _slot283483_ __tmp289741))))
                           (declare (not safe))
                           (cons _klass-id283484_ __tmp289740))))
                    (declare (not safe))
                    (cons '@mutator __tmp289739)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self283467283475_ 'gxc#!mutator::t))
              (let* ((_e283471283489_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283467283475_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id283492_ _e283471283489_)
                     (_e283472283494_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283467283475_
                         '2
                         gxc#!mutator::t
                         '#f)))
                     (_slot283497_ _e283472283494_)
                     (_e283473283499_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283467283475_
                         '3
                         gxc#!mutator::t
                         '#f)))
                     (_checked?283502_ _e283473283499_))
                (declare (not safe))
                (_K283470283486_
                 _checked?283502_
                 _slot283497_
                 _klass-id283492_))
              (let () (declare (not safe)) (_E283469283479_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!struct-type::typedecl
      (lambda (_self283288_)
        (let* ((_self283289283300_ _self283288_)
               (_E283291283304_
                (lambda () (error '"No clause matching" _self283289283300_)))
               (_K283292283313_
                (lambda (_plist283307_
                         _ctor283308_
                         _fields283309_
                         _super283310_
                         _type-id283311_)
                  (let ((__tmp289742
                         (let ((__tmp289743
                                (let ((__tmp289744
                                       (let ((__tmp289745
                                              (let ((__tmp289746
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _plist283307_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _ctor283308_
                                                      __tmp289746))))
                                         (declare (not safe))
                                         (cons _fields283309_ __tmp289745))))
                                  (declare (not safe))
                                  (cons _super283310_ __tmp289744))))
                           (declare (not safe))
                           (cons _type-id283311_ __tmp289743))))
                    (declare (not safe))
                    (cons '@struct-type __tmp289742)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self283289283300_
                 'gxc#!struct-type::t))
              (let* ((_e283293283316_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283289283300_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_type-id283319_ _e283293283316_)
                     (_e283294283321_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283289283300_
                         '2
                         gxc#!struct-type::t
                         '#f)))
                     (_super283324_ _e283294283321_)
                     (_e283295283326_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283289283300_
                         '3
                         gxc#!struct-type::t
                         '#f)))
                     (_fields283329_ _e283295283326_)
                     (_e283296283331_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283289283300_
                         '4
                         gxc#!struct-type::t
                         '#f)))
                     (_e283297283334_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283289283300_
                         '5
                         gxc#!struct-type::t
                         '#f)))
                     (_ctor283337_ _e283297283334_)
                     (_e283298283339_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283289283300_
                         '6
                         gxc#!struct-type::t
                         '#f)))
                     (_plist283342_ _e283298283339_))
                (declare (not safe))
                (_K283292283313_
                 _plist283342_
                 _ctor283337_
                 _fields283329_
                 _super283324_
                 _type-id283319_))
              (let () (declare (not safe)) (_E283291283304_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!struct-type::t
       'typedecl
       gxc#!struct-type::typedecl
       '#f))
    (define gxc#!struct-pred::typedecl
      (lambda (_self283142_)
        (let* ((_self283143283149_ _self283142_)
               (_E283145283153_
                (lambda () (error '"No clause matching" _self283143283149_)))
               (_K283146283158_
                (lambda (_struct-t283156_)
                  (let ((__tmp289747
                         (let ()
                           (declare (not safe))
                           (cons _struct-t283156_ '()))))
                    (declare (not safe))
                    (cons '@struct-pred __tmp289747)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self283143283149_
                 'gxc#!struct-pred::t))
              (let* ((_e283147283161_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283143283149_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_struct-t283164_ _e283147283161_))
                (declare (not safe))
                (_K283146283158_ _struct-t283164_))
              (let () (declare (not safe)) (_E283145283153_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!struct-pred::t
       'typedecl
       gxc#!struct-pred::typedecl
       '#f))
    (define gxc#!struct-cons::typedecl
      (lambda (_self282996_)
        (let* ((_self282997283003_ _self282996_)
               (_E282999283007_
                (lambda () (error '"No clause matching" _self282997283003_)))
               (_K283000283012_
                (lambda (_struct-t283010_)
                  (let ((__tmp289748
                         (let ()
                           (declare (not safe))
                           (cons _struct-t283010_ '()))))
                    (declare (not safe))
                    (cons '@struct-cons __tmp289748)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self282997283003_
                 'gxc#!struct-cons::t))
              (let* ((_e283001283015_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self282997283003_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_struct-t283018_ _e283001283015_))
                (declare (not safe))
                (_K283000283012_ _struct-t283018_))
              (let () (declare (not safe)) (_E282999283007_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!struct-cons::t
       'typedecl
       gxc#!struct-cons::typedecl
       '#f))
    (define gxc#!struct-getf::typedecl
      (lambda (_self282836_)
        (let* ((_self282837282845_ _self282836_)
               (_E282839282849_
                (lambda () (error '"No clause matching" _self282837282845_)))
               (_K282840282856_
                (lambda (_unchecked?282852_ _off282853_ _struct-t282854_)
                  (let ((__tmp289749
                         (let ((__tmp289750
                                (let ((__tmp289751
                                       (let ()
                                         (declare (not safe))
                                         (cons _unchecked?282852_ '()))))
                                  (declare (not safe))
                                  (cons _off282853_ __tmp289751))))
                           (declare (not safe))
                           (cons _struct-t282854_ __tmp289750))))
                    (declare (not safe))
                    (cons '@struct-getf __tmp289749)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self282837282845_
                 'gxc#!struct-getf::t))
              (let* ((_e282841282859_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self282837282845_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_struct-t282862_ _e282841282859_)
                     (_e282842282864_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self282837282845_
                         '2
                         gxc#!struct-getf::t
                         '#f)))
                     (_off282867_ _e282842282864_)
                     (_e282843282869_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self282837282845_
                         '3
                         gxc#!struct-getf::t
                         '#f)))
                     (_unchecked?282872_ _e282843282869_))
                (declare (not safe))
                (_K282840282856_
                 _unchecked?282872_
                 _off282867_
                 _struct-t282862_))
              (let () (declare (not safe)) (_E282839282849_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!struct-getf::t
       'typedecl
       gxc#!struct-getf::typedecl
       '#f))
    (define gxc#!struct-setf::typedecl
      (lambda (_self282676_)
        (let* ((_self282677282685_ _self282676_)
               (_E282679282689_
                (lambda () (error '"No clause matching" _self282677282685_)))
               (_K282680282696_
                (lambda (_unchecked?282692_ _off282693_ _struct-t282694_)
                  (let ((__tmp289752
                         (let ((__tmp289753
                                (let ((__tmp289754
                                       (let ()
                                         (declare (not safe))
                                         (cons _unchecked?282692_ '()))))
                                  (declare (not safe))
                                  (cons _off282693_ __tmp289754))))
                           (declare (not safe))
                           (cons _struct-t282694_ __tmp289753))))
                    (declare (not safe))
                    (cons '@struct-setf __tmp289752)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self282677282685_
                 'gxc#!struct-setf::t))
              (let* ((_e282681282699_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self282677282685_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_struct-t282702_ _e282681282699_)
                     (_e282682282704_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self282677282685_
                         '2
                         gxc#!struct-setf::t
                         '#f)))
                     (_off282707_ _e282682282704_)
                     (_e282683282709_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self282677282685_
                         '3
                         gxc#!struct-setf::t
                         '#f)))
                     (_unchecked?282712_ _e282683282709_))
                (declare (not safe))
                (_K282680282696_
                 _unchecked?282712_
                 _off282707_
                 _struct-t282702_))
              (let () (declare (not safe)) (_E282679282689_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!struct-setf::t
       'typedecl
       gxc#!struct-setf::typedecl
       '#f))
    (define gxc#!class-type::typedecl
      (lambda (_self282488_)
        (let* ((_self282489282501_ _self282488_)
               (_E282491282505_
                (lambda () (error '"No clause matching" _self282489282501_)))
               (_K282492282516_
                (lambda (_plist282508_
                         _ctor282509_
                         _xslots282510_
                         _slots282511_
                         _mixin282512_
                         _super282513_
                         _type-id282514_)
                  (let ((__tmp289755
                         (let ((__tmp289756
                                (let ((__tmp289757
                                       (let ((__tmp289758
                                              (let ((__tmp289759
                                                     (let ((__tmp289760
                                                            (let ((__tmp289761
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _plist282508_ '()))))
                      (declare (not safe))
                      (cons _ctor282509_ __tmp289761))))
               (declare (not safe))
               (cons _xslots282510_ __tmp289760))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _slots282511_
                                                      __tmp289759))))
                                         (declare (not safe))
                                         (cons _mixin282512_ __tmp289758))))
                                  (declare (not safe))
                                  (cons _super282513_ __tmp289757))))
                           (declare (not safe))
                           (cons _type-id282514_ __tmp289756))))
                    (declare (not safe))
                    (cons '@class-type __tmp289755)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self282489282501_
                 'gxc#!class-type::t))
              (let* ((_e282493282519_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self282489282501_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_type-id282522_ _e282493282519_)
                     (_e282494282524_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self282489282501_
                         '2
                         gxc#!class-type::t
                         '#f)))
                     (_super282527_ _e282494282524_)
                     (_e282495282529_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self282489282501_
                         '3
                         gxc#!class-type::t
                         '#f)))
                     (_mixin282532_ _e282495282529_)
                     (_e282496282534_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self282489282501_
                         '4
                         gxc#!class-type::t
                         '#f)))
                     (_slots282537_ _e282496282534_)
                     (_e282497282539_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self282489282501_
                         '5
                         gxc#!class-type::t
                         '#f)))
                     (_xslots282542_ _e282497282539_)
                     (_e282498282544_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self282489282501_
                         '6
                         gxc#!class-type::t
                         '#f)))
                     (_ctor282547_ _e282498282544_)
                     (_e282499282549_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self282489282501_
                         '7
                         gxc#!class-type::t
                         '#f)))
                     (_plist282552_ _e282499282549_))
                (declare (not safe))
                (_K282492282516_
                 _plist282552_
                 _ctor282547_
                 _xslots282542_
                 _slots282537_
                 _mixin282532_
                 _super282527_
                 _type-id282522_))
              (let () (declare (not safe)) (_E282491282505_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!class-type::t
       'typedecl
       gxc#!class-type::typedecl
       '#f))
    (define gxc#!class-pred::typedecl
      (lambda (_self282342_)
        (let* ((_self282343282349_ _self282342_)
               (_E282345282353_
                (lambda () (error '"No clause matching" _self282343282349_)))
               (_K282346282358_
                (lambda (_class-t282356_)
                  (let ((__tmp289762
                         (let ()
                           (declare (not safe))
                           (cons _class-t282356_ '()))))
                    (declare (not safe))
                    (cons '@class-pred __tmp289762)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self282343282349_
                 'gxc#!class-pred::t))
              (let* ((_e282347282361_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self282343282349_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_class-t282364_ _e282347282361_))
                (declare (not safe))
                (_K282346282358_ _class-t282364_))
              (let () (declare (not safe)) (_E282345282353_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!class-pred::t
       'typedecl
       gxc#!class-pred::typedecl
       '#f))
    (define gxc#!class-cons::typedecl
      (lambda (_self282196_)
        (let* ((_self282197282203_ _self282196_)
               (_E282199282207_
                (lambda () (error '"No clause matching" _self282197282203_)))
               (_K282200282212_
                (lambda (_class-t282210_)
                  (let ((__tmp289763
                         (let ()
                           (declare (not safe))
                           (cons _class-t282210_ '()))))
                    (declare (not safe))
                    (cons '@class-cons __tmp289763)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self282197282203_
                 'gxc#!class-cons::t))
              (let* ((_e282201282215_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self282197282203_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_class-t282218_ _e282201282215_))
                (declare (not safe))
                (_K282200282212_ _class-t282218_))
              (let () (declare (not safe)) (_E282199282207_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!class-cons::t
       'typedecl
       gxc#!class-cons::typedecl
       '#f))
    (define gxc#!class-getf::typedecl
      (lambda (_self282036_)
        (let* ((_self282037282045_ _self282036_)
               (_E282039282049_
                (lambda () (error '"No clause matching" _self282037282045_)))
               (_K282040282056_
                (lambda (_unchecked?282052_ _slot282053_ _class-t282054_)
                  (let ((__tmp289764
                         (let ((__tmp289765
                                (let ((__tmp289766
                                       (let ()
                                         (declare (not safe))
                                         (cons _unchecked?282052_ '()))))
                                  (declare (not safe))
                                  (cons _slot282053_ __tmp289766))))
                           (declare (not safe))
                           (cons _class-t282054_ __tmp289765))))
                    (declare (not safe))
                    (cons '@class-getf __tmp289764)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self282037282045_
                 'gxc#!class-getf::t))
              (let* ((_e282041282059_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self282037282045_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_class-t282062_ _e282041282059_)
                     (_e282042282064_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self282037282045_
                         '2
                         gxc#!class-getf::t
                         '#f)))
                     (_slot282067_ _e282042282064_)
                     (_e282043282069_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self282037282045_
                         '3
                         gxc#!class-getf::t
                         '#f)))
                     (_unchecked?282072_ _e282043282069_))
                (declare (not safe))
                (_K282040282056_
                 _unchecked?282072_
                 _slot282067_
                 _class-t282062_))
              (let () (declare (not safe)) (_E282039282049_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!class-getf::t
       'typedecl
       gxc#!class-getf::typedecl
       '#f))
    (define gxc#!class-setf::typedecl
      (lambda (_self281876_)
        (let* ((_self281877281885_ _self281876_)
               (_E281879281889_
                (lambda () (error '"No clause matching" _self281877281885_)))
               (_K281880281896_
                (lambda (_unchecked?281892_ _slot281893_ _class-t281894_)
                  (let ((__tmp289767
                         (let ((__tmp289768
                                (let ((__tmp289769
                                       (let ()
                                         (declare (not safe))
                                         (cons _unchecked?281892_ '()))))
                                  (declare (not safe))
                                  (cons _slot281893_ __tmp289769))))
                           (declare (not safe))
                           (cons _class-t281894_ __tmp289768))))
                    (declare (not safe))
                    (cons '@class-setf __tmp289767)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self281877281885_
                 'gxc#!class-setf::t))
              (let* ((_e281881281899_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281877281885_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_class-t281902_ _e281881281899_)
                     (_e281882281904_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281877281885_
                         '2
                         gxc#!class-setf::t
                         '#f)))
                     (_slot281907_ _e281882281904_)
                     (_e281883281909_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281877281885_
                         '3
                         gxc#!class-setf::t
                         '#f)))
                     (_unchecked?281912_ _e281883281909_))
                (declare (not safe))
                (_K281880281896_
                 _unchecked?281912_
                 _slot281907_
                 _class-t281902_))
              (let () (declare (not safe)) (_E281879281889_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!class-setf::t
       'typedecl
       gxc#!class-setf::typedecl
       '#f))
    (define gxc#!lambda::typedecl
      (lambda (_self281702_)
        (let* ((_self281703281713_ _self281702_)
               (_E281705281717_
                (lambda () (error '"No clause matching" _self281703281713_)))
               (_K281706281728_
                (lambda (_typedecl281720_
                         _inline281721_
                         _dispatch281722_
                         _arity281723_)
                  (if _inline281721_
                      (let ((_$e281725_ _typedecl281720_))
                        (if _$e281725_
                            _$e281725_
                            (error '"Cannot generate typedecl for inline rules")))
                      (let ((__tmp289770
                             (let ((__tmp289771
                                    (let ()
                                      (declare (not safe))
                                      (cons _dispatch281722_ '()))))
                               (declare (not safe))
                               (cons _arity281723_ __tmp289771))))
                        (declare (not safe))
                        (cons '@lambda __tmp289770))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self281703281713_ 'gxc#!lambda::t))
              (let* ((_e281707281731_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281703281713_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e281708281734_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281703281713_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity281737_ _e281708281734_)
                     (_e281709281739_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281703281713_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch281742_ _e281709281739_)
                     (_e281710281744_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281703281713_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline281747_ _e281710281744_)
                     (_e281711281749_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281703281713_
                         '5
                         gxc#!lambda::t
                         '#f)))
                     (_typedecl281752_ _e281711281749_))
                (declare (not safe))
                (_K281706281728_
                 _typedecl281752_
                 _inline281747_
                 _dispatch281742_
                 _arity281737_))
              (let () (declare (not safe)) (_E281705281717_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_self281513_)
        (letrec ((_clause-e281515_
                  (lambda (_clause281545_)
                    (let* ((_clause281546281554_ _clause281545_)
                           (_E281548281558_
                            (lambda ()
                              (error '"No clause matching"
                                     _clause281546281554_)))
                           (_K281549281564_
                            (lambda (_dispatch281561_ _arity281562_)
                              (let ((__tmp289772
                                     (let ()
                                       (declare (not safe))
                                       (cons _dispatch281561_ '()))))
                                (declare (not safe))
                                (cons _arity281562_ __tmp289772)))))
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _clause281546281554_
                             'gxc#!lambda::t))
                          (let* ((_e281550281567_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause281546281554_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                                 (_e281551281570_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause281546281554_
                                     '2
                                     gxc#!lambda::t
                                     '#f)))
                                 (_arity281573_ _e281551281570_)
                                 (_e281552281575_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause281546281554_
                                     '3
                                     gxc#!lambda::t
                                     '#f)))
                                 (_dispatch281578_ _e281552281575_))
                            (declare (not safe))
                            (_K281549281564_ _dispatch281578_ _arity281573_))
                          (let () (declare (not safe)) (_E281548281558_)))))))
          (let* ((_self281516281523_ _self281513_)
                 (_E281518281527_
                  (lambda () (error '"No clause matching" _self281516281523_)))
                 (_K281519281534_
                  (lambda (_clauses281530_)
                    (let ((_clauses281532_
                           (map _clause-e281515_ _clauses281530_)))
                      (declare (not safe))
                      (cons '@case-lambda _clauses281532_)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of?
                   _self281516281523_
                   'gxc#!case-lambda::t))
                (let* ((_e281520281537_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self281516281523_
                           '1
                           gxc#!type::t
                           '#f)))
                       (_e281521281540_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self281516281523_
                           '2
                           gxc#!case-lambda::t
                           '#f)))
                       (_clauses281543_ _e281521281540_))
                  (declare (not safe))
                  (_K281519281534_ _clauses281543_))
                (let () (declare (not safe)) (_E281518281527_)))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_self281356_)
        (let* ((_self281357281365_ _self281356_)
               (_E281359281369_
                (lambda () (error '"No clause matching" _self281357281365_)))
               (_K281360281375_
                (lambda (_dispatch281372_ _table281373_)
                  (let ((__tmp289773
                         (let ((__tmp289774
                                (let ()
                                  (declare (not safe))
                                  (cons _dispatch281372_ '()))))
                           (declare (not safe))
                           (cons _table281373_ __tmp289774))))
                    (declare (not safe))
                    (cons '@kw-lambda __tmp289773)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self281357281365_
                 'gxc#!kw-lambda::t))
              (let* ((_e281361281378_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281357281365_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e281362281381_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281357281365_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table281384_ _e281362281381_)
                     (_e281363281386_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281357281365_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch281389_ _e281363281386_))
                (declare (not safe))
                (_K281360281375_ _dispatch281389_ _table281384_))
              (let () (declare (not safe)) (_E281359281369_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!kw-lambda::t 'typedecl gxc#!kw-lambda::typedecl '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_self281199_)
        (let* ((_self281200281208_ _self281199_)
               (_E281202281212_
                (lambda () (error '"No clause matching" _self281200281208_)))
               (_K281203281218_
                (lambda (_main281215_ _keys281216_)
                  (let ((__tmp289775
                         (let ((__tmp289776
                                (let ()
                                  (declare (not safe))
                                  (cons _main281215_ '()))))
                           (declare (not safe))
                           (cons _keys281216_ __tmp289776))))
                    (declare (not safe))
                    (cons '@kw-lambda-dispatch __tmp289775)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self281200281208_
                 'gxc#!kw-lambda-primary::t))
              (let* ((_e281204281221_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281200281208_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e281205281224_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281200281208_
                         '2
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_keys281227_ _e281205281224_)
                     (_e281206281229_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281200281208_
                         '3
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_main281232_ _e281206281229_))
                (declare (not safe))
                (_K281203281218_ _main281232_ _keys281227_))
              (let () (declare (not safe)) (_E281202281212_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))))
