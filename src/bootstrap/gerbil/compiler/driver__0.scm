(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#compile-timestamp
    (lambda () (inexact->exact (floor (time->seconds (current-time))))))
  (begin
    (define gxc#compile-file__%
      (lambda (_srcpath28283_ _opts28284_)
        (begin
          (if (string? _srcpath28283_)
              '#!void
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath28283_))
          (let ((_outdir28286_ (pgetq 'output-dir: _opts28284_))
                (_invoke-gsc?28287_ (pgetq 'invoke-gsc: _opts28284_))
                (_gsc-options28288_ (pgetq 'gsc-options: _opts28284_))
                (_keep-scm?28289_ (pgetq 'keep-scm: _opts28284_))
                (_verbosity28290_ (pgetq 'verbose: _opts28284_))
                (_optimize28291_ (pgetq 'optimize: _opts28284_))
                (_debug28292_ (pgetq 'debug: _opts28284_))
                (_gen-ssxi28293_ (pgetq 'generate-ssxi: _opts28284_))
                (_static28294_ (pgetq 'static: _opts28284_)))
            (begin
              (if _outdir28286_ (create-directory* _outdir28286_) '#!void)
              (if _optimize28291_ (gxc#optimizer-info-init!) '#!void)
              (call-with-parameters
               (lambda ()
                 (begin
                   (gxc#verbose '"compile " _srcpath28283_)
                   (gxc#compile-top-module
                    (gx#import-module__0 _srcpath28283_))))
               gxc#current-compile-output-dir
               _outdir28286_
               gxc#current-compile-invoke-gsc
               _invoke-gsc?28287_
               gxc#current-compile-gsc-options
               _gsc-options28288_
               gxc#current-compile-keep-scm
               _keep-scm?28289_
               gxc#current-compile-verbose
               _verbosity28290_
               gxc#current-compile-optimize
               _optimize28291_
               gxc#current-compile-debug
               _debug28292_
               gxc#current-compile-generate-ssxi
               _gen-ssxi28293_
               gxc#current-compile-static
               _static28294_
               gxc#current-compile-timestamp
               (gxc#compile-timestamp)))))))
    (begin
      (define gxc#compile-file__0
        (lambda (_srcpath28300_)
          (let ((_opts28302_ '()))
            (gxc#compile-file__% _srcpath28300_ _opts28302_))))
      (define gxc#compile-file
        (lambda _g28310_
          (let ((_g28309_ (length _g28310_)))
            (cond ((fx= _g28309_ 1) (apply gxc#compile-file__0 _g28310_))
                  ((fx= _g28309_ 2) (apply gxc#compile-file__% _g28310_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-file
                    _g28310_))))))))
  (begin
    (define gxc#compile-exe-stub__%
      (lambda (_srcpath28269_ _opts28270_)
        (gxc#do-compile-exe
         _srcpath28269_
         _opts28270_
         gxc#compile-exe-stub-module)))
    (begin
      (define gxc#compile-exe-stub__0
        (lambda (_srcpath28275_)
          (let ((_opts28277_ '()))
            (gxc#compile-exe-stub__% _srcpath28275_ _opts28277_))))
      (define gxc#compile-exe-stub
        (lambda _g28312_
          (let ((_g28311_ (length _g28312_)))
            (cond ((fx= _g28311_ 1) (apply gxc#compile-exe-stub__0 _g28312_))
                  ((fx= _g28311_ 2) (apply gxc#compile-exe-stub__% _g28312_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-exe-stub
                    _g28312_))))))))
  (begin
    (define gxc#compile-static-exe__%
      (lambda (_srcpath28255_ _opts28256_)
        (gxc#do-compile-exe
         _srcpath28255_
         _opts28256_
         gxc#compile-exe-static-module)))
    (begin
      (define gxc#compile-static-exe__0
        (lambda (_srcpath28261_)
          (let ((_opts28263_ '()))
            (gxc#compile-static-exe__% _srcpath28261_ _opts28263_))))
      (define gxc#compile-static-exe
        (lambda _g28314_
          (let ((_g28313_ (length _g28314_)))
            (cond ((fx= _g28313_ 1) (apply gxc#compile-static-exe__0 _g28314_))
                  ((fx= _g28313_ 2) (apply gxc#compile-static-exe__% _g28314_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-static-exe
                    _g28314_))))))))
  (define gxc#do-compile-exe
    (lambda (_srcpath28243_ _opts28244_ _compile-e28245_)
      (begin
        (if (string? _srcpath28243_)
            '#!void
            (gxc#raise-compile-error
             '"Invalid module source path"
             _srcpath28243_))
        (let ((_outdir28247_ (pgetq 'output-dir: _opts28244_))
              (_invoke-gsc?28248_ (pgetq 'invoke-gsc: _opts28244_))
              (_gsc-options28249_ (pgetq 'gsc-options: _opts28244_))
              (_keep-scm?28250_ (pgetq 'keep-scm: _opts28244_))
              (_verbosity28251_ (pgetq 'verbose: _opts28244_)))
          (begin
            (if _outdir28247_ (create-directory* _outdir28247_) '#!void)
            (call-with-parameters
             (lambda ()
               (begin
                 (gxc#verbose '"compile exe " _srcpath28243_)
                 (_compile-e28245_
                  (gx#import-module__0 _srcpath28243_)
                  _opts28244_)))
             gxc#current-compile-output-dir
             _outdir28247_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?28248_
             gxc#current-compile-gsc-options
             _gsc-options28249_
             gxc#current-compile-keep-scm
             _keep-scm?28250_
             gxc#current-compile-verbose
             _verbosity28251_
             gxc#current-compile-timestamp
             (gxc#compile-timestamp)))))))
  (define gxc#compile-exe-stub-module
    (lambda (_ctx28209_ _opts28210_)
      (letrec ((_generate-stub28212_
                (lambda (_gx-init-stub28234_)
                  (let* ((_mod-str28236_
                          (symbol->string
                           (##structure-ref
                            _ctx28209_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_mod-rt28238_ (string-append _mod-str28236_ '"__rt"))
                         (_mod-main28240_
                          (gxc#find-runtime-symbol _ctx28209_ 'main)))
                    (begin
                      (write '(##namespace ("")))
                      (newline)
                      (write (cons 'include (cons _gx-init-stub28234_ '())))
                      (newline)
                      (write (cons '_gx#start!
                                   (cons _mod-rt28238_
                                         (cons (cons 'quote
                                                     (cons _mod-main28240_
                                                           '()))
                                               '()))))
                      (newline)))))
               (_compile-stub28213_
                (lambda (_output-scm28220_ _output-bin28221_)
                  (let* ((_init-stub28223_
                          (path-expand
                           '"lib/gx-init-exe.scm"
                           (getenv '"GERBIL_HOME")))
                         (_gsc-args28225_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin28221_
                                            (cons _output-scm28220_ '()))))))
                    (begin
                      (with-output-to-file
                       _output-scm28220_
                       (lambda () (_generate-stub28212_ _init-stub28223_)))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (gxc#verbose
                             '"invoke gsc "
                             (cons 'gsc _gsc-args28225_))
                            (let* ((_proc28229_
                                    (open-process
                                     (cons 'path:
                                           (cons '"gsc"
                                                 (cons 'arguments:
                                                       (cons _gsc-args28225_
                                                             (cons 'stdout-redirection:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_status28231_
                                    (process-status _proc28229_)))
                              (if (zero? _status28231_)
                                  '#!void
                                  (gxc#raise-compile-error
                                   '"Compilation error; gsc exit with nonzero status"
                                   _output-scm28220_
                                   _output-bin28221_
                                   _status28231_))))
                          '#!void))))))
        (let* ((_output-bin28215_
                (gxc#compile-exe-output-file _ctx28209_ _opts28210_))
               (_output-scm28217_ (string-append _output-bin28215_ '".scm")))
          (begin
            (_compile-stub28213_ _output-scm28217_ _output-bin28215_)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm28217_)))))))
  (define gxc#compile-exe-static-module
    (lambda (_ctx28068_ _opts28069_)
      (letrec ((_reset-declare28071_
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
               (_user-declare28072_
                (lambda ()
                  (let* ((_gsc-opts28150_ (pgetq 'gsc-options: _opts28069_))
                         (_gsc-prelude28152_
                          (if _gsc-opts28150_
                              (member '"-prelude" _gsc-opts28150_)
                              '#f))
                         (_gsc-prelude28154_
                          (if _gsc-prelude28152_
                              (read (open-input-string
                                     (cadr _gsc-prelude28152_)))
                              '#f)))
                    (let _lift28157_ ((_expr28159_ _gsc-prelude28154_))
                      (let* ((_expr2816028172_ _expr28159_)
                             (_E2816428176_
                              (lambda ()
                                (error '"No clause matching"
                                       _expr2816028172_)))
                             (_else2816328180_ (lambda () '#f))
                             (_try-match2816228196_
                              (lambda ()
                                (let ((_K2816528186_
                                       (lambda (_exprs28184_)
                                         (ormap1 _lift28157_ _exprs28184_))))
                                  (if (##pair? _expr2816028172_)
                                      (let ((_hd2816628189_
                                             (##car _expr2816028172_))
                                            (_tl2816728191_
                                             (##cdr _expr2816028172_)))
                                        (if (##eq? _hd2816628189_ 'begin)
                                            (let ((_exprs28194_
                                                   _tl2816728191_))
                                              (_K2816528186_ _exprs28194_))
                                            (_else2816328180_)))
                                      (_else2816328180_)))))
                             (_K2816828200_ (lambda () _expr28159_)))
                        (if (##pair? _expr2816028172_)
                            (let ((_hd2816928203_ (##car _expr2816028172_))
                                  (_tl2817028205_ (##cdr _expr2816028172_)))
                              (if (##eq? _hd2816928203_ 'declare)
                                  (_K2816828200_)
                                  (_try-match2816228196_)))
                            (_try-match2816228196_)))))))
               (_generate-stub28073_
                (lambda (_deps28141_)
                  (let ((_mod-main28143_
                         (gxc#find-runtime-symbol _ctx28068_ 'main))
                        (_reset-decl28144_ (_reset-declare28071_))
                        (_user-decl28145_ (_user-declare28072_)))
                    (begin
                      (write '(##namespace ("")))
                      (newline)
                      (write '(declare (optimize-dead-definitions)))
                      (newline)
                      (for-each
                       (lambda (_dep28147_)
                         (begin
                           (write (cons 'include (cons _dep28147_ '())))
                           (newline)
                           (write '(##namespace ("")))
                           (write _reset-decl28144_)
                           (if _user-decl28145_
                               (write _user-decl28145_)
                               '#!void)
                           (newline)))
                       _deps28141_)
                      (write (cons 'apply
                                   (cons _mod-main28143_
                                         (cons (cons 'cdr
                                                     (cons (cons 'command-line
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                      (newline)))))
               (_static-include28074_
                (lambda (_gsc-opts28124_ _home28125_)
                  (letrec* ((_static-dir28127_
                             (path-expand '"lib/static" _home28125_))
                            (_user-static-dir28128_
                             (path-expand
                              '"lib/static"
                              (getenv '"GERBIL_PATH" '"~/.gerbil")))
                            (_cppflags28129_
                             (string-append
                              '"-I "
                              _static-dir28127_
                              '" -I "
                              _user-static-dir28128_)))
                    (let ((_$e28131_ (member '"-cc-options" _gsc-opts28124_)))
                      (if _$e28131_
                          ((lambda (_rest28134_)
                             (let* ((_cell28136_ (cdr _rest28134_))
                                    (_opt28138_ (car _cell28136_)))
                               (begin
                                 (set-car!
                                  _cell28136_
                                  (string-append
                                   _opt28138_
                                   '" "
                                   _cppflags28129_))
                                 _gsc-opts28124_)))
                           _$e28131_)
                          (cons '"-cc-options"
                                (cons _cppflags28129_ _gsc-opts28124_)))))))
               (_compile-stub28075_
                (lambda (_output-scm28082_ _output-bin28083_)
                  (let* ((_gerbil-home28085_ (getenv '"GERBIL_HOME"))
                         (_gx-gambc028087_
                          (path-expand
                           '"lib/static/gx-gambc0.scm"
                           _gerbil-home28085_))
                         (_gx-gambc-init28089_
                          (path-expand
                           '"lib/gx-init-static-exe.scm"
                           _gerbil-home28085_))
                         (_gx-gambc-macros28091_
                          (path-expand
                           '"lib/static/gx-gambc#.scm"
                           _gerbil-home28085_))
                         (_include-gx-gambc-macros28093_
                          (string-append
                           '"(include \""
                           _gx-gambc-macros28091_
                           '"\")"))
                         (_bin-scm28095_
                          (gxc#find-static-module-file _ctx28068_))
                         (_deps28097_
                          (gxc#find-runtime-module-deps _ctx28068_))
                         (_deps28099_
                          (map gxc#find-static-module-file _deps28097_))
                         (_deps28104_
                          (filter (lambda (_$obj28101_)
                                    (not (gxc#file-empty? _$obj28101_)))
                                  _deps28099_))
                         (_gsc-opts28109_
                          (let ((_$e28106_ (pgetq 'gsc-options: _opts28069_)))
                            (if _$e28106_ _$e28106_ '())))
                         (_gsc-opts28111_
                          (_static-include28074_
                           _gsc-opts28109_
                           _gerbil-home28085_))
                         (_gsc-gx-macros28113_
                          (if (gerbil-runtime-smp?)
                              (cons '"-e"
                                    (cons '"(define-cond-expand-feature|enable-smp|)"
                                          (cons '"-e"
                                                (cons _include-gx-gambc-macros28093_
                                                      '()))))
                              (cons '"-e"
                                    (cons _include-gx-gambc-macros28093_
                                          '()))))
                         (_gsc-args28115_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin28083_
                                            (foldr1 cons
                                                    (foldr1 cons
                                                            (foldr1 cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _output-scm28082_ '())
                            _gsc-gx-macros28113_)
                    _gsc-opts28111_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gxc#gsc-debug-options)))))))
                    (begin
                      (with-output-to-file
                       _output-scm28082_
                       (lambda ()
                         (_generate-stub28073_
                          (cons _gx-gambc028087_
                                (cons _gx-gambc-init28089_
                                      (foldr1 cons
                                              (cons _bin-scm28095_ '())
                                              _deps28104_))))))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (gxc#verbose
                             '"invoke gsc "
                             (cons 'gsc _gsc-args28115_))
                            (let* ((_proc28119_
                                    (open-process
                                     (cons 'path:
                                           (cons '"gsc"
                                                 (cons 'arguments:
                                                       (cons _gsc-args28115_
                                                             (cons 'stdout-redirection:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_status28121_
                                    (process-status _proc28119_)))
                              (if (zero? _status28121_)
                                  '#!void
                                  (gxc#raise-compile-error
                                   '"Compilation error; gsc exit with nonzero status"
                                   _output-scm28082_
                                   _output-bin28083_
                                   _status28121_))))
                          '#!void))))))
        (let* ((_output-bin28077_
                (gxc#compile-exe-output-file _ctx28068_ _opts28069_))
               (_output-scm28079_ (string-append _output-bin28077_ '".scm")))
          (begin
            (_compile-stub28075_ _output-scm28079_ _output-bin28077_)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm28079_)))))))
  (define gxc#find-export-binding
    (lambda (_ctx28018_ _id28019_)
      (let ((_$e28065_
             (find (lambda (_e2802028022_)
                     (let* ((_g2802428034_ _e2802028022_)
                            (_E2802728038_
                             (lambda ()
                               (error '"No clause matching" _g2802428034_)))
                            (_else2802628042_ (lambda () '#f))
                            (_K2802828046_ (lambda () '#t)))
                       (if (##structure-direct-instance-of?
                            _g2802428034_
                            (##type-id gx#module-export::t))
                           (let* ((_e2802928049_
                                   (##vector-ref _g2802428034_ '1))
                                  (_e2803028052_
                                   (##vector-ref _g2802428034_ '2))
                                  (_e2803128055_
                                   (##vector-ref _g2802428034_ '3)))
                             (if (##eq? _e2803128055_ '0)
                                 (let ((_e2803228058_
                                        (##vector-ref _g2802428034_ '4)))
                                   (if ((lambda (_g2806028062_)
                                          (eq? _g2806028062_ _id28019_))
                                        _e2803228058_)
                                       (_K2802828046_)
                                       (_else2802628042_)))
                                 (_else2802628042_)))
                           (_else2802628042_))))
                   (##structure-ref _ctx28018_ '9 gx#module-context::t '#f))))
        (if _$e28065_ (gx#core-resolve-module-export _$e28065_) '#f))))
  (define gxc#find-runtime-symbol
    (lambda (_ctx28010_ _id28011_)
      (let ((_$e28013_ (gxc#find-export-binding _ctx28010_ _id28011_)))
        (if _$e28013_
            ((lambda (_bind28016_)
               (begin
                 (if (##structure-instance-of?
                      _bind28016_
                      'gx#runtime-binding::t)
                     '#!void
                     (gxc#raise-compile-error
                      '"export is not a runtime binding"
                      _id28011_))
                 (##structure-ref _bind28016_ '1 gx#binding::t '#f)))
             _$e28013_)
            (gxc#raise-compile-error
             '"module does not export symbol"
             (##structure-ref _ctx28010_ '1 gx#expander-context::t '#f)
             _id28011_)))))
  (define gxc#find-runtime-module-deps
    (lambda (_ctx27897_)
      (letrec* ((_ht27899_ (make-hash-table-eq))
                (_import-set-template27900_
                 (lambda (_in27962_ _phi27963_)
                   (let ((_iphi27965_
                          (fx+ _phi27963_
                               (##direct-structure-ref
                                _in27962_
                                '2
                                gx#import-set::t
                                '#f)))
                         (_imports27966_
                          (##structure-ref
                           (##direct-structure-ref
                            _in27962_
                            '1
                            gx#import-set::t
                            '#f)
                           '8
                           gx#module-context::t
                           '#f)))
                     (let _lp27968_ ((_rest27970_ _imports27966_)
                                     (_r27971_ '()))
                       (let* ((_rest2797227980_ _rest27970_)
                              (_E2797527984_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest2797227980_)))
                              (_else2797427988_ (lambda () _r27971_))
                              (_K2797627998_
                               (lambda (_rest27991_ _in27992_)
                                 (if (##structure-instance-of?
                                      _in27992_
                                      'gx#module-context::t)
                                     (if (fxzero? _iphi27965_)
                                         (_lp27968_
                                          _rest27991_
                                          (cons _in27992_ _r27971_))
                                         (_lp27968_ _rest27991_ _r27971_))
                                     (if (##structure-direct-instance-of?
                                          _in27992_
                                          'gx#module-import::t)
                                         (let ((_iphi27994_
                                                (fx+ _phi27963_
                                                     (##direct-structure-ref
                                                      _in27992_
                                                      '3
                                                      gx#module-import::t
                                                      '#f))))
                                           (if (fxzero? _iphi27994_)
                                               (_lp27968_
                                                _rest27991_
                                                (cons (##direct-structure-ref
                                                       (##direct-structure-ref
                                                        _in27992_
                                                        '1
                                                        gx#module-import::t
                                                        '#f)
                                                       '1
                                                       gx#module-export::t
                                                       '#f)
                                                      _r27971_))
                                               (_lp27968_
                                                _rest27991_
                                                _r27971_)))
                                         (if (##structure-direct-instance-of?
                                              _in27992_
                                              'gx#import-set::t)
                                             (let ((_xphi27996_
                                                    (fx+ _iphi27965_
                                                         (##direct-structure-ref
                                                          _in27992_
                                                          '2
                                                          gx#import-set::t
                                                          '#f))))
                                               (if (fxzero? _xphi27996_)
                                                   (_lp27968_
                                                    _rest27991_
                                                    (cons (##direct-structure-ref
                                                           _in27992_
                                                           '1
                                                           gx#import-set::t
                                                           '#f)
                                                          _r27971_))
                                                   (if (fxpositive?
                                                        _xphi27996_)
                                                       (_lp27968_
                                                        _rest27991_
                                                        (foldl1 cons
                                                                _r27971_
                                                                (_import-set-template27900_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in27992_
                         _iphi27965_)))
               (_lp27968_ _rest27991_ _r27971_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_lp27968_
                                              _rest27991_
                                              _r27971_)))))))
                         (if (##pair? _rest2797227980_)
                             (let ((_hd2797728001_ (##car _rest2797227980_))
                                   (_tl2797828003_ (##cdr _rest2797227980_)))
                               (let* ((_in28006_ _hd2797728001_)
                                      (_rest28008_ _tl2797828003_))
                                 (_K2797627998_ _rest28008_ _in28006_)))
                             (_else2797427988_)))))))
                (_find-deps27901_
                 (lambda (_rest27908_ _deps27909_)
                   (let* ((_rest2791027918_ _rest27908_)
                          (_E2791327922_
                           (lambda ()
                             (error '"No clause matching" _rest2791027918_)))
                          (_else2791227926_ (lambda () _deps27909_))
                          (_K2791427950_
                           (lambda (_rest27929_ _hd27930_)
                             (if (##structure-instance-of?
                                  _hd27930_
                                  'gx#module-context::t)
                                 (let ((_id27932_
                                        (##structure-ref
                                         _hd27930_
                                         '1
                                         gx#expander-context::t
                                         '#f))
                                       (_imports27933_
                                        (##structure-ref
                                         _hd27930_
                                         '8
                                         gx#module-context::t
                                         '#f)))
                                   (if (table-ref _ht27899_ _id27932_ '#f)
                                       (_find-deps27901_
                                        _rest27929_
                                        _deps27909_)
                                       (let ((_$e27935_
                                              (gx#core-context-prelude__%
                                               _hd27930_)))
                                         (if _$e27935_
                                             ((lambda (_pre27938_)
                                                (let ((_xdeps27940_
                                                       (_find-deps27901_
                                                        (cons _pre27938_
                                                              _imports27933_)
                                                        _deps27909_)))
                                                  (begin
                                                    (table-set!
                                                     _ht27899_
                                                     _id27932_
                                                     _hd27930_)
                                                    (_find-deps27901_
                                                     _rest27929_
                                                     (cons _hd27930_
                                                           _xdeps27940_)))))
                                              _$e27935_)
                                             (let ((_xdeps27942_
                                                    (_find-deps27901_
                                                     _imports27933_
                                                     _deps27909_)))
                                               (begin
                                                 (table-set!
                                                  _ht27899_
                                                  _id27932_
                                                  _hd27930_)
                                                 (_find-deps27901_
                                                  _rest27929_
                                                  (cons _hd27930_
                                                        _xdeps27942_))))))))
                                 (if (##structure-instance-of?
                                      _hd27930_
                                      'gx#prelude-context::t)
                                     (let ((_id27944_
                                            (##structure-ref
                                             _hd27930_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (if (table-ref _ht27899_ _id27944_ '#f)
                                           (_find-deps27901_
                                            _rest27929_
                                            _deps27909_)
                                           (let ((_xdeps27946_
                                                  (_find-deps27901_
                                                   (##structure-ref
                                                    _hd27930_
                                                    '7
                                                    gx#prelude-context::t
                                                    '#f)
                                                   _deps27909_)))
                                             (if (table-ref
                                                  _ht27899_
                                                  _id27944_
                                                  '#f)
                                                 (_find-deps27901_
                                                  _rest27929_
                                                  _xdeps27946_)
                                                 (begin
                                                   (table-set!
                                                    _ht27899_
                                                    _id27944_
                                                    _hd27930_)
                                                   (_find-deps27901_
                                                    _rest27929_
                                                    (cons _hd27930_
                                                          _xdeps27946_)))))))
                                     (if (##structure-direct-instance-of?
                                          _hd27930_
                                          'gx#module-import::t)
                                         (if (fxzero? (##direct-structure-ref
                                                       _hd27930_
                                                       '3
                                                       gx#module-import::t
                                                       '#f))
                                             (_find-deps27901_
                                              (cons (##direct-structure-ref
                                                     _hd27930_
                                                     '1
                                                     gx#module-import::t
                                                     '#f)
                                                    _rest27929_)
                                              _deps27909_)
                                             (_find-deps27901_
                                              _rest27929_
                                              _deps27909_))
                                         (if (##structure-direct-instance-of?
                                              _hd27930_
                                              'gx#module-export::t)
                                             (_find-deps27901_
                                              (cons (##direct-structure-ref
                                                     _hd27930_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)
                                                    _rest27929_)
                                              _deps27909_)
                                             (if (##structure-direct-instance-of?
                                                  _hd27930_
                                                  'gx#import-set::t)
                                                 (if (fxzero? (##direct-structure-ref
                                                               _hd27930_
                                                               '2
                                                               gx#import-set::t
                                                               '#f))
                                                     (_find-deps27901_
                                                      (cons (##direct-structure-ref
                                                             _hd27930_
                                                             '1
                                                             gx#import-set::t
                                                             '#f)
                                                            _rest27929_)
                                                      _deps27909_)
                                                     (if (fxpositive?
                                                          (##direct-structure-ref
                                                           _hd27930_
                                                           '2
                                                           gx#import-set::t
                                                           '#f))
                                                         (let ((_xdeps27948_
                                                                (_import-set-template27900_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd27930_
                         '0)))
                   (_find-deps27901_
                    (foldl1 cons _rest27929_ _xdeps27948_)
                    _deps27909_))
                 (_find-deps27901_ _rest27929_ _deps27909_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (error '"Unexpected module import"
                                                        _hd27930_)))))))))
                     (if (##pair? _rest2791027918_)
                         (let ((_hd2791527953_ (##car _rest2791027918_))
                               (_tl2791627955_ (##cdr _rest2791027918_)))
                           (let* ((_hd27958_ _hd2791527953_)
                                  (_rest27960_ _tl2791627955_))
                             (_K2791427950_ _rest27960_ _hd27958_)))
                         (_else2791227926_))))))
        (reverse (filter gx#expander-context-id
                         (_find-deps27901_
                          (let ((_$e27903_
                                 (gx#core-context-prelude__% _ctx27897_)))
                            (if _$e27903_
                                ((lambda (_pre27906_)
                                   (cons _pre27906_
                                         (##structure-ref
                                          _ctx27897_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _$e27903_)
                                (##structure-ref
                                 _ctx27897_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))))
  (define gxc#find-static-module-file
    (lambda (_ctx27836_)
      (let* ((_scm27838_
              (string-append
               (gxc#static-module-name
                (##structure-ref _ctx27836_ '1 gx#expander-context::t '#f))
               '".scm"))
             (_dirs27840_ (gx#current-expander-module-library-path))
             (_dirs27849_
              (let ((_$e27842_ (gxc#current-compile-output-dir)))
                (if _$e27842_
                    ((lambda (_g2784427846_) (cons _g2784427846_ _dirs27840_))
                     _$e27842_)
                    _dirs27840_)))
             (_dirs27855_
              (map (lambda (_g2785027852_)
                     (path-expand '"static" _g2785027852_))
                   _dirs27849_)))
        (let _lp27858_ ((_rest27860_ _dirs27855_))
          (let* ((_rest2786127869_ _rest27860_)
                 (_E2786427873_
                  (lambda () (error '"No clause matching" _rest2786127869_)))
                 (_else2786327877_
                  (lambda ()
                    (gxc#raise-compile-error
                     '"cannot find static module"
                     (##structure-ref _ctx27836_ '1 gx#expander-context::t '#f)
                     _scm27838_)))
                 (_K2786527885_
                  (lambda (_rest27880_ _dir27881_)
                    (let ((_path27883_ (path-expand _scm27838_ _dir27881_)))
                      (if (file-exists? _path27883_)
                          _path27883_
                          (_lp27858_ _rest27880_))))))
            (if (##pair? _rest2786127869_)
                (let ((_hd2786627888_ (##car _rest2786127869_))
                      (_tl2786727890_ (##cdr _rest2786127869_)))
                  (let* ((_dir27893_ _hd2786627888_)
                         (_rest27895_ _tl2786727890_))
                    (_K2786527885_ _rest27895_ _dir27893_)))
                (_else2786327877_)))))))
  (define gxc#file-empty?
    (lambda (_path27834_)
      (zero? (file-info-size (file-info _path27834_ '#t)))))
  (define gxc#compile-top-module
    (lambda (_ctx27831_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#verbose
            '"compile "
            (##structure-ref _ctx27831_ '1 gx#expander-context::t '#f))
           (if (gxc#current-compile-optimize)
               (gxc#optimize! _ctx27831_)
               '#!void)
           (gxc#collect-bindings _ctx27831_)
           (gxc#compile-runtime-code _ctx27831_)
           (gxc#compile-meta-code _ctx27831_)
           (if (if (gxc#current-compile-optimize)
                   (gxc#current-compile-generate-ssxi)
                   '#f)
               (gxc#compile-ssxi-code _ctx27831_)
               '#!void)))
       gx#current-expander-context
       _ctx27831_
       gx#current-expander-phi
       '0
       gx#current-expander-marks
       '()
       gxc#current-compile-symbol-table
       (let ((__obj28307 (make-object gxc#symbol-table::t '2)))
         (begin (gxc#symbol-table:::init! __obj28307) __obj28307))
       gxc#current-compile-runtime-sections
       (make-hash-table-eq)
       gxc#current-compile-runtime-names
       (make-table))))
  (define gxc#collect-bindings
    (lambda (_ctx27829_)
      (gxc#apply-collect-bindings
       (##structure-ref _ctx27829_ '11 gx#module-context::t '#f))))
  (define gxc#compile-runtime-code
    (lambda (_ctx27783_)
      (letrec ((_compile127785_
                (lambda (_ctx27818_)
                  (let* ((_code27820_
                          (##structure-ref
                           _ctx27818_
                           '11
                           gx#module-context::t
                           '#f))
                         (_rt27824_
                          (if (gxc#apply-find-runtime-code _code27820_)
                              (let ((_idstr27822_
                                     (symbol->string
                                      (##structure-ref
                                       _ctx27818_
                                       '1
                                       gx#expander-context::t
                                       '#f))))
                                (string-append _idstr27822_ '"__0"))
                              '#f)))
                    (begin
                      (if _rt27824_
                          (begin
                            (table-set!
                             (gxc#current-compile-runtime-sections)
                             _ctx27818_
                             _rt27824_)
                            (_generate-runtime-code27786_
                             _ctx27818_
                             _code27820_))
                          (if (gxc#current-compile-static)
                              (let ((_path27827_
                                     (gxc#compile-static-output-file
                                      _ctx27818_)))
                                (with-output-to-file
                                 (cons 'path:
                                       (cons _path27827_
                                             (cons 'permissions:
                                                   (cons '420 '()))))
                                 void))
                              '#!void))
                      (_generate-loader-code27787_
                       _ctx27818_
                       _code27820_
                       _rt27824_)))))
               (_generate-runtime-code27786_
                (lambda (_ctx27802_ _code27803_)
                  (let* ((_lifts27805_ (box '()))
                         (_runtime-code27808_
                          (call-with-parameters
                           (lambda () (gxc#apply-generate-runtime _code27803_))
                           gx#current-expander-context
                           _ctx27802_
                           gx#current-expander-phi
                           '0
                           gxc#current-compile-lift
                           _lifts27805_
                           gxc#current-compile-marks
                           (make-hash-table-eq)))
                         (_runtime-code27810_
                          (if (null? (unbox _lifts27805_))
                              _runtime-code27808_
                              (cons 'begin
                                    (foldr1 cons
                                            (cons _runtime-code27808_ '())
                                            (reverse (unbox _lifts27805_))))))
                         (_scm027812_
                          (gxc#compile-output-file _ctx27802_ '0 '".scm")))
                    (if (gxc#current-compile-static)
                        (let ((_scms27815_
                               (gxc#compile-static-output-file _ctx27802_)))
                          (begin
                            (call-with-parameters
                             (lambda ()
                               (gxc#compile-scm-file
                                _scm027812_
                                _runtime-code27810_))
                             gxc#current-compile-keep-scm
                             '#t)
                            (if (file-exists? _scms27815_)
                                (delete-file _scms27815_)
                                '#!void)
                            (gxc#verbose
                             '"copy static module "
                             _scm027812_
                             '" => "
                             _scms27815_)
                            (copy-file _scm027812_ _scms27815_)
                            (if (gxc#current-compile-keep-scm)
                                '#!void
                                (delete-file _scm027812_))))
                        (gxc#compile-scm-file
                         _scm027812_
                         _runtime-code27810_)))))
               (_generate-loader-code27787_
                (lambda (_ctx27791_ _code27792_ _rt27793_)
                  (let* ((_loader-code27796_
                          (call-with-parameters
                           (lambda () (gxc#apply-generate-loader _code27792_))
                           gx#current-expander-context
                           _ctx27791_))
                         (_loader-code27798_
                          (if _rt27793_
                              (cons 'begin
                                    (cons _loader-code27796_
                                          (cons (cons 'load-module
                                                      (cons _rt27793_ '()))
                                                '())))
                              _loader-code27796_)))
                    (call-with-parameters
                     (lambda ()
                       (gxc#compile-scm-file
                        (gxc#compile-output-file _ctx27791_ 'rt '".scm")
                        _loader-code27798_))
                     gxc#current-compile-gsc-options
                     '#f)))))
        (let ((_all-modules27789_
               (cons _ctx27783_ (gxc#lift-nested-modules _ctx27783_))))
          (for-each _compile127785_ _all-modules27789_)))))
  (define gxc#compile-meta-code
    (lambda (_ctx27685_)
      (letrec ((_compile-ssi27687_
                (lambda (_code27753_)
                  (let* ((_path27755_
                          (gxc#compile-output-file _ctx27685_ '#f '".ssi"))
                         (_prelude27766_
                          (let* ((_super27757_
                                  (##structure-ref
                                   _ctx27685_
                                   '3
                                   gx#phi-context::t
                                   '#f))
                                 (_$e27759_
                                  (##structure-ref
                                   _super27757_
                                   '1
                                   gx#expander-context::t
                                   '#f)))
                            (if _$e27759_
                                ((lambda (_g2776127763_)
                                   (make-symbol '":" _g2776127763_))
                                 _$e27759_)
                                ':<root>)))
                         (_ns27768_
                          (##structure-ref
                           _ctx27685_
                           '6
                           gx#module-context::t
                           '#f))
                         (_idstr27770_
                          (symbol->string
                           (##structure-ref
                            _ctx27685_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_pkg27777_
                          (let ((_$e27772_ (string-rindex _idstr27770_ '#\/)))
                            (if _$e27772_
                                ((lambda (_x27775_)
                                   (string->symbol
                                    (substring _idstr27770_ '0 _x27775_)))
                                 _$e27772_)
                                '#f)))
                         (_rt27779_
                          (table-ref
                           (gxc#current-compile-runtime-sections)
                           _ctx27685_
                           '#f)))
                    (begin
                      (gxc#verbose '"compile " _path27755_)
                      (with-output-to-file
                       (cons 'path:
                             (cons _path27755_
                                   (cons 'permissions: (cons '420 '()))))
                       (lambda ()
                         (begin
                           (displayln '"prelude:" '" " _prelude27766_)
                           (if _pkg27777_
                               (displayln '"package:" '" " _pkg27777_)
                               '#!void)
                           (displayln '"namespace:" '" " _ns27768_)
                           (newline)
                           (pretty-print _code27753_)
                           (if _rt27779_
                               (pretty-print
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons '_gx#load-module '()))
                                            (cons (cons '%#quote
                                                        (cons _rt27779_ '()))
                                                  '()))))
                               '#!void))))))))
               (_compile-phi27688_
                (lambda (_part27693_)
                  (let* ((_part2769427707_ _part27693_)
                         (_E2769627711_
                          (lambda ()
                            (error '"No clause matching" _part2769427707_)))
                         (_K2769727722_
                          (lambda (_code27714_
                                   _n27715_
                                   _phi27716_
                                   _phi-ctx27717_)
                            (let ((_code27720_
                                   (call-with-parameters
                                    (lambda ()
                                      (gxc#generate-runtime-phi _code27714_))
                                    gx#current-expander-context
                                    _phi-ctx27717_
                                    gx#current-expander-phi
                                    _phi27716_)))
                              (gxc#compile-scm-file
                               (gxc#compile-output-file
                                _ctx27685_
                                _n27715_
                                '".scm")
                               _code27720_)))))
                    (if (##pair? _part2769427707_)
                        (let ((_hd2769827725_ (##car _part2769427707_))
                              (_tl2769927727_ (##cdr _part2769427707_)))
                          (let ((_phi-ctx27730_ _hd2769827725_))
                            (if (##pair? _tl2769927727_)
                                (let ((_hd2770027732_ (##car _tl2769927727_))
                                      (_tl2770127734_ (##cdr _tl2769927727_)))
                                  (let ((_phi27737_ _hd2770027732_))
                                    (if (##pair? _tl2770127734_)
                                        (let ((_hd2770227739_
                                               (##car _tl2770127734_))
                                              (_tl2770327741_
                                               (##cdr _tl2770127734_)))
                                          (let ((_n27744_ _hd2770227739_))
                                            (if (##pair? _tl2770327741_)
                                                (let ((_hd2770427746_
                                                       (##car _tl2770327741_))
                                                      (_tl2770527748_
                                                       (##cdr _tl2770327741_)))
                                                  (let ((_code27751_
                                                         _hd2770427746_))
                                                    (if (##null? _tl2770527748_)
                                                        (_K2769727722_
                                                         _code27751_
                                                         _n27744_
                                                         _phi27737_
                                                         _phi-ctx27730_)
                                                        (_E2769627711_))))
                                                (_E2769627711_))))
                                        (_E2769627711_))))
                                (_E2769627711_))))
                        (_E2769627711_))))))
        (let ((_g28315_ (gxc#generate-meta-code _ctx27685_)))
          (begin
            (let ((_g28316_ (values-count _g28315_)))
              (if (not (fx= _g28316_ 2))
                  (error "Context expects 2 values" _g28316_)))
            (let ((_ssi-code27690_ (values-ref _g28315_ 0))
                  (_phi-code27691_ (values-ref _g28315_ 1)))
              (begin
                (_compile-ssi27687_ _ssi-code27690_)
                (for-each _compile-phi27688_ _phi-code27691_))))))))
  (define gxc#compile-ssxi-code
    (lambda (_ctx27668_)
      (let* ((_path27670_ (gxc#compile-output-file _ctx27668_ '#f '".ssxi.ss"))
             (_code27672_
              (gxc#apply-generate-ssxi
               (##structure-ref _ctx27668_ '11 gx#module-context::t '#f)))
             (_idstr27674_
              (symbol->string
               (##structure-ref _ctx27668_ '1 gx#expander-context::t '#f)))
             (_pkg27681_
              (let ((_$e27676_ (string-rindex _idstr27674_ '#\/)))
                (if _$e27676_
                    ((lambda (_x27679_)
                       (string->symbol (substring _idstr27674_ '0 _x27679_)))
                     _$e27676_)
                    '#f))))
        (begin
          (gxc#verbose '"compile " _path27670_)
          (with-output-to-file
           (cons 'path:
                 (cons _path27670_ (cons 'permissions: (cons '420 '()))))
           (lambda ()
             (begin
               (displayln '"prelude: :gerbil/compiler/ssxi")
               (if _pkg27681_ (displayln '"package: " _pkg27681_) '#!void)
               (newline)
               (pretty-print _code27672_))))))))
  (define gxc#generate-meta-code
    (lambda (_ctx27661_)
      (let* ((_state27663_
              (let ((__obj28308 (make-object gxc#meta-state::t '4)))
                (begin
                  (gxc#meta-state:::init! __obj28308 _ctx27661_)
                  __obj28308)))
             (_ssi-code27665_
              (gxc#apply-generate-meta
               (##structure-ref _ctx27661_ '11 gx#module-context::t '#f)
               _state27663_)))
        (values _ssi-code27665_ (gxc#meta-state-end! _state27663_)))))
  (define gxc#generate-runtime-phi
    (lambda (_stx27654_)
      (let ((_lifts27656_ (box '())))
        (call-with-parameters
         (lambda ()
           (let ((_code27659_ (gxc#apply-generate-runtime-phi _stx27654_)))
             (if (null? (unbox _lifts27656_))
                 _code27659_
                 (cons 'begin
                       (foldr1 cons
                               (cons _code27659_ '())
                               (reverse (unbox _lifts27656_)))))))
         gxc#current-compile-lift
         _lifts27656_
         gxc#current-compile-marks
         (make-hash-table-eq)))))
  (define gxc#lift-nested-modules
    (lambda (_ctx27650_)
      (let ((_modules27652_ (box '())))
        (begin
          (gxc#apply-lift-modules
           (##structure-ref _ctx27650_ '11 gx#module-context::t '#f)
           _modules27652_)
          (reverse (unbox _modules27652_))))))
  (define gxc#compile-scm-file
    (lambda (_path27646_ _code27647_)
      (begin
        (gxc#verbose '"compile " _path27646_)
        (with-output-to-file
         (cons 'path: (cons _path27646_ (cons 'permissions: (cons '420 '()))))
         (lambda ()
           (begin
             (pretty-print
              '(declare (block) (standard-bindings) (extended-bindings)))
             (pretty-print _code27647_))))
        (if (gxc#current-compile-invoke-gsc)
            (gxc#gsc-compile-file _path27646_)
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path27646_)))))
  (define gxc#gsc-debug-options
    (lambda ()
      (let ((_$e27635_ (gxc#current-compile-debug)))
        (if _$e27635_
            ((lambda (_debug27638_)
               (let ((_$e27640_ _debug27638_))
                 (if (eq? 'env _$e27640_)
                     (cons '"-debug-environments" '())
                     (if (eq? 'src _$e27640_)
                         (cons '"-debug-environments"
                               (cons '"-debug-source" '()))
                         (if (let ((_$e27643_ (eq? 'all _$e27640_)))
                               (if _$e27643_ _$e27643_ (eq? '#t _$e27640_)))
                             (cons '"-debug" '())
                             (gxc#raise-compile-error
                              '"unknown debug option"
                              _debug27638_))))))
             _$e27635_)
            '()))))
  (define gxc#gsc-compile-file
    (lambda (_path27617_)
      (let* ((_gsc-args27624_
              (let ((_$e27619_ (gxc#current-compile-gsc-options)))
                (if _$e27619_
                    ((lambda (_opts27622_)
                       (foldr1 cons (cons _path27617_ '()) _opts27622_))
                     _$e27619_)
                    (cons _path27617_ '()))))
             (_gsc-args27626_
              (foldr1 cons _gsc-args27624_ (gxc#gsc-debug-options)))
             (_g28317_
              (gxc#verbose '"invoke gsc " (cons 'gsc _gsc-args27626_)))
             (_proc27629_
              (open-process
               (cons 'path:
                     (cons '"gsc"
                           (cons 'arguments:
                                 (cons _gsc-args27626_
                                       (cons 'stdout-redirection:
                                             (cons '#f '()))))))))
             (_status27631_ (process-status _proc27629_)))
        (if (zero? _status27631_)
            '#!void
            (gxc#raise-compile-error
             '"Compilation error; gsc exit with nonzero status"
             _path27617_
             _status27631_)))))
  (define gxc#compile-output-file
    (lambda (_ctx27589_ _n27590_ _ext27591_)
      (letrec ((_module-relative-path27593_
                (lambda (_ctx27615_)
                  (path-strip-directory
                   (symbol->string
                    (##structure-ref
                     _ctx27615_
                     '1
                     gx#expander-context::t
                     '#f)))))
               (_module-source-directory27594_
                (lambda (_ctx27611_)
                  (path-directory
                   (let ((_mpath27613_
                          (##structure-ref
                           _ctx27611_
                           '7
                           gx#module-context::t
                           '#f)))
                     (if (string? _mpath27613_)
                         _mpath27613_
                         (last _mpath27613_))))))
               (_section-string27595_
                (lambda (_n27609_)
                  (if (number? _n27609_)
                      (number->string _n27609_)
                      (if (symbol? _n27609_)
                          (symbol->string _n27609_)
                          (if (string? _n27609_)
                              _n27609_
                              (gxc#raise-compile-error
                               '"Unexpected section"
                               _n27609_))))))
               (_file-name27596_
                (lambda (_path27607_)
                  (if _n27590_
                      (string-append
                       _path27607_
                       '"__"
                       (_section-string27595_ _n27590_)
                       _ext27591_)
                      (string-append _path27607_ _ext27591_))))
               (_file-path27597_
                (lambda ()
                  (let ((_$e27602_ (gxc#current-compile-output-dir)))
                    (if _$e27602_
                        ((lambda (_outdir27605_)
                           (path-expand
                            (_file-name27596_
                             (symbol->string
                              (##structure-ref
                               _ctx27589_
                               '1
                               gx#expander-context::t
                               '#f)))
                            _outdir27605_))
                         _$e27602_)
                        (path-expand
                         (_file-name27596_
                          (_module-relative-path27593_ _ctx27589_))
                         (_module-source-directory27594_ _ctx27589_)))))))
        (let ((_path27599_ (_file-path27597_)))
          (begin
            (create-directory* (path-directory _path27599_))
            _path27599_)))))
  (define gxc#compile-static-output-file
    (lambda (_ctx27572_)
      (letrec ((_file-name27574_
                (lambda (_idstr27587_)
                  (string-append
                   (gxc#static-module-name _idstr27587_)
                   '".scm")))
               (_file-path27575_
                (lambda ()
                  (let* ((_file27580_
                          (_file-name27574_
                           (symbol->string
                            (##structure-ref
                             _ctx27572_
                             '1
                             gx#expander-context::t
                             '#f))))
                         (_$e27582_ (gxc#current-compile-output-dir)))
                    (if _$e27582_
                        ((lambda (_outdir27585_)
                           (path-expand
                            _file27580_
                            (path-expand '"static" _outdir27585_)))
                         _$e27582_)
                        (path-expand _file27580_ '"static"))))))
        (let ((_path27577_ (_file-path27575_)))
          (begin
            (create-directory* (path-directory _path27577_))
            _path27577_)))))
  (define gxc#compile-exe-output-file
    (lambda (_ctx27559_ _opts27560_)
      (let ((_$e27562_ (pgetq 'output-file: _opts27560_)))
        (if _$e27562_
            (values _$e27562_)
            (let* ((_mod-str27565_
                    (symbol->string
                     (##structure-ref
                      _ctx27559_
                      '1
                      gx#expander-context::t
                      '#f)))
                   (_$e27567_ (string-rindex _mod-str27565_ '#\/)))
              (if _$e27567_
                  ((lambda (_ix27570_)
                     (substring
                      _mod-str27565_
                      (fx+ _ix27570_ '1)
                      (string-length _mod-str27565_)))
                   _$e27567_)
                  _mod-str27565_))))))
  (define gxc#static-module-name
    (lambda (_idstr27555_)
      (if (string? _idstr27555_)
          (let ((_strs27557_ (string-split _idstr27555_ '#\/)))
            (string-join _strs27557_ '"__"))
          (if (symbol? _idstr27555_)
              (gxc#static-module-name (symbol->string _idstr27555_))
              (error '"Bad module id" _idstr27555_))))))
