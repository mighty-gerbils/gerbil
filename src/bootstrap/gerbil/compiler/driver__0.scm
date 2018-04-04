(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#compile-timestamp
    (lambda () (inexact->exact (floor (time->seconds (current-time))))))
  (begin
    (define gxc#compile-file__%
      (lambda (_srcpath50385_ _opts50386_)
        (begin
          (if (string? _srcpath50385_)
              '#!void
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath50385_))
          (let ((_outdir50388_ (pgetq 'output-dir: _opts50386_))
                (_invoke-gsc?50389_ (pgetq 'invoke-gsc: _opts50386_))
                (_gsc-options50390_ (pgetq 'gsc-options: _opts50386_))
                (_keep-scm?50391_ (pgetq 'keep-scm: _opts50386_))
                (_verbosity50392_ (pgetq 'verbose: _opts50386_))
                (_optimize50393_ (pgetq 'optimize: _opts50386_))
                (_debug50394_ (pgetq 'debug: _opts50386_))
                (_gen-ssxi50395_ (pgetq 'generate-ssxi: _opts50386_))
                (_static50396_ (pgetq 'static: _opts50386_)))
            (begin
              (if _outdir50388_ (create-directory* _outdir50388_) '#!void)
              (if _optimize50393_ (gxc#optimizer-info-init!) '#!void)
              (call-with-parameters
               (lambda ()
                 (begin
                   (gxc#verbose '"compile " _srcpath50385_)
                   (gxc#compile-top-module
                    (gx#import-module__0 _srcpath50385_))))
               gxc#current-compile-output-dir
               _outdir50388_
               gxc#current-compile-invoke-gsc
               _invoke-gsc?50389_
               gxc#current-compile-gsc-options
               _gsc-options50390_
               gxc#current-compile-keep-scm
               _keep-scm?50391_
               gxc#current-compile-verbose
               _verbosity50392_
               gxc#current-compile-optimize
               _optimize50393_
               gxc#current-compile-debug
               _debug50394_
               gxc#current-compile-generate-ssxi
               _gen-ssxi50395_
               gxc#current-compile-static
               _static50396_
               gxc#current-compile-timestamp
               (gxc#compile-timestamp)))))))
    (begin
      (define gxc#compile-file__0
        (lambda (_srcpath50402_)
          (let ((_opts50404_ '()))
            (gxc#compile-file__% _srcpath50402_ _opts50404_))))
      (define gxc#compile-file
        (lambda _g50425_
          (let ((_g50424_ (length _g50425_)))
            (cond ((##fx= _g50424_ 1) (apply gxc#compile-file__0 _g50425_))
                  ((##fx= _g50424_ 2) (apply gxc#compile-file__% _g50425_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-file
                    _g50425_))))))))
  (begin
    (define gxc#compile-exe-stub__%
      (lambda (_srcpath50371_ _opts50372_)
        (gxc#do-compile-exe
         _srcpath50371_
         _opts50372_
         gxc#compile-exe-stub-module)))
    (begin
      (define gxc#compile-exe-stub__0
        (lambda (_srcpath50377_)
          (let ((_opts50379_ '()))
            (gxc#compile-exe-stub__% _srcpath50377_ _opts50379_))))
      (define gxc#compile-exe-stub
        (lambda _g50427_
          (let ((_g50426_ (length _g50427_)))
            (cond ((##fx= _g50426_ 1) (apply gxc#compile-exe-stub__0 _g50427_))
                  ((##fx= _g50426_ 2) (apply gxc#compile-exe-stub__% _g50427_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-exe-stub
                    _g50427_))))))))
  (begin
    (define gxc#compile-static-exe__%
      (lambda (_srcpath50357_ _opts50358_)
        (gxc#do-compile-exe
         _srcpath50357_
         _opts50358_
         gxc#compile-exe-static-module)))
    (begin
      (define gxc#compile-static-exe__0
        (lambda (_srcpath50363_)
          (let ((_opts50365_ '()))
            (gxc#compile-static-exe__% _srcpath50363_ _opts50365_))))
      (define gxc#compile-static-exe
        (lambda _g50429_
          (let ((_g50428_ (length _g50429_)))
            (cond ((##fx= _g50428_ 1)
                   (apply gxc#compile-static-exe__0 _g50429_))
                  ((##fx= _g50428_ 2)
                   (apply gxc#compile-static-exe__% _g50429_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-static-exe
                    _g50429_))))))))
  (define gxc#do-compile-exe
    (lambda (_srcpath50345_ _opts50346_ _compile-e50347_)
      (begin
        (if (string? _srcpath50345_)
            '#!void
            (gxc#raise-compile-error
             '"Invalid module source path"
             _srcpath50345_))
        (let ((_outdir50349_ (pgetq 'output-dir: _opts50346_))
              (_invoke-gsc?50350_ (pgetq 'invoke-gsc: _opts50346_))
              (_gsc-options50351_ (pgetq 'gsc-options: _opts50346_))
              (_keep-scm?50352_ (pgetq 'keep-scm: _opts50346_))
              (_verbosity50353_ (pgetq 'verbose: _opts50346_)))
          (begin
            (if _outdir50349_ (create-directory* _outdir50349_) '#!void)
            (call-with-parameters
             (lambda ()
               (begin
                 (gxc#verbose '"compile exe " _srcpath50345_)
                 (_compile-e50347_
                  (gx#import-module__0 _srcpath50345_)
                  _opts50346_)))
             gxc#current-compile-output-dir
             _outdir50349_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?50350_
             gxc#current-compile-gsc-options
             _gsc-options50351_
             gxc#current-compile-keep-scm
             _keep-scm?50352_
             gxc#current-compile-verbose
             _verbosity50353_
             gxc#current-compile-timestamp
             (gxc#compile-timestamp)))))))
  (define gxc#compile-exe-stub-module
    (lambda (_ctx50311_ _opts50312_)
      (letrec ((_generate-stub50314_
                (lambda (_gx-init-stub50336_)
                  (let* ((_mod-str50338_
                          (gxc#module-id->path-string
                           (##structure-ref
                            _ctx50311_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_mod-rt50340_ (string-append _mod-str50338_ '"__rt"))
                         (_mod-main50342_
                          (gxc#find-runtime-symbol _ctx50311_ 'main)))
                    (begin
                      (write '(##namespace ("")))
                      (newline)
                      (write (cons 'include (cons _gx-init-stub50336_ '())))
                      (newline)
                      (write (cons '_gx#start!
                                   (cons _mod-rt50340_
                                         (cons (cons 'quote
                                                     (cons _mod-main50342_
                                                           '()))
                                               '()))))
                      (newline)))))
               (_compile-stub50315_
                (lambda (_output-scm50322_ _output-bin50323_)
                  (let* ((_init-stub50325_
                          (path-expand
                           '"lib/gx-init-exe.scm"
                           (getenv '"GERBIL_HOME")))
                         (_gsc-args50327_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin50323_
                                            (cons _output-scm50322_ '()))))))
                    (begin
                      (with-output-to-file
                       _output-scm50322_
                       (lambda () (_generate-stub50314_ _init-stub50325_)))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (gxc#verbose
                             '"invoke gsc "
                             (cons 'gsc _gsc-args50327_))
                            (let* ((_proc50331_
                                    (open-process
                                     (cons 'path:
                                           (cons '"gsc"
                                                 (cons 'arguments:
                                                       (cons _gsc-args50327_
                                                             (cons 'stdout-redirection:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_status50333_
                                    (process-status _proc50331_)))
                              (if (zero? _status50333_)
                                  '#!void
                                  (gxc#raise-compile-error
                                   '"Compilation error; gsc exit with nonzero status"
                                   _output-scm50322_
                                   _output-bin50323_
                                   _status50333_))))
                          '#!void))))))
        (let* ((_output-bin50317_
                (gxc#compile-exe-output-file _ctx50311_ _opts50312_))
               (_output-scm50319_ (string-append _output-bin50317_ '".scm")))
          (begin
            (_compile-stub50315_ _output-scm50319_ _output-bin50317_)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm50319_)))))))
  (define gxc#compile-exe-static-module
    (lambda (_ctx50172_ _opts50173_)
      (letrec ((_reset-declare50175_
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
               (_user-declare50176_
                (lambda ()
                  (let* ((_gsc-opts50254_ (pgetq 'gsc-options: _opts50173_))
                         (_gsc-prelude50256_
                          (if _gsc-opts50254_
                              (member '"-prelude" _gsc-opts50254_)
                              '#f))
                         (_gsc-prelude50258_
                          (if _gsc-prelude50256_
                              (read (open-input-string
                                     (cadr _gsc-prelude50256_)))
                              '#f)))
                    (let _lift50261_ ((_expr50263_ _gsc-prelude50258_))
                      (let* ((_expr5026450276_ _expr50263_)
                             (_else5026750284_ (lambda () '#f)))
                        (let ((_K5027250304_ (lambda () _expr50263_))
                              (_K5026950290_
                               (lambda (_exprs50288_)
                                 (ormap1 _lift50261_ _exprs50288_))))
                          (if (##pair? _expr5026450276_)
                              (let ((_hd5027350307_ (##car _expr5026450276_)))
                                (if (##eq? _hd5027350307_ 'declare)
                                    (_K5027250304_)
                                    (let ((_tl5027150295_
                                           (##cdr _expr5026450276_)))
                                      (if (##eq? _hd5027350307_ 'begin)
                                          (let ((_exprs50298_ _tl5027150295_))
                                            (_K5026950290_ _exprs50298_))
                                          (_else5026750284_)))))
                              (_else5026750284_))))))))
               (_generate-stub50177_
                (lambda (_deps50245_)
                  (let ((_mod-main50247_
                         (gxc#find-runtime-symbol _ctx50172_ 'main))
                        (_reset-decl50248_ (_reset-declare50175_))
                        (_user-decl50249_ (_user-declare50176_)))
                    (begin
                      (write '(##namespace ("")))
                      (newline)
                      (write '(declare (optimize-dead-definitions)))
                      (newline)
                      (for-each
                       (lambda (_dep50251_)
                         (begin
                           (write (cons 'include (cons _dep50251_ '())))
                           (newline)
                           (write '(##namespace ("")))
                           (write _reset-decl50248_)
                           (if _user-decl50249_
                               (write _user-decl50249_)
                               '#!void)
                           (newline)))
                       _deps50245_)
                      (write (cons 'apply
                                   (cons _mod-main50247_
                                         (cons (cons 'cdr
                                                     (cons (cons 'command-line
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                      (newline)))))
               (_static-include50178_
                (lambda (_gsc-opts50228_ _home50229_)
                  (letrec* ((_static-dir50231_
                             (path-expand '"lib/static" _home50229_))
                            (_user-static-dir50232_
                             (path-expand
                              '"lib/static"
                              (getenv '"GERBIL_PATH" '"~/.gerbil")))
                            (_cppflags50233_
                             (string-append
                              '"-I "
                              _static-dir50231_
                              '" -I "
                              _user-static-dir50232_)))
                    (let ((_$e50235_ (member '"-cc-options" _gsc-opts50228_)))
                      (if _$e50235_
                          ((lambda (_rest50238_)
                             (let* ((_cell50240_ (cdr _rest50238_))
                                    (_opt50242_ (car _cell50240_)))
                               (begin
                                 (set-car!
                                  _cell50240_
                                  (string-append
                                   _opt50242_
                                   '" "
                                   _cppflags50233_))
                                 _gsc-opts50228_)))
                           _$e50235_)
                          (cons '"-cc-options"
                                (cons _cppflags50233_ _gsc-opts50228_)))))))
               (_compile-stub50179_
                (lambda (_output-scm50186_ _output-bin50187_)
                  (let* ((_gerbil-home50189_ (getenv '"GERBIL_HOME"))
                         (_gx-gambc050191_
                          (path-expand
                           '"lib/static/gx-gambc0.scm"
                           _gerbil-home50189_))
                         (_gx-gambc-init50193_
                          (path-expand
                           '"lib/gx-init-static-exe.scm"
                           _gerbil-home50189_))
                         (_gx-gambc-macros50195_
                          (path-expand
                           '"lib/static/gx-gambc#.scm"
                           _gerbil-home50189_))
                         (_include-gx-gambc-macros50197_
                          (string-append
                           '"(include \""
                           _gx-gambc-macros50195_
                           '"\")"))
                         (_bin-scm50199_
                          (gxc#find-static-module-file _ctx50172_))
                         (_deps50201_
                          (gxc#find-runtime-module-deps _ctx50172_))
                         (_deps50203_
                          (map gxc#find-static-module-file _deps50201_))
                         (_deps50208_
                          (filter (lambda (_$obj50205_)
                                    (not (gxc#file-empty? _$obj50205_)))
                                  _deps50203_))
                         (_gsc-opts50213_
                          (let ((_$e50210_ (pgetq 'gsc-options: _opts50173_)))
                            (if _$e50210_ _$e50210_ '())))
                         (_gsc-opts50215_
                          (_static-include50178_
                           _gsc-opts50213_
                           _gerbil-home50189_))
                         (_gsc-gx-macros50217_
                          (if (gerbil-runtime-smp?)
                              (cons '"-e"
                                    (cons '"(define-cond-expand-feature|enable-smp|)"
                                          (cons '"-e"
                                                (cons _include-gx-gambc-macros50197_
                                                      '()))))
                              (cons '"-e"
                                    (cons _include-gx-gambc-macros50197_
                                          '()))))
                         (_gsc-args50219_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin50187_
                                            (foldr1 cons
                                                    (foldr1 cons
                                                            (foldr1 cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _output-scm50186_ '())
                            _gsc-gx-macros50217_)
                    _gsc-opts50215_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gxc#gsc-debug-options__0)))))))
                    (begin
                      (with-output-to-file
                       _output-scm50186_
                       (lambda ()
                         (_generate-stub50177_
                          (cons _gx-gambc050191_
                                (cons _gx-gambc-init50193_
                                      (foldr1 cons
                                              (cons _bin-scm50199_ '())
                                              _deps50208_))))))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (gxc#verbose
                             '"invoke gsc "
                             (cons 'gsc _gsc-args50219_))
                            (let* ((_proc50223_
                                    (open-process
                                     (cons 'path:
                                           (cons '"gsc"
                                                 (cons 'arguments:
                                                       (cons _gsc-args50219_
                                                             (cons 'stdout-redirection:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_status50225_
                                    (process-status _proc50223_)))
                              (if (zero? _status50225_)
                                  '#!void
                                  (gxc#raise-compile-error
                                   '"Compilation error; gsc exit with nonzero status"
                                   _output-scm50186_
                                   _output-bin50187_
                                   _status50225_))))
                          '#!void))))))
        (let* ((_output-bin50181_
                (gxc#compile-exe-output-file _ctx50172_ _opts50173_))
               (_output-scm50183_ (string-append _output-bin50181_ '".scm")))
          (begin
            (_compile-stub50179_ _output-scm50183_ _output-bin50181_)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm50183_)))))))
  (define gxc#find-export-binding
    (lambda (_ctx50122_ _id50123_)
      (let ((_$e50169_
             (find (lambda (_e5012450126_)
                     (let* ((_g5012850138_ _e5012450126_)
                            (_else5013050146_ (lambda () '#f))
                            (_K5013250150_ (lambda () '#t)))
                       (if (##structure-direct-instance-of?
                            _g5012850138_
                            'gx#module-export::t)
                           (let* ((_e5013350153_
                                   (##vector-ref _g5012850138_ '1))
                                  (_e5013450156_
                                   (##vector-ref _g5012850138_ '2))
                                  (_e5013550159_
                                   (##vector-ref _g5012850138_ '3)))
                             (if (##eq? _e5013550159_ '0)
                                 (let ((_e5013650162_
                                        (##vector-ref _g5012850138_ '4)))
                                   (if ((lambda (_g5016450166_)
                                          (eq? _g5016450166_ _id50123_))
                                        _e5013650162_)
                                       (_K5013250150_)
                                       (_else5013050146_)))
                                 (_else5013050146_)))
                           (_else5013050146_))))
                   (##structure-ref _ctx50122_ '9 gx#module-context::t '#f))))
        (if _$e50169_ (gx#core-resolve-module-export _$e50169_) '#f))))
  (define gxc#find-runtime-symbol
    (lambda (_ctx50114_ _id50115_)
      (let ((_$e50117_ (gxc#find-export-binding _ctx50114_ _id50115_)))
        (if _$e50117_
            ((lambda (_bind50120_)
               (begin
                 (if (##structure-instance-of?
                      _bind50120_
                      'gx#runtime-binding::t)
                     '#!void
                     (gxc#raise-compile-error
                      '"export is not a runtime binding"
                      _id50115_))
                 (##structure-ref _bind50120_ '1 gx#binding::t '#f)))
             _$e50117_)
            (gxc#raise-compile-error
             '"module does not export symbol"
             (##structure-ref _ctx50114_ '1 gx#expander-context::t '#f)
             _id50115_)))))
  (define gxc#find-runtime-module-deps
    (lambda (_ctx50001_)
      (letrec* ((_ht50003_ (make-table 'test: eq?))
                (_import-set-template50004_
                 (lambda (_in50066_ _phi50067_)
                   (let ((_iphi50069_
                          (fx+ _phi50067_
                               (##direct-structure-ref
                                _in50066_
                                '2
                                gx#import-set::t
                                '#f)))
                         (_imports50070_
                          (##structure-ref
                           (##direct-structure-ref
                            _in50066_
                            '1
                            gx#import-set::t
                            '#f)
                           '8
                           gx#module-context::t
                           '#f)))
                     (let _lp50072_ ((_rest50074_ _imports50070_)
                                     (_r50075_ '()))
                       (let* ((_rest5007650084_ _rest50074_)
                              (_else5007850092_ (lambda () _r50075_))
                              (_K5008050102_
                               (lambda (_rest50095_ _in50096_)
                                 (if (##structure-instance-of?
                                      _in50096_
                                      'gx#module-context::t)
                                     (if (fxzero? _iphi50069_)
                                         (_lp50072_
                                          _rest50095_
                                          (cons _in50096_ _r50075_))
                                         (_lp50072_ _rest50095_ _r50075_))
                                     (if (##structure-direct-instance-of?
                                          _in50096_
                                          'gx#module-import::t)
                                         (let ((_iphi50098_
                                                (fx+ _phi50067_
                                                     (##direct-structure-ref
                                                      _in50096_
                                                      '3
                                                      gx#module-import::t
                                                      '#f))))
                                           (if (fxzero? _iphi50098_)
                                               (_lp50072_
                                                _rest50095_
                                                (cons (##direct-structure-ref
                                                       (##direct-structure-ref
                                                        _in50096_
                                                        '1
                                                        gx#module-import::t
                                                        '#f)
                                                       '1
                                                       gx#module-export::t
                                                       '#f)
                                                      _r50075_))
                                               (_lp50072_
                                                _rest50095_
                                                _r50075_)))
                                         (if (##structure-direct-instance-of?
                                              _in50096_
                                              'gx#import-set::t)
                                             (let ((_xphi50100_
                                                    (fx+ _iphi50069_
                                                         (##direct-structure-ref
                                                          _in50096_
                                                          '2
                                                          gx#import-set::t
                                                          '#f))))
                                               (if (fxzero? _xphi50100_)
                                                   (_lp50072_
                                                    _rest50095_
                                                    (cons (##direct-structure-ref
                                                           _in50096_
                                                           '1
                                                           gx#import-set::t
                                                           '#f)
                                                          _r50075_))
                                                   (if (fxpositive?
                                                        _xphi50100_)
                                                       (_lp50072_
                                                        _rest50095_
                                                        (foldl1 cons
                                                                _r50075_
                                                                (_import-set-template50004_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in50096_
                         _iphi50069_)))
               (_lp50072_ _rest50095_ _r50075_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_lp50072_
                                              _rest50095_
                                              _r50075_)))))))
                         (if (##pair? _rest5007650084_)
                             (let ((_hd5008150105_ (##car _rest5007650084_))
                                   (_tl5008250107_ (##cdr _rest5007650084_)))
                               (let* ((_in50110_ _hd5008150105_)
                                      (_rest50112_ _tl5008250107_))
                                 (_K5008050102_ _rest50112_ _in50110_)))
                             (_else5007850092_)))))))
                (_find-deps50005_
                 (lambda (_rest50012_ _deps50013_)
                   (let* ((_rest5001450022_ _rest50012_)
                          (_else5001650030_ (lambda () _deps50013_))
                          (_K5001850054_
                           (lambda (_rest50033_ _hd50034_)
                             (if (##structure-instance-of?
                                  _hd50034_
                                  'gx#module-context::t)
                                 (let ((_id50036_
                                        (##structure-ref
                                         _hd50034_
                                         '1
                                         gx#expander-context::t
                                         '#f))
                                       (_imports50037_
                                        (##structure-ref
                                         _hd50034_
                                         '8
                                         gx#module-context::t
                                         '#f)))
                                   (if (table-ref _ht50003_ _id50036_ '#f)
                                       (_find-deps50005_
                                        _rest50033_
                                        _deps50013_)
                                       (let ((_$e50039_
                                              (gx#core-context-prelude__%
                                               _hd50034_)))
                                         (if _$e50039_
                                             ((lambda (_pre50042_)
                                                (let ((_xdeps50044_
                                                       (_find-deps50005_
                                                        (cons _pre50042_
                                                              _imports50037_)
                                                        _deps50013_)))
                                                  (begin
                                                    (table-set!
                                                     _ht50003_
                                                     _id50036_
                                                     _hd50034_)
                                                    (_find-deps50005_
                                                     _rest50033_
                                                     (cons _hd50034_
                                                           _xdeps50044_)))))
                                              _$e50039_)
                                             (let ((_xdeps50046_
                                                    (_find-deps50005_
                                                     _imports50037_
                                                     _deps50013_)))
                                               (begin
                                                 (table-set!
                                                  _ht50003_
                                                  _id50036_
                                                  _hd50034_)
                                                 (_find-deps50005_
                                                  _rest50033_
                                                  (cons _hd50034_
                                                        _xdeps50046_))))))))
                                 (if (##structure-instance-of?
                                      _hd50034_
                                      'gx#prelude-context::t)
                                     (let ((_id50048_
                                            (##structure-ref
                                             _hd50034_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (if (table-ref _ht50003_ _id50048_ '#f)
                                           (_find-deps50005_
                                            _rest50033_
                                            _deps50013_)
                                           (let ((_xdeps50050_
                                                  (_find-deps50005_
                                                   (##structure-ref
                                                    _hd50034_
                                                    '7
                                                    gx#prelude-context::t
                                                    '#f)
                                                   _deps50013_)))
                                             (if (table-ref
                                                  _ht50003_
                                                  _id50048_
                                                  '#f)
                                                 (_find-deps50005_
                                                  _rest50033_
                                                  _xdeps50050_)
                                                 (begin
                                                   (table-set!
                                                    _ht50003_
                                                    _id50048_
                                                    _hd50034_)
                                                   (_find-deps50005_
                                                    _rest50033_
                                                    (cons _hd50034_
                                                          _xdeps50050_)))))))
                                     (if (##structure-direct-instance-of?
                                          _hd50034_
                                          'gx#module-import::t)
                                         (if (fxzero? (##direct-structure-ref
                                                       _hd50034_
                                                       '3
                                                       gx#module-import::t
                                                       '#f))
                                             (_find-deps50005_
                                              (cons (##direct-structure-ref
                                                     _hd50034_
                                                     '1
                                                     gx#module-import::t
                                                     '#f)
                                                    _rest50033_)
                                              _deps50013_)
                                             (_find-deps50005_
                                              _rest50033_
                                              _deps50013_))
                                         (if (##structure-direct-instance-of?
                                              _hd50034_
                                              'gx#module-export::t)
                                             (_find-deps50005_
                                              (cons (##direct-structure-ref
                                                     _hd50034_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)
                                                    _rest50033_)
                                              _deps50013_)
                                             (if (##structure-direct-instance-of?
                                                  _hd50034_
                                                  'gx#import-set::t)
                                                 (if (fxzero? (##direct-structure-ref
                                                               _hd50034_
                                                               '2
                                                               gx#import-set::t
                                                               '#f))
                                                     (_find-deps50005_
                                                      (cons (##direct-structure-ref
                                                             _hd50034_
                                                             '1
                                                             gx#import-set::t
                                                             '#f)
                                                            _rest50033_)
                                                      _deps50013_)
                                                     (if (fxpositive?
                                                          (##direct-structure-ref
                                                           _hd50034_
                                                           '2
                                                           gx#import-set::t
                                                           '#f))
                                                         (let ((_xdeps50052_
                                                                (_import-set-template50004_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd50034_
                         '0)))
                   (_find-deps50005_
                    (foldl1 cons _rest50033_ _xdeps50052_)
                    _deps50013_))
                 (_find-deps50005_ _rest50033_ _deps50013_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (error '"Unexpected module import"
                                                        _hd50034_)))))))))
                     (if (##pair? _rest5001450022_)
                         (let ((_hd5001950057_ (##car _rest5001450022_))
                               (_tl5002050059_ (##cdr _rest5001450022_)))
                           (let* ((_hd50062_ _hd5001950057_)
                                  (_rest50064_ _tl5002050059_))
                             (_K5001850054_ _rest50064_ _hd50062_)))
                         (_else5001650030_))))))
        (reverse (filter gx#expander-context-id
                         (_find-deps50005_
                          (let ((_$e50007_
                                 (gx#core-context-prelude__% _ctx50001_)))
                            (if _$e50007_
                                ((lambda (_pre50010_)
                                   (cons _pre50010_
                                         (##structure-ref
                                          _ctx50001_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _$e50007_)
                                (##structure-ref
                                 _ctx50001_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))))
  (define gxc#find-static-module-file
    (lambda (_ctx49940_)
      (let* ((_scm49942_
              (string-append
               (gxc#static-module-name
                (##structure-ref _ctx49940_ '1 gx#expander-context::t '#f))
               '".scm"))
             (_dirs49944_ (gx#current-expander-module-library-path))
             (_dirs49953_
              (let ((_$e49946_ (gxc#current-compile-output-dir)))
                (if _$e49946_
                    ((lambda (_g4994849950_) (cons _g4994849950_ _dirs49944_))
                     _$e49946_)
                    _dirs49944_)))
             (_dirs49959_
              (map (lambda (_g4995449956_)
                     (path-expand '"static" _g4995449956_))
                   _dirs49953_)))
        (let _lp49962_ ((_rest49964_ _dirs49959_))
          (let* ((_rest4996549973_ _rest49964_)
                 (_else4996749981_
                  (lambda ()
                    (gxc#raise-compile-error
                     '"cannot find static module"
                     (##structure-ref _ctx49940_ '1 gx#expander-context::t '#f)
                     _scm49942_)))
                 (_K4996949989_
                  (lambda (_rest49984_ _dir49985_)
                    (let ((_path49987_ (path-expand _scm49942_ _dir49985_)))
                      (if (file-exists? _path49987_)
                          _path49987_
                          (_lp49962_ _rest49984_))))))
            (if (##pair? _rest4996549973_)
                (let ((_hd4997049992_ (##car _rest4996549973_))
                      (_tl4997149994_ (##cdr _rest4996549973_)))
                  (let* ((_dir49997_ _hd4997049992_)
                         (_rest49999_ _tl4997149994_))
                    (_K4996949989_ _rest49999_ _dir49997_)))
                (_else4996749981_)))))))
  (define gxc#file-empty?
    (lambda (_path49938_)
      (zero? (file-info-size (file-info _path49938_ '#t)))))
  (define gxc#compile-top-module
    (lambda (_ctx49935_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#verbose
            '"compile "
            (##structure-ref _ctx49935_ '1 gx#expander-context::t '#f))
           (if (gxc#current-compile-optimize)
               (gxc#optimize! _ctx49935_)
               '#!void)
           (gxc#collect-bindings _ctx49935_)
           (gxc#compile-runtime-code _ctx49935_)
           (gxc#compile-meta-code _ctx49935_)
           (if (if (gxc#current-compile-optimize)
                   (gxc#current-compile-generate-ssxi)
                   '#f)
               (gxc#compile-ssxi-code _ctx49935_)
               '#!void)))
       gx#current-expander-context
       _ctx49935_
       gx#current-expander-phi
       '0
       gx#current-expander-marks
       '()
       gxc#current-compile-symbol-table
       (let ((__obj50422 (make-object gxc#symbol-table::t '2)))
         (begin (gxc#symbol-table:::init! __obj50422) __obj50422))
       gxc#current-compile-runtime-sections
       (make-table 'test: eq?)
       gxc#current-compile-runtime-names
       (make-table))))
  (define gxc#collect-bindings
    (lambda (_ctx49933_)
      (gxc#apply-collect-bindings
       (##structure-ref _ctx49933_ '11 gx#module-context::t '#f))))
  (define gxc#compile-runtime-code
    (lambda (_ctx49887_)
      (letrec ((_compile149889_
                (lambda (_ctx49922_)
                  (let* ((_code49924_
                          (##structure-ref
                           _ctx49922_
                           '11
                           gx#module-context::t
                           '#f))
                         (_rt49928_
                          (if (gxc#apply-find-runtime-code _code49924_)
                              (let ((_idstr49926_
                                     (gxc#module-id->path-string
                                      (##structure-ref
                                       _ctx49922_
                                       '1
                                       gx#expander-context::t
                                       '#f))))
                                (string-append _idstr49926_ '"__0"))
                              '#f)))
                    (begin
                      (if _rt49928_
                          (begin
                            (table-set!
                             (gxc#current-compile-runtime-sections)
                             _ctx49922_
                             _rt49928_)
                            (_generate-runtime-code49890_
                             _ctx49922_
                             _code49924_))
                          (if (gxc#current-compile-static)
                              (let ((_path49931_
                                     (gxc#compile-static-output-file
                                      _ctx49922_)))
                                (with-output-to-file
                                 (cons 'path:
                                       (cons _path49931_
                                             (cons 'permissions:
                                                   (cons '420 '()))))
                                 void))
                              '#!void))
                      (_generate-loader-code49891_
                       _ctx49922_
                       _code49924_
                       _rt49928_)))))
               (_generate-runtime-code49890_
                (lambda (_ctx49906_ _code49907_)
                  (let* ((_lifts49909_ (box '()))
                         (_runtime-code49912_
                          (call-with-parameters
                           (lambda () (gxc#apply-generate-runtime _code49907_))
                           gx#current-expander-context
                           _ctx49906_
                           gx#current-expander-phi
                           '0
                           gxc#current-compile-lift
                           _lifts49909_
                           gxc#current-compile-marks
                           (make-table 'test: eq?)
                           gxc#current-compile-identifiers
                           (gxc#make-bound-identifier-table)))
                         (_runtime-code49914_
                          (if (null? (unbox _lifts49909_))
                              _runtime-code49912_
                              (cons 'begin
                                    (foldr1 cons
                                            (cons _runtime-code49912_ '())
                                            (reverse (unbox _lifts49909_))))))
                         (_scm049916_
                          (gxc#compile-output-file _ctx49906_ '0 '".scm")))
                    (if (gxc#current-compile-static)
                        (let ((_scms49919_
                               (gxc#compile-static-output-file _ctx49906_)))
                          (begin
                            (call-with-parameters
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _scm049916_
                                _runtime-code49914_))
                             gxc#current-compile-keep-scm
                             '#t)
                            (if (file-exists? _scms49919_)
                                (delete-file _scms49919_)
                                '#!void)
                            (gxc#verbose
                             '"copy static module "
                             _scm049916_
                             '" => "
                             _scms49919_)
                            (copy-file _scm049916_ _scms49919_)
                            (if (gxc#current-compile-keep-scm)
                                '#!void
                                (delete-file _scm049916_))))
                        (gxc#compile-scm-file__0
                         _scm049916_
                         _runtime-code49914_)))))
               (_generate-loader-code49891_
                (lambda (_ctx49895_ _code49896_ _rt49897_)
                  (let* ((_loader-code49900_
                          (call-with-parameters
                           (lambda () (gxc#apply-generate-loader _code49896_))
                           gx#current-expander-context
                           _ctx49895_))
                         (_loader-code49902_
                          (if _rt49897_
                              (cons 'begin
                                    (cons _loader-code49900_
                                          (cons (cons 'load-module
                                                      (cons _rt49897_ '()))
                                                '())))
                              _loader-code49900_)))
                    (call-with-parameters
                     (lambda ()
                       (gxc#compile-scm-file__0
                        (gxc#compile-output-file _ctx49895_ 'rt '".scm")
                        _loader-code49902_))
                     gxc#current-compile-gsc-options
                     '#f)))))
        (let ((_all-modules49893_
               (cons _ctx49887_ (gxc#lift-nested-modules _ctx49887_))))
          (for-each _compile149889_ _all-modules49893_)))))
  (define gxc#compile-meta-code
    (lambda (_ctx49789_)
      (letrec ((_compile-ssi49791_
                (lambda (_code49857_)
                  (let* ((_path49859_
                          (gxc#compile-output-file _ctx49789_ '#f '".ssi"))
                         (_prelude49870_
                          (let* ((_super49861_
                                  (##structure-ref
                                   _ctx49789_
                                   '3
                                   gx#phi-context::t
                                   '#f))
                                 (_$e49863_
                                  (##structure-ref
                                   _super49861_
                                   '1
                                   gx#expander-context::t
                                   '#f)))
                            (if _$e49863_
                                ((lambda (_g4986549867_)
                                   (make-symbol '":" _g4986549867_))
                                 _$e49863_)
                                ':<root>)))
                         (_ns49872_
                          (##structure-ref
                           _ctx49789_
                           '6
                           gx#module-context::t
                           '#f))
                         (_idstr49874_
                          (symbol->string
                           (##structure-ref
                            _ctx49789_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_pkg49881_
                          (let ((_$e49876_ (string-rindex _idstr49874_ '#\/)))
                            (if _$e49876_
                                ((lambda (_x49879_)
                                   (string->symbol
                                    (substring _idstr49874_ '0 _x49879_)))
                                 _$e49876_)
                                '#f)))
                         (_rt49883_
                          (table-ref
                           (gxc#current-compile-runtime-sections)
                           _ctx49789_
                           '#f)))
                    (begin
                      (gxc#verbose '"compile " _path49859_)
                      (with-output-to-file
                       (cons 'path:
                             (cons _path49859_
                                   (cons 'permissions: (cons '420 '()))))
                       (lambda ()
                         (begin
                           (displayln '"prelude:" '" " _prelude49870_)
                           (if _pkg49881_
                               (displayln '"package:" '" " _pkg49881_)
                               '#!void)
                           (displayln '"namespace:" '" " _ns49872_)
                           (newline)
                           (pretty-print _code49857_)
                           (if _rt49883_
                               (pretty-print
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons '_gx#load-module '()))
                                            (cons (cons '%#quote
                                                        (cons _rt49883_ '()))
                                                  '()))))
                               '#!void))))))))
               (_compile-phi49792_
                (lambda (_part49797_)
                  (let* ((_part4979849811_ _part49797_)
                         (_E4980049815_
                          (lambda ()
                            (error '"No clause matching" _part4979849811_)))
                         (_K4980149826_
                          (lambda (_code49818_
                                   _n49819_
                                   _phi49820_
                                   _phi-ctx49821_)
                            (let ((_code49824_
                                   (call-with-parameters
                                    (lambda ()
                                      (gxc#generate-runtime-phi _code49818_))
                                    gx#current-expander-context
                                    _phi-ctx49821_
                                    gx#current-expander-phi
                                    _phi49820_)))
                              (gxc#compile-scm-file__%
                               (gxc#compile-output-file
                                _ctx49789_
                                _n49819_
                                '".scm")
                               _code49824_
                               '#t)))))
                    (if (##pair? _part4979849811_)
                        (let ((_hd4980249829_ (##car _part4979849811_))
                              (_tl4980349831_ (##cdr _part4979849811_)))
                          (let ((_phi-ctx49834_ _hd4980249829_))
                            (if (##pair? _tl4980349831_)
                                (let ((_hd4980449836_ (##car _tl4980349831_))
                                      (_tl4980549838_ (##cdr _tl4980349831_)))
                                  (let ((_phi49841_ _hd4980449836_))
                                    (if (##pair? _tl4980549838_)
                                        (let ((_hd4980649843_
                                               (##car _tl4980549838_))
                                              (_tl4980749845_
                                               (##cdr _tl4980549838_)))
                                          (let ((_n49848_ _hd4980649843_))
                                            (if (##pair? _tl4980749845_)
                                                (let ((_hd4980849850_
                                                       (##car _tl4980749845_))
                                                      (_tl4980949852_
                                                       (##cdr _tl4980749845_)))
                                                  (let ((_code49855_
                                                         _hd4980849850_))
                                                    (if (##null? _tl4980949852_)
                                                        (_K4980149826_
                                                         _code49855_
                                                         _n49848_
                                                         _phi49841_
                                                         _phi-ctx49834_)
                                                        (_E4980049815_))))
                                                (_E4980049815_))))
                                        (_E4980049815_))))
                                (_E4980049815_))))
                        (_E4980049815_))))))
        (let ((_g50430_ (gxc#generate-meta-code _ctx49789_)))
          (begin
            (let ((_g50431_
                   (if (##values? _g50430_) (##vector-length _g50430_) 1)))
              (if (not (##fx= _g50431_ 2))
                  (error "Context expects 2 values" _g50431_)))
            (let ((_ssi-code49794_ (##vector-ref _g50430_ 0))
                  (_phi-code49795_ (##vector-ref _g50430_ 1)))
              (begin
                (_compile-ssi49791_ _ssi-code49794_)
                (for-each _compile-phi49792_ _phi-code49795_))))))))
  (define gxc#compile-ssxi-code
    (lambda (_ctx49772_)
      (let* ((_path49774_ (gxc#compile-output-file _ctx49772_ '#f '".ssxi.ss"))
             (_code49776_
              (gxc#apply-generate-ssxi
               (##structure-ref _ctx49772_ '11 gx#module-context::t '#f)))
             (_idstr49778_
              (symbol->string
               (##structure-ref _ctx49772_ '1 gx#expander-context::t '#f)))
             (_pkg49785_
              (let ((_$e49780_ (string-rindex _idstr49778_ '#\/)))
                (if _$e49780_
                    ((lambda (_x49783_)
                       (string->symbol (substring _idstr49778_ '0 _x49783_)))
                     _$e49780_)
                    '#f))))
        (begin
          (gxc#verbose '"compile " _path49774_)
          (with-output-to-file
           (cons 'path:
                 (cons _path49774_ (cons 'permissions: (cons '420 '()))))
           (lambda ()
             (begin
               (displayln '"prelude: :gerbil/compiler/ssxi")
               (if _pkg49785_ (displayln '"package: " _pkg49785_) '#!void)
               (newline)
               (pretty-print _code49776_))))))))
  (define gxc#generate-meta-code
    (lambda (_ctx49765_)
      (let* ((_state49767_
              (let ((__obj50423 (make-object gxc#meta-state::t '4)))
                (begin
                  (gxc#meta-state:::init! __obj50423 _ctx49765_)
                  __obj50423)))
             (_ssi-code49769_
              (gxc#apply-generate-meta
               (##structure-ref _ctx49765_ '11 gx#module-context::t '#f)
               _state49767_)))
        (values _ssi-code49769_ (gxc#meta-state-end! _state49767_)))))
  (define gxc#generate-runtime-phi
    (lambda (_stx49758_)
      (let ((_lifts49760_ (box '())))
        (call-with-parameters
         (lambda ()
           (let ((_code49763_ (gxc#apply-generate-runtime-phi _stx49758_)))
             (if (null? (unbox _lifts49760_))
                 _code49763_
                 (cons 'begin
                       (foldr1 cons
                               (cons _code49763_ '())
                               (reverse (unbox _lifts49760_)))))))
         gxc#current-compile-lift
         _lifts49760_
         gxc#current-compile-marks
         (make-table 'test: eq?)
         gxc#current-compile-identifiers
         (gxc#make-bound-identifier-table)))))
  (define gxc#lift-nested-modules
    (lambda (_ctx49754_)
      (let ((_modules49756_ (box '())))
        (begin
          (gxc#apply-lift-modules
           (##structure-ref _ctx49754_ '11 gx#module-context::t '#f)
           _modules49756_)
          (reverse (unbox _modules49756_))))))
  (begin
    (define gxc#compile-scm-file__%
      (lambda (_path49737_ _code49738_ _phi?49739_)
        (begin
          (gxc#verbose '"compile " _path49737_)
          (with-output-to-file
           (cons 'path:
                 (cons _path49737_ (cons 'permissions: (cons '420 '()))))
           (lambda ()
             (begin
               (pretty-print
                (cons 'declare
                      (cons (cons 'block '())
                            (cons (cons 'standard-bindings '())
                                  (cons (cons 'extended-bindings '())
                                        (foldr1 cons
                                                '()
                                                (if _phi?49739_
                                                    '((inlining-limit 200))
                                                    '())))))))
               (pretty-print _code49738_))))
          (if (gxc#current-compile-invoke-gsc)
              (gxc#gsc-compile-file _path49737_ _phi?49739_)
              '#!void)
          (if (gxc#current-compile-keep-scm)
              '#!void
              (delete-file _path49737_)))))
    (begin
      (define gxc#compile-scm-file__0
        (lambda (_path49745_ _code49746_)
          (let ((_phi?49748_ '#f))
            (gxc#compile-scm-file__% _path49745_ _code49746_ _phi?49748_))))
      (define gxc#compile-scm-file
        (lambda _g50433_
          (let ((_g50432_ (length _g50433_)))
            (cond ((##fx= _g50432_ 2) (apply gxc#compile-scm-file__0 _g50433_))
                  ((##fx= _g50432_ 3) (apply gxc#compile-scm-file__% _g50433_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-scm-file
                    _g50433_))))))))
  (begin
    (define gxc#gsc-debug-options__%
      (lambda (_phi?49644_)
        (let ((_$e49717_ (gxc#current-compile-debug)))
          (if _$e49717_
              ((lambda (_debug49720_)
                 (let ((_$e49722_ _debug49720_))
                   (if (eq? 'env _$e49722_)
                       (if _phi?49644_ '() (cons '"-debug-environments" '()))
                       (if (eq? 'env/phi _$e49722_)
                           (cons '"-debug-environments" '())
                           (if (eq? 'src _$e49722_)
                               (if _phi?49644_
                                   '()
                                   (cons '"-debug-environments"
                                         (cons '"-debug-source" '())))
                               (if (eq? 'src/phi _$e49722_)
                                   (cons '"-debug-environments"
                                         (cons '"-debug-source" '()))
                                   (if (eq? 'all _$e49722_)
                                       (if _phi?49644_
                                           '()
                                           (cons '"-debug" '()))
                                       (if (let ((_$e49725_
                                                  (eq? 'all/phi _$e49722_)))
                                             (if _$e49725_
                                                 _$e49725_
                                                 (eq? '#t _$e49722_)))
                                           (cons '"-debug" '())
                                           (gxc#raise-compile-error
                                            '"unknown debug option"
                                            _debug49720_)))))))))
               _$e49717_)
              '()))))
    (begin
      (define gxc#gsc-debug-options__0
        (lambda ()
          (let ((_phi?49732_ '#f)) (gxc#gsc-debug-options__% _phi?49732_))))
      (define gxc#gsc-debug-options
        (lambda _g50435_
          (let ((_g50434_ (length _g50435_)))
            (cond ((##fx= _g50434_ 0)
                   (apply gxc#gsc-debug-options__0 _g50435_))
                  ((##fx= _g50434_ 1)
                   (apply gxc#gsc-debug-options__% _g50435_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#gsc-debug-options
                    _g50435_))))))))
  (define gxc#gsc-compile-file
    (lambda (_path49625_ _phi?49626_)
      (let* ((_gsc-args49633_
              (let ((_$e49628_ (gxc#current-compile-gsc-options)))
                (if _$e49628_
                    ((lambda (_opts49631_)
                       (foldr1 cons (cons _path49625_ '()) _opts49631_))
                     _$e49628_)
                    (cons _path49625_ '()))))
             (_gsc-args49635_
              (foldr1 cons
                      _gsc-args49633_
                      (gxc#gsc-debug-options__% _phi?49626_)))
             (_g50436_
              (gxc#verbose '"invoke gsc " (cons 'gsc _gsc-args49635_)))
             (_proc49638_
              (open-process
               (cons 'path:
                     (cons '"gsc"
                           (cons 'arguments:
                                 (cons _gsc-args49635_
                                       (cons 'stdout-redirection:
                                             (cons '#f '()))))))))
             (_status49640_ (process-status _proc49638_)))
        (if (zero? _status49640_)
            '#!void
            (gxc#raise-compile-error
             '"Compilation error; gsc exit with nonzero status"
             _path49625_
             _status49640_)))))
  (define gxc#compile-output-file
    (lambda (_ctx49597_ _n49598_ _ext49599_)
      (letrec ((_module-relative-path49601_
                (lambda (_ctx49623_)
                  (path-strip-directory
                   (gxc#module-id->path-string
                    (##structure-ref
                     _ctx49623_
                     '1
                     gx#expander-context::t
                     '#f)))))
               (_module-source-directory49602_
                (lambda (_ctx49619_)
                  (path-directory
                   (let ((_mpath49621_
                          (##structure-ref
                           _ctx49619_
                           '7
                           gx#module-context::t
                           '#f)))
                     (if (string? _mpath49621_)
                         _mpath49621_
                         (last _mpath49621_))))))
               (_section-string49603_
                (lambda (_n49617_)
                  (if (number? _n49617_)
                      (number->string _n49617_)
                      (if (symbol? _n49617_)
                          (symbol->string _n49617_)
                          (if (string? _n49617_)
                              _n49617_
                              (gxc#raise-compile-error
                               '"Unexpected section"
                               _n49617_))))))
               (_file-name49604_
                (lambda (_path49615_)
                  (if _n49598_
                      (string-append
                       _path49615_
                       '"__"
                       (_section-string49603_ _n49598_)
                       _ext49599_)
                      (string-append _path49615_ _ext49599_))))
               (_file-path49605_
                (lambda ()
                  (let ((_$e49610_ (gxc#current-compile-output-dir)))
                    (if _$e49610_
                        ((lambda (_outdir49613_)
                           (path-expand
                            (_file-name49604_
                             (gxc#module-id->path-string
                              (##structure-ref
                               _ctx49597_
                               '1
                               gx#expander-context::t
                               '#f)))
                            _outdir49613_))
                         _$e49610_)
                        (path-expand
                         (_file-name49604_
                          (_module-relative-path49601_ _ctx49597_))
                         (_module-source-directory49602_ _ctx49597_)))))))
        (let ((_path49607_ (_file-path49605_)))
          (begin
            (create-directory* (path-directory _path49607_))
            _path49607_)))))
  (define gxc#compile-static-output-file
    (lambda (_ctx49580_)
      (letrec ((_file-name49582_
                (lambda (_id49595_)
                  (string-append (gxc#static-module-name _id49595_) '".scm")))
               (_file-path49583_
                (lambda ()
                  (let* ((_file49588_
                          (_file-name49582_
                           (##structure-ref
                            _ctx49580_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_$e49590_ (gxc#current-compile-output-dir)))
                    (if _$e49590_
                        ((lambda (_outdir49593_)
                           (path-expand
                            _file49588_
                            (path-expand '"static" _outdir49593_)))
                         _$e49590_)
                        (path-expand _file49588_ '"static"))))))
        (let ((_path49585_ (_file-path49583_)))
          (begin
            (create-directory* (path-directory _path49585_))
            _path49585_)))))
  (define gxc#compile-exe-output-file
    (lambda (_ctx49567_ _opts49568_)
      (let ((_$e49570_ (pgetq 'output-file: _opts49568_)))
        (if _$e49570_
            (values _$e49570_)
            (let* ((_mod-str49573_
                    (symbol->string
                     (##structure-ref
                      _ctx49567_
                      '1
                      gx#expander-context::t
                      '#f)))
                   (_$e49575_ (string-rindex _mod-str49573_ '#\/)))
              (if _$e49575_
                  ((lambda (_ix49578_)
                     (substring
                      _mod-str49573_
                      (fx+ _ix49578_ '1)
                      (string-length _mod-str49573_)))
                   _$e49575_)
                  _mod-str49573_))))))
  (define gxc#static-module-name
    (lambda (_idstr49560_)
      (if (string? _idstr49560_)
          (let* ((_str49562_ (gxc#module-id->path-string _idstr49560_))
                 (_strs49564_ (string-split _str49562_ '#\/)))
            (string-join _strs49564_ '"__"))
          (if (symbol? _idstr49560_)
              (gxc#static-module-name (symbol->string _idstr49560_))
              (error '"Bad module id" _idstr49560_))))))
