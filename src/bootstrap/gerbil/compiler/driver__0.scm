(declare (block) (standard-bindings) (extended-bindings))
(begin
  (begin
    (define gxc#compile-file__opt-lambda16465
      (lambda (_srcpath16467_ _opts16468_)
        (begin
          (if (string? _srcpath16467_)
              '#!void
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath16467_))
          (let ((_outdir16470_ (pgetq 'output-dir: _opts16468_))
                (_invoke-gsc?16471_ (pgetq 'invoke-gsc: _opts16468_))
                (_gsc-options16472_ (pgetq 'gsc-options: _opts16468_))
                (_keep-scm?16473_ (pgetq 'keep-scm: _opts16468_))
                (_verbosity16474_ (pgetq 'verbose: _opts16468_))
                (_optimize16475_ (pgetq 'optimize: _opts16468_))
                (_gen-ssxi16476_ (pgetq 'generate-ssxi: _opts16468_)))
            (begin
              (if _outdir16470_ (create-directory* _outdir16470_) '#!void)
              (if _optimize16475_ (gxc#optimizer-info-init!) '#!void)
              (call-with-parameters
               (lambda ()
                 (begin
                   (gxc#verbose '"compile exe " _srcpath16467_)
                   (gxc#compile-top-module
                    (gx#import-module__0 _srcpath16467_))))
               gxc#current-compile-output-dir
               _outdir16470_
               gxc#current-compile-invoke-gsc
               _invoke-gsc?16471_
               gxc#current-compile-gsc-options
               _gsc-options16472_
               gxc#current-compile-keep-scm
               _keep-scm?16473_
               gxc#current-compile-verbose
               _verbosity16474_
               gxc#current-compile-optimize
               _optimize16475_
               gxc#current-compile-generate-ssxi
               _gen-ssxi16476_))))))
    (begin
      (define gxc#compile-file__0
        (lambda (_srcpath16482_)
          (let ((_opts16484_ '()))
            (gxc#compile-file__opt-lambda16465 _srcpath16482_ _opts16484_))))
      (define gxc#compile-file
        (lambda _g16491_
          (let ((_g16490_ (length _g16491_)))
            (cond ((fx= _g16490_ 1) (apply gxc#compile-file__0 _g16491_))
                  ((fx= _g16490_ 2)
                   (apply gxc#compile-file__opt-lambda16465 _g16491_))
                  (else (error "No clause matching arguments" _g16491_))))))))
  (begin
    (define gxc#compile-exe-stub__opt-lambda16444
      (lambda (_srcpath16446_ _opts16447_)
        (begin
          (if (string? _srcpath16446_)
              '#!void
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath16446_))
          (let ((_outdir16449_ (pgetq 'output-dir: _opts16447_))
                (_invoke-gsc?16450_ (pgetq 'invoke-gsc: _opts16447_))
                (_gsc-options16451_ (pgetq 'gsc-options: _opts16447_))
                (_keep-scm?16452_ (pgetq 'keep-scm: _opts16447_))
                (_verbosity16453_ (pgetq 'verbose: _opts16447_)))
            (begin
              (if _outdir16449_ (create-directory* _outdir16449_) '#!void)
              (call-with-parameters
               (lambda ()
                 (begin
                   (gxc#verbose '"compile " _srcpath16446_)
                   (gxc#compile-exe-stub-module
                    (gx#import-module__0 _srcpath16446_)
                    _opts16447_)))
               gxc#current-compile-output-dir
               _outdir16449_
               gxc#current-compile-invoke-gsc
               _invoke-gsc?16450_
               gxc#current-compile-gsc-options
               _gsc-options16451_
               gxc#current-compile-keep-scm
               _keep-scm?16452_
               gxc#current-compile-verbose
               _verbosity16453_))))))
    (begin
      (define gxc#compile-exe-stub__0
        (lambda (_srcpath16459_)
          (let ((_opts16461_ '()))
            (gxc#compile-exe-stub__opt-lambda16444
             _srcpath16459_
             _opts16461_))))
      (define gxc#compile-exe-stub
        (lambda _g16493_
          (let ((_g16492_ (length _g16493_)))
            (cond ((fx= _g16492_ 1) (apply gxc#compile-exe-stub__0 _g16493_))
                  ((fx= _g16492_ 2)
                   (apply gxc#compile-exe-stub__opt-lambda16444 _g16493_))
                  (else (error "No clause matching arguments" _g16493_))))))))
  (define gxc#compile-exe-stub-module
    (lambda (_ctx16338_ _opts16339_)
      (let ((_find-export-binding16341_
             (lambda (_id16395_ _exports16396_)
               (let ((_$e16442_
                      (find (lambda (_e1639716399_)
                              (let ((_g1640116411_ _e1639716399_))
                                (let ((_E1640416415_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _g1640116411_))))
                                  (let ((_else1640316419_ (lambda () '#f)))
                                    (let ((_K1640516423_ (lambda () '#t)))
                                      (if (direct-struct-instance?
                                           gx#module-export::t
                                           _g1640116411_)
                                          (let ((_e1640616426_
                                                 (##vector-ref
                                                  _g1640116411_
                                                  '1)))
                                            (let ((_e1640716429_
                                                   (##vector-ref
                                                    _g1640116411_
                                                    '2)))
                                              (let ((_e1640816432_
                                                     (##vector-ref
                                                      _g1640116411_
                                                      '3)))
                                                (if (##eq? _e1640816432_ '0)
                                                    (let ((_e1640916435_
                                                           (##vector-ref
                                                            _g1640116411_
                                                            '4)))
                                                      (if ((lambda (_g1643716439_)
                                                             (eq? _g1643716439_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id16395_))
                   _e1640916435_)
                  (_K1640516423_)
                  (_else1640316419_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_else1640316419_)))))
                                          (_else1640316419_)))))))
                            _exports16396_)))
                 (if _$e16442_
                     (gx#core-resolve-module-export _$e16442_)
                     '#f)))))
        (let ((_generate-stub16342_
               (lambda ()
                 (let ((_mod-str16383_
                        (symbol->string
                         (##structure-ref
                          _ctx16338_
                          '1
                          gx#expander-context::t
                          '#f))))
                   (let ((_mod-rt16385_
                          (string-append _mod-str16383_ '"__rt")))
                     (let ((_mod-main16392_
                            (let ((_$e16387_
                                   (_find-export-binding16341_
                                    'main
                                    (##structure-ref
                                     _ctx16338_
                                     '9
                                     gx#module-context::t
                                     '#f))))
                              (if _$e16387_
                                  ((lambda (_bind16390_)
                                     (begin
                                       (if (##structure-instance-of?
                                            _bind16390_
                                            'gx#runtime-binding::t)
                                           '#!void
                                           (gxc#raise-compile-error
                                            '"main is not a runtime binding"))
                                       (##structure-ref
                                        _bind16390_
                                        '1
                                        gx#binding::t
                                        '#f)))
                                   _$e16387_)
                                  (gxc#raise-compile-error
                                   '"module does not export main"
                                   (##structure-ref
                                    _ctx16338_
                                    '1
                                    gx#expander-context::t
                                    '#f))))))
                       (let ()
                         (begin
                           (write '(##namespace ("")))
                           (newline)
                           (write (cons '_gx#start!
                                        (cons _mod-rt16385_
                                              (cons (cons 'quote
                                                          (cons _mod-main16392_
                                                                '()))
                                                    '()))))
                           (newline)))))))))
          (let ((_compile-stub16343_
                 (lambda (_output-scm16370_ _output-bin16371_)
                   (let ((_init-stub16373_
                          (path-expand
                           '"lib/gx-init-exe.scm"
                           (getenv '"GERBIL_HOME"))))
                     (let ((_gsc-args16375_
                            (cons '"-exe"
                                  (cons '"-o"
                                        (cons _output-bin16371_
                                              (cons _init-stub16373_
                                                    (cons _output-scm16370_
                                                          '())))))))
                       (let ((_proc16377_
                              (open-process
                               (cons 'path:
                                     (cons '"gsc"
                                           (cons 'arguments:
                                                 (cons _gsc-args16375_
                                                       (cons 'stdout-redirection:
                                                             (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (let ((_status16379_ (process-status _proc16377_)))
                           (let ()
                             (if (zero? _status16379_)
                                 '#!void
                                 (gxc#raise-compile-error
                                  '"Compilation error; gsc exit with nonzero status"
                                  _output-scm16370_
                                  _output-bin16371_
                                  _status16379_))))))))))
            (let ((_output-bin16365_
                   (let ((_$e16345_ (pgetq 'output-file: _opts16339_)))
                     (if _$e16345_
                         (values _$e16345_)
                         (let ((_mod-str16348_
                                (symbol->string
                                 (##structure-ref
                                  _ctx16338_
                                  '1
                                  gx#expander-context::t
                                  '#f))))
                           (let ((_mod-name16355_
                                  (let ((_$e16350_
                                         (string-rindex _mod-str16348_ '#\/)))
                                    (if _$e16350_
                                        ((lambda (_ix16353_)
                                           (substring
                                            _mod-str16348_
                                            (fx1+ _ix16353_)
                                            (string-length _mod-str16348_)))
                                         _$e16350_)
                                        _mod-str16348_))))
                             (let ()
                               (let ((_$e16358_
                                      (gxc#current-compile-output-dir)))
                                 (if _$e16358_
                                     ((lambda (_g1636016362_)
                                        (path-expand
                                         _mod-name16355_
                                         _g1636016362_))
                                      _$e16358_)
                                     _mod-name16355_)))))))))
              (let ((_output-scm16367_
                     (string-append _output-bin16365_ '".scm")))
                (let ()
                  (begin
                    (with-output-to-file
                     _output-scm16367_
                     _generate-stub16342_)
                    (if (gxc#current-compile-invoke-gsc)
                        (_compile-stub16343_
                         _output-scm16367_
                         _output-bin16365_)
                        '#!void)
                    (if (gxc#current-compile-keep-scm)
                        '#!void
                        (delete-file _output-scm16367_)))))))))))
  (define gxc#compile-top-module
    (lambda (_ctx16335_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#verbose
            '"compile "
            (##structure-ref _ctx16335_ '1 gx#expander-context::t '#f))
           (if (gxc#current-compile-optimize)
               (gxc#optimize! _ctx16335_)
               '#!void)
           (gxc#collect-bindings _ctx16335_)
           (gxc#compile-runtime-code _ctx16335_)
           (gxc#compile-meta-code _ctx16335_)
           (if (if (gxc#current-compile-optimize)
                   (gxc#current-compile-generate-ssxi)
                   '#f)
               (gxc#compile-ssxi-code _ctx16335_)
               '#!void)))
       gx#current-expander-context
       _ctx16335_
       gx#current-expander-phi
       '0
       gx#current-expander-marks
       '()
       gxc#current-compile-symbol-table
       (let ((__obj16488 (make-object gxc#symbol-table::t '2)))
         (begin (gxc#symbol-table:::init! __obj16488) __obj16488))
       gxc#current-compile-runtime-sections
       (make-hash-table-eq))))
  (define gxc#collect-bindings
    (lambda (_ctx16333_)
      (gxc#apply-collect-bindings
       (##structure-ref _ctx16333_ '11 gx#module-context::t '#f))))
  (define gxc#compile-runtime-code
    (lambda (_ctx16300_)
      (let ((_generate-runtime-code16303_
             (lambda (_ctx16318_ _code16319_)
               (let ((_runtime-code16322_
                      (call-with-parameters
                       (lambda () (gxc#apply-generate-runtime _code16319_))
                       gx#current-expander-context
                       _ctx16318_)))
                 (gxc#compile-scm-file
                  (gxc#compile-output-file _ctx16318_ '0 '".scm")
                  _runtime-code16322_)))))
        (let ((_generate-loader-code16304_
               (lambda (_ctx16308_ _code16309_ _rt16310_)
                 (let ((_loader-code16313_
                        (call-with-parameters
                         (lambda () (gxc#apply-generate-loader _code16309_))
                         gx#current-expander-context
                         _ctx16308_)))
                   (let ((_loader-code16315_
                          (if _rt16310_
                              (cons 'begin
                                    (cons _loader-code16313_
                                          (cons (cons 'load-module
                                                      (cons _rt16310_ '()))
                                                '())))
                              _loader-code16313_)))
                     (let ()
                       (gxc#compile-scm-file
                        (gxc#compile-output-file _ctx16308_ 'rt '".scm")
                        _loader-code16315_)))))))
          (let ((_compile116302_
                 (lambda (_ctx16324_)
                   (let ((_code16326_
                          (##structure-ref
                           _ctx16324_
                           '11
                           gx#module-context::t
                           '#f)))
                     (let ((_rt16330_
                            (if (gxc#apply-find-runtime-code _code16326_)
                                (let ((_idstr16328_
                                       (symbol->string
                                        (##structure-ref
                                         _ctx16324_
                                         '1
                                         gx#expander-context::t
                                         '#f))))
                                  (string-append _idstr16328_ '"__0"))
                                '#f)))
                       (let ()
                         (begin
                           (if _rt16330_
                               (begin
                                 (hash-put!
                                  (gxc#current-compile-runtime-sections)
                                  _ctx16324_
                                  _rt16330_)
                                 (_generate-runtime-code16303_
                                  _ctx16324_
                                  _code16326_))
                               '#!void)
                           (_generate-loader-code16304_
                            _ctx16324_
                            _code16326_
                            _rt16330_))))))))
            (let ((_all-modules16306_
                   (cons _ctx16300_ (gxc#lift-nested-modules _ctx16300_))))
              (for-each _compile116302_ _all-modules16306_)))))))
  (define gxc#compile-meta-code
    (lambda (_ctx16202_)
      (let ((_compile-ssi16204_
             (lambda (_code16270_)
               (let ((_path16272_
                      (gxc#compile-output-file _ctx16202_ '#f '".ssi")))
                 (let ((_prelude16283_
                        (let ((_super16274_
                               (##structure-ref
                                _ctx16202_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (let ((_$e16276_
                                 (##structure-ref
                                  _super16274_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (if _$e16276_
                                ((lambda (_g1627816280_)
                                   (make-symbol '":" _g1627816280_))
                                 _$e16276_)
                                ':<root>)))))
                   (let ((_ns16285_
                          (##structure-ref
                           _ctx16202_
                           '6
                           gx#module-context::t
                           '#f)))
                     (let ((_idstr16287_
                            (symbol->string
                             (##structure-ref
                              _ctx16202_
                              '1
                              gx#expander-context::t
                              '#f))))
                       (let ((_pkg16294_
                              (let ((_$e16289_
                                     (string-rindex _idstr16287_ '#\/)))
                                (if _$e16289_
                                    ((lambda (_x16292_)
                                       (string->symbol
                                        (substring _idstr16287_ '0 _x16292_)))
                                     _$e16289_)
                                    '#f))))
                         (let ((_rt16296_
                                (hash-get
                                 (gxc#current-compile-runtime-sections)
                                 _ctx16202_)))
                           (let ()
                             (begin
                               (gxc#verbose '"compile " _path16272_)
                               (with-output-to-file
                                (cons 'path:
                                      (cons _path16272_
                                            (cons 'permissions:
                                                  (cons '420 '()))))
                                (lambda ()
                                  (begin
                                    (displayln '"prelude:" '" " _prelude16283_)
                                    (if _pkg16294_
                                        (displayln '"package:" '" " _pkg16294_)
                                        '#!void)
                                    (displayln '"namespace:" '" " _ns16285_)
                                    (newline)
                                    (pretty-print _code16270_)
                                    (if _rt16296_
                                        (pretty-print
                                         (cons '%#call
                                               (cons (cons '%#ref
                                                           (cons '_gx#load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _rt16296_ '()))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '#!void)))))))))))))))
        (let ((_compile-phi16205_
               (lambda (_part16210_)
                 (let ((_part1621116224_ _part16210_))
                   (let ((_E1621316228_
                          (lambda ()
                            (error '"No clause matching" _part1621116224_))))
                     (let ((_K1621416239_
                            (lambda (_code16231_
                                     _n16232_
                                     _phi16233_
                                     _phi-ctx16234_)
                              (let ((_code16237_
                                     (call-with-parameters
                                      (lambda ()
                                        (gxc#generate-runtime-phi _code16231_))
                                      gx#current-expander-context
                                      _phi-ctx16234_
                                      gx#current-expander-phi
                                      _phi16233_)))
                                (gxc#compile-scm-file
                                 (gxc#compile-output-file
                                  _ctx16202_
                                  _n16232_
                                  '".scm")
                                 _code16237_)))))
                       (if (##pair? _part1621116224_)
                           (let ((_hd1621516242_ (##car _part1621116224_))
                                 (_tl1621616244_ (##cdr _part1621116224_)))
                             (let ((_phi-ctx16247_ _hd1621516242_))
                               (if (##pair? _tl1621616244_)
                                   (let ((_hd1621716249_
                                          (##car _tl1621616244_))
                                         (_tl1621816251_
                                          (##cdr _tl1621616244_)))
                                     (let ((_phi16254_ _hd1621716249_))
                                       (if (##pair? _tl1621816251_)
                                           (let ((_hd1621916256_
                                                  (##car _tl1621816251_))
                                                 (_tl1622016258_
                                                  (##cdr _tl1621816251_)))
                                             (let ((_n16261_ _hd1621916256_))
                                               (if (##pair? _tl1622016258_)
                                                   (let ((_hd1622116263_
                                                          (##car _tl1622016258_))
                                                         (_tl1622216265_
                                                          (##cdr _tl1622016258_)))
                                                     (let ((_code16268_
                                                            _hd1622116263_))
                                                       (if (##null? _tl1622216265_)
                                                           (_K1621416239_
                                                            _code16268_
                                                            _n16261_
                                                            _phi16254_
                                                            _phi-ctx16247_)
                                                           (_E1621316228_))))
                                                   (_E1621316228_))))
                                           (_E1621316228_))))
                                   (_E1621316228_))))
                           (_E1621316228_))))))))
          (let ((_g16494_ (gxc#generate-meta-code _ctx16202_)))
            (begin
              (let ((_g16495_ (values-count _g16494_)))
                (if (not (fx= _g16495_ 2))
                    (error "Context expects 2 values" _g16495_)))
              (let ((_ssi-code16207_ (values-ref _g16494_ 0))
                    (_phi-code16208_ (values-ref _g16494_ 1)))
                (begin
                  (_compile-ssi16204_ _ssi-code16207_)
                  (for-each _compile-phi16205_ _phi-code16208_)))))))))
  (define gxc#compile-ssxi-code
    (lambda (_ctx16185_)
      (let ((_path16187_ (gxc#compile-output-file _ctx16185_ '#f '".ssxi.ss")))
        (let ((_code16189_
               (gxc#apply-generate-ssxi
                (##structure-ref _ctx16185_ '11 gx#module-context::t '#f))))
          (let ((_idstr16191_
                 (symbol->string
                  (##structure-ref _ctx16185_ '1 gx#expander-context::t '#f))))
            (let ((_pkg16198_
                   (let ((_$e16193_ (string-rindex _idstr16191_ '#\/)))
                     (if _$e16193_
                         ((lambda (_x16196_)
                            (string->symbol
                             (substring _idstr16191_ '0 _x16196_)))
                          _$e16193_)
                         '#f))))
              (let ()
                (begin
                  (gxc#verbose '"compile " _path16187_)
                  (with-output-to-file
                   (cons 'path:
                         (cons _path16187_
                               (cons 'permissions: (cons '420 '()))))
                   (lambda ()
                     (begin
                       (displayln '"prelude: :gerbil/compiler/ssxi")
                       (if _pkg16198_
                           (displayln '"package: " _pkg16198_)
                           '#!void)
                       (newline)
                       (pretty-print _code16189_))))))))))))
  (define gxc#generate-meta-code
    (lambda (_ctx16178_)
      (let ((_state16180_
             (let ((__obj16489 (make-object gxc#meta-state::t '4)))
               (begin
                 (gxc#meta-state:::init! __obj16489 _ctx16178_)
                 __obj16489))))
        (let ((_ssi-code16182_
               (gxc#apply-generate-meta
                (##structure-ref _ctx16178_ '11 gx#module-context::t '#f)
                _state16180_)))
          (let ()
            (values _ssi-code16182_ (gxc#meta-state-end! _state16180_)))))))
  (define gxc#generate-runtime-phi
    (lambda (_stx16171_)
      (let ((_lifts16173_ (box '())))
        (call-with-parameters
         (lambda ()
           (let ((_code16176_ (gxc#apply-generate-runtime-phi _stx16171_)))
             (if (null? (unbox _lifts16173_))
                 _code16176_
                 (cons 'begin
                       (foldr cons
                              (cons _code16176_ '())
                              (reverse (unbox _lifts16173_)))))))
         gxc#current-compile-lift
         _lifts16173_))))
  (define gxc#lift-nested-modules
    (lambda (_ctx16167_)
      (let ((_modules16169_ (box '())))
        (begin
          (gxc#apply-lift-modules
           (##structure-ref _ctx16167_ '11 gx#module-context::t '#f)
           _modules16169_)
          (reverse (unbox _modules16169_))))))
  (define gxc#compile-scm-file
    (lambda (_path16163_ _code16164_)
      (begin
        (gxc#verbose '"compile " _path16163_)
        (with-output-to-file
         (cons 'path: (cons _path16163_ (cons 'permissions: (cons '420 '()))))
         (lambda ()
           (begin
             (pretty-print
              '(declare (block) (standard-bindings) (extended-bindings)))
             (pretty-print _code16164_))))
        (if (gxc#current-compile-invoke-gsc)
            (begin
              (gxc#gsc-compile-file _path16163_)
              (if (gxc#current-compile-keep-scm)
                  '#!void
                  (delete-file _path16163_)))
            '#!void))))
  (define gxc#gsc-compile-file
    (lambda (_path16149_)
      (let ((_gsc-args16156_
             (let ((_$e16151_ (gxc#current-compile-gsc-options)))
               (if _$e16151_
                   ((lambda (_opts16154_)
                      (foldr cons (cons _path16149_ '()) _opts16154_))
                    _$e16151_)
                   (cons _path16149_ '())))))
        (let ((_proc16158_
               (open-process
                (cons 'path:
                      (cons '"gsc"
                            (cons 'arguments:
                                  (cons _gsc-args16156_
                                        (cons 'stdout-redirection:
                                              (cons '#f '())))))))))
          (let ((_status16160_ (process-status _proc16158_)))
            (let ()
              (if (zero? _status16160_)
                  '#!void
                  (gxc#raise-compile-error
                   '"Compilation error; gsc exit with nonzero status"
                   _path16149_
                   _status16160_))))))))
  (define gxc#compile-output-file
    (lambda (_ctx16121_ _n16122_ _ext16123_)
      (let ((_module-relative-path16125_
             (lambda (_ctx16147_)
               (path-strip-directory
                (symbol->string
                 (##structure-ref
                  _ctx16147_
                  '1
                  gx#expander-context::t
                  '#f))))))
        (let ((_module-source-directory16126_
               (lambda (_ctx16143_)
                 (path-directory
                  (let ((_mpath16145_
                         (##structure-ref
                          _ctx16143_
                          '7
                          gx#module-context::t
                          '#f)))
                    (if (string? _mpath16145_)
                        _mpath16145_
                        (last _mpath16145_)))))))
          (let ((_section-string16127_
                 (lambda (_n16141_)
                   (if (number? _n16141_)
                       (number->string _n16141_)
                       (if (symbol? _n16141_)
                           (symbol->string _n16141_)
                           (if (string? _n16141_)
                               _n16141_
                               (gxc#raise-compile-error
                                '"Unexpected section"
                                _n16141_)))))))
            (let ((_file-name16128_
                   (lambda (_path16139_)
                     (if _n16122_
                         (string-append
                          _path16139_
                          '"__"
                          (_section-string16127_ _n16122_)
                          _ext16123_)
                         (string-append _path16139_ _ext16123_)))))
              (let ((_file-path16129_
                     (lambda ()
                       (let ((_$e16134_ (gxc#current-compile-output-dir)))
                         (if _$e16134_
                             ((lambda (_outdir16137_)
                                (path-expand
                                 (_file-name16128_
                                  (symbol->string
                                   (##structure-ref
                                    _ctx16121_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                                 _outdir16137_))
                              _$e16134_)
                             (path-expand
                              (_file-name16128_
                               (_module-relative-path16125_ _ctx16121_))
                              (_module-source-directory16126_ _ctx16121_)))))))
                (let ((_path16131_ (_file-path16129_)))
                  (begin
                    (create-directory* (path-directory _path16131_))
                    _path16131_))))))))))
