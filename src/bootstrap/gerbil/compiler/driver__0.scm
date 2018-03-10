(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#compile-timestamp
    (lambda () (inexact->exact (floor (time->seconds (current-time))))))
  (begin
    (define gxc#compile-file__%
      (lambda (_srcpath28280_ _opts28281_)
        (begin
          (if (string? _srcpath28280_)
              '#!void
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath28280_))
          (let ((_outdir28283_ (pgetq 'output-dir: _opts28281_))
                (_invoke-gsc?28284_ (pgetq 'invoke-gsc: _opts28281_))
                (_gsc-options28285_ (pgetq 'gsc-options: _opts28281_))
                (_keep-scm?28286_ (pgetq 'keep-scm: _opts28281_))
                (_verbosity28287_ (pgetq 'verbose: _opts28281_))
                (_optimize28288_ (pgetq 'optimize: _opts28281_))
                (_debug28289_ (pgetq 'debug: _opts28281_))
                (_gen-ssxi28290_ (pgetq 'generate-ssxi: _opts28281_))
                (_static28291_ (pgetq 'static: _opts28281_)))
            (begin
              (if _outdir28283_ (create-directory* _outdir28283_) '#!void)
              (if _optimize28288_ (gxc#optimizer-info-init!) '#!void)
              (call-with-parameters
               (lambda ()
                 (begin
                   (gxc#verbose '"compile " _srcpath28280_)
                   (gxc#compile-top-module
                    (gx#import-module__0 _srcpath28280_))))
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
               gxc#current-compile-optimize
               _optimize28288_
               gxc#current-compile-debug
               _debug28289_
               gxc#current-compile-generate-ssxi
               _gen-ssxi28290_
               gxc#current-compile-static
               _static28291_
               gxc#current-compile-timestamp
               (gxc#compile-timestamp)))))))
    (begin
      (define gxc#compile-file__0
        (lambda (_srcpath28297_)
          (let ((_opts28299_ '()))
            (gxc#compile-file__% _srcpath28297_ _opts28299_))))
      (define gxc#compile-file
        (lambda _g28307_
          (let ((_g28306_ (length _g28307_)))
            (cond ((fx= _g28306_ 1) (apply gxc#compile-file__0 _g28307_))
                  ((fx= _g28306_ 2) (apply gxc#compile-file__% _g28307_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-file
                    _g28307_))))))))
  (begin
    (define gxc#compile-exe-stub__%
      (lambda (_srcpath28266_ _opts28267_)
        (gxc#do-compile-exe
         _srcpath28266_
         _opts28267_
         gxc#compile-exe-stub-module)))
    (begin
      (define gxc#compile-exe-stub__0
        (lambda (_srcpath28272_)
          (let ((_opts28274_ '()))
            (gxc#compile-exe-stub__% _srcpath28272_ _opts28274_))))
      (define gxc#compile-exe-stub
        (lambda _g28309_
          (let ((_g28308_ (length _g28309_)))
            (cond ((fx= _g28308_ 1) (apply gxc#compile-exe-stub__0 _g28309_))
                  ((fx= _g28308_ 2) (apply gxc#compile-exe-stub__% _g28309_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-exe-stub
                    _g28309_))))))))
  (begin
    (define gxc#compile-static-exe__%
      (lambda (_srcpath28252_ _opts28253_)
        (gxc#do-compile-exe
         _srcpath28252_
         _opts28253_
         gxc#compile-exe-static-module)))
    (begin
      (define gxc#compile-static-exe__0
        (lambda (_srcpath28258_)
          (let ((_opts28260_ '()))
            (gxc#compile-static-exe__% _srcpath28258_ _opts28260_))))
      (define gxc#compile-static-exe
        (lambda _g28311_
          (let ((_g28310_ (length _g28311_)))
            (cond ((fx= _g28310_ 1) (apply gxc#compile-static-exe__0 _g28311_))
                  ((fx= _g28310_ 2) (apply gxc#compile-static-exe__% _g28311_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-static-exe
                    _g28311_))))))))
  (define gxc#do-compile-exe
    (lambda (_srcpath28240_ _opts28241_ _compile-e28242_)
      (begin
        (if (string? _srcpath28240_)
            '#!void
            (gxc#raise-compile-error
             '"Invalid module source path"
             _srcpath28240_))
        (let ((_outdir28244_ (pgetq 'output-dir: _opts28241_))
              (_invoke-gsc?28245_ (pgetq 'invoke-gsc: _opts28241_))
              (_gsc-options28246_ (pgetq 'gsc-options: _opts28241_))
              (_keep-scm?28247_ (pgetq 'keep-scm: _opts28241_))
              (_verbosity28248_ (pgetq 'verbose: _opts28241_)))
          (begin
            (if _outdir28244_ (create-directory* _outdir28244_) '#!void)
            (call-with-parameters
             (lambda ()
               (begin
                 (gxc#verbose '"compile exe " _srcpath28240_)
                 (_compile-e28242_
                  (gx#import-module__0 _srcpath28240_)
                  _opts28241_)))
             gxc#current-compile-output-dir
             _outdir28244_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?28245_
             gxc#current-compile-gsc-options
             _gsc-options28246_
             gxc#current-compile-keep-scm
             _keep-scm?28247_
             gxc#current-compile-verbose
             _verbosity28248_
             gxc#current-compile-timestamp
             (gxc#compile-timestamp)))))))
  (define gxc#compile-exe-stub-module
    (lambda (_ctx28206_ _opts28207_)
      (letrec ((_generate-stub28209_
                (lambda (_gx-init-stub28231_)
                  (let* ((_mod-str28233_
                          (symbol->string
                           (##structure-ref
                            _ctx28206_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_mod-rt28235_ (string-append _mod-str28233_ '"__rt"))
                         (_mod-main28237_
                          (gxc#find-runtime-symbol _ctx28206_ 'main)))
                    (begin
                      (write '(##namespace ("")))
                      (newline)
                      (write (cons 'include (cons _gx-init-stub28231_ '())))
                      (newline)
                      (write (cons '_gx#start!
                                   (cons _mod-rt28235_
                                         (cons (cons 'quote
                                                     (cons _mod-main28237_
                                                           '()))
                                               '()))))
                      (newline)))))
               (_compile-stub28210_
                (lambda (_output-scm28217_ _output-bin28218_)
                  (let* ((_init-stub28220_
                          (path-expand
                           '"lib/gx-init-exe.scm"
                           (getenv '"GERBIL_HOME")))
                         (_gsc-args28222_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin28218_
                                            (cons _output-scm28217_ '()))))))
                    (begin
                      (with-output-to-file
                       _output-scm28217_
                       (lambda () (_generate-stub28209_ _init-stub28220_)))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (gxc#verbose
                             '"invoke gsc "
                             (cons 'gsc _gsc-args28222_))
                            (let* ((_proc28226_
                                    (open-process
                                     (cons 'path:
                                           (cons '"gsc"
                                                 (cons 'arguments:
                                                       (cons _gsc-args28222_
                                                             (cons 'stdout-redirection:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_status28228_
                                    (process-status _proc28226_)))
                              (if (zero? _status28228_)
                                  '#!void
                                  (gxc#raise-compile-error
                                   '"Compilation error; gsc exit with nonzero status"
                                   _output-scm28217_
                                   _output-bin28218_
                                   _status28228_))))
                          '#!void))))))
        (let* ((_output-bin28212_
                (gxc#compile-exe-output-file _ctx28206_ _opts28207_))
               (_output-scm28214_ (string-append _output-bin28212_ '".scm")))
          (begin
            (_compile-stub28210_ _output-scm28214_ _output-bin28212_)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm28214_)))))))
  (define gxc#compile-exe-static-module
    (lambda (_ctx28065_ _opts28066_)
      (letrec ((_reset-declare28068_
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
               (_user-declare28069_
                (lambda ()
                  (let* ((_gsc-opts28147_ (pgetq 'gsc-options: _opts28066_))
                         (_gsc-prelude28149_
                          (if _gsc-opts28147_
                              (member '"-prelude" _gsc-opts28147_)
                              '#f))
                         (_gsc-prelude28151_
                          (if _gsc-prelude28149_
                              (read (open-input-string
                                     (cadr _gsc-prelude28149_)))
                              '#f)))
                    (let _lift28154_ ((_expr28156_ _gsc-prelude28151_))
                      (let* ((_expr2815728169_ _expr28156_)
                             (_E2816128173_
                              (lambda ()
                                (error '"No clause matching"
                                       _expr2815728169_)))
                             (_else2816028177_ (lambda () '#f))
                             (_try-match2815928193_
                              (lambda ()
                                (let ((_K2816228183_
                                       (lambda (_exprs28181_)
                                         (ormap1 _lift28154_ _exprs28181_))))
                                  (if (##pair? _expr2815728169_)
                                      (let ((_hd2816328186_
                                             (##car _expr2815728169_))
                                            (_tl2816428188_
                                             (##cdr _expr2815728169_)))
                                        (if (##eq? _hd2816328186_ 'begin)
                                            (let ((_exprs28191_
                                                   _tl2816428188_))
                                              (_K2816228183_ _exprs28191_))
                                            (_else2816028177_)))
                                      (_else2816028177_)))))
                             (_K2816528197_ (lambda () _expr28156_)))
                        (if (##pair? _expr2815728169_)
                            (let ((_hd2816628200_ (##car _expr2815728169_))
                                  (_tl2816728202_ (##cdr _expr2815728169_)))
                              (if (##eq? _hd2816628200_ 'declare)
                                  (_K2816528197_)
                                  (_try-match2815928193_)))
                            (_try-match2815928193_)))))))
               (_generate-stub28070_
                (lambda (_deps28138_)
                  (let ((_mod-main28140_
                         (gxc#find-runtime-symbol _ctx28065_ 'main))
                        (_reset-decl28141_ (_reset-declare28068_))
                        (_user-decl28142_ (_user-declare28069_)))
                    (begin
                      (write '(##namespace ("")))
                      (newline)
                      (write '(declare (optimize-dead-definitions)))
                      (newline)
                      (for-each
                       (lambda (_dep28144_)
                         (begin
                           (write (cons 'include (cons _dep28144_ '())))
                           (newline)
                           (write '(##namespace ("")))
                           (write _reset-decl28141_)
                           (if _user-decl28142_
                               (write _user-decl28142_)
                               '#!void)
                           (newline)))
                       _deps28138_)
                      (write (cons 'apply
                                   (cons _mod-main28140_
                                         (cons (cons 'cdr
                                                     (cons (cons 'command-line
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                      (newline)))))
               (_static-include28071_
                (lambda (_gsc-opts28121_ _home28122_)
                  (letrec* ((_static-dir28124_
                             (path-expand '"lib/static" _home28122_))
                            (_user-static-dir28125_
                             (path-expand
                              '"lib/static"
                              (getenv '"GERBIL_PATH" '"~/.gerbil")))
                            (_cppflags28126_
                             (string-append
                              '"-I "
                              _static-dir28124_
                              '" -I "
                              _user-static-dir28125_)))
                    (let ((_$e28128_ (member '"-cc-options" _gsc-opts28121_)))
                      (if _$e28128_
                          ((lambda (_rest28131_)
                             (let* ((_cell28133_ (cdr _rest28131_))
                                    (_opt28135_ (car _cell28133_)))
                               (begin
                                 (set-car!
                                  _cell28133_
                                  (string-append
                                   _opt28135_
                                   '" "
                                   _cppflags28126_))
                                 _gsc-opts28121_)))
                           _$e28128_)
                          (cons '"-cc-options"
                                (cons _cppflags28126_ _gsc-opts28121_)))))))
               (_compile-stub28072_
                (lambda (_output-scm28079_ _output-bin28080_)
                  (let* ((_gerbil-home28082_ (getenv '"GERBIL_HOME"))
                         (_gx-gambc028084_
                          (path-expand
                           '"lib/static/gx-gambc0.scm"
                           _gerbil-home28082_))
                         (_gx-gambc-init28086_
                          (path-expand
                           '"lib/gx-init-static-exe.scm"
                           _gerbil-home28082_))
                         (_gx-gambc-macros28088_
                          (path-expand
                           '"lib/static/gx-gambc#.scm"
                           _gerbil-home28082_))
                         (_include-gx-gambc-macros28090_
                          (string-append
                           '"(include \""
                           _gx-gambc-macros28088_
                           '"\")"))
                         (_bin-scm28092_
                          (gxc#find-static-module-file _ctx28065_))
                         (_deps28094_
                          (gxc#find-runtime-module-deps _ctx28065_))
                         (_deps28096_
                          (map gxc#find-static-module-file _deps28094_))
                         (_deps28101_
                          (filter (lambda (_$obj28098_)
                                    (not (gxc#file-empty? _$obj28098_)))
                                  _deps28096_))
                         (_gsc-opts28106_
                          (let ((_$e28103_ (pgetq 'gsc-options: _opts28066_)))
                            (if _$e28103_ _$e28103_ '())))
                         (_gsc-opts28108_
                          (_static-include28071_
                           _gsc-opts28106_
                           _gerbil-home28082_))
                         (_gsc-gx-macros28110_
                          (if (gerbil-runtime-smp?)
                              (cons '"-e"
                                    (cons '"(define-cond-expand-feature|enable-smp|)"
                                          (cons '"-e"
                                                (cons _include-gx-gambc-macros28090_
                                                      '()))))
                              (cons '"-e"
                                    (cons _include-gx-gambc-macros28090_
                                          '()))))
                         (_gsc-args28112_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin28080_
                                            (foldr1 cons
                                                    (foldr1 cons
                                                            (foldr1 cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _output-scm28079_ '())
                            _gsc-gx-macros28110_)
                    _gsc-opts28108_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gxc#gsc-debug-options)))))))
                    (begin
                      (with-output-to-file
                       _output-scm28079_
                       (lambda ()
                         (_generate-stub28070_
                          (cons _gx-gambc028084_
                                (cons _gx-gambc-init28086_
                                      (foldr1 cons
                                              (cons _bin-scm28092_ '())
                                              _deps28101_))))))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (gxc#verbose
                             '"invoke gsc "
                             (cons 'gsc _gsc-args28112_))
                            (let* ((_proc28116_
                                    (open-process
                                     (cons 'path:
                                           (cons '"gsc"
                                                 (cons 'arguments:
                                                       (cons _gsc-args28112_
                                                             (cons 'stdout-redirection:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_status28118_
                                    (process-status _proc28116_)))
                              (if (zero? _status28118_)
                                  '#!void
                                  (gxc#raise-compile-error
                                   '"Compilation error; gsc exit with nonzero status"
                                   _output-scm28079_
                                   _output-bin28080_
                                   _status28118_))))
                          '#!void))))))
        (let* ((_output-bin28074_
                (gxc#compile-exe-output-file _ctx28065_ _opts28066_))
               (_output-scm28076_ (string-append _output-bin28074_ '".scm")))
          (begin
            (_compile-stub28072_ _output-scm28076_ _output-bin28074_)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm28076_)))))))
  (define gxc#find-export-binding
    (lambda (_ctx28015_ _id28016_)
      (let ((_$e28062_
             (find (lambda (_e2801728019_)
                     (let* ((_g2802128031_ _e2801728019_)
                            (_E2802428035_
                             (lambda ()
                               (error '"No clause matching" _g2802128031_)))
                            (_else2802328039_ (lambda () '#f))
                            (_K2802528043_ (lambda () '#t)))
                       (if (##structure-direct-instance-of?
                            _g2802128031_
                            (##type-id gx#module-export::t))
                           (let* ((_e2802628046_
                                   (##vector-ref _g2802128031_ '1))
                                  (_e2802728049_
                                   (##vector-ref _g2802128031_ '2))
                                  (_e2802828052_
                                   (##vector-ref _g2802128031_ '3)))
                             (if (##eq? _e2802828052_ '0)
                                 (let ((_e2802928055_
                                        (##vector-ref _g2802128031_ '4)))
                                   (if ((lambda (_g2805728059_)
                                          (eq? _g2805728059_ _id28016_))
                                        _e2802928055_)
                                       (_K2802528043_)
                                       (_else2802328039_)))
                                 (_else2802328039_)))
                           (_else2802328039_))))
                   (##structure-ref _ctx28015_ '9 gx#module-context::t '#f))))
        (if _$e28062_ (gx#core-resolve-module-export _$e28062_) '#f))))
  (define gxc#find-runtime-symbol
    (lambda (_ctx28007_ _id28008_)
      (let ((_$e28010_ (gxc#find-export-binding _ctx28007_ _id28008_)))
        (if _$e28010_
            ((lambda (_bind28013_)
               (begin
                 (if (##structure-instance-of?
                      _bind28013_
                      'gx#runtime-binding::t)
                     '#!void
                     (gxc#raise-compile-error
                      '"export is not a runtime binding"
                      _id28008_))
                 (##structure-ref _bind28013_ '1 gx#binding::t '#f)))
             _$e28010_)
            (gxc#raise-compile-error
             '"module does not export symbol"
             (##structure-ref _ctx28007_ '1 gx#expander-context::t '#f)
             _id28008_)))))
  (define gxc#find-runtime-module-deps
    (lambda (_ctx27894_)
      (letrec* ((_ht27896_ (make-hash-table-eq))
                (_import-set-template27897_
                 (lambda (_in27959_ _phi27960_)
                   (let ((_iphi27962_
                          (fx+ _phi27960_
                               (##direct-structure-ref
                                _in27959_
                                '2
                                gx#import-set::t
                                '#f)))
                         (_imports27963_
                          (##structure-ref
                           (##direct-structure-ref
                            _in27959_
                            '1
                            gx#import-set::t
                            '#f)
                           '8
                           gx#module-context::t
                           '#f)))
                     (let _lp27965_ ((_rest27967_ _imports27963_)
                                     (_r27968_ '()))
                       (let* ((_rest2796927977_ _rest27967_)
                              (_E2797227981_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest2796927977_)))
                              (_else2797127985_ (lambda () _r27968_))
                              (_K2797327995_
                               (lambda (_rest27988_ _in27989_)
                                 (if (##structure-instance-of?
                                      _in27989_
                                      'gx#module-context::t)
                                     (if (fxzero? _iphi27962_)
                                         (_lp27965_
                                          _rest27988_
                                          (cons _in27989_ _r27968_))
                                         (_lp27965_ _rest27988_ _r27968_))
                                     (if (##structure-direct-instance-of?
                                          _in27989_
                                          'gx#module-import::t)
                                         (let ((_iphi27991_
                                                (fx+ _phi27960_
                                                     (##direct-structure-ref
                                                      _in27989_
                                                      '3
                                                      gx#module-import::t
                                                      '#f))))
                                           (if (fxzero? _iphi27991_)
                                               (_lp27965_
                                                _rest27988_
                                                (cons (##direct-structure-ref
                                                       (##direct-structure-ref
                                                        _in27989_
                                                        '1
                                                        gx#module-import::t
                                                        '#f)
                                                       '1
                                                       gx#module-export::t
                                                       '#f)
                                                      _r27968_))
                                               (_lp27965_
                                                _rest27988_
                                                _r27968_)))
                                         (if (##structure-direct-instance-of?
                                              _in27989_
                                              'gx#import-set::t)
                                             (let ((_xphi27993_
                                                    (fx+ _iphi27962_
                                                         (##direct-structure-ref
                                                          _in27989_
                                                          '2
                                                          gx#import-set::t
                                                          '#f))))
                                               (if (fxzero? _xphi27993_)
                                                   (_lp27965_
                                                    _rest27988_
                                                    (cons (##direct-structure-ref
                                                           _in27989_
                                                           '1
                                                           gx#import-set::t
                                                           '#f)
                                                          _r27968_))
                                                   (if (fxpositive?
                                                        _xphi27993_)
                                                       (_lp27965_
                                                        _rest27988_
                                                        (foldl1 cons
                                                                _r27968_
                                                                (_import-set-template27897_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in27989_
                         _iphi27962_)))
               (_lp27965_ _rest27988_ _r27968_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_lp27965_
                                              _rest27988_
                                              _r27968_)))))))
                         (if (##pair? _rest2796927977_)
                             (let ((_hd2797427998_ (##car _rest2796927977_))
                                   (_tl2797528000_ (##cdr _rest2796927977_)))
                               (let* ((_in28003_ _hd2797427998_)
                                      (_rest28005_ _tl2797528000_))
                                 (_K2797327995_ _rest28005_ _in28003_)))
                             (_else2797127985_)))))))
                (_find-deps27898_
                 (lambda (_rest27905_ _deps27906_)
                   (let* ((_rest2790727915_ _rest27905_)
                          (_E2791027919_
                           (lambda ()
                             (error '"No clause matching" _rest2790727915_)))
                          (_else2790927923_ (lambda () _deps27906_))
                          (_K2791127947_
                           (lambda (_rest27926_ _hd27927_)
                             (if (##structure-instance-of?
                                  _hd27927_
                                  'gx#module-context::t)
                                 (let ((_id27929_
                                        (##structure-ref
                                         _hd27927_
                                         '1
                                         gx#expander-context::t
                                         '#f))
                                       (_imports27930_
                                        (##structure-ref
                                         _hd27927_
                                         '8
                                         gx#module-context::t
                                         '#f)))
                                   (if (table-ref _ht27896_ _id27929_ '#f)
                                       (_find-deps27898_
                                        _rest27926_
                                        _deps27906_)
                                       (let ((_$e27932_
                                              (gx#core-context-prelude__%
                                               _hd27927_)))
                                         (if _$e27932_
                                             ((lambda (_pre27935_)
                                                (let ((_xdeps27937_
                                                       (_find-deps27898_
                                                        (cons _pre27935_
                                                              _imports27930_)
                                                        _deps27906_)))
                                                  (begin
                                                    (table-set!
                                                     _ht27896_
                                                     _id27929_
                                                     _hd27927_)
                                                    (_find-deps27898_
                                                     _rest27926_
                                                     (cons _hd27927_
                                                           _xdeps27937_)))))
                                              _$e27932_)
                                             (let ((_xdeps27939_
                                                    (_find-deps27898_
                                                     _imports27930_
                                                     _deps27906_)))
                                               (begin
                                                 (table-set!
                                                  _ht27896_
                                                  _id27929_
                                                  _hd27927_)
                                                 (_find-deps27898_
                                                  _rest27926_
                                                  (cons _hd27927_
                                                        _xdeps27939_))))))))
                                 (if (##structure-instance-of?
                                      _hd27927_
                                      'gx#prelude-context::t)
                                     (let ((_id27941_
                                            (##structure-ref
                                             _hd27927_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (if (table-ref _ht27896_ _id27941_ '#f)
                                           (_find-deps27898_
                                            _rest27926_
                                            _deps27906_)
                                           (let ((_xdeps27943_
                                                  (_find-deps27898_
                                                   (##structure-ref
                                                    _hd27927_
                                                    '7
                                                    gx#prelude-context::t
                                                    '#f)
                                                   _deps27906_)))
                                             (if (table-ref
                                                  _ht27896_
                                                  _id27941_
                                                  '#f)
                                                 (_find-deps27898_
                                                  _rest27926_
                                                  _xdeps27943_)
                                                 (begin
                                                   (table-set!
                                                    _ht27896_
                                                    _id27941_
                                                    _hd27927_)
                                                   (_find-deps27898_
                                                    _rest27926_
                                                    (cons _hd27927_
                                                          _xdeps27943_)))))))
                                     (if (##structure-direct-instance-of?
                                          _hd27927_
                                          'gx#module-import::t)
                                         (if (fxzero? (##direct-structure-ref
                                                       _hd27927_
                                                       '3
                                                       gx#module-import::t
                                                       '#f))
                                             (_find-deps27898_
                                              (cons (##direct-structure-ref
                                                     _hd27927_
                                                     '1
                                                     gx#module-import::t
                                                     '#f)
                                                    _rest27926_)
                                              _deps27906_)
                                             (_find-deps27898_
                                              _rest27926_
                                              _deps27906_))
                                         (if (##structure-direct-instance-of?
                                              _hd27927_
                                              'gx#module-export::t)
                                             (_find-deps27898_
                                              (cons (##direct-structure-ref
                                                     _hd27927_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)
                                                    _rest27926_)
                                              _deps27906_)
                                             (if (##structure-direct-instance-of?
                                                  _hd27927_
                                                  'gx#import-set::t)
                                                 (if (fxzero? (##direct-structure-ref
                                                               _hd27927_
                                                               '2
                                                               gx#import-set::t
                                                               '#f))
                                                     (_find-deps27898_
                                                      (cons (##direct-structure-ref
                                                             _hd27927_
                                                             '1
                                                             gx#import-set::t
                                                             '#f)
                                                            _rest27926_)
                                                      _deps27906_)
                                                     (if (fxpositive?
                                                          (##direct-structure-ref
                                                           _hd27927_
                                                           '2
                                                           gx#import-set::t
                                                           '#f))
                                                         (let ((_xdeps27945_
                                                                (_import-set-template27897_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd27927_
                         '0)))
                   (_find-deps27898_
                    (foldl1 cons _rest27926_ _xdeps27945_)
                    _deps27906_))
                 (_find-deps27898_ _rest27926_ _deps27906_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (error '"Unexpected module import"
                                                        _hd27927_)))))))))
                     (if (##pair? _rest2790727915_)
                         (let ((_hd2791227950_ (##car _rest2790727915_))
                               (_tl2791327952_ (##cdr _rest2790727915_)))
                           (let* ((_hd27955_ _hd2791227950_)
                                  (_rest27957_ _tl2791327952_))
                             (_K2791127947_ _rest27957_ _hd27955_)))
                         (_else2790927923_))))))
        (reverse (filter gx#expander-context-id
                         (_find-deps27898_
                          (let ((_$e27900_
                                 (gx#core-context-prelude__% _ctx27894_)))
                            (if _$e27900_
                                ((lambda (_pre27903_)
                                   (cons _pre27903_
                                         (##structure-ref
                                          _ctx27894_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _$e27900_)
                                (##structure-ref
                                 _ctx27894_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))))
  (define gxc#find-static-module-file
    (lambda (_ctx27833_)
      (let* ((_scm27835_
              (string-append
               (gxc#static-module-name
                (##structure-ref _ctx27833_ '1 gx#expander-context::t '#f))
               '".scm"))
             (_dirs27837_ (gx#current-expander-module-library-path))
             (_dirs27846_
              (let ((_$e27839_ (gxc#current-compile-output-dir)))
                (if _$e27839_
                    ((lambda (_g2784127843_) (cons _g2784127843_ _dirs27837_))
                     _$e27839_)
                    _dirs27837_)))
             (_dirs27852_
              (map (lambda (_g2784727849_)
                     (path-expand '"static" _g2784727849_))
                   _dirs27846_)))
        (let _lp27855_ ((_rest27857_ _dirs27852_))
          (let* ((_rest2785827866_ _rest27857_)
                 (_E2786127870_
                  (lambda () (error '"No clause matching" _rest2785827866_)))
                 (_else2786027874_
                  (lambda ()
                    (gxc#raise-compile-error
                     '"cannot find static module"
                     (##structure-ref _ctx27833_ '1 gx#expander-context::t '#f)
                     _scm27835_)))
                 (_K2786227882_
                  (lambda (_rest27877_ _dir27878_)
                    (let ((_path27880_ (path-expand _scm27835_ _dir27878_)))
                      (if (file-exists? _path27880_)
                          _path27880_
                          (_lp27855_ _rest27877_))))))
            (if (##pair? _rest2785827866_)
                (let ((_hd2786327885_ (##car _rest2785827866_))
                      (_tl2786427887_ (##cdr _rest2785827866_)))
                  (let* ((_dir27890_ _hd2786327885_)
                         (_rest27892_ _tl2786427887_))
                    (_K2786227882_ _rest27892_ _dir27890_)))
                (_else2786027874_)))))))
  (define gxc#file-empty?
    (lambda (_path27831_)
      (zero? (file-info-size (file-info _path27831_ '#t)))))
  (define gxc#compile-top-module
    (lambda (_ctx27828_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#verbose
            '"compile "
            (##structure-ref _ctx27828_ '1 gx#expander-context::t '#f))
           (if (gxc#current-compile-optimize)
               (gxc#optimize! _ctx27828_)
               '#!void)
           (gxc#collect-bindings _ctx27828_)
           (gxc#compile-runtime-code _ctx27828_)
           (gxc#compile-meta-code _ctx27828_)
           (if (if (gxc#current-compile-optimize)
                   (gxc#current-compile-generate-ssxi)
                   '#f)
               (gxc#compile-ssxi-code _ctx27828_)
               '#!void)))
       gx#current-expander-context
       _ctx27828_
       gx#current-expander-phi
       '0
       gx#current-expander-marks
       '()
       gxc#current-compile-symbol-table
       (let ((__obj28304 (make-object gxc#symbol-table::t '2)))
         (begin (gxc#symbol-table:::init! __obj28304) __obj28304))
       gxc#current-compile-runtime-sections
       (make-hash-table-eq)
       gxc#current-compile-runtime-names
       (make-table))))
  (define gxc#collect-bindings
    (lambda (_ctx27826_)
      (gxc#apply-collect-bindings
       (##structure-ref _ctx27826_ '11 gx#module-context::t '#f))))
  (define gxc#compile-runtime-code
    (lambda (_ctx27780_)
      (letrec ((_compile127782_
                (lambda (_ctx27815_)
                  (let* ((_code27817_
                          (##structure-ref
                           _ctx27815_
                           '11
                           gx#module-context::t
                           '#f))
                         (_rt27821_
                          (if (gxc#apply-find-runtime-code _code27817_)
                              (let ((_idstr27819_
                                     (symbol->string
                                      (##structure-ref
                                       _ctx27815_
                                       '1
                                       gx#expander-context::t
                                       '#f))))
                                (string-append _idstr27819_ '"__0"))
                              '#f)))
                    (begin
                      (if _rt27821_
                          (begin
                            (table-set!
                             (gxc#current-compile-runtime-sections)
                             _ctx27815_
                             _rt27821_)
                            (_generate-runtime-code27783_
                             _ctx27815_
                             _code27817_))
                          (if (gxc#current-compile-static)
                              (let ((_path27824_
                                     (gxc#compile-static-output-file
                                      _ctx27815_)))
                                (with-output-to-file
                                 (cons 'path:
                                       (cons _path27824_
                                             (cons 'permissions:
                                                   (cons '420 '()))))
                                 void))
                              '#!void))
                      (_generate-loader-code27784_
                       _ctx27815_
                       _code27817_
                       _rt27821_)))))
               (_generate-runtime-code27783_
                (lambda (_ctx27799_ _code27800_)
                  (let* ((_lifts27802_ (box '()))
                         (_runtime-code27805_
                          (call-with-parameters
                           (lambda () (gxc#apply-generate-runtime _code27800_))
                           gx#current-expander-context
                           _ctx27799_
                           gx#current-expander-phi
                           '0
                           gxc#current-compile-lift
                           _lifts27802_
                           gxc#current-compile-marks
                           (make-hash-table-eq)))
                         (_runtime-code27807_
                          (if (null? (unbox _lifts27802_))
                              _runtime-code27805_
                              (cons 'begin
                                    (foldr1 cons
                                            (cons _runtime-code27805_ '())
                                            (reverse (unbox _lifts27802_))))))
                         (_scm027809_
                          (gxc#compile-output-file _ctx27799_ '0 '".scm")))
                    (if (gxc#current-compile-static)
                        (let ((_scms27812_
                               (gxc#compile-static-output-file _ctx27799_)))
                          (begin
                            (call-with-parameters
                             (lambda ()
                               (gxc#compile-scm-file
                                _scm027809_
                                _runtime-code27807_))
                             gxc#current-compile-keep-scm
                             '#t)
                            (if (file-exists? _scms27812_)
                                (delete-file _scms27812_)
                                '#!void)
                            (gxc#verbose
                             '"copy static module "
                             _scm027809_
                             '" => "
                             _scms27812_)
                            (copy-file _scm027809_ _scms27812_)
                            (if (gxc#current-compile-keep-scm)
                                '#!void
                                (delete-file _scm027809_))))
                        (gxc#compile-scm-file
                         _scm027809_
                         _runtime-code27807_)))))
               (_generate-loader-code27784_
                (lambda (_ctx27788_ _code27789_ _rt27790_)
                  (let* ((_loader-code27793_
                          (call-with-parameters
                           (lambda () (gxc#apply-generate-loader _code27789_))
                           gx#current-expander-context
                           _ctx27788_))
                         (_loader-code27795_
                          (if _rt27790_
                              (cons 'begin
                                    (cons _loader-code27793_
                                          (cons (cons 'load-module
                                                      (cons _rt27790_ '()))
                                                '())))
                              _loader-code27793_)))
                    (call-with-parameters
                     (lambda ()
                       (gxc#compile-scm-file
                        (gxc#compile-output-file _ctx27788_ 'rt '".scm")
                        _loader-code27795_))
                     gxc#current-compile-gsc-options
                     '#f)))))
        (let ((_all-modules27786_
               (cons _ctx27780_ (gxc#lift-nested-modules _ctx27780_))))
          (for-each _compile127782_ _all-modules27786_)))))
  (define gxc#compile-meta-code
    (lambda (_ctx27682_)
      (letrec ((_compile-ssi27684_
                (lambda (_code27750_)
                  (let* ((_path27752_
                          (gxc#compile-output-file _ctx27682_ '#f '".ssi"))
                         (_prelude27763_
                          (let* ((_super27754_
                                  (##structure-ref
                                   _ctx27682_
                                   '3
                                   gx#phi-context::t
                                   '#f))
                                 (_$e27756_
                                  (##structure-ref
                                   _super27754_
                                   '1
                                   gx#expander-context::t
                                   '#f)))
                            (if _$e27756_
                                ((lambda (_g2775827760_)
                                   (make-symbol '":" _g2775827760_))
                                 _$e27756_)
                                ':<root>)))
                         (_ns27765_
                          (##structure-ref
                           _ctx27682_
                           '6
                           gx#module-context::t
                           '#f))
                         (_idstr27767_
                          (symbol->string
                           (##structure-ref
                            _ctx27682_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_pkg27774_
                          (let ((_$e27769_ (string-rindex _idstr27767_ '#\/)))
                            (if _$e27769_
                                ((lambda (_x27772_)
                                   (string->symbol
                                    (substring _idstr27767_ '0 _x27772_)))
                                 _$e27769_)
                                '#f)))
                         (_rt27776_
                          (table-ref
                           (gxc#current-compile-runtime-sections)
                           _ctx27682_
                           '#f)))
                    (begin
                      (gxc#verbose '"compile " _path27752_)
                      (with-output-to-file
                       (cons 'path:
                             (cons _path27752_
                                   (cons 'permissions: (cons '420 '()))))
                       (lambda ()
                         (begin
                           (displayln '"prelude:" '" " _prelude27763_)
                           (if _pkg27774_
                               (displayln '"package:" '" " _pkg27774_)
                               '#!void)
                           (displayln '"namespace:" '" " _ns27765_)
                           (newline)
                           (pretty-print _code27750_)
                           (if _rt27776_
                               (pretty-print
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons '_gx#load-module '()))
                                            (cons (cons '%#quote
                                                        (cons _rt27776_ '()))
                                                  '()))))
                               '#!void))))))))
               (_compile-phi27685_
                (lambda (_part27690_)
                  (let* ((_part2769127704_ _part27690_)
                         (_E2769327708_
                          (lambda ()
                            (error '"No clause matching" _part2769127704_)))
                         (_K2769427719_
                          (lambda (_code27711_
                                   _n27712_
                                   _phi27713_
                                   _phi-ctx27714_)
                            (let ((_code27717_
                                   (call-with-parameters
                                    (lambda ()
                                      (gxc#generate-runtime-phi _code27711_))
                                    gx#current-expander-context
                                    _phi-ctx27714_
                                    gx#current-expander-phi
                                    _phi27713_)))
                              (gxc#compile-scm-file
                               (gxc#compile-output-file
                                _ctx27682_
                                _n27712_
                                '".scm")
                               _code27717_)))))
                    (if (##pair? _part2769127704_)
                        (let ((_hd2769527722_ (##car _part2769127704_))
                              (_tl2769627724_ (##cdr _part2769127704_)))
                          (let ((_phi-ctx27727_ _hd2769527722_))
                            (if (##pair? _tl2769627724_)
                                (let ((_hd2769727729_ (##car _tl2769627724_))
                                      (_tl2769827731_ (##cdr _tl2769627724_)))
                                  (let ((_phi27734_ _hd2769727729_))
                                    (if (##pair? _tl2769827731_)
                                        (let ((_hd2769927736_
                                               (##car _tl2769827731_))
                                              (_tl2770027738_
                                               (##cdr _tl2769827731_)))
                                          (let ((_n27741_ _hd2769927736_))
                                            (if (##pair? _tl2770027738_)
                                                (let ((_hd2770127743_
                                                       (##car _tl2770027738_))
                                                      (_tl2770227745_
                                                       (##cdr _tl2770027738_)))
                                                  (let ((_code27748_
                                                         _hd2770127743_))
                                                    (if (##null? _tl2770227745_)
                                                        (_K2769427719_
                                                         _code27748_
                                                         _n27741_
                                                         _phi27734_
                                                         _phi-ctx27727_)
                                                        (_E2769327708_))))
                                                (_E2769327708_))))
                                        (_E2769327708_))))
                                (_E2769327708_))))
                        (_E2769327708_))))))
        (let ((_g28312_ (gxc#generate-meta-code _ctx27682_)))
          (begin
            (let ((_g28313_ (values-count _g28312_)))
              (if (not (fx= _g28313_ 2))
                  (error "Context expects 2 values" _g28313_)))
            (let ((_ssi-code27687_ (values-ref _g28312_ 0))
                  (_phi-code27688_ (values-ref _g28312_ 1)))
              (begin
                (_compile-ssi27684_ _ssi-code27687_)
                (for-each _compile-phi27685_ _phi-code27688_))))))))
  (define gxc#compile-ssxi-code
    (lambda (_ctx27665_)
      (let* ((_path27667_ (gxc#compile-output-file _ctx27665_ '#f '".ssxi.ss"))
             (_code27669_
              (gxc#apply-generate-ssxi
               (##structure-ref _ctx27665_ '11 gx#module-context::t '#f)))
             (_idstr27671_
              (symbol->string
               (##structure-ref _ctx27665_ '1 gx#expander-context::t '#f)))
             (_pkg27678_
              (let ((_$e27673_ (string-rindex _idstr27671_ '#\/)))
                (if _$e27673_
                    ((lambda (_x27676_)
                       (string->symbol (substring _idstr27671_ '0 _x27676_)))
                     _$e27673_)
                    '#f))))
        (begin
          (gxc#verbose '"compile " _path27667_)
          (with-output-to-file
           (cons 'path:
                 (cons _path27667_ (cons 'permissions: (cons '420 '()))))
           (lambda ()
             (begin
               (displayln '"prelude: :gerbil/compiler/ssxi")
               (if _pkg27678_ (displayln '"package: " _pkg27678_) '#!void)
               (newline)
               (pretty-print _code27669_))))))))
  (define gxc#generate-meta-code
    (lambda (_ctx27658_)
      (let* ((_state27660_
              (let ((__obj28305 (make-object gxc#meta-state::t '4)))
                (begin
                  (gxc#meta-state:::init! __obj28305 _ctx27658_)
                  __obj28305)))
             (_ssi-code27662_
              (gxc#apply-generate-meta
               (##structure-ref _ctx27658_ '11 gx#module-context::t '#f)
               _state27660_)))
        (values _ssi-code27662_ (gxc#meta-state-end! _state27660_)))))
  (define gxc#generate-runtime-phi
    (lambda (_stx27651_)
      (let ((_lifts27653_ (box '())))
        (call-with-parameters
         (lambda ()
           (let ((_code27656_ (gxc#apply-generate-runtime-phi _stx27651_)))
             (if (null? (unbox _lifts27653_))
                 _code27656_
                 (cons 'begin
                       (foldr1 cons
                               (cons _code27656_ '())
                               (reverse (unbox _lifts27653_)))))))
         gxc#current-compile-lift
         _lifts27653_
         gxc#current-compile-marks
         (make-hash-table-eq)))))
  (define gxc#lift-nested-modules
    (lambda (_ctx27647_)
      (let ((_modules27649_ (box '())))
        (begin
          (gxc#apply-lift-modules
           (##structure-ref _ctx27647_ '11 gx#module-context::t '#f)
           _modules27649_)
          (reverse (unbox _modules27649_))))))
  (define gxc#compile-scm-file
    (lambda (_path27643_ _code27644_)
      (begin
        (gxc#verbose '"compile " _path27643_)
        (with-output-to-file
         (cons 'path: (cons _path27643_ (cons 'permissions: (cons '420 '()))))
         (lambda ()
           (begin
             (pretty-print
              '(declare (block) (standard-bindings) (extended-bindings)))
             (pretty-print _code27644_))))
        (if (gxc#current-compile-invoke-gsc)
            (gxc#gsc-compile-file _path27643_)
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path27643_)))))
  (define gxc#gsc-debug-options
    (lambda ()
      (let ((_$e27632_ (gxc#current-compile-debug)))
        (if _$e27632_
            ((lambda (_debug27635_)
               (let ((_$e27637_ _debug27635_))
                 (if (eq? 'env _$e27637_)
                     (cons '"-debug-environments" '())
                     (if (eq? 'src _$e27637_)
                         (cons '"-debug-environments"
                               (cons '"-debug-source" '()))
                         (if (let ((_$e27640_ (eq? 'all _$e27637_)))
                               (if _$e27640_ _$e27640_ (eq? '#t _$e27637_)))
                             (cons '"-debug" '())
                             (gxc#raise-compile-error
                              '"unknown debug option"
                              _debug27635_))))))
             _$e27632_)
            '()))))
  (define gxc#gsc-compile-file
    (lambda (_path27614_)
      (let* ((_gsc-args27621_
              (let ((_$e27616_ (gxc#current-compile-gsc-options)))
                (if _$e27616_
                    ((lambda (_opts27619_)
                       (foldr1 cons (cons _path27614_ '()) _opts27619_))
                     _$e27616_)
                    (cons _path27614_ '()))))
             (_gsc-args27623_
              (foldr1 cons _gsc-args27621_ (gxc#gsc-debug-options)))
             (_g28314_
              (gxc#verbose '"invoke gsc " (cons 'gsc _gsc-args27623_)))
             (_proc27626_
              (open-process
               (cons 'path:
                     (cons '"gsc"
                           (cons 'arguments:
                                 (cons _gsc-args27623_
                                       (cons 'stdout-redirection:
                                             (cons '#f '()))))))))
             (_status27628_ (process-status _proc27626_)))
        (if (zero? _status27628_)
            '#!void
            (gxc#raise-compile-error
             '"Compilation error; gsc exit with nonzero status"
             _path27614_
             _status27628_)))))
  (define gxc#compile-output-file
    (lambda (_ctx27586_ _n27587_ _ext27588_)
      (letrec ((_module-relative-path27590_
                (lambda (_ctx27612_)
                  (path-strip-directory
                   (symbol->string
                    (##structure-ref
                     _ctx27612_
                     '1
                     gx#expander-context::t
                     '#f)))))
               (_module-source-directory27591_
                (lambda (_ctx27608_)
                  (path-directory
                   (let ((_mpath27610_
                          (##structure-ref
                           _ctx27608_
                           '7
                           gx#module-context::t
                           '#f)))
                     (if (string? _mpath27610_)
                         _mpath27610_
                         (last _mpath27610_))))))
               (_section-string27592_
                (lambda (_n27606_)
                  (if (number? _n27606_)
                      (number->string _n27606_)
                      (if (symbol? _n27606_)
                          (symbol->string _n27606_)
                          (if (string? _n27606_)
                              _n27606_
                              (gxc#raise-compile-error
                               '"Unexpected section"
                               _n27606_))))))
               (_file-name27593_
                (lambda (_path27604_)
                  (if _n27587_
                      (string-append
                       _path27604_
                       '"__"
                       (_section-string27592_ _n27587_)
                       _ext27588_)
                      (string-append _path27604_ _ext27588_))))
               (_file-path27594_
                (lambda ()
                  (let ((_$e27599_ (gxc#current-compile-output-dir)))
                    (if _$e27599_
                        ((lambda (_outdir27602_)
                           (path-expand
                            (_file-name27593_
                             (symbol->string
                              (##structure-ref
                               _ctx27586_
                               '1
                               gx#expander-context::t
                               '#f)))
                            _outdir27602_))
                         _$e27599_)
                        (path-expand
                         (_file-name27593_
                          (_module-relative-path27590_ _ctx27586_))
                         (_module-source-directory27591_ _ctx27586_)))))))
        (let ((_path27596_ (_file-path27594_)))
          (begin
            (create-directory* (path-directory _path27596_))
            _path27596_)))))
  (define gxc#compile-static-output-file
    (lambda (_ctx27569_)
      (letrec ((_file-name27571_
                (lambda (_idstr27584_)
                  (string-append
                   (gxc#static-module-name _idstr27584_)
                   '".scm")))
               (_file-path27572_
                (lambda ()
                  (let* ((_file27577_
                          (_file-name27571_
                           (symbol->string
                            (##structure-ref
                             _ctx27569_
                             '1
                             gx#expander-context::t
                             '#f))))
                         (_$e27579_ (gxc#current-compile-output-dir)))
                    (if _$e27579_
                        ((lambda (_outdir27582_)
                           (path-expand
                            _file27577_
                            (path-expand '"static" _outdir27582_)))
                         _$e27579_)
                        (path-expand _file27577_ '"static"))))))
        (let ((_path27574_ (_file-path27572_)))
          (begin
            (create-directory* (path-directory _path27574_))
            _path27574_)))))
  (define gxc#compile-exe-output-file
    (lambda (_ctx27556_ _opts27557_)
      (let ((_$e27559_ (pgetq 'output-file: _opts27557_)))
        (if _$e27559_
            (values _$e27559_)
            (let* ((_mod-str27562_
                    (symbol->string
                     (##structure-ref
                      _ctx27556_
                      '1
                      gx#expander-context::t
                      '#f)))
                   (_$e27564_ (string-rindex _mod-str27562_ '#\/)))
              (if _$e27564_
                  ((lambda (_ix27567_)
                     (substring
                      _mod-str27562_
                      (fx+ _ix27567_ '1)
                      (string-length _mod-str27562_)))
                   _$e27564_)
                  _mod-str27562_))))))
  (define gxc#static-module-name
    (lambda (_idstr27552_)
      (if (string? _idstr27552_)
          (let ((_strs27554_ (string-split _idstr27552_ '#\/)))
            (string-join _strs27554_ '"__"))
          (if (symbol? _idstr27552_)
              (gxc#static-module-name (symbol->string _idstr27552_))
              (error '"Bad module id" _idstr27552_))))))
