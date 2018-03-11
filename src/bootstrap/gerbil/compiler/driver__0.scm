(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#compile-timestamp
    (lambda () (inexact->exact (floor (time->seconds (current-time))))))
  (begin
    (define gxc#compile-file__%
      (lambda (_srcpath28304_ _opts28305_)
        (begin
          (if (string? _srcpath28304_)
              '#!void
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath28304_))
          (let ((_outdir28307_ (pgetq 'output-dir: _opts28305_))
                (_invoke-gsc?28308_ (pgetq 'invoke-gsc: _opts28305_))
                (_gsc-options28309_ (pgetq 'gsc-options: _opts28305_))
                (_keep-scm?28310_ (pgetq 'keep-scm: _opts28305_))
                (_verbosity28311_ (pgetq 'verbose: _opts28305_))
                (_optimize28312_ (pgetq 'optimize: _opts28305_))
                (_debug28313_ (pgetq 'debug: _opts28305_))
                (_gen-ssxi28314_ (pgetq 'generate-ssxi: _opts28305_))
                (_static28315_ (pgetq 'static: _opts28305_)))
            (begin
              (if _outdir28307_ (create-directory* _outdir28307_) '#!void)
              (if _optimize28312_ (gxc#optimizer-info-init!) '#!void)
              (call-with-parameters
               (lambda ()
                 (begin
                   (gxc#verbose '"compile " _srcpath28304_)
                   (gxc#compile-top-module
                    (gx#import-module__0 _srcpath28304_))))
               gxc#current-compile-output-dir
               _outdir28307_
               gxc#current-compile-invoke-gsc
               _invoke-gsc?28308_
               gxc#current-compile-gsc-options
               _gsc-options28309_
               gxc#current-compile-keep-scm
               _keep-scm?28310_
               gxc#current-compile-verbose
               _verbosity28311_
               gxc#current-compile-optimize
               _optimize28312_
               gxc#current-compile-debug
               _debug28313_
               gxc#current-compile-generate-ssxi
               _gen-ssxi28314_
               gxc#current-compile-static
               _static28315_
               gxc#current-compile-timestamp
               (gxc#compile-timestamp)))))))
    (begin
      (define gxc#compile-file__0
        (lambda (_srcpath28321_)
          (let ((_opts28323_ '()))
            (gxc#compile-file__% _srcpath28321_ _opts28323_))))
      (define gxc#compile-file
        (lambda _g28331_
          (let ((_g28330_ (length _g28331_)))
            (cond ((fx= _g28330_ 1) (apply gxc#compile-file__0 _g28331_))
                  ((fx= _g28330_ 2) (apply gxc#compile-file__% _g28331_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-file
                    _g28331_))))))))
  (begin
    (define gxc#compile-exe-stub__%
      (lambda (_srcpath28290_ _opts28291_)
        (gxc#do-compile-exe
         _srcpath28290_
         _opts28291_
         gxc#compile-exe-stub-module)))
    (begin
      (define gxc#compile-exe-stub__0
        (lambda (_srcpath28296_)
          (let ((_opts28298_ '()))
            (gxc#compile-exe-stub__% _srcpath28296_ _opts28298_))))
      (define gxc#compile-exe-stub
        (lambda _g28333_
          (let ((_g28332_ (length _g28333_)))
            (cond ((fx= _g28332_ 1) (apply gxc#compile-exe-stub__0 _g28333_))
                  ((fx= _g28332_ 2) (apply gxc#compile-exe-stub__% _g28333_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-exe-stub
                    _g28333_))))))))
  (begin
    (define gxc#compile-static-exe__%
      (lambda (_srcpath28276_ _opts28277_)
        (gxc#do-compile-exe
         _srcpath28276_
         _opts28277_
         gxc#compile-exe-static-module)))
    (begin
      (define gxc#compile-static-exe__0
        (lambda (_srcpath28282_)
          (let ((_opts28284_ '()))
            (gxc#compile-static-exe__% _srcpath28282_ _opts28284_))))
      (define gxc#compile-static-exe
        (lambda _g28335_
          (let ((_g28334_ (length _g28335_)))
            (cond ((fx= _g28334_ 1) (apply gxc#compile-static-exe__0 _g28335_))
                  ((fx= _g28334_ 2) (apply gxc#compile-static-exe__% _g28335_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-static-exe
                    _g28335_))))))))
  (define gxc#do-compile-exe
    (lambda (_srcpath28264_ _opts28265_ _compile-e28266_)
      (begin
        (if (string? _srcpath28264_)
            '#!void
            (gxc#raise-compile-error
             '"Invalid module source path"
             _srcpath28264_))
        (let ((_outdir28268_ (pgetq 'output-dir: _opts28265_))
              (_invoke-gsc?28269_ (pgetq 'invoke-gsc: _opts28265_))
              (_gsc-options28270_ (pgetq 'gsc-options: _opts28265_))
              (_keep-scm?28271_ (pgetq 'keep-scm: _opts28265_))
              (_verbosity28272_ (pgetq 'verbose: _opts28265_)))
          (begin
            (if _outdir28268_ (create-directory* _outdir28268_) '#!void)
            (call-with-parameters
             (lambda ()
               (begin
                 (gxc#verbose '"compile exe " _srcpath28264_)
                 (_compile-e28266_
                  (gx#import-module__0 _srcpath28264_)
                  _opts28265_)))
             gxc#current-compile-output-dir
             _outdir28268_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?28269_
             gxc#current-compile-gsc-options
             _gsc-options28270_
             gxc#current-compile-keep-scm
             _keep-scm?28271_
             gxc#current-compile-verbose
             _verbosity28272_
             gxc#current-compile-timestamp
             (gxc#compile-timestamp)))))))
  (define gxc#compile-exe-stub-module
    (lambda (_ctx28230_ _opts28231_)
      (letrec ((_generate-stub28233_
                (lambda (_gx-init-stub28255_)
                  (let* ((_mod-str28257_
                          (gxc#module-id->path-string
                           (##structure-ref
                            _ctx28230_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_mod-rt28259_ (string-append _mod-str28257_ '"__rt"))
                         (_mod-main28261_
                          (gxc#find-runtime-symbol _ctx28230_ 'main)))
                    (begin
                      (write '(##namespace ("")))
                      (newline)
                      (write (cons 'include (cons _gx-init-stub28255_ '())))
                      (newline)
                      (write (cons '_gx#start!
                                   (cons _mod-rt28259_
                                         (cons (cons 'quote
                                                     (cons _mod-main28261_
                                                           '()))
                                               '()))))
                      (newline)))))
               (_compile-stub28234_
                (lambda (_output-scm28241_ _output-bin28242_)
                  (let* ((_init-stub28244_
                          (path-expand
                           '"lib/gx-init-exe.scm"
                           (getenv '"GERBIL_HOME")))
                         (_gsc-args28246_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin28242_
                                            (cons _output-scm28241_ '()))))))
                    (begin
                      (with-output-to-file
                       _output-scm28241_
                       (lambda () (_generate-stub28233_ _init-stub28244_)))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (gxc#verbose
                             '"invoke gsc "
                             (cons 'gsc _gsc-args28246_))
                            (let* ((_proc28250_
                                    (open-process
                                     (cons 'path:
                                           (cons '"gsc"
                                                 (cons 'arguments:
                                                       (cons _gsc-args28246_
                                                             (cons 'stdout-redirection:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_status28252_
                                    (process-status _proc28250_)))
                              (if (zero? _status28252_)
                                  '#!void
                                  (gxc#raise-compile-error
                                   '"Compilation error; gsc exit with nonzero status"
                                   _output-scm28241_
                                   _output-bin28242_
                                   _status28252_))))
                          '#!void))))))
        (let* ((_output-bin28236_
                (gxc#compile-exe-output-file _ctx28230_ _opts28231_))
               (_output-scm28238_ (string-append _output-bin28236_ '".scm")))
          (begin
            (_compile-stub28234_ _output-scm28238_ _output-bin28236_)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm28238_)))))))
  (define gxc#compile-exe-static-module
    (lambda (_ctx28089_ _opts28090_)
      (letrec ((_reset-declare28092_
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
               (_user-declare28093_
                (lambda ()
                  (let* ((_gsc-opts28171_ (pgetq 'gsc-options: _opts28090_))
                         (_gsc-prelude28173_
                          (if _gsc-opts28171_
                              (member '"-prelude" _gsc-opts28171_)
                              '#f))
                         (_gsc-prelude28175_
                          (if _gsc-prelude28173_
                              (read (open-input-string
                                     (cadr _gsc-prelude28173_)))
                              '#f)))
                    (let _lift28178_ ((_expr28180_ _gsc-prelude28175_))
                      (let* ((_expr2818128193_ _expr28180_)
                             (_E2818528197_
                              (lambda ()
                                (error '"No clause matching"
                                       _expr2818128193_)))
                             (_else2818428201_ (lambda () '#f))
                             (_try-match2818328217_
                              (lambda ()
                                (let ((_K2818628207_
                                       (lambda (_exprs28205_)
                                         (ormap1 _lift28178_ _exprs28205_))))
                                  (if (##pair? _expr2818128193_)
                                      (let ((_hd2818728210_
                                             (##car _expr2818128193_))
                                            (_tl2818828212_
                                             (##cdr _expr2818128193_)))
                                        (if (##eq? _hd2818728210_ 'begin)
                                            (let ((_exprs28215_
                                                   _tl2818828212_))
                                              (_K2818628207_ _exprs28215_))
                                            (_else2818428201_)))
                                      (_else2818428201_)))))
                             (_K2818928221_ (lambda () _expr28180_)))
                        (if (##pair? _expr2818128193_)
                            (let ((_hd2819028224_ (##car _expr2818128193_))
                                  (_tl2819128226_ (##cdr _expr2818128193_)))
                              (if (##eq? _hd2819028224_ 'declare)
                                  (_K2818928221_)
                                  (_try-match2818328217_)))
                            (_try-match2818328217_)))))))
               (_generate-stub28094_
                (lambda (_deps28162_)
                  (let ((_mod-main28164_
                         (gxc#find-runtime-symbol _ctx28089_ 'main))
                        (_reset-decl28165_ (_reset-declare28092_))
                        (_user-decl28166_ (_user-declare28093_)))
                    (begin
                      (write '(##namespace ("")))
                      (newline)
                      (write '(declare (optimize-dead-definitions)))
                      (newline)
                      (for-each
                       (lambda (_dep28168_)
                         (begin
                           (write (cons 'include (cons _dep28168_ '())))
                           (newline)
                           (write '(##namespace ("")))
                           (write _reset-decl28165_)
                           (if _user-decl28166_
                               (write _user-decl28166_)
                               '#!void)
                           (newline)))
                       _deps28162_)
                      (write (cons 'apply
                                   (cons _mod-main28164_
                                         (cons (cons 'cdr
                                                     (cons (cons 'command-line
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                      (newline)))))
               (_static-include28095_
                (lambda (_gsc-opts28145_ _home28146_)
                  (letrec* ((_static-dir28148_
                             (path-expand '"lib/static" _home28146_))
                            (_user-static-dir28149_
                             (path-expand
                              '"lib/static"
                              (getenv '"GERBIL_PATH" '"~/.gerbil")))
                            (_cppflags28150_
                             (string-append
                              '"-I "
                              _static-dir28148_
                              '" -I "
                              _user-static-dir28149_)))
                    (let ((_$e28152_ (member '"-cc-options" _gsc-opts28145_)))
                      (if _$e28152_
                          ((lambda (_rest28155_)
                             (let* ((_cell28157_ (cdr _rest28155_))
                                    (_opt28159_ (car _cell28157_)))
                               (begin
                                 (set-car!
                                  _cell28157_
                                  (string-append
                                   _opt28159_
                                   '" "
                                   _cppflags28150_))
                                 _gsc-opts28145_)))
                           _$e28152_)
                          (cons '"-cc-options"
                                (cons _cppflags28150_ _gsc-opts28145_)))))))
               (_compile-stub28096_
                (lambda (_output-scm28103_ _output-bin28104_)
                  (let* ((_gerbil-home28106_ (getenv '"GERBIL_HOME"))
                         (_gx-gambc028108_
                          (path-expand
                           '"lib/static/gx-gambc0.scm"
                           _gerbil-home28106_))
                         (_gx-gambc-init28110_
                          (path-expand
                           '"lib/gx-init-static-exe.scm"
                           _gerbil-home28106_))
                         (_gx-gambc-macros28112_
                          (path-expand
                           '"lib/static/gx-gambc#.scm"
                           _gerbil-home28106_))
                         (_include-gx-gambc-macros28114_
                          (string-append
                           '"(include \""
                           _gx-gambc-macros28112_
                           '"\")"))
                         (_bin-scm28116_
                          (gxc#find-static-module-file _ctx28089_))
                         (_deps28118_
                          (gxc#find-runtime-module-deps _ctx28089_))
                         (_deps28120_
                          (map gxc#find-static-module-file _deps28118_))
                         (_deps28125_
                          (filter (lambda (_$obj28122_)
                                    (not (gxc#file-empty? _$obj28122_)))
                                  _deps28120_))
                         (_gsc-opts28130_
                          (let ((_$e28127_ (pgetq 'gsc-options: _opts28090_)))
                            (if _$e28127_ _$e28127_ '())))
                         (_gsc-opts28132_
                          (_static-include28095_
                           _gsc-opts28130_
                           _gerbil-home28106_))
                         (_gsc-gx-macros28134_
                          (if (gerbil-runtime-smp?)
                              (cons '"-e"
                                    (cons '"(define-cond-expand-feature|enable-smp|)"
                                          (cons '"-e"
                                                (cons _include-gx-gambc-macros28114_
                                                      '()))))
                              (cons '"-e"
                                    (cons _include-gx-gambc-macros28114_
                                          '()))))
                         (_gsc-args28136_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin28104_
                                            (foldr1 cons
                                                    (foldr1 cons
                                                            (foldr1 cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _output-scm28103_ '())
                            _gsc-gx-macros28134_)
                    _gsc-opts28132_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gxc#gsc-debug-options)))))))
                    (begin
                      (with-output-to-file
                       _output-scm28103_
                       (lambda ()
                         (_generate-stub28094_
                          (cons _gx-gambc028108_
                                (cons _gx-gambc-init28110_
                                      (foldr1 cons
                                              (cons _bin-scm28116_ '())
                                              _deps28125_))))))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (gxc#verbose
                             '"invoke gsc "
                             (cons 'gsc _gsc-args28136_))
                            (let* ((_proc28140_
                                    (open-process
                                     (cons 'path:
                                           (cons '"gsc"
                                                 (cons 'arguments:
                                                       (cons _gsc-args28136_
                                                             (cons 'stdout-redirection:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_status28142_
                                    (process-status _proc28140_)))
                              (if (zero? _status28142_)
                                  '#!void
                                  (gxc#raise-compile-error
                                   '"Compilation error; gsc exit with nonzero status"
                                   _output-scm28103_
                                   _output-bin28104_
                                   _status28142_))))
                          '#!void))))))
        (let* ((_output-bin28098_
                (gxc#compile-exe-output-file _ctx28089_ _opts28090_))
               (_output-scm28100_ (string-append _output-bin28098_ '".scm")))
          (begin
            (_compile-stub28096_ _output-scm28100_ _output-bin28098_)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm28100_)))))))
  (define gxc#find-export-binding
    (lambda (_ctx28039_ _id28040_)
      (let ((_$e28086_
             (find (lambda (_e2804128043_)
                     (let* ((_g2804528055_ _e2804128043_)
                            (_E2804828059_
                             (lambda ()
                               (error '"No clause matching" _g2804528055_)))
                            (_else2804728063_ (lambda () '#f))
                            (_K2804928067_ (lambda () '#t)))
                       (if (##structure-direct-instance-of?
                            _g2804528055_
                            (##type-id gx#module-export::t))
                           (let* ((_e2805028070_
                                   (##vector-ref _g2804528055_ '1))
                                  (_e2805128073_
                                   (##vector-ref _g2804528055_ '2))
                                  (_e2805228076_
                                   (##vector-ref _g2804528055_ '3)))
                             (if (##eq? _e2805228076_ '0)
                                 (let ((_e2805328079_
                                        (##vector-ref _g2804528055_ '4)))
                                   (if ((lambda (_g2808128083_)
                                          (eq? _g2808128083_ _id28040_))
                                        _e2805328079_)
                                       (_K2804928067_)
                                       (_else2804728063_)))
                                 (_else2804728063_)))
                           (_else2804728063_))))
                   (##structure-ref _ctx28039_ '9 gx#module-context::t '#f))))
        (if _$e28086_ (gx#core-resolve-module-export _$e28086_) '#f))))
  (define gxc#find-runtime-symbol
    (lambda (_ctx28031_ _id28032_)
      (let ((_$e28034_ (gxc#find-export-binding _ctx28031_ _id28032_)))
        (if _$e28034_
            ((lambda (_bind28037_)
               (begin
                 (if (##structure-instance-of?
                      _bind28037_
                      'gx#runtime-binding::t)
                     '#!void
                     (gxc#raise-compile-error
                      '"export is not a runtime binding"
                      _id28032_))
                 (##structure-ref _bind28037_ '1 gx#binding::t '#f)))
             _$e28034_)
            (gxc#raise-compile-error
             '"module does not export symbol"
             (##structure-ref _ctx28031_ '1 gx#expander-context::t '#f)
             _id28032_)))))
  (define gxc#find-runtime-module-deps
    (lambda (_ctx27918_)
      (letrec* ((_ht27920_ (make-hash-table-eq))
                (_import-set-template27921_
                 (lambda (_in27983_ _phi27984_)
                   (let ((_iphi27986_
                          (fx+ _phi27984_
                               (##direct-structure-ref
                                _in27983_
                                '2
                                gx#import-set::t
                                '#f)))
                         (_imports27987_
                          (##structure-ref
                           (##direct-structure-ref
                            _in27983_
                            '1
                            gx#import-set::t
                            '#f)
                           '8
                           gx#module-context::t
                           '#f)))
                     (let _lp27989_ ((_rest27991_ _imports27987_)
                                     (_r27992_ '()))
                       (let* ((_rest2799328001_ _rest27991_)
                              (_E2799628005_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest2799328001_)))
                              (_else2799528009_ (lambda () _r27992_))
                              (_K2799728019_
                               (lambda (_rest28012_ _in28013_)
                                 (if (##structure-instance-of?
                                      _in28013_
                                      'gx#module-context::t)
                                     (if (fxzero? _iphi27986_)
                                         (_lp27989_
                                          _rest28012_
                                          (cons _in28013_ _r27992_))
                                         (_lp27989_ _rest28012_ _r27992_))
                                     (if (##structure-direct-instance-of?
                                          _in28013_
                                          'gx#module-import::t)
                                         (let ((_iphi28015_
                                                (fx+ _phi27984_
                                                     (##direct-structure-ref
                                                      _in28013_
                                                      '3
                                                      gx#module-import::t
                                                      '#f))))
                                           (if (fxzero? _iphi28015_)
                                               (_lp27989_
                                                _rest28012_
                                                (cons (##direct-structure-ref
                                                       (##direct-structure-ref
                                                        _in28013_
                                                        '1
                                                        gx#module-import::t
                                                        '#f)
                                                       '1
                                                       gx#module-export::t
                                                       '#f)
                                                      _r27992_))
                                               (_lp27989_
                                                _rest28012_
                                                _r27992_)))
                                         (if (##structure-direct-instance-of?
                                              _in28013_
                                              'gx#import-set::t)
                                             (let ((_xphi28017_
                                                    (fx+ _iphi27986_
                                                         (##direct-structure-ref
                                                          _in28013_
                                                          '2
                                                          gx#import-set::t
                                                          '#f))))
                                               (if (fxzero? _xphi28017_)
                                                   (_lp27989_
                                                    _rest28012_
                                                    (cons (##direct-structure-ref
                                                           _in28013_
                                                           '1
                                                           gx#import-set::t
                                                           '#f)
                                                          _r27992_))
                                                   (if (fxpositive?
                                                        _xphi28017_)
                                                       (_lp27989_
                                                        _rest28012_
                                                        (foldl1 cons
                                                                _r27992_
                                                                (_import-set-template27921_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in28013_
                         _iphi27986_)))
               (_lp27989_ _rest28012_ _r27992_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_lp27989_
                                              _rest28012_
                                              _r27992_)))))))
                         (if (##pair? _rest2799328001_)
                             (let ((_hd2799828022_ (##car _rest2799328001_))
                                   (_tl2799928024_ (##cdr _rest2799328001_)))
                               (let* ((_in28027_ _hd2799828022_)
                                      (_rest28029_ _tl2799928024_))
                                 (_K2799728019_ _rest28029_ _in28027_)))
                             (_else2799528009_)))))))
                (_find-deps27922_
                 (lambda (_rest27929_ _deps27930_)
                   (let* ((_rest2793127939_ _rest27929_)
                          (_E2793427943_
                           (lambda ()
                             (error '"No clause matching" _rest2793127939_)))
                          (_else2793327947_ (lambda () _deps27930_))
                          (_K2793527971_
                           (lambda (_rest27950_ _hd27951_)
                             (if (##structure-instance-of?
                                  _hd27951_
                                  'gx#module-context::t)
                                 (let ((_id27953_
                                        (##structure-ref
                                         _hd27951_
                                         '1
                                         gx#expander-context::t
                                         '#f))
                                       (_imports27954_
                                        (##structure-ref
                                         _hd27951_
                                         '8
                                         gx#module-context::t
                                         '#f)))
                                   (if (table-ref _ht27920_ _id27953_ '#f)
                                       (_find-deps27922_
                                        _rest27950_
                                        _deps27930_)
                                       (let ((_$e27956_
                                              (gx#core-context-prelude__%
                                               _hd27951_)))
                                         (if _$e27956_
                                             ((lambda (_pre27959_)
                                                (let ((_xdeps27961_
                                                       (_find-deps27922_
                                                        (cons _pre27959_
                                                              _imports27954_)
                                                        _deps27930_)))
                                                  (begin
                                                    (table-set!
                                                     _ht27920_
                                                     _id27953_
                                                     _hd27951_)
                                                    (_find-deps27922_
                                                     _rest27950_
                                                     (cons _hd27951_
                                                           _xdeps27961_)))))
                                              _$e27956_)
                                             (let ((_xdeps27963_
                                                    (_find-deps27922_
                                                     _imports27954_
                                                     _deps27930_)))
                                               (begin
                                                 (table-set!
                                                  _ht27920_
                                                  _id27953_
                                                  _hd27951_)
                                                 (_find-deps27922_
                                                  _rest27950_
                                                  (cons _hd27951_
                                                        _xdeps27963_))))))))
                                 (if (##structure-instance-of?
                                      _hd27951_
                                      'gx#prelude-context::t)
                                     (let ((_id27965_
                                            (##structure-ref
                                             _hd27951_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (if (table-ref _ht27920_ _id27965_ '#f)
                                           (_find-deps27922_
                                            _rest27950_
                                            _deps27930_)
                                           (let ((_xdeps27967_
                                                  (_find-deps27922_
                                                   (##structure-ref
                                                    _hd27951_
                                                    '7
                                                    gx#prelude-context::t
                                                    '#f)
                                                   _deps27930_)))
                                             (if (table-ref
                                                  _ht27920_
                                                  _id27965_
                                                  '#f)
                                                 (_find-deps27922_
                                                  _rest27950_
                                                  _xdeps27967_)
                                                 (begin
                                                   (table-set!
                                                    _ht27920_
                                                    _id27965_
                                                    _hd27951_)
                                                   (_find-deps27922_
                                                    _rest27950_
                                                    (cons _hd27951_
                                                          _xdeps27967_)))))))
                                     (if (##structure-direct-instance-of?
                                          _hd27951_
                                          'gx#module-import::t)
                                         (if (fxzero? (##direct-structure-ref
                                                       _hd27951_
                                                       '3
                                                       gx#module-import::t
                                                       '#f))
                                             (_find-deps27922_
                                              (cons (##direct-structure-ref
                                                     _hd27951_
                                                     '1
                                                     gx#module-import::t
                                                     '#f)
                                                    _rest27950_)
                                              _deps27930_)
                                             (_find-deps27922_
                                              _rest27950_
                                              _deps27930_))
                                         (if (##structure-direct-instance-of?
                                              _hd27951_
                                              'gx#module-export::t)
                                             (_find-deps27922_
                                              (cons (##direct-structure-ref
                                                     _hd27951_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)
                                                    _rest27950_)
                                              _deps27930_)
                                             (if (##structure-direct-instance-of?
                                                  _hd27951_
                                                  'gx#import-set::t)
                                                 (if (fxzero? (##direct-structure-ref
                                                               _hd27951_
                                                               '2
                                                               gx#import-set::t
                                                               '#f))
                                                     (_find-deps27922_
                                                      (cons (##direct-structure-ref
                                                             _hd27951_
                                                             '1
                                                             gx#import-set::t
                                                             '#f)
                                                            _rest27950_)
                                                      _deps27930_)
                                                     (if (fxpositive?
                                                          (##direct-structure-ref
                                                           _hd27951_
                                                           '2
                                                           gx#import-set::t
                                                           '#f))
                                                         (let ((_xdeps27969_
                                                                (_import-set-template27921_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd27951_
                         '0)))
                   (_find-deps27922_
                    (foldl1 cons _rest27950_ _xdeps27969_)
                    _deps27930_))
                 (_find-deps27922_ _rest27950_ _deps27930_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (error '"Unexpected module import"
                                                        _hd27951_)))))))))
                     (if (##pair? _rest2793127939_)
                         (let ((_hd2793627974_ (##car _rest2793127939_))
                               (_tl2793727976_ (##cdr _rest2793127939_)))
                           (let* ((_hd27979_ _hd2793627974_)
                                  (_rest27981_ _tl2793727976_))
                             (_K2793527971_ _rest27981_ _hd27979_)))
                         (_else2793327947_))))))
        (reverse (filter gx#expander-context-id
                         (_find-deps27922_
                          (let ((_$e27924_
                                 (gx#core-context-prelude__% _ctx27918_)))
                            (if _$e27924_
                                ((lambda (_pre27927_)
                                   (cons _pre27927_
                                         (##structure-ref
                                          _ctx27918_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _$e27924_)
                                (##structure-ref
                                 _ctx27918_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))))
  (define gxc#find-static-module-file
    (lambda (_ctx27857_)
      (let* ((_scm27859_
              (string-append
               (gxc#static-module-name
                (##structure-ref _ctx27857_ '1 gx#expander-context::t '#f))
               '".scm"))
             (_dirs27861_ (gx#current-expander-module-library-path))
             (_dirs27870_
              (let ((_$e27863_ (gxc#current-compile-output-dir)))
                (if _$e27863_
                    ((lambda (_g2786527867_) (cons _g2786527867_ _dirs27861_))
                     _$e27863_)
                    _dirs27861_)))
             (_dirs27876_
              (map (lambda (_g2787127873_)
                     (path-expand '"static" _g2787127873_))
                   _dirs27870_)))
        (let _lp27879_ ((_rest27881_ _dirs27876_))
          (let* ((_rest2788227890_ _rest27881_)
                 (_E2788527894_
                  (lambda () (error '"No clause matching" _rest2788227890_)))
                 (_else2788427898_
                  (lambda ()
                    (gxc#raise-compile-error
                     '"cannot find static module"
                     (##structure-ref _ctx27857_ '1 gx#expander-context::t '#f)
                     _scm27859_)))
                 (_K2788627906_
                  (lambda (_rest27901_ _dir27902_)
                    (let ((_path27904_ (path-expand _scm27859_ _dir27902_)))
                      (if (file-exists? _path27904_)
                          _path27904_
                          (_lp27879_ _rest27901_))))))
            (if (##pair? _rest2788227890_)
                (let ((_hd2788727909_ (##car _rest2788227890_))
                      (_tl2788827911_ (##cdr _rest2788227890_)))
                  (let* ((_dir27914_ _hd2788727909_)
                         (_rest27916_ _tl2788827911_))
                    (_K2788627906_ _rest27916_ _dir27914_)))
                (_else2788427898_)))))))
  (define gxc#file-empty?
    (lambda (_path27855_)
      (zero? (file-info-size (file-info _path27855_ '#t)))))
  (define gxc#compile-top-module
    (lambda (_ctx27852_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#verbose
            '"compile "
            (##structure-ref _ctx27852_ '1 gx#expander-context::t '#f))
           (if (gxc#current-compile-optimize)
               (gxc#optimize! _ctx27852_)
               '#!void)
           (gxc#collect-bindings _ctx27852_)
           (gxc#compile-runtime-code _ctx27852_)
           (gxc#compile-meta-code _ctx27852_)
           (if (if (gxc#current-compile-optimize)
                   (gxc#current-compile-generate-ssxi)
                   '#f)
               (gxc#compile-ssxi-code _ctx27852_)
               '#!void)))
       gx#current-expander-context
       _ctx27852_
       gx#current-expander-phi
       '0
       gx#current-expander-marks
       '()
       gxc#current-compile-symbol-table
       (let ((__obj28328 (make-object gxc#symbol-table::t '2)))
         (begin (gxc#symbol-table:::init! __obj28328) __obj28328))
       gxc#current-compile-runtime-sections
       (make-hash-table-eq)
       gxc#current-compile-runtime-names
       (make-table))))
  (define gxc#collect-bindings
    (lambda (_ctx27850_)
      (gxc#apply-collect-bindings
       (##structure-ref _ctx27850_ '11 gx#module-context::t '#f))))
  (define gxc#compile-runtime-code
    (lambda (_ctx27804_)
      (letrec ((_compile127806_
                (lambda (_ctx27839_)
                  (let* ((_code27841_
                          (##structure-ref
                           _ctx27839_
                           '11
                           gx#module-context::t
                           '#f))
                         (_rt27845_
                          (if (gxc#apply-find-runtime-code _code27841_)
                              (let ((_idstr27843_
                                     (gxc#module-id->path-string
                                      (##structure-ref
                                       _ctx27839_
                                       '1
                                       gx#expander-context::t
                                       '#f))))
                                (string-append _idstr27843_ '"__0"))
                              '#f)))
                    (begin
                      (if _rt27845_
                          (begin
                            (table-set!
                             (gxc#current-compile-runtime-sections)
                             _ctx27839_
                             _rt27845_)
                            (_generate-runtime-code27807_
                             _ctx27839_
                             _code27841_))
                          (if (gxc#current-compile-static)
                              (let ((_path27848_
                                     (gxc#compile-static-output-file
                                      _ctx27839_)))
                                (with-output-to-file
                                 (cons 'path:
                                       (cons _path27848_
                                             (cons 'permissions:
                                                   (cons '420 '()))))
                                 void))
                              '#!void))
                      (_generate-loader-code27808_
                       _ctx27839_
                       _code27841_
                       _rt27845_)))))
               (_generate-runtime-code27807_
                (lambda (_ctx27823_ _code27824_)
                  (let* ((_lifts27826_ (box '()))
                         (_runtime-code27829_
                          (call-with-parameters
                           (lambda () (gxc#apply-generate-runtime _code27824_))
                           gx#current-expander-context
                           _ctx27823_
                           gx#current-expander-phi
                           '0
                           gxc#current-compile-lift
                           _lifts27826_
                           gxc#current-compile-marks
                           (make-hash-table-eq)))
                         (_runtime-code27831_
                          (if (null? (unbox _lifts27826_))
                              _runtime-code27829_
                              (cons 'begin
                                    (foldr1 cons
                                            (cons _runtime-code27829_ '())
                                            (reverse (unbox _lifts27826_))))))
                         (_scm027833_
                          (gxc#compile-output-file _ctx27823_ '0 '".scm")))
                    (if (gxc#current-compile-static)
                        (let ((_scms27836_
                               (gxc#compile-static-output-file _ctx27823_)))
                          (begin
                            (call-with-parameters
                             (lambda ()
                               (gxc#compile-scm-file
                                _scm027833_
                                _runtime-code27831_))
                             gxc#current-compile-keep-scm
                             '#t)
                            (if (file-exists? _scms27836_)
                                (delete-file _scms27836_)
                                '#!void)
                            (gxc#verbose
                             '"copy static module "
                             _scm027833_
                             '" => "
                             _scms27836_)
                            (copy-file _scm027833_ _scms27836_)
                            (if (gxc#current-compile-keep-scm)
                                '#!void
                                (delete-file _scm027833_))))
                        (gxc#compile-scm-file
                         _scm027833_
                         _runtime-code27831_)))))
               (_generate-loader-code27808_
                (lambda (_ctx27812_ _code27813_ _rt27814_)
                  (let* ((_loader-code27817_
                          (call-with-parameters
                           (lambda () (gxc#apply-generate-loader _code27813_))
                           gx#current-expander-context
                           _ctx27812_))
                         (_loader-code27819_
                          (if _rt27814_
                              (cons 'begin
                                    (cons _loader-code27817_
                                          (cons (cons 'load-module
                                                      (cons _rt27814_ '()))
                                                '())))
                              _loader-code27817_)))
                    (call-with-parameters
                     (lambda ()
                       (gxc#compile-scm-file
                        (gxc#compile-output-file _ctx27812_ 'rt '".scm")
                        _loader-code27819_))
                     gxc#current-compile-gsc-options
                     '#f)))))
        (let ((_all-modules27810_
               (cons _ctx27804_ (gxc#lift-nested-modules _ctx27804_))))
          (for-each _compile127806_ _all-modules27810_)))))
  (define gxc#compile-meta-code
    (lambda (_ctx27706_)
      (letrec ((_compile-ssi27708_
                (lambda (_code27774_)
                  (let* ((_path27776_
                          (gxc#compile-output-file _ctx27706_ '#f '".ssi"))
                         (_prelude27787_
                          (let* ((_super27778_
                                  (##structure-ref
                                   _ctx27706_
                                   '3
                                   gx#phi-context::t
                                   '#f))
                                 (_$e27780_
                                  (##structure-ref
                                   _super27778_
                                   '1
                                   gx#expander-context::t
                                   '#f)))
                            (if _$e27780_
                                ((lambda (_g2778227784_)
                                   (make-symbol '":" _g2778227784_))
                                 _$e27780_)
                                ':<root>)))
                         (_ns27789_
                          (##structure-ref
                           _ctx27706_
                           '6
                           gx#module-context::t
                           '#f))
                         (_idstr27791_
                          (symbol->string
                           (##structure-ref
                            _ctx27706_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_pkg27798_
                          (let ((_$e27793_ (string-rindex _idstr27791_ '#\/)))
                            (if _$e27793_
                                ((lambda (_x27796_)
                                   (string->symbol
                                    (substring _idstr27791_ '0 _x27796_)))
                                 _$e27793_)
                                '#f)))
                         (_rt27800_
                          (table-ref
                           (gxc#current-compile-runtime-sections)
                           _ctx27706_
                           '#f)))
                    (begin
                      (gxc#verbose '"compile " _path27776_)
                      (with-output-to-file
                       (cons 'path:
                             (cons _path27776_
                                   (cons 'permissions: (cons '420 '()))))
                       (lambda ()
                         (begin
                           (displayln '"prelude:" '" " _prelude27787_)
                           (if _pkg27798_
                               (displayln '"package:" '" " _pkg27798_)
                               '#!void)
                           (displayln '"namespace:" '" " _ns27789_)
                           (newline)
                           (pretty-print _code27774_)
                           (if _rt27800_
                               (pretty-print
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons '_gx#load-module '()))
                                            (cons (cons '%#quote
                                                        (cons _rt27800_ '()))
                                                  '()))))
                               '#!void))))))))
               (_compile-phi27709_
                (lambda (_part27714_)
                  (let* ((_part2771527728_ _part27714_)
                         (_E2771727732_
                          (lambda ()
                            (error '"No clause matching" _part2771527728_)))
                         (_K2771827743_
                          (lambda (_code27735_
                                   _n27736_
                                   _phi27737_
                                   _phi-ctx27738_)
                            (let ((_code27741_
                                   (call-with-parameters
                                    (lambda ()
                                      (gxc#generate-runtime-phi _code27735_))
                                    gx#current-expander-context
                                    _phi-ctx27738_
                                    gx#current-expander-phi
                                    _phi27737_)))
                              (gxc#compile-scm-file
                               (gxc#compile-output-file
                                _ctx27706_
                                _n27736_
                                '".scm")
                               _code27741_)))))
                    (if (##pair? _part2771527728_)
                        (let ((_hd2771927746_ (##car _part2771527728_))
                              (_tl2772027748_ (##cdr _part2771527728_)))
                          (let ((_phi-ctx27751_ _hd2771927746_))
                            (if (##pair? _tl2772027748_)
                                (let ((_hd2772127753_ (##car _tl2772027748_))
                                      (_tl2772227755_ (##cdr _tl2772027748_)))
                                  (let ((_phi27758_ _hd2772127753_))
                                    (if (##pair? _tl2772227755_)
                                        (let ((_hd2772327760_
                                               (##car _tl2772227755_))
                                              (_tl2772427762_
                                               (##cdr _tl2772227755_)))
                                          (let ((_n27765_ _hd2772327760_))
                                            (if (##pair? _tl2772427762_)
                                                (let ((_hd2772527767_
                                                       (##car _tl2772427762_))
                                                      (_tl2772627769_
                                                       (##cdr _tl2772427762_)))
                                                  (let ((_code27772_
                                                         _hd2772527767_))
                                                    (if (##null? _tl2772627769_)
                                                        (_K2771827743_
                                                         _code27772_
                                                         _n27765_
                                                         _phi27758_
                                                         _phi-ctx27751_)
                                                        (_E2771727732_))))
                                                (_E2771727732_))))
                                        (_E2771727732_))))
                                (_E2771727732_))))
                        (_E2771727732_))))))
        (let ((_g28336_ (gxc#generate-meta-code _ctx27706_)))
          (begin
            (let ((_g28337_ (values-count _g28336_)))
              (if (not (fx= _g28337_ 2))
                  (error "Context expects 2 values" _g28337_)))
            (let ((_ssi-code27711_ (values-ref _g28336_ 0))
                  (_phi-code27712_ (values-ref _g28336_ 1)))
              (begin
                (_compile-ssi27708_ _ssi-code27711_)
                (for-each _compile-phi27709_ _phi-code27712_))))))))
  (define gxc#compile-ssxi-code
    (lambda (_ctx27689_)
      (let* ((_path27691_ (gxc#compile-output-file _ctx27689_ '#f '".ssxi.ss"))
             (_code27693_
              (gxc#apply-generate-ssxi
               (##structure-ref _ctx27689_ '11 gx#module-context::t '#f)))
             (_idstr27695_
              (symbol->string
               (##structure-ref _ctx27689_ '1 gx#expander-context::t '#f)))
             (_pkg27702_
              (let ((_$e27697_ (string-rindex _idstr27695_ '#\/)))
                (if _$e27697_
                    ((lambda (_x27700_)
                       (string->symbol (substring _idstr27695_ '0 _x27700_)))
                     _$e27697_)
                    '#f))))
        (begin
          (gxc#verbose '"compile " _path27691_)
          (with-output-to-file
           (cons 'path:
                 (cons _path27691_ (cons 'permissions: (cons '420 '()))))
           (lambda ()
             (begin
               (displayln '"prelude: :gerbil/compiler/ssxi")
               (if _pkg27702_ (displayln '"package: " _pkg27702_) '#!void)
               (newline)
               (pretty-print _code27693_))))))))
  (define gxc#generate-meta-code
    (lambda (_ctx27682_)
      (let* ((_state27684_
              (let ((__obj28329 (make-object gxc#meta-state::t '4)))
                (begin
                  (gxc#meta-state:::init! __obj28329 _ctx27682_)
                  __obj28329)))
             (_ssi-code27686_
              (gxc#apply-generate-meta
               (##structure-ref _ctx27682_ '11 gx#module-context::t '#f)
               _state27684_)))
        (values _ssi-code27686_ (gxc#meta-state-end! _state27684_)))))
  (define gxc#generate-runtime-phi
    (lambda (_stx27675_)
      (let ((_lifts27677_ (box '())))
        (call-with-parameters
         (lambda ()
           (let ((_code27680_ (gxc#apply-generate-runtime-phi _stx27675_)))
             (if (null? (unbox _lifts27677_))
                 _code27680_
                 (cons 'begin
                       (foldr1 cons
                               (cons _code27680_ '())
                               (reverse (unbox _lifts27677_)))))))
         gxc#current-compile-lift
         _lifts27677_
         gxc#current-compile-marks
         (make-hash-table-eq)))))
  (define gxc#lift-nested-modules
    (lambda (_ctx27671_)
      (let ((_modules27673_ (box '())))
        (begin
          (gxc#apply-lift-modules
           (##structure-ref _ctx27671_ '11 gx#module-context::t '#f)
           _modules27673_)
          (reverse (unbox _modules27673_))))))
  (define gxc#compile-scm-file
    (lambda (_path27667_ _code27668_)
      (begin
        (gxc#verbose '"compile " _path27667_)
        (with-output-to-file
         (cons 'path: (cons _path27667_ (cons 'permissions: (cons '420 '()))))
         (lambda ()
           (begin
             (pretty-print
              '(declare (block) (standard-bindings) (extended-bindings)))
             (pretty-print _code27668_))))
        (if (gxc#current-compile-invoke-gsc)
            (gxc#gsc-compile-file _path27667_)
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path27667_)))))
  (define gxc#gsc-debug-options
    (lambda ()
      (let ((_$e27656_ (gxc#current-compile-debug)))
        (if _$e27656_
            ((lambda (_debug27659_)
               (let ((_$e27661_ _debug27659_))
                 (if (eq? 'env _$e27661_)
                     (cons '"-debug-environments" '())
                     (if (eq? 'src _$e27661_)
                         (cons '"-debug-environments"
                               (cons '"-debug-source" '()))
                         (if (let ((_$e27664_ (eq? 'all _$e27661_)))
                               (if _$e27664_ _$e27664_ (eq? '#t _$e27661_)))
                             (cons '"-debug" '())
                             (gxc#raise-compile-error
                              '"unknown debug option"
                              _debug27659_))))))
             _$e27656_)
            '()))))
  (define gxc#gsc-compile-file
    (lambda (_path27638_)
      (let* ((_gsc-args27645_
              (let ((_$e27640_ (gxc#current-compile-gsc-options)))
                (if _$e27640_
                    ((lambda (_opts27643_)
                       (foldr1 cons (cons _path27638_ '()) _opts27643_))
                     _$e27640_)
                    (cons _path27638_ '()))))
             (_gsc-args27647_
              (foldr1 cons _gsc-args27645_ (gxc#gsc-debug-options)))
             (_g28338_
              (gxc#verbose '"invoke gsc " (cons 'gsc _gsc-args27647_)))
             (_proc27650_
              (open-process
               (cons 'path:
                     (cons '"gsc"
                           (cons 'arguments:
                                 (cons _gsc-args27647_
                                       (cons 'stdout-redirection:
                                             (cons '#f '()))))))))
             (_status27652_ (process-status _proc27650_)))
        (if (zero? _status27652_)
            '#!void
            (gxc#raise-compile-error
             '"Compilation error; gsc exit with nonzero status"
             _path27638_
             _status27652_)))))
  (define gxc#compile-output-file
    (lambda (_ctx27610_ _n27611_ _ext27612_)
      (letrec ((_module-relative-path27614_
                (lambda (_ctx27636_)
                  (path-strip-directory
                   (gxc#module-id->path-string
                    (##structure-ref
                     _ctx27636_
                     '1
                     gx#expander-context::t
                     '#f)))))
               (_module-source-directory27615_
                (lambda (_ctx27632_)
                  (path-directory
                   (let ((_mpath27634_
                          (##structure-ref
                           _ctx27632_
                           '7
                           gx#module-context::t
                           '#f)))
                     (if (string? _mpath27634_)
                         _mpath27634_
                         (last _mpath27634_))))))
               (_section-string27616_
                (lambda (_n27630_)
                  (if (number? _n27630_)
                      (number->string _n27630_)
                      (if (symbol? _n27630_)
                          (symbol->string _n27630_)
                          (if (string? _n27630_)
                              _n27630_
                              (gxc#raise-compile-error
                               '"Unexpected section"
                               _n27630_))))))
               (_file-name27617_
                (lambda (_path27628_)
                  (if _n27611_
                      (string-append
                       _path27628_
                       '"__"
                       (_section-string27616_ _n27611_)
                       _ext27612_)
                      (string-append _path27628_ _ext27612_))))
               (_file-path27618_
                (lambda ()
                  (let ((_$e27623_ (gxc#current-compile-output-dir)))
                    (if _$e27623_
                        ((lambda (_outdir27626_)
                           (path-expand
                            (_file-name27617_
                             (gxc#module-id->path-string
                              (##structure-ref
                               _ctx27610_
                               '1
                               gx#expander-context::t
                               '#f)))
                            _outdir27626_))
                         _$e27623_)
                        (path-expand
                         (_file-name27617_
                          (_module-relative-path27614_ _ctx27610_))
                         (_module-source-directory27615_ _ctx27610_)))))))
        (let ((_path27620_ (_file-path27618_)))
          (begin
            (create-directory* (path-directory _path27620_))
            _path27620_)))))
  (define gxc#compile-static-output-file
    (lambda (_ctx27593_)
      (letrec ((_file-name27595_
                (lambda (_id27608_)
                  (string-append (gxc#static-module-name _id27608_) '".scm")))
               (_file-path27596_
                (lambda ()
                  (let* ((_file27601_
                          (_file-name27595_
                           (##structure-ref
                            _ctx27593_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_$e27603_ (gxc#current-compile-output-dir)))
                    (if _$e27603_
                        ((lambda (_outdir27606_)
                           (path-expand
                            _file27601_
                            (path-expand '"static" _outdir27606_)))
                         _$e27603_)
                        (path-expand _file27601_ '"static"))))))
        (let ((_path27598_ (_file-path27596_)))
          (begin
            (create-directory* (path-directory _path27598_))
            _path27598_)))))
  (define gxc#compile-exe-output-file
    (lambda (_ctx27580_ _opts27581_)
      (let ((_$e27583_ (pgetq 'output-file: _opts27581_)))
        (if _$e27583_
            (values _$e27583_)
            (let* ((_mod-str27586_
                    (symbol->string
                     (##structure-ref
                      _ctx27580_
                      '1
                      gx#expander-context::t
                      '#f)))
                   (_$e27588_ (string-rindex _mod-str27586_ '#\/)))
              (if _$e27588_
                  ((lambda (_ix27591_)
                     (substring
                      _mod-str27586_
                      (fx+ _ix27591_ '1)
                      (string-length _mod-str27586_)))
                   _$e27588_)
                  _mod-str27586_))))))
  (define gxc#static-module-name
    (lambda (_idstr27573_)
      (if (string? _idstr27573_)
          (let* ((_str27575_ (gxc#module-id->path-string _idstr27573_))
                 (_strs27577_ (string-split _str27575_ '#\/)))
            (string-join _strs27577_ '"__"))
          (if (symbol? _idstr27573_)
              (gxc#static-module-name (symbol->string _idstr27573_))
              (error '"Bad module id" _idstr27573_))))))
