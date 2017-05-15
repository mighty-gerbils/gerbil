(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#compile-timestamp
    (lambda () (inexact->exact (floor (time->seconds (current-time))))))
  (begin
    (define gxc#compile-file__opt-lambda19583
      (lambda (_srcpath19585_ _opts19586_)
        (begin
          (if (string? _srcpath19585_)
              '#!void
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath19585_))
          (let ((_outdir19588_ (pgetq 'output-dir: _opts19586_))
                (_invoke-gsc?19589_ (pgetq 'invoke-gsc: _opts19586_))
                (_gsc-options19590_ (pgetq 'gsc-options: _opts19586_))
                (_keep-scm?19591_ (pgetq 'keep-scm: _opts19586_))
                (_verbosity19592_ (pgetq 'verbose: _opts19586_))
                (_optimize19593_ (pgetq 'optimize: _opts19586_))
                (_gen-ssxi19594_ (pgetq 'generate-ssxi: _opts19586_)))
            (begin
              (if _outdir19588_ (create-directory* _outdir19588_) '#!void)
              (if _optimize19593_ (gxc#optimizer-info-init!) '#!void)
              (call-with-parameters
               (lambda ()
                 (begin
                   (gxc#verbose '"compile exe " _srcpath19585_)
                   (gxc#compile-top-module
                    (gx#import-module__0 _srcpath19585_))))
               gxc#current-compile-output-dir
               _outdir19588_
               gxc#current-compile-invoke-gsc
               _invoke-gsc?19589_
               gxc#current-compile-gsc-options
               _gsc-options19590_
               gxc#current-compile-keep-scm
               _keep-scm?19591_
               gxc#current-compile-verbose
               _verbosity19592_
               gxc#current-compile-optimize
               _optimize19593_
               gxc#current-compile-generate-ssxi
               _gen-ssxi19594_
               gxc#current-compile-timestamp
               (gxc#compile-timestamp)))))))
    (begin
      (define gxc#compile-file__0
        (lambda (_srcpath19600_)
          (let ((_opts19602_ '()))
            (gxc#compile-file__opt-lambda19583 _srcpath19600_ _opts19602_))))
      (define gxc#compile-file
        (lambda _g19610_
          (let ((_g19609_ (length _g19610_)))
            (cond ((fx= _g19609_ 1) (apply gxc#compile-file__0 _g19610_))
                  ((fx= _g19609_ 2)
                   (apply gxc#compile-file__opt-lambda19583 _g19610_))
                  (else (error "No clause matching arguments" _g19610_))))))))
  (begin
    (define gxc#compile-exe-stub__opt-lambda19562
      (lambda (_srcpath19564_ _opts19565_)
        (begin
          (if (string? _srcpath19564_)
              '#!void
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath19564_))
          (let ((_outdir19567_ (pgetq 'output-dir: _opts19565_))
                (_invoke-gsc?19568_ (pgetq 'invoke-gsc: _opts19565_))
                (_gsc-options19569_ (pgetq 'gsc-options: _opts19565_))
                (_keep-scm?19570_ (pgetq 'keep-scm: _opts19565_))
                (_verbosity19571_ (pgetq 'verbose: _opts19565_)))
            (begin
              (if _outdir19567_ (create-directory* _outdir19567_) '#!void)
              (call-with-parameters
               (lambda ()
                 (begin
                   (gxc#verbose '"compile " _srcpath19564_)
                   (gxc#compile-exe-stub-module
                    (gx#import-module__0 _srcpath19564_)
                    _opts19565_)))
               gxc#current-compile-output-dir
               _outdir19567_
               gxc#current-compile-invoke-gsc
               _invoke-gsc?19568_
               gxc#current-compile-gsc-options
               _gsc-options19569_
               gxc#current-compile-keep-scm
               _keep-scm?19570_
               gxc#current-compile-verbose
               _verbosity19571_
               gxc#current-compile-timestamp
               (gxc#compile-timestamp)))))))
    (begin
      (define gxc#compile-exe-stub__0
        (lambda (_srcpath19577_)
          (let ((_opts19579_ '()))
            (gxc#compile-exe-stub__opt-lambda19562
             _srcpath19577_
             _opts19579_))))
      (define gxc#compile-exe-stub
        (lambda _g19612_
          (let ((_g19611_ (length _g19612_)))
            (cond ((fx= _g19611_ 1) (apply gxc#compile-exe-stub__0 _g19612_))
                  ((fx= _g19611_ 2)
                   (apply gxc#compile-exe-stub__opt-lambda19562 _g19612_))
                  (else (error "No clause matching arguments" _g19612_))))))))
  (define gxc#compile-exe-stub-module
    (lambda (_ctx19456_ _opts19457_)
      (let ((_find-export-binding19459_
             (lambda (_id19513_ _exports19514_)
               (let ((_$e19560_
                      (find (lambda (_e1951519517_)
                              (let ((_g1951919529_ _e1951519517_))
                                (let ((_E1952219533_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _g1951919529_))))
                                  (let ((_else1952119537_ (lambda () '#f)))
                                    (let ((_K1952319541_ (lambda () '#t)))
                                      (if (direct-struct-instance?
                                           gx#module-export::t
                                           _g1951919529_)
                                          (let ((_e1952419544_
                                                 (##vector-ref
                                                  _g1951919529_
                                                  '1)))
                                            (let ((_e1952519547_
                                                   (##vector-ref
                                                    _g1951919529_
                                                    '2)))
                                              (let ((_e1952619550_
                                                     (##vector-ref
                                                      _g1951919529_
                                                      '3)))
                                                (if (##eq? _e1952619550_ '0)
                                                    (let ((_e1952719553_
                                                           (##vector-ref
                                                            _g1951919529_
                                                            '4)))
                                                      (if ((lambda (_g1955519557_)
                                                             (eq? _g1955519557_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id19513_))
                   _e1952719553_)
                  (_K1952319541_)
                  (_else1952119537_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_else1952119537_)))))
                                          (_else1952119537_)))))))
                            _exports19514_)))
                 (if _$e19560_
                     (gx#core-resolve-module-export _$e19560_)
                     '#f)))))
        (let ((_generate-stub19460_
               (lambda ()
                 (let ((_mod-str19501_
                        (symbol->string
                         (##structure-ref
                          _ctx19456_
                          '1
                          gx#expander-context::t
                          '#f))))
                   (let ((_mod-rt19503_
                          (string-append _mod-str19501_ '"__rt")))
                     (let ((_mod-main19510_
                            (let ((_$e19505_
                                   (_find-export-binding19459_
                                    'main
                                    (##structure-ref
                                     _ctx19456_
                                     '9
                                     gx#module-context::t
                                     '#f))))
                              (if _$e19505_
                                  ((lambda (_bind19508_)
                                     (begin
                                       (if (##structure-instance-of?
                                            _bind19508_
                                            'gx#runtime-binding::t)
                                           '#!void
                                           (gxc#raise-compile-error
                                            '"main is not a runtime binding"))
                                       (##structure-ref
                                        _bind19508_
                                        '1
                                        gx#binding::t
                                        '#f)))
                                   _$e19505_)
                                  (gxc#raise-compile-error
                                   '"module does not export main"
                                   (##structure-ref
                                    _ctx19456_
                                    '1
                                    gx#expander-context::t
                                    '#f))))))
                       (let ()
                         (begin
                           (write '(##namespace ("")))
                           (newline)
                           (write (cons '_gx#start!
                                        (cons _mod-rt19503_
                                              (cons (cons 'quote
                                                          (cons _mod-main19510_
                                                                '()))
                                                    '()))))
                           (newline)))))))))
          (let ((_compile-stub19461_
                 (lambda (_output-scm19488_ _output-bin19489_)
                   (let ((_init-stub19491_
                          (path-expand
                           '"lib/gx-init-exe.scm"
                           (getenv '"GERBIL_HOME"))))
                     (let ((_gsc-args19493_
                            (cons '"-exe"
                                  (cons '"-o"
                                        (cons _output-bin19489_
                                              (cons _init-stub19491_
                                                    (cons _output-scm19488_
                                                          '())))))))
                       (let ((_proc19495_
                              (open-process
                               (cons 'path:
                                     (cons '"gsc"
                                           (cons 'arguments:
                                                 (cons _gsc-args19493_
                                                       (cons 'stdout-redirection:
                                                             (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (let ((_status19497_ (process-status _proc19495_)))
                           (let ()
                             (if (zero? _status19497_)
                                 '#!void
                                 (gxc#raise-compile-error
                                  '"Compilation error; gsc exit with nonzero status"
                                  _output-scm19488_
                                  _output-bin19489_
                                  _status19497_))))))))))
            (let ((_output-bin19483_
                   (let ((_$e19463_ (pgetq 'output-file: _opts19457_)))
                     (if _$e19463_
                         (values _$e19463_)
                         (let ((_mod-str19466_
                                (symbol->string
                                 (##structure-ref
                                  _ctx19456_
                                  '1
                                  gx#expander-context::t
                                  '#f))))
                           (let ((_mod-name19473_
                                  (let ((_$e19468_
                                         (string-rindex _mod-str19466_ '#\/)))
                                    (if _$e19468_
                                        ((lambda (_ix19471_)
                                           (substring
                                            _mod-str19466_
                                            (fx+ _ix19471_ '1)
                                            (string-length _mod-str19466_)))
                                         _$e19468_)
                                        _mod-str19466_))))
                             (let ()
                               (let ((_$e19476_
                                      (gxc#current-compile-output-dir)))
                                 (if _$e19476_
                                     ((lambda (_g1947819480_)
                                        (path-expand
                                         _mod-name19473_
                                         _g1947819480_))
                                      _$e19476_)
                                     _mod-name19473_)))))))))
              (let ((_output-scm19485_
                     (string-append _output-bin19483_ '".scm")))
                (let ()
                  (begin
                    (with-output-to-file
                     _output-scm19485_
                     _generate-stub19460_)
                    (if (gxc#current-compile-invoke-gsc)
                        (_compile-stub19461_
                         _output-scm19485_
                         _output-bin19483_)
                        '#!void)
                    (if (gxc#current-compile-keep-scm)
                        '#!void
                        (delete-file _output-scm19485_)))))))))))
  (define gxc#compile-top-module
    (lambda (_ctx19453_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#verbose
            '"compile "
            (##structure-ref _ctx19453_ '1 gx#expander-context::t '#f))
           (if (gxc#current-compile-optimize)
               (gxc#optimize! _ctx19453_)
               '#!void)
           (gxc#collect-bindings _ctx19453_)
           (gxc#compile-runtime-code _ctx19453_)
           (gxc#compile-meta-code _ctx19453_)
           (if (if (gxc#current-compile-optimize)
                   (gxc#current-compile-generate-ssxi)
                   '#f)
               (gxc#compile-ssxi-code _ctx19453_)
               '#!void)))
       gx#current-expander-context
       _ctx19453_
       gx#current-expander-phi
       '0
       gx#current-expander-marks
       '()
       gxc#current-compile-symbol-table
       (let ((__obj19607 (make-object gxc#symbol-table::t '2)))
         (begin (gxc#symbol-table:::init! __obj19607) __obj19607))
       gxc#current-compile-runtime-sections
       (make-hash-table-eq))))
  (define gxc#collect-bindings
    (lambda (_ctx19451_)
      (gxc#apply-collect-bindings
       (##structure-ref _ctx19451_ '11 gx#module-context::t '#f))))
  (define gxc#compile-runtime-code
    (lambda (_ctx19418_)
      (let ((_generate-runtime-code19421_
             (lambda (_ctx19436_ _code19437_)
               (let ((_runtime-code19440_
                      (call-with-parameters
                       (lambda () (gxc#apply-generate-runtime _code19437_))
                       gx#current-expander-context
                       _ctx19436_)))
                 (gxc#compile-scm-file
                  (gxc#compile-output-file _ctx19436_ '0 '".scm")
                  _runtime-code19440_)))))
        (let ((_generate-loader-code19422_
               (lambda (_ctx19426_ _code19427_ _rt19428_)
                 (let ((_loader-code19431_
                        (call-with-parameters
                         (lambda () (gxc#apply-generate-loader _code19427_))
                         gx#current-expander-context
                         _ctx19426_)))
                   (let ((_loader-code19433_
                          (if _rt19428_
                              (cons 'begin
                                    (cons _loader-code19431_
                                          (cons (cons 'load-module
                                                      (cons _rt19428_ '()))
                                                '())))
                              _loader-code19431_)))
                     (let ()
                       (gxc#compile-scm-file
                        (gxc#compile-output-file _ctx19426_ 'rt '".scm")
                        _loader-code19433_)))))))
          (let ((_compile119420_
                 (lambda (_ctx19442_)
                   (let ((_code19444_
                          (##structure-ref
                           _ctx19442_
                           '11
                           gx#module-context::t
                           '#f)))
                     (let ((_rt19448_
                            (if (gxc#apply-find-runtime-code _code19444_)
                                (let ((_idstr19446_
                                       (symbol->string
                                        (##structure-ref
                                         _ctx19442_
                                         '1
                                         gx#expander-context::t
                                         '#f))))
                                  (string-append _idstr19446_ '"__0"))
                                '#f)))
                       (let ()
                         (begin
                           (if _rt19448_
                               (begin
                                 (table-set!
                                  (gxc#current-compile-runtime-sections)
                                  _ctx19442_
                                  _rt19448_)
                                 (_generate-runtime-code19421_
                                  _ctx19442_
                                  _code19444_))
                               '#!void)
                           (_generate-loader-code19422_
                            _ctx19442_
                            _code19444_
                            _rt19448_))))))))
            (let ((_all-modules19424_
                   (cons _ctx19418_ (gxc#lift-nested-modules _ctx19418_))))
              (for-each _compile119420_ _all-modules19424_)))))))
  (define gxc#compile-meta-code
    (lambda (_ctx19320_)
      (let ((_compile-ssi19322_
             (lambda (_code19388_)
               (let ((_path19390_
                      (gxc#compile-output-file _ctx19320_ '#f '".ssi")))
                 (let ((_prelude19401_
                        (let ((_super19392_
                               (##structure-ref
                                _ctx19320_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (let ((_$e19394_
                                 (##structure-ref
                                  _super19392_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (if _$e19394_
                                ((lambda (_g1939619398_)
                                   (make-symbol '":" _g1939619398_))
                                 _$e19394_)
                                ':<root>)))))
                   (let ((_ns19403_
                          (##structure-ref
                           _ctx19320_
                           '6
                           gx#module-context::t
                           '#f)))
                     (let ((_idstr19405_
                            (symbol->string
                             (##structure-ref
                              _ctx19320_
                              '1
                              gx#expander-context::t
                              '#f))))
                       (let ((_pkg19412_
                              (let ((_$e19407_
                                     (string-rindex _idstr19405_ '#\/)))
                                (if _$e19407_
                                    ((lambda (_x19410_)
                                       (string->symbol
                                        (substring _idstr19405_ '0 _x19410_)))
                                     _$e19407_)
                                    '#f))))
                         (let ((_rt19414_
                                (table-ref
                                 (gxc#current-compile-runtime-sections)
                                 _ctx19320_
                                 '#f)))
                           (let ()
                             (begin
                               (gxc#verbose '"compile " _path19390_)
                               (with-output-to-file
                                (cons 'path:
                                      (cons _path19390_
                                            (cons 'permissions:
                                                  (cons '420 '()))))
                                (lambda ()
                                  (begin
                                    (displayln '"prelude:" '" " _prelude19401_)
                                    (if _pkg19412_
                                        (displayln '"package:" '" " _pkg19412_)
                                        '#!void)
                                    (displayln '"namespace:" '" " _ns19403_)
                                    (newline)
                                    (pretty-print _code19388_)
                                    (if _rt19414_
                                        (pretty-print
                                         (cons '%#call
                                               (cons (cons '%#ref
                                                           (cons '_gx#load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _rt19414_ '()))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '#!void)))))))))))))))
        (let ((_compile-phi19323_
               (lambda (_part19328_)
                 (let ((_part1932919342_ _part19328_))
                   (let ((_E1933119346_
                          (lambda ()
                            (error '"No clause matching" _part1932919342_))))
                     (let ((_K1933219357_
                            (lambda (_code19349_
                                     _n19350_
                                     _phi19351_
                                     _phi-ctx19352_)
                              (let ((_code19355_
                                     (call-with-parameters
                                      (lambda ()
                                        (gxc#generate-runtime-phi _code19349_))
                                      gx#current-expander-context
                                      _phi-ctx19352_
                                      gx#current-expander-phi
                                      _phi19351_)))
                                (gxc#compile-scm-file
                                 (gxc#compile-output-file
                                  _ctx19320_
                                  _n19350_
                                  '".scm")
                                 _code19355_)))))
                       (if (##pair? _part1932919342_)
                           (let ((_hd1933319360_ (##car _part1932919342_))
                                 (_tl1933419362_ (##cdr _part1932919342_)))
                             (let ((_phi-ctx19365_ _hd1933319360_))
                               (if (##pair? _tl1933419362_)
                                   (let ((_hd1933519367_
                                          (##car _tl1933419362_))
                                         (_tl1933619369_
                                          (##cdr _tl1933419362_)))
                                     (let ((_phi19372_ _hd1933519367_))
                                       (if (##pair? _tl1933619369_)
                                           (let ((_hd1933719374_
                                                  (##car _tl1933619369_))
                                                 (_tl1933819376_
                                                  (##cdr _tl1933619369_)))
                                             (let ((_n19379_ _hd1933719374_))
                                               (if (##pair? _tl1933819376_)
                                                   (let ((_hd1933919381_
                                                          (##car _tl1933819376_))
                                                         (_tl1934019383_
                                                          (##cdr _tl1933819376_)))
                                                     (let ((_code19386_
                                                            _hd1933919381_))
                                                       (if (##null? _tl1934019383_)
                                                           (_K1933219357_
                                                            _code19386_
                                                            _n19379_
                                                            _phi19372_
                                                            _phi-ctx19365_)
                                                           (_E1933119346_))))
                                                   (_E1933119346_))))
                                           (_E1933119346_))))
                                   (_E1933119346_))))
                           (_E1933119346_))))))))
          (let ((_g19613_ (gxc#generate-meta-code _ctx19320_)))
            (begin
              (let ((_g19614_ (values-count _g19613_)))
                (if (not (fx= _g19614_ 2))
                    (error "Context expects 2 values" _g19614_)))
              (let ((_ssi-code19325_ (values-ref _g19613_ 0))
                    (_phi-code19326_ (values-ref _g19613_ 1)))
                (begin
                  (_compile-ssi19322_ _ssi-code19325_)
                  (for-each _compile-phi19323_ _phi-code19326_)))))))))
  (define gxc#compile-ssxi-code
    (lambda (_ctx19303_)
      (let ((_path19305_ (gxc#compile-output-file _ctx19303_ '#f '".ssxi.ss")))
        (let ((_code19307_
               (gxc#apply-generate-ssxi
                (##structure-ref _ctx19303_ '11 gx#module-context::t '#f))))
          (let ((_idstr19309_
                 (symbol->string
                  (##structure-ref _ctx19303_ '1 gx#expander-context::t '#f))))
            (let ((_pkg19316_
                   (let ((_$e19311_ (string-rindex _idstr19309_ '#\/)))
                     (if _$e19311_
                         ((lambda (_x19314_)
                            (string->symbol
                             (substring _idstr19309_ '0 _x19314_)))
                          _$e19311_)
                         '#f))))
              (let ()
                (begin
                  (gxc#verbose '"compile " _path19305_)
                  (with-output-to-file
                   (cons 'path:
                         (cons _path19305_
                               (cons 'permissions: (cons '420 '()))))
                   (lambda ()
                     (begin
                       (displayln '"prelude: :gerbil/compiler/ssxi")
                       (if _pkg19316_
                           (displayln '"package: " _pkg19316_)
                           '#!void)
                       (newline)
                       (pretty-print _code19307_))))))))))))
  (define gxc#generate-meta-code
    (lambda (_ctx19296_)
      (let ((_state19298_
             (let ((__obj19608 (make-object gxc#meta-state::t '4)))
               (begin
                 (gxc#meta-state:::init! __obj19608 _ctx19296_)
                 __obj19608))))
        (let ((_ssi-code19300_
               (gxc#apply-generate-meta
                (##structure-ref _ctx19296_ '11 gx#module-context::t '#f)
                _state19298_)))
          (let ()
            (values _ssi-code19300_ (gxc#meta-state-end! _state19298_)))))))
  (define gxc#generate-runtime-phi
    (lambda (_stx19289_)
      (let ((_lifts19291_ (box '())))
        (call-with-parameters
         (lambda ()
           (let ((_code19294_ (gxc#apply-generate-runtime-phi _stx19289_)))
             (if (null? (unbox _lifts19291_))
                 _code19294_
                 (cons 'begin
                       (foldr1 cons
                               (cons _code19294_ '())
                               (reverse (unbox _lifts19291_)))))))
         gxc#current-compile-lift
         _lifts19291_))))
  (define gxc#lift-nested-modules
    (lambda (_ctx19285_)
      (let ((_modules19287_ (box '())))
        (begin
          (gxc#apply-lift-modules
           (##structure-ref _ctx19285_ '11 gx#module-context::t '#f)
           _modules19287_)
          (reverse (unbox _modules19287_))))))
  (define gxc#compile-scm-file
    (lambda (_path19281_ _code19282_)
      (begin
        (gxc#verbose '"compile " _path19281_)
        (with-output-to-file
         (cons 'path: (cons _path19281_ (cons 'permissions: (cons '420 '()))))
         (lambda ()
           (begin
             (pretty-print
              '(declare (block) (standard-bindings) (extended-bindings)))
             (pretty-print _code19282_))))
        (if (gxc#current-compile-invoke-gsc)
            (begin
              (gxc#gsc-compile-file _path19281_)
              (if (gxc#current-compile-keep-scm)
                  '#!void
                  (delete-file _path19281_)))
            '#!void))))
  (define gxc#gsc-compile-file
    (lambda (_path19267_)
      (let ((_gsc-args19274_
             (let ((_$e19269_ (gxc#current-compile-gsc-options)))
               (if _$e19269_
                   ((lambda (_opts19272_)
                      (foldr1 cons (cons _path19267_ '()) _opts19272_))
                    _$e19269_)
                   (cons _path19267_ '())))))
        (let ((_proc19276_
               (open-process
                (cons 'path:
                      (cons '"gsc"
                            (cons 'arguments:
                                  (cons _gsc-args19274_
                                        (cons 'stdout-redirection:
                                              (cons '#f '())))))))))
          (let ((_status19278_ (process-status _proc19276_)))
            (let ()
              (if (zero? _status19278_)
                  '#!void
                  (gxc#raise-compile-error
                   '"Compilation error; gsc exit with nonzero status"
                   _path19267_
                   _status19278_))))))))
  (define gxc#compile-output-file
    (lambda (_ctx19239_ _n19240_ _ext19241_)
      (let ((_module-relative-path19243_
             (lambda (_ctx19265_)
               (path-strip-directory
                (symbol->string
                 (##structure-ref
                  _ctx19265_
                  '1
                  gx#expander-context::t
                  '#f))))))
        (let ((_module-source-directory19244_
               (lambda (_ctx19261_)
                 (path-directory
                  (let ((_mpath19263_
                         (##structure-ref
                          _ctx19261_
                          '7
                          gx#module-context::t
                          '#f)))
                    (if (string? _mpath19263_)
                        _mpath19263_
                        (last _mpath19263_)))))))
          (let ((_section-string19245_
                 (lambda (_n19259_)
                   (if (number? _n19259_)
                       (number->string _n19259_)
                       (if (symbol? _n19259_)
                           (symbol->string _n19259_)
                           (if (string? _n19259_)
                               _n19259_
                               (gxc#raise-compile-error
                                '"Unexpected section"
                                _n19259_)))))))
            (let ((_file-name19246_
                   (lambda (_path19257_)
                     (if _n19240_
                         (string-append
                          _path19257_
                          '"__"
                          (_section-string19245_ _n19240_)
                          _ext19241_)
                         (string-append _path19257_ _ext19241_)))))
              (let ((_file-path19247_
                     (lambda ()
                       (let ((_$e19252_ (gxc#current-compile-output-dir)))
                         (if _$e19252_
                             ((lambda (_outdir19255_)
                                (path-expand
                                 (_file-name19246_
                                  (symbol->string
                                   (##structure-ref
                                    _ctx19239_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                                 _outdir19255_))
                              _$e19252_)
                             (path-expand
                              (_file-name19246_
                               (_module-relative-path19243_ _ctx19239_))
                              (_module-source-directory19244_ _ctx19239_)))))))
                (let ((_path19249_ (_file-path19247_)))
                  (begin
                    (create-directory* (path-directory _path19249_))
                    _path19249_))))))))))
