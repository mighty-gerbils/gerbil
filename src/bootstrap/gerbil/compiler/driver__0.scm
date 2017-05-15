(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#compile-timestamp
    (lambda () (inexact->exact (floor (time->seconds (current-time))))))
  (begin
    (define gxc#compile-file__opt-lambda19625
      (lambda (_srcpath19627_ _opts19628_)
        (begin
          (if (string? _srcpath19627_)
              '#!void
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath19627_))
          (let ((_outdir19630_ (pgetq 'output-dir: _opts19628_))
                (_invoke-gsc?19631_ (pgetq 'invoke-gsc: _opts19628_))
                (_gsc-options19632_ (pgetq 'gsc-options: _opts19628_))
                (_keep-scm?19633_ (pgetq 'keep-scm: _opts19628_))
                (_verbosity19634_ (pgetq 'verbose: _opts19628_))
                (_optimize19635_ (pgetq 'optimize: _opts19628_))
                (_gen-ssxi19636_ (pgetq 'generate-ssxi: _opts19628_)))
            (begin
              (if _outdir19630_ (create-directory* _outdir19630_) '#!void)
              (if _optimize19635_ (gxc#optimizer-info-init!) '#!void)
              (call-with-parameters
               (lambda ()
                 (begin
                   (gxc#verbose '"compile exe " _srcpath19627_)
                   (gxc#compile-top-module
                    (gx#import-module__0 _srcpath19627_))))
               gxc#current-compile-output-dir
               _outdir19630_
               gxc#current-compile-invoke-gsc
               _invoke-gsc?19631_
               gxc#current-compile-gsc-options
               _gsc-options19632_
               gxc#current-compile-keep-scm
               _keep-scm?19633_
               gxc#current-compile-verbose
               _verbosity19634_
               gxc#current-compile-optimize
               _optimize19635_
               gxc#current-compile-generate-ssxi
               _gen-ssxi19636_
               gxc#current-compile-timestamp
               (gxc#compile-timestamp)))))))
    (begin
      (define gxc#compile-file__0
        (lambda (_srcpath19642_)
          (let ((_opts19644_ '()))
            (gxc#compile-file__opt-lambda19625 _srcpath19642_ _opts19644_))))
      (define gxc#compile-file
        (lambda _g19652_
          (let ((_g19651_ (length _g19652_)))
            (cond ((fx= _g19651_ 1) (apply gxc#compile-file__0 _g19652_))
                  ((fx= _g19651_ 2)
                   (apply gxc#compile-file__opt-lambda19625 _g19652_))
                  (else (error "No clause matching arguments" _g19652_))))))))
  (begin
    (define gxc#compile-exe-stub__opt-lambda19604
      (lambda (_srcpath19606_ _opts19607_)
        (begin
          (if (string? _srcpath19606_)
              '#!void
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath19606_))
          (let ((_outdir19609_ (pgetq 'output-dir: _opts19607_))
                (_invoke-gsc?19610_ (pgetq 'invoke-gsc: _opts19607_))
                (_gsc-options19611_ (pgetq 'gsc-options: _opts19607_))
                (_keep-scm?19612_ (pgetq 'keep-scm: _opts19607_))
                (_verbosity19613_ (pgetq 'verbose: _opts19607_)))
            (begin
              (if _outdir19609_ (create-directory* _outdir19609_) '#!void)
              (call-with-parameters
               (lambda ()
                 (begin
                   (gxc#verbose '"compile " _srcpath19606_)
                   (gxc#compile-exe-stub-module
                    (gx#import-module__0 _srcpath19606_)
                    _opts19607_)))
               gxc#current-compile-output-dir
               _outdir19609_
               gxc#current-compile-invoke-gsc
               _invoke-gsc?19610_
               gxc#current-compile-gsc-options
               _gsc-options19611_
               gxc#current-compile-keep-scm
               _keep-scm?19612_
               gxc#current-compile-verbose
               _verbosity19613_
               gxc#current-compile-timestamp
               (gxc#compile-timestamp)))))))
    (begin
      (define gxc#compile-exe-stub__0
        (lambda (_srcpath19619_)
          (let ((_opts19621_ '()))
            (gxc#compile-exe-stub__opt-lambda19604
             _srcpath19619_
             _opts19621_))))
      (define gxc#compile-exe-stub
        (lambda _g19654_
          (let ((_g19653_ (length _g19654_)))
            (cond ((fx= _g19653_ 1) (apply gxc#compile-exe-stub__0 _g19654_))
                  ((fx= _g19653_ 2)
                   (apply gxc#compile-exe-stub__opt-lambda19604 _g19654_))
                  (else (error "No clause matching arguments" _g19654_))))))))
  (define gxc#compile-exe-stub-module
    (lambda (_ctx19498_ _opts19499_)
      (let ((_find-export-binding19501_
             (lambda (_id19555_ _exports19556_)
               (let ((_$e19602_
                      (find (lambda (_e1955719559_)
                              (let ((_g1956119571_ _e1955719559_))
                                (let ((_E1956419575_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _g1956119571_))))
                                  (let ((_else1956319579_ (lambda () '#f)))
                                    (let ((_K1956519583_ (lambda () '#t)))
                                      (if (direct-struct-instance?
                                           gx#module-export::t
                                           _g1956119571_)
                                          (let ((_e1956619586_
                                                 (##vector-ref
                                                  _g1956119571_
                                                  '1)))
                                            (let ((_e1956719589_
                                                   (##vector-ref
                                                    _g1956119571_
                                                    '2)))
                                              (let ((_e1956819592_
                                                     (##vector-ref
                                                      _g1956119571_
                                                      '3)))
                                                (if (##eq? _e1956819592_ '0)
                                                    (let ((_e1956919595_
                                                           (##vector-ref
                                                            _g1956119571_
                                                            '4)))
                                                      (if ((lambda (_g1959719599_)
                                                             (eq? _g1959719599_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id19555_))
                   _e1956919595_)
                  (_K1956519583_)
                  (_else1956319579_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_else1956319579_)))))
                                          (_else1956319579_)))))))
                            _exports19556_)))
                 (if _$e19602_
                     (gx#core-resolve-module-export _$e19602_)
                     '#f)))))
        (let ((_generate-stub19502_
               (lambda ()
                 (let ((_mod-str19543_
                        (symbol->string
                         (##structure-ref
                          _ctx19498_
                          '1
                          gx#expander-context::t
                          '#f))))
                   (let ((_mod-rt19545_
                          (string-append _mod-str19543_ '"__rt")))
                     (let ((_mod-main19552_
                            (let ((_$e19547_
                                   (_find-export-binding19501_
                                    'main
                                    (##structure-ref
                                     _ctx19498_
                                     '9
                                     gx#module-context::t
                                     '#f))))
                              (if _$e19547_
                                  ((lambda (_bind19550_)
                                     (begin
                                       (if (##structure-instance-of?
                                            _bind19550_
                                            'gx#runtime-binding::t)
                                           '#!void
                                           (gxc#raise-compile-error
                                            '"main is not a runtime binding"))
                                       (##structure-ref
                                        _bind19550_
                                        '1
                                        gx#binding::t
                                        '#f)))
                                   _$e19547_)
                                  (gxc#raise-compile-error
                                   '"module does not export main"
                                   (##structure-ref
                                    _ctx19498_
                                    '1
                                    gx#expander-context::t
                                    '#f))))))
                       (let ()
                         (begin
                           (write '(##namespace ("")))
                           (newline)
                           (write (cons '_gx#start!
                                        (cons _mod-rt19545_
                                              (cons (cons 'quote
                                                          (cons _mod-main19552_
                                                                '()))
                                                    '()))))
                           (newline)))))))))
          (let ((_compile-stub19503_
                 (lambda (_output-scm19530_ _output-bin19531_)
                   (let ((_init-stub19533_
                          (path-expand
                           '"lib/gx-init-exe.scm"
                           (getenv '"GERBIL_HOME"))))
                     (let ((_gsc-args19535_
                            (cons '"-exe"
                                  (cons '"-o"
                                        (cons _output-bin19531_
                                              (cons _init-stub19533_
                                                    (cons _output-scm19530_
                                                          '())))))))
                       (let ((_proc19537_
                              (open-process
                               (cons 'path:
                                     (cons '"gsc"
                                           (cons 'arguments:
                                                 (cons _gsc-args19535_
                                                       (cons 'stdout-redirection:
                                                             (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (let ((_status19539_ (process-status _proc19537_)))
                           (let ()
                             (if (zero? _status19539_)
                                 '#!void
                                 (gxc#raise-compile-error
                                  '"Compilation error; gsc exit with nonzero status"
                                  _output-scm19530_
                                  _output-bin19531_
                                  _status19539_))))))))))
            (let ((_output-bin19525_
                   (let ((_$e19505_ (pgetq 'output-file: _opts19499_)))
                     (if _$e19505_
                         (values _$e19505_)
                         (let ((_mod-str19508_
                                (symbol->string
                                 (##structure-ref
                                  _ctx19498_
                                  '1
                                  gx#expander-context::t
                                  '#f))))
                           (let ((_mod-name19515_
                                  (let ((_$e19510_
                                         (string-rindex _mod-str19508_ '#\/)))
                                    (if _$e19510_
                                        ((lambda (_ix19513_)
                                           (substring
                                            _mod-str19508_
                                            (fx+ _ix19513_ '1)
                                            (string-length _mod-str19508_)))
                                         _$e19510_)
                                        _mod-str19508_))))
                             (let ()
                               (let ((_$e19518_
                                      (gxc#current-compile-output-dir)))
                                 (if _$e19518_
                                     ((lambda (_g1952019522_)
                                        (path-expand
                                         _mod-name19515_
                                         _g1952019522_))
                                      _$e19518_)
                                     _mod-name19515_)))))))))
              (let ((_output-scm19527_
                     (string-append _output-bin19525_ '".scm")))
                (let ()
                  (begin
                    (with-output-to-file
                     _output-scm19527_
                     _generate-stub19502_)
                    (if (gxc#current-compile-invoke-gsc)
                        (_compile-stub19503_
                         _output-scm19527_
                         _output-bin19525_)
                        '#!void)
                    (if (gxc#current-compile-keep-scm)
                        '#!void
                        (delete-file _output-scm19527_)))))))))))
  (define gxc#compile-top-module
    (lambda (_ctx19495_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#verbose
            '"compile "
            (##structure-ref _ctx19495_ '1 gx#expander-context::t '#f))
           (if (gxc#current-compile-optimize)
               (gxc#optimize! _ctx19495_)
               '#!void)
           (gxc#collect-bindings _ctx19495_)
           (gxc#compile-runtime-code _ctx19495_)
           (gxc#compile-meta-code _ctx19495_)
           (if (if (gxc#current-compile-optimize)
                   (gxc#current-compile-generate-ssxi)
                   '#f)
               (gxc#compile-ssxi-code _ctx19495_)
               '#!void)))
       gx#current-expander-context
       _ctx19495_
       gx#current-expander-phi
       '0
       gx#current-expander-marks
       '()
       gxc#current-compile-symbol-table
       (let ((__obj19649 (make-object gxc#symbol-table::t '2)))
         (begin (gxc#symbol-table:::init! __obj19649) __obj19649))
       gxc#current-compile-runtime-sections
       (make-hash-table-eq))))
  (define gxc#collect-bindings
    (lambda (_ctx19493_)
      (gxc#apply-collect-bindings
       (##structure-ref _ctx19493_ '11 gx#module-context::t '#f))))
  (define gxc#compile-runtime-code
    (lambda (_ctx19460_)
      (let ((_generate-runtime-code19463_
             (lambda (_ctx19478_ _code19479_)
               (let ((_runtime-code19482_
                      (call-with-parameters
                       (lambda () (gxc#apply-generate-runtime _code19479_))
                       gx#current-expander-context
                       _ctx19478_)))
                 (gxc#compile-scm-file
                  (gxc#compile-output-file _ctx19478_ '0 '".scm")
                  _runtime-code19482_)))))
        (let ((_generate-loader-code19464_
               (lambda (_ctx19468_ _code19469_ _rt19470_)
                 (let ((_loader-code19473_
                        (call-with-parameters
                         (lambda () (gxc#apply-generate-loader _code19469_))
                         gx#current-expander-context
                         _ctx19468_)))
                   (let ((_loader-code19475_
                          (if _rt19470_
                              (cons 'begin
                                    (cons _loader-code19473_
                                          (cons (cons 'load-module
                                                      (cons _rt19470_ '()))
                                                '())))
                              _loader-code19473_)))
                     (let ()
                       (gxc#compile-scm-file
                        (gxc#compile-output-file _ctx19468_ 'rt '".scm")
                        _loader-code19475_)))))))
          (let ((_compile119462_
                 (lambda (_ctx19484_)
                   (let ((_code19486_
                          (##structure-ref
                           _ctx19484_
                           '11
                           gx#module-context::t
                           '#f)))
                     (let ((_rt19490_
                            (if (gxc#apply-find-runtime-code _code19486_)
                                (let ((_idstr19488_
                                       (symbol->string
                                        (##structure-ref
                                         _ctx19484_
                                         '1
                                         gx#expander-context::t
                                         '#f))))
                                  (string-append _idstr19488_ '"__0"))
                                '#f)))
                       (let ()
                         (begin
                           (if _rt19490_
                               (begin
                                 (table-set!
                                  (gxc#current-compile-runtime-sections)
                                  _ctx19484_
                                  _rt19490_)
                                 (_generate-runtime-code19463_
                                  _ctx19484_
                                  _code19486_))
                               '#!void)
                           (_generate-loader-code19464_
                            _ctx19484_
                            _code19486_
                            _rt19490_))))))))
            (let ((_all-modules19466_
                   (cons _ctx19460_ (gxc#lift-nested-modules _ctx19460_))))
              (for-each _compile119462_ _all-modules19466_)))))))
  (define gxc#compile-meta-code
    (lambda (_ctx19362_)
      (let ((_compile-ssi19364_
             (lambda (_code19430_)
               (let ((_path19432_
                      (gxc#compile-output-file _ctx19362_ '#f '".ssi")))
                 (let ((_prelude19443_
                        (let ((_super19434_
                               (##structure-ref
                                _ctx19362_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (let ((_$e19436_
                                 (##structure-ref
                                  _super19434_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (if _$e19436_
                                ((lambda (_g1943819440_)
                                   (make-symbol '":" _g1943819440_))
                                 _$e19436_)
                                ':<root>)))))
                   (let ((_ns19445_
                          (##structure-ref
                           _ctx19362_
                           '6
                           gx#module-context::t
                           '#f)))
                     (let ((_idstr19447_
                            (symbol->string
                             (##structure-ref
                              _ctx19362_
                              '1
                              gx#expander-context::t
                              '#f))))
                       (let ((_pkg19454_
                              (let ((_$e19449_
                                     (string-rindex _idstr19447_ '#\/)))
                                (if _$e19449_
                                    ((lambda (_x19452_)
                                       (string->symbol
                                        (substring _idstr19447_ '0 _x19452_)))
                                     _$e19449_)
                                    '#f))))
                         (let ((_rt19456_
                                (table-ref
                                 (gxc#current-compile-runtime-sections)
                                 _ctx19362_
                                 '#f)))
                           (let ()
                             (begin
                               (gxc#verbose '"compile " _path19432_)
                               (with-output-to-file
                                (cons 'path:
                                      (cons _path19432_
                                            (cons 'permissions:
                                                  (cons '420 '()))))
                                (lambda ()
                                  (begin
                                    (displayln '"prelude:" '" " _prelude19443_)
                                    (if _pkg19454_
                                        (displayln '"package:" '" " _pkg19454_)
                                        '#!void)
                                    (displayln '"namespace:" '" " _ns19445_)
                                    (newline)
                                    (pretty-print _code19430_)
                                    (if _rt19456_
                                        (pretty-print
                                         (cons '%#call
                                               (cons (cons '%#ref
                                                           (cons '_gx#load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _rt19456_ '()))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '#!void)))))))))))))))
        (let ((_compile-phi19365_
               (lambda (_part19370_)
                 (let ((_part1937119384_ _part19370_))
                   (let ((_E1937319388_
                          (lambda ()
                            (error '"No clause matching" _part1937119384_))))
                     (let ((_K1937419399_
                            (lambda (_code19391_
                                     _n19392_
                                     _phi19393_
                                     _phi-ctx19394_)
                              (let ((_code19397_
                                     (call-with-parameters
                                      (lambda ()
                                        (gxc#generate-runtime-phi _code19391_))
                                      gx#current-expander-context
                                      _phi-ctx19394_
                                      gx#current-expander-phi
                                      _phi19393_)))
                                (gxc#compile-scm-file
                                 (gxc#compile-output-file
                                  _ctx19362_
                                  _n19392_
                                  '".scm")
                                 _code19397_)))))
                       (if (##pair? _part1937119384_)
                           (let ((_hd1937519402_ (##car _part1937119384_))
                                 (_tl1937619404_ (##cdr _part1937119384_)))
                             (let ((_phi-ctx19407_ _hd1937519402_))
                               (if (##pair? _tl1937619404_)
                                   (let ((_hd1937719409_
                                          (##car _tl1937619404_))
                                         (_tl1937819411_
                                          (##cdr _tl1937619404_)))
                                     (let ((_phi19414_ _hd1937719409_))
                                       (if (##pair? _tl1937819411_)
                                           (let ((_hd1937919416_
                                                  (##car _tl1937819411_))
                                                 (_tl1938019418_
                                                  (##cdr _tl1937819411_)))
                                             (let ((_n19421_ _hd1937919416_))
                                               (if (##pair? _tl1938019418_)
                                                   (let ((_hd1938119423_
                                                          (##car _tl1938019418_))
                                                         (_tl1938219425_
                                                          (##cdr _tl1938019418_)))
                                                     (let ((_code19428_
                                                            _hd1938119423_))
                                                       (if (##null? _tl1938219425_)
                                                           (_K1937419399_
                                                            _code19428_
                                                            _n19421_
                                                            _phi19414_
                                                            _phi-ctx19407_)
                                                           (_E1937319388_))))
                                                   (_E1937319388_))))
                                           (_E1937319388_))))
                                   (_E1937319388_))))
                           (_E1937319388_))))))))
          (let ((_g19655_ (gxc#generate-meta-code _ctx19362_)))
            (begin
              (let ((_g19656_ (values-count _g19655_)))
                (if (not (fx= _g19656_ 2))
                    (error "Context expects 2 values" _g19656_)))
              (let ((_ssi-code19367_ (values-ref _g19655_ 0))
                    (_phi-code19368_ (values-ref _g19655_ 1)))
                (begin
                  (_compile-ssi19364_ _ssi-code19367_)
                  (for-each _compile-phi19365_ _phi-code19368_)))))))))
  (define gxc#compile-ssxi-code
    (lambda (_ctx19345_)
      (let ((_path19347_ (gxc#compile-output-file _ctx19345_ '#f '".ssxi.ss")))
        (let ((_code19349_
               (gxc#apply-generate-ssxi
                (##structure-ref _ctx19345_ '11 gx#module-context::t '#f))))
          (let ((_idstr19351_
                 (symbol->string
                  (##structure-ref _ctx19345_ '1 gx#expander-context::t '#f))))
            (let ((_pkg19358_
                   (let ((_$e19353_ (string-rindex _idstr19351_ '#\/)))
                     (if _$e19353_
                         ((lambda (_x19356_)
                            (string->symbol
                             (substring _idstr19351_ '0 _x19356_)))
                          _$e19353_)
                         '#f))))
              (let ()
                (begin
                  (gxc#verbose '"compile " _path19347_)
                  (with-output-to-file
                   (cons 'path:
                         (cons _path19347_
                               (cons 'permissions: (cons '420 '()))))
                   (lambda ()
                     (begin
                       (displayln '"prelude: :gerbil/compiler/ssxi")
                       (if _pkg19358_
                           (displayln '"package: " _pkg19358_)
                           '#!void)
                       (newline)
                       (pretty-print _code19349_))))))))))))
  (define gxc#generate-meta-code
    (lambda (_ctx19338_)
      (let ((_state19340_
             (let ((__obj19650 (make-object gxc#meta-state::t '4)))
               (begin
                 (gxc#meta-state:::init! __obj19650 _ctx19338_)
                 __obj19650))))
        (let ((_ssi-code19342_
               (gxc#apply-generate-meta
                (##structure-ref _ctx19338_ '11 gx#module-context::t '#f)
                _state19340_)))
          (let ()
            (values _ssi-code19342_ (gxc#meta-state-end! _state19340_)))))))
  (define gxc#generate-runtime-phi
    (lambda (_stx19331_)
      (let ((_lifts19333_ (box '())))
        (call-with-parameters
         (lambda ()
           (let ((_code19336_ (gxc#apply-generate-runtime-phi _stx19331_)))
             (if (null? (unbox _lifts19333_))
                 _code19336_
                 (cons 'begin
                       (foldr1 cons
                               (cons _code19336_ '())
                               (reverse (unbox _lifts19333_)))))))
         gxc#current-compile-lift
         _lifts19333_))))
  (define gxc#lift-nested-modules
    (lambda (_ctx19327_)
      (let ((_modules19329_ (box '())))
        (begin
          (gxc#apply-lift-modules
           (##structure-ref _ctx19327_ '11 gx#module-context::t '#f)
           _modules19329_)
          (reverse (unbox _modules19329_))))))
  (define gxc#compile-scm-file
    (lambda (_path19323_ _code19324_)
      (begin
        (gxc#verbose '"compile " _path19323_)
        (with-output-to-file
         (cons 'path: (cons _path19323_ (cons 'permissions: (cons '420 '()))))
         (lambda ()
           (begin
             (pretty-print
              '(declare (block) (standard-bindings) (extended-bindings)))
             (pretty-print _code19324_))))
        (if (gxc#current-compile-invoke-gsc)
            (begin
              (gxc#gsc-compile-file _path19323_)
              (if (gxc#current-compile-keep-scm)
                  '#!void
                  (delete-file _path19323_)))
            '#!void))))
  (define gxc#gsc-compile-file
    (lambda (_path19309_)
      (let ((_gsc-args19316_
             (let ((_$e19311_ (gxc#current-compile-gsc-options)))
               (if _$e19311_
                   ((lambda (_opts19314_)
                      (foldr1 cons (cons _path19309_ '()) _opts19314_))
                    _$e19311_)
                   (cons _path19309_ '())))))
        (let ((_proc19318_
               (open-process
                (cons 'path:
                      (cons '"gsc"
                            (cons 'arguments:
                                  (cons _gsc-args19316_
                                        (cons 'stdout-redirection:
                                              (cons '#f '())))))))))
          (let ((_status19320_ (process-status _proc19318_)))
            (let ()
              (if (zero? _status19320_)
                  '#!void
                  (gxc#raise-compile-error
                   '"Compilation error; gsc exit with nonzero status"
                   _path19309_
                   _status19320_))))))))
  (define gxc#compile-output-file
    (lambda (_ctx19281_ _n19282_ _ext19283_)
      (let ((_module-relative-path19285_
             (lambda (_ctx19307_)
               (path-strip-directory
                (symbol->string
                 (##structure-ref
                  _ctx19307_
                  '1
                  gx#expander-context::t
                  '#f))))))
        (let ((_module-source-directory19286_
               (lambda (_ctx19303_)
                 (path-directory
                  (let ((_mpath19305_
                         (##structure-ref
                          _ctx19303_
                          '7
                          gx#module-context::t
                          '#f)))
                    (if (string? _mpath19305_)
                        _mpath19305_
                        (last _mpath19305_)))))))
          (let ((_section-string19287_
                 (lambda (_n19301_)
                   (if (number? _n19301_)
                       (number->string _n19301_)
                       (if (symbol? _n19301_)
                           (symbol->string _n19301_)
                           (if (string? _n19301_)
                               _n19301_
                               (gxc#raise-compile-error
                                '"Unexpected section"
                                _n19301_)))))))
            (let ((_file-name19288_
                   (lambda (_path19299_)
                     (if _n19282_
                         (string-append
                          _path19299_
                          '"__"
                          (_section-string19287_ _n19282_)
                          _ext19283_)
                         (string-append _path19299_ _ext19283_)))))
              (let ((_file-path19289_
                     (lambda ()
                       (let ((_$e19294_ (gxc#current-compile-output-dir)))
                         (if _$e19294_
                             ((lambda (_outdir19297_)
                                (path-expand
                                 (_file-name19288_
                                  (symbol->string
                                   (##structure-ref
                                    _ctx19281_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                                 _outdir19297_))
                              _$e19294_)
                             (path-expand
                              (_file-name19288_
                               (_module-relative-path19285_ _ctx19281_))
                              (_module-source-directory19286_ _ctx19281_)))))))
                (let ((_path19291_ (_file-path19289_)))
                  (begin
                    (create-directory* (path-directory _path19291_))
                    _path19291_))))))))))
