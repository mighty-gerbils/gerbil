(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1708271190)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (gxc#current-compile-optimizer-info)
            '#!void
            (gxc#current-compile-optimizer-info
             (let ((__obj294727
                    (let ()
                      (declare (not safe))
                      (##structure gxc#optimizer-info::t '#f '#f '#f))))
               (gxc#optimizer-info:::init! __obj294727)
               __obj294727)))))
    (define gxc#optimize!
      (lambda (_ctx290353_)
        (let ((__tmp294731
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _ctx290353_))
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-builtin-ssxi))
                 (let ((__tmp294733
                        (##structure-ref
                         (gxc#current-compile-optimizer-info)
                         '2
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp294732
                        (##structure-ref
                         _ctx290353_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp294733 __tmp294732 '#t))
                 (let ((_code290356_
                        (let ((__tmp294734
                               (##structure-ref
                                _ctx290353_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp294734))))
                   (##structure-set!
                    _ctx290353_
                    _code290356_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp294730 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp294729 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters
           __tmp294731
           gxc#current-compile-mutators
           __tmp294730
           gxc#current-compile-local-type
           __tmp294729))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda ()
        (let ()
          (declare (not safe))
          (gxc#optimizer-import-ssxi-by-id 'gerbil/builtin))
        (let ((__tmp294735
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp294735 'gerbil/builtin '#t))))
    (define gxc#optimizer-load-ssxi-deps
      (lambda (_ctx290297_)
        (letrec* ((_deps290299_
                   (let* ((_imports290343_
                           (##structure-ref
                            _ctx290297_
                            '8
                            gx#module-context::t
                            '#f))
                          (_$e290345_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _ctx290297_))))
                     (if _$e290345_
                         ((lambda (_g290347290349_)
                            (let ()
                              (declare (not safe))
                              (cons _g290347290349_ _imports290343_)))
                          _$e290345_)
                         _imports290343_))))
          (let _lp290301_ ((_rest290303_ _deps290299_))
            (let* ((_rest290304290312_ _rest290303_)
                   (_else290306290320_ (lambda () '#!void))
                   (_K290308290331_
                    (lambda (_rest290323_ _hd290324_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _hd290324_
                             'gx#module-context::t))
                          (begin
                            (if (let ((__tmp294737
                                       (##structure-ref
                                        (gxc#current-compile-optimizer-info)
                                        '2
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp294736
                                       (##structure-ref
                                        _hd290324_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (hash-get __tmp294737 __tmp294736))
                                '#!void
                                (begin
                                  (let ((_$e290326_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _hd290324_))))
                                    (if _$e290326_
                                        ((lambda (_pre290329_)
                                           (let ((__tmp294738
                                                  (let ((__tmp294739
                                                         (##structure-ref
                                                          _hd290324_
                                                          '8
                                                          gx#module-context::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (cons _pre290329_
                                                          __tmp294739))))
                                             (declare (not safe))
                                             (_lp290301_ __tmp294738)))
                                         _$e290326_)
                                        (let ((__tmp294740
                                               (##structure-ref
                                                _hd290324_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                          (declare (not safe))
                                          (_lp290301_ __tmp294740))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _hd290324_))))
                            (let ()
                              (declare (not safe))
                              (_lp290301_ _rest290323_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _hd290324_
                                 'gx#prelude-context::t))
                              (begin
                                (if (let ((__tmp294742
                                           (##structure-ref
                                            (gxc#current-compile-optimizer-info)
                                            '2
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp294741
                                           (##structure-ref
                                            _hd290324_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (hash-get __tmp294742 __tmp294741))
                                    '#!void
                                    (begin
                                      (let ((__tmp294743
                                             (##structure-ref
                                              _hd290324_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_lp290301_ __tmp294743))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi _hd290324_))))
                                (let ()
                                  (declare (not safe))
                                  (_lp290301_ _rest290323_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _hd290324_
                                     'gx#module-import::t))
                                  (let ((__tmp294744
                                         (let ((__tmp294745
                                                (##direct-structure-ref
                                                 _hd290324_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp294745 _rest290323_))))
                                    (declare (not safe))
                                    (_lp290301_ __tmp294744))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _hd290324_
                                         'gx#module-export::t))
                                      (let ((__tmp294746
                                             (let ((__tmp294747
                                                    (##direct-structure-ref
                                                     _hd290324_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp294747
                                                     _rest290323_))))
                                        (declare (not safe))
                                        (_lp290301_ __tmp294746))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _hd290324_
                                             'gx#import-set::t))
                                          (let ((__tmp294748
                                                 (let ((__tmp294749
                                                        (##direct-structure-ref
                                                         _hd290324_
                                                         '1
                                                         gx#import-set::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp294749
                                                         _rest290323_))))
                                            (declare (not safe))
                                            (_lp290301_ __tmp294748))
                                          (error '"Unexpected module import"
                                                 _hd290324_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest290304290312_))
                  (let ((_hd290309290334_
                         (let ()
                           (declare (not safe))
                           (##car _rest290304290312_)))
                        (_tl290310290336_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest290304290312_))))
                    (let* ((_hd290339_ _hd290309290334_)
                           (_rest290341_ _tl290310290336_))
                      (declare (not safe))
                      (_K290308290331_ _rest290341_ _hd290339_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_ctx290277_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _ctx290277_
                    'gx#module-context::t))
                 (let ((__tmp294750
                        (##structure-ref
                         _ctx290277_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp294750)))
            '#!void
            (let* ((_ht290279_
                    (##structure-ref
                     (gxc#current-compile-optimizer-info)
                     '2
                     gxc#optimizer-info::t
                     '#f))
                   (_id290281_
                    (##structure-ref
                     _ctx290277_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_mod290283_
                    (let ()
                      (declare (not safe))
                      (hash-get _ht290279_ _id290281_))))
              (let ((_$e290286_ _mod290283_))
                (if _$e290286_
                    _$e290286_
                    (let* ((_mod290289_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-import-ssxi _ctx290277_)))
                           (_val290294_
                            (let ((_$e290291_ _mod290289_))
                              (if _$e290291_ _$e290291_ '#!void))))
                      (let ()
                        (declare (not safe))
                        (hash-put! _ht290279_ _id290281_ _val290294_))
                      _val290294_)))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_ctx290275_)
        (if (##structure-ref _ctx290275_ '1 gx#expander-context::t '#f)
            (let ((__tmp294751
                   (##structure-ref
                    _ctx290275_
                    '1
                    gx#expander-context::t
                    '#f)))
              (declare (not safe))
              (gxc#optimizer-import-ssxi-by-id __tmp294751))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_id290252_)
        (letrec ((_catch-e290254_
                  (lambda (_exn290273_)
                    (if (gxc#current-compile-verbose)
                        (begin
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"Failed to load ssxi module for "
                             _id290252_))
                          (display-exception _exn290273_))
                        '#!void)
                    '#f))
                 (_import-e290255_
                  (lambda ()
                    (let* ((_str-id290258_
                            (string-append
                             (let ()
                               (declare (not safe))
                               (gxc#module-id->path-string _id290252_))
                             '".ssxi"))
                           (_artefact-path290266_
                            (let ((_odir290259290261_
                                   (gxc#current-compile-output-dir)))
                              (if _odir290259290261_
                                  (let ((_odir290264_ _odir290259290261_))
                                    (path-expand
                                     (string-append _str-id290258_ '".ss")
                                     _odir290264_))
                                  '#f)))
                           (_library-path290268_
                            (string->symbol
                             (string-append '":" _str-id290258_ '".ss")))
                           (_ssxi-path290270_
                            (if (and _artefact-path290266_
                                     (file-exists? _artefact-path290266_))
                                _artefact-path290266_
                                _library-path290268_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _ssxi-path290270_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _ssxi-path290270_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (with-catch _catch-e290254_ _import-e290255_)))))
    (define gxc#optimize-source
      (lambda (_stx290243_)
        (let () (declare (not safe)) (gxc#apply-collect-mutators _stx290243_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _stx290243_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _stx290243_))
        (let* ((_stx290245_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _stx290243_)))
               (_stx290247_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _stx290245_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _stx290247_))
          (let ((_stx290250_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _stx290247_))))
            (declare (not safe))
            (gxc#apply-optimize-call _stx290250_)))))
    (define gxc#&generate-ssxi
      (make-promise
       (lambda ()
         (let ((_tbl290240_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp294752 (force gxc#&generate-runtime-empty)))
             (declare (not safe))
             (hash-merge! _tbl290240_ __tmp294752))
           (let ()
             (declare (not safe))
             (hash-put! _tbl290240_ '%#begin gxc#generate-runtime-begin%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl290240_
              '%#begin-syntax
              gxc#generate-ssxi-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl290240_ '%#module gxc#generate-ssxi-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl290240_
              '%#define-values
              gxc#generate-ssxi-define-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl290240_ '%#call gxc#generate-ssxi-call%))
           _tbl290240_))))
    (define gxc#apply-generate-ssxi
      (lambda (_stx290223_ . _args290225_)
        (let ((__tmp294754
               (lambda ()
                 (declare (not safe))
                 (if (null? _args290225_)
                     (gxc#compile-e__0 _stx290223_)
                     (let ((_arg1290230_ (car _args290225_))
                           (_rest290232_ (cdr _args290225_)))
                       (if (null? _rest290232_)
                           (gxc#compile-e__1 _stx290223_ _arg1290230_)
                           (let ((_arg2290235_ (car _rest290232_))
                                 (_rest290237_ (cdr _rest290232_)))
                             (if (null? _rest290237_)
                                 (gxc#compile-e__2
                                  _stx290223_
                                  _arg1290230_
                                  _arg2290235_)
                                 (apply gxc#compile-e
                                        _stx290223_
                                        _arg1290230_
                                        _arg2290235_
                                        _rest290237_))))))))
              (__tmp294753 (force gxc#&generate-ssxi)))
          (declare (not safe))
          (call-with-parameters
           __tmp294754
           gxc#current-compile-methods
           __tmp294753))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_stx290184_)
        (let* ((_g290186290196_
                (lambda (_g290187290193_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g290187290193_))))
               (_g290185290220_
                (lambda (_g290187290199_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g290187290199_))
                      (let ((_e290189290201_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g290187290199_))))
                        (let ((_hd290190290204_
                               (let ()
                                 (declare (not safe))
                                 (##car _e290189290201_)))
                              (_tl290191290206_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e290189290201_))))
                          ((lambda (_L290209_)
                             (let ((__tmp294757
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _stx290184_))))
                                   (__tmp294755
                                    (let ((__tmp294756
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp294756 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp294757
                                gx#current-expander-phi
                                __tmp294755)))
                           _tl290191290206_)))
                      (let ()
                        (declare (not safe))
                        (_g290186290196_ _g290187290199_))))))
          (declare (not safe))
          (_g290185290220_ _stx290184_))))
    (define gxc#generate-ssxi-module%
      (lambda (_stx290124_)
        (let* ((_g290126290140_
                (lambda (_g290127290137_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g290127290137_))))
               (_g290125290181_
                (lambda (_g290127290143_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g290127290143_))
                      (let ((_e290130290145_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g290127290143_))))
                        (let ((_hd290131290148_
                               (let ()
                                 (declare (not safe))
                                 (##car _e290130290145_)))
                              (_tl290132290150_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e290130290145_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl290132290150_))
                              (let ((_e290133290153_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl290132290150_))))
                                (let ((_hd290134290156_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e290133290153_)))
                                      (_tl290135290158_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e290133290153_))))
                                  ((lambda (_L290161_ _L290162_)
                                     (let* ((_ctx290175_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L290162_)))
                                            (_code290177_
                                             (##structure-ref
                                              _ctx290175_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp294758
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _code290177_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp294758
                                          gx#current-expander-context
                                          _ctx290175_))))
                                   _tl290135290158_
                                   _hd290134290156_)))
                              (let ()
                                (declare (not safe))
                                (_g290126290140_ _g290127290143_)))))
                      (let ()
                        (declare (not safe))
                        (_g290126290140_ _g290127290143_))))))
          (declare (not safe))
          (_g290125290181_ _stx290124_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_stx289934_)
        (letrec ((_generate-e289936_
                  (lambda (_id290113_)
                    (let* ((_sym290115_
                            (if (let ((__tmp294759
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp294759))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _id290113_))
                                '#f))
                           (_$e290117_
                            (if _sym290115_
                                (let ()
                                  (declare (not safe))
                                  (gxc#optimizer-lookup-type _sym290115_))
                                '#f)))
                      (if _$e290117_
                          ((lambda (_type290120_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"generate typedecl " _sym290115_))
                             (let* ((_typedecl290122_
                                     (let ((__method294728
                                            (let ()
                                              (declare (not safe))
                                              (method-ref
                                               _type290120_
                                               'typedecl))))
                                       (if __method294728
                                           (__method294728 _type290120_)
                                           (error '"Missing method"
                                                  _type290120_
                                                  'typedecl))))
                                    (__tmp294760
                                     (let ((__tmp294761
                                            (let ()
                                              (declare (not safe))
                                              (cons _typedecl290122_ '()))))
                                       (declare (not safe))
                                       (cons _sym290115_ __tmp294761))))
                               (declare (not safe))
                               (cons 'declare-type __tmp294760)))
                           _$e290117_)
                          '(begin))))))
          (let* ((___stx294426294427_ _stx289934_)
                 (_g289939289977_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx294426294427_)))))
            (let ((___kont294428294429_
                   (lambda (_L290095_)
                     (let ()
                       (declare (not safe))
                       (_generate-e289936_ _L290095_))))
                  (___kont294430294431_
                   (lambda (_L290030_)
                     (let ((_types290056_
                            (map _generate-e289936_
                                 (let ((__tmp294762
                                        (lambda (_g290048290051_
                                                 _g290049290053_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g290048290051_
                                                  _g290049290053_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp294762 '() _L290030_)))))
                       (declare (not safe))
                       (cons 'begin _types290056_)))))
              (let ((___match294481294482_
                     (lambda (_e289955289982_
                              _hd289956289985_
                              _tl289957289987_
                              _e289958289990_
                              _hd289959289993_
                              _tl289960289995_
                              ___splice294432294433_
                              _target289961289998_
                              _tl289963290000_)
                       (letrec ((_loop289964290003_
                                 (lambda (_hd289962290006_ _id289968290008_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd289962290006_))
                                       (let ((_e289965290011_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd289962290006_))))
                                         (let ((_lp-tl289967290016_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e289965290011_)))
                                               (_lp-hd289966290014_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e289965290011_))))
                                           (let ((__tmp294763
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd289966290014_
                                                          _id289968290008_))))
                                             (declare (not safe))
                                             (_loop289964290003_
                                              _lp-tl289967290016_
                                              __tmp294763))))
                                       (let ((_id289969290019_
                                              (reverse _id289968290008_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl289960289995_))
                                             (let ((_e289970290022_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl289960289995_))))
                                               (let ((_tl289972290027_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e289970290022_)))
                                                     (_hd289971290025_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e289970290022_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl289972290027_))
                                                     (___kont294430294431_
                                                      _id289969290019_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g289939289977_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g289939289977_))))))))
                         (let ()
                           (declare (not safe))
                           (_loop289964290003_ _target289961289998_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx294426294427_))
                    (let ((_e289942290063_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx294426294427_))))
                      (let ((_tl289944290068_
                             (let ()
                               (declare (not safe))
                               (##cdr _e289942290063_)))
                            (_hd289943290066_
                             (let ()
                               (declare (not safe))
                               (##car _e289942290063_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl289944290068_))
                            (let ((_e289945290071_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl289944290068_))))
                              (let ((_tl289947290076_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e289945290071_)))
                                    (_hd289946290074_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e289945290071_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd289946290074_))
                                    (let ((_e289948290079_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd289946290074_))))
                                      (let ((_tl289950290084_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e289948290079_)))
                                            (_hd289949290082_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e289948290079_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl289950290084_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl289947290076_))
                                                (let ((_e289951290087_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl289947290076_))))
                                                  (let ((_tl289953290092_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e289951290087_)))
                                                        (_hd289952290090_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e289951290087_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl289953290092_))
                                                        (___kont294428294429_
                                                         _hd289949290082_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _hd289946290074_))
                                                            (let ((___splice294432294433_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _hd289946290074_ '0))))
                      (let ((_tl289963290000_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice294432294433_ '1)))
                            (_target289961289998_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice294432294433_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl289963290000_))
                            (___match294481294482_
                             _e289942290063_
                             _hd289943290066_
                             _tl289944290068_
                             _e289945290071_
                             _hd289946290074_
                             _tl289947290076_
                             ___splice294432294433_
                             _target289961289998_
                             _tl289963290000_)
                            (let () (declare (not safe)) (_g289939289977_)))))
                    (let () (declare (not safe)) (_g289939289977_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _hd289946290074_))
                                                    (let ((___splice294432294433_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _hd289946290074_
                                                              '0))))
                                                      (let ((_tl289963290000_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice294432294433_ '1)))
                    (_target289961289998_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice294432294433_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl289963290000_))
                    (___match294481294482_
                     _e289942290063_
                     _hd289943290066_
                     _tl289944290068_
                     _e289945290071_
                     _hd289946290074_
                     _tl289947290076_
                     ___splice294432294433_
                     _target289961289998_
                     _tl289963290000_)
                    (let () (declare (not safe)) (_g289939289977_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g289939289977_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _hd289946290074_))
                                                (let ((___splice294432294433_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _hd289946290074_
                                                          '0))))
                                                  (let ((_tl289963290000_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice294432294433_
                                                            '1)))
                                                        (_target289961289998_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice294432294433_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl289963290000_))
                                                        (___match294481294482_
                                                         _e289942290063_
                                                         _hd289943290066_
                                                         _tl289944290068_
                                                         _e289945290071_
                                                         _hd289946290074_
                                                         _tl289947290076_
                                                         ___splice294432294433_
                                                         _target289961289998_
                                                         _tl289963290000_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g289939289977_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g289939289977_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd289946290074_))
                                        (let ((___splice294432294433_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd289946290074_
                                                  '0))))
                                          (let ((_tl289963290000_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice294432294433_
                                                    '1)))
                                                (_target289961289998_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice294432294433_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl289963290000_))
                                                (___match294481294482_
                                                 _e289942290063_
                                                 _hd289943290066_
                                                 _tl289944290068_
                                                 _e289945290071_
                                                 _hd289946290074_
                                                 _tl289947290076_
                                                 ___splice294432294433_
                                                 _target289961289998_
                                                 _tl289963290000_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g289939289977_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g289939289977_))))))
                            (let () (declare (not safe)) (_g289939289977_)))))
                    (let () (declare (not safe)) (_g289939289977_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_stx289488_)
        (let* ((___stx294484294485_ _stx289488_)
               (_g289492289594_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx294484294485_)))))
          (let ((___kont294486294487_
                 (lambda (_L289884_ _L289885_ _L289886_ _L289887_ _L289888_)
                   (let ((__tmp294764
                          (let ((__tmp294771
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L289887_)))
                                (__tmp294765
                                 (let ((__tmp294770
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L289886_)))
                                       (__tmp294766
                                        (let ((__tmp294769
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L289885_)))
                                              (__tmp294767
                                               (let ((__tmp294768
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L289884_))))
                                                 (declare (not safe))
                                                 (cons __tmp294768 '()))))
                                          (declare (not safe))
                                          (cons __tmp294769 __tmp294767))))
                                   (declare (not safe))
                                   (cons __tmp294770 __tmp294766))))
                            (declare (not safe))
                            (cons __tmp294771 __tmp294765))))
                     (declare (not safe))
                     (cons 'declare-method __tmp294764))))
                (___kont294488294489_
                 (lambda (_L289710_ _L289711_ _L289712_ _L289713_)
                   (let ((__tmp294772
                          (let ((__tmp294778
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L289712_)))
                                (__tmp294773
                                 (let ((__tmp294777
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L289711_)))
                                       (__tmp294774
                                        (let ((__tmp294776
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L289710_)))
                                              (__tmp294775
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '#f '()))))
                                          (declare (not safe))
                                          (cons __tmp294776 __tmp294775))))
                                   (declare (not safe))
                                   (cons __tmp294777 __tmp294774))))
                            (declare (not safe))
                            (cons __tmp294778 __tmp294773))))
                     (declare (not safe))
                     (cons 'declare-method __tmp294772))))
                (___kont294490294491_ (lambda () '(begin))))
            (let ((___match294619294620_
                   (lambda (_e289499289756_
                            _hd289500289759_
                            _tl289501289761_
                            _e289502289764_
                            _hd289503289767_
                            _tl289504289769_
                            _e289505289772_
                            _hd289506289775_
                            _tl289507289777_
                            _e289508289780_
                            _hd289509289783_
                            _tl289510289785_
                            _e289511289788_
                            _hd289512289791_
                            _tl289513289793_
                            _e289514289796_
                            _hd289515289799_
                            _tl289516289801_
                            _e289517289804_
                            _hd289518289807_
                            _tl289519289809_
                            _e289520289812_
                            _hd289521289815_
                            _tl289522289817_
                            _e289523289820_
                            _hd289524289823_
                            _tl289525289825_
                            _e289526289828_
                            _hd289527289831_
                            _tl289528289833_
                            _e289529289836_
                            _hd289530289839_
                            _tl289531289841_
                            _e289532289844_
                            _hd289533289847_
                            _tl289534289849_
                            _e289535289852_
                            _hd289536289855_
                            _tl289537289857_
                            _e289538289860_
                            _hd289539289863_
                            _tl289540289865_
                            _e289541289868_
                            _hd289542289871_
                            _tl289543289873_
                            _e289544289876_
                            _hd289545289879_
                            _tl289546289881_)
                     (let ((_L289884_ _hd289545289879_)
                           (_L289885_ _hd289536289855_)
                           (_L289886_ _hd289527289831_)
                           (_L289887_ _hd289518289807_)
                           (_L289888_ _hd289509289783_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L289888_
                              'bind-method!))
                           (___kont294486294487_
                            _L289884_
                            _L289885_
                            _L289886_
                            _L289887_
                            _L289888_)
                           (___kont294490294491_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx294484294485_))
                  (let ((_e289499289756_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx294484294485_))))
                    (let ((_tl289501289761_
                           (let ()
                             (declare (not safe))
                             (##cdr _e289499289756_)))
                          (_hd289500289759_
                           (let ()
                             (declare (not safe))
                             (##car _e289499289756_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl289501289761_))
                          (let ((_e289502289764_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl289501289761_))))
                            (let ((_tl289504289769_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e289502289764_)))
                                  (_hd289503289767_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e289502289764_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd289503289767_))
                                  (let ((_e289505289772_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd289503289767_))))
                                    (let ((_tl289507289777_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e289505289772_)))
                                          (_hd289506289775_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e289505289772_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd289506289775_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd289506289775_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl289507289777_))
                                                  (let ((_e289508289780_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl289507289777_))))
                                                    (let ((_tl289510289785_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e289508289780_)))
                                                          (_hd289509289783_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e289508289780_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl289510289785_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl289504289769_))
                      (let ((_e289511289788_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl289504289769_))))
                        (let ((_tl289513289793_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e289511289788_)))
                              (_hd289512289791_
                               (let ()
                                 (declare (not safe))
                                 (##car _e289511289788_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd289512289791_))
                              (let ((_e289514289796_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd289512289791_))))
                                (let ((_tl289516289801_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e289514289796_)))
                                      (_hd289515289799_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e289514289796_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd289515289799_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd289515289799_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl289516289801_))
                                              (let ((_e289517289804_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl289516289801_))))
                                                (let ((_tl289519289809_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e289517289804_)))
                                                      (_hd289518289807_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e289517289804_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl289519289809_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl289513289793_))
                                                          (let ((_e289520289812_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl289513289793_))))
                    (let ((_tl289522289817_
                           (let ()
                             (declare (not safe))
                             (##cdr _e289520289812_)))
                          (_hd289521289815_
                           (let ()
                             (declare (not safe))
                             (##car _e289520289812_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd289521289815_))
                          (let ((_e289523289820_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd289521289815_))))
                            (let ((_tl289525289825_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e289523289820_)))
                                  (_hd289524289823_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e289523289820_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd289524289823_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd289524289823_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl289525289825_))
                                          (let ((_e289526289828_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl289525289825_))))
                                            (let ((_tl289528289833_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e289526289828_)))
                                                  (_hd289527289831_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e289526289828_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl289528289833_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl289522289817_))
                                                      (let ((_e289529289836_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl289522289817_))))
                (let ((_tl289531289841_
                       (let () (declare (not safe)) (##cdr _e289529289836_)))
                      (_hd289530289839_
                       (let () (declare (not safe)) (##car _e289529289836_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd289530289839_))
                      (let ((_e289532289844_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd289530289839_))))
                        (let ((_tl289534289849_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e289532289844_)))
                              (_hd289533289847_
                               (let ()
                                 (declare (not safe))
                                 (##car _e289532289844_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd289533289847_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd289533289847_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl289534289849_))
                                      (let ((_e289535289852_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl289534289849_))))
                                        (let ((_tl289537289857_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e289535289852_)))
                                              (_hd289536289855_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e289535289852_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl289537289857_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl289531289841_))
                                                  (let ((_e289538289860_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl289531289841_))))
                                                    (let ((_tl289540289865_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e289538289860_)))
                                                          (_hd289539289863_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e289538289860_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd289539289863_))
                                                          (let ((_e289541289868_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd289539289863_))))
                    (let ((_tl289543289873_
                           (let ()
                             (declare (not safe))
                             (##cdr _e289541289868_)))
                          (_hd289542289871_
                           (let ()
                             (declare (not safe))
                             (##car _e289541289868_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd289542289871_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd289542289871_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl289543289873_))
                                  (let ((_e289544289876_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl289543289873_))))
                                    (let ((_tl289546289881_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e289544289876_)))
                                          (_hd289545289879_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e289544289876_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl289546289881_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl289540289865_))
                                              (___match294619294620_
                                               _e289499289756_
                                               _hd289500289759_
                                               _tl289501289761_
                                               _e289502289764_
                                               _hd289503289767_
                                               _tl289504289769_
                                               _e289505289772_
                                               _hd289506289775_
                                               _tl289507289777_
                                               _e289508289780_
                                               _hd289509289783_
                                               _tl289510289785_
                                               _e289511289788_
                                               _hd289512289791_
                                               _tl289513289793_
                                               _e289514289796_
                                               _hd289515289799_
                                               _tl289516289801_
                                               _e289517289804_
                                               _hd289518289807_
                                               _tl289519289809_
                                               _e289520289812_
                                               _hd289521289815_
                                               _tl289522289817_
                                               _e289523289820_
                                               _hd289524289823_
                                               _tl289525289825_
                                               _e289526289828_
                                               _hd289527289831_
                                               _tl289528289833_
                                               _e289529289836_
                                               _hd289530289839_
                                               _tl289531289841_
                                               _e289532289844_
                                               _hd289533289847_
                                               _tl289534289849_
                                               _e289535289852_
                                               _hd289536289855_
                                               _tl289537289857_
                                               _e289538289860_
                                               _hd289539289863_
                                               _tl289540289865_
                                               _e289541289868_
                                               _hd289542289871_
                                               _tl289543289873_
                                               _e289544289876_
                                               _hd289545289879_
                                               _tl289546289881_)
                                              (___kont294490294491_))
                                          (___kont294490294491_))))
                                  (___kont294490294491_))
                              (___kont294490294491_))
                          (___kont294490294491_))))
                  (___kont294490294491_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl289531289841_))
                                                      (if (let ((__tmp294779
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp294779 'bind-method!))
                  (let ((_L289710_ _hd289536289855_)
                        (_L289711_ _hd289527289831_)
                        (_L289712_ _hd289518289807_)
                        (_L289713_ _hd289509289783_))
                    (___kont294488294489_
                     _L289710_
                     _L289711_
                     _L289712_
                     _L289713_))
                  (___kont294490294491_))
              (___kont294490294491_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont294490294491_))))
                                      (___kont294490294491_))
                                  (___kont294490294491_))
                              (___kont294490294491_))))
                      (___kont294490294491_))))
              (___kont294490294491_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont294490294491_))))
                                          (___kont294490294491_))
                                      (___kont294490294491_))
                                  (___kont294490294491_))))
                          (___kont294490294491_))))
                  (___kont294490294491_))
              (___kont294490294491_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont294490294491_))
                                          (___kont294490294491_))
                                      (___kont294490294491_))))
                              (___kont294490294491_))))
                      (___kont294490294491_))
                  (___kont294490294491_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont294490294491_))
                                              (___kont294490294491_))
                                          (___kont294490294491_))))
                                  (___kont294490294491_))))
                          (___kont294490294491_))))
                  (___kont294490294491_)))))))
    (define gxc#!alias::typedecl
      (lambda (_self289464_)
        (let* ((_self289465289471_ _self289464_)
               (_E289467289475_
                (lambda () (error '"No clause matching" _self289465289471_)))
               (_K289468289480_
                (lambda (_alias-id289478_)
                  (let ((__tmp294780
                         (let ()
                           (declare (not safe))
                           (cons _alias-id289478_ '()))))
                    (declare (not safe))
                    (cons '@alias __tmp294780)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self289465289471_ 'gxc#!alias::t))
              (let* ((_e289469289483_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self289465289471_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_alias-id289486_ _e289469289483_))
                (declare (not safe))
                (_K289468289480_ _alias-id289486_))
              (let () (declare (not safe)) (_E289467289475_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_self289255_)
        (let* ((_self289256289271_ _self289255_)
               (_E289258289275_
                (lambda () (error '"No clause matching" _self289256289271_)))
               (_K289259289289_
                (lambda (_methods289278_
                         _metaclass289279_
                         _final?289280_
                         _struct?289281_
                         _constructor289282_
                         _fields289283_
                         _slots289284_
                         _precendence-list289285_
                         _super289286_
                         _id289287_)
                  (let ((__tmp294781
                         (let ((__tmp294782
                                (let ((__tmp294783
                                       (let ((__tmp294784
                                              (let ((__tmp294785
                                                     (let ((__tmp294786
                                                            (let ((__tmp294787
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp294788
                                  (let ((__tmp294789
                                         (let ((__tmp294790
                                                (let ((__tmp294791
                                                       (if _methods289278_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (hash->list
                                                              _methods289278_))
                                                           '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp294791 '()))))
                                           (declare (not safe))
                                           (cons _metaclass289279_
                                                 __tmp294790))))
                                    (declare (not safe))
                                    (cons _final?289280_ __tmp294789))))
                             (declare (not safe))
                             (cons _struct?289281_ __tmp294788))))
                      (declare (not safe))
                      (cons _constructor289282_ __tmp294787))))
               (declare (not safe))
               (cons _fields289283_ __tmp294786))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _slots289284_
                                                      __tmp294785))))
                                         (declare (not safe))
                                         (cons _precendence-list289285_
                                               __tmp294784))))
                                  (declare (not safe))
                                  (cons _super289286_ __tmp294783))))
                           (declare (not safe))
                           (cons _id289287_ __tmp294782))))
                    (declare (not safe))
                    (cons '@class __tmp294781)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self289256289271_ 'gxc#!class::t))
              (let* ((_e289260289292_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self289256289271_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_id289295_ _e289260289292_)
                     (_e289261289297_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self289256289271_
                         '2
                         gxc#!class::t
                         '#f)))
                     (_super289300_ _e289261289297_)
                     (_e289262289302_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self289256289271_
                         '3
                         gxc#!class::t
                         '#f)))
                     (_precendence-list289305_ _e289262289302_)
                     (_e289263289307_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self289256289271_
                         '4
                         gxc#!class::t
                         '#f)))
                     (_slots289310_ _e289263289307_)
                     (_e289264289312_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self289256289271_
                         '5
                         gxc#!class::t
                         '#f)))
                     (_fields289315_ _e289264289312_)
                     (_e289265289317_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self289256289271_
                         '6
                         gxc#!class::t
                         '#f)))
                     (_constructor289320_ _e289265289317_)
                     (_e289266289322_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self289256289271_
                         '7
                         gxc#!class::t
                         '#f)))
                     (_struct?289325_ _e289266289322_)
                     (_e289267289327_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self289256289271_
                         '8
                         gxc#!class::t
                         '#f)))
                     (_final?289330_ _e289267289327_)
                     (_e289268289332_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self289256289271_
                         '9
                         gxc#!class::t
                         '#f)))
                     (_metaclass289335_ _e289268289332_)
                     (_e289269289337_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self289256289271_
                         '10
                         gxc#!class::t
                         '#f)))
                     (_methods289340_ _e289269289337_))
                (declare (not safe))
                (_K289259289289_
                 _methods289340_
                 _metaclass289335_
                 _final?289330_
                 _struct?289325_
                 _constructor289320_
                 _fields289315_
                 _slots289310_
                 _precendence-list289305_
                 _super289300_
                 _id289295_))
              (let () (declare (not safe)) (_E289258289275_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_self289109_)
        (let* ((_self289110289116_ _self289109_)
               (_E289112289120_
                (lambda () (error '"No clause matching" _self289110289116_)))
               (_K289113289125_
                (lambda (_klass-id289123_)
                  (let ((__tmp294792
                         (let ()
                           (declare (not safe))
                           (cons _klass-id289123_ '()))))
                    (declare (not safe))
                    (cons '@predicate __tmp294792)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self289110289116_
                 'gxc#!predicate::t))
              (let* ((_e289114289128_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self289110289116_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id289131_ _e289114289128_))
                (declare (not safe))
                (_K289113289125_ _klass-id289131_))
              (let () (declare (not safe)) (_E289112289120_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!predicate::t 'typedecl gxc#!predicate::typedecl '#f))
    (define gxc#!constructor::typedecl
      (lambda (_self288963_)
        (let* ((_self288964288970_ _self288963_)
               (_E288966288974_
                (lambda () (error '"No clause matching" _self288964288970_)))
               (_K288967288979_
                (lambda (_klass-id288977_)
                  (let ((__tmp294793
                         (let ()
                           (declare (not safe))
                           (cons _klass-id288977_ '()))))
                    (declare (not safe))
                    (cons '@constructor __tmp294793)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self288964288970_
                 'gxc#!constructor::t))
              (let* ((_e288968288982_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self288964288970_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id288985_ _e288968288982_))
                (declare (not safe))
                (_K288967288979_ _klass-id288985_))
              (let () (declare (not safe)) (_E288966288974_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_self288803_)
        (let* ((_self288804288812_ _self288803_)
               (_E288806288816_
                (lambda () (error '"No clause matching" _self288804288812_)))
               (_K288807288823_
                (lambda (_checked?288819_ _slot288820_ _klass-id288821_)
                  (let ((__tmp294794
                         (let ((__tmp294795
                                (let ((__tmp294796
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?288819_ '()))))
                                  (declare (not safe))
                                  (cons _slot288820_ __tmp294796))))
                           (declare (not safe))
                           (cons _klass-id288821_ __tmp294795))))
                    (declare (not safe))
                    (cons '@accessor __tmp294794)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self288804288812_
                 'gxc#!accessor::t))
              (let* ((_e288808288826_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self288804288812_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id288829_ _e288808288826_)
                     (_e288809288831_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self288804288812_
                         '2
                         gxc#!accessor::t
                         '#f)))
                     (_slot288834_ _e288809288831_)
                     (_e288810288836_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self288804288812_
                         '3
                         gxc#!accessor::t
                         '#f)))
                     (_checked?288839_ _e288810288836_))
                (declare (not safe))
                (_K288807288823_
                 _checked?288839_
                 _slot288834_
                 _klass-id288829_))
              (let () (declare (not safe)) (_E288806288816_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_self288643_)
        (let* ((_self288644288652_ _self288643_)
               (_E288646288656_
                (lambda () (error '"No clause matching" _self288644288652_)))
               (_K288647288663_
                (lambda (_checked?288659_ _slot288660_ _klass-id288661_)
                  (let ((__tmp294797
                         (let ((__tmp294798
                                (let ((__tmp294799
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?288659_ '()))))
                                  (declare (not safe))
                                  (cons _slot288660_ __tmp294799))))
                           (declare (not safe))
                           (cons _klass-id288661_ __tmp294798))))
                    (declare (not safe))
                    (cons '@mutator __tmp294797)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self288644288652_ 'gxc#!mutator::t))
              (let* ((_e288648288666_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self288644288652_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id288669_ _e288648288666_)
                     (_e288649288671_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self288644288652_
                         '2
                         gxc#!mutator::t
                         '#f)))
                     (_slot288674_ _e288649288671_)
                     (_e288650288676_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self288644288652_
                         '3
                         gxc#!mutator::t
                         '#f)))
                     (_checked?288679_ _e288650288676_))
                (declare (not safe))
                (_K288647288663_
                 _checked?288679_
                 _slot288674_
                 _klass-id288669_))
              (let () (declare (not safe)) (_E288646288656_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!lambda::typedecl
      (lambda (_self288469_)
        (let* ((_self288470288480_ _self288469_)
               (_E288472288484_
                (lambda () (error '"No clause matching" _self288470288480_)))
               (_K288473288495_
                (lambda (_typedecl288487_
                         _inline288488_
                         _dispatch288489_
                         _arity288490_)
                  (if _inline288488_
                      (let ((_$e288492_ _typedecl288487_))
                        (if _$e288492_
                            _$e288492_
                            (error '"Cannot generate typedecl for inline rules")))
                      (let ((__tmp294800
                             (let ((__tmp294801
                                    (let ()
                                      (declare (not safe))
                                      (cons _dispatch288489_ '()))))
                               (declare (not safe))
                               (cons _arity288490_ __tmp294801))))
                        (declare (not safe))
                        (cons '@lambda __tmp294800))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self288470288480_ 'gxc#!lambda::t))
              (let* ((_e288474288498_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self288470288480_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e288475288501_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self288470288480_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity288504_ _e288475288501_)
                     (_e288476288506_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self288470288480_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch288509_ _e288476288506_)
                     (_e288477288511_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self288470288480_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline288514_ _e288477288511_)
                     (_e288478288516_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self288470288480_
                         '5
                         gxc#!lambda::t
                         '#f)))
                     (_typedecl288519_ _e288478288516_))
                (declare (not safe))
                (_K288473288495_
                 _typedecl288519_
                 _inline288514_
                 _dispatch288509_
                 _arity288504_))
              (let () (declare (not safe)) (_E288472288484_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_self288280_)
        (letrec ((_clause-e288282_
                  (lambda (_clause288312_)
                    (let* ((_clause288313288321_ _clause288312_)
                           (_E288315288325_
                            (lambda ()
                              (error '"No clause matching"
                                     _clause288313288321_)))
                           (_K288316288331_
                            (lambda (_dispatch288328_ _arity288329_)
                              (let ((__tmp294802
                                     (let ()
                                       (declare (not safe))
                                       (cons _dispatch288328_ '()))))
                                (declare (not safe))
                                (cons _arity288329_ __tmp294802)))))
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _clause288313288321_
                             'gxc#!lambda::t))
                          (let* ((_e288317288334_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause288313288321_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                                 (_e288318288337_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause288313288321_
                                     '2
                                     gxc#!lambda::t
                                     '#f)))
                                 (_arity288340_ _e288318288337_)
                                 (_e288319288342_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause288313288321_
                                     '3
                                     gxc#!lambda::t
                                     '#f)))
                                 (_dispatch288345_ _e288319288342_))
                            (declare (not safe))
                            (_K288316288331_ _dispatch288345_ _arity288340_))
                          (let () (declare (not safe)) (_E288315288325_)))))))
          (let* ((_self288283288290_ _self288280_)
                 (_E288285288294_
                  (lambda () (error '"No clause matching" _self288283288290_)))
                 (_K288286288301_
                  (lambda (_clauses288297_)
                    (let ((_clauses288299_
                           (map _clause-e288282_ _clauses288297_)))
                      (declare (not safe))
                      (cons '@case-lambda _clauses288299_)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of?
                   _self288283288290_
                   'gxc#!case-lambda::t))
                (let* ((_e288287288304_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self288283288290_
                           '1
                           gxc#!type::t
                           '#f)))
                       (_e288288288307_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self288283288290_
                           '2
                           gxc#!case-lambda::t
                           '#f)))
                       (_clauses288310_ _e288288288307_))
                  (declare (not safe))
                  (_K288286288301_ _clauses288310_))
                (let () (declare (not safe)) (_E288285288294_)))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_self288123_)
        (let* ((_self288124288132_ _self288123_)
               (_E288126288136_
                (lambda () (error '"No clause matching" _self288124288132_)))
               (_K288127288142_
                (lambda (_dispatch288139_ _table288140_)
                  (let ((__tmp294803
                         (let ((__tmp294804
                                (let ()
                                  (declare (not safe))
                                  (cons _dispatch288139_ '()))))
                           (declare (not safe))
                           (cons _table288140_ __tmp294804))))
                    (declare (not safe))
                    (cons '@kw-lambda __tmp294803)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self288124288132_
                 'gxc#!kw-lambda::t))
              (let* ((_e288128288145_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self288124288132_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e288129288148_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self288124288132_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table288151_ _e288129288148_)
                     (_e288130288153_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self288124288132_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch288156_ _e288130288153_))
                (declare (not safe))
                (_K288127288142_ _dispatch288156_ _table288151_))
              (let () (declare (not safe)) (_E288126288136_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!kw-lambda::t 'typedecl gxc#!kw-lambda::typedecl '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_self287966_)
        (let* ((_self287967287975_ _self287966_)
               (_E287969287979_
                (lambda () (error '"No clause matching" _self287967287975_)))
               (_K287970287985_
                (lambda (_main287982_ _keys287983_)
                  (let ((__tmp294805
                         (let ((__tmp294806
                                (let ()
                                  (declare (not safe))
                                  (cons _main287982_ '()))))
                           (declare (not safe))
                           (cons _keys287983_ __tmp294806))))
                    (declare (not safe))
                    (cons '@kw-lambda-dispatch __tmp294805)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self287967287975_
                 'gxc#!kw-lambda-primary::t))
              (let* ((_e287971287988_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self287967287975_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e287972287991_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self287967287975_
                         '2
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_keys287994_ _e287972287991_)
                     (_e287973287996_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self287967287975_
                         '3
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_main287999_ _e287973287996_))
                (declare (not safe))
                (_K287970287985_ _main287999_ _keys287994_))
              (let () (declare (not safe)) (_E287969287979_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))))
