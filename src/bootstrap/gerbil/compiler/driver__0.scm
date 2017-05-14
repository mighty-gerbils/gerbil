(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#compile-timestamp
    (lambda () (inexact->exact (floor (time->seconds (current-time))))))
  (begin
    (define gxc#compile-file__opt-lambda18290
      (lambda (_srcpath18292_ _opts18293_)
        (begin
          (if (string? _srcpath18292_)
              '#!void
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath18292_))
          (let ((_outdir18295_ (pgetq 'output-dir: _opts18293_))
                (_invoke-gsc?18296_ (pgetq 'invoke-gsc: _opts18293_))
                (_gsc-options18297_ (pgetq 'gsc-options: _opts18293_))
                (_keep-scm?18298_ (pgetq 'keep-scm: _opts18293_))
                (_verbosity18299_ (pgetq 'verbose: _opts18293_))
                (_optimize18300_ (pgetq 'optimize: _opts18293_))
                (_gen-ssxi18301_ (pgetq 'generate-ssxi: _opts18293_)))
            (begin
              (if _outdir18295_ (create-directory* _outdir18295_) '#!void)
              (if _optimize18300_ (gxc#optimizer-info-init!) '#!void)
              (call-with-parameters
               (lambda ()
                 (begin
                   (gxc#verbose '"compile exe " _srcpath18292_)
                   (gxc#compile-top-module
                    (gx#import-module__0 _srcpath18292_))))
               gxc#current-compile-output-dir
               _outdir18295_
               gxc#current-compile-invoke-gsc
               _invoke-gsc?18296_
               gxc#current-compile-gsc-options
               _gsc-options18297_
               gxc#current-compile-keep-scm
               _keep-scm?18298_
               gxc#current-compile-verbose
               _verbosity18299_
               gxc#current-compile-optimize
               _optimize18300_
               gxc#current-compile-generate-ssxi
               _gen-ssxi18301_
               gxc#current-compile-timestamp
               (gxc#compile-timestamp)))))))
    (begin
      (define gxc#compile-file__0
        (lambda (_srcpath18307_)
          (let ((_opts18309_ '()))
            (gxc#compile-file__opt-lambda18290 _srcpath18307_ _opts18309_))))
      (define gxc#compile-file
        (lambda _g18317_
          (let ((_g18316_ (length _g18317_)))
            (cond ((fx= _g18316_ 1) (apply gxc#compile-file__0 _g18317_))
                  ((fx= _g18316_ 2)
                   (apply gxc#compile-file__opt-lambda18290 _g18317_))
                  (else (error "No clause matching arguments" _g18317_))))))))
  (begin
    (define gxc#compile-exe-stub__opt-lambda18269
      (lambda (_srcpath18271_ _opts18272_)
        (begin
          (if (string? _srcpath18271_)
              '#!void
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath18271_))
          (let ((_outdir18274_ (pgetq 'output-dir: _opts18272_))
                (_invoke-gsc?18275_ (pgetq 'invoke-gsc: _opts18272_))
                (_gsc-options18276_ (pgetq 'gsc-options: _opts18272_))
                (_keep-scm?18277_ (pgetq 'keep-scm: _opts18272_))
                (_verbosity18278_ (pgetq 'verbose: _opts18272_)))
            (begin
              (if _outdir18274_ (create-directory* _outdir18274_) '#!void)
              (call-with-parameters
               (lambda ()
                 (begin
                   (gxc#verbose '"compile " _srcpath18271_)
                   (gxc#compile-exe-stub-module
                    (gx#import-module__0 _srcpath18271_)
                    _opts18272_)))
               gxc#current-compile-output-dir
               _outdir18274_
               gxc#current-compile-invoke-gsc
               _invoke-gsc?18275_
               gxc#current-compile-gsc-options
               _gsc-options18276_
               gxc#current-compile-keep-scm
               _keep-scm?18277_
               gxc#current-compile-verbose
               _verbosity18278_
               gxc#current-compile-timestamp
               (gxc#compile-timestamp)))))))
    (begin
      (define gxc#compile-exe-stub__0
        (lambda (_srcpath18284_)
          (let ((_opts18286_ '()))
            (gxc#compile-exe-stub__opt-lambda18269
             _srcpath18284_
             _opts18286_))))
      (define gxc#compile-exe-stub
        (lambda _g18319_
          (let ((_g18318_ (length _g18319_)))
            (cond ((fx= _g18318_ 1) (apply gxc#compile-exe-stub__0 _g18319_))
                  ((fx= _g18318_ 2)
                   (apply gxc#compile-exe-stub__opt-lambda18269 _g18319_))
                  (else (error "No clause matching arguments" _g18319_))))))))
  (define gxc#compile-exe-stub-module
    (lambda (_ctx18163_ _opts18164_)
      (let ((_find-export-binding18166_
             (lambda (_id18220_ _exports18221_)
               (let ((_$e18267_
                      (find (lambda (_e1822218224_)
                              (let ((_g1822618236_ _e1822218224_))
                                (let ((_E1822918240_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _g1822618236_))))
                                  (let ((_else1822818244_ (lambda () '#f)))
                                    (let ((_K1823018248_ (lambda () '#t)))
                                      (if (direct-struct-instance?
                                           gx#module-export::t
                                           _g1822618236_)
                                          (let ((_e1823118251_
                                                 (##vector-ref
                                                  _g1822618236_
                                                  '1)))
                                            (let ((_e1823218254_
                                                   (##vector-ref
                                                    _g1822618236_
                                                    '2)))
                                              (let ((_e1823318257_
                                                     (##vector-ref
                                                      _g1822618236_
                                                      '3)))
                                                (if (##eq? _e1823318257_ '0)
                                                    (let ((_e1823418260_
                                                           (##vector-ref
                                                            _g1822618236_
                                                            '4)))
                                                      (if ((lambda (_g1826218264_)
                                                             (eq? _g1826218264_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id18220_))
                   _e1823418260_)
                  (_K1823018248_)
                  (_else1822818244_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_else1822818244_)))))
                                          (_else1822818244_)))))))
                            _exports18221_)))
                 (if _$e18267_
                     (gx#core-resolve-module-export _$e18267_)
                     '#f)))))
        (let ((_generate-stub18167_
               (lambda ()
                 (let ((_mod-str18208_
                        (symbol->string
                         (##structure-ref
                          _ctx18163_
                          '1
                          gx#expander-context::t
                          '#f))))
                   (let ((_mod-rt18210_
                          (string-append _mod-str18208_ '"__rt")))
                     (let ((_mod-main18217_
                            (let ((_$e18212_
                                   (_find-export-binding18166_
                                    'main
                                    (##structure-ref
                                     _ctx18163_
                                     '9
                                     gx#module-context::t
                                     '#f))))
                              (if _$e18212_
                                  ((lambda (_bind18215_)
                                     (begin
                                       (if (##structure-instance-of?
                                            _bind18215_
                                            'gx#runtime-binding::t)
                                           '#!void
                                           (gxc#raise-compile-error
                                            '"main is not a runtime binding"))
                                       (##structure-ref
                                        _bind18215_
                                        '1
                                        gx#binding::t
                                        '#f)))
                                   _$e18212_)
                                  (gxc#raise-compile-error
                                   '"module does not export main"
                                   (##structure-ref
                                    _ctx18163_
                                    '1
                                    gx#expander-context::t
                                    '#f))))))
                       (let ()
                         (begin
                           (write '(##namespace ("")))
                           (newline)
                           (write (cons '_gx#start!
                                        (cons _mod-rt18210_
                                              (cons (cons 'quote
                                                          (cons _mod-main18217_
                                                                '()))
                                                    '()))))
                           (newline)))))))))
          (let ((_compile-stub18168_
                 (lambda (_output-scm18195_ _output-bin18196_)
                   (let ((_init-stub18198_
                          (path-expand
                           '"lib/gx-init-exe.scm"
                           (getenv '"GERBIL_HOME"))))
                     (let ((_gsc-args18200_
                            (cons '"-exe"
                                  (cons '"-o"
                                        (cons _output-bin18196_
                                              (cons _init-stub18198_
                                                    (cons _output-scm18195_
                                                          '())))))))
                       (let ((_proc18202_
                              (open-process
                               (cons 'path:
                                     (cons '"gsc"
                                           (cons 'arguments:
                                                 (cons _gsc-args18200_
                                                       (cons 'stdout-redirection:
                                                             (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (let ((_status18204_ (process-status _proc18202_)))
                           (let ()
                             (if (zero? _status18204_)
                                 '#!void
                                 (gxc#raise-compile-error
                                  '"Compilation error; gsc exit with nonzero status"
                                  _output-scm18195_
                                  _output-bin18196_
                                  _status18204_))))))))))
            (let ((_output-bin18190_
                   (let ((_$e18170_ (pgetq 'output-file: _opts18164_)))
                     (if _$e18170_
                         (values _$e18170_)
                         (let ((_mod-str18173_
                                (symbol->string
                                 (##structure-ref
                                  _ctx18163_
                                  '1
                                  gx#expander-context::t
                                  '#f))))
                           (let ((_mod-name18180_
                                  (let ((_$e18175_
                                         (string-rindex _mod-str18173_ '#\/)))
                                    (if _$e18175_
                                        ((lambda (_ix18178_)
                                           (substring
                                            _mod-str18173_
                                            (fx+ _ix18178_ '1)
                                            (string-length _mod-str18173_)))
                                         _$e18175_)
                                        _mod-str18173_))))
                             (let ()
                               (let ((_$e18183_
                                      (gxc#current-compile-output-dir)))
                                 (if _$e18183_
                                     ((lambda (_g1818518187_)
                                        (path-expand
                                         _mod-name18180_
                                         _g1818518187_))
                                      _$e18183_)
                                     _mod-name18180_)))))))))
              (let ((_output-scm18192_
                     (string-append _output-bin18190_ '".scm")))
                (let ()
                  (begin
                    (with-output-to-file
                     _output-scm18192_
                     _generate-stub18167_)
                    (if (gxc#current-compile-invoke-gsc)
                        (_compile-stub18168_
                         _output-scm18192_
                         _output-bin18190_)
                        '#!void)
                    (if (gxc#current-compile-keep-scm)
                        '#!void
                        (delete-file _output-scm18192_)))))))))))
  (define gxc#compile-top-module
    (lambda (_ctx18160_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#verbose
            '"compile "
            (##structure-ref _ctx18160_ '1 gx#expander-context::t '#f))
           (if (gxc#current-compile-optimize)
               (gxc#optimize! _ctx18160_)
               '#!void)
           (gxc#collect-bindings _ctx18160_)
           (gxc#compile-runtime-code _ctx18160_)
           (gxc#compile-meta-code _ctx18160_)
           (if (if (gxc#current-compile-optimize)
                   (gxc#current-compile-generate-ssxi)
                   '#f)
               (gxc#compile-ssxi-code _ctx18160_)
               '#!void)))
       gx#current-expander-context
       _ctx18160_
       gx#current-expander-phi
       '0
       gx#current-expander-marks
       '()
       gxc#current-compile-symbol-table
       (let ((__obj18314 (make-object gxc#symbol-table::t '2)))
         (begin (gxc#symbol-table:::init! __obj18314) __obj18314))
       gxc#current-compile-runtime-sections
       (make-hash-table-eq))))
  (define gxc#collect-bindings
    (lambda (_ctx18158_)
      (gxc#apply-collect-bindings
       (##structure-ref _ctx18158_ '11 gx#module-context::t '#f))))
  (define gxc#compile-runtime-code
    (lambda (_ctx18125_)
      (let ((_generate-runtime-code18128_
             (lambda (_ctx18143_ _code18144_)
               (let ((_runtime-code18147_
                      (call-with-parameters
                       (lambda () (gxc#apply-generate-runtime _code18144_))
                       gx#current-expander-context
                       _ctx18143_)))
                 (gxc#compile-scm-file
                  (gxc#compile-output-file _ctx18143_ '0 '".scm")
                  _runtime-code18147_)))))
        (let ((_generate-loader-code18129_
               (lambda (_ctx18133_ _code18134_ _rt18135_)
                 (let ((_loader-code18138_
                        (call-with-parameters
                         (lambda () (gxc#apply-generate-loader _code18134_))
                         gx#current-expander-context
                         _ctx18133_)))
                   (let ((_loader-code18140_
                          (if _rt18135_
                              (cons 'begin
                                    (cons _loader-code18138_
                                          (cons (cons 'load-module
                                                      (cons _rt18135_ '()))
                                                '())))
                              _loader-code18138_)))
                     (let ()
                       (gxc#compile-scm-file
                        (gxc#compile-output-file _ctx18133_ 'rt '".scm")
                        _loader-code18140_)))))))
          (let ((_compile118127_
                 (lambda (_ctx18149_)
                   (let ((_code18151_
                          (##structure-ref
                           _ctx18149_
                           '11
                           gx#module-context::t
                           '#f)))
                     (let ((_rt18155_
                            (if (gxc#apply-find-runtime-code _code18151_)
                                (let ((_idstr18153_
                                       (symbol->string
                                        (##structure-ref
                                         _ctx18149_
                                         '1
                                         gx#expander-context::t
                                         '#f))))
                                  (string-append _idstr18153_ '"__0"))
                                '#f)))
                       (let ()
                         (begin
                           (if _rt18155_
                               (begin
                                 (table-set!
                                  (gxc#current-compile-runtime-sections)
                                  _ctx18149_
                                  _rt18155_)
                                 (_generate-runtime-code18128_
                                  _ctx18149_
                                  _code18151_))
                               '#!void)
                           (_generate-loader-code18129_
                            _ctx18149_
                            _code18151_
                            _rt18155_))))))))
            (let ((_all-modules18131_
                   (cons _ctx18125_ (gxc#lift-nested-modules _ctx18125_))))
              (for-each _compile118127_ _all-modules18131_)))))))
  (define gxc#compile-meta-code
    (lambda (_ctx18027_)
      (let ((_compile-ssi18029_
             (lambda (_code18095_)
               (let ((_path18097_
                      (gxc#compile-output-file _ctx18027_ '#f '".ssi")))
                 (let ((_prelude18108_
                        (let ((_super18099_
                               (##structure-ref
                                _ctx18027_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (let ((_$e18101_
                                 (##structure-ref
                                  _super18099_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (if _$e18101_
                                ((lambda (_g1810318105_)
                                   (make-symbol '":" _g1810318105_))
                                 _$e18101_)
                                ':<root>)))))
                   (let ((_ns18110_
                          (##structure-ref
                           _ctx18027_
                           '6
                           gx#module-context::t
                           '#f)))
                     (let ((_idstr18112_
                            (symbol->string
                             (##structure-ref
                              _ctx18027_
                              '1
                              gx#expander-context::t
                              '#f))))
                       (let ((_pkg18119_
                              (let ((_$e18114_
                                     (string-rindex _idstr18112_ '#\/)))
                                (if _$e18114_
                                    ((lambda (_x18117_)
                                       (string->symbol
                                        (substring _idstr18112_ '0 _x18117_)))
                                     _$e18114_)
                                    '#f))))
                         (let ((_rt18121_
                                (table-ref
                                 (gxc#current-compile-runtime-sections)
                                 _ctx18027_
                                 '#f)))
                           (let ()
                             (begin
                               (gxc#verbose '"compile " _path18097_)
                               (with-output-to-file
                                (cons 'path:
                                      (cons _path18097_
                                            (cons 'permissions:
                                                  (cons '420 '()))))
                                (lambda ()
                                  (begin
                                    (displayln '"prelude:" '" " _prelude18108_)
                                    (if _pkg18119_
                                        (displayln '"package:" '" " _pkg18119_)
                                        '#!void)
                                    (displayln '"namespace:" '" " _ns18110_)
                                    (newline)
                                    (pretty-print _code18095_)
                                    (if _rt18121_
                                        (pretty-print
                                         (cons '%#call
                                               (cons (cons '%#ref
                                                           (cons '_gx#load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _rt18121_ '()))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '#!void)))))))))))))))
        (let ((_compile-phi18030_
               (lambda (_part18035_)
                 (let ((_part1803618049_ _part18035_))
                   (let ((_E1803818053_
                          (lambda ()
                            (error '"No clause matching" _part1803618049_))))
                     (let ((_K1803918064_
                            (lambda (_code18056_
                                     _n18057_
                                     _phi18058_
                                     _phi-ctx18059_)
                              (let ((_code18062_
                                     (call-with-parameters
                                      (lambda ()
                                        (gxc#generate-runtime-phi _code18056_))
                                      gx#current-expander-context
                                      _phi-ctx18059_
                                      gx#current-expander-phi
                                      _phi18058_)))
                                (gxc#compile-scm-file
                                 (gxc#compile-output-file
                                  _ctx18027_
                                  _n18057_
                                  '".scm")
                                 _code18062_)))))
                       (if (##pair? _part1803618049_)
                           (let ((_hd1804018067_ (##car _part1803618049_))
                                 (_tl1804118069_ (##cdr _part1803618049_)))
                             (let ((_phi-ctx18072_ _hd1804018067_))
                               (if (##pair? _tl1804118069_)
                                   (let ((_hd1804218074_
                                          (##car _tl1804118069_))
                                         (_tl1804318076_
                                          (##cdr _tl1804118069_)))
                                     (let ((_phi18079_ _hd1804218074_))
                                       (if (##pair? _tl1804318076_)
                                           (let ((_hd1804418081_
                                                  (##car _tl1804318076_))
                                                 (_tl1804518083_
                                                  (##cdr _tl1804318076_)))
                                             (let ((_n18086_ _hd1804418081_))
                                               (if (##pair? _tl1804518083_)
                                                   (let ((_hd1804618088_
                                                          (##car _tl1804518083_))
                                                         (_tl1804718090_
                                                          (##cdr _tl1804518083_)))
                                                     (let ((_code18093_
                                                            _hd1804618088_))
                                                       (if (##null? _tl1804718090_)
                                                           (_K1803918064_
                                                            _code18093_
                                                            _n18086_
                                                            _phi18079_
                                                            _phi-ctx18072_)
                                                           (_E1803818053_))))
                                                   (_E1803818053_))))
                                           (_E1803818053_))))
                                   (_E1803818053_))))
                           (_E1803818053_))))))))
          (let ((_g18320_ (gxc#generate-meta-code _ctx18027_)))
            (begin
              (let ((_g18321_ (values-count _g18320_)))
                (if (not (fx= _g18321_ 2))
                    (error "Context expects 2 values" _g18321_)))
              (let ((_ssi-code18032_ (values-ref _g18320_ 0))
                    (_phi-code18033_ (values-ref _g18320_ 1)))
                (begin
                  (_compile-ssi18029_ _ssi-code18032_)
                  (for-each _compile-phi18030_ _phi-code18033_)))))))))
  (define gxc#compile-ssxi-code
    (lambda (_ctx18010_)
      (let ((_path18012_ (gxc#compile-output-file _ctx18010_ '#f '".ssxi.ss")))
        (let ((_code18014_
               (gxc#apply-generate-ssxi
                (##structure-ref _ctx18010_ '11 gx#module-context::t '#f))))
          (let ((_idstr18016_
                 (symbol->string
                  (##structure-ref _ctx18010_ '1 gx#expander-context::t '#f))))
            (let ((_pkg18023_
                   (let ((_$e18018_ (string-rindex _idstr18016_ '#\/)))
                     (if _$e18018_
                         ((lambda (_x18021_)
                            (string->symbol
                             (substring _idstr18016_ '0 _x18021_)))
                          _$e18018_)
                         '#f))))
              (let ()
                (begin
                  (gxc#verbose '"compile " _path18012_)
                  (with-output-to-file
                   (cons 'path:
                         (cons _path18012_
                               (cons 'permissions: (cons '420 '()))))
                   (lambda ()
                     (begin
                       (displayln '"prelude: :gerbil/compiler/ssxi")
                       (if _pkg18023_
                           (displayln '"package: " _pkg18023_)
                           '#!void)
                       (newline)
                       (pretty-print _code18014_))))))))))))
  (define gxc#generate-meta-code
    (lambda (_ctx18003_)
      (let ((_state18005_
             (let ((__obj18315 (make-object gxc#meta-state::t '4)))
               (begin
                 (gxc#meta-state:::init! __obj18315 _ctx18003_)
                 __obj18315))))
        (let ((_ssi-code18007_
               (gxc#apply-generate-meta
                (##structure-ref _ctx18003_ '11 gx#module-context::t '#f)
                _state18005_)))
          (let ()
            (values _ssi-code18007_ (gxc#meta-state-end! _state18005_)))))))
  (define gxc#generate-runtime-phi
    (lambda (_stx17996_)
      (let ((_lifts17998_ (box '())))
        (call-with-parameters
         (lambda ()
           (let ((_code18001_ (gxc#apply-generate-runtime-phi _stx17996_)))
             (if (null? (unbox _lifts17998_))
                 _code18001_
                 (cons 'begin
                       (foldr1 cons
                               (cons _code18001_ '())
                               (reverse (unbox _lifts17998_)))))))
         gxc#current-compile-lift
         _lifts17998_))))
  (define gxc#lift-nested-modules
    (lambda (_ctx17992_)
      (let ((_modules17994_ (box '())))
        (begin
          (gxc#apply-lift-modules
           (##structure-ref _ctx17992_ '11 gx#module-context::t '#f)
           _modules17994_)
          (reverse (unbox _modules17994_))))))
  (define gxc#compile-scm-file
    (lambda (_path17988_ _code17989_)
      (begin
        (gxc#verbose '"compile " _path17988_)
        (with-output-to-file
         (cons 'path: (cons _path17988_ (cons 'permissions: (cons '420 '()))))
         (lambda ()
           (begin
             (pretty-print
              '(declare (block) (standard-bindings) (extended-bindings)))
             (pretty-print _code17989_))))
        (if (gxc#current-compile-invoke-gsc)
            (begin
              (gxc#gsc-compile-file _path17988_)
              (if (gxc#current-compile-keep-scm)
                  '#!void
                  (delete-file _path17988_)))
            '#!void))))
  (define gxc#gsc-compile-file
    (lambda (_path17974_)
      (let ((_gsc-args17981_
             (let ((_$e17976_ (gxc#current-compile-gsc-options)))
               (if _$e17976_
                   ((lambda (_opts17979_)
                      (foldr1 cons (cons _path17974_ '()) _opts17979_))
                    _$e17976_)
                   (cons _path17974_ '())))))
        (let ((_proc17983_
               (open-process
                (cons 'path:
                      (cons '"gsc"
                            (cons 'arguments:
                                  (cons _gsc-args17981_
                                        (cons 'stdout-redirection:
                                              (cons '#f '())))))))))
          (let ((_status17985_ (process-status _proc17983_)))
            (let ()
              (if (zero? _status17985_)
                  '#!void
                  (gxc#raise-compile-error
                   '"Compilation error; gsc exit with nonzero status"
                   _path17974_
                   _status17985_))))))))
  (define gxc#compile-output-file
    (lambda (_ctx17946_ _n17947_ _ext17948_)
      (let ((_module-relative-path17950_
             (lambda (_ctx17972_)
               (path-strip-directory
                (symbol->string
                 (##structure-ref
                  _ctx17972_
                  '1
                  gx#expander-context::t
                  '#f))))))
        (let ((_module-source-directory17951_
               (lambda (_ctx17968_)
                 (path-directory
                  (let ((_mpath17970_
                         (##structure-ref
                          _ctx17968_
                          '7
                          gx#module-context::t
                          '#f)))
                    (if (string? _mpath17970_)
                        _mpath17970_
                        (last _mpath17970_)))))))
          (let ((_section-string17952_
                 (lambda (_n17966_)
                   (if (number? _n17966_)
                       (number->string _n17966_)
                       (if (symbol? _n17966_)
                           (symbol->string _n17966_)
                           (if (string? _n17966_)
                               _n17966_
                               (gxc#raise-compile-error
                                '"Unexpected section"
                                _n17966_)))))))
            (let ((_file-name17953_
                   (lambda (_path17964_)
                     (if _n17947_
                         (string-append
                          _path17964_
                          '"__"
                          (_section-string17952_ _n17947_)
                          _ext17948_)
                         (string-append _path17964_ _ext17948_)))))
              (let ((_file-path17954_
                     (lambda ()
                       (let ((_$e17959_ (gxc#current-compile-output-dir)))
                         (if _$e17959_
                             ((lambda (_outdir17962_)
                                (path-expand
                                 (_file-name17953_
                                  (symbol->string
                                   (##structure-ref
                                    _ctx17946_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                                 _outdir17962_))
                              _$e17959_)
                             (path-expand
                              (_file-name17953_
                               (_module-relative-path17950_ _ctx17946_))
                              (_module-source-directory17951_ _ctx17946_)))))))
                (let ((_path17956_ (_file-path17954_)))
                  (begin
                    (create-directory* (path-directory _path17956_))
                    _path17956_))))))))))
