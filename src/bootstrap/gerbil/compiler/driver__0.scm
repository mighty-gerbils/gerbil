(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#compile-timestamp
    (lambda () (inexact->exact (floor (time->seconds (current-time))))))
  (begin
    (define gxc#compile-file__%
      (lambda (_srcpath50387_ _opts50388_)
        (begin
          (if (string? _srcpath50387_)
              '#!void
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath50387_))
          (let ((_outdir50390_ (pgetq 'output-dir: _opts50388_))
                (_invoke-gsc?50391_ (pgetq 'invoke-gsc: _opts50388_))
                (_gsc-options50392_ (pgetq 'gsc-options: _opts50388_))
                (_keep-scm?50393_ (pgetq 'keep-scm: _opts50388_))
                (_verbosity50394_ (pgetq 'verbose: _opts50388_))
                (_optimize50395_ (pgetq 'optimize: _opts50388_))
                (_debug50396_ (pgetq 'debug: _opts50388_))
                (_gen-ssxi50397_ (pgetq 'generate-ssxi: _opts50388_))
                (_static50398_ (pgetq 'static: _opts50388_)))
            (begin
              (if _outdir50390_ (create-directory* _outdir50390_) '#!void)
              (if _optimize50395_ (gxc#optimizer-info-init!) '#!void)
              (call-with-parameters
               (lambda ()
                 (begin
                   (gxc#verbose '"compile " _srcpath50387_)
                   (gxc#compile-top-module
                    (gx#import-module__0 _srcpath50387_))))
               gxc#current-compile-output-dir
               _outdir50390_
               gxc#current-compile-invoke-gsc
               _invoke-gsc?50391_
               gxc#current-compile-gsc-options
               _gsc-options50392_
               gxc#current-compile-keep-scm
               _keep-scm?50393_
               gxc#current-compile-verbose
               _verbosity50394_
               gxc#current-compile-optimize
               _optimize50395_
               gxc#current-compile-debug
               _debug50396_
               gxc#current-compile-generate-ssxi
               _gen-ssxi50397_
               gxc#current-compile-static
               _static50398_
               gxc#current-compile-timestamp
               (gxc#compile-timestamp)))))))
    (begin
      (define gxc#compile-file__0
        (lambda (_srcpath50404_)
          (let ((_opts50406_ '()))
            (gxc#compile-file__% _srcpath50404_ _opts50406_))))
      (define gxc#compile-file
        (lambda _g50427_
          (let ((_g50426_ (length _g50427_)))
            (cond ((##fx= _g50426_ 1) (apply gxc#compile-file__0 _g50427_))
                  ((##fx= _g50426_ 2) (apply gxc#compile-file__% _g50427_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-file
                    _g50427_))))))))
  (begin
    (define gxc#compile-exe-stub__%
      (lambda (_srcpath50373_ _opts50374_)
        (gxc#do-compile-exe
         _srcpath50373_
         _opts50374_
         gxc#compile-exe-stub-module)))
    (begin
      (define gxc#compile-exe-stub__0
        (lambda (_srcpath50379_)
          (let ((_opts50381_ '()))
            (gxc#compile-exe-stub__% _srcpath50379_ _opts50381_))))
      (define gxc#compile-exe-stub
        (lambda _g50429_
          (let ((_g50428_ (length _g50429_)))
            (cond ((##fx= _g50428_ 1) (apply gxc#compile-exe-stub__0 _g50429_))
                  ((##fx= _g50428_ 2) (apply gxc#compile-exe-stub__% _g50429_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-exe-stub
                    _g50429_))))))))
  (begin
    (define gxc#compile-static-exe__%
      (lambda (_srcpath50359_ _opts50360_)
        (gxc#do-compile-exe
         _srcpath50359_
         _opts50360_
         gxc#compile-exe-static-module)))
    (begin
      (define gxc#compile-static-exe__0
        (lambda (_srcpath50365_)
          (let ((_opts50367_ '()))
            (gxc#compile-static-exe__% _srcpath50365_ _opts50367_))))
      (define gxc#compile-static-exe
        (lambda _g50431_
          (let ((_g50430_ (length _g50431_)))
            (cond ((##fx= _g50430_ 1)
                   (apply gxc#compile-static-exe__0 _g50431_))
                  ((##fx= _g50430_ 2)
                   (apply gxc#compile-static-exe__% _g50431_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-static-exe
                    _g50431_))))))))
  (define gxc#do-compile-exe
    (lambda (_srcpath50347_ _opts50348_ _compile-e50349_)
      (begin
        (if (string? _srcpath50347_)
            '#!void
            (gxc#raise-compile-error
             '"Invalid module source path"
             _srcpath50347_))
        (let ((_outdir50351_ (pgetq 'output-dir: _opts50348_))
              (_invoke-gsc?50352_ (pgetq 'invoke-gsc: _opts50348_))
              (_gsc-options50353_ (pgetq 'gsc-options: _opts50348_))
              (_keep-scm?50354_ (pgetq 'keep-scm: _opts50348_))
              (_verbosity50355_ (pgetq 'verbose: _opts50348_)))
          (begin
            (if _outdir50351_ (create-directory* _outdir50351_) '#!void)
            (call-with-parameters
             (lambda ()
               (begin
                 (gxc#verbose '"compile exe " _srcpath50347_)
                 (_compile-e50349_
                  (gx#import-module__0 _srcpath50347_)
                  _opts50348_)))
             gxc#current-compile-output-dir
             _outdir50351_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?50352_
             gxc#current-compile-gsc-options
             _gsc-options50353_
             gxc#current-compile-keep-scm
             _keep-scm?50354_
             gxc#current-compile-verbose
             _verbosity50355_
             gxc#current-compile-timestamp
             (gxc#compile-timestamp)))))))
  (define gxc#compile-exe-stub-module
    (lambda (_ctx50313_ _opts50314_)
      (letrec ((_generate-stub50316_
                (lambda (_gx-init-stub50338_)
                  (let* ((_mod-str50340_
                          (gxc#module-id->path-string
                           (##structure-ref
                            _ctx50313_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_mod-rt50342_ (string-append _mod-str50340_ '"__rt"))
                         (_mod-main50344_
                          (gxc#find-runtime-symbol _ctx50313_ 'main)))
                    (begin
                      (write '(##namespace ("")))
                      (newline)
                      (write (cons 'include (cons _gx-init-stub50338_ '())))
                      (newline)
                      (write (cons '_gx#start!
                                   (cons _mod-rt50342_
                                         (cons (cons 'quote
                                                     (cons _mod-main50344_
                                                           '()))
                                               '()))))
                      (newline)))))
               (_compile-stub50317_
                (lambda (_output-scm50324_ _output-bin50325_)
                  (let* ((_init-stub50327_
                          (path-expand
                           '"lib/gx-init-exe.scm"
                           (getenv '"GERBIL_HOME")))
                         (_gsc-args50329_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin50325_
                                            (cons _output-scm50324_ '()))))))
                    (begin
                      (with-output-to-file
                       _output-scm50324_
                       (lambda () (_generate-stub50316_ _init-stub50327_)))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (gxc#verbose
                             '"invoke gsc "
                             (cons 'gsc _gsc-args50329_))
                            (let* ((_proc50333_
                                    (open-process
                                     (cons 'path:
                                           (cons '"gsc"
                                                 (cons 'arguments:
                                                       (cons _gsc-args50329_
                                                             (cons 'stdout-redirection:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_status50335_
                                    (process-status _proc50333_)))
                              (if (zero? _status50335_)
                                  '#!void
                                  (gxc#raise-compile-error
                                   '"Compilation error; gsc exit with nonzero status"
                                   _output-scm50324_
                                   _output-bin50325_
                                   _status50335_))))
                          '#!void))))))
        (let* ((_output-bin50319_
                (gxc#compile-exe-output-file _ctx50313_ _opts50314_))
               (_output-scm50321_ (string-append _output-bin50319_ '".scm")))
          (begin
            (_compile-stub50317_ _output-scm50321_ _output-bin50319_)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm50321_)))))))
  (define gxc#compile-exe-static-module
    (lambda (_ctx50174_ _opts50175_)
      (letrec ((_reset-declare50177_
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
               (_user-declare50178_
                (lambda ()
                  (let* ((_gsc-opts50256_ (pgetq 'gsc-options: _opts50175_))
                         (_gsc-prelude50258_
                          (if _gsc-opts50256_
                              (member '"-prelude" _gsc-opts50256_)
                              '#f))
                         (_gsc-prelude50260_
                          (if _gsc-prelude50258_
                              (read (open-input-string
                                     (cadr _gsc-prelude50258_)))
                              '#f)))
                    (let _lift50263_ ((_expr50265_ _gsc-prelude50260_))
                      (let* ((_expr5026650278_ _expr50265_)
                             (_else5026950286_ (lambda () '#f)))
                        (let ((_K5027450306_ (lambda () _expr50265_))
                              (_K5027150292_
                               (lambda (_exprs50290_)
                                 (ormap1 _lift50263_ _exprs50290_))))
                          (if (##pair? _expr5026650278_)
                              (let ((_hd5027550309_ (##car _expr5026650278_)))
                                (if (##eq? _hd5027550309_ 'declare)
                                    (_K5027450306_)
                                    (let ((_tl5027350297_
                                           (##cdr _expr5026650278_)))
                                      (if (##eq? _hd5027550309_ 'begin)
                                          (let ((_exprs50300_ _tl5027350297_))
                                            (_K5027150292_ _exprs50300_))
                                          (_else5026950286_)))))
                              (_else5026950286_))))))))
               (_generate-stub50179_
                (lambda (_deps50247_)
                  (let ((_mod-main50249_
                         (gxc#find-runtime-symbol _ctx50174_ 'main))
                        (_reset-decl50250_ (_reset-declare50177_))
                        (_user-decl50251_ (_user-declare50178_)))
                    (begin
                      (write '(##namespace ("")))
                      (newline)
                      (write '(declare (optimize-dead-definitions)))
                      (newline)
                      (for-each
                       (lambda (_dep50253_)
                         (begin
                           (write (cons 'include (cons _dep50253_ '())))
                           (newline)
                           (write '(##namespace ("")))
                           (write _reset-decl50250_)
                           (if _user-decl50251_
                               (write _user-decl50251_)
                               '#!void)
                           (newline)))
                       _deps50247_)
                      (write (cons 'apply
                                   (cons _mod-main50249_
                                         (cons (cons 'cdr
                                                     (cons (cons 'command-line
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                      (newline)))))
               (_static-include50180_
                (lambda (_gsc-opts50230_ _home50231_)
                  (letrec* ((_static-dir50233_
                             (path-expand '"lib/static" _home50231_))
                            (_user-static-dir50234_
                             (path-expand
                              '"lib/static"
                              (getenv '"GERBIL_PATH" '"~/.gerbil")))
                            (_cppflags50235_
                             (string-append
                              '"-I "
                              _static-dir50233_
                              '" -I "
                              _user-static-dir50234_)))
                    (let ((_$e50237_ (member '"-cc-options" _gsc-opts50230_)))
                      (if _$e50237_
                          ((lambda (_rest50240_)
                             (let* ((_cell50242_ (cdr _rest50240_))
                                    (_opt50244_ (car _cell50242_)))
                               (begin
                                 (set-car!
                                  _cell50242_
                                  (string-append
                                   _opt50244_
                                   '" "
                                   _cppflags50235_))
                                 _gsc-opts50230_)))
                           _$e50237_)
                          (cons '"-cc-options"
                                (cons _cppflags50235_ _gsc-opts50230_)))))))
               (_compile-stub50181_
                (lambda (_output-scm50188_ _output-bin50189_)
                  (let* ((_gerbil-home50191_ (getenv '"GERBIL_HOME"))
                         (_gx-gambc050193_
                          (path-expand
                           '"lib/static/gx-gambc0.scm"
                           _gerbil-home50191_))
                         (_gx-gambc-init50195_
                          (path-expand
                           '"lib/gx-init-static-exe.scm"
                           _gerbil-home50191_))
                         (_gx-gambc-macros50197_
                          (path-expand
                           '"lib/static/gx-gambc#.scm"
                           _gerbil-home50191_))
                         (_include-gx-gambc-macros50199_
                          (string-append
                           '"(include \""
                           _gx-gambc-macros50197_
                           '"\")"))
                         (_bin-scm50201_
                          (gxc#find-static-module-file _ctx50174_))
                         (_deps50203_
                          (gxc#find-runtime-module-deps _ctx50174_))
                         (_deps50205_
                          (map gxc#find-static-module-file _deps50203_))
                         (_deps50210_
                          (filter (lambda (_$obj50207_)
                                    (not (gxc#file-empty? _$obj50207_)))
                                  _deps50205_))
                         (_gsc-opts50215_
                          (let ((_$e50212_ (pgetq 'gsc-options: _opts50175_)))
                            (if _$e50212_ _$e50212_ '())))
                         (_gsc-opts50217_
                          (_static-include50180_
                           _gsc-opts50215_
                           _gerbil-home50191_))
                         (_gsc-gx-macros50219_
                          (if (gerbil-runtime-smp?)
                              (cons '"-e"
                                    (cons '"(define-cond-expand-feature|enable-smp|)"
                                          (cons '"-e"
                                                (cons _include-gx-gambc-macros50199_
                                                      '()))))
                              (cons '"-e"
                                    (cons _include-gx-gambc-macros50199_
                                          '()))))
                         (_gsc-args50221_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin50189_
                                            (foldr1 cons
                                                    (foldr1 cons
                                                            (foldr1 cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _output-scm50188_ '())
                            _gsc-gx-macros50219_)
                    _gsc-opts50217_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gxc#gsc-debug-options__0)))))))
                    (begin
                      (with-output-to-file
                       _output-scm50188_
                       (lambda ()
                         (_generate-stub50179_
                          (cons _gx-gambc050193_
                                (cons _gx-gambc-init50195_
                                      (foldr1 cons
                                              (cons _bin-scm50201_ '())
                                              _deps50210_))))))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (gxc#verbose
                             '"invoke gsc "
                             (cons 'gsc _gsc-args50221_))
                            (let* ((_proc50225_
                                    (open-process
                                     (cons 'path:
                                           (cons '"gsc"
                                                 (cons 'arguments:
                                                       (cons _gsc-args50221_
                                                             (cons 'stdout-redirection:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_status50227_
                                    (process-status _proc50225_)))
                              (if (zero? _status50227_)
                                  '#!void
                                  (gxc#raise-compile-error
                                   '"Compilation error; gsc exit with nonzero status"
                                   _output-scm50188_
                                   _output-bin50189_
                                   _status50227_))))
                          '#!void))))))
        (let* ((_output-bin50183_
                (gxc#compile-exe-output-file _ctx50174_ _opts50175_))
               (_output-scm50185_ (string-append _output-bin50183_ '".scm")))
          (begin
            (_compile-stub50181_ _output-scm50185_ _output-bin50183_)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm50185_)))))))
  (define gxc#find-export-binding
    (lambda (_ctx50124_ _id50125_)
      (let ((_$e50171_
             (find (lambda (_e5012650128_)
                     (let* ((_g5013050140_ _e5012650128_)
                            (_else5013250148_ (lambda () '#f))
                            (_K5013450152_ (lambda () '#t)))
                       (if (##structure-direct-instance-of?
                            _g5013050140_
                            'gx#module-export::t)
                           (let* ((_e5013550155_
                                   (##vector-ref _g5013050140_ '1))
                                  (_e5013650158_
                                   (##vector-ref _g5013050140_ '2))
                                  (_e5013750161_
                                   (##vector-ref _g5013050140_ '3)))
                             (if (##eq? _e5013750161_ '0)
                                 (let ((_e5013850164_
                                        (##vector-ref _g5013050140_ '4)))
                                   (if ((lambda (_g5016650168_)
                                          (eq? _g5016650168_ _id50125_))
                                        _e5013850164_)
                                       (_K5013450152_)
                                       (_else5013250148_)))
                                 (_else5013250148_)))
                           (_else5013250148_))))
                   (##structure-ref _ctx50124_ '9 gx#module-context::t '#f))))
        (if _$e50171_ (gx#core-resolve-module-export _$e50171_) '#f))))
  (define gxc#find-runtime-symbol
    (lambda (_ctx50116_ _id50117_)
      (let ((_$e50119_ (gxc#find-export-binding _ctx50116_ _id50117_)))
        (if _$e50119_
            ((lambda (_bind50122_)
               (begin
                 (if (##structure-instance-of?
                      _bind50122_
                      'gx#runtime-binding::t)
                     '#!void
                     (gxc#raise-compile-error
                      '"export is not a runtime binding"
                      _id50117_))
                 (##structure-ref _bind50122_ '1 gx#binding::t '#f)))
             _$e50119_)
            (gxc#raise-compile-error
             '"module does not export symbol"
             (##structure-ref _ctx50116_ '1 gx#expander-context::t '#f)
             _id50117_)))))
  (define gxc#find-runtime-module-deps
    (lambda (_ctx50003_)
      (letrec* ((_ht50005_ (make-table 'test: eq?))
                (_import-set-template50006_
                 (lambda (_in50068_ _phi50069_)
                   (let ((_iphi50071_
                          (fx+ _phi50069_
                               (##direct-structure-ref
                                _in50068_
                                '2
                                gx#import-set::t
                                '#f)))
                         (_imports50072_
                          (##structure-ref
                           (##direct-structure-ref
                            _in50068_
                            '1
                            gx#import-set::t
                            '#f)
                           '8
                           gx#module-context::t
                           '#f)))
                     (let _lp50074_ ((_rest50076_ _imports50072_)
                                     (_r50077_ '()))
                       (let* ((_rest5007850086_ _rest50076_)
                              (_else5008050094_ (lambda () _r50077_))
                              (_K5008250104_
                               (lambda (_rest50097_ _in50098_)
                                 (if (##structure-instance-of?
                                      _in50098_
                                      'gx#module-context::t)
                                     (if (fxzero? _iphi50071_)
                                         (_lp50074_
                                          _rest50097_
                                          (cons _in50098_ _r50077_))
                                         (_lp50074_ _rest50097_ _r50077_))
                                     (if (##structure-direct-instance-of?
                                          _in50098_
                                          'gx#module-import::t)
                                         (let ((_iphi50100_
                                                (fx+ _phi50069_
                                                     (##direct-structure-ref
                                                      _in50098_
                                                      '3
                                                      gx#module-import::t
                                                      '#f))))
                                           (if (fxzero? _iphi50100_)
                                               (_lp50074_
                                                _rest50097_
                                                (cons (##direct-structure-ref
                                                       (##direct-structure-ref
                                                        _in50098_
                                                        '1
                                                        gx#module-import::t
                                                        '#f)
                                                       '1
                                                       gx#module-export::t
                                                       '#f)
                                                      _r50077_))
                                               (_lp50074_
                                                _rest50097_
                                                _r50077_)))
                                         (if (##structure-direct-instance-of?
                                              _in50098_
                                              'gx#import-set::t)
                                             (let ((_xphi50102_
                                                    (fx+ _iphi50071_
                                                         (##direct-structure-ref
                                                          _in50098_
                                                          '2
                                                          gx#import-set::t
                                                          '#f))))
                                               (if (fxzero? _xphi50102_)
                                                   (_lp50074_
                                                    _rest50097_
                                                    (cons (##direct-structure-ref
                                                           _in50098_
                                                           '1
                                                           gx#import-set::t
                                                           '#f)
                                                          _r50077_))
                                                   (if (fxpositive?
                                                        _xphi50102_)
                                                       (_lp50074_
                                                        _rest50097_
                                                        (foldl1 cons
                                                                _r50077_
                                                                (_import-set-template50006_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in50098_
                         _iphi50071_)))
               (_lp50074_ _rest50097_ _r50077_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_lp50074_
                                              _rest50097_
                                              _r50077_)))))))
                         (if (##pair? _rest5007850086_)
                             (let ((_hd5008350107_ (##car _rest5007850086_))
                                   (_tl5008450109_ (##cdr _rest5007850086_)))
                               (let* ((_in50112_ _hd5008350107_)
                                      (_rest50114_ _tl5008450109_))
                                 (_K5008250104_ _rest50114_ _in50112_)))
                             (_else5008050094_)))))))
                (_find-deps50007_
                 (lambda (_rest50014_ _deps50015_)
                   (let* ((_rest5001650024_ _rest50014_)
                          (_else5001850032_ (lambda () _deps50015_))
                          (_K5002050056_
                           (lambda (_rest50035_ _hd50036_)
                             (if (##structure-instance-of?
                                  _hd50036_
                                  'gx#module-context::t)
                                 (let ((_id50038_
                                        (##structure-ref
                                         _hd50036_
                                         '1
                                         gx#expander-context::t
                                         '#f))
                                       (_imports50039_
                                        (##structure-ref
                                         _hd50036_
                                         '8
                                         gx#module-context::t
                                         '#f)))
                                   (if (table-ref _ht50005_ _id50038_ '#f)
                                       (_find-deps50007_
                                        _rest50035_
                                        _deps50015_)
                                       (let ((_$e50041_
                                              (gx#core-context-prelude__%
                                               _hd50036_)))
                                         (if _$e50041_
                                             ((lambda (_pre50044_)
                                                (let ((_xdeps50046_
                                                       (_find-deps50007_
                                                        (cons _pre50044_
                                                              _imports50039_)
                                                        _deps50015_)))
                                                  (begin
                                                    (table-set!
                                                     _ht50005_
                                                     _id50038_
                                                     _hd50036_)
                                                    (_find-deps50007_
                                                     _rest50035_
                                                     (cons _hd50036_
                                                           _xdeps50046_)))))
                                              _$e50041_)
                                             (let ((_xdeps50048_
                                                    (_find-deps50007_
                                                     _imports50039_
                                                     _deps50015_)))
                                               (begin
                                                 (table-set!
                                                  _ht50005_
                                                  _id50038_
                                                  _hd50036_)
                                                 (_find-deps50007_
                                                  _rest50035_
                                                  (cons _hd50036_
                                                        _xdeps50048_))))))))
                                 (if (##structure-instance-of?
                                      _hd50036_
                                      'gx#prelude-context::t)
                                     (let ((_id50050_
                                            (##structure-ref
                                             _hd50036_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (if (table-ref _ht50005_ _id50050_ '#f)
                                           (_find-deps50007_
                                            _rest50035_
                                            _deps50015_)
                                           (let ((_xdeps50052_
                                                  (_find-deps50007_
                                                   (##structure-ref
                                                    _hd50036_
                                                    '7
                                                    gx#prelude-context::t
                                                    '#f)
                                                   _deps50015_)))
                                             (if (table-ref
                                                  _ht50005_
                                                  _id50050_
                                                  '#f)
                                                 (_find-deps50007_
                                                  _rest50035_
                                                  _xdeps50052_)
                                                 (begin
                                                   (table-set!
                                                    _ht50005_
                                                    _id50050_
                                                    _hd50036_)
                                                   (_find-deps50007_
                                                    _rest50035_
                                                    (cons _hd50036_
                                                          _xdeps50052_)))))))
                                     (if (##structure-direct-instance-of?
                                          _hd50036_
                                          'gx#module-import::t)
                                         (if (fxzero? (##direct-structure-ref
                                                       _hd50036_
                                                       '3
                                                       gx#module-import::t
                                                       '#f))
                                             (_find-deps50007_
                                              (cons (##direct-structure-ref
                                                     _hd50036_
                                                     '1
                                                     gx#module-import::t
                                                     '#f)
                                                    _rest50035_)
                                              _deps50015_)
                                             (_find-deps50007_
                                              _rest50035_
                                              _deps50015_))
                                         (if (##structure-direct-instance-of?
                                              _hd50036_
                                              'gx#module-export::t)
                                             (_find-deps50007_
                                              (cons (##direct-structure-ref
                                                     _hd50036_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)
                                                    _rest50035_)
                                              _deps50015_)
                                             (if (##structure-direct-instance-of?
                                                  _hd50036_
                                                  'gx#import-set::t)
                                                 (if (fxzero? (##direct-structure-ref
                                                               _hd50036_
                                                               '2
                                                               gx#import-set::t
                                                               '#f))
                                                     (_find-deps50007_
                                                      (cons (##direct-structure-ref
                                                             _hd50036_
                                                             '1
                                                             gx#import-set::t
                                                             '#f)
                                                            _rest50035_)
                                                      _deps50015_)
                                                     (if (fxpositive?
                                                          (##direct-structure-ref
                                                           _hd50036_
                                                           '2
                                                           gx#import-set::t
                                                           '#f))
                                                         (let ((_xdeps50054_
                                                                (_import-set-template50006_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd50036_
                         '0)))
                   (_find-deps50007_
                    (foldl1 cons _rest50035_ _xdeps50054_)
                    _deps50015_))
                 (_find-deps50007_ _rest50035_ _deps50015_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (error '"Unexpected module import"
                                                        _hd50036_)))))))))
                     (if (##pair? _rest5001650024_)
                         (let ((_hd5002150059_ (##car _rest5001650024_))
                               (_tl5002250061_ (##cdr _rest5001650024_)))
                           (let* ((_hd50064_ _hd5002150059_)
                                  (_rest50066_ _tl5002250061_))
                             (_K5002050056_ _rest50066_ _hd50064_)))
                         (_else5001850032_))))))
        (reverse (filter gx#expander-context-id
                         (_find-deps50007_
                          (let ((_$e50009_
                                 (gx#core-context-prelude__% _ctx50003_)))
                            (if _$e50009_
                                ((lambda (_pre50012_)
                                   (cons _pre50012_
                                         (##structure-ref
                                          _ctx50003_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _$e50009_)
                                (##structure-ref
                                 _ctx50003_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))))
  (define gxc#find-static-module-file
    (lambda (_ctx49942_)
      (let* ((_scm49944_
              (string-append
               (gxc#static-module-name
                (##structure-ref _ctx49942_ '1 gx#expander-context::t '#f))
               '".scm"))
             (_dirs49946_ (gx#current-expander-module-library-path))
             (_dirs49955_
              (let ((_$e49948_ (gxc#current-compile-output-dir)))
                (if _$e49948_
                    ((lambda (_g4995049952_) (cons _g4995049952_ _dirs49946_))
                     _$e49948_)
                    _dirs49946_)))
             (_dirs49961_
              (map (lambda (_g4995649958_)
                     (path-expand '"static" _g4995649958_))
                   _dirs49955_)))
        (let _lp49964_ ((_rest49966_ _dirs49961_))
          (let* ((_rest4996749975_ _rest49966_)
                 (_else4996949983_
                  (lambda ()
                    (gxc#raise-compile-error
                     '"cannot find static module"
                     (##structure-ref _ctx49942_ '1 gx#expander-context::t '#f)
                     _scm49944_)))
                 (_K4997149991_
                  (lambda (_rest49986_ _dir49987_)
                    (let ((_path49989_ (path-expand _scm49944_ _dir49987_)))
                      (if (file-exists? _path49989_)
                          _path49989_
                          (_lp49964_ _rest49986_))))))
            (if (##pair? _rest4996749975_)
                (let ((_hd4997249994_ (##car _rest4996749975_))
                      (_tl4997349996_ (##cdr _rest4996749975_)))
                  (let* ((_dir49999_ _hd4997249994_)
                         (_rest50001_ _tl4997349996_))
                    (_K4997149991_ _rest50001_ _dir49999_)))
                (_else4996949983_)))))))
  (define gxc#file-empty?
    (lambda (_path49940_)
      (zero? (file-info-size (file-info _path49940_ '#t)))))
  (define gxc#compile-top-module
    (lambda (_ctx49937_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#verbose
            '"compile "
            (##structure-ref _ctx49937_ '1 gx#expander-context::t '#f))
           (if (gxc#current-compile-optimize)
               (gxc#optimize! _ctx49937_)
               '#!void)
           (gxc#collect-bindings _ctx49937_)
           (gxc#compile-runtime-code _ctx49937_)
           (gxc#compile-meta-code _ctx49937_)
           (if (if (gxc#current-compile-optimize)
                   (gxc#current-compile-generate-ssxi)
                   '#f)
               (gxc#compile-ssxi-code _ctx49937_)
               '#!void)))
       gx#current-expander-context
       _ctx49937_
       gx#current-expander-phi
       '0
       gx#current-expander-marks
       '()
       gxc#current-compile-symbol-table
       (let ((__obj50424 (make-object gxc#symbol-table::t '2)))
         (begin (gxc#symbol-table:::init! __obj50424) __obj50424))
       gxc#current-compile-runtime-sections
       (make-table 'test: eq?)
       gxc#current-compile-runtime-names
       (make-table))))
  (define gxc#collect-bindings
    (lambda (_ctx49935_)
      (gxc#apply-collect-bindings
       (##structure-ref _ctx49935_ '11 gx#module-context::t '#f))))
  (define gxc#compile-runtime-code
    (lambda (_ctx49889_)
      (letrec ((_compile149891_
                (lambda (_ctx49924_)
                  (let* ((_code49926_
                          (##structure-ref
                           _ctx49924_
                           '11
                           gx#module-context::t
                           '#f))
                         (_rt49930_
                          (if (gxc#apply-find-runtime-code _code49926_)
                              (let ((_idstr49928_
                                     (gxc#module-id->path-string
                                      (##structure-ref
                                       _ctx49924_
                                       '1
                                       gx#expander-context::t
                                       '#f))))
                                (string-append _idstr49928_ '"__0"))
                              '#f)))
                    (begin
                      (if _rt49930_
                          (begin
                            (table-set!
                             (gxc#current-compile-runtime-sections)
                             _ctx49924_
                             _rt49930_)
                            (_generate-runtime-code49892_
                             _ctx49924_
                             _code49926_))
                          (if (gxc#current-compile-static)
                              (let ((_path49933_
                                     (gxc#compile-static-output-file
                                      _ctx49924_)))
                                (with-output-to-file
                                 (cons 'path:
                                       (cons _path49933_
                                             (cons 'permissions:
                                                   (cons '420 '()))))
                                 void))
                              '#!void))
                      (_generate-loader-code49893_
                       _ctx49924_
                       _code49926_
                       _rt49930_)))))
               (_generate-runtime-code49892_
                (lambda (_ctx49908_ _code49909_)
                  (let* ((_lifts49911_ (box '()))
                         (_runtime-code49914_
                          (call-with-parameters
                           (lambda () (gxc#apply-generate-runtime _code49909_))
                           gx#current-expander-context
                           _ctx49908_
                           gx#current-expander-phi
                           '0
                           gxc#current-compile-lift
                           _lifts49911_
                           gxc#current-compile-marks
                           (make-table 'test: eq?)
                           gxc#current-compile-identifiers
                           (gxc#make-bound-identifier-table)))
                         (_runtime-code49916_
                          (if (null? (unbox _lifts49911_))
                              _runtime-code49914_
                              (cons 'begin
                                    (foldr1 cons
                                            (cons _runtime-code49914_ '())
                                            (reverse (unbox _lifts49911_))))))
                         (_scm049918_
                          (gxc#compile-output-file _ctx49908_ '0 '".scm")))
                    (if (gxc#current-compile-static)
                        (let ((_scms49921_
                               (gxc#compile-static-output-file _ctx49908_)))
                          (begin
                            (call-with-parameters
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _scm049918_
                                _runtime-code49916_))
                             gxc#current-compile-keep-scm
                             '#t)
                            (if (file-exists? _scms49921_)
                                (delete-file _scms49921_)
                                '#!void)
                            (gxc#verbose
                             '"copy static module "
                             _scm049918_
                             '" => "
                             _scms49921_)
                            (copy-file _scm049918_ _scms49921_)
                            (if (gxc#current-compile-keep-scm)
                                '#!void
                                (delete-file _scm049918_))))
                        (gxc#compile-scm-file__0
                         _scm049918_
                         _runtime-code49916_)))))
               (_generate-loader-code49893_
                (lambda (_ctx49897_ _code49898_ _rt49899_)
                  (let* ((_loader-code49902_
                          (call-with-parameters
                           (lambda () (gxc#apply-generate-loader _code49898_))
                           gx#current-expander-context
                           _ctx49897_))
                         (_loader-code49904_
                          (if _rt49899_
                              (cons 'begin
                                    (cons _loader-code49902_
                                          (cons (cons 'load-module
                                                      (cons _rt49899_ '()))
                                                '())))
                              _loader-code49902_)))
                    (call-with-parameters
                     (lambda ()
                       (gxc#compile-scm-file__0
                        (gxc#compile-output-file _ctx49897_ 'rt '".scm")
                        _loader-code49904_))
                     gxc#current-compile-gsc-options
                     '#f)))))
        (let ((_all-modules49895_
               (cons _ctx49889_ (gxc#lift-nested-modules _ctx49889_))))
          (for-each _compile149891_ _all-modules49895_)))))
  (define gxc#compile-meta-code
    (lambda (_ctx49791_)
      (letrec ((_compile-ssi49793_
                (lambda (_code49859_)
                  (let* ((_path49861_
                          (gxc#compile-output-file _ctx49791_ '#f '".ssi"))
                         (_prelude49872_
                          (let* ((_super49863_
                                  (##structure-ref
                                   _ctx49791_
                                   '3
                                   gx#phi-context::t
                                   '#f))
                                 (_$e49865_
                                  (##structure-ref
                                   _super49863_
                                   '1
                                   gx#expander-context::t
                                   '#f)))
                            (if _$e49865_
                                ((lambda (_g4986749869_)
                                   (make-symbol '":" _g4986749869_))
                                 _$e49865_)
                                ':<root>)))
                         (_ns49874_
                          (##structure-ref
                           _ctx49791_
                           '6
                           gx#module-context::t
                           '#f))
                         (_idstr49876_
                          (symbol->string
                           (##structure-ref
                            _ctx49791_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_pkg49883_
                          (let ((_$e49878_ (string-rindex _idstr49876_ '#\/)))
                            (if _$e49878_
                                ((lambda (_x49881_)
                                   (string->symbol
                                    (substring _idstr49876_ '0 _x49881_)))
                                 _$e49878_)
                                '#f)))
                         (_rt49885_
                          (table-ref
                           (gxc#current-compile-runtime-sections)
                           _ctx49791_
                           '#f)))
                    (begin
                      (gxc#verbose '"compile " _path49861_)
                      (with-output-to-file
                       (cons 'path:
                             (cons _path49861_
                                   (cons 'permissions: (cons '420 '()))))
                       (lambda ()
                         (begin
                           (displayln '"prelude:" '" " _prelude49872_)
                           (if _pkg49883_
                               (displayln '"package:" '" " _pkg49883_)
                               '#!void)
                           (displayln '"namespace:" '" " _ns49874_)
                           (newline)
                           (pretty-print _code49859_)
                           (if _rt49885_
                               (pretty-print
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons '_gx#load-module '()))
                                            (cons (cons '%#quote
                                                        (cons _rt49885_ '()))
                                                  '()))))
                               '#!void))))))))
               (_compile-phi49794_
                (lambda (_part49799_)
                  (let* ((_part4980049813_ _part49799_)
                         (_E4980249817_
                          (lambda ()
                            (error '"No clause matching" _part4980049813_)))
                         (_K4980349828_
                          (lambda (_code49820_
                                   _n49821_
                                   _phi49822_
                                   _phi-ctx49823_)
                            (let ((_code49826_
                                   (call-with-parameters
                                    (lambda ()
                                      (gxc#generate-runtime-phi _code49820_))
                                    gx#current-expander-context
                                    _phi-ctx49823_
                                    gx#current-expander-phi
                                    _phi49822_)))
                              (gxc#compile-scm-file__%
                               (gxc#compile-output-file
                                _ctx49791_
                                _n49821_
                                '".scm")
                               _code49826_
                               '#t)))))
                    (if (##pair? _part4980049813_)
                        (let ((_hd4980449831_ (##car _part4980049813_))
                              (_tl4980549833_ (##cdr _part4980049813_)))
                          (let ((_phi-ctx49836_ _hd4980449831_))
                            (if (##pair? _tl4980549833_)
                                (let ((_hd4980649838_ (##car _tl4980549833_))
                                      (_tl4980749840_ (##cdr _tl4980549833_)))
                                  (let ((_phi49843_ _hd4980649838_))
                                    (if (##pair? _tl4980749840_)
                                        (let ((_hd4980849845_
                                               (##car _tl4980749840_))
                                              (_tl4980949847_
                                               (##cdr _tl4980749840_)))
                                          (let ((_n49850_ _hd4980849845_))
                                            (if (##pair? _tl4980949847_)
                                                (let ((_hd4981049852_
                                                       (##car _tl4980949847_))
                                                      (_tl4981149854_
                                                       (##cdr _tl4980949847_)))
                                                  (let ((_code49857_
                                                         _hd4981049852_))
                                                    (if (##null? _tl4981149854_)
                                                        (_K4980349828_
                                                         _code49857_
                                                         _n49850_
                                                         _phi49843_
                                                         _phi-ctx49836_)
                                                        (_E4980249817_))))
                                                (_E4980249817_))))
                                        (_E4980249817_))))
                                (_E4980249817_))))
                        (_E4980249817_))))))
        (let ((_g50432_ (gxc#generate-meta-code _ctx49791_)))
          (begin
            (let ((_g50433_
                   (if (##values? _g50432_) (##vector-length _g50432_) 1)))
              (if (not (##fx= _g50433_ 2))
                  (error "Context expects 2 values" _g50433_)))
            (let ((_ssi-code49796_ (##vector-ref _g50432_ 0))
                  (_phi-code49797_ (##vector-ref _g50432_ 1)))
              (begin
                (_compile-ssi49793_ _ssi-code49796_)
                (for-each _compile-phi49794_ _phi-code49797_))))))))
  (define gxc#compile-ssxi-code
    (lambda (_ctx49774_)
      (let* ((_path49776_ (gxc#compile-output-file _ctx49774_ '#f '".ssxi.ss"))
             (_code49778_
              (gxc#apply-generate-ssxi
               (##structure-ref _ctx49774_ '11 gx#module-context::t '#f)))
             (_idstr49780_
              (symbol->string
               (##structure-ref _ctx49774_ '1 gx#expander-context::t '#f)))
             (_pkg49787_
              (let ((_$e49782_ (string-rindex _idstr49780_ '#\/)))
                (if _$e49782_
                    ((lambda (_x49785_)
                       (string->symbol (substring _idstr49780_ '0 _x49785_)))
                     _$e49782_)
                    '#f))))
        (begin
          (gxc#verbose '"compile " _path49776_)
          (with-output-to-file
           (cons 'path:
                 (cons _path49776_ (cons 'permissions: (cons '420 '()))))
           (lambda ()
             (begin
               (displayln '"prelude: :gerbil/compiler/ssxi")
               (if _pkg49787_ (displayln '"package: " _pkg49787_) '#!void)
               (newline)
               (pretty-print _code49778_))))))))
  (define gxc#generate-meta-code
    (lambda (_ctx49767_)
      (let* ((_state49769_
              (let ((__obj50425 (make-object gxc#meta-state::t '4)))
                (begin
                  (gxc#meta-state:::init! __obj50425 _ctx49767_)
                  __obj50425)))
             (_ssi-code49771_
              (gxc#apply-generate-meta
               (##structure-ref _ctx49767_ '11 gx#module-context::t '#f)
               _state49769_)))
        (values _ssi-code49771_ (gxc#meta-state-end! _state49769_)))))
  (define gxc#generate-runtime-phi
    (lambda (_stx49760_)
      (let ((_lifts49762_ (box '())))
        (call-with-parameters
         (lambda ()
           (let ((_code49765_ (gxc#apply-generate-runtime-phi _stx49760_)))
             (if (null? (unbox _lifts49762_))
                 _code49765_
                 (cons 'begin
                       (foldr1 cons
                               (cons _code49765_ '())
                               (reverse (unbox _lifts49762_)))))))
         gxc#current-compile-lift
         _lifts49762_
         gxc#current-compile-marks
         (make-table 'test: eq?)
         gxc#current-compile-identifiers
         (gxc#make-bound-identifier-table)))))
  (define gxc#lift-nested-modules
    (lambda (_ctx49756_)
      (let ((_modules49758_ (box '())))
        (begin
          (gxc#apply-lift-modules
           (##structure-ref _ctx49756_ '11 gx#module-context::t '#f)
           _modules49758_)
          (reverse (unbox _modules49758_))))))
  (begin
    (define gxc#compile-scm-file__%
      (lambda (_path49739_ _code49740_ _phi?49741_)
        (begin
          (gxc#verbose '"compile " _path49739_)
          (with-output-to-file
           (cons 'path:
                 (cons _path49739_ (cons 'permissions: (cons '420 '()))))
           (lambda ()
             (begin
               (pretty-print
                (cons 'declare
                      (cons (cons 'block '())
                            (cons (cons 'standard-bindings '())
                                  (cons (cons 'extended-bindings '())
                                        (foldr1 cons
                                                '()
                                                (if _phi?49741_
                                                    '((inlining-limit 200))
                                                    '())))))))
               (pretty-print _code49740_))))
          (if (gxc#current-compile-invoke-gsc)
              (gxc#gsc-compile-file _path49739_ _phi?49741_)
              '#!void)
          (if (gxc#current-compile-keep-scm)
              '#!void
              (delete-file _path49739_)))))
    (begin
      (define gxc#compile-scm-file__0
        (lambda (_path49747_ _code49748_)
          (let ((_phi?49750_ '#f))
            (gxc#compile-scm-file__% _path49747_ _code49748_ _phi?49750_))))
      (define gxc#compile-scm-file
        (lambda _g50435_
          (let ((_g50434_ (length _g50435_)))
            (cond ((##fx= _g50434_ 2) (apply gxc#compile-scm-file__0 _g50435_))
                  ((##fx= _g50434_ 3) (apply gxc#compile-scm-file__% _g50435_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-scm-file
                    _g50435_))))))))
  (begin
    (define gxc#gsc-debug-options__%
      (lambda (_phi?49646_)
        (let ((_$e49719_ (gxc#current-compile-debug)))
          (if _$e49719_
              ((lambda (_debug49722_)
                 (let ((_$e49724_ _debug49722_))
                   (if (eq? 'env _$e49724_)
                       (if _phi?49646_ '() (cons '"-debug-environments" '()))
                       (if (eq? 'env/phi _$e49724_)
                           (cons '"-debug-environments" '())
                           (if (eq? 'src _$e49724_)
                               (if _phi?49646_
                                   '()
                                   (cons '"-debug-environments"
                                         (cons '"-debug-source" '())))
                               (if (eq? 'src/phi _$e49724_)
                                   (cons '"-debug-environments"
                                         (cons '"-debug-source" '()))
                                   (if (eq? 'all _$e49724_)
                                       (if _phi?49646_
                                           '()
                                           (cons '"-debug" '()))
                                       (if (let ((_$e49727_
                                                  (eq? 'all/phi _$e49724_)))
                                             (if _$e49727_
                                                 _$e49727_
                                                 (eq? '#t _$e49724_)))
                                           (cons '"-debug" '())
                                           (gxc#raise-compile-error
                                            '"unknown debug option"
                                            _debug49722_)))))))))
               _$e49719_)
              '()))))
    (begin
      (define gxc#gsc-debug-options__0
        (lambda ()
          (let ((_phi?49734_ '#f)) (gxc#gsc-debug-options__% _phi?49734_))))
      (define gxc#gsc-debug-options
        (lambda _g50437_
          (let ((_g50436_ (length _g50437_)))
            (cond ((##fx= _g50436_ 0)
                   (apply gxc#gsc-debug-options__0 _g50437_))
                  ((##fx= _g50436_ 1)
                   (apply gxc#gsc-debug-options__% _g50437_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#gsc-debug-options
                    _g50437_))))))))
  (define gxc#gsc-compile-file
    (lambda (_path49627_ _phi?49628_)
      (let* ((_gsc-args49635_
              (let ((_$e49630_ (gxc#current-compile-gsc-options)))
                (if _$e49630_
                    ((lambda (_opts49633_)
                       (foldr1 cons (cons _path49627_ '()) _opts49633_))
                     _$e49630_)
                    (cons _path49627_ '()))))
             (_gsc-args49637_
              (foldr1 cons
                      _gsc-args49635_
                      (gxc#gsc-debug-options__% _phi?49628_)))
             (_g50438_
              (gxc#verbose '"invoke gsc " (cons 'gsc _gsc-args49637_)))
             (_proc49640_
              (open-process
               (cons 'path:
                     (cons '"gsc"
                           (cons 'arguments:
                                 (cons _gsc-args49637_
                                       (cons 'stdout-redirection:
                                             (cons '#f '()))))))))
             (_status49642_ (process-status _proc49640_)))
        (if (zero? _status49642_)
            '#!void
            (gxc#raise-compile-error
             '"Compilation error; gsc exit with nonzero status"
             _path49627_
             _status49642_)))))
  (define gxc#compile-output-file
    (lambda (_ctx49599_ _n49600_ _ext49601_)
      (letrec ((_module-relative-path49603_
                (lambda (_ctx49625_)
                  (path-strip-directory
                   (gxc#module-id->path-string
                    (##structure-ref
                     _ctx49625_
                     '1
                     gx#expander-context::t
                     '#f)))))
               (_module-source-directory49604_
                (lambda (_ctx49621_)
                  (path-directory
                   (let ((_mpath49623_
                          (##structure-ref
                           _ctx49621_
                           '7
                           gx#module-context::t
                           '#f)))
                     (if (string? _mpath49623_)
                         _mpath49623_
                         (last _mpath49623_))))))
               (_section-string49605_
                (lambda (_n49619_)
                  (if (number? _n49619_)
                      (number->string _n49619_)
                      (if (symbol? _n49619_)
                          (symbol->string _n49619_)
                          (if (string? _n49619_)
                              _n49619_
                              (gxc#raise-compile-error
                               '"Unexpected section"
                               _n49619_))))))
               (_file-name49606_
                (lambda (_path49617_)
                  (if _n49600_
                      (string-append
                       _path49617_
                       '"__"
                       (_section-string49605_ _n49600_)
                       _ext49601_)
                      (string-append _path49617_ _ext49601_))))
               (_file-path49607_
                (lambda ()
                  (let ((_$e49612_ (gxc#current-compile-output-dir)))
                    (if _$e49612_
                        ((lambda (_outdir49615_)
                           (path-expand
                            (_file-name49606_
                             (gxc#module-id->path-string
                              (##structure-ref
                               _ctx49599_
                               '1
                               gx#expander-context::t
                               '#f)))
                            _outdir49615_))
                         _$e49612_)
                        (path-expand
                         (_file-name49606_
                          (_module-relative-path49603_ _ctx49599_))
                         (_module-source-directory49604_ _ctx49599_)))))))
        (let ((_path49609_ (_file-path49607_)))
          (begin
            (create-directory* (path-directory _path49609_))
            _path49609_)))))
  (define gxc#compile-static-output-file
    (lambda (_ctx49582_)
      (letrec ((_file-name49584_
                (lambda (_id49597_)
                  (string-append (gxc#static-module-name _id49597_) '".scm")))
               (_file-path49585_
                (lambda ()
                  (let* ((_file49590_
                          (_file-name49584_
                           (##structure-ref
                            _ctx49582_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_$e49592_ (gxc#current-compile-output-dir)))
                    (if _$e49592_
                        ((lambda (_outdir49595_)
                           (path-expand
                            _file49590_
                            (path-expand '"static" _outdir49595_)))
                         _$e49592_)
                        (path-expand _file49590_ '"static"))))))
        (let ((_path49587_ (_file-path49585_)))
          (begin
            (create-directory* (path-directory _path49587_))
            _path49587_)))))
  (define gxc#compile-exe-output-file
    (lambda (_ctx49569_ _opts49570_)
      (let ((_$e49572_ (pgetq 'output-file: _opts49570_)))
        (if _$e49572_
            (values _$e49572_)
            (let* ((_mod-str49575_
                    (symbol->string
                     (##structure-ref
                      _ctx49569_
                      '1
                      gx#expander-context::t
                      '#f)))
                   (_$e49577_ (string-rindex _mod-str49575_ '#\/)))
              (if _$e49577_
                  ((lambda (_ix49580_)
                     (substring
                      _mod-str49575_
                      (fx+ _ix49580_ '1)
                      (string-length _mod-str49575_)))
                   _$e49577_)
                  _mod-str49575_))))))
  (define gxc#static-module-name
    (lambda (_idstr49562_)
      (if (string? _idstr49562_)
          (let* ((_str49564_ (gxc#module-id->path-string _idstr49562_))
                 (_strs49566_ (string-split _str49564_ '#\/)))
            (string-join _strs49566_ '"__"))
          (if (symbol? _idstr49562_)
              (gxc#static-module-name (symbol->string _idstr49562_))
              (error '"Bad module id" _idstr49562_))))))
