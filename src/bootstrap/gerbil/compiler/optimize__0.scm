(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1708289488)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (gxc#current-compile-optimizer-info)
            '#!void
            (gxc#current-compile-optimizer-info
             (let ((__obj295688
                    (let ()
                      (declare (not safe))
                      (##structure gxc#optimizer-info::t '#f '#f '#f))))
               (gxc#optimizer-info:::init! __obj295688)
               __obj295688)))))
    (define gxc#optimize!
      (lambda (_ctx291314_)
        (let ((__tmp295692
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _ctx291314_))
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-builtin-ssxi))
                 (let ((__tmp295694
                        (##structure-ref
                         (gxc#current-compile-optimizer-info)
                         '2
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp295693
                        (##structure-ref
                         _ctx291314_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp295694 __tmp295693 '#t))
                 (let ((_code291317_
                        (let ((__tmp295695
                               (##structure-ref
                                _ctx291314_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp295695))))
                   (##structure-set!
                    _ctx291314_
                    _code291317_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp295691 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp295690 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters
           __tmp295692
           gxc#current-compile-mutators
           __tmp295691
           gxc#current-compile-local-type
           __tmp295690))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda ()
        (let ()
          (declare (not safe))
          (gxc#optimizer-import-ssxi-by-id 'gerbil/builtin))
        (let ((__tmp295696
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp295696 'gerbil/builtin '#t))))
    (define gxc#optimizer-load-ssxi-deps
      (lambda (_ctx291258_)
        (letrec* ((_deps291260_
                   (let* ((_imports291304_
                           (##structure-ref
                            _ctx291258_
                            '8
                            gx#module-context::t
                            '#f))
                          (_$e291306_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _ctx291258_))))
                     (if _$e291306_
                         ((lambda (_g291308291310_)
                            (let ()
                              (declare (not safe))
                              (cons _g291308291310_ _imports291304_)))
                          _$e291306_)
                         _imports291304_))))
          (let _lp291262_ ((_rest291264_ _deps291260_))
            (let* ((_rest291265291273_ _rest291264_)
                   (_else291267291281_ (lambda () '#!void))
                   (_K291269291292_
                    (lambda (_rest291284_ _hd291285_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _hd291285_
                             'gx#module-context::t))
                          (begin
                            (if (let ((__tmp295710
                                       (##structure-ref
                                        (gxc#current-compile-optimizer-info)
                                        '2
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp295709
                                       (##structure-ref
                                        _hd291285_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (hash-get __tmp295710 __tmp295709))
                                '#!void
                                (begin
                                  (let ((_$e291287_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _hd291285_))))
                                    (if _$e291287_
                                        ((lambda (_pre291290_)
                                           (let ((__tmp295707
                                                  (let ((__tmp295708
                                                         (##structure-ref
                                                          _hd291285_
                                                          '8
                                                          gx#module-context::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (cons _pre291290_
                                                          __tmp295708))))
                                             (declare (not safe))
                                             (_lp291262_ __tmp295707)))
                                         _$e291287_)
                                        (let ((__tmp295706
                                               (##structure-ref
                                                _hd291285_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                          (declare (not safe))
                                          (_lp291262_ __tmp295706))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _hd291285_))))
                            (let ()
                              (declare (not safe))
                              (_lp291262_ _rest291284_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _hd291285_
                                 'gx#prelude-context::t))
                              (begin
                                (if (let ((__tmp295705
                                           (##structure-ref
                                            (gxc#current-compile-optimizer-info)
                                            '2
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp295704
                                           (##structure-ref
                                            _hd291285_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (hash-get __tmp295705 __tmp295704))
                                    '#!void
                                    (begin
                                      (let ((__tmp295703
                                             (##structure-ref
                                              _hd291285_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_lp291262_ __tmp295703))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi _hd291285_))))
                                (let ()
                                  (declare (not safe))
                                  (_lp291262_ _rest291284_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _hd291285_
                                     'gx#module-import::t))
                                  (let ((__tmp295701
                                         (let ((__tmp295702
                                                (##direct-structure-ref
                                                 _hd291285_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp295702 _rest291284_))))
                                    (declare (not safe))
                                    (_lp291262_ __tmp295701))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _hd291285_
                                         'gx#module-export::t))
                                      (let ((__tmp295699
                                             (let ((__tmp295700
                                                    (##direct-structure-ref
                                                     _hd291285_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp295700
                                                     _rest291284_))))
                                        (declare (not safe))
                                        (_lp291262_ __tmp295699))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _hd291285_
                                             'gx#import-set::t))
                                          (let ((__tmp295697
                                                 (let ((__tmp295698
                                                        (##direct-structure-ref
                                                         _hd291285_
                                                         '1
                                                         gx#import-set::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp295698
                                                         _rest291284_))))
                                            (declare (not safe))
                                            (_lp291262_ __tmp295697))
                                          (error '"Unexpected module import"
                                                 _hd291285_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest291265291273_))
                  (let ((_hd291270291295_
                         (let ()
                           (declare (not safe))
                           (##car _rest291265291273_)))
                        (_tl291271291297_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest291265291273_))))
                    (let* ((_hd291300_ _hd291270291295_)
                           (_rest291302_ _tl291271291297_))
                      (declare (not safe))
                      (_K291269291292_ _rest291302_ _hd291300_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_ctx291238_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _ctx291238_
                    'gx#module-context::t))
                 (let ((__tmp295711
                        (##structure-ref
                         _ctx291238_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp295711)))
            '#!void
            (let* ((_ht291240_
                    (##structure-ref
                     (gxc#current-compile-optimizer-info)
                     '2
                     gxc#optimizer-info::t
                     '#f))
                   (_id291242_
                    (##structure-ref
                     _ctx291238_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_mod291244_
                    (let ()
                      (declare (not safe))
                      (hash-get _ht291240_ _id291242_))))
              (let ((_$e291247_ _mod291244_))
                (if _$e291247_
                    _$e291247_
                    (let* ((_mod291250_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-import-ssxi _ctx291238_)))
                           (_val291255_
                            (let ((_$e291252_ _mod291250_))
                              (if _$e291252_ _$e291252_ '#!void))))
                      (let ()
                        (declare (not safe))
                        (hash-put! _ht291240_ _id291242_ _val291255_))
                      _val291255_)))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_ctx291236_)
        (if (##structure-ref _ctx291236_ '1 gx#expander-context::t '#f)
            (let ((__tmp295712
                   (##structure-ref
                    _ctx291236_
                    '1
                    gx#expander-context::t
                    '#f)))
              (declare (not safe))
              (gxc#optimizer-import-ssxi-by-id __tmp295712))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_id291213_)
        (letrec ((_catch-e291215_
                  (lambda (_exn291234_)
                    (if (gxc#current-compile-verbose)
                        (begin
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"Failed to load ssxi module for "
                             _id291213_))
                          (display-exception _exn291234_))
                        '#!void)
                    '#f))
                 (_import-e291216_
                  (lambda ()
                    (let* ((_str-id291219_
                            (string-append
                             (let ()
                               (declare (not safe))
                               (gxc#module-id->path-string _id291213_))
                             '".ssxi"))
                           (_artefact-path291227_
                            (let ((_odir291220291222_
                                   (gxc#current-compile-output-dir)))
                              (if _odir291220291222_
                                  (let ((_odir291225_ _odir291220291222_))
                                    (path-expand
                                     (string-append _str-id291219_ '".ss")
                                     _odir291225_))
                                  '#f)))
                           (_library-path291229_
                            (string->symbol
                             (string-append '":" _str-id291219_ '".ss")))
                           (_ssxi-path291231_
                            (if (and _artefact-path291227_
                                     (file-exists? _artefact-path291227_))
                                _artefact-path291227_
                                _library-path291229_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _ssxi-path291231_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _ssxi-path291231_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (with-catch _catch-e291215_ _import-e291216_)))))
    (define gxc#optimize-source
      (lambda (_stx291204_)
        (let () (declare (not safe)) (gxc#apply-collect-mutators _stx291204_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _stx291204_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _stx291204_))
        (let* ((_stx291206_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _stx291204_)))
               (_stx291208_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _stx291206_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _stx291208_))
          (let ((_stx291211_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _stx291208_))))
            (declare (not safe))
            (gxc#apply-optimize-call _stx291211_)))))
    (define gxc#&generate-ssxi
      (make-promise
       (lambda ()
         (let ((_tbl291201_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp295713 (force gxc#&generate-runtime-empty)))
             (declare (not safe))
             (hash-merge! _tbl291201_ __tmp295713))
           (let ()
             (declare (not safe))
             (hash-put! _tbl291201_ '%#begin gxc#generate-runtime-begin%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl291201_
              '%#begin-syntax
              gxc#generate-ssxi-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl291201_ '%#module gxc#generate-ssxi-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl291201_
              '%#define-values
              gxc#generate-ssxi-define-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl291201_ '%#call gxc#generate-ssxi-call%))
           _tbl291201_))))
    (define gxc#apply-generate-ssxi
      (lambda (_stx291184_ . _args291186_)
        (let ((__tmp295715
               (lambda ()
                 (declare (not safe))
                 (if (null? _args291186_)
                     (gxc#compile-e__0 _stx291184_)
                     (let ((_arg1291191_ (car _args291186_))
                           (_rest291193_ (cdr _args291186_)))
                       (if (null? _rest291193_)
                           (gxc#compile-e__1 _stx291184_ _arg1291191_)
                           (let ((_arg2291196_ (car _rest291193_))
                                 (_rest291198_ (cdr _rest291193_)))
                             (if (null? _rest291198_)
                                 (gxc#compile-e__2
                                  _stx291184_
                                  _arg1291191_
                                  _arg2291196_)
                                 (apply gxc#compile-e
                                        _stx291184_
                                        _arg1291191_
                                        _arg2291196_
                                        _rest291198_))))))))
              (__tmp295714 (force gxc#&generate-ssxi)))
          (declare (not safe))
          (call-with-parameters
           __tmp295715
           gxc#current-compile-methods
           __tmp295714))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_stx291145_)
        (let* ((_g291147291157_
                (lambda (_g291148291154_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g291148291154_))))
               (_g291146291181_
                (lambda (_g291148291160_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g291148291160_))
                      (let ((_e291152291162_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g291148291160_))))
                        (let ((_hd291151291165_
                               (let ()
                                 (declare (not safe))
                                 (##car _e291152291162_)))
                              (_tl291150291167_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e291152291162_))))
                          ((lambda (_L291170_)
                             (let ((__tmp295718
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _stx291145_))))
                                   (__tmp295716
                                    (let ((__tmp295717
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp295717 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp295718
                                gx#current-expander-phi
                                __tmp295716)))
                           _tl291150291167_)))
                      (let ()
                        (declare (not safe))
                        (_g291147291157_ _g291148291160_))))))
          (declare (not safe))
          (_g291146291181_ _stx291145_))))
    (define gxc#generate-ssxi-module%
      (lambda (_stx291085_)
        (let* ((_g291087291101_
                (lambda (_g291088291098_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g291088291098_))))
               (_g291086291142_
                (lambda (_g291088291104_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g291088291104_))
                      (let ((_e291093291106_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g291088291104_))))
                        (let ((_hd291092291109_
                               (let ()
                                 (declare (not safe))
                                 (##car _e291093291106_)))
                              (_tl291091291111_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e291093291106_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl291091291111_))
                              (let ((_e291096291114_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl291091291111_))))
                                (let ((_hd291095291117_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e291096291114_)))
                                      (_tl291094291119_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e291096291114_))))
                                  ((lambda (_L291122_ _L291123_)
                                     (let* ((_ctx291136_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L291123_)))
                                            (_code291138_
                                             (##structure-ref
                                              _ctx291136_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp295719
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _code291138_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp295719
                                          gx#current-expander-context
                                          _ctx291136_))))
                                   _tl291094291119_
                                   _hd291095291117_)))
                              (let ()
                                (declare (not safe))
                                (_g291087291101_ _g291088291104_)))))
                      (let ()
                        (declare (not safe))
                        (_g291087291101_ _g291088291104_))))))
          (declare (not safe))
          (_g291086291142_ _stx291085_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_stx290895_)
        (letrec ((_generate-e290897_
                  (lambda (_id291074_)
                    (let* ((_sym291076_
                            (if (let ((__tmp295720
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp295720))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _id291074_))
                                '#f))
                           (_$e291078_
                            (if _sym291076_
                                (let ()
                                  (declare (not safe))
                                  (gxc#optimizer-lookup-type _sym291076_))
                                '#f)))
                      (if _$e291078_
                          ((lambda (_type291081_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"generate typedecl " _sym291076_))
                             (let* ((_typedecl291083_
                                     (let ((__method295689
                                            (let ()
                                              (declare (not safe))
                                              (method-ref
                                               _type291081_
                                               'typedecl))))
                                       (if __method295689
                                           (__method295689 _type291081_)
                                           (error '"Missing method"
                                                  _type291081_
                                                  'typedecl))))
                                    (__tmp295721
                                     (let ((__tmp295722
                                            (let ()
                                              (declare (not safe))
                                              (cons _typedecl291083_ '()))))
                                       (declare (not safe))
                                       (cons _sym291076_ __tmp295722))))
                               (declare (not safe))
                               (cons 'declare-type __tmp295721)))
                           _$e291078_)
                          '(begin))))))
          (let* ((___stx295387295388_ _stx290895_)
                 (_g290900290938_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx295387295388_)))))
            (let ((___kont295389295390_
                   (lambda (_L291056_)
                     (let ()
                       (declare (not safe))
                       (_generate-e290897_ _L291056_))))
                  (___kont295391295392_
                   (lambda (_L290991_)
                     (let ((_types291017_
                            (map _generate-e290897_
                                 (let ((__tmp295723
                                        (lambda (_g291009291012_
                                                 _g291010291014_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g291009291012_
                                                  _g291010291014_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp295723 '() _L290991_)))))
                       (declare (not safe))
                       (cons 'begin _types291017_)))))
              (let ((___match295442295443_
                     (lambda (_e290918290943_
                              _hd290917290946_
                              _tl290916290948_
                              _e290921290951_
                              _hd290920290954_
                              _tl290919290956_
                              ___splice295393295394_
                              _target290922290959_
                              _tl290924290961_)
                       (letrec ((_loop290925290964_
                                 (lambda (_hd290923290967_ _id290929290969_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd290923290967_))
                                       (let ((_e290926290972_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd290923290967_))))
                                         (let ((_lp-tl290928290977_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e290926290972_)))
                                               (_lp-hd290927290975_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e290926290972_))))
                                           (let ((__tmp295724
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd290927290975_
                                                          _id290929290969_))))
                                             (declare (not safe))
                                             (_loop290925290964_
                                              _lp-tl290928290977_
                                              __tmp295724))))
                                       (let ((_id290930290980_
                                              (reverse _id290929290969_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl290919290956_))
                                             (let ((_e290933290983_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl290919290956_))))
                                               (let ((_tl290931290988_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e290933290983_)))
                                                     (_hd290932290986_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e290933290983_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl290931290988_))
                                                     (___kont295391295392_
                                                      _id290930290980_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g290900290938_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g290900290938_))))))))
                         (let ()
                           (declare (not safe))
                           (_loop290925290964_ _target290922290959_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx295387295388_))
                    (let ((_e290905291024_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx295387295388_))))
                      (let ((_tl290903291029_
                             (let ()
                               (declare (not safe))
                               (##cdr _e290905291024_)))
                            (_hd290904291027_
                             (let ()
                               (declare (not safe))
                               (##car _e290905291024_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl290903291029_))
                            (let ((_e290908291032_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl290903291029_))))
                              (let ((_tl290906291037_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e290908291032_)))
                                    (_hd290907291035_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e290908291032_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd290907291035_))
                                    (let ((_e290911291040_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd290907291035_))))
                                      (let ((_tl290909291045_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e290911291040_)))
                                            (_hd290910291043_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e290911291040_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl290909291045_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl290906291037_))
                                                (let ((_e290914291048_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl290906291037_))))
                                                  (let ((_tl290912291053_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e290914291048_)))
                                                        (_hd290913291051_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e290914291048_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl290912291053_))
                                                        (___kont295389295390_
                                                         _hd290910291043_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _hd290907291035_))
                                                            (let ((___splice295393295394_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _hd290907291035_ '0))))
                      (let ((_tl290924290961_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice295393295394_ '1)))
                            (_target290922290959_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice295393295394_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl290924290961_))
                            (___match295442295443_
                             _e290905291024_
                             _hd290904291027_
                             _tl290903291029_
                             _e290908291032_
                             _hd290907291035_
                             _tl290906291037_
                             ___splice295393295394_
                             _target290922290959_
                             _tl290924290961_)
                            (let () (declare (not safe)) (_g290900290938_)))))
                    (let () (declare (not safe)) (_g290900290938_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _hd290907291035_))
                                                    (let ((___splice295393295394_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _hd290907291035_
                                                              '0))))
                                                      (let ((_tl290924290961_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice295393295394_ '1)))
                    (_target290922290959_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice295393295394_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl290924290961_))
                    (___match295442295443_
                     _e290905291024_
                     _hd290904291027_
                     _tl290903291029_
                     _e290908291032_
                     _hd290907291035_
                     _tl290906291037_
                     ___splice295393295394_
                     _target290922290959_
                     _tl290924290961_)
                    (let () (declare (not safe)) (_g290900290938_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g290900290938_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _hd290907291035_))
                                                (let ((___splice295393295394_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _hd290907291035_
                                                          '0))))
                                                  (let ((_tl290924290961_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice295393295394_
                                                            '1)))
                                                        (_target290922290959_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice295393295394_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl290924290961_))
                                                        (___match295442295443_
                                                         _e290905291024_
                                                         _hd290904291027_
                                                         _tl290903291029_
                                                         _e290908291032_
                                                         _hd290907291035_
                                                         _tl290906291037_
                                                         ___splice295393295394_
                                                         _target290922290959_
                                                         _tl290924290961_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g290900290938_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g290900290938_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd290907291035_))
                                        (let ((___splice295393295394_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd290907291035_
                                                  '0))))
                                          (let ((_tl290924290961_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice295393295394_
                                                    '1)))
                                                (_target290922290959_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice295393295394_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl290924290961_))
                                                (___match295442295443_
                                                 _e290905291024_
                                                 _hd290904291027_
                                                 _tl290903291029_
                                                 _e290908291032_
                                                 _hd290907291035_
                                                 _tl290906291037_
                                                 ___splice295393295394_
                                                 _target290922290959_
                                                 _tl290924290961_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g290900290938_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g290900290938_))))))
                            (let () (declare (not safe)) (_g290900290938_)))))
                    (let () (declare (not safe)) (_g290900290938_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_stx290449_)
        (let* ((___stx295445295446_ _stx290449_)
               (_g290453290555_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx295445295446_)))))
          (let ((___kont295447295448_
                 (lambda (_L290845_ _L290846_ _L290847_ _L290848_ _L290849_)
                   (let ((__tmp295725
                          (let ((__tmp295732
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L290848_)))
                                (__tmp295726
                                 (let ((__tmp295731
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L290847_)))
                                       (__tmp295727
                                        (let ((__tmp295730
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L290846_)))
                                              (__tmp295728
                                               (let ((__tmp295729
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L290845_))))
                                                 (declare (not safe))
                                                 (cons __tmp295729 '()))))
                                          (declare (not safe))
                                          (cons __tmp295730 __tmp295728))))
                                   (declare (not safe))
                                   (cons __tmp295731 __tmp295727))))
                            (declare (not safe))
                            (cons __tmp295732 __tmp295726))))
                     (declare (not safe))
                     (cons 'declare-method __tmp295725))))
                (___kont295449295450_
                 (lambda (_L290671_ _L290672_ _L290673_ _L290674_)
                   (let ((__tmp295733
                          (let ((__tmp295739
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L290673_)))
                                (__tmp295734
                                 (let ((__tmp295738
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L290672_)))
                                       (__tmp295735
                                        (let ((__tmp295737
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L290671_)))
                                              (__tmp295736
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '#f '()))))
                                          (declare (not safe))
                                          (cons __tmp295737 __tmp295736))))
                                   (declare (not safe))
                                   (cons __tmp295738 __tmp295735))))
                            (declare (not safe))
                            (cons __tmp295739 __tmp295734))))
                     (declare (not safe))
                     (cons 'declare-method __tmp295733))))
                (___kont295451295452_ (lambda () '(begin))))
            (let ((___match295580295581_
                   (lambda (_e290462290717_
                            _hd290461290720_
                            _tl290460290722_
                            _e290465290725_
                            _hd290464290728_
                            _tl290463290730_
                            _e290468290733_
                            _hd290467290736_
                            _tl290466290738_
                            _e290471290741_
                            _hd290470290744_
                            _tl290469290746_
                            _e290474290749_
                            _hd290473290752_
                            _tl290472290754_
                            _e290477290757_
                            _hd290476290760_
                            _tl290475290762_
                            _e290480290765_
                            _hd290479290768_
                            _tl290478290770_
                            _e290483290773_
                            _hd290482290776_
                            _tl290481290778_
                            _e290486290781_
                            _hd290485290784_
                            _tl290484290786_
                            _e290489290789_
                            _hd290488290792_
                            _tl290487290794_
                            _e290492290797_
                            _hd290491290800_
                            _tl290490290802_
                            _e290495290805_
                            _hd290494290808_
                            _tl290493290810_
                            _e290498290813_
                            _hd290497290816_
                            _tl290496290818_
                            _e290501290821_
                            _hd290500290824_
                            _tl290499290826_
                            _e290504290829_
                            _hd290503290832_
                            _tl290502290834_
                            _e290507290837_
                            _hd290506290840_
                            _tl290505290842_)
                     (let ((_L290845_ _hd290506290840_)
                           (_L290846_ _hd290497290816_)
                           (_L290847_ _hd290488290792_)
                           (_L290848_ _hd290479290768_)
                           (_L290849_ _hd290470290744_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L290849_
                              'bind-method!))
                           (___kont295447295448_
                            _L290845_
                            _L290846_
                            _L290847_
                            _L290848_
                            _L290849_)
                           (___kont295451295452_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx295445295446_))
                  (let ((_e290462290717_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx295445295446_))))
                    (let ((_tl290460290722_
                           (let ()
                             (declare (not safe))
                             (##cdr _e290462290717_)))
                          (_hd290461290720_
                           (let ()
                             (declare (not safe))
                             (##car _e290462290717_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl290460290722_))
                          (let ((_e290465290725_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl290460290722_))))
                            (let ((_tl290463290730_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e290465290725_)))
                                  (_hd290464290728_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e290465290725_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd290464290728_))
                                  (let ((_e290468290733_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd290464290728_))))
                                    (let ((_tl290466290738_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e290468290733_)))
                                          (_hd290467290736_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e290468290733_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd290467290736_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd290467290736_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl290466290738_))
                                                  (let ((_e290471290741_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl290466290738_))))
                                                    (let ((_tl290469290746_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e290471290741_)))
                                                          (_hd290470290744_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e290471290741_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl290469290746_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl290463290730_))
                      (let ((_e290474290749_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl290463290730_))))
                        (let ((_tl290472290754_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e290474290749_)))
                              (_hd290473290752_
                               (let ()
                                 (declare (not safe))
                                 (##car _e290474290749_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd290473290752_))
                              (let ((_e290477290757_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd290473290752_))))
                                (let ((_tl290475290762_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e290477290757_)))
                                      (_hd290476290760_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e290477290757_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd290476290760_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd290476290760_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl290475290762_))
                                              (let ((_e290480290765_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl290475290762_))))
                                                (let ((_tl290478290770_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e290480290765_)))
                                                      (_hd290479290768_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e290480290765_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl290478290770_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl290472290754_))
                                                          (let ((_e290483290773_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl290472290754_))))
                    (let ((_tl290481290778_
                           (let ()
                             (declare (not safe))
                             (##cdr _e290483290773_)))
                          (_hd290482290776_
                           (let ()
                             (declare (not safe))
                             (##car _e290483290773_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd290482290776_))
                          (let ((_e290486290781_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd290482290776_))))
                            (let ((_tl290484290786_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e290486290781_)))
                                  (_hd290485290784_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e290486290781_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd290485290784_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd290485290784_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl290484290786_))
                                          (let ((_e290489290789_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl290484290786_))))
                                            (let ((_tl290487290794_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e290489290789_)))
                                                  (_hd290488290792_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e290489290789_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl290487290794_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl290481290778_))
                                                      (let ((_e290492290797_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl290481290778_))))
                (let ((_tl290490290802_
                       (let () (declare (not safe)) (##cdr _e290492290797_)))
                      (_hd290491290800_
                       (let () (declare (not safe)) (##car _e290492290797_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd290491290800_))
                      (let ((_e290495290805_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd290491290800_))))
                        (let ((_tl290493290810_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e290495290805_)))
                              (_hd290494290808_
                               (let ()
                                 (declare (not safe))
                                 (##car _e290495290805_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd290494290808_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd290494290808_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl290493290810_))
                                      (let ((_e290498290813_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl290493290810_))))
                                        (let ((_tl290496290818_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e290498290813_)))
                                              (_hd290497290816_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e290498290813_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl290496290818_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl290490290802_))
                                                  (let ((_e290501290821_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl290490290802_))))
                                                    (let ((_tl290499290826_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e290501290821_)))
                                                          (_hd290500290824_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e290501290821_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd290500290824_))
                                                          (let ((_e290504290829_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd290500290824_))))
                    (let ((_tl290502290834_
                           (let ()
                             (declare (not safe))
                             (##cdr _e290504290829_)))
                          (_hd290503290832_
                           (let ()
                             (declare (not safe))
                             (##car _e290504290829_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd290503290832_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd290503290832_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl290502290834_))
                                  (let ((_e290507290837_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl290502290834_))))
                                    (let ((_tl290505290842_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e290507290837_)))
                                          (_hd290506290840_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e290507290837_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl290505290842_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl290499290826_))
                                              (___match295580295581_
                                               _e290462290717_
                                               _hd290461290720_
                                               _tl290460290722_
                                               _e290465290725_
                                               _hd290464290728_
                                               _tl290463290730_
                                               _e290468290733_
                                               _hd290467290736_
                                               _tl290466290738_
                                               _e290471290741_
                                               _hd290470290744_
                                               _tl290469290746_
                                               _e290474290749_
                                               _hd290473290752_
                                               _tl290472290754_
                                               _e290477290757_
                                               _hd290476290760_
                                               _tl290475290762_
                                               _e290480290765_
                                               _hd290479290768_
                                               _tl290478290770_
                                               _e290483290773_
                                               _hd290482290776_
                                               _tl290481290778_
                                               _e290486290781_
                                               _hd290485290784_
                                               _tl290484290786_
                                               _e290489290789_
                                               _hd290488290792_
                                               _tl290487290794_
                                               _e290492290797_
                                               _hd290491290800_
                                               _tl290490290802_
                                               _e290495290805_
                                               _hd290494290808_
                                               _tl290493290810_
                                               _e290498290813_
                                               _hd290497290816_
                                               _tl290496290818_
                                               _e290501290821_
                                               _hd290500290824_
                                               _tl290499290826_
                                               _e290504290829_
                                               _hd290503290832_
                                               _tl290502290834_
                                               _e290507290837_
                                               _hd290506290840_
                                               _tl290505290842_)
                                              (___kont295451295452_))
                                          (___kont295451295452_))))
                                  (___kont295451295452_))
                              (___kont295451295452_))
                          (___kont295451295452_))))
                  (___kont295451295452_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl290490290802_))
                                                      (if (let ((__tmp295740
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp295740 'bind-method!))
                  (let ((_L290671_ _hd290497290816_)
                        (_L290672_ _hd290488290792_)
                        (_L290673_ _hd290479290768_)
                        (_L290674_ _hd290470290744_))
                    (___kont295449295450_
                     _L290671_
                     _L290672_
                     _L290673_
                     _L290674_))
                  (___kont295451295452_))
              (___kont295451295452_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont295451295452_))))
                                      (___kont295451295452_))
                                  (___kont295451295452_))
                              (___kont295451295452_))))
                      (___kont295451295452_))))
              (___kont295451295452_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont295451295452_))))
                                          (___kont295451295452_))
                                      (___kont295451295452_))
                                  (___kont295451295452_))))
                          (___kont295451295452_))))
                  (___kont295451295452_))
              (___kont295451295452_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont295451295452_))
                                          (___kont295451295452_))
                                      (___kont295451295452_))))
                              (___kont295451295452_))))
                      (___kont295451295452_))
                  (___kont295451295452_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont295451295452_))
                                              (___kont295451295452_))
                                          (___kont295451295452_))))
                                  (___kont295451295452_))))
                          (___kont295451295452_))))
                  (___kont295451295452_)))))))
    (define gxc#!alias::typedecl
      (lambda (_self290425_)
        (let* ((_self290426290432_ _self290425_)
               (_E290428290436_
                (lambda () (error '"No clause matching" _self290426290432_)))
               (_K290429290441_
                (lambda (_alias-id290439_)
                  (let ((__tmp295741
                         (let ()
                           (declare (not safe))
                           (cons _alias-id290439_ '()))))
                    (declare (not safe))
                    (cons '@alias __tmp295741)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self290426290432_ 'gxc#!alias::t))
              (let* ((_e290430290444_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self290426290432_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_alias-id290447_ _e290430290444_))
                (declare (not safe))
                (_K290429290441_ _alias-id290447_))
              (let () (declare (not safe)) (_E290428290436_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_self290216_)
        (let* ((_self290217290232_ _self290216_)
               (_E290219290236_
                (lambda () (error '"No clause matching" _self290217290232_)))
               (_K290220290250_
                (lambda (_methods290239_
                         _metaclass290240_
                         _final?290241_
                         _struct?290242_
                         _constructor290243_
                         _fields290244_
                         _slots290245_
                         _precendence-list290246_
                         _super290247_
                         _id290248_)
                  (let ((__tmp295742
                         (let ((__tmp295743
                                (let ((__tmp295744
                                       (let ((__tmp295745
                                              (let ((__tmp295746
                                                     (let ((__tmp295747
                                                            (let ((__tmp295748
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp295749
                                  (let ((__tmp295750
                                         (let ((__tmp295751
                                                (let ((__tmp295752
                                                       (if _methods290239_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (hash->list
                                                              _methods290239_))
                                                           '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp295752 '()))))
                                           (declare (not safe))
                                           (cons _metaclass290240_
                                                 __tmp295751))))
                                    (declare (not safe))
                                    (cons _final?290241_ __tmp295750))))
                             (declare (not safe))
                             (cons _struct?290242_ __tmp295749))))
                      (declare (not safe))
                      (cons _constructor290243_ __tmp295748))))
               (declare (not safe))
               (cons _fields290244_ __tmp295747))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _slots290245_
                                                      __tmp295746))))
                                         (declare (not safe))
                                         (cons _precendence-list290246_
                                               __tmp295745))))
                                  (declare (not safe))
                                  (cons _super290247_ __tmp295744))))
                           (declare (not safe))
                           (cons _id290248_ __tmp295743))))
                    (declare (not safe))
                    (cons '@class __tmp295742)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self290217290232_ 'gxc#!class::t))
              (let* ((_e290221290253_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self290217290232_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_id290256_ _e290221290253_)
                     (_e290222290258_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self290217290232_
                         '2
                         gxc#!class::t
                         '#f)))
                     (_super290261_ _e290222290258_)
                     (_e290223290263_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self290217290232_
                         '3
                         gxc#!class::t
                         '#f)))
                     (_precendence-list290266_ _e290223290263_)
                     (_e290224290268_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self290217290232_
                         '4
                         gxc#!class::t
                         '#f)))
                     (_slots290271_ _e290224290268_)
                     (_e290225290273_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self290217290232_
                         '5
                         gxc#!class::t
                         '#f)))
                     (_fields290276_ _e290225290273_)
                     (_e290226290278_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self290217290232_
                         '6
                         gxc#!class::t
                         '#f)))
                     (_constructor290281_ _e290226290278_)
                     (_e290227290283_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self290217290232_
                         '7
                         gxc#!class::t
                         '#f)))
                     (_struct?290286_ _e290227290283_)
                     (_e290228290288_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self290217290232_
                         '8
                         gxc#!class::t
                         '#f)))
                     (_final?290291_ _e290228290288_)
                     (_e290229290293_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self290217290232_
                         '9
                         gxc#!class::t
                         '#f)))
                     (_metaclass290296_ _e290229290293_)
                     (_e290230290298_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self290217290232_
                         '10
                         gxc#!class::t
                         '#f)))
                     (_methods290301_ _e290230290298_))
                (declare (not safe))
                (_K290220290250_
                 _methods290301_
                 _metaclass290296_
                 _final?290291_
                 _struct?290286_
                 _constructor290281_
                 _fields290276_
                 _slots290271_
                 _precendence-list290266_
                 _super290261_
                 _id290256_))
              (let () (declare (not safe)) (_E290219290236_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_self290070_)
        (let* ((_self290071290077_ _self290070_)
               (_E290073290081_
                (lambda () (error '"No clause matching" _self290071290077_)))
               (_K290074290086_
                (lambda (_klass-id290084_)
                  (let ((__tmp295753
                         (let ()
                           (declare (not safe))
                           (cons _klass-id290084_ '()))))
                    (declare (not safe))
                    (cons '@predicate __tmp295753)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self290071290077_
                 'gxc#!predicate::t))
              (let* ((_e290075290089_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self290071290077_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id290092_ _e290075290089_))
                (declare (not safe))
                (_K290074290086_ _klass-id290092_))
              (let () (declare (not safe)) (_E290073290081_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!predicate::t 'typedecl gxc#!predicate::typedecl '#f))
    (define gxc#!constructor::typedecl
      (lambda (_self289924_)
        (let* ((_self289925289931_ _self289924_)
               (_E289927289935_
                (lambda () (error '"No clause matching" _self289925289931_)))
               (_K289928289940_
                (lambda (_klass-id289938_)
                  (let ((__tmp295754
                         (let ()
                           (declare (not safe))
                           (cons _klass-id289938_ '()))))
                    (declare (not safe))
                    (cons '@constructor __tmp295754)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self289925289931_
                 'gxc#!constructor::t))
              (let* ((_e289929289943_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self289925289931_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id289946_ _e289929289943_))
                (declare (not safe))
                (_K289928289940_ _klass-id289946_))
              (let () (declare (not safe)) (_E289927289935_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_self289764_)
        (let* ((_self289765289773_ _self289764_)
               (_E289767289777_
                (lambda () (error '"No clause matching" _self289765289773_)))
               (_K289768289784_
                (lambda (_checked?289780_ _slot289781_ _klass-id289782_)
                  (let ((__tmp295755
                         (let ((__tmp295756
                                (let ((__tmp295757
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?289780_ '()))))
                                  (declare (not safe))
                                  (cons _slot289781_ __tmp295757))))
                           (declare (not safe))
                           (cons _klass-id289782_ __tmp295756))))
                    (declare (not safe))
                    (cons '@accessor __tmp295755)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self289765289773_
                 'gxc#!accessor::t))
              (let* ((_e289769289787_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self289765289773_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id289790_ _e289769289787_)
                     (_e289770289792_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self289765289773_
                         '2
                         gxc#!accessor::t
                         '#f)))
                     (_slot289795_ _e289770289792_)
                     (_e289771289797_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self289765289773_
                         '3
                         gxc#!accessor::t
                         '#f)))
                     (_checked?289800_ _e289771289797_))
                (declare (not safe))
                (_K289768289784_
                 _checked?289800_
                 _slot289795_
                 _klass-id289790_))
              (let () (declare (not safe)) (_E289767289777_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_self289604_)
        (let* ((_self289605289613_ _self289604_)
               (_E289607289617_
                (lambda () (error '"No clause matching" _self289605289613_)))
               (_K289608289624_
                (lambda (_checked?289620_ _slot289621_ _klass-id289622_)
                  (let ((__tmp295758
                         (let ((__tmp295759
                                (let ((__tmp295760
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?289620_ '()))))
                                  (declare (not safe))
                                  (cons _slot289621_ __tmp295760))))
                           (declare (not safe))
                           (cons _klass-id289622_ __tmp295759))))
                    (declare (not safe))
                    (cons '@mutator __tmp295758)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self289605289613_ 'gxc#!mutator::t))
              (let* ((_e289609289627_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self289605289613_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id289630_ _e289609289627_)
                     (_e289610289632_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self289605289613_
                         '2
                         gxc#!mutator::t
                         '#f)))
                     (_slot289635_ _e289610289632_)
                     (_e289611289637_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self289605289613_
                         '3
                         gxc#!mutator::t
                         '#f)))
                     (_checked?289640_ _e289611289637_))
                (declare (not safe))
                (_K289608289624_
                 _checked?289640_
                 _slot289635_
                 _klass-id289630_))
              (let () (declare (not safe)) (_E289607289617_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!lambda::typedecl
      (lambda (_self289430_)
        (let* ((_self289431289441_ _self289430_)
               (_E289433289445_
                (lambda () (error '"No clause matching" _self289431289441_)))
               (_K289434289456_
                (lambda (_typedecl289448_
                         _inline289449_
                         _dispatch289450_
                         _arity289451_)
                  (if _inline289449_
                      (let ((_$e289453_ _typedecl289448_))
                        (if _$e289453_
                            _$e289453_
                            (error '"Cannot generate typedecl for inline rules")))
                      (let ((__tmp295761
                             (let ((__tmp295762
                                    (let ()
                                      (declare (not safe))
                                      (cons _dispatch289450_ '()))))
                               (declare (not safe))
                               (cons _arity289451_ __tmp295762))))
                        (declare (not safe))
                        (cons '@lambda __tmp295761))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self289431289441_ 'gxc#!lambda::t))
              (let* ((_e289435289459_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self289431289441_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e289436289462_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self289431289441_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity289465_ _e289436289462_)
                     (_e289437289467_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self289431289441_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch289470_ _e289437289467_)
                     (_e289438289472_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self289431289441_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline289475_ _e289438289472_)
                     (_e289439289477_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self289431289441_
                         '5
                         gxc#!lambda::t
                         '#f)))
                     (_typedecl289480_ _e289439289477_))
                (declare (not safe))
                (_K289434289456_
                 _typedecl289480_
                 _inline289475_
                 _dispatch289470_
                 _arity289465_))
              (let () (declare (not safe)) (_E289433289445_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_self289241_)
        (letrec ((_clause-e289243_
                  (lambda (_clause289273_)
                    (let* ((_clause289274289282_ _clause289273_)
                           (_E289276289286_
                            (lambda ()
                              (error '"No clause matching"
                                     _clause289274289282_)))
                           (_K289277289292_
                            (lambda (_dispatch289289_ _arity289290_)
                              (let ((__tmp295763
                                     (let ()
                                       (declare (not safe))
                                       (cons _dispatch289289_ '()))))
                                (declare (not safe))
                                (cons _arity289290_ __tmp295763)))))
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _clause289274289282_
                             'gxc#!lambda::t))
                          (let* ((_e289278289295_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause289274289282_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                                 (_e289279289298_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause289274289282_
                                     '2
                                     gxc#!lambda::t
                                     '#f)))
                                 (_arity289301_ _e289279289298_)
                                 (_e289280289303_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause289274289282_
                                     '3
                                     gxc#!lambda::t
                                     '#f)))
                                 (_dispatch289306_ _e289280289303_))
                            (declare (not safe))
                            (_K289277289292_ _dispatch289306_ _arity289301_))
                          (let () (declare (not safe)) (_E289276289286_)))))))
          (let* ((_self289244289251_ _self289241_)
                 (_E289246289255_
                  (lambda () (error '"No clause matching" _self289244289251_)))
                 (_K289247289262_
                  (lambda (_clauses289258_)
                    (let ((_clauses289260_
                           (map _clause-e289243_ _clauses289258_)))
                      (declare (not safe))
                      (cons '@case-lambda _clauses289260_)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of?
                   _self289244289251_
                   'gxc#!case-lambda::t))
                (let* ((_e289248289265_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self289244289251_
                           '1
                           gxc#!type::t
                           '#f)))
                       (_e289249289268_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self289244289251_
                           '2
                           gxc#!case-lambda::t
                           '#f)))
                       (_clauses289271_ _e289249289268_))
                  (declare (not safe))
                  (_K289247289262_ _clauses289271_))
                (let () (declare (not safe)) (_E289246289255_)))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_self289084_)
        (let* ((_self289085289093_ _self289084_)
               (_E289087289097_
                (lambda () (error '"No clause matching" _self289085289093_)))
               (_K289088289103_
                (lambda (_dispatch289100_ _table289101_)
                  (let ((__tmp295764
                         (let ((__tmp295765
                                (let ()
                                  (declare (not safe))
                                  (cons _dispatch289100_ '()))))
                           (declare (not safe))
                           (cons _table289101_ __tmp295765))))
                    (declare (not safe))
                    (cons '@kw-lambda __tmp295764)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self289085289093_
                 'gxc#!kw-lambda::t))
              (let* ((_e289089289106_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self289085289093_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e289090289109_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self289085289093_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table289112_ _e289090289109_)
                     (_e289091289114_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self289085289093_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch289117_ _e289091289114_))
                (declare (not safe))
                (_K289088289103_ _dispatch289117_ _table289112_))
              (let () (declare (not safe)) (_E289087289097_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!kw-lambda::t 'typedecl gxc#!kw-lambda::typedecl '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_self288927_)
        (let* ((_self288928288936_ _self288927_)
               (_E288930288940_
                (lambda () (error '"No clause matching" _self288928288936_)))
               (_K288931288946_
                (lambda (_main288943_ _keys288944_)
                  (let ((__tmp295766
                         (let ((__tmp295767
                                (let ()
                                  (declare (not safe))
                                  (cons _main288943_ '()))))
                           (declare (not safe))
                           (cons _keys288944_ __tmp295767))))
                    (declare (not safe))
                    (cons '@kw-lambda-dispatch __tmp295766)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self288928288936_
                 'gxc#!kw-lambda-primary::t))
              (let* ((_e288932288949_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self288928288936_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e288933288952_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self288928288936_
                         '2
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_keys288955_ _e288933288952_)
                     (_e288934288957_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self288928288936_
                         '3
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_main288960_ _e288934288957_))
                (declare (not safe))
                (_K288931288946_ _main288960_ _keys288955_))
              (let () (declare (not safe)) (_E288930288940_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))))
