(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#compile-timestamp
    (lambda () (inexact->exact (floor (time->seconds (current-time))))))
  (begin
    (define gxc#compile-file__%
      (lambda (_srcpath28372_ _opts28373_)
        (begin
          (if (string? _srcpath28372_)
              '#!void
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath28372_))
          (let ((_outdir28375_ (pgetq 'output-dir: _opts28373_))
                (_invoke-gsc?28376_ (pgetq 'invoke-gsc: _opts28373_))
                (_gsc-options28377_ (pgetq 'gsc-options: _opts28373_))
                (_keep-scm?28378_ (pgetq 'keep-scm: _opts28373_))
                (_verbosity28379_ (pgetq 'verbose: _opts28373_))
                (_optimize28380_ (pgetq 'optimize: _opts28373_))
                (_debug28381_ (pgetq 'debug: _opts28373_))
                (_gen-ssxi28382_ (pgetq 'generate-ssxi: _opts28373_))
                (_static28383_ (pgetq 'static: _opts28373_)))
            (begin
              (if _outdir28375_ (create-directory* _outdir28375_) '#!void)
              (if _optimize28380_ (gxc#optimizer-info-init!) '#!void)
              (call-with-parameters
               (lambda ()
                 (begin
                   (gxc#verbose '"compile " _srcpath28372_)
                   (gxc#compile-top-module
                    (gx#import-module__0 _srcpath28372_))))
               gxc#current-compile-output-dir
               _outdir28375_
               gxc#current-compile-invoke-gsc
               _invoke-gsc?28376_
               gxc#current-compile-gsc-options
               _gsc-options28377_
               gxc#current-compile-keep-scm
               _keep-scm?28378_
               gxc#current-compile-verbose
               _verbosity28379_
               gxc#current-compile-optimize
               _optimize28380_
               gxc#current-compile-debug
               _debug28381_
               gxc#current-compile-generate-ssxi
               _gen-ssxi28382_
               gxc#current-compile-static
               _static28383_
               gxc#current-compile-timestamp
               (gxc#compile-timestamp)))))))
    (begin
      (define gxc#compile-file__0
        (lambda (_srcpath28389_)
          (let ((_opts28391_ '()))
            (gxc#compile-file__% _srcpath28389_ _opts28391_))))
      (define gxc#compile-file
        (lambda _g28399_
          (let ((_g28398_ (length _g28399_)))
            (cond ((fx= _g28398_ 1) (apply gxc#compile-file__0 _g28399_))
                  ((fx= _g28398_ 2) (apply gxc#compile-file__% _g28399_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-file
                    _g28399_))))))))
  (begin
    (define gxc#compile-exe-stub__%
      (lambda (_srcpath28358_ _opts28359_)
        (gxc#do-compile-exe
         _srcpath28358_
         _opts28359_
         gxc#compile-exe-stub-module)))
    (begin
      (define gxc#compile-exe-stub__0
        (lambda (_srcpath28364_)
          (let ((_opts28366_ '()))
            (gxc#compile-exe-stub__% _srcpath28364_ _opts28366_))))
      (define gxc#compile-exe-stub
        (lambda _g28401_
          (let ((_g28400_ (length _g28401_)))
            (cond ((fx= _g28400_ 1) (apply gxc#compile-exe-stub__0 _g28401_))
                  ((fx= _g28400_ 2) (apply gxc#compile-exe-stub__% _g28401_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-exe-stub
                    _g28401_))))))))
  (begin
    (define gxc#compile-static-exe__%
      (lambda (_srcpath28344_ _opts28345_)
        (gxc#do-compile-exe
         _srcpath28344_
         _opts28345_
         gxc#compile-exe-static-module)))
    (begin
      (define gxc#compile-static-exe__0
        (lambda (_srcpath28350_)
          (let ((_opts28352_ '()))
            (gxc#compile-static-exe__% _srcpath28350_ _opts28352_))))
      (define gxc#compile-static-exe
        (lambda _g28403_
          (let ((_g28402_ (length _g28403_)))
            (cond ((fx= _g28402_ 1) (apply gxc#compile-static-exe__0 _g28403_))
                  ((fx= _g28402_ 2) (apply gxc#compile-static-exe__% _g28403_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-static-exe
                    _g28403_))))))))
  (define gxc#do-compile-exe
    (lambda (_srcpath28332_ _opts28333_ _compile-e28334_)
      (begin
        (if (string? _srcpath28332_)
            '#!void
            (gxc#raise-compile-error
             '"Invalid module source path"
             _srcpath28332_))
        (let ((_outdir28336_ (pgetq 'output-dir: _opts28333_))
              (_invoke-gsc?28337_ (pgetq 'invoke-gsc: _opts28333_))
              (_gsc-options28338_ (pgetq 'gsc-options: _opts28333_))
              (_keep-scm?28339_ (pgetq 'keep-scm: _opts28333_))
              (_verbosity28340_ (pgetq 'verbose: _opts28333_)))
          (begin
            (if _outdir28336_ (create-directory* _outdir28336_) '#!void)
            (call-with-parameters
             (lambda ()
               (begin
                 (gxc#verbose '"compile exe " _srcpath28332_)
                 (_compile-e28334_
                  (gx#import-module__0 _srcpath28332_)
                  _opts28333_)))
             gxc#current-compile-output-dir
             _outdir28336_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?28337_
             gxc#current-compile-gsc-options
             _gsc-options28338_
             gxc#current-compile-keep-scm
             _keep-scm?28339_
             gxc#current-compile-verbose
             _verbosity28340_
             gxc#current-compile-timestamp
             (gxc#compile-timestamp)))))))
  (define gxc#compile-exe-stub-module
    (lambda (_ctx28298_ _opts28299_)
      (letrec ((_generate-stub28301_
                (lambda (_gx-init-stub28323_)
                  (let* ((_mod-str28325_
                          (symbol->string
                           (##structure-ref
                            _ctx28298_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_mod-rt28327_ (string-append _mod-str28325_ '"__rt"))
                         (_mod-main28329_
                          (gxc#find-runtime-symbol _ctx28298_ 'main)))
                    (begin
                      (write '(##namespace ("")))
                      (newline)
                      (write (cons 'include (cons _gx-init-stub28323_ '())))
                      (newline)
                      (write (cons '_gx#start!
                                   (cons _mod-rt28327_
                                         (cons (cons 'quote
                                                     (cons _mod-main28329_
                                                           '()))
                                               '()))))
                      (newline)))))
               (_compile-stub28302_
                (lambda (_output-scm28309_ _output-bin28310_)
                  (let* ((_init-stub28312_
                          (path-expand
                           '"lib/gx-init-exe.scm"
                           (getenv '"GERBIL_HOME")))
                         (_gsc-args28314_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin28310_
                                            (cons _output-scm28309_ '()))))))
                    (begin
                      (with-output-to-file
                       _output-scm28309_
                       (lambda () (_generate-stub28301_ _init-stub28312_)))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (gxc#verbose
                             '"invoke gsc "
                             (cons 'gsc _gsc-args28314_))
                            (let* ((_proc28318_
                                    (open-process
                                     (cons 'path:
                                           (cons '"gsc"
                                                 (cons 'arguments:
                                                       (cons _gsc-args28314_
                                                             (cons 'stdout-redirection:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_status28320_
                                    (process-status _proc28318_)))
                              (if (zero? _status28320_)
                                  '#!void
                                  (gxc#raise-compile-error
                                   '"Compilation error; gsc exit with nonzero status"
                                   _output-scm28309_
                                   _output-bin28310_
                                   _status28320_))))
                          '#!void))))))
        (let* ((_output-bin28304_
                (gxc#compile-exe-output-file _ctx28298_ _opts28299_))
               (_output-scm28306_ (string-append _output-bin28304_ '".scm")))
          (begin
            (_compile-stub28302_ _output-scm28306_ _output-bin28304_)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm28306_)))))))
  (define gxc#compile-exe-static-module
    (lambda (_ctx28157_ _opts28158_)
      (letrec ((_reset-declare28160_
                (lambda ()
                  '(declare
                     (gambit-scheme)
                     (block)
                     (core)
                     (inline)
                     (inline-primitives)
                     (inlining-limit 350)
                     (constant-fold)
                     (lambda-lift)
                     (standard-bindings)
                     (extended-bindings)
                     (run-time-bindings)
                     (safe)
                     (interrupts-enabled)
                     (proper-tail-calls)
                     (not generative-lambda)
                     (optimize-dead-local-variables)
                     (optimize-dead-definitions)
                     (generic)
                     (mostly-fixnum-flonum))))
               (_user-declare28161_
                (lambda ()
                  (let* ((_gsc-opts28239_ (pgetq 'gsc-options: _opts28158_))
                         (_gsc-prelude28241_
                          (if _gsc-opts28239_
                              (member '"-prelude" _gsc-opts28239_)
                              '#f))
                         (_gsc-prelude28243_
                          (if _gsc-prelude28241_
                              (read (open-input-string
                                     (cadr _gsc-prelude28241_)))
                              '#f)))
                    (let _lift28246_ ((_expr28248_ _gsc-prelude28243_))
                      (let* ((_expr2824928261_ _expr28248_)
                             (_E2825328265_
                              (lambda ()
                                (error '"No clause matching"
                                       _expr2824928261_)))
                             (_else2825228269_ (lambda () '#f))
                             (_try-match2825128285_
                              (lambda ()
                                (let ((_K2825428275_
                                       (lambda (_exprs28273_)
                                         (ormap1 _lift28246_ _exprs28273_))))
                                  (if (##pair? _expr2824928261_)
                                      (let ((_hd2825528278_
                                             (##car _expr2824928261_))
                                            (_tl2825628280_
                                             (##cdr _expr2824928261_)))
                                        (if (##eq? _hd2825528278_ 'begin)
                                            (let ((_exprs28283_
                                                   _tl2825628280_))
                                              (_K2825428275_ _exprs28283_))
                                            (_else2825228269_)))
                                      (_else2825228269_)))))
                             (_K2825728289_ (lambda () _expr28248_)))
                        (if (##pair? _expr2824928261_)
                            (let ((_hd2825828292_ (##car _expr2824928261_))
                                  (_tl2825928294_ (##cdr _expr2824928261_)))
                              (if (##eq? _hd2825828292_ 'declare)
                                  (_K2825728289_)
                                  (_try-match2825128285_)))
                            (_try-match2825128285_)))))))
               (_generate-stub28162_
                (lambda (_deps28230_)
                  (let ((_mod-main28232_
                         (gxc#find-runtime-symbol _ctx28157_ 'main))
                        (_reset-decl28233_ (_reset-declare28160_))
                        (_user-decl28234_ (_user-declare28161_)))
                    (begin
                      (write '(##namespace ("")))
                      (newline)
                      (write '(declare (optimize-dead-definitions)))
                      (newline)
                      (for-each
                       (lambda (_dep28236_)
                         (begin
                           (write (cons 'include (cons _dep28236_ '())))
                           (newline)
                           (write '(##namespace ("")))
                           (write _reset-decl28233_)
                           (if _user-decl28234_
                               (write _user-decl28234_)
                               '#!void)
                           (newline)))
                       _deps28230_)
                      (write (cons 'apply
                                   (cons _mod-main28232_
                                         (cons (cons 'cdr
                                                     (cons (cons 'command-line
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                      (newline)))))
               (_static-include28163_
                (lambda (_gsc-opts28213_ _home28214_)
                  (letrec* ((_static-dir28216_
                             (path-expand '"lib/static" _home28214_))
                            (_user-static-dir28217_
                             (path-expand
                              '"lib/static"
                              (getenv '"GERBIL_PATH" '"~/.gerbil")))
                            (_cppflags28218_
                             (string-append
                              '"-I "
                              _static-dir28216_
                              '" -I "
                              _user-static-dir28217_)))
                    (let ((_$e28220_ (member '"-cc-options" _gsc-opts28213_)))
                      (if _$e28220_
                          ((lambda (_rest28223_)
                             (let* ((_cell28225_ (cdr _rest28223_))
                                    (_opt28227_ (car _cell28225_)))
                               (begin
                                 (set-car!
                                  _cell28225_
                                  (string-append
                                   _opt28227_
                                   '" "
                                   _cppflags28218_))
                                 _gsc-opts28213_)))
                           _$e28220_)
                          (cons '"-cc-options"
                                (cons _cppflags28218_ _gsc-opts28213_)))))))
               (_compile-stub28164_
                (lambda (_output-scm28171_ _output-bin28172_)
                  (let* ((_gerbil-home28174_ (getenv '"GERBIL_HOME"))
                         (_gx-gambc028176_
                          (path-expand
                           '"lib/static/gx-gambc0.scm"
                           _gerbil-home28174_))
                         (_gx-gambc-init28178_
                          (path-expand
                           '"lib/gx-init-static-exe.scm"
                           _gerbil-home28174_))
                         (_gx-gambc-macros28180_
                          (path-expand
                           '"lib/static/gx-gambc#.scm"
                           _gerbil-home28174_))
                         (_include-gx-gambc-macros28182_
                          (string-append
                           '"(include \""
                           _gx-gambc-macros28180_
                           '"\")"))
                         (_bin-scm28184_
                          (gxc#find-static-module-file _ctx28157_))
                         (_deps28186_
                          (gxc#find-runtime-module-deps _ctx28157_))
                         (_deps28188_
                          (map gxc#find-static-module-file _deps28186_))
                         (_deps28193_
                          (filter (lambda (_$obj28190_)
                                    (not (gxc#file-empty? _$obj28190_)))
                                  _deps28188_))
                         (_gsc-opts28198_
                          (let ((_$e28195_ (pgetq 'gsc-options: _opts28158_)))
                            (if _$e28195_ _$e28195_ '())))
                         (_gsc-opts28200_
                          (_static-include28163_
                           _gsc-opts28198_
                           _gerbil-home28174_))
                         (_gsc-gx-macros28202_
                          (if (gerbil-runtime-smp?)
                              (cons '"-e"
                                    (cons '"(define-cond-expand-feature|enable-smp|)"
                                          (cons '"-e"
                                                (cons _include-gx-gambc-macros28182_
                                                      '()))))
                              (cons '"-e"
                                    (cons _include-gx-gambc-macros28182_
                                          '()))))
                         (_gsc-args28204_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin28172_
                                            (foldr1 cons
                                                    (foldr1 cons
                                                            (foldr1 cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _output-scm28171_ '())
                            _gsc-gx-macros28202_)
                    _gsc-opts28200_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gxc#gsc-debug-options)))))))
                    (begin
                      (with-output-to-file
                       _output-scm28171_
                       (lambda ()
                         (_generate-stub28162_
                          (cons _gx-gambc028176_
                                (cons _gx-gambc-init28178_
                                      (foldr1 cons
                                              (cons _bin-scm28184_ '())
                                              _deps28193_))))))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (gxc#verbose
                             '"invoke gsc "
                             (cons 'gsc _gsc-args28204_))
                            (let* ((_proc28208_
                                    (open-process
                                     (cons 'path:
                                           (cons '"gsc"
                                                 (cons 'arguments:
                                                       (cons _gsc-args28204_
                                                             (cons 'stdout-redirection:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_status28210_
                                    (process-status _proc28208_)))
                              (if (zero? _status28210_)
                                  '#!void
                                  (gxc#raise-compile-error
                                   '"Compilation error; gsc exit with nonzero status"
                                   _output-scm28171_
                                   _output-bin28172_
                                   _status28210_))))
                          '#!void))))))
        (let* ((_output-bin28166_
                (gxc#compile-exe-output-file _ctx28157_ _opts28158_))
               (_output-scm28168_ (string-append _output-bin28166_ '".scm")))
          (begin
            (_compile-stub28164_ _output-scm28168_ _output-bin28166_)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm28168_)))))))
  (define gxc#find-export-binding
    (lambda (_ctx28107_ _id28108_)
      (let ((_$e28154_
             (find (lambda (_e2810928111_)
                     (let* ((_g2811328123_ _e2810928111_)
                            (_E2811628127_
                             (lambda ()
                               (error '"No clause matching" _g2811328123_)))
                            (_else2811528131_ (lambda () '#f))
                            (_K2811728135_ (lambda () '#t)))
                       (if (##structure-direct-instance-of?
                            _g2811328123_
                            (##type-id gx#module-export::t))
                           (let* ((_e2811828138_
                                   (##vector-ref _g2811328123_ '1))
                                  (_e2811928141_
                                   (##vector-ref _g2811328123_ '2))
                                  (_e2812028144_
                                   (##vector-ref _g2811328123_ '3)))
                             (if (##eq? _e2812028144_ '0)
                                 (let ((_e2812128147_
                                        (##vector-ref _g2811328123_ '4)))
                                   (if ((lambda (_g2814928151_)
                                          (eq? _g2814928151_ _id28108_))
                                        _e2812128147_)
                                       (_K2811728135_)
                                       (_else2811528131_)))
                                 (_else2811528131_)))
                           (_else2811528131_))))
                   (##structure-ref _ctx28107_ '9 gx#module-context::t '#f))))
        (if _$e28154_ (gx#core-resolve-module-export _$e28154_) '#f))))
  (define gxc#find-runtime-symbol
    (lambda (_ctx28099_ _id28100_)
      (let ((_$e28102_ (gxc#find-export-binding _ctx28099_ _id28100_)))
        (if _$e28102_
            ((lambda (_bind28105_)
               (begin
                 (if (##structure-instance-of?
                      _bind28105_
                      'gx#runtime-binding::t)
                     '#!void
                     (gxc#raise-compile-error
                      '"export is not a runtime binding"
                      _id28100_))
                 (##structure-ref _bind28105_ '1 gx#binding::t '#f)))
             _$e28102_)
            (gxc#raise-compile-error
             '"module does not export symbol"
             (##structure-ref _ctx28099_ '1 gx#expander-context::t '#f)
             _id28100_)))))
  (define gxc#find-runtime-module-deps
    (lambda (_ctx27986_)
      (letrec* ((_ht27988_ (make-hash-table-eq))
                (_import-set-template27989_
                 (lambda (_in28051_ _phi28052_)
                   (let ((_iphi28054_
                          (fx+ _phi28052_
                               (##direct-structure-ref
                                _in28051_
                                '2
                                gx#import-set::t
                                '#f)))
                         (_imports28055_
                          (##structure-ref
                           (##direct-structure-ref
                            _in28051_
                            '1
                            gx#import-set::t
                            '#f)
                           '8
                           gx#module-context::t
                           '#f)))
                     (let _lp28057_ ((_rest28059_ _imports28055_)
                                     (_r28060_ '()))
                       (let* ((_rest2806128069_ _rest28059_)
                              (_E2806428073_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest2806128069_)))
                              (_else2806328077_ (lambda () _r28060_))
                              (_K2806528087_
                               (lambda (_rest28080_ _in28081_)
                                 (if (##structure-instance-of?
                                      _in28081_
                                      'gx#module-context::t)
                                     (if (fxzero? _iphi28054_)
                                         (_lp28057_
                                          _rest28080_
                                          (cons _in28081_ _r28060_))
                                         (_lp28057_ _rest28080_ _r28060_))
                                     (if (##structure-direct-instance-of?
                                          _in28081_
                                          'gx#module-import::t)
                                         (let ((_iphi28083_
                                                (fx+ _phi28052_
                                                     (##direct-structure-ref
                                                      _in28081_
                                                      '3
                                                      gx#module-import::t
                                                      '#f))))
                                           (if (fxzero? _iphi28083_)
                                               (_lp28057_
                                                _rest28080_
                                                (cons (##direct-structure-ref
                                                       (##direct-structure-ref
                                                        _in28081_
                                                        '1
                                                        gx#module-import::t
                                                        '#f)
                                                       '1
                                                       gx#module-export::t
                                                       '#f)
                                                      _r28060_))
                                               (_lp28057_
                                                _rest28080_
                                                _r28060_)))
                                         (if (##structure-direct-instance-of?
                                              _in28081_
                                              'gx#import-set::t)
                                             (let ((_xphi28085_
                                                    (fx+ _iphi28054_
                                                         (##direct-structure-ref
                                                          _in28081_
                                                          '2
                                                          gx#import-set::t
                                                          '#f))))
                                               (if (fxzero? _xphi28085_)
                                                   (_lp28057_
                                                    _rest28080_
                                                    (cons (##direct-structure-ref
                                                           _in28081_
                                                           '1
                                                           gx#import-set::t
                                                           '#f)
                                                          _r28060_))
                                                   (if (fxpositive?
                                                        _xphi28085_)
                                                       (_lp28057_
                                                        _rest28080_
                                                        (foldl1 cons
                                                                _r28060_
                                                                (_import-set-template27989_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in28081_
                         _iphi28054_)))
               (_lp28057_ _rest28080_ _r28060_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_lp28057_
                                              _rest28080_
                                              _r28060_)))))))
                         (if (##pair? _rest2806128069_)
                             (let ((_hd2806628090_ (##car _rest2806128069_))
                                   (_tl2806728092_ (##cdr _rest2806128069_)))
                               (let* ((_in28095_ _hd2806628090_)
                                      (_rest28097_ _tl2806728092_))
                                 (_K2806528087_ _rest28097_ _in28095_)))
                             (_else2806328077_)))))))
                (_find-deps27990_
                 (lambda (_rest27997_ _deps27998_)
                   (let* ((_rest2799928007_ _rest27997_)
                          (_E2800228011_
                           (lambda ()
                             (error '"No clause matching" _rest2799928007_)))
                          (_else2800128015_ (lambda () _deps27998_))
                          (_K2800328039_
                           (lambda (_rest28018_ _hd28019_)
                             (if (##structure-instance-of?
                                  _hd28019_
                                  'gx#module-context::t)
                                 (let ((_id28021_
                                        (##structure-ref
                                         _hd28019_
                                         '1
                                         gx#expander-context::t
                                         '#f))
                                       (_imports28022_
                                        (##structure-ref
                                         _hd28019_
                                         '8
                                         gx#module-context::t
                                         '#f)))
                                   (if (table-ref _ht27988_ _id28021_ '#f)
                                       (_find-deps27990_
                                        _rest28018_
                                        _deps27998_)
                                       (let ((_$e28024_
                                              (gx#core-context-prelude__%
                                               _hd28019_)))
                                         (if _$e28024_
                                             ((lambda (_pre28027_)
                                                (let ((_xdeps28029_
                                                       (_find-deps27990_
                                                        (cons _pre28027_
                                                              _imports28022_)
                                                        _deps27998_)))
                                                  (begin
                                                    (table-set!
                                                     _ht27988_
                                                     _id28021_
                                                     _hd28019_)
                                                    (_find-deps27990_
                                                     _rest28018_
                                                     (cons _hd28019_
                                                           _xdeps28029_)))))
                                              _$e28024_)
                                             (let ((_xdeps28031_
                                                    (_find-deps27990_
                                                     _imports28022_
                                                     _deps27998_)))
                                               (begin
                                                 (table-set!
                                                  _ht27988_
                                                  _id28021_
                                                  _hd28019_)
                                                 (_find-deps27990_
                                                  _rest28018_
                                                  (cons _hd28019_
                                                        _xdeps28031_))))))))
                                 (if (##structure-instance-of?
                                      _hd28019_
                                      'gx#prelude-context::t)
                                     (let ((_id28033_
                                            (##structure-ref
                                             _hd28019_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (if (table-ref _ht27988_ _id28033_ '#f)
                                           (_find-deps27990_
                                            _rest28018_
                                            _deps27998_)
                                           (let ((_xdeps28035_
                                                  (_find-deps27990_
                                                   (##structure-ref
                                                    _hd28019_
                                                    '7
                                                    gx#prelude-context::t
                                                    '#f)
                                                   _deps27998_)))
                                             (if (table-ref
                                                  _ht27988_
                                                  _id28033_
                                                  '#f)
                                                 (_find-deps27990_
                                                  _rest28018_
                                                  _xdeps28035_)
                                                 (begin
                                                   (table-set!
                                                    _ht27988_
                                                    _id28033_
                                                    _hd28019_)
                                                   (_find-deps27990_
                                                    _rest28018_
                                                    (cons _hd28019_
                                                          _xdeps28035_)))))))
                                     (if (##structure-direct-instance-of?
                                          _hd28019_
                                          'gx#module-import::t)
                                         (if (fxzero? (##direct-structure-ref
                                                       _hd28019_
                                                       '3
                                                       gx#module-import::t
                                                       '#f))
                                             (_find-deps27990_
                                              (cons (##direct-structure-ref
                                                     _hd28019_
                                                     '1
                                                     gx#module-import::t
                                                     '#f)
                                                    _rest28018_)
                                              _deps27998_)
                                             (_find-deps27990_
                                              _rest28018_
                                              _deps27998_))
                                         (if (##structure-direct-instance-of?
                                              _hd28019_
                                              'gx#module-export::t)
                                             (_find-deps27990_
                                              (cons (##direct-structure-ref
                                                     _hd28019_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)
                                                    _rest28018_)
                                              _deps27998_)
                                             (if (##structure-direct-instance-of?
                                                  _hd28019_
                                                  'gx#import-set::t)
                                                 (if (fxzero? (##direct-structure-ref
                                                               _hd28019_
                                                               '2
                                                               gx#import-set::t
                                                               '#f))
                                                     (_find-deps27990_
                                                      (cons (##direct-structure-ref
                                                             _hd28019_
                                                             '1
                                                             gx#import-set::t
                                                             '#f)
                                                            _rest28018_)
                                                      _deps27998_)
                                                     (if (fxpositive?
                                                          (##direct-structure-ref
                                                           _hd28019_
                                                           '2
                                                           gx#import-set::t
                                                           '#f))
                                                         (let ((_xdeps28037_
                                                                (_import-set-template27989_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd28019_
                         '0)))
                   (_find-deps27990_
                    (foldl1 cons _rest28018_ _xdeps28037_)
                    _deps27998_))
                 (_find-deps27990_ _rest28018_ _deps27998_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (error '"Unexpected module import"
                                                        _hd28019_)))))))))
                     (if (##pair? _rest2799928007_)
                         (let ((_hd2800428042_ (##car _rest2799928007_))
                               (_tl2800528044_ (##cdr _rest2799928007_)))
                           (let* ((_hd28047_ _hd2800428042_)
                                  (_rest28049_ _tl2800528044_))
                             (_K2800328039_ _rest28049_ _hd28047_)))
                         (_else2800128015_))))))
        (reverse (filter gx#expander-context-id
                         (_find-deps27990_
                          (let ((_$e27992_
                                 (gx#core-context-prelude__% _ctx27986_)))
                            (if _$e27992_
                                ((lambda (_pre27995_)
                                   (cons _pre27995_
                                         (##structure-ref
                                          _ctx27986_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _$e27992_)
                                (##structure-ref
                                 _ctx27986_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))))
  (define gxc#find-static-module-file
    (lambda (_ctx27925_)
      (let* ((_scm27927_
              (string-append
               (gxc#static-module-name
                (##structure-ref _ctx27925_ '1 gx#expander-context::t '#f))
               '".scm"))
             (_dirs27929_ (gx#current-expander-module-library-path))
             (_dirs27938_
              (let ((_$e27931_ (gxc#current-compile-output-dir)))
                (if _$e27931_
                    ((lambda (_g2793327935_) (cons _g2793327935_ _dirs27929_))
                     _$e27931_)
                    _dirs27929_)))
             (_dirs27944_
              (map (lambda (_g2793927941_)
                     (path-expand '"static" _g2793927941_))
                   _dirs27938_)))
        (let _lp27947_ ((_rest27949_ _dirs27944_))
          (let* ((_rest2795027958_ _rest27949_)
                 (_E2795327962_
                  (lambda () (error '"No clause matching" _rest2795027958_)))
                 (_else2795227966_
                  (lambda ()
                    (gxc#raise-compile-error
                     '"cannot find static module"
                     (##structure-ref _ctx27925_ '1 gx#expander-context::t '#f)
                     _scm27927_)))
                 (_K2795427974_
                  (lambda (_rest27969_ _dir27970_)
                    (let ((_path27972_ (path-expand _scm27927_ _dir27970_)))
                      (if (file-exists? _path27972_)
                          _path27972_
                          (_lp27947_ _rest27969_))))))
            (if (##pair? _rest2795027958_)
                (let ((_hd2795527977_ (##car _rest2795027958_))
                      (_tl2795627979_ (##cdr _rest2795027958_)))
                  (let* ((_dir27982_ _hd2795527977_)
                         (_rest27984_ _tl2795627979_))
                    (_K2795427974_ _rest27984_ _dir27982_)))
                (_else2795227966_)))))))
  (define gxc#file-empty?
    (lambda (_path27923_)
      (zero? (file-info-size (file-info _path27923_ '#t)))))
  (define gxc#compile-top-module
    (lambda (_ctx27920_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#verbose
            '"compile "
            (##structure-ref _ctx27920_ '1 gx#expander-context::t '#f))
           (if (gxc#current-compile-optimize)
               (gxc#optimize! _ctx27920_)
               '#!void)
           (gxc#collect-bindings _ctx27920_)
           (gxc#compile-runtime-code _ctx27920_)
           (gxc#compile-meta-code _ctx27920_)
           (if (if (gxc#current-compile-optimize)
                   (gxc#current-compile-generate-ssxi)
                   '#f)
               (gxc#compile-ssxi-code _ctx27920_)
               '#!void)))
       gx#current-expander-context
       _ctx27920_
       gx#current-expander-phi
       '0
       gx#current-expander-marks
       '()
       gxc#current-compile-symbol-table
       (let ((__obj28396 (make-object gxc#symbol-table::t '2)))
         (begin (gxc#symbol-table:::init! __obj28396) __obj28396))
       gxc#current-compile-runtime-sections
       (make-hash-table-eq)
       gxc#current-compile-runtime-names
       (make-table))))
  (define gxc#collect-bindings
    (lambda (_ctx27918_)
      (gxc#apply-collect-bindings
       (##structure-ref _ctx27918_ '11 gx#module-context::t '#f))))
  (define gxc#compile-runtime-code
    (lambda (_ctx27872_)
      (letrec ((_compile127874_
                (lambda (_ctx27907_)
                  (let* ((_code27909_
                          (##structure-ref
                           _ctx27907_
                           '11
                           gx#module-context::t
                           '#f))
                         (_rt27913_
                          (if (gxc#apply-find-runtime-code _code27909_)
                              (let ((_idstr27911_
                                     (symbol->string
                                      (##structure-ref
                                       _ctx27907_
                                       '1
                                       gx#expander-context::t
                                       '#f))))
                                (string-append _idstr27911_ '"__0"))
                              '#f)))
                    (begin
                      (if _rt27913_
                          (begin
                            (table-set!
                             (gxc#current-compile-runtime-sections)
                             _ctx27907_
                             _rt27913_)
                            (_generate-runtime-code27875_
                             _ctx27907_
                             _code27909_))
                          (if (gxc#current-compile-static)
                              (let ((_path27916_
                                     (gxc#compile-static-output-file
                                      _ctx27907_)))
                                (with-output-to-file
                                 (cons 'path:
                                       (cons _path27916_
                                             (cons 'permissions:
                                                   (cons '420 '()))))
                                 void))
                              '#!void))
                      (_generate-loader-code27876_
                       _ctx27907_
                       _code27909_
                       _rt27913_)))))
               (_generate-runtime-code27875_
                (lambda (_ctx27891_ _code27892_)
                  (let* ((_lifts27894_ (box '()))
                         (_runtime-code27897_
                          (call-with-parameters
                           (lambda () (gxc#apply-generate-runtime _code27892_))
                           gx#current-expander-context
                           _ctx27891_
                           gx#current-expander-phi
                           '0
                           gxc#current-compile-lift
                           _lifts27894_
                           gxc#current-compile-marks
                           (make-hash-table-eq)))
                         (_runtime-code27899_
                          (if (null? (unbox _lifts27894_))
                              _runtime-code27897_
                              (cons 'begin
                                    (foldr1 cons
                                            (cons _runtime-code27897_ '())
                                            (reverse (unbox _lifts27894_))))))
                         (_scm027901_
                          (gxc#compile-output-file _ctx27891_ '0 '".scm")))
                    (if (gxc#current-compile-static)
                        (let ((_scms27904_
                               (gxc#compile-static-output-file _ctx27891_)))
                          (begin
                            (call-with-parameters
                             (lambda ()
                               (gxc#compile-scm-file
                                _scm027901_
                                _runtime-code27899_))
                             gxc#current-compile-keep-scm
                             '#t)
                            (if (file-exists? _scms27904_)
                                (delete-file _scms27904_)
                                '#!void)
                            (gxc#verbose
                             '"copy static module "
                             _scm027901_
                             '" => "
                             _scms27904_)
                            (copy-file _scm027901_ _scms27904_)
                            (if (gxc#current-compile-keep-scm)
                                '#!void
                                (delete-file _scm027901_))))
                        (gxc#compile-scm-file
                         _scm027901_
                         _runtime-code27899_)))))
               (_generate-loader-code27876_
                (lambda (_ctx27880_ _code27881_ _rt27882_)
                  (let* ((_loader-code27885_
                          (call-with-parameters
                           (lambda () (gxc#apply-generate-loader _code27881_))
                           gx#current-expander-context
                           _ctx27880_))
                         (_loader-code27887_
                          (if _rt27882_
                              (cons 'begin
                                    (cons _loader-code27885_
                                          (cons (cons 'load-module
                                                      (cons _rt27882_ '()))
                                                '())))
                              _loader-code27885_)))
                    (call-with-parameters
                     (lambda ()
                       (gxc#compile-scm-file
                        (gxc#compile-output-file _ctx27880_ 'rt '".scm")
                        _loader-code27887_))
                     gxc#current-compile-gsc-options
                     '#f)))))
        (let ((_all-modules27878_
               (cons _ctx27872_ (gxc#lift-nested-modules _ctx27872_))))
          (for-each _compile127874_ _all-modules27878_)))))
  (define gxc#compile-meta-code
    (lambda (_ctx27774_)
      (letrec ((_compile-ssi27776_
                (lambda (_code27842_)
                  (let* ((_path27844_
                          (gxc#compile-output-file _ctx27774_ '#f '".ssi"))
                         (_prelude27855_
                          (let* ((_super27846_
                                  (##structure-ref
                                   _ctx27774_
                                   '3
                                   gx#phi-context::t
                                   '#f))
                                 (_$e27848_
                                  (##structure-ref
                                   _super27846_
                                   '1
                                   gx#expander-context::t
                                   '#f)))
                            (if _$e27848_
                                ((lambda (_g2785027852_)
                                   (make-symbol '":" _g2785027852_))
                                 _$e27848_)
                                ':<root>)))
                         (_ns27857_
                          (##structure-ref
                           _ctx27774_
                           '6
                           gx#module-context::t
                           '#f))
                         (_idstr27859_
                          (symbol->string
                           (##structure-ref
                            _ctx27774_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_pkg27866_
                          (let ((_$e27861_ (string-rindex _idstr27859_ '#\/)))
                            (if _$e27861_
                                ((lambda (_x27864_)
                                   (string->symbol
                                    (substring _idstr27859_ '0 _x27864_)))
                                 _$e27861_)
                                '#f)))
                         (_rt27868_
                          (table-ref
                           (gxc#current-compile-runtime-sections)
                           _ctx27774_
                           '#f)))
                    (begin
                      (gxc#verbose '"compile " _path27844_)
                      (with-output-to-file
                       (cons 'path:
                             (cons _path27844_
                                   (cons 'permissions: (cons '420 '()))))
                       (lambda ()
                         (begin
                           (displayln '"prelude:" '" " _prelude27855_)
                           (if _pkg27866_
                               (displayln '"package:" '" " _pkg27866_)
                               '#!void)
                           (displayln '"namespace:" '" " _ns27857_)
                           (newline)
                           (pretty-print _code27842_)
                           (if _rt27868_
                               (pretty-print
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons '_gx#load-module '()))
                                            (cons (cons '%#quote
                                                        (cons _rt27868_ '()))
                                                  '()))))
                               '#!void))))))))
               (_compile-phi27777_
                (lambda (_part27782_)
                  (let* ((_part2778327796_ _part27782_)
                         (_E2778527800_
                          (lambda ()
                            (error '"No clause matching" _part2778327796_)))
                         (_K2778627811_
                          (lambda (_code27803_
                                   _n27804_
                                   _phi27805_
                                   _phi-ctx27806_)
                            (let ((_code27809_
                                   (call-with-parameters
                                    (lambda ()
                                      (gxc#generate-runtime-phi _code27803_))
                                    gx#current-expander-context
                                    _phi-ctx27806_
                                    gx#current-expander-phi
                                    _phi27805_)))
                              (gxc#compile-scm-file
                               (gxc#compile-output-file
                                _ctx27774_
                                _n27804_
                                '".scm")
                               _code27809_)))))
                    (if (##pair? _part2778327796_)
                        (let ((_hd2778727814_ (##car _part2778327796_))
                              (_tl2778827816_ (##cdr _part2778327796_)))
                          (let ((_phi-ctx27819_ _hd2778727814_))
                            (if (##pair? _tl2778827816_)
                                (let ((_hd2778927821_ (##car _tl2778827816_))
                                      (_tl2779027823_ (##cdr _tl2778827816_)))
                                  (let ((_phi27826_ _hd2778927821_))
                                    (if (##pair? _tl2779027823_)
                                        (let ((_hd2779127828_
                                               (##car _tl2779027823_))
                                              (_tl2779227830_
                                               (##cdr _tl2779027823_)))
                                          (let ((_n27833_ _hd2779127828_))
                                            (if (##pair? _tl2779227830_)
                                                (let ((_hd2779327835_
                                                       (##car _tl2779227830_))
                                                      (_tl2779427837_
                                                       (##cdr _tl2779227830_)))
                                                  (let ((_code27840_
                                                         _hd2779327835_))
                                                    (if (##null? _tl2779427837_)
                                                        (_K2778627811_
                                                         _code27840_
                                                         _n27833_
                                                         _phi27826_
                                                         _phi-ctx27819_)
                                                        (_E2778527800_))))
                                                (_E2778527800_))))
                                        (_E2778527800_))))
                                (_E2778527800_))))
                        (_E2778527800_))))))
        (let ((_g28404_ (gxc#generate-meta-code _ctx27774_)))
          (begin
            (let ((_g28405_ (values-count _g28404_)))
              (if (not (fx= _g28405_ 2))
                  (error "Context expects 2 values" _g28405_)))
            (let ((_ssi-code27779_ (values-ref _g28404_ 0))
                  (_phi-code27780_ (values-ref _g28404_ 1)))
              (begin
                (_compile-ssi27776_ _ssi-code27779_)
                (for-each _compile-phi27777_ _phi-code27780_))))))))
  (define gxc#compile-ssxi-code
    (lambda (_ctx27757_)
      (let* ((_path27759_ (gxc#compile-output-file _ctx27757_ '#f '".ssxi.ss"))
             (_code27761_
              (gxc#apply-generate-ssxi
               (##structure-ref _ctx27757_ '11 gx#module-context::t '#f)))
             (_idstr27763_
              (symbol->string
               (##structure-ref _ctx27757_ '1 gx#expander-context::t '#f)))
             (_pkg27770_
              (let ((_$e27765_ (string-rindex _idstr27763_ '#\/)))
                (if _$e27765_
                    ((lambda (_x27768_)
                       (string->symbol (substring _idstr27763_ '0 _x27768_)))
                     _$e27765_)
                    '#f))))
        (begin
          (gxc#verbose '"compile " _path27759_)
          (with-output-to-file
           (cons 'path:
                 (cons _path27759_ (cons 'permissions: (cons '420 '()))))
           (lambda ()
             (begin
               (displayln '"prelude: :gerbil/compiler/ssxi")
               (if _pkg27770_ (displayln '"package: " _pkg27770_) '#!void)
               (newline)
               (pretty-print _code27761_))))))))
  (define gxc#generate-meta-code
    (lambda (_ctx27750_)
      (let* ((_state27752_
              (let ((__obj28397 (make-object gxc#meta-state::t '4)))
                (begin
                  (gxc#meta-state:::init! __obj28397 _ctx27750_)
                  __obj28397)))
             (_ssi-code27754_
              (gxc#apply-generate-meta
               (##structure-ref _ctx27750_ '11 gx#module-context::t '#f)
               _state27752_)))
        (values _ssi-code27754_ (gxc#meta-state-end! _state27752_)))))
  (define gxc#generate-runtime-phi
    (lambda (_stx27743_)
      (let ((_lifts27745_ (box '())))
        (call-with-parameters
         (lambda ()
           (let ((_code27748_ (gxc#apply-generate-runtime-phi _stx27743_)))
             (if (null? (unbox _lifts27745_))
                 _code27748_
                 (cons 'begin
                       (foldr1 cons
                               (cons _code27748_ '())
                               (reverse (unbox _lifts27745_)))))))
         gxc#current-compile-lift
         _lifts27745_
         gxc#current-compile-marks
         (make-hash-table-eq)))))
  (define gxc#lift-nested-modules
    (lambda (_ctx27739_)
      (let ((_modules27741_ (box '())))
        (begin
          (gxc#apply-lift-modules
           (##structure-ref _ctx27739_ '11 gx#module-context::t '#f)
           _modules27741_)
          (reverse (unbox _modules27741_))))))
  (define gxc#compile-scm-file
    (lambda (_path27735_ _code27736_)
      (begin
        (gxc#verbose '"compile " _path27735_)
        (with-output-to-file
         (cons 'path: (cons _path27735_ (cons 'permissions: (cons '420 '()))))
         (lambda ()
           (begin
             (pretty-print
              '(declare (block) (standard-bindings) (extended-bindings)))
             (pretty-print _code27736_))))
        (if (gxc#current-compile-invoke-gsc)
            (gxc#gsc-compile-file _path27735_)
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path27735_)))))
  (define gxc#gsc-debug-options
    (lambda ()
      (let ((_$e27724_ (gxc#current-compile-debug)))
        (if _$e27724_
            ((lambda (_debug27727_)
               (let ((_$e27729_ _debug27727_))
                 (if (eq? 'env _$e27729_)
                     (cons '"-debug-environments" '())
                     (if (eq? 'src _$e27729_)
                         (cons '"-debug-environments"
                               (cons '"-debug-source" '()))
                         (if (let ((_$e27732_ (eq? 'all _$e27729_)))
                               (if _$e27732_ _$e27732_ (eq? '#t _$e27729_)))
                             (cons '"-debug" '())
                             (gxc#raise-compile-error
                              '"unknown debug option"
                              _debug27727_))))))
             _$e27724_)
            '()))))
  (define gxc#gsc-compile-file
    (lambda (_path27706_)
      (let* ((_gsc-args27713_
              (let ((_$e27708_ (gxc#current-compile-gsc-options)))
                (if _$e27708_
                    ((lambda (_opts27711_)
                       (foldr1 cons (cons _path27706_ '()) _opts27711_))
                     _$e27708_)
                    (cons _path27706_ '()))))
             (_gsc-args27715_
              (foldr1 cons _gsc-args27713_ (gxc#gsc-debug-options)))
             (_g28406_
              (gxc#verbose '"invoke gsc " (cons 'gsc _gsc-args27715_)))
             (_proc27718_
              (open-process
               (cons 'path:
                     (cons '"gsc"
                           (cons 'arguments:
                                 (cons _gsc-args27715_
                                       (cons 'stdout-redirection:
                                             (cons '#f '()))))))))
             (_status27720_ (process-status _proc27718_)))
        (if (zero? _status27720_)
            '#!void
            (gxc#raise-compile-error
             '"Compilation error; gsc exit with nonzero status"
             _path27706_
             _status27720_)))))
  (define gxc#compile-output-file
    (lambda (_ctx27678_ _n27679_ _ext27680_)
      (letrec ((_module-relative-path27682_
                (lambda (_ctx27704_)
                  (path-strip-directory
                   (symbol->string
                    (##structure-ref
                     _ctx27704_
                     '1
                     gx#expander-context::t
                     '#f)))))
               (_module-source-directory27683_
                (lambda (_ctx27700_)
                  (path-directory
                   (let ((_mpath27702_
                          (##structure-ref
                           _ctx27700_
                           '7
                           gx#module-context::t
                           '#f)))
                     (if (string? _mpath27702_)
                         _mpath27702_
                         (last _mpath27702_))))))
               (_section-string27684_
                (lambda (_n27698_)
                  (if (number? _n27698_)
                      (number->string _n27698_)
                      (if (symbol? _n27698_)
                          (symbol->string _n27698_)
                          (if (string? _n27698_)
                              _n27698_
                              (gxc#raise-compile-error
                               '"Unexpected section"
                               _n27698_))))))
               (_file-name27685_
                (lambda (_path27696_)
                  (if _n27679_
                      (string-append
                       _path27696_
                       '"__"
                       (_section-string27684_ _n27679_)
                       _ext27680_)
                      (string-append _path27696_ _ext27680_))))
               (_file-path27686_
                (lambda ()
                  (let ((_$e27691_ (gxc#current-compile-output-dir)))
                    (if _$e27691_
                        ((lambda (_outdir27694_)
                           (path-expand
                            (_file-name27685_
                             (symbol->string
                              (##structure-ref
                               _ctx27678_
                               '1
                               gx#expander-context::t
                               '#f)))
                            _outdir27694_))
                         _$e27691_)
                        (path-expand
                         (_file-name27685_
                          (_module-relative-path27682_ _ctx27678_))
                         (_module-source-directory27683_ _ctx27678_)))))))
        (let ((_path27688_ (_file-path27686_)))
          (begin
            (create-directory* (path-directory _path27688_))
            _path27688_)))))
  (define gxc#compile-static-output-file
    (lambda (_ctx27661_)
      (letrec ((_file-name27663_
                (lambda (_idstr27676_)
                  (string-append
                   (gxc#static-module-name _idstr27676_)
                   '".scm")))
               (_file-path27664_
                (lambda ()
                  (let* ((_file27669_
                          (_file-name27663_
                           (symbol->string
                            (##structure-ref
                             _ctx27661_
                             '1
                             gx#expander-context::t
                             '#f))))
                         (_$e27671_ (gxc#current-compile-output-dir)))
                    (if _$e27671_
                        ((lambda (_outdir27674_)
                           (path-expand
                            _file27669_
                            (path-expand '"static" _outdir27674_)))
                         _$e27671_)
                        (path-expand _file27669_ '"static"))))))
        (let ((_path27666_ (_file-path27664_)))
          (begin
            (create-directory* (path-directory _path27666_))
            _path27666_)))))
  (define gxc#compile-exe-output-file
    (lambda (_ctx27648_ _opts27649_)
      (let ((_$e27651_ (pgetq 'output-file: _opts27649_)))
        (if _$e27651_
            (values _$e27651_)
            (let* ((_mod-str27654_
                    (symbol->string
                     (##structure-ref
                      _ctx27648_
                      '1
                      gx#expander-context::t
                      '#f)))
                   (_$e27656_ (string-rindex _mod-str27654_ '#\/)))
              (if _$e27656_
                  ((lambda (_ix27659_)
                     (substring
                      _mod-str27654_
                      (fx+ _ix27659_ '1)
                      (string-length _mod-str27654_)))
                   _$e27656_)
                  _mod-str27654_))))))
  (define gxc#static-module-name
    (lambda (_idstr27644_)
      (if (string? _idstr27644_)
          (let ((_strs27646_ (string-split _idstr27644_ '#\/)))
            (string-join _strs27646_ '"__"))
          (if (symbol? _idstr27644_)
              (gxc#static-module-name (symbol->string _idstr27644_))
              (error '"Bad module id" _idstr27644_))))))
