(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#compile-timestamp
    (lambda () (inexact->exact (floor (time->seconds (current-time))))))
  (begin
    (define gxc#compile-file__%
      (lambda (_srcpath28319_ _opts28320_)
        (begin
          (if (string? _srcpath28319_)
              '#!void
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath28319_))
          (let ((_outdir28322_ (pgetq 'output-dir: _opts28320_))
                (_invoke-gsc?28323_ (pgetq 'invoke-gsc: _opts28320_))
                (_gsc-options28324_ (pgetq 'gsc-options: _opts28320_))
                (_keep-scm?28325_ (pgetq 'keep-scm: _opts28320_))
                (_verbosity28326_ (pgetq 'verbose: _opts28320_))
                (_optimize28327_ (pgetq 'optimize: _opts28320_))
                (_debug28328_ (pgetq 'debug: _opts28320_))
                (_gen-ssxi28329_ (pgetq 'generate-ssxi: _opts28320_))
                (_static28330_ (pgetq 'static: _opts28320_)))
            (begin
              (if _outdir28322_ (create-directory* _outdir28322_) '#!void)
              (if _optimize28327_ (gxc#optimizer-info-init!) '#!void)
              (call-with-parameters
               (lambda ()
                 (begin
                   (gxc#verbose '"compile " _srcpath28319_)
                   (gxc#compile-top-module
                    (gx#import-module__0 _srcpath28319_))))
               gxc#current-compile-output-dir
               _outdir28322_
               gxc#current-compile-invoke-gsc
               _invoke-gsc?28323_
               gxc#current-compile-gsc-options
               _gsc-options28324_
               gxc#current-compile-keep-scm
               _keep-scm?28325_
               gxc#current-compile-verbose
               _verbosity28326_
               gxc#current-compile-optimize
               _optimize28327_
               gxc#current-compile-debug
               _debug28328_
               gxc#current-compile-generate-ssxi
               _gen-ssxi28329_
               gxc#current-compile-static
               _static28330_
               gxc#current-compile-timestamp
               (gxc#compile-timestamp)))))))
    (begin
      (define gxc#compile-file__0
        (lambda (_srcpath28336_)
          (let ((_opts28338_ '()))
            (gxc#compile-file__% _srcpath28336_ _opts28338_))))
      (define gxc#compile-file
        (lambda _g28346_
          (let ((_g28345_ (length _g28346_)))
            (cond ((fx= _g28345_ 1) (apply gxc#compile-file__0 _g28346_))
                  ((fx= _g28345_ 2) (apply gxc#compile-file__% _g28346_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-file
                    _g28346_))))))))
  (begin
    (define gxc#compile-exe-stub__%
      (lambda (_srcpath28305_ _opts28306_)
        (gxc#do-compile-exe
         _srcpath28305_
         _opts28306_
         gxc#compile-exe-stub-module)))
    (begin
      (define gxc#compile-exe-stub__0
        (lambda (_srcpath28311_)
          (let ((_opts28313_ '()))
            (gxc#compile-exe-stub__% _srcpath28311_ _opts28313_))))
      (define gxc#compile-exe-stub
        (lambda _g28348_
          (let ((_g28347_ (length _g28348_)))
            (cond ((fx= _g28347_ 1) (apply gxc#compile-exe-stub__0 _g28348_))
                  ((fx= _g28347_ 2) (apply gxc#compile-exe-stub__% _g28348_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-exe-stub
                    _g28348_))))))))
  (begin
    (define gxc#compile-static-exe__%
      (lambda (_srcpath28291_ _opts28292_)
        (gxc#do-compile-exe
         _srcpath28291_
         _opts28292_
         gxc#compile-exe-static-module)))
    (begin
      (define gxc#compile-static-exe__0
        (lambda (_srcpath28297_)
          (let ((_opts28299_ '()))
            (gxc#compile-static-exe__% _srcpath28297_ _opts28299_))))
      (define gxc#compile-static-exe
        (lambda _g28350_
          (let ((_g28349_ (length _g28350_)))
            (cond ((fx= _g28349_ 1) (apply gxc#compile-static-exe__0 _g28350_))
                  ((fx= _g28349_ 2) (apply gxc#compile-static-exe__% _g28350_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-static-exe
                    _g28350_))))))))
  (define gxc#do-compile-exe
    (lambda (_srcpath28279_ _opts28280_ _compile-e28281_)
      (begin
        (if (string? _srcpath28279_)
            '#!void
            (gxc#raise-compile-error
             '"Invalid module source path"
             _srcpath28279_))
        (let ((_outdir28283_ (pgetq 'output-dir: _opts28280_))
              (_invoke-gsc?28284_ (pgetq 'invoke-gsc: _opts28280_))
              (_gsc-options28285_ (pgetq 'gsc-options: _opts28280_))
              (_keep-scm?28286_ (pgetq 'keep-scm: _opts28280_))
              (_verbosity28287_ (pgetq 'verbose: _opts28280_)))
          (begin
            (if _outdir28283_ (create-directory* _outdir28283_) '#!void)
            (call-with-parameters
             (lambda ()
               (begin
                 (gxc#verbose '"compile exe " _srcpath28279_)
                 (_compile-e28281_
                  (gx#import-module__0 _srcpath28279_)
                  _opts28280_)))
             gxc#current-compile-output-dir
             _outdir28283_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?28284_
             gxc#current-compile-gsc-options
             _gsc-options28285_
             gxc#current-compile-keep-scm
             _keep-scm?28286_
             gxc#current-compile-verbose
             _verbosity28287_
             gxc#current-compile-timestamp
             (gxc#compile-timestamp)))))))
  (define gxc#compile-exe-stub-module
    (lambda (_ctx28245_ _opts28246_)
      (letrec ((_generate-stub28248_
                (lambda (_gx-init-stub28270_)
                  (let* ((_mod-str28272_
                          (gxc#module-id->path-string
                           (##structure-ref
                            _ctx28245_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_mod-rt28274_ (string-append _mod-str28272_ '"__rt"))
                         (_mod-main28276_
                          (gxc#find-runtime-symbol _ctx28245_ 'main)))
                    (begin
                      (write '(##namespace ("")))
                      (newline)
                      (write (cons 'include (cons _gx-init-stub28270_ '())))
                      (newline)
                      (write (cons '_gx#start!
                                   (cons _mod-rt28274_
                                         (cons (cons 'quote
                                                     (cons _mod-main28276_
                                                           '()))
                                               '()))))
                      (newline)))))
               (_compile-stub28249_
                (lambda (_output-scm28256_ _output-bin28257_)
                  (let* ((_init-stub28259_
                          (path-expand
                           '"lib/gx-init-exe.scm"
                           (getenv '"GERBIL_HOME")))
                         (_gsc-args28261_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin28257_
                                            (cons _output-scm28256_ '()))))))
                    (begin
                      (with-output-to-file
                       _output-scm28256_
                       (lambda () (_generate-stub28248_ _init-stub28259_)))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (gxc#verbose
                             '"invoke gsc "
                             (cons 'gsc _gsc-args28261_))
                            (let* ((_proc28265_
                                    (open-process
                                     (cons 'path:
                                           (cons '"gsc"
                                                 (cons 'arguments:
                                                       (cons _gsc-args28261_
                                                             (cons 'stdout-redirection:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_status28267_
                                    (process-status _proc28265_)))
                              (if (zero? _status28267_)
                                  '#!void
                                  (gxc#raise-compile-error
                                   '"Compilation error; gsc exit with nonzero status"
                                   _output-scm28256_
                                   _output-bin28257_
                                   _status28267_))))
                          '#!void))))))
        (let* ((_output-bin28251_
                (gxc#compile-exe-output-file _ctx28245_ _opts28246_))
               (_output-scm28253_ (string-append _output-bin28251_ '".scm")))
          (begin
            (_compile-stub28249_ _output-scm28253_ _output-bin28251_)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm28253_)))))))
  (define gxc#compile-exe-static-module
    (lambda (_ctx28104_ _opts28105_)
      (letrec ((_reset-declare28107_
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
               (_user-declare28108_
                (lambda ()
                  (let* ((_gsc-opts28186_ (pgetq 'gsc-options: _opts28105_))
                         (_gsc-prelude28188_
                          (if _gsc-opts28186_
                              (member '"-prelude" _gsc-opts28186_)
                              '#f))
                         (_gsc-prelude28190_
                          (if _gsc-prelude28188_
                              (read (open-input-string
                                     (cadr _gsc-prelude28188_)))
                              '#f)))
                    (let _lift28193_ ((_expr28195_ _gsc-prelude28190_))
                      (let* ((_expr2819628208_ _expr28195_)
                             (_E2820028212_
                              (lambda ()
                                (error '"No clause matching"
                                       _expr2819628208_)))
                             (_else2819928216_ (lambda () '#f))
                             (_try-match2819828232_
                              (lambda ()
                                (let ((_K2820128222_
                                       (lambda (_exprs28220_)
                                         (ormap1 _lift28193_ _exprs28220_))))
                                  (if (##pair? _expr2819628208_)
                                      (let ((_hd2820228225_
                                             (##car _expr2819628208_))
                                            (_tl2820328227_
                                             (##cdr _expr2819628208_)))
                                        (if (##eq? _hd2820228225_ 'begin)
                                            (let ((_exprs28230_
                                                   _tl2820328227_))
                                              (_K2820128222_ _exprs28230_))
                                            (_else2819928216_)))
                                      (_else2819928216_)))))
                             (_K2820428236_ (lambda () _expr28195_)))
                        (if (##pair? _expr2819628208_)
                            (let ((_hd2820528239_ (##car _expr2819628208_))
                                  (_tl2820628241_ (##cdr _expr2819628208_)))
                              (if (##eq? _hd2820528239_ 'declare)
                                  (_K2820428236_)
                                  (_try-match2819828232_)))
                            (_try-match2819828232_)))))))
               (_generate-stub28109_
                (lambda (_deps28177_)
                  (let ((_mod-main28179_
                         (gxc#find-runtime-symbol _ctx28104_ 'main))
                        (_reset-decl28180_ (_reset-declare28107_))
                        (_user-decl28181_ (_user-declare28108_)))
                    (begin
                      (write '(##namespace ("")))
                      (newline)
                      (write '(declare (optimize-dead-definitions)))
                      (newline)
                      (for-each
                       (lambda (_dep28183_)
                         (begin
                           (write (cons 'include (cons _dep28183_ '())))
                           (newline)
                           (write '(##namespace ("")))
                           (write _reset-decl28180_)
                           (if _user-decl28181_
                               (write _user-decl28181_)
                               '#!void)
                           (newline)))
                       _deps28177_)
                      (write (cons 'apply
                                   (cons _mod-main28179_
                                         (cons (cons 'cdr
                                                     (cons (cons 'command-line
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                      (newline)))))
               (_static-include28110_
                (lambda (_gsc-opts28160_ _home28161_)
                  (letrec* ((_static-dir28163_
                             (path-expand '"lib/static" _home28161_))
                            (_user-static-dir28164_
                             (path-expand
                              '"lib/static"
                              (getenv '"GERBIL_PATH" '"~/.gerbil")))
                            (_cppflags28165_
                             (string-append
                              '"-I "
                              _static-dir28163_
                              '" -I "
                              _user-static-dir28164_)))
                    (let ((_$e28167_ (member '"-cc-options" _gsc-opts28160_)))
                      (if _$e28167_
                          ((lambda (_rest28170_)
                             (let* ((_cell28172_ (cdr _rest28170_))
                                    (_opt28174_ (car _cell28172_)))
                               (begin
                                 (set-car!
                                  _cell28172_
                                  (string-append
                                   _opt28174_
                                   '" "
                                   _cppflags28165_))
                                 _gsc-opts28160_)))
                           _$e28167_)
                          (cons '"-cc-options"
                                (cons _cppflags28165_ _gsc-opts28160_)))))))
               (_compile-stub28111_
                (lambda (_output-scm28118_ _output-bin28119_)
                  (let* ((_gerbil-home28121_ (getenv '"GERBIL_HOME"))
                         (_gx-gambc028123_
                          (path-expand
                           '"lib/static/gx-gambc0.scm"
                           _gerbil-home28121_))
                         (_gx-gambc-init28125_
                          (path-expand
                           '"lib/gx-init-static-exe.scm"
                           _gerbil-home28121_))
                         (_gx-gambc-macros28127_
                          (path-expand
                           '"lib/static/gx-gambc#.scm"
                           _gerbil-home28121_))
                         (_include-gx-gambc-macros28129_
                          (string-append
                           '"(include \""
                           _gx-gambc-macros28127_
                           '"\")"))
                         (_bin-scm28131_
                          (gxc#find-static-module-file _ctx28104_))
                         (_deps28133_
                          (gxc#find-runtime-module-deps _ctx28104_))
                         (_deps28135_
                          (map gxc#find-static-module-file _deps28133_))
                         (_deps28140_
                          (filter (lambda (_$obj28137_)
                                    (not (gxc#file-empty? _$obj28137_)))
                                  _deps28135_))
                         (_gsc-opts28145_
                          (let ((_$e28142_ (pgetq 'gsc-options: _opts28105_)))
                            (if _$e28142_ _$e28142_ '())))
                         (_gsc-opts28147_
                          (_static-include28110_
                           _gsc-opts28145_
                           _gerbil-home28121_))
                         (_gsc-gx-macros28149_
                          (if (gerbil-runtime-smp?)
                              (cons '"-e"
                                    (cons '"(define-cond-expand-feature|enable-smp|)"
                                          (cons '"-e"
                                                (cons _include-gx-gambc-macros28129_
                                                      '()))))
                              (cons '"-e"
                                    (cons _include-gx-gambc-macros28129_
                                          '()))))
                         (_gsc-args28151_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin28119_
                                            (foldr1 cons
                                                    (foldr1 cons
                                                            (foldr1 cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _output-scm28118_ '())
                            _gsc-gx-macros28149_)
                    _gsc-opts28147_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gxc#gsc-debug-options)))))))
                    (begin
                      (with-output-to-file
                       _output-scm28118_
                       (lambda ()
                         (_generate-stub28109_
                          (cons _gx-gambc028123_
                                (cons _gx-gambc-init28125_
                                      (foldr1 cons
                                              (cons _bin-scm28131_ '())
                                              _deps28140_))))))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (gxc#verbose
                             '"invoke gsc "
                             (cons 'gsc _gsc-args28151_))
                            (let* ((_proc28155_
                                    (open-process
                                     (cons 'path:
                                           (cons '"gsc"
                                                 (cons 'arguments:
                                                       (cons _gsc-args28151_
                                                             (cons 'stdout-redirection:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_status28157_
                                    (process-status _proc28155_)))
                              (if (zero? _status28157_)
                                  '#!void
                                  (gxc#raise-compile-error
                                   '"Compilation error; gsc exit with nonzero status"
                                   _output-scm28118_
                                   _output-bin28119_
                                   _status28157_))))
                          '#!void))))))
        (let* ((_output-bin28113_
                (gxc#compile-exe-output-file _ctx28104_ _opts28105_))
               (_output-scm28115_ (string-append _output-bin28113_ '".scm")))
          (begin
            (_compile-stub28111_ _output-scm28115_ _output-bin28113_)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm28115_)))))))
  (define gxc#find-export-binding
    (lambda (_ctx28054_ _id28055_)
      (let ((_$e28101_
             (find (lambda (_e2805628058_)
                     (let* ((_g2806028070_ _e2805628058_)
                            (_E2806328074_
                             (lambda ()
                               (error '"No clause matching" _g2806028070_)))
                            (_else2806228078_ (lambda () '#f))
                            (_K2806428082_ (lambda () '#t)))
                       (if (##structure-direct-instance-of?
                            _g2806028070_
                            (##type-id gx#module-export::t))
                           (let* ((_e2806528085_
                                   (##vector-ref _g2806028070_ '1))
                                  (_e2806628088_
                                   (##vector-ref _g2806028070_ '2))
                                  (_e2806728091_
                                   (##vector-ref _g2806028070_ '3)))
                             (if (##eq? _e2806728091_ '0)
                                 (let ((_e2806828094_
                                        (##vector-ref _g2806028070_ '4)))
                                   (if ((lambda (_g2809628098_)
                                          (eq? _g2809628098_ _id28055_))
                                        _e2806828094_)
                                       (_K2806428082_)
                                       (_else2806228078_)))
                                 (_else2806228078_)))
                           (_else2806228078_))))
                   (##structure-ref _ctx28054_ '9 gx#module-context::t '#f))))
        (if _$e28101_ (gx#core-resolve-module-export _$e28101_) '#f))))
  (define gxc#find-runtime-symbol
    (lambda (_ctx28046_ _id28047_)
      (let ((_$e28049_ (gxc#find-export-binding _ctx28046_ _id28047_)))
        (if _$e28049_
            ((lambda (_bind28052_)
               (begin
                 (if (##structure-instance-of?
                      _bind28052_
                      'gx#runtime-binding::t)
                     '#!void
                     (gxc#raise-compile-error
                      '"export is not a runtime binding"
                      _id28047_))
                 (##structure-ref _bind28052_ '1 gx#binding::t '#f)))
             _$e28049_)
            (gxc#raise-compile-error
             '"module does not export symbol"
             (##structure-ref _ctx28046_ '1 gx#expander-context::t '#f)
             _id28047_)))))
  (define gxc#find-runtime-module-deps
    (lambda (_ctx27933_)
      (letrec* ((_ht27935_ (make-hash-table-eq))
                (_import-set-template27936_
                 (lambda (_in27998_ _phi27999_)
                   (let ((_iphi28001_
                          (fx+ _phi27999_
                               (##direct-structure-ref
                                _in27998_
                                '2
                                gx#import-set::t
                                '#f)))
                         (_imports28002_
                          (##structure-ref
                           (##direct-structure-ref
                            _in27998_
                            '1
                            gx#import-set::t
                            '#f)
                           '8
                           gx#module-context::t
                           '#f)))
                     (let _lp28004_ ((_rest28006_ _imports28002_)
                                     (_r28007_ '()))
                       (let* ((_rest2800828016_ _rest28006_)
                              (_E2801128020_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest2800828016_)))
                              (_else2801028024_ (lambda () _r28007_))
                              (_K2801228034_
                               (lambda (_rest28027_ _in28028_)
                                 (if (##structure-instance-of?
                                      _in28028_
                                      'gx#module-context::t)
                                     (if (fxzero? _iphi28001_)
                                         (_lp28004_
                                          _rest28027_
                                          (cons _in28028_ _r28007_))
                                         (_lp28004_ _rest28027_ _r28007_))
                                     (if (##structure-direct-instance-of?
                                          _in28028_
                                          'gx#module-import::t)
                                         (let ((_iphi28030_
                                                (fx+ _phi27999_
                                                     (##direct-structure-ref
                                                      _in28028_
                                                      '3
                                                      gx#module-import::t
                                                      '#f))))
                                           (if (fxzero? _iphi28030_)
                                               (_lp28004_
                                                _rest28027_
                                                (cons (##direct-structure-ref
                                                       (##direct-structure-ref
                                                        _in28028_
                                                        '1
                                                        gx#module-import::t
                                                        '#f)
                                                       '1
                                                       gx#module-export::t
                                                       '#f)
                                                      _r28007_))
                                               (_lp28004_
                                                _rest28027_
                                                _r28007_)))
                                         (if (##structure-direct-instance-of?
                                              _in28028_
                                              'gx#import-set::t)
                                             (let ((_xphi28032_
                                                    (fx+ _iphi28001_
                                                         (##direct-structure-ref
                                                          _in28028_
                                                          '2
                                                          gx#import-set::t
                                                          '#f))))
                                               (if (fxzero? _xphi28032_)
                                                   (_lp28004_
                                                    _rest28027_
                                                    (cons (##direct-structure-ref
                                                           _in28028_
                                                           '1
                                                           gx#import-set::t
                                                           '#f)
                                                          _r28007_))
                                                   (if (fxpositive?
                                                        _xphi28032_)
                                                       (_lp28004_
                                                        _rest28027_
                                                        (foldl1 cons
                                                                _r28007_
                                                                (_import-set-template27936_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in28028_
                         _iphi28001_)))
               (_lp28004_ _rest28027_ _r28007_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_lp28004_
                                              _rest28027_
                                              _r28007_)))))))
                         (if (##pair? _rest2800828016_)
                             (let ((_hd2801328037_ (##car _rest2800828016_))
                                   (_tl2801428039_ (##cdr _rest2800828016_)))
                               (let* ((_in28042_ _hd2801328037_)
                                      (_rest28044_ _tl2801428039_))
                                 (_K2801228034_ _rest28044_ _in28042_)))
                             (_else2801028024_)))))))
                (_find-deps27937_
                 (lambda (_rest27944_ _deps27945_)
                   (let* ((_rest2794627954_ _rest27944_)
                          (_E2794927958_
                           (lambda ()
                             (error '"No clause matching" _rest2794627954_)))
                          (_else2794827962_ (lambda () _deps27945_))
                          (_K2795027986_
                           (lambda (_rest27965_ _hd27966_)
                             (if (##structure-instance-of?
                                  _hd27966_
                                  'gx#module-context::t)
                                 (let ((_id27968_
                                        (##structure-ref
                                         _hd27966_
                                         '1
                                         gx#expander-context::t
                                         '#f))
                                       (_imports27969_
                                        (##structure-ref
                                         _hd27966_
                                         '8
                                         gx#module-context::t
                                         '#f)))
                                   (if (table-ref _ht27935_ _id27968_ '#f)
                                       (_find-deps27937_
                                        _rest27965_
                                        _deps27945_)
                                       (let ((_$e27971_
                                              (gx#core-context-prelude__%
                                               _hd27966_)))
                                         (if _$e27971_
                                             ((lambda (_pre27974_)
                                                (let ((_xdeps27976_
                                                       (_find-deps27937_
                                                        (cons _pre27974_
                                                              _imports27969_)
                                                        _deps27945_)))
                                                  (begin
                                                    (table-set!
                                                     _ht27935_
                                                     _id27968_
                                                     _hd27966_)
                                                    (_find-deps27937_
                                                     _rest27965_
                                                     (cons _hd27966_
                                                           _xdeps27976_)))))
                                              _$e27971_)
                                             (let ((_xdeps27978_
                                                    (_find-deps27937_
                                                     _imports27969_
                                                     _deps27945_)))
                                               (begin
                                                 (table-set!
                                                  _ht27935_
                                                  _id27968_
                                                  _hd27966_)
                                                 (_find-deps27937_
                                                  _rest27965_
                                                  (cons _hd27966_
                                                        _xdeps27978_))))))))
                                 (if (##structure-instance-of?
                                      _hd27966_
                                      'gx#prelude-context::t)
                                     (let ((_id27980_
                                            (##structure-ref
                                             _hd27966_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (if (table-ref _ht27935_ _id27980_ '#f)
                                           (_find-deps27937_
                                            _rest27965_
                                            _deps27945_)
                                           (let ((_xdeps27982_
                                                  (_find-deps27937_
                                                   (##structure-ref
                                                    _hd27966_
                                                    '7
                                                    gx#prelude-context::t
                                                    '#f)
                                                   _deps27945_)))
                                             (if (table-ref
                                                  _ht27935_
                                                  _id27980_
                                                  '#f)
                                                 (_find-deps27937_
                                                  _rest27965_
                                                  _xdeps27982_)
                                                 (begin
                                                   (table-set!
                                                    _ht27935_
                                                    _id27980_
                                                    _hd27966_)
                                                   (_find-deps27937_
                                                    _rest27965_
                                                    (cons _hd27966_
                                                          _xdeps27982_)))))))
                                     (if (##structure-direct-instance-of?
                                          _hd27966_
                                          'gx#module-import::t)
                                         (if (fxzero? (##direct-structure-ref
                                                       _hd27966_
                                                       '3
                                                       gx#module-import::t
                                                       '#f))
                                             (_find-deps27937_
                                              (cons (##direct-structure-ref
                                                     _hd27966_
                                                     '1
                                                     gx#module-import::t
                                                     '#f)
                                                    _rest27965_)
                                              _deps27945_)
                                             (_find-deps27937_
                                              _rest27965_
                                              _deps27945_))
                                         (if (##structure-direct-instance-of?
                                              _hd27966_
                                              'gx#module-export::t)
                                             (_find-deps27937_
                                              (cons (##direct-structure-ref
                                                     _hd27966_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)
                                                    _rest27965_)
                                              _deps27945_)
                                             (if (##structure-direct-instance-of?
                                                  _hd27966_
                                                  'gx#import-set::t)
                                                 (if (fxzero? (##direct-structure-ref
                                                               _hd27966_
                                                               '2
                                                               gx#import-set::t
                                                               '#f))
                                                     (_find-deps27937_
                                                      (cons (##direct-structure-ref
                                                             _hd27966_
                                                             '1
                                                             gx#import-set::t
                                                             '#f)
                                                            _rest27965_)
                                                      _deps27945_)
                                                     (if (fxpositive?
                                                          (##direct-structure-ref
                                                           _hd27966_
                                                           '2
                                                           gx#import-set::t
                                                           '#f))
                                                         (let ((_xdeps27984_
                                                                (_import-set-template27936_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd27966_
                         '0)))
                   (_find-deps27937_
                    (foldl1 cons _rest27965_ _xdeps27984_)
                    _deps27945_))
                 (_find-deps27937_ _rest27965_ _deps27945_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (error '"Unexpected module import"
                                                        _hd27966_)))))))))
                     (if (##pair? _rest2794627954_)
                         (let ((_hd2795127989_ (##car _rest2794627954_))
                               (_tl2795227991_ (##cdr _rest2794627954_)))
                           (let* ((_hd27994_ _hd2795127989_)
                                  (_rest27996_ _tl2795227991_))
                             (_K2795027986_ _rest27996_ _hd27994_)))
                         (_else2794827962_))))))
        (reverse (filter gx#expander-context-id
                         (_find-deps27937_
                          (let ((_$e27939_
                                 (gx#core-context-prelude__% _ctx27933_)))
                            (if _$e27939_
                                ((lambda (_pre27942_)
                                   (cons _pre27942_
                                         (##structure-ref
                                          _ctx27933_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _$e27939_)
                                (##structure-ref
                                 _ctx27933_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))))
  (define gxc#find-static-module-file
    (lambda (_ctx27872_)
      (let* ((_scm27874_
              (string-append
               (gxc#static-module-name
                (##structure-ref _ctx27872_ '1 gx#expander-context::t '#f))
               '".scm"))
             (_dirs27876_ (gx#current-expander-module-library-path))
             (_dirs27885_
              (let ((_$e27878_ (gxc#current-compile-output-dir)))
                (if _$e27878_
                    ((lambda (_g2788027882_) (cons _g2788027882_ _dirs27876_))
                     _$e27878_)
                    _dirs27876_)))
             (_dirs27891_
              (map (lambda (_g2788627888_)
                     (path-expand '"static" _g2788627888_))
                   _dirs27885_)))
        (let _lp27894_ ((_rest27896_ _dirs27891_))
          (let* ((_rest2789727905_ _rest27896_)
                 (_E2790027909_
                  (lambda () (error '"No clause matching" _rest2789727905_)))
                 (_else2789927913_
                  (lambda ()
                    (gxc#raise-compile-error
                     '"cannot find static module"
                     (##structure-ref _ctx27872_ '1 gx#expander-context::t '#f)
                     _scm27874_)))
                 (_K2790127921_
                  (lambda (_rest27916_ _dir27917_)
                    (let ((_path27919_ (path-expand _scm27874_ _dir27917_)))
                      (if (file-exists? _path27919_)
                          _path27919_
                          (_lp27894_ _rest27916_))))))
            (if (##pair? _rest2789727905_)
                (let ((_hd2790227924_ (##car _rest2789727905_))
                      (_tl2790327926_ (##cdr _rest2789727905_)))
                  (let* ((_dir27929_ _hd2790227924_)
                         (_rest27931_ _tl2790327926_))
                    (_K2790127921_ _rest27931_ _dir27929_)))
                (_else2789927913_)))))))
  (define gxc#file-empty?
    (lambda (_path27870_)
      (zero? (file-info-size (file-info _path27870_ '#t)))))
  (define gxc#compile-top-module
    (lambda (_ctx27867_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#verbose
            '"compile "
            (##structure-ref _ctx27867_ '1 gx#expander-context::t '#f))
           (if (gxc#current-compile-optimize)
               (gxc#optimize! _ctx27867_)
               '#!void)
           (gxc#collect-bindings _ctx27867_)
           (gxc#compile-runtime-code _ctx27867_)
           (gxc#compile-meta-code _ctx27867_)
           (if (if (gxc#current-compile-optimize)
                   (gxc#current-compile-generate-ssxi)
                   '#f)
               (gxc#compile-ssxi-code _ctx27867_)
               '#!void)))
       gx#current-expander-context
       _ctx27867_
       gx#current-expander-phi
       '0
       gx#current-expander-marks
       '()
       gxc#current-compile-symbol-table
       (let ((__obj28343 (make-object gxc#symbol-table::t '2)))
         (begin (gxc#symbol-table:::init! __obj28343) __obj28343))
       gxc#current-compile-runtime-sections
       (make-hash-table-eq)
       gxc#current-compile-runtime-names
       (make-table))))
  (define gxc#collect-bindings
    (lambda (_ctx27865_)
      (gxc#apply-collect-bindings
       (##structure-ref _ctx27865_ '11 gx#module-context::t '#f))))
  (define gxc#compile-runtime-code
    (lambda (_ctx27819_)
      (letrec ((_compile127821_
                (lambda (_ctx27854_)
                  (let* ((_code27856_
                          (##structure-ref
                           _ctx27854_
                           '11
                           gx#module-context::t
                           '#f))
                         (_rt27860_
                          (if (gxc#apply-find-runtime-code _code27856_)
                              (let ((_idstr27858_
                                     (gxc#module-id->path-string
                                      (##structure-ref
                                       _ctx27854_
                                       '1
                                       gx#expander-context::t
                                       '#f))))
                                (string-append _idstr27858_ '"__0"))
                              '#f)))
                    (begin
                      (if _rt27860_
                          (begin
                            (table-set!
                             (gxc#current-compile-runtime-sections)
                             _ctx27854_
                             _rt27860_)
                            (_generate-runtime-code27822_
                             _ctx27854_
                             _code27856_))
                          (if (gxc#current-compile-static)
                              (let ((_path27863_
                                     (gxc#compile-static-output-file
                                      _ctx27854_)))
                                (with-output-to-file
                                 (cons 'path:
                                       (cons _path27863_
                                             (cons 'permissions:
                                                   (cons '420 '()))))
                                 void))
                              '#!void))
                      (_generate-loader-code27823_
                       _ctx27854_
                       _code27856_
                       _rt27860_)))))
               (_generate-runtime-code27822_
                (lambda (_ctx27838_ _code27839_)
                  (let* ((_lifts27841_ (box '()))
                         (_runtime-code27844_
                          (call-with-parameters
                           (lambda () (gxc#apply-generate-runtime _code27839_))
                           gx#current-expander-context
                           _ctx27838_
                           gx#current-expander-phi
                           '0
                           gxc#current-compile-lift
                           _lifts27841_
                           gxc#current-compile-marks
                           (make-hash-table-eq)))
                         (_runtime-code27846_
                          (if (null? (unbox _lifts27841_))
                              _runtime-code27844_
                              (cons 'begin
                                    (foldr1 cons
                                            (cons _runtime-code27844_ '())
                                            (reverse (unbox _lifts27841_))))))
                         (_scm027848_
                          (gxc#compile-output-file _ctx27838_ '0 '".scm")))
                    (if (gxc#current-compile-static)
                        (let ((_scms27851_
                               (gxc#compile-static-output-file _ctx27838_)))
                          (begin
                            (call-with-parameters
                             (lambda ()
                               (gxc#compile-scm-file
                                _scm027848_
                                _runtime-code27846_))
                             gxc#current-compile-keep-scm
                             '#t)
                            (if (file-exists? _scms27851_)
                                (delete-file _scms27851_)
                                '#!void)
                            (gxc#verbose
                             '"copy static module "
                             _scm027848_
                             '" => "
                             _scms27851_)
                            (copy-file _scm027848_ _scms27851_)
                            (if (gxc#current-compile-keep-scm)
                                '#!void
                                (delete-file _scm027848_))))
                        (gxc#compile-scm-file
                         _scm027848_
                         _runtime-code27846_)))))
               (_generate-loader-code27823_
                (lambda (_ctx27827_ _code27828_ _rt27829_)
                  (let* ((_loader-code27832_
                          (call-with-parameters
                           (lambda () (gxc#apply-generate-loader _code27828_))
                           gx#current-expander-context
                           _ctx27827_))
                         (_loader-code27834_
                          (if _rt27829_
                              (cons 'begin
                                    (cons _loader-code27832_
                                          (cons (cons 'load-module
                                                      (cons _rt27829_ '()))
                                                '())))
                              _loader-code27832_)))
                    (call-with-parameters
                     (lambda ()
                       (gxc#compile-scm-file
                        (gxc#compile-output-file _ctx27827_ 'rt '".scm")
                        _loader-code27834_))
                     gxc#current-compile-gsc-options
                     '#f)))))
        (let ((_all-modules27825_
               (cons _ctx27819_ (gxc#lift-nested-modules _ctx27819_))))
          (for-each _compile127821_ _all-modules27825_)))))
  (define gxc#compile-meta-code
    (lambda (_ctx27721_)
      (letrec ((_compile-ssi27723_
                (lambda (_code27789_)
                  (let* ((_path27791_
                          (gxc#compile-output-file _ctx27721_ '#f '".ssi"))
                         (_prelude27802_
                          (let* ((_super27793_
                                  (##structure-ref
                                   _ctx27721_
                                   '3
                                   gx#phi-context::t
                                   '#f))
                                 (_$e27795_
                                  (##structure-ref
                                   _super27793_
                                   '1
                                   gx#expander-context::t
                                   '#f)))
                            (if _$e27795_
                                ((lambda (_g2779727799_)
                                   (make-symbol '":" _g2779727799_))
                                 _$e27795_)
                                ':<root>)))
                         (_ns27804_
                          (##structure-ref
                           _ctx27721_
                           '6
                           gx#module-context::t
                           '#f))
                         (_idstr27806_
                          (symbol->string
                           (##structure-ref
                            _ctx27721_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_pkg27813_
                          (let ((_$e27808_ (string-rindex _idstr27806_ '#\/)))
                            (if _$e27808_
                                ((lambda (_x27811_)
                                   (string->symbol
                                    (substring _idstr27806_ '0 _x27811_)))
                                 _$e27808_)
                                '#f)))
                         (_rt27815_
                          (table-ref
                           (gxc#current-compile-runtime-sections)
                           _ctx27721_
                           '#f)))
                    (begin
                      (gxc#verbose '"compile " _path27791_)
                      (with-output-to-file
                       (cons 'path:
                             (cons _path27791_
                                   (cons 'permissions: (cons '420 '()))))
                       (lambda ()
                         (begin
                           (displayln '"prelude:" '" " _prelude27802_)
                           (if _pkg27813_
                               (displayln '"package:" '" " _pkg27813_)
                               '#!void)
                           (displayln '"namespace:" '" " _ns27804_)
                           (newline)
                           (pretty-print _code27789_)
                           (if _rt27815_
                               (pretty-print
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons '_gx#load-module '()))
                                            (cons (cons '%#quote
                                                        (cons _rt27815_ '()))
                                                  '()))))
                               '#!void))))))))
               (_compile-phi27724_
                (lambda (_part27729_)
                  (let* ((_part2773027743_ _part27729_)
                         (_E2773227747_
                          (lambda ()
                            (error '"No clause matching" _part2773027743_)))
                         (_K2773327758_
                          (lambda (_code27750_
                                   _n27751_
                                   _phi27752_
                                   _phi-ctx27753_)
                            (let ((_code27756_
                                   (call-with-parameters
                                    (lambda ()
                                      (gxc#generate-runtime-phi _code27750_))
                                    gx#current-expander-context
                                    _phi-ctx27753_
                                    gx#current-expander-phi
                                    _phi27752_)))
                              (gxc#compile-scm-file
                               (gxc#compile-output-file
                                _ctx27721_
                                _n27751_
                                '".scm")
                               _code27756_)))))
                    (if (##pair? _part2773027743_)
                        (let ((_hd2773427761_ (##car _part2773027743_))
                              (_tl2773527763_ (##cdr _part2773027743_)))
                          (let ((_phi-ctx27766_ _hd2773427761_))
                            (if (##pair? _tl2773527763_)
                                (let ((_hd2773627768_ (##car _tl2773527763_))
                                      (_tl2773727770_ (##cdr _tl2773527763_)))
                                  (let ((_phi27773_ _hd2773627768_))
                                    (if (##pair? _tl2773727770_)
                                        (let ((_hd2773827775_
                                               (##car _tl2773727770_))
                                              (_tl2773927777_
                                               (##cdr _tl2773727770_)))
                                          (let ((_n27780_ _hd2773827775_))
                                            (if (##pair? _tl2773927777_)
                                                (let ((_hd2774027782_
                                                       (##car _tl2773927777_))
                                                      (_tl2774127784_
                                                       (##cdr _tl2773927777_)))
                                                  (let ((_code27787_
                                                         _hd2774027782_))
                                                    (if (##null? _tl2774127784_)
                                                        (_K2773327758_
                                                         _code27787_
                                                         _n27780_
                                                         _phi27773_
                                                         _phi-ctx27766_)
                                                        (_E2773227747_))))
                                                (_E2773227747_))))
                                        (_E2773227747_))))
                                (_E2773227747_))))
                        (_E2773227747_))))))
        (let ((_g28351_ (gxc#generate-meta-code _ctx27721_)))
          (begin
            (let ((_g28352_ (values-count _g28351_)))
              (if (not (fx= _g28352_ 2))
                  (error "Context expects 2 values" _g28352_)))
            (let ((_ssi-code27726_ (values-ref _g28351_ 0))
                  (_phi-code27727_ (values-ref _g28351_ 1)))
              (begin
                (_compile-ssi27723_ _ssi-code27726_)
                (for-each _compile-phi27724_ _phi-code27727_))))))))
  (define gxc#compile-ssxi-code
    (lambda (_ctx27704_)
      (let* ((_path27706_ (gxc#compile-output-file _ctx27704_ '#f '".ssxi.ss"))
             (_code27708_
              (gxc#apply-generate-ssxi
               (##structure-ref _ctx27704_ '11 gx#module-context::t '#f)))
             (_idstr27710_
              (symbol->string
               (##structure-ref _ctx27704_ '1 gx#expander-context::t '#f)))
             (_pkg27717_
              (let ((_$e27712_ (string-rindex _idstr27710_ '#\/)))
                (if _$e27712_
                    ((lambda (_x27715_)
                       (string->symbol (substring _idstr27710_ '0 _x27715_)))
                     _$e27712_)
                    '#f))))
        (begin
          (gxc#verbose '"compile " _path27706_)
          (with-output-to-file
           (cons 'path:
                 (cons _path27706_ (cons 'permissions: (cons '420 '()))))
           (lambda ()
             (begin
               (displayln '"prelude: :gerbil/compiler/ssxi")
               (if _pkg27717_ (displayln '"package: " _pkg27717_) '#!void)
               (newline)
               (pretty-print _code27708_))))))))
  (define gxc#generate-meta-code
    (lambda (_ctx27697_)
      (let* ((_state27699_
              (let ((__obj28344 (make-object gxc#meta-state::t '4)))
                (begin
                  (gxc#meta-state:::init! __obj28344 _ctx27697_)
                  __obj28344)))
             (_ssi-code27701_
              (gxc#apply-generate-meta
               (##structure-ref _ctx27697_ '11 gx#module-context::t '#f)
               _state27699_)))
        (values _ssi-code27701_ (gxc#meta-state-end! _state27699_)))))
  (define gxc#generate-runtime-phi
    (lambda (_stx27690_)
      (let ((_lifts27692_ (box '())))
        (call-with-parameters
         (lambda ()
           (let ((_code27695_ (gxc#apply-generate-runtime-phi _stx27690_)))
             (if (null? (unbox _lifts27692_))
                 _code27695_
                 (cons 'begin
                       (foldr1 cons
                               (cons _code27695_ '())
                               (reverse (unbox _lifts27692_)))))))
         gxc#current-compile-lift
         _lifts27692_
         gxc#current-compile-marks
         (make-hash-table-eq)))))
  (define gxc#lift-nested-modules
    (lambda (_ctx27686_)
      (let ((_modules27688_ (box '())))
        (begin
          (gxc#apply-lift-modules
           (##structure-ref _ctx27686_ '11 gx#module-context::t '#f)
           _modules27688_)
          (reverse (unbox _modules27688_))))))
  (define gxc#compile-scm-file
    (lambda (_path27682_ _code27683_)
      (begin
        (gxc#verbose '"compile " _path27682_)
        (with-output-to-file
         (cons 'path: (cons _path27682_ (cons 'permissions: (cons '420 '()))))
         (lambda ()
           (begin
             (pretty-print
              '(declare (block) (standard-bindings) (extended-bindings)))
             (pretty-print _code27683_))))
        (if (gxc#current-compile-invoke-gsc)
            (gxc#gsc-compile-file _path27682_)
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path27682_)))))
  (define gxc#gsc-debug-options
    (lambda ()
      (let ((_$e27671_ (gxc#current-compile-debug)))
        (if _$e27671_
            ((lambda (_debug27674_)
               (let ((_$e27676_ _debug27674_))
                 (if (eq? 'env _$e27676_)
                     (cons '"-debug-environments" '())
                     (if (eq? 'src _$e27676_)
                         (cons '"-debug-environments"
                               (cons '"-debug-source" '()))
                         (if (let ((_$e27679_ (eq? 'all _$e27676_)))
                               (if _$e27679_ _$e27679_ (eq? '#t _$e27676_)))
                             (cons '"-debug" '())
                             (gxc#raise-compile-error
                              '"unknown debug option"
                              _debug27674_))))))
             _$e27671_)
            '()))))
  (define gxc#gsc-compile-file
    (lambda (_path27653_)
      (let* ((_gsc-args27660_
              (let ((_$e27655_ (gxc#current-compile-gsc-options)))
                (if _$e27655_
                    ((lambda (_opts27658_)
                       (foldr1 cons (cons _path27653_ '()) _opts27658_))
                     _$e27655_)
                    (cons _path27653_ '()))))
             (_gsc-args27662_
              (foldr1 cons _gsc-args27660_ (gxc#gsc-debug-options)))
             (_g28353_
              (gxc#verbose '"invoke gsc " (cons 'gsc _gsc-args27662_)))
             (_proc27665_
              (open-process
               (cons 'path:
                     (cons '"gsc"
                           (cons 'arguments:
                                 (cons _gsc-args27662_
                                       (cons 'stdout-redirection:
                                             (cons '#f '()))))))))
             (_status27667_ (process-status _proc27665_)))
        (if (zero? _status27667_)
            '#!void
            (gxc#raise-compile-error
             '"Compilation error; gsc exit with nonzero status"
             _path27653_
             _status27667_)))))
  (define gxc#compile-output-file
    (lambda (_ctx27625_ _n27626_ _ext27627_)
      (letrec ((_module-relative-path27629_
                (lambda (_ctx27651_)
                  (path-strip-directory
                   (gxc#module-id->path-string
                    (##structure-ref
                     _ctx27651_
                     '1
                     gx#expander-context::t
                     '#f)))))
               (_module-source-directory27630_
                (lambda (_ctx27647_)
                  (path-directory
                   (let ((_mpath27649_
                          (##structure-ref
                           _ctx27647_
                           '7
                           gx#module-context::t
                           '#f)))
                     (if (string? _mpath27649_)
                         _mpath27649_
                         (last _mpath27649_))))))
               (_section-string27631_
                (lambda (_n27645_)
                  (if (number? _n27645_)
                      (number->string _n27645_)
                      (if (symbol? _n27645_)
                          (symbol->string _n27645_)
                          (if (string? _n27645_)
                              _n27645_
                              (gxc#raise-compile-error
                               '"Unexpected section"
                               _n27645_))))))
               (_file-name27632_
                (lambda (_path27643_)
                  (if _n27626_
                      (string-append
                       _path27643_
                       '"__"
                       (_section-string27631_ _n27626_)
                       _ext27627_)
                      (string-append _path27643_ _ext27627_))))
               (_file-path27633_
                (lambda ()
                  (let ((_$e27638_ (gxc#current-compile-output-dir)))
                    (if _$e27638_
                        ((lambda (_outdir27641_)
                           (path-expand
                            (_file-name27632_
                             (gxc#module-id->path-string
                              (##structure-ref
                               _ctx27625_
                               '1
                               gx#expander-context::t
                               '#f)))
                            _outdir27641_))
                         _$e27638_)
                        (path-expand
                         (_file-name27632_
                          (_module-relative-path27629_ _ctx27625_))
                         (_module-source-directory27630_ _ctx27625_)))))))
        (let ((_path27635_ (_file-path27633_)))
          (begin
            (create-directory* (path-directory _path27635_))
            _path27635_)))))
  (define gxc#compile-static-output-file
    (lambda (_ctx27608_)
      (letrec ((_file-name27610_
                (lambda (_id27623_)
                  (string-append (gxc#static-module-name _id27623_) '".scm")))
               (_file-path27611_
                (lambda ()
                  (let* ((_file27616_
                          (_file-name27610_
                           (##structure-ref
                            _ctx27608_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_$e27618_ (gxc#current-compile-output-dir)))
                    (if _$e27618_
                        ((lambda (_outdir27621_)
                           (path-expand
                            _file27616_
                            (path-expand '"static" _outdir27621_)))
                         _$e27618_)
                        (path-expand _file27616_ '"static"))))))
        (let ((_path27613_ (_file-path27611_)))
          (begin
            (create-directory* (path-directory _path27613_))
            _path27613_)))))
  (define gxc#compile-exe-output-file
    (lambda (_ctx27595_ _opts27596_)
      (let ((_$e27598_ (pgetq 'output-file: _opts27596_)))
        (if _$e27598_
            (values _$e27598_)
            (let* ((_mod-str27601_
                    (symbol->string
                     (##structure-ref
                      _ctx27595_
                      '1
                      gx#expander-context::t
                      '#f)))
                   (_$e27603_ (string-rindex _mod-str27601_ '#\/)))
              (if _$e27603_
                  ((lambda (_ix27606_)
                     (substring
                      _mod-str27601_
                      (fx+ _ix27606_ '1)
                      (string-length _mod-str27601_)))
                   _$e27603_)
                  _mod-str27601_))))))
  (define gxc#static-module-name
    (lambda (_idstr27588_)
      (if (string? _idstr27588_)
          (let* ((_str27590_ (gxc#module-id->path-string _idstr27588_))
                 (_strs27592_ (string-split _str27590_ '#\/)))
            (string-join _strs27592_ '"__"))
          (if (symbol? _idstr27588_)
              (gxc#static-module-name (symbol->string _idstr27588_))
              (error '"Bad module id" _idstr27588_))))))
