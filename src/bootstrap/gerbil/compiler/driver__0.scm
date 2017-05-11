(declare (block) (standard-bindings) (extended-bindings))
(begin
  (begin
    (define gxc#compile-file__opt-lambda16493
      (lambda (_srcpath16495_ _opts16496_)
        (begin
          (if (string? _srcpath16495_)
              '#!void
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath16495_))
          (let ((_outdir16498_ (pgetq 'output-dir: _opts16496_))
                (_invoke-gsc?16499_ (pgetq 'invoke-gsc: _opts16496_))
                (_gsc-options16500_ (pgetq 'gsc-options: _opts16496_))
                (_keep-scm?16501_ (pgetq 'keep-scm: _opts16496_))
                (_verbosity16502_ (pgetq 'verbose: _opts16496_))
                (_optimize16503_ (pgetq 'optimize: _opts16496_))
                (_gen-ssxi16504_ (pgetq 'generate-ssxi: _opts16496_)))
            (begin
              (if _outdir16498_ (create-directory* _outdir16498_) '#!void)
              (if _optimize16503_ (gxc#optimizer-info-init!) '#!void)
              (call-with-parameters
               (lambda ()
                 (begin
                   (gxc#verbose '"compile exe " _srcpath16495_)
                   (gxc#compile-top-module
                    (gx#import-module__0 _srcpath16495_))))
               gxc#current-compile-output-dir
               _outdir16498_
               gxc#current-compile-invoke-gsc
               _invoke-gsc?16499_
               gxc#current-compile-gsc-options
               _gsc-options16500_
               gxc#current-compile-keep-scm
               _keep-scm?16501_
               gxc#current-compile-verbose
               _verbosity16502_
               gxc#current-compile-optimize
               _optimize16503_
               gxc#current-compile-generate-ssxi
               _gen-ssxi16504_))))))
    (begin
      (define gxc#compile-file__0
        (lambda (_srcpath16510_)
          (let ((_opts16512_ '()))
            (gxc#compile-file__opt-lambda16493 _srcpath16510_ _opts16512_))))
      (define gxc#compile-file
        (lambda _g16519_
          (let ((_g16518_ (length _g16519_)))
            (cond ((fx= _g16518_ 1) (apply gxc#compile-file__0 _g16519_))
                  ((fx= _g16518_ 2)
                   (apply gxc#compile-file__opt-lambda16493 _g16519_))
                  (else (error "No clause matching arguments" _g16519_))))))))
  (begin
    (define gxc#compile-exe-stub__opt-lambda16472
      (lambda (_srcpath16474_ _opts16475_)
        (begin
          (if (string? _srcpath16474_)
              '#!void
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath16474_))
          (let ((_outdir16477_ (pgetq 'output-dir: _opts16475_))
                (_invoke-gsc?16478_ (pgetq 'invoke-gsc: _opts16475_))
                (_gsc-options16479_ (pgetq 'gsc-options: _opts16475_))
                (_keep-scm?16480_ (pgetq 'keep-scm: _opts16475_))
                (_verbosity16481_ (pgetq 'verbose: _opts16475_)))
            (begin
              (if _outdir16477_ (create-directory* _outdir16477_) '#!void)
              (call-with-parameters
               (lambda ()
                 (begin
                   (gxc#verbose '"compile " _srcpath16474_)
                   (gxc#compile-exe-stub-module
                    (gx#import-module__0 _srcpath16474_)
                    _opts16475_)))
               gxc#current-compile-output-dir
               _outdir16477_
               gxc#current-compile-invoke-gsc
               _invoke-gsc?16478_
               gxc#current-compile-gsc-options
               _gsc-options16479_
               gxc#current-compile-keep-scm
               _keep-scm?16480_
               gxc#current-compile-verbose
               _verbosity16481_))))))
    (begin
      (define gxc#compile-exe-stub__0
        (lambda (_srcpath16487_)
          (let ((_opts16489_ '()))
            (gxc#compile-exe-stub__opt-lambda16472
             _srcpath16487_
             _opts16489_))))
      (define gxc#compile-exe-stub
        (lambda _g16521_
          (let ((_g16520_ (length _g16521_)))
            (cond ((fx= _g16520_ 1) (apply gxc#compile-exe-stub__0 _g16521_))
                  ((fx= _g16520_ 2)
                   (apply gxc#compile-exe-stub__opt-lambda16472 _g16521_))
                  (else (error "No clause matching arguments" _g16521_))))))))
  (define gxc#compile-exe-stub-module
    (lambda (_ctx16366_ _opts16367_)
      (let ((_find-export-binding16369_
             (lambda (_id16423_ _exports16424_)
               (let ((_$e16470_
                      (find (lambda (_e1642516427_)
                              (let ((_g1642916439_ _e1642516427_))
                                (let ((_E1643216443_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _g1642916439_))))
                                  (let ((_else1643116447_ (lambda () '#f)))
                                    (let ((_K1643316451_ (lambda () '#t)))
                                      (if (direct-struct-instance?
                                           gx#module-export::t
                                           _g1642916439_)
                                          (let ((_e1643416454_
                                                 (##vector-ref
                                                  _g1642916439_
                                                  '1)))
                                            (let ((_e1643516457_
                                                   (##vector-ref
                                                    _g1642916439_
                                                    '2)))
                                              (let ((_e1643616460_
                                                     (##vector-ref
                                                      _g1642916439_
                                                      '3)))
                                                (if (##eq? _e1643616460_ '0)
                                                    (let ((_e1643716463_
                                                           (##vector-ref
                                                            _g1642916439_
                                                            '4)))
                                                      (if ((lambda (_g1646516467_)
                                                             (eq? _g1646516467_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id16423_))
                   _e1643716463_)
                  (_K1643316451_)
                  (_else1643116447_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_else1643116447_)))))
                                          (_else1643116447_)))))))
                            _exports16424_)))
                 (if _$e16470_
                     (gx#core-resolve-module-export _$e16470_)
                     '#f)))))
        (let ((_generate-stub16370_
               (lambda ()
                 (let ((_mod-str16411_
                        (symbol->string
                         (##structure-ref
                          _ctx16366_
                          '1
                          gx#expander-context::t
                          '#f))))
                   (let ((_mod-rt16413_
                          (string-append _mod-str16411_ '"__rt")))
                     (let ((_mod-main16420_
                            (let ((_$e16415_
                                   (_find-export-binding16369_
                                    'main
                                    (##structure-ref
                                     _ctx16366_
                                     '9
                                     gx#module-context::t
                                     '#f))))
                              (if _$e16415_
                                  ((lambda (_bind16418_)
                                     (begin
                                       (if (##structure-instance-of?
                                            _bind16418_
                                            'gx#runtime-binding::t)
                                           '#!void
                                           (gxc#raise-compile-error
                                            '"main is not a runtime binding"))
                                       (##structure-ref
                                        _bind16418_
                                        '1
                                        gx#binding::t
                                        '#f)))
                                   _$e16415_)
                                  (gxc#raise-compile-error
                                   '"module does not export main"
                                   (##structure-ref
                                    _ctx16366_
                                    '1
                                    gx#expander-context::t
                                    '#f))))))
                       (let ()
                         (begin
                           (write '(##namespace ("")))
                           (newline)
                           (write (cons '_gx#start!
                                        (cons _mod-rt16413_
                                              (cons (cons 'quote
                                                          (cons _mod-main16420_
                                                                '()))
                                                    '()))))
                           (newline)))))))))
          (let ((_compile-stub16371_
                 (lambda (_output-scm16398_ _output-bin16399_)
                   (let ((_init-stub16401_
                          (path-expand
                           '"lib/gx-init-exe.scm"
                           (getenv '"GERBIL_HOME"))))
                     (let ((_gsc-args16403_
                            (cons '"-exe"
                                  (cons '"-o"
                                        (cons _output-bin16399_
                                              (cons _init-stub16401_
                                                    (cons _output-scm16398_
                                                          '())))))))
                       (let ((_proc16405_
                              (open-process
                               (cons 'path:
                                     (cons '"gsc"
                                           (cons 'arguments:
                                                 (cons _gsc-args16403_
                                                       (cons 'stdout-redirection:
                                                             (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (let ((_status16407_ (process-status _proc16405_)))
                           (let ()
                             (if (zero? _status16407_)
                                 '#!void
                                 (gxc#raise-compile-error
                                  '"Compilation error; gsc exit with nonzero status"
                                  _output-scm16398_
                                  _output-bin16399_
                                  _status16407_))))))))))
            (let ((_output-bin16393_
                   (let ((_$e16373_ (pgetq 'output-file: _opts16367_)))
                     (if _$e16373_
                         (values _$e16373_)
                         (let ((_mod-str16376_
                                (symbol->string
                                 (##structure-ref
                                  _ctx16366_
                                  '1
                                  gx#expander-context::t
                                  '#f))))
                           (let ((_mod-name16383_
                                  (let ((_$e16378_
                                         (string-rindex _mod-str16376_ '#\/)))
                                    (if _$e16378_
                                        ((lambda (_ix16381_)
                                           (substring
                                            _mod-str16376_
                                            (fx1+ _ix16381_)
                                            (string-length _mod-str16376_)))
                                         _$e16378_)
                                        _mod-str16376_))))
                             (let ()
                               (let ((_$e16386_
                                      (gxc#current-compile-output-dir)))
                                 (if _$e16386_
                                     ((lambda (_g1638816390_)
                                        (path-expand
                                         _mod-name16383_
                                         _g1638816390_))
                                      _$e16386_)
                                     _mod-name16383_)))))))))
              (let ((_output-scm16395_
                     (string-append _output-bin16393_ '".scm")))
                (let ()
                  (begin
                    (with-output-to-file
                     _output-scm16395_
                     _generate-stub16370_)
                    (if (gxc#current-compile-invoke-gsc)
                        (_compile-stub16371_
                         _output-scm16395_
                         _output-bin16393_)
                        '#!void)
                    (if (gxc#current-compile-keep-scm)
                        '#!void
                        (delete-file _output-scm16395_)))))))))))
  (define gxc#compile-top-module
    (lambda (_ctx16363_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#verbose
            '"compile "
            (##structure-ref _ctx16363_ '1 gx#expander-context::t '#f))
           (if (gxc#current-compile-optimize)
               (gxc#optimize! _ctx16363_)
               '#!void)
           (gxc#collect-bindings _ctx16363_)
           (gxc#compile-runtime-code _ctx16363_)
           (gxc#compile-meta-code _ctx16363_)
           (if (if (gxc#current-compile-optimize)
                   (gxc#current-compile-generate-ssxi)
                   '#f)
               (gxc#compile-ssxi-code _ctx16363_)
               '#!void)))
       gx#current-expander-context
       _ctx16363_
       gx#current-expander-phi
       '0
       gx#current-expander-marks
       '()
       gxc#current-compile-symbol-table
       (let ((__obj16516 (make-object gxc#symbol-table::t '2)))
         (begin (gxc#symbol-table:::init! __obj16516) __obj16516))
       gxc#current-compile-runtime-sections
       (make-hash-table-eq))))
  (define gxc#collect-bindings
    (lambda (_ctx16361_)
      (gxc#apply-collect-bindings
       (##structure-ref _ctx16361_ '11 gx#module-context::t '#f))))
  (define gxc#compile-runtime-code
    (lambda (_ctx16328_)
      (let ((_generate-runtime-code16331_
             (lambda (_ctx16346_ _code16347_)
               (let ((_runtime-code16350_
                      (call-with-parameters
                       (lambda () (gxc#apply-generate-runtime _code16347_))
                       gx#current-expander-context
                       _ctx16346_)))
                 (gxc#compile-scm-file
                  (gxc#compile-output-file _ctx16346_ '0 '".scm")
                  _runtime-code16350_)))))
        (let ((_generate-loader-code16332_
               (lambda (_ctx16336_ _code16337_ _rt16338_)
                 (let ((_loader-code16341_
                        (call-with-parameters
                         (lambda () (gxc#apply-generate-loader _code16337_))
                         gx#current-expander-context
                         _ctx16336_)))
                   (let ((_loader-code16343_
                          (if _rt16338_
                              (cons 'begin
                                    (cons _loader-code16341_
                                          (cons (cons 'load-module
                                                      (cons _rt16338_ '()))
                                                '())))
                              _loader-code16341_)))
                     (let ()
                       (gxc#compile-scm-file
                        (gxc#compile-output-file _ctx16336_ 'rt '".scm")
                        _loader-code16343_)))))))
          (let ((_compile116330_
                 (lambda (_ctx16352_)
                   (let ((_code16354_
                          (##structure-ref
                           _ctx16352_
                           '11
                           gx#module-context::t
                           '#f)))
                     (let ((_rt16358_
                            (if (gxc#apply-find-runtime-code _code16354_)
                                (let ((_idstr16356_
                                       (symbol->string
                                        (##structure-ref
                                         _ctx16352_
                                         '1
                                         gx#expander-context::t
                                         '#f))))
                                  (string-append _idstr16356_ '"__0"))
                                '#f)))
                       (let ()
                         (begin
                           (if _rt16358_
                               (begin
                                 (hash-put!
                                  (gxc#current-compile-runtime-sections)
                                  _ctx16352_
                                  _rt16358_)
                                 (_generate-runtime-code16331_
                                  _ctx16352_
                                  _code16354_))
                               '#!void)
                           (_generate-loader-code16332_
                            _ctx16352_
                            _code16354_
                            _rt16358_))))))))
            (let ((_all-modules16334_
                   (cons _ctx16328_ (gxc#lift-nested-modules _ctx16328_))))
              (for-each _compile116330_ _all-modules16334_)))))))
  (define gxc#compile-meta-code
    (lambda (_ctx16230_)
      (let ((_compile-ssi16232_
             (lambda (_code16298_)
               (let ((_path16300_
                      (gxc#compile-output-file _ctx16230_ '#f '".ssi")))
                 (let ((_prelude16311_
                        (let ((_super16302_
                               (##structure-ref
                                _ctx16230_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (let ((_$e16304_
                                 (##structure-ref
                                  _super16302_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (if _$e16304_
                                ((lambda (_g1630616308_)
                                   (make-symbol '":" _g1630616308_))
                                 _$e16304_)
                                ':<root>)))))
                   (let ((_ns16313_
                          (##structure-ref
                           _ctx16230_
                           '6
                           gx#module-context::t
                           '#f)))
                     (let ((_idstr16315_
                            (symbol->string
                             (##structure-ref
                              _ctx16230_
                              '1
                              gx#expander-context::t
                              '#f))))
                       (let ((_pkg16322_
                              (let ((_$e16317_
                                     (string-rindex _idstr16315_ '#\/)))
                                (if _$e16317_
                                    ((lambda (_x16320_)
                                       (string->symbol
                                        (substring _idstr16315_ '0 _x16320_)))
                                     _$e16317_)
                                    '#f))))
                         (let ((_rt16324_
                                (hash-get
                                 (gxc#current-compile-runtime-sections)
                                 _ctx16230_)))
                           (let ()
                             (begin
                               (gxc#verbose '"compile " _path16300_)
                               (with-output-to-file
                                (cons 'path:
                                      (cons _path16300_
                                            (cons 'permissions:
                                                  (cons '420 '()))))
                                (lambda ()
                                  (begin
                                    (displayln '"prelude:" '" " _prelude16311_)
                                    (if _pkg16322_
                                        (displayln '"package:" '" " _pkg16322_)
                                        '#!void)
                                    (displayln '"namespace:" '" " _ns16313_)
                                    (newline)
                                    (pretty-print _code16298_)
                                    (if _rt16324_
                                        (pretty-print
                                         (cons '%#call
                                               (cons (cons '%#ref
                                                           (cons '_gx#load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _rt16324_ '()))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '#!void)))))))))))))))
        (let ((_compile-phi16233_
               (lambda (_part16238_)
                 (let ((_part1623916252_ _part16238_))
                   (let ((_E1624116256_
                          (lambda ()
                            (error '"No clause matching" _part1623916252_))))
                     (let ((_K1624216267_
                            (lambda (_code16259_
                                     _n16260_
                                     _phi16261_
                                     _phi-ctx16262_)
                              (let ((_code16265_
                                     (call-with-parameters
                                      (lambda ()
                                        (gxc#generate-runtime-phi _code16259_))
                                      gx#current-expander-context
                                      _phi-ctx16262_
                                      gx#current-expander-phi
                                      _phi16261_)))
                                (gxc#compile-scm-file
                                 (gxc#compile-output-file
                                  _ctx16230_
                                  _n16260_
                                  '".scm")
                                 _code16265_)))))
                       (if (##pair? _part1623916252_)
                           (let ((_hd1624316270_ (##car _part1623916252_))
                                 (_tl1624416272_ (##cdr _part1623916252_)))
                             (let ((_phi-ctx16275_ _hd1624316270_))
                               (if (##pair? _tl1624416272_)
                                   (let ((_hd1624516277_
                                          (##car _tl1624416272_))
                                         (_tl1624616279_
                                          (##cdr _tl1624416272_)))
                                     (let ((_phi16282_ _hd1624516277_))
                                       (if (##pair? _tl1624616279_)
                                           (let ((_hd1624716284_
                                                  (##car _tl1624616279_))
                                                 (_tl1624816286_
                                                  (##cdr _tl1624616279_)))
                                             (let ((_n16289_ _hd1624716284_))
                                               (if (##pair? _tl1624816286_)
                                                   (let ((_hd1624916291_
                                                          (##car _tl1624816286_))
                                                         (_tl1625016293_
                                                          (##cdr _tl1624816286_)))
                                                     (let ((_code16296_
                                                            _hd1624916291_))
                                                       (if (##null? _tl1625016293_)
                                                           (_K1624216267_
                                                            _code16296_
                                                            _n16289_
                                                            _phi16282_
                                                            _phi-ctx16275_)
                                                           (_E1624116256_))))
                                                   (_E1624116256_))))
                                           (_E1624116256_))))
                                   (_E1624116256_))))
                           (_E1624116256_))))))))
          (let ((_g16522_ (gxc#generate-meta-code _ctx16230_)))
            (begin
              (let ((_g16523_ (values-count _g16522_)))
                (if (not (fx= _g16523_ 2))
                    (error "Context expects 2 values" _g16523_)))
              (let ((_ssi-code16235_ (values-ref _g16522_ 0))
                    (_phi-code16236_ (values-ref _g16522_ 1)))
                (begin
                  (_compile-ssi16232_ _ssi-code16235_)
                  (for-each _compile-phi16233_ _phi-code16236_)))))))))
  (define gxc#compile-ssxi-code
    (lambda (_ctx16213_)
      (let ((_path16215_ (gxc#compile-output-file _ctx16213_ '#f '".ssxi.ss")))
        (let ((_code16217_
               (gxc#apply-generate-ssxi
                (##structure-ref _ctx16213_ '11 gx#module-context::t '#f))))
          (let ((_idstr16219_
                 (symbol->string
                  (##structure-ref _ctx16213_ '1 gx#expander-context::t '#f))))
            (let ((_pkg16226_
                   (let ((_$e16221_ (string-rindex _idstr16219_ '#\/)))
                     (if _$e16221_
                         ((lambda (_x16224_)
                            (string->symbol
                             (substring _idstr16219_ '0 _x16224_)))
                          _$e16221_)
                         '#f))))
              (let ()
                (begin
                  (gxc#verbose '"compile " _path16215_)
                  (with-output-to-file
                   (cons 'path:
                         (cons _path16215_
                               (cons 'permissions: (cons '420 '()))))
                   (lambda ()
                     (begin
                       (displayln '"prelude: :gerbil/compiler/ssxi")
                       (if _pkg16226_
                           (displayln '"package: " _pkg16226_)
                           '#!void)
                       (newline)
                       (pretty-print _code16217_))))))))))))
  (define gxc#generate-meta-code
    (lambda (_ctx16206_)
      (let ((_state16208_
             (let ((__obj16517 (make-object gxc#meta-state::t '4)))
               (begin
                 (gxc#meta-state:::init! __obj16517 _ctx16206_)
                 __obj16517))))
        (let ((_ssi-code16210_
               (gxc#apply-generate-meta
                (##structure-ref _ctx16206_ '11 gx#module-context::t '#f)
                _state16208_)))
          (let ()
            (values _ssi-code16210_ (gxc#meta-state-end! _state16208_)))))))
  (define gxc#generate-runtime-phi
    (lambda (_stx16199_)
      (let ((_lifts16201_ (box '())))
        (call-with-parameters
         (lambda ()
           (let ((_code16204_ (gxc#apply-generate-runtime-phi _stx16199_)))
             (if (null? (unbox _lifts16201_))
                 _code16204_
                 (cons 'begin
                       (foldr cons
                              (cons _code16204_ '())
                              (reverse (unbox _lifts16201_)))))))
         gxc#current-compile-lift
         _lifts16201_))))
  (define gxc#lift-nested-modules
    (lambda (_ctx16195_)
      (let ((_modules16197_ (box '())))
        (begin
          (gxc#apply-lift-modules
           (##structure-ref _ctx16195_ '11 gx#module-context::t '#f)
           _modules16197_)
          (reverse (unbox _modules16197_))))))
  (define gxc#compile-scm-file
    (lambda (_path16191_ _code16192_)
      (begin
        (gxc#verbose '"compile " _path16191_)
        (with-output-to-file
         (cons 'path: (cons _path16191_ (cons 'permissions: (cons '420 '()))))
         (lambda ()
           (begin
             (pretty-print
              '(declare (block) (standard-bindings) (extended-bindings)))
             (pretty-print _code16192_))))
        (if (gxc#current-compile-invoke-gsc)
            (begin
              (gxc#gsc-compile-file _path16191_)
              (if (gxc#current-compile-keep-scm)
                  '#!void
                  (delete-file _path16191_)))
            '#!void))))
  (define gxc#gsc-compile-file
    (lambda (_path16177_)
      (let ((_gsc-args16184_
             (let ((_$e16179_ (gxc#current-compile-gsc-options)))
               (if _$e16179_
                   ((lambda (_opts16182_)
                      (foldr cons (cons _path16177_ '()) _opts16182_))
                    _$e16179_)
                   (cons _path16177_ '())))))
        (let ((_proc16186_
               (open-process
                (cons 'path:
                      (cons '"gsc"
                            (cons 'arguments:
                                  (cons _gsc-args16184_
                                        (cons 'stdout-redirection:
                                              (cons '#f '())))))))))
          (let ((_status16188_ (process-status _proc16186_)))
            (let ()
              (if (zero? _status16188_)
                  '#!void
                  (gxc#raise-compile-error
                   '"Compilation error; gsc exit with nonzero status"
                   _path16177_
                   _status16188_))))))))
  (define gxc#compile-output-file
    (lambda (_ctx16149_ _n16150_ _ext16151_)
      (let ((_module-relative-path16153_
             (lambda (_ctx16175_)
               (path-strip-directory
                (symbol->string
                 (##structure-ref
                  _ctx16175_
                  '1
                  gx#expander-context::t
                  '#f))))))
        (let ((_module-source-directory16154_
               (lambda (_ctx16171_)
                 (path-directory
                  (let ((_mpath16173_
                         (##structure-ref
                          _ctx16171_
                          '7
                          gx#module-context::t
                          '#f)))
                    (if (string? _mpath16173_)
                        _mpath16173_
                        (last _mpath16173_)))))))
          (let ((_section-string16155_
                 (lambda (_n16169_)
                   (if (number? _n16169_)
                       (number->string _n16169_)
                       (if (symbol? _n16169_)
                           (symbol->string _n16169_)
                           (if (string? _n16169_)
                               _n16169_
                               (gxc#raise-compile-error
                                '"Unexpected section"
                                _n16169_)))))))
            (let ((_file-name16156_
                   (lambda (_path16167_)
                     (if _n16150_
                         (string-append
                          _path16167_
                          '"__"
                          (_section-string16155_ _n16150_)
                          _ext16151_)
                         (string-append _path16167_ _ext16151_)))))
              (let ((_file-path16157_
                     (lambda ()
                       (let ((_$e16162_ (gxc#current-compile-output-dir)))
                         (if _$e16162_
                             ((lambda (_outdir16165_)
                                (path-expand
                                 (_file-name16156_
                                  (symbol->string
                                   (##structure-ref
                                    _ctx16149_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                                 _outdir16165_))
                              _$e16162_)
                             (path-expand
                              (_file-name16156_
                               (_module-relative-path16153_ _ctx16149_))
                              (_module-source-directory16154_ _ctx16149_)))))))
                (let ((_path16159_ (_file-path16157_)))
                  (begin
                    (create-directory* (path-directory _path16159_))
                    _path16159_))))))))))
