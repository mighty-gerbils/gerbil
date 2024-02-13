(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1707831913)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (gxc#current-compile-optimizer-info)
            '#!void
            (gxc#current-compile-optimizer-info
             (let ((__obj291011
                    (let ()
                      (declare (not safe))
                      (##structure gxc#optimizer-info::t '#f '#f '#f))))
               (gxc#optimizer-info:::init! __obj291011)
               __obj291011)))))
    (define gxc#optimize!
      (lambda (_ctx286136_)
        (let ((__tmp291015
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _ctx286136_))
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-builtin-ssxi))
                 (let ((__tmp291017
                        (##structure-ref
                         (gxc#current-compile-optimizer-info)
                         '2
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp291016
                        (##structure-ref
                         _ctx286136_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (table-set! __tmp291017 __tmp291016 '#t))
                 (let ((_code286139_
                        (let ((__tmp291018
                               (##structure-ref
                                _ctx286136_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp291018))))
                   (##structure-set!
                    _ctx286136_
                    _code286139_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp291014
               (let () (declare (not safe)) (make-table 'test: eq?)))
              (__tmp291013
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (call-with-parameters
           __tmp291015
           gxc#current-compile-mutators
           __tmp291014
           gxc#current-compile-local-type
           __tmp291013))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda ()
        (let ()
          (declare (not safe))
          (gxc#optimizer-import-ssxi-by-id 'gerbil/builtin))
        (let ((__tmp291019
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-set! __tmp291019 'gerbil/builtin '#t))))
    (define gxc#optimizer-load-ssxi-deps
      (lambda (_ctx286080_)
        (letrec* ((_deps286082_
                   (let* ((_imports286126_
                           (##structure-ref
                            _ctx286080_
                            '8
                            gx#module-context::t
                            '#f))
                          (_$e286128_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _ctx286080_))))
                     (if _$e286128_
                         ((lambda (_g286130286132_)
                            (let ()
                              (declare (not safe))
                              (cons _g286130286132_ _imports286126_)))
                          _$e286128_)
                         _imports286126_))))
          (let _lp286084_ ((_rest286086_ _deps286082_))
            (let* ((_rest286087286095_ _rest286086_)
                   (_else286089286103_ (lambda () '#!void))
                   (_K286091286114_
                    (lambda (_rest286106_ _hd286107_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _hd286107_
                             'gx#module-context::t))
                          (begin
                            (if (let ((__tmp291021
                                       (##structure-ref
                                        (gxc#current-compile-optimizer-info)
                                        '2
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp291020
                                       (##structure-ref
                                        _hd286107_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (table-ref __tmp291021 __tmp291020 '#f))
                                '#!void
                                (begin
                                  (let ((_$e286109_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _hd286107_))))
                                    (if _$e286109_
                                        ((lambda (_pre286112_)
                                           (let ((__tmp291022
                                                  (let ((__tmp291023
                                                         (##structure-ref
                                                          _hd286107_
                                                          '8
                                                          gx#module-context::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (cons _pre286112_
                                                          __tmp291023))))
                                             (declare (not safe))
                                             (_lp286084_ __tmp291022)))
                                         _$e286109_)
                                        (let ((__tmp291024
                                               (##structure-ref
                                                _hd286107_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                          (declare (not safe))
                                          (_lp286084_ __tmp291024))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _hd286107_))))
                            (let ()
                              (declare (not safe))
                              (_lp286084_ _rest286106_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _hd286107_
                                 'gx#prelude-context::t))
                              (begin
                                (if (let ((__tmp291026
                                           (##structure-ref
                                            (gxc#current-compile-optimizer-info)
                                            '2
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp291025
                                           (##structure-ref
                                            _hd286107_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (table-ref __tmp291026 __tmp291025 '#f))
                                    '#!void
                                    (begin
                                      (let ((__tmp291027
                                             (##structure-ref
                                              _hd286107_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_lp286084_ __tmp291027))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi _hd286107_))))
                                (let ()
                                  (declare (not safe))
                                  (_lp286084_ _rest286106_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _hd286107_
                                     'gx#module-import::t))
                                  (let ((__tmp291028
                                         (let ((__tmp291029
                                                (##direct-structure-ref
                                                 _hd286107_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp291029 _rest286106_))))
                                    (declare (not safe))
                                    (_lp286084_ __tmp291028))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _hd286107_
                                         'gx#module-export::t))
                                      (let ((__tmp291030
                                             (let ((__tmp291031
                                                    (##direct-structure-ref
                                                     _hd286107_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp291031
                                                     _rest286106_))))
                                        (declare (not safe))
                                        (_lp286084_ __tmp291030))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _hd286107_
                                             'gx#import-set::t))
                                          (let ((__tmp291032
                                                 (let ((__tmp291033
                                                        (##direct-structure-ref
                                                         _hd286107_
                                                         '1
                                                         gx#import-set::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp291033
                                                         _rest286106_))))
                                            (declare (not safe))
                                            (_lp286084_ __tmp291032))
                                          (error '"Unexpected module import"
                                                 _hd286107_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest286087286095_))
                  (let ((_hd286092286117_
                         (let ()
                           (declare (not safe))
                           (##car _rest286087286095_)))
                        (_tl286093286119_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest286087286095_))))
                    (let* ((_hd286122_ _hd286092286117_)
                           (_rest286124_ _tl286093286119_))
                      (declare (not safe))
                      (_K286091286114_ _rest286124_ _hd286122_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_ctx286060_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _ctx286060_
                    'gx#module-context::t))
                 (let ((__tmp291034
                        (##structure-ref
                         _ctx286060_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp291034)))
            '#!void
            (let* ((_ht286062_
                    (##structure-ref
                     (gxc#current-compile-optimizer-info)
                     '2
                     gxc#optimizer-info::t
                     '#f))
                   (_id286064_
                    (##structure-ref
                     _ctx286060_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_mod286066_
                    (let ()
                      (declare (not safe))
                      (table-ref _ht286062_ _id286064_ '#f))))
              (let ((_$e286069_ _mod286066_))
                (if _$e286069_
                    _$e286069_
                    (let* ((_mod286072_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-import-ssxi _ctx286060_)))
                           (_val286077_
                            (let ((_$e286074_ _mod286072_))
                              (if _$e286074_ _$e286074_ '#!void))))
                      (let ()
                        (declare (not safe))
                        (table-set! _ht286062_ _id286064_ _val286077_))
                      _val286077_)))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_ctx286058_)
        (if (##structure-ref _ctx286058_ '1 gx#expander-context::t '#f)
            (let ((__tmp291035
                   (##structure-ref
                    _ctx286058_
                    '1
                    gx#expander-context::t
                    '#f)))
              (declare (not safe))
              (gxc#optimizer-import-ssxi-by-id __tmp291035))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_id286035_)
        (letrec ((_catch-e286037_
                  (lambda (_exn286056_)
                    (if (gxc#current-compile-verbose)
                        (begin
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"Failed to load ssxi module for "
                             _id286035_))
                          (display-exception _exn286056_))
                        '#!void)
                    '#f))
                 (_import-e286038_
                  (lambda ()
                    (let* ((_str-id286041_
                            (string-append
                             (let ()
                               (declare (not safe))
                               (gxc#module-id->path-string _id286035_))
                             '".ssxi"))
                           (_artefact-path286049_
                            (let ((_odir286042286044_
                                   (gxc#current-compile-output-dir)))
                              (if _odir286042286044_
                                  (let ((_odir286047_ _odir286042286044_))
                                    (path-expand
                                     (string-append _str-id286041_ '".ss")
                                     _odir286047_))
                                  '#f)))
                           (_library-path286051_
                            (string->symbol
                             (string-append '":" _str-id286041_ '".ss")))
                           (_ssxi-path286053_
                            (if (and _artefact-path286049_
                                     (file-exists? _artefact-path286049_))
                                _artefact-path286049_
                                _library-path286051_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _ssxi-path286053_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _ssxi-path286053_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (with-catch _catch-e286037_ _import-e286038_)))))
    (define gxc#optimize-source
      (lambda (_stx286026_)
        (let () (declare (not safe)) (gxc#apply-collect-mutators _stx286026_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _stx286026_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _stx286026_))
        (let* ((_stx286028_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _stx286026_)))
               (_stx286030_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _stx286028_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _stx286030_))
          (let ((_stx286033_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _stx286030_))))
            (declare (not safe))
            (gxc#apply-optimize-call _stx286033_)))))
    (define gxc#&generate-ssxi
      (make-promise
       (lambda ()
         (let ((_tbl286023_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp291036 (force gxc#&generate-runtime-empty)))
             (declare (not safe))
             (hash-copy! _tbl286023_ __tmp291036))
           (let ()
             (declare (not safe))
             (table-set! _tbl286023_ '%#begin gxc#generate-runtime-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl286023_
              '%#begin-syntax
              gxc#generate-ssxi-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl286023_ '%#module gxc#generate-ssxi-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl286023_
              '%#define-values
              gxc#generate-ssxi-define-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl286023_ '%#call gxc#generate-ssxi-call%))
           _tbl286023_))))
    (define gxc#apply-generate-ssxi
      (lambda (_stx286006_ . _args286008_)
        (let ((__tmp291038
               (lambda ()
                 (declare (not safe))
                 (if (null? _args286008_)
                     (gxc#compile-e__0 _stx286006_)
                     (let ((_arg1286013_ (car _args286008_))
                           (_rest286015_ (cdr _args286008_)))
                       (if (null? _rest286015_)
                           (gxc#compile-e__1 _stx286006_ _arg1286013_)
                           (let ((_arg2286018_ (car _rest286015_))
                                 (_rest286020_ (cdr _rest286015_)))
                             (if (null? _rest286020_)
                                 (gxc#compile-e__2
                                  _stx286006_
                                  _arg1286013_
                                  _arg2286018_)
                                 (apply gxc#compile-e
                                        _stx286006_
                                        _arg1286013_
                                        _arg2286018_
                                        _rest286020_))))))))
              (__tmp291037 (force gxc#&generate-ssxi)))
          (declare (not safe))
          (call-with-parameters
           __tmp291038
           gxc#current-compile-methods
           __tmp291037))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_stx285967_)
        (let* ((_g285969285979_
                (lambda (_g285970285976_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g285970285976_))))
               (_g285968286003_
                (lambda (_g285970285982_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g285970285982_))
                      (let ((_e285972285984_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g285970285982_))))
                        (let ((_hd285973285987_
                               (let ()
                                 (declare (not safe))
                                 (##car _e285972285984_)))
                              (_tl285974285989_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e285972285984_))))
                          ((lambda (_L285992_)
                             (let ((__tmp291041
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _stx285967_))))
                                   (__tmp291039
                                    (let ((__tmp291040
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp291040 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp291041
                                gx#current-expander-phi
                                __tmp291039)))
                           _tl285974285989_)))
                      (let ()
                        (declare (not safe))
                        (_g285969285979_ _g285970285982_))))))
          (declare (not safe))
          (_g285968286003_ _stx285967_))))
    (define gxc#generate-ssxi-module%
      (lambda (_stx285907_)
        (let* ((_g285909285923_
                (lambda (_g285910285920_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g285910285920_))))
               (_g285908285964_
                (lambda (_g285910285926_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g285910285926_))
                      (let ((_e285913285928_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g285910285926_))))
                        (let ((_hd285914285931_
                               (let ()
                                 (declare (not safe))
                                 (##car _e285913285928_)))
                              (_tl285915285933_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e285913285928_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl285915285933_))
                              (let ((_e285916285936_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl285915285933_))))
                                (let ((_hd285917285939_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e285916285936_)))
                                      (_tl285918285941_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e285916285936_))))
                                  ((lambda (_L285944_ _L285945_)
                                     (let* ((_ctx285958_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L285945_)))
                                            (_code285960_
                                             (##structure-ref
                                              _ctx285958_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp291042
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _code285960_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp291042
                                          gx#current-expander-context
                                          _ctx285958_))))
                                   _tl285918285941_
                                   _hd285917285939_)))
                              (let ()
                                (declare (not safe))
                                (_g285909285923_ _g285910285926_)))))
                      (let ()
                        (declare (not safe))
                        (_g285909285923_ _g285910285926_))))))
          (declare (not safe))
          (_g285908285964_ _stx285907_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_stx285717_)
        (letrec ((_generate-e285719_
                  (lambda (_id285896_)
                    (let* ((_sym285898_
                            (if (let ((__tmp291043
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp291043))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _id285896_))
                                '#f))
                           (_$e285900_
                            (if _sym285898_
                                (let ()
                                  (declare (not safe))
                                  (gxc#optimizer-lookup-type _sym285898_))
                                '#f)))
                      (if _$e285900_
                          ((lambda (_type285903_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"generate typedecl " _sym285898_))
                             (let* ((_typedecl285905_
                                     (let ((__method291012
                                            (let ()
                                              (declare (not safe))
                                              (method-ref
                                               _type285903_
                                               'typedecl))))
                                       (if __method291012
                                           (__method291012 _type285903_)
                                           (error '"Missing method"
                                                  _type285903_
                                                  'typedecl))))
                                    (__tmp291044
                                     (let ((__tmp291045
                                            (let ()
                                              (declare (not safe))
                                              (cons _typedecl285905_ '()))))
                                       (declare (not safe))
                                       (cons _sym285898_ __tmp291045))))
                               (declare (not safe))
                               (cons 'declare-type __tmp291044)))
                           _$e285900_)
                          '(begin))))))
          (let* ((___stx290710290711_ _stx285717_)
                 (_g285722285760_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx290710290711_)))))
            (let ((___kont290712290713_
                   (lambda (_L285878_)
                     (let ()
                       (declare (not safe))
                       (_generate-e285719_ _L285878_))))
                  (___kont290714290715_
                   (lambda (_L285813_)
                     (let ((_types285839_
                            (map _generate-e285719_
                                 (let ((__tmp291046
                                        (lambda (_g285831285834_
                                                 _g285832285836_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g285831285834_
                                                  _g285832285836_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp291046 '() _L285813_)))))
                       (declare (not safe))
                       (cons 'begin _types285839_)))))
              (let ((___match290765290766_
                     (lambda (_e285738285765_
                              _hd285739285768_
                              _tl285740285770_
                              _e285741285773_
                              _hd285742285776_
                              _tl285743285778_
                              ___splice290716290717_
                              _target285744285781_
                              _tl285746285783_)
                       (letrec ((_loop285747285786_
                                 (lambda (_hd285745285789_ _id285751285791_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd285745285789_))
                                       (let ((_e285748285794_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd285745285789_))))
                                         (let ((_lp-tl285750285799_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e285748285794_)))
                                               (_lp-hd285749285797_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e285748285794_))))
                                           (let ((__tmp291047
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd285749285797_
                                                          _id285751285791_))))
                                             (declare (not safe))
                                             (_loop285747285786_
                                              _lp-tl285750285799_
                                              __tmp291047))))
                                       (let ((_id285752285802_
                                              (reverse _id285751285791_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl285743285778_))
                                             (let ((_e285753285805_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl285743285778_))))
                                               (let ((_tl285755285810_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e285753285805_)))
                                                     (_hd285754285808_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e285753285805_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl285755285810_))
                                                     (___kont290714290715_
                                                      _id285752285802_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g285722285760_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g285722285760_))))))))
                         (let ()
                           (declare (not safe))
                           (_loop285747285786_ _target285744285781_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx290710290711_))
                    (let ((_e285725285846_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx290710290711_))))
                      (let ((_tl285727285851_
                             (let ()
                               (declare (not safe))
                               (##cdr _e285725285846_)))
                            (_hd285726285849_
                             (let ()
                               (declare (not safe))
                               (##car _e285725285846_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl285727285851_))
                            (let ((_e285728285854_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl285727285851_))))
                              (let ((_tl285730285859_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e285728285854_)))
                                    (_hd285729285857_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e285728285854_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd285729285857_))
                                    (let ((_e285731285862_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd285729285857_))))
                                      (let ((_tl285733285867_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e285731285862_)))
                                            (_hd285732285865_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e285731285862_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl285733285867_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl285730285859_))
                                                (let ((_e285734285870_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl285730285859_))))
                                                  (let ((_tl285736285875_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e285734285870_)))
                                                        (_hd285735285873_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e285734285870_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl285736285875_))
                                                        (___kont290712290713_
                                                         _hd285732285865_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _hd285729285857_))
                                                            (let ((___splice290716290717_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _hd285729285857_ '0))))
                      (let ((_tl285746285783_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice290716290717_ '1)))
                            (_target285744285781_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice290716290717_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl285746285783_))
                            (___match290765290766_
                             _e285725285846_
                             _hd285726285849_
                             _tl285727285851_
                             _e285728285854_
                             _hd285729285857_
                             _tl285730285859_
                             ___splice290716290717_
                             _target285744285781_
                             _tl285746285783_)
                            (let () (declare (not safe)) (_g285722285760_)))))
                    (let () (declare (not safe)) (_g285722285760_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _hd285729285857_))
                                                    (let ((___splice290716290717_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _hd285729285857_
                                                              '0))))
                                                      (let ((_tl285746285783_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice290716290717_ '1)))
                    (_target285744285781_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice290716290717_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl285746285783_))
                    (___match290765290766_
                     _e285725285846_
                     _hd285726285849_
                     _tl285727285851_
                     _e285728285854_
                     _hd285729285857_
                     _tl285730285859_
                     ___splice290716290717_
                     _target285744285781_
                     _tl285746285783_)
                    (let () (declare (not safe)) (_g285722285760_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g285722285760_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _hd285729285857_))
                                                (let ((___splice290716290717_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _hd285729285857_
                                                          '0))))
                                                  (let ((_tl285746285783_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice290716290717_
                                                            '1)))
                                                        (_target285744285781_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice290716290717_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl285746285783_))
                                                        (___match290765290766_
                                                         _e285725285846_
                                                         _hd285726285849_
                                                         _tl285727285851_
                                                         _e285728285854_
                                                         _hd285729285857_
                                                         _tl285730285859_
                                                         ___splice290716290717_
                                                         _target285744285781_
                                                         _tl285746285783_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g285722285760_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g285722285760_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd285729285857_))
                                        (let ((___splice290716290717_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd285729285857_
                                                  '0))))
                                          (let ((_tl285746285783_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice290716290717_
                                                    '1)))
                                                (_target285744285781_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice290716290717_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl285746285783_))
                                                (___match290765290766_
                                                 _e285725285846_
                                                 _hd285726285849_
                                                 _tl285727285851_
                                                 _e285728285854_
                                                 _hd285729285857_
                                                 _tl285730285859_
                                                 ___splice290716290717_
                                                 _target285744285781_
                                                 _tl285746285783_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g285722285760_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g285722285760_))))))
                            (let () (declare (not safe)) (_g285722285760_)))))
                    (let () (declare (not safe)) (_g285722285760_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_stx285271_)
        (let* ((___stx290768290769_ _stx285271_)
               (_g285275285377_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx290768290769_)))))
          (let ((___kont290770290771_
                 (lambda (_L285667_ _L285668_ _L285669_ _L285670_ _L285671_)
                   (let ((__tmp291048
                          (let ((__tmp291055
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L285670_)))
                                (__tmp291049
                                 (let ((__tmp291054
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L285669_)))
                                       (__tmp291050
                                        (let ((__tmp291053
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L285668_)))
                                              (__tmp291051
                                               (let ((__tmp291052
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L285667_))))
                                                 (declare (not safe))
                                                 (cons __tmp291052 '()))))
                                          (declare (not safe))
                                          (cons __tmp291053 __tmp291051))))
                                   (declare (not safe))
                                   (cons __tmp291054 __tmp291050))))
                            (declare (not safe))
                            (cons __tmp291055 __tmp291049))))
                     (declare (not safe))
                     (cons 'declare-method __tmp291048))))
                (___kont290772290773_
                 (lambda (_L285493_ _L285494_ _L285495_ _L285496_)
                   (let ((__tmp291056
                          (let ((__tmp291062
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L285495_)))
                                (__tmp291057
                                 (let ((__tmp291061
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L285494_)))
                                       (__tmp291058
                                        (let ((__tmp291060
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L285493_)))
                                              (__tmp291059
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '#f '()))))
                                          (declare (not safe))
                                          (cons __tmp291060 __tmp291059))))
                                   (declare (not safe))
                                   (cons __tmp291061 __tmp291058))))
                            (declare (not safe))
                            (cons __tmp291062 __tmp291057))))
                     (declare (not safe))
                     (cons 'declare-method __tmp291056))))
                (___kont290774290775_ (lambda () '(begin))))
            (let ((___match290903290904_
                   (lambda (_e285282285539_
                            _hd285283285542_
                            _tl285284285544_
                            _e285285285547_
                            _hd285286285550_
                            _tl285287285552_
                            _e285288285555_
                            _hd285289285558_
                            _tl285290285560_
                            _e285291285563_
                            _hd285292285566_
                            _tl285293285568_
                            _e285294285571_
                            _hd285295285574_
                            _tl285296285576_
                            _e285297285579_
                            _hd285298285582_
                            _tl285299285584_
                            _e285300285587_
                            _hd285301285590_
                            _tl285302285592_
                            _e285303285595_
                            _hd285304285598_
                            _tl285305285600_
                            _e285306285603_
                            _hd285307285606_
                            _tl285308285608_
                            _e285309285611_
                            _hd285310285614_
                            _tl285311285616_
                            _e285312285619_
                            _hd285313285622_
                            _tl285314285624_
                            _e285315285627_
                            _hd285316285630_
                            _tl285317285632_
                            _e285318285635_
                            _hd285319285638_
                            _tl285320285640_
                            _e285321285643_
                            _hd285322285646_
                            _tl285323285648_
                            _e285324285651_
                            _hd285325285654_
                            _tl285326285656_
                            _e285327285659_
                            _hd285328285662_
                            _tl285329285664_)
                     (let ((_L285667_ _hd285328285662_)
                           (_L285668_ _hd285319285638_)
                           (_L285669_ _hd285310285614_)
                           (_L285670_ _hd285301285590_)
                           (_L285671_ _hd285292285566_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L285671_
                              'bind-method!))
                           (___kont290770290771_
                            _L285667_
                            _L285668_
                            _L285669_
                            _L285670_
                            _L285671_)
                           (___kont290774290775_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx290768290769_))
                  (let ((_e285282285539_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx290768290769_))))
                    (let ((_tl285284285544_
                           (let ()
                             (declare (not safe))
                             (##cdr _e285282285539_)))
                          (_hd285283285542_
                           (let ()
                             (declare (not safe))
                             (##car _e285282285539_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl285284285544_))
                          (let ((_e285285285547_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl285284285544_))))
                            (let ((_tl285287285552_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e285285285547_)))
                                  (_hd285286285550_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e285285285547_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd285286285550_))
                                  (let ((_e285288285555_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd285286285550_))))
                                    (let ((_tl285290285560_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e285288285555_)))
                                          (_hd285289285558_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e285288285555_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd285289285558_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd285289285558_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl285290285560_))
                                                  (let ((_e285291285563_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl285290285560_))))
                                                    (let ((_tl285293285568_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e285291285563_)))
                                                          (_hd285292285566_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e285291285563_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl285293285568_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl285287285552_))
                      (let ((_e285294285571_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl285287285552_))))
                        (let ((_tl285296285576_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e285294285571_)))
                              (_hd285295285574_
                               (let ()
                                 (declare (not safe))
                                 (##car _e285294285571_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd285295285574_))
                              (let ((_e285297285579_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd285295285574_))))
                                (let ((_tl285299285584_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e285297285579_)))
                                      (_hd285298285582_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e285297285579_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd285298285582_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd285298285582_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl285299285584_))
                                              (let ((_e285300285587_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl285299285584_))))
                                                (let ((_tl285302285592_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e285300285587_)))
                                                      (_hd285301285590_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e285300285587_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl285302285592_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl285296285576_))
                                                          (let ((_e285303285595_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl285296285576_))))
                    (let ((_tl285305285600_
                           (let ()
                             (declare (not safe))
                             (##cdr _e285303285595_)))
                          (_hd285304285598_
                           (let ()
                             (declare (not safe))
                             (##car _e285303285595_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd285304285598_))
                          (let ((_e285306285603_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd285304285598_))))
                            (let ((_tl285308285608_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e285306285603_)))
                                  (_hd285307285606_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e285306285603_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd285307285606_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd285307285606_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl285308285608_))
                                          (let ((_e285309285611_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl285308285608_))))
                                            (let ((_tl285311285616_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e285309285611_)))
                                                  (_hd285310285614_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e285309285611_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl285311285616_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl285305285600_))
                                                      (let ((_e285312285619_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl285305285600_))))
                (let ((_tl285314285624_
                       (let () (declare (not safe)) (##cdr _e285312285619_)))
                      (_hd285313285622_
                       (let () (declare (not safe)) (##car _e285312285619_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd285313285622_))
                      (let ((_e285315285627_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd285313285622_))))
                        (let ((_tl285317285632_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e285315285627_)))
                              (_hd285316285630_
                               (let ()
                                 (declare (not safe))
                                 (##car _e285315285627_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd285316285630_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd285316285630_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl285317285632_))
                                      (let ((_e285318285635_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl285317285632_))))
                                        (let ((_tl285320285640_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e285318285635_)))
                                              (_hd285319285638_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e285318285635_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl285320285640_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl285314285624_))
                                                  (let ((_e285321285643_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl285314285624_))))
                                                    (let ((_tl285323285648_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e285321285643_)))
                                                          (_hd285322285646_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e285321285643_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd285322285646_))
                                                          (let ((_e285324285651_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd285322285646_))))
                    (let ((_tl285326285656_
                           (let ()
                             (declare (not safe))
                             (##cdr _e285324285651_)))
                          (_hd285325285654_
                           (let ()
                             (declare (not safe))
                             (##car _e285324285651_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd285325285654_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd285325285654_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl285326285656_))
                                  (let ((_e285327285659_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl285326285656_))))
                                    (let ((_tl285329285664_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e285327285659_)))
                                          (_hd285328285662_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e285327285659_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl285329285664_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl285323285648_))
                                              (___match290903290904_
                                               _e285282285539_
                                               _hd285283285542_
                                               _tl285284285544_
                                               _e285285285547_
                                               _hd285286285550_
                                               _tl285287285552_
                                               _e285288285555_
                                               _hd285289285558_
                                               _tl285290285560_
                                               _e285291285563_
                                               _hd285292285566_
                                               _tl285293285568_
                                               _e285294285571_
                                               _hd285295285574_
                                               _tl285296285576_
                                               _e285297285579_
                                               _hd285298285582_
                                               _tl285299285584_
                                               _e285300285587_
                                               _hd285301285590_
                                               _tl285302285592_
                                               _e285303285595_
                                               _hd285304285598_
                                               _tl285305285600_
                                               _e285306285603_
                                               _hd285307285606_
                                               _tl285308285608_
                                               _e285309285611_
                                               _hd285310285614_
                                               _tl285311285616_
                                               _e285312285619_
                                               _hd285313285622_
                                               _tl285314285624_
                                               _e285315285627_
                                               _hd285316285630_
                                               _tl285317285632_
                                               _e285318285635_
                                               _hd285319285638_
                                               _tl285320285640_
                                               _e285321285643_
                                               _hd285322285646_
                                               _tl285323285648_
                                               _e285324285651_
                                               _hd285325285654_
                                               _tl285326285656_
                                               _e285327285659_
                                               _hd285328285662_
                                               _tl285329285664_)
                                              (___kont290774290775_))
                                          (___kont290774290775_))))
                                  (___kont290774290775_))
                              (___kont290774290775_))
                          (___kont290774290775_))))
                  (___kont290774290775_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl285314285624_))
                                                      (if (let ((__tmp291063
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp291063 'bind-method!))
                  (let ((_L285493_ _hd285319285638_)
                        (_L285494_ _hd285310285614_)
                        (_L285495_ _hd285301285590_)
                        (_L285496_ _hd285292285566_))
                    (___kont290772290773_
                     _L285493_
                     _L285494_
                     _L285495_
                     _L285496_))
                  (___kont290774290775_))
              (___kont290774290775_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont290774290775_))))
                                      (___kont290774290775_))
                                  (___kont290774290775_))
                              (___kont290774290775_))))
                      (___kont290774290775_))))
              (___kont290774290775_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont290774290775_))))
                                          (___kont290774290775_))
                                      (___kont290774290775_))
                                  (___kont290774290775_))))
                          (___kont290774290775_))))
                  (___kont290774290775_))
              (___kont290774290775_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont290774290775_))
                                          (___kont290774290775_))
                                      (___kont290774290775_))))
                              (___kont290774290775_))))
                      (___kont290774290775_))
                  (___kont290774290775_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont290774290775_))
                                              (___kont290774290775_))
                                          (___kont290774290775_))))
                                  (___kont290774290775_))))
                          (___kont290774290775_))))
                  (___kont290774290775_)))))))
    (define gxc#!alias::typedecl
      (lambda (_self285247_)
        (let* ((_self285248285254_ _self285247_)
               (_E285250285258_
                (lambda () (error '"No clause matching" _self285248285254_)))
               (_K285251285263_
                (lambda (_alias-id285261_)
                  (let ((__tmp291064
                         (let ()
                           (declare (not safe))
                           (cons _alias-id285261_ '()))))
                    (declare (not safe))
                    (cons '@alias __tmp291064)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self285248285254_ 'gxc#!alias::t))
              (let* ((_e285252285266_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285248285254_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_alias-id285269_ _e285252285266_))
                (declare (not safe))
                (_K285251285263_ _alias-id285269_))
              (let () (declare (not safe)) (_E285250285258_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_self285038_)
        (let* ((_self285039285054_ _self285038_)
               (_E285041285058_
                (lambda () (error '"No clause matching" _self285039285054_)))
               (_K285042285072_
                (lambda (_methods285061_
                         _metaclass285062_
                         _final?285063_
                         _struct?285064_
                         _constructor285065_
                         _fields285066_
                         _slots285067_
                         _precendence-list285068_
                         _super285069_
                         _id285070_)
                  (let ((__tmp291065
                         (let ((__tmp291066
                                (let ((__tmp291067
                                       (let ((__tmp291068
                                              (let ((__tmp291069
                                                     (let ((__tmp291070
                                                            (let ((__tmp291071
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp291072
                                  (let ((__tmp291073
                                         (let ((__tmp291074
                                                (let ((__tmp291075
                                                       (if _methods285061_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (table->list
                                                              _methods285061_))
                                                           '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp291075 '()))))
                                           (declare (not safe))
                                           (cons _metaclass285062_
                                                 __tmp291074))))
                                    (declare (not safe))
                                    (cons _final?285063_ __tmp291073))))
                             (declare (not safe))
                             (cons _struct?285064_ __tmp291072))))
                      (declare (not safe))
                      (cons _constructor285065_ __tmp291071))))
               (declare (not safe))
               (cons _fields285066_ __tmp291070))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _slots285067_
                                                      __tmp291069))))
                                         (declare (not safe))
                                         (cons _precendence-list285068_
                                               __tmp291068))))
                                  (declare (not safe))
                                  (cons _super285069_ __tmp291067))))
                           (declare (not safe))
                           (cons _id285070_ __tmp291066))))
                    (declare (not safe))
                    (cons '@class __tmp291065)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self285039285054_ 'gxc#!class::t))
              (let* ((_e285043285075_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285039285054_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_id285078_ _e285043285075_)
                     (_e285044285080_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285039285054_
                         '2
                         gxc#!class::t
                         '#f)))
                     (_super285083_ _e285044285080_)
                     (_e285045285085_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285039285054_
                         '3
                         gxc#!class::t
                         '#f)))
                     (_precendence-list285088_ _e285045285085_)
                     (_e285046285090_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285039285054_
                         '4
                         gxc#!class::t
                         '#f)))
                     (_slots285093_ _e285046285090_)
                     (_e285047285095_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285039285054_
                         '5
                         gxc#!class::t
                         '#f)))
                     (_fields285098_ _e285047285095_)
                     (_e285048285100_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285039285054_
                         '6
                         gxc#!class::t
                         '#f)))
                     (_constructor285103_ _e285048285100_)
                     (_e285049285105_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285039285054_
                         '7
                         gxc#!class::t
                         '#f)))
                     (_struct?285108_ _e285049285105_)
                     (_e285050285110_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285039285054_
                         '8
                         gxc#!class::t
                         '#f)))
                     (_final?285113_ _e285050285110_)
                     (_e285051285115_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285039285054_
                         '9
                         gxc#!class::t
                         '#f)))
                     (_metaclass285118_ _e285051285115_)
                     (_e285052285120_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285039285054_
                         '10
                         gxc#!class::t
                         '#f)))
                     (_methods285123_ _e285052285120_))
                (declare (not safe))
                (_K285042285072_
                 _methods285123_
                 _metaclass285118_
                 _final?285113_
                 _struct?285108_
                 _constructor285103_
                 _fields285098_
                 _slots285093_
                 _precendence-list285088_
                 _super285083_
                 _id285078_))
              (let () (declare (not safe)) (_E285041285058_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_self284892_)
        (let* ((_self284893284899_ _self284892_)
               (_E284895284903_
                (lambda () (error '"No clause matching" _self284893284899_)))
               (_K284896284908_
                (lambda (_klass-id284906_)
                  (let ((__tmp291076
                         (let ()
                           (declare (not safe))
                           (cons _klass-id284906_ '()))))
                    (declare (not safe))
                    (cons '@predicate __tmp291076)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self284893284899_
                 'gxc#!predicate::t))
              (let* ((_e284897284911_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284893284899_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id284914_ _e284897284911_))
                (declare (not safe))
                (_K284896284908_ _klass-id284914_))
              (let () (declare (not safe)) (_E284895284903_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!predicate::t 'typedecl gxc#!predicate::typedecl '#f))
    (define gxc#!constructor::typedecl
      (lambda (_self284746_)
        (let* ((_self284747284753_ _self284746_)
               (_E284749284757_
                (lambda () (error '"No clause matching" _self284747284753_)))
               (_K284750284762_
                (lambda (_klass-id284760_)
                  (let ((__tmp291077
                         (let ()
                           (declare (not safe))
                           (cons _klass-id284760_ '()))))
                    (declare (not safe))
                    (cons '@constructor __tmp291077)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self284747284753_
                 'gxc#!constructor::t))
              (let* ((_e284751284765_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284747284753_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id284768_ _e284751284765_))
                (declare (not safe))
                (_K284750284762_ _klass-id284768_))
              (let () (declare (not safe)) (_E284749284757_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_self284586_)
        (let* ((_self284587284595_ _self284586_)
               (_E284589284599_
                (lambda () (error '"No clause matching" _self284587284595_)))
               (_K284590284606_
                (lambda (_checked?284602_ _slot284603_ _klass-id284604_)
                  (let ((__tmp291078
                         (let ((__tmp291079
                                (let ((__tmp291080
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?284602_ '()))))
                                  (declare (not safe))
                                  (cons _slot284603_ __tmp291080))))
                           (declare (not safe))
                           (cons _klass-id284604_ __tmp291079))))
                    (declare (not safe))
                    (cons '@accessor __tmp291078)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self284587284595_
                 'gxc#!accessor::t))
              (let* ((_e284591284609_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284587284595_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id284612_ _e284591284609_)
                     (_e284592284614_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284587284595_
                         '2
                         gxc#!accessor::t
                         '#f)))
                     (_slot284617_ _e284592284614_)
                     (_e284593284619_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284587284595_
                         '3
                         gxc#!accessor::t
                         '#f)))
                     (_checked?284622_ _e284593284619_))
                (declare (not safe))
                (_K284590284606_
                 _checked?284622_
                 _slot284617_
                 _klass-id284612_))
              (let () (declare (not safe)) (_E284589284599_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_self284426_)
        (let* ((_self284427284435_ _self284426_)
               (_E284429284439_
                (lambda () (error '"No clause matching" _self284427284435_)))
               (_K284430284446_
                (lambda (_checked?284442_ _slot284443_ _klass-id284444_)
                  (let ((__tmp291081
                         (let ((__tmp291082
                                (let ((__tmp291083
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?284442_ '()))))
                                  (declare (not safe))
                                  (cons _slot284443_ __tmp291083))))
                           (declare (not safe))
                           (cons _klass-id284444_ __tmp291082))))
                    (declare (not safe))
                    (cons '@mutator __tmp291081)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self284427284435_ 'gxc#!mutator::t))
              (let* ((_e284431284449_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284427284435_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id284452_ _e284431284449_)
                     (_e284432284454_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284427284435_
                         '2
                         gxc#!mutator::t
                         '#f)))
                     (_slot284457_ _e284432284454_)
                     (_e284433284459_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284427284435_
                         '3
                         gxc#!mutator::t
                         '#f)))
                     (_checked?284462_ _e284433284459_))
                (declare (not safe))
                (_K284430284446_
                 _checked?284462_
                 _slot284457_
                 _klass-id284452_))
              (let () (declare (not safe)) (_E284429284439_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!lambda::typedecl
      (lambda (_self284252_)
        (let* ((_self284253284263_ _self284252_)
               (_E284255284267_
                (lambda () (error '"No clause matching" _self284253284263_)))
               (_K284256284278_
                (lambda (_typedecl284270_
                         _inline284271_
                         _dispatch284272_
                         _arity284273_)
                  (if _inline284271_
                      (let ((_$e284275_ _typedecl284270_))
                        (if _$e284275_
                            _$e284275_
                            (error '"Cannot generate typedecl for inline rules")))
                      (let ((__tmp291084
                             (let ((__tmp291085
                                    (let ()
                                      (declare (not safe))
                                      (cons _dispatch284272_ '()))))
                               (declare (not safe))
                               (cons _arity284273_ __tmp291085))))
                        (declare (not safe))
                        (cons '@lambda __tmp291084))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self284253284263_ 'gxc#!lambda::t))
              (let* ((_e284257284281_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284253284263_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e284258284284_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284253284263_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity284287_ _e284258284284_)
                     (_e284259284289_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284253284263_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch284292_ _e284259284289_)
                     (_e284260284294_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284253284263_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline284297_ _e284260284294_)
                     (_e284261284299_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284253284263_
                         '5
                         gxc#!lambda::t
                         '#f)))
                     (_typedecl284302_ _e284261284299_))
                (declare (not safe))
                (_K284256284278_
                 _typedecl284302_
                 _inline284297_
                 _dispatch284292_
                 _arity284287_))
              (let () (declare (not safe)) (_E284255284267_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_self284063_)
        (letrec ((_clause-e284065_
                  (lambda (_clause284095_)
                    (let* ((_clause284096284104_ _clause284095_)
                           (_E284098284108_
                            (lambda ()
                              (error '"No clause matching"
                                     _clause284096284104_)))
                           (_K284099284114_
                            (lambda (_dispatch284111_ _arity284112_)
                              (let ((__tmp291086
                                     (let ()
                                       (declare (not safe))
                                       (cons _dispatch284111_ '()))))
                                (declare (not safe))
                                (cons _arity284112_ __tmp291086)))))
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _clause284096284104_
                             'gxc#!lambda::t))
                          (let* ((_e284100284117_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause284096284104_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                                 (_e284101284120_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause284096284104_
                                     '2
                                     gxc#!lambda::t
                                     '#f)))
                                 (_arity284123_ _e284101284120_)
                                 (_e284102284125_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause284096284104_
                                     '3
                                     gxc#!lambda::t
                                     '#f)))
                                 (_dispatch284128_ _e284102284125_))
                            (declare (not safe))
                            (_K284099284114_ _dispatch284128_ _arity284123_))
                          (let () (declare (not safe)) (_E284098284108_)))))))
          (let* ((_self284066284073_ _self284063_)
                 (_E284068284077_
                  (lambda () (error '"No clause matching" _self284066284073_)))
                 (_K284069284084_
                  (lambda (_clauses284080_)
                    (let ((_clauses284082_
                           (map _clause-e284065_ _clauses284080_)))
                      (declare (not safe))
                      (cons '@case-lambda _clauses284082_)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of?
                   _self284066284073_
                   'gxc#!case-lambda::t))
                (let* ((_e284070284087_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self284066284073_
                           '1
                           gxc#!type::t
                           '#f)))
                       (_e284071284090_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self284066284073_
                           '2
                           gxc#!case-lambda::t
                           '#f)))
                       (_clauses284093_ _e284071284090_))
                  (declare (not safe))
                  (_K284069284084_ _clauses284093_))
                (let () (declare (not safe)) (_E284068284077_)))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_self283906_)
        (let* ((_self283907283915_ _self283906_)
               (_E283909283919_
                (lambda () (error '"No clause matching" _self283907283915_)))
               (_K283910283925_
                (lambda (_dispatch283922_ _table283923_)
                  (let ((__tmp291087
                         (let ((__tmp291088
                                (let ()
                                  (declare (not safe))
                                  (cons _dispatch283922_ '()))))
                           (declare (not safe))
                           (cons _table283923_ __tmp291088))))
                    (declare (not safe))
                    (cons '@kw-lambda __tmp291087)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self283907283915_
                 'gxc#!kw-lambda::t))
              (let* ((_e283911283928_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283907283915_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e283912283931_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283907283915_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table283934_ _e283912283931_)
                     (_e283913283936_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283907283915_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch283939_ _e283913283936_))
                (declare (not safe))
                (_K283910283925_ _dispatch283939_ _table283934_))
              (let () (declare (not safe)) (_E283909283919_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!kw-lambda::t 'typedecl gxc#!kw-lambda::typedecl '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_self283749_)
        (let* ((_self283750283758_ _self283749_)
               (_E283752283762_
                (lambda () (error '"No clause matching" _self283750283758_)))
               (_K283753283768_
                (lambda (_main283765_ _keys283766_)
                  (let ((__tmp291089
                         (let ((__tmp291090
                                (let ()
                                  (declare (not safe))
                                  (cons _main283765_ '()))))
                           (declare (not safe))
                           (cons _keys283766_ __tmp291090))))
                    (declare (not safe))
                    (cons '@kw-lambda-dispatch __tmp291089)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self283750283758_
                 'gxc#!kw-lambda-primary::t))
              (let* ((_e283754283771_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283750283758_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e283755283774_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283750283758_
                         '2
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_keys283777_ _e283755283774_)
                     (_e283756283779_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283750283758_
                         '3
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_main283782_ _e283756283779_))
                (declare (not safe))
                (_K283753283768_ _main283782_ _keys283777_))
              (let () (declare (not safe)) (_E283752283762_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))))
