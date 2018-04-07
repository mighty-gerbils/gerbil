(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#compile-timestamp
    (lambda () (inexact->exact (floor (time->seconds (current-time))))))
  (begin
    (define gxc#compile-file__%
      (lambda (_srcpath50389_ _opts50390_)
        (begin
          (if (string? _srcpath50389_)
              '#!void
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath50389_))
          (let ((_outdir50392_ (pgetq 'output-dir: _opts50390_))
                (_invoke-gsc?50393_ (pgetq 'invoke-gsc: _opts50390_))
                (_gsc-options50394_ (pgetq 'gsc-options: _opts50390_))
                (_keep-scm?50395_ (pgetq 'keep-scm: _opts50390_))
                (_verbosity50396_ (pgetq 'verbose: _opts50390_))
                (_optimize50397_ (pgetq 'optimize: _opts50390_))
                (_debug50398_ (pgetq 'debug: _opts50390_))
                (_gen-ssxi50399_ (pgetq 'generate-ssxi: _opts50390_))
                (_static50400_ (pgetq 'static: _opts50390_)))
            (begin
              (if _outdir50392_ (create-directory* _outdir50392_) '#!void)
              (if _optimize50397_ (gxc#optimizer-info-init!) '#!void)
              (call-with-parameters
               (lambda ()
                 (begin
                   (gxc#verbose '"compile " _srcpath50389_)
                   (gxc#compile-top-module
                    (gx#import-module__0 _srcpath50389_))))
               gxc#current-compile-output-dir
               _outdir50392_
               gxc#current-compile-invoke-gsc
               _invoke-gsc?50393_
               gxc#current-compile-gsc-options
               _gsc-options50394_
               gxc#current-compile-keep-scm
               _keep-scm?50395_
               gxc#current-compile-verbose
               _verbosity50396_
               gxc#current-compile-optimize
               _optimize50397_
               gxc#current-compile-debug
               _debug50398_
               gxc#current-compile-generate-ssxi
               _gen-ssxi50399_
               gxc#current-compile-static
               _static50400_
               gxc#current-compile-timestamp
               (gxc#compile-timestamp)))))))
    (begin
      (define gxc#compile-file__0
        (lambda (_srcpath50406_)
          (let ((_opts50408_ '()))
            (gxc#compile-file__% _srcpath50406_ _opts50408_))))
      (define gxc#compile-file
        (lambda _g50429_
          (let ((_g50428_ (length _g50429_)))
            (cond ((##fx= _g50428_ 1) (apply gxc#compile-file__0 _g50429_))
                  ((##fx= _g50428_ 2) (apply gxc#compile-file__% _g50429_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-file
                    _g50429_))))))))
  (begin
    (define gxc#compile-exe-stub__%
      (lambda (_srcpath50375_ _opts50376_)
        (gxc#do-compile-exe
         _srcpath50375_
         _opts50376_
         gxc#compile-exe-stub-module)))
    (begin
      (define gxc#compile-exe-stub__0
        (lambda (_srcpath50381_)
          (let ((_opts50383_ '()))
            (gxc#compile-exe-stub__% _srcpath50381_ _opts50383_))))
      (define gxc#compile-exe-stub
        (lambda _g50431_
          (let ((_g50430_ (length _g50431_)))
            (cond ((##fx= _g50430_ 1) (apply gxc#compile-exe-stub__0 _g50431_))
                  ((##fx= _g50430_ 2) (apply gxc#compile-exe-stub__% _g50431_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-exe-stub
                    _g50431_))))))))
  (begin
    (define gxc#compile-static-exe__%
      (lambda (_srcpath50361_ _opts50362_)
        (gxc#do-compile-exe
         _srcpath50361_
         _opts50362_
         gxc#compile-exe-static-module)))
    (begin
      (define gxc#compile-static-exe__0
        (lambda (_srcpath50367_)
          (let ((_opts50369_ '()))
            (gxc#compile-static-exe__% _srcpath50367_ _opts50369_))))
      (define gxc#compile-static-exe
        (lambda _g50433_
          (let ((_g50432_ (length _g50433_)))
            (cond ((##fx= _g50432_ 1)
                   (apply gxc#compile-static-exe__0 _g50433_))
                  ((##fx= _g50432_ 2)
                   (apply gxc#compile-static-exe__% _g50433_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-static-exe
                    _g50433_))))))))
  (define gxc#do-compile-exe
    (lambda (_srcpath50349_ _opts50350_ _compile-e50351_)
      (begin
        (if (string? _srcpath50349_)
            '#!void
            (gxc#raise-compile-error
             '"Invalid module source path"
             _srcpath50349_))
        (let ((_outdir50353_ (pgetq 'output-dir: _opts50350_))
              (_invoke-gsc?50354_ (pgetq 'invoke-gsc: _opts50350_))
              (_gsc-options50355_ (pgetq 'gsc-options: _opts50350_))
              (_keep-scm?50356_ (pgetq 'keep-scm: _opts50350_))
              (_verbosity50357_ (pgetq 'verbose: _opts50350_)))
          (begin
            (if _outdir50353_ (create-directory* _outdir50353_) '#!void)
            (call-with-parameters
             (lambda ()
               (begin
                 (gxc#verbose '"compile exe " _srcpath50349_)
                 (_compile-e50351_
                  (gx#import-module__0 _srcpath50349_)
                  _opts50350_)))
             gxc#current-compile-output-dir
             _outdir50353_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?50354_
             gxc#current-compile-gsc-options
             _gsc-options50355_
             gxc#current-compile-keep-scm
             _keep-scm?50356_
             gxc#current-compile-verbose
             _verbosity50357_
             gxc#current-compile-timestamp
             (gxc#compile-timestamp)))))))
  (define gxc#compile-exe-stub-module
    (lambda (_ctx50315_ _opts50316_)
      (letrec ((_generate-stub50318_
                (lambda (_gx-init-stub50340_)
                  (let* ((_mod-str50342_
                          (gxc#module-id->path-string
                           (##structure-ref
                            _ctx50315_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_mod-rt50344_ (string-append _mod-str50342_ '"__rt"))
                         (_mod-main50346_
                          (gxc#find-runtime-symbol _ctx50315_ 'main)))
                    (begin
                      (write '(##namespace ("")))
                      (newline)
                      (write (cons 'include (cons _gx-init-stub50340_ '())))
                      (newline)
                      (write (cons '_gx#start!
                                   (cons _mod-rt50344_
                                         (cons (cons 'quote
                                                     (cons _mod-main50346_
                                                           '()))
                                               '()))))
                      (newline)))))
               (_compile-stub50319_
                (lambda (_output-scm50326_ _output-bin50327_)
                  (let* ((_init-stub50329_
                          (path-expand
                           '"lib/gx-init-exe.scm"
                           (getenv '"GERBIL_HOME")))
                         (_gsc-args50331_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin50327_
                                            (cons _output-scm50326_ '()))))))
                    (begin
                      (with-output-to-file
                       _output-scm50326_
                       (lambda () (_generate-stub50318_ _init-stub50329_)))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (gxc#verbose
                             '"invoke gsc "
                             (cons 'gsc _gsc-args50331_))
                            (let* ((_proc50335_
                                    (open-process
                                     (cons 'path:
                                           (cons '"gsc"
                                                 (cons 'arguments:
                                                       (cons _gsc-args50331_
                                                             (cons 'stdout-redirection:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_status50337_
                                    (process-status _proc50335_)))
                              (if (zero? _status50337_)
                                  '#!void
                                  (gxc#raise-compile-error
                                   '"Compilation error; gsc exit with nonzero status"
                                   _output-scm50326_
                                   _output-bin50327_
                                   _status50337_))))
                          '#!void))))))
        (let* ((_output-bin50321_
                (gxc#compile-exe-output-file _ctx50315_ _opts50316_))
               (_output-scm50323_ (string-append _output-bin50321_ '".scm")))
          (begin
            (_compile-stub50319_ _output-scm50323_ _output-bin50321_)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm50323_)))))))
  (define gxc#compile-exe-static-module
    (lambda (_ctx50176_ _opts50177_)
      (letrec ((_reset-declare50179_
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
               (_user-declare50180_
                (lambda ()
                  (let* ((_gsc-opts50258_ (pgetq 'gsc-options: _opts50177_))
                         (_gsc-prelude50260_
                          (if _gsc-opts50258_
                              (member '"-prelude" _gsc-opts50258_)
                              '#f))
                         (_gsc-prelude50262_
                          (if _gsc-prelude50260_
                              (read (open-input-string
                                     (cadr _gsc-prelude50260_)))
                              '#f)))
                    (let _lift50265_ ((_expr50267_ _gsc-prelude50262_))
                      (let* ((_expr5026850280_ _expr50267_)
                             (_else5027150288_ (lambda () '#f)))
                        (let ((_K5027650308_ (lambda () _expr50267_))
                              (_K5027350294_
                               (lambda (_exprs50292_)
                                 (ormap1 _lift50265_ _exprs50292_))))
                          (if (##pair? _expr5026850280_)
                              (let ((_hd5027750311_ (##car _expr5026850280_)))
                                (if (##eq? _hd5027750311_ 'declare)
                                    (_K5027650308_)
                                    (let ((_tl5027550299_
                                           (##cdr _expr5026850280_)))
                                      (if (##eq? _hd5027750311_ 'begin)
                                          (let ((_exprs50302_ _tl5027550299_))
                                            (_K5027350294_ _exprs50302_))
                                          (_else5027150288_)))))
                              (_else5027150288_))))))))
               (_generate-stub50181_
                (lambda (_deps50249_)
                  (let ((_mod-main50251_
                         (gxc#find-runtime-symbol _ctx50176_ 'main))
                        (_reset-decl50252_ (_reset-declare50179_))
                        (_user-decl50253_ (_user-declare50180_)))
                    (begin
                      (write '(##namespace ("")))
                      (newline)
                      (write '(declare (optimize-dead-definitions)))
                      (newline)
                      (for-each
                       (lambda (_dep50255_)
                         (begin
                           (write (cons 'include (cons _dep50255_ '())))
                           (newline)
                           (write '(##namespace ("")))
                           (write _reset-decl50252_)
                           (if _user-decl50253_
                               (write _user-decl50253_)
                               '#!void)
                           (newline)))
                       _deps50249_)
                      (write (cons 'apply
                                   (cons _mod-main50251_
                                         (cons (cons 'cdr
                                                     (cons (cons 'command-line
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                      (newline)))))
               (_static-include50182_
                (lambda (_gsc-opts50232_ _home50233_)
                  (letrec* ((_static-dir50235_
                             (path-expand '"lib/static" _home50233_))
                            (_user-static-dir50236_
                             (path-expand
                              '"lib/static"
                              (getenv '"GERBIL_PATH" '"~/.gerbil")))
                            (_cppflags50237_
                             (string-append
                              '"-I "
                              _static-dir50235_
                              '" -I "
                              _user-static-dir50236_)))
                    (let ((_$e50239_ (member '"-cc-options" _gsc-opts50232_)))
                      (if _$e50239_
                          ((lambda (_rest50242_)
                             (let* ((_cell50244_ (cdr _rest50242_))
                                    (_opt50246_ (car _cell50244_)))
                               (begin
                                 (set-car!
                                  _cell50244_
                                  (string-append
                                   _opt50246_
                                   '" "
                                   _cppflags50237_))
                                 _gsc-opts50232_)))
                           _$e50239_)
                          (cons '"-cc-options"
                                (cons _cppflags50237_ _gsc-opts50232_)))))))
               (_compile-stub50183_
                (lambda (_output-scm50190_ _output-bin50191_)
                  (let* ((_gerbil-home50193_ (getenv '"GERBIL_HOME"))
                         (_gx-gambc050195_
                          (path-expand
                           '"lib/static/gx-gambc0.scm"
                           _gerbil-home50193_))
                         (_gx-gambc-init50197_
                          (path-expand
                           '"lib/gx-init-static-exe.scm"
                           _gerbil-home50193_))
                         (_gx-gambc-macros50199_
                          (path-expand
                           '"lib/static/gx-gambc#.scm"
                           _gerbil-home50193_))
                         (_include-gx-gambc-macros50201_
                          (string-append
                           '"(include \""
                           _gx-gambc-macros50199_
                           '"\")"))
                         (_bin-scm50203_
                          (gxc#find-static-module-file _ctx50176_))
                         (_deps50205_
                          (gxc#find-runtime-module-deps _ctx50176_))
                         (_deps50207_
                          (map gxc#find-static-module-file _deps50205_))
                         (_deps50212_
                          (filter (lambda (_$obj50209_)
                                    (not (gxc#file-empty? _$obj50209_)))
                                  _deps50207_))
                         (_gsc-opts50217_
                          (let ((_$e50214_ (pgetq 'gsc-options: _opts50177_)))
                            (if _$e50214_ _$e50214_ '())))
                         (_gsc-opts50219_
                          (_static-include50182_
                           _gsc-opts50217_
                           _gerbil-home50193_))
                         (_gsc-gx-macros50221_
                          (if (gerbil-runtime-smp?)
                              (cons '"-e"
                                    (cons '"(define-cond-expand-feature|enable-smp|)"
                                          (cons '"-e"
                                                (cons _include-gx-gambc-macros50201_
                                                      '()))))
                              (cons '"-e"
                                    (cons _include-gx-gambc-macros50201_
                                          '()))))
                         (_gsc-args50223_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin50191_
                                            (foldr1 cons
                                                    (foldr1 cons
                                                            (foldr1 cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _output-scm50190_ '())
                            _gsc-gx-macros50221_)
                    _gsc-opts50219_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gxc#gsc-debug-options__0)))))))
                    (begin
                      (with-output-to-file
                       _output-scm50190_
                       (lambda ()
                         (_generate-stub50181_
                          (cons _gx-gambc050195_
                                (cons _gx-gambc-init50197_
                                      (foldr1 cons
                                              (cons _bin-scm50203_ '())
                                              _deps50212_))))))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (gxc#verbose
                             '"invoke gsc "
                             (cons 'gsc _gsc-args50223_))
                            (let* ((_proc50227_
                                    (open-process
                                     (cons 'path:
                                           (cons '"gsc"
                                                 (cons 'arguments:
                                                       (cons _gsc-args50223_
                                                             (cons 'stdout-redirection:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_status50229_
                                    (process-status _proc50227_)))
                              (if (zero? _status50229_)
                                  '#!void
                                  (gxc#raise-compile-error
                                   '"Compilation error; gsc exit with nonzero status"
                                   _output-scm50190_
                                   _output-bin50191_
                                   _status50229_))))
                          '#!void))))))
        (let* ((_output-bin50185_
                (gxc#compile-exe-output-file _ctx50176_ _opts50177_))
               (_output-scm50187_ (string-append _output-bin50185_ '".scm")))
          (begin
            (_compile-stub50183_ _output-scm50187_ _output-bin50185_)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm50187_)))))))
  (define gxc#find-export-binding
    (lambda (_ctx50126_ _id50127_)
      (let ((_$e50173_
             (find (lambda (_e5012850130_)
                     (let* ((_g5013250142_ _e5012850130_)
                            (_else5013450150_ (lambda () '#f))
                            (_K5013650154_ (lambda () '#t)))
                       (if (##structure-direct-instance-of?
                            _g5013250142_
                            'gx#module-export::t)
                           (let* ((_e5013750157_
                                   (##vector-ref _g5013250142_ '1))
                                  (_e5013850160_
                                   (##vector-ref _g5013250142_ '2))
                                  (_e5013950163_
                                   (##vector-ref _g5013250142_ '3)))
                             (if (##eq? _e5013950163_ '0)
                                 (let ((_e5014050166_
                                        (##vector-ref _g5013250142_ '4)))
                                   (if ((lambda (_g5016850170_)
                                          (eq? _g5016850170_ _id50127_))
                                        _e5014050166_)
                                       (_K5013650154_)
                                       (_else5013450150_)))
                                 (_else5013450150_)))
                           (_else5013450150_))))
                   (##structure-ref _ctx50126_ '9 gx#module-context::t '#f))))
        (if _$e50173_ (gx#core-resolve-module-export _$e50173_) '#f))))
  (define gxc#find-runtime-symbol
    (lambda (_ctx50118_ _id50119_)
      (let ((_$e50121_ (gxc#find-export-binding _ctx50118_ _id50119_)))
        (if _$e50121_
            ((lambda (_bind50124_)
               (begin
                 (if (##structure-instance-of?
                      _bind50124_
                      'gx#runtime-binding::t)
                     '#!void
                     (gxc#raise-compile-error
                      '"export is not a runtime binding"
                      _id50119_))
                 (##structure-ref _bind50124_ '1 gx#binding::t '#f)))
             _$e50121_)
            (gxc#raise-compile-error
             '"module does not export symbol"
             (##structure-ref _ctx50118_ '1 gx#expander-context::t '#f)
             _id50119_)))))
  (define gxc#find-runtime-module-deps
    (lambda (_ctx50005_)
      (letrec* ((_ht50007_ (make-table 'test: eq?))
                (_import-set-template50008_
                 (lambda (_in50070_ _phi50071_)
                   (let ((_iphi50073_
                          (fx+ _phi50071_
                               (##direct-structure-ref
                                _in50070_
                                '2
                                gx#import-set::t
                                '#f)))
                         (_imports50074_
                          (##structure-ref
                           (##direct-structure-ref
                            _in50070_
                            '1
                            gx#import-set::t
                            '#f)
                           '8
                           gx#module-context::t
                           '#f)))
                     (let _lp50076_ ((_rest50078_ _imports50074_)
                                     (_r50079_ '()))
                       (let* ((_rest5008050088_ _rest50078_)
                              (_else5008250096_ (lambda () _r50079_))
                              (_K5008450106_
                               (lambda (_rest50099_ _in50100_)
                                 (if (##structure-instance-of?
                                      _in50100_
                                      'gx#module-context::t)
                                     (if (fxzero? _iphi50073_)
                                         (_lp50076_
                                          _rest50099_
                                          (cons _in50100_ _r50079_))
                                         (_lp50076_ _rest50099_ _r50079_))
                                     (if (##structure-direct-instance-of?
                                          _in50100_
                                          'gx#module-import::t)
                                         (let ((_iphi50102_
                                                (fx+ _phi50071_
                                                     (##direct-structure-ref
                                                      _in50100_
                                                      '3
                                                      gx#module-import::t
                                                      '#f))))
                                           (if (fxzero? _iphi50102_)
                                               (_lp50076_
                                                _rest50099_
                                                (cons (##direct-structure-ref
                                                       (##direct-structure-ref
                                                        _in50100_
                                                        '1
                                                        gx#module-import::t
                                                        '#f)
                                                       '1
                                                       gx#module-export::t
                                                       '#f)
                                                      _r50079_))
                                               (_lp50076_
                                                _rest50099_
                                                _r50079_)))
                                         (if (##structure-direct-instance-of?
                                              _in50100_
                                              'gx#import-set::t)
                                             (let ((_xphi50104_
                                                    (fx+ _iphi50073_
                                                         (##direct-structure-ref
                                                          _in50100_
                                                          '2
                                                          gx#import-set::t
                                                          '#f))))
                                               (if (fxzero? _xphi50104_)
                                                   (_lp50076_
                                                    _rest50099_
                                                    (cons (##direct-structure-ref
                                                           _in50100_
                                                           '1
                                                           gx#import-set::t
                                                           '#f)
                                                          _r50079_))
                                                   (if (fxpositive?
                                                        _xphi50104_)
                                                       (_lp50076_
                                                        _rest50099_
                                                        (foldl1 cons
                                                                _r50079_
                                                                (_import-set-template50008_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in50100_
                         _iphi50073_)))
               (_lp50076_ _rest50099_ _r50079_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_lp50076_
                                              _rest50099_
                                              _r50079_)))))))
                         (if (##pair? _rest5008050088_)
                             (let ((_hd5008550109_ (##car _rest5008050088_))
                                   (_tl5008650111_ (##cdr _rest5008050088_)))
                               (let* ((_in50114_ _hd5008550109_)
                                      (_rest50116_ _tl5008650111_))
                                 (_K5008450106_ _rest50116_ _in50114_)))
                             (_else5008250096_)))))))
                (_find-deps50009_
                 (lambda (_rest50016_ _deps50017_)
                   (let* ((_rest5001850026_ _rest50016_)
                          (_else5002050034_ (lambda () _deps50017_))
                          (_K5002250058_
                           (lambda (_rest50037_ _hd50038_)
                             (if (##structure-instance-of?
                                  _hd50038_
                                  'gx#module-context::t)
                                 (let ((_id50040_
                                        (##structure-ref
                                         _hd50038_
                                         '1
                                         gx#expander-context::t
                                         '#f))
                                       (_imports50041_
                                        (##structure-ref
                                         _hd50038_
                                         '8
                                         gx#module-context::t
                                         '#f)))
                                   (if (table-ref _ht50007_ _id50040_ '#f)
                                       (_find-deps50009_
                                        _rest50037_
                                        _deps50017_)
                                       (let ((_$e50043_
                                              (gx#core-context-prelude__%
                                               _hd50038_)))
                                         (if _$e50043_
                                             ((lambda (_pre50046_)
                                                (let ((_xdeps50048_
                                                       (_find-deps50009_
                                                        (cons _pre50046_
                                                              _imports50041_)
                                                        _deps50017_)))
                                                  (begin
                                                    (table-set!
                                                     _ht50007_
                                                     _id50040_
                                                     _hd50038_)
                                                    (_find-deps50009_
                                                     _rest50037_
                                                     (cons _hd50038_
                                                           _xdeps50048_)))))
                                              _$e50043_)
                                             (let ((_xdeps50050_
                                                    (_find-deps50009_
                                                     _imports50041_
                                                     _deps50017_)))
                                               (begin
                                                 (table-set!
                                                  _ht50007_
                                                  _id50040_
                                                  _hd50038_)
                                                 (_find-deps50009_
                                                  _rest50037_
                                                  (cons _hd50038_
                                                        _xdeps50050_))))))))
                                 (if (##structure-instance-of?
                                      _hd50038_
                                      'gx#prelude-context::t)
                                     (let ((_id50052_
                                            (##structure-ref
                                             _hd50038_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (if (table-ref _ht50007_ _id50052_ '#f)
                                           (_find-deps50009_
                                            _rest50037_
                                            _deps50017_)
                                           (let ((_xdeps50054_
                                                  (_find-deps50009_
                                                   (##structure-ref
                                                    _hd50038_
                                                    '7
                                                    gx#prelude-context::t
                                                    '#f)
                                                   _deps50017_)))
                                             (if (table-ref
                                                  _ht50007_
                                                  _id50052_
                                                  '#f)
                                                 (_find-deps50009_
                                                  _rest50037_
                                                  _xdeps50054_)
                                                 (begin
                                                   (table-set!
                                                    _ht50007_
                                                    _id50052_
                                                    _hd50038_)
                                                   (_find-deps50009_
                                                    _rest50037_
                                                    (cons _hd50038_
                                                          _xdeps50054_)))))))
                                     (if (##structure-direct-instance-of?
                                          _hd50038_
                                          'gx#module-import::t)
                                         (if (fxzero? (##direct-structure-ref
                                                       _hd50038_
                                                       '3
                                                       gx#module-import::t
                                                       '#f))
                                             (_find-deps50009_
                                              (cons (##direct-structure-ref
                                                     _hd50038_
                                                     '1
                                                     gx#module-import::t
                                                     '#f)
                                                    _rest50037_)
                                              _deps50017_)
                                             (_find-deps50009_
                                              _rest50037_
                                              _deps50017_))
                                         (if (##structure-direct-instance-of?
                                              _hd50038_
                                              'gx#module-export::t)
                                             (_find-deps50009_
                                              (cons (##direct-structure-ref
                                                     _hd50038_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)
                                                    _rest50037_)
                                              _deps50017_)
                                             (if (##structure-direct-instance-of?
                                                  _hd50038_
                                                  'gx#import-set::t)
                                                 (if (fxzero? (##direct-structure-ref
                                                               _hd50038_
                                                               '2
                                                               gx#import-set::t
                                                               '#f))
                                                     (_find-deps50009_
                                                      (cons (##direct-structure-ref
                                                             _hd50038_
                                                             '1
                                                             gx#import-set::t
                                                             '#f)
                                                            _rest50037_)
                                                      _deps50017_)
                                                     (if (fxpositive?
                                                          (##direct-structure-ref
                                                           _hd50038_
                                                           '2
                                                           gx#import-set::t
                                                           '#f))
                                                         (let ((_xdeps50056_
                                                                (_import-set-template50008_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd50038_
                         '0)))
                   (_find-deps50009_
                    (foldl1 cons _rest50037_ _xdeps50056_)
                    _deps50017_))
                 (_find-deps50009_ _rest50037_ _deps50017_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (error '"Unexpected module import"
                                                        _hd50038_)))))))))
                     (if (##pair? _rest5001850026_)
                         (let ((_hd5002350061_ (##car _rest5001850026_))
                               (_tl5002450063_ (##cdr _rest5001850026_)))
                           (let* ((_hd50066_ _hd5002350061_)
                                  (_rest50068_ _tl5002450063_))
                             (_K5002250058_ _rest50068_ _hd50066_)))
                         (_else5002050034_))))))
        (reverse (filter gx#expander-context-id
                         (_find-deps50009_
                          (let ((_$e50011_
                                 (gx#core-context-prelude__% _ctx50005_)))
                            (if _$e50011_
                                ((lambda (_pre50014_)
                                   (cons _pre50014_
                                         (##structure-ref
                                          _ctx50005_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _$e50011_)
                                (##structure-ref
                                 _ctx50005_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))))
  (define gxc#find-static-module-file
    (lambda (_ctx49944_)
      (let* ((_scm49946_
              (string-append
               (gxc#static-module-name
                (##structure-ref _ctx49944_ '1 gx#expander-context::t '#f))
               '".scm"))
             (_dirs49948_ (gx#current-expander-module-library-path))
             (_dirs49957_
              (let ((_$e49950_ (gxc#current-compile-output-dir)))
                (if _$e49950_
                    ((lambda (_g4995249954_) (cons _g4995249954_ _dirs49948_))
                     _$e49950_)
                    _dirs49948_)))
             (_dirs49963_
              (map (lambda (_g4995849960_)
                     (path-expand '"static" _g4995849960_))
                   _dirs49957_)))
        (let _lp49966_ ((_rest49968_ _dirs49963_))
          (let* ((_rest4996949977_ _rest49968_)
                 (_else4997149985_
                  (lambda ()
                    (gxc#raise-compile-error
                     '"cannot find static module"
                     (##structure-ref _ctx49944_ '1 gx#expander-context::t '#f)
                     _scm49946_)))
                 (_K4997349993_
                  (lambda (_rest49988_ _dir49989_)
                    (let ((_path49991_ (path-expand _scm49946_ _dir49989_)))
                      (if (file-exists? _path49991_)
                          _path49991_
                          (_lp49966_ _rest49988_))))))
            (if (##pair? _rest4996949977_)
                (let ((_hd4997449996_ (##car _rest4996949977_))
                      (_tl4997549998_ (##cdr _rest4996949977_)))
                  (let* ((_dir50001_ _hd4997449996_)
                         (_rest50003_ _tl4997549998_))
                    (_K4997349993_ _rest50003_ _dir50001_)))
                (_else4997149985_)))))))
  (define gxc#file-empty?
    (lambda (_path49942_)
      (zero? (file-info-size (file-info _path49942_ '#t)))))
  (define gxc#compile-top-module
    (lambda (_ctx49939_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#verbose
            '"compile "
            (##structure-ref _ctx49939_ '1 gx#expander-context::t '#f))
           (if (gxc#current-compile-optimize)
               (gxc#optimize! _ctx49939_)
               '#!void)
           (gxc#collect-bindings _ctx49939_)
           (gxc#compile-runtime-code _ctx49939_)
           (gxc#compile-meta-code _ctx49939_)
           (if (if (gxc#current-compile-optimize)
                   (gxc#current-compile-generate-ssxi)
                   '#f)
               (gxc#compile-ssxi-code _ctx49939_)
               '#!void)))
       gx#current-expander-context
       _ctx49939_
       gx#current-expander-phi
       '0
       gx#current-expander-marks
       '()
       gxc#current-compile-symbol-table
       (let ((__obj50426 (make-object gxc#symbol-table::t '2)))
         (begin (gxc#symbol-table:::init! __obj50426) __obj50426))
       gxc#current-compile-runtime-sections
       (make-table 'test: eq?)
       gxc#current-compile-runtime-names
       (make-table))))
  (define gxc#collect-bindings
    (lambda (_ctx49937_)
      (gxc#apply-collect-bindings
       (##structure-ref _ctx49937_ '11 gx#module-context::t '#f))))
  (define gxc#compile-runtime-code
    (lambda (_ctx49891_)
      (letrec ((_compile149893_
                (lambda (_ctx49926_)
                  (let* ((_code49928_
                          (##structure-ref
                           _ctx49926_
                           '11
                           gx#module-context::t
                           '#f))
                         (_rt49932_
                          (if (gxc#apply-find-runtime-code _code49928_)
                              (let ((_idstr49930_
                                     (gxc#module-id->path-string
                                      (##structure-ref
                                       _ctx49926_
                                       '1
                                       gx#expander-context::t
                                       '#f))))
                                (string-append _idstr49930_ '"__0"))
                              '#f)))
                    (begin
                      (if _rt49932_
                          (begin
                            (table-set!
                             (gxc#current-compile-runtime-sections)
                             _ctx49926_
                             _rt49932_)
                            (_generate-runtime-code49894_
                             _ctx49926_
                             _code49928_))
                          (if (gxc#current-compile-static)
                              (let ((_path49935_
                                     (gxc#compile-static-output-file
                                      _ctx49926_)))
                                (with-output-to-file
                                 (cons 'path:
                                       (cons _path49935_
                                             (cons 'permissions:
                                                   (cons '420 '()))))
                                 void))
                              '#!void))
                      (_generate-loader-code49895_
                       _ctx49926_
                       _code49928_
                       _rt49932_)))))
               (_generate-runtime-code49894_
                (lambda (_ctx49910_ _code49911_)
                  (let* ((_lifts49913_ (box '()))
                         (_runtime-code49916_
                          (call-with-parameters
                           (lambda () (gxc#apply-generate-runtime _code49911_))
                           gx#current-expander-context
                           _ctx49910_
                           gx#current-expander-phi
                           '0
                           gxc#current-compile-lift
                           _lifts49913_
                           gxc#current-compile-marks
                           (make-table 'test: eq?)
                           gxc#current-compile-identifiers
                           (gxc#make-bound-identifier-table)))
                         (_runtime-code49918_
                          (if (null? (unbox _lifts49913_))
                              _runtime-code49916_
                              (cons 'begin
                                    (foldr1 cons
                                            (cons _runtime-code49916_ '())
                                            (reverse (unbox _lifts49913_))))))
                         (_scm049920_
                          (gxc#compile-output-file _ctx49910_ '0 '".scm")))
                    (if (gxc#current-compile-static)
                        (let ((_scms49923_
                               (gxc#compile-static-output-file _ctx49910_)))
                          (begin
                            (call-with-parameters
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _scm049920_
                                _runtime-code49918_))
                             gxc#current-compile-keep-scm
                             '#t)
                            (if (file-exists? _scms49923_)
                                (delete-file _scms49923_)
                                '#!void)
                            (gxc#verbose
                             '"copy static module "
                             _scm049920_
                             '" => "
                             _scms49923_)
                            (copy-file _scm049920_ _scms49923_)
                            (if (gxc#current-compile-keep-scm)
                                '#!void
                                (delete-file _scm049920_))))
                        (gxc#compile-scm-file__0
                         _scm049920_
                         _runtime-code49918_)))))
               (_generate-loader-code49895_
                (lambda (_ctx49899_ _code49900_ _rt49901_)
                  (let* ((_loader-code49904_
                          (call-with-parameters
                           (lambda () (gxc#apply-generate-loader _code49900_))
                           gx#current-expander-context
                           _ctx49899_))
                         (_loader-code49906_
                          (if _rt49901_
                              (cons 'begin
                                    (cons _loader-code49904_
                                          (cons (cons 'load-module
                                                      (cons _rt49901_ '()))
                                                '())))
                              _loader-code49904_)))
                    (call-with-parameters
                     (lambda ()
                       (gxc#compile-scm-file__0
                        (gxc#compile-output-file _ctx49899_ 'rt '".scm")
                        _loader-code49906_))
                     gxc#current-compile-gsc-options
                     '#f)))))
        (let ((_all-modules49897_
               (cons _ctx49891_ (gxc#lift-nested-modules _ctx49891_))))
          (for-each _compile149893_ _all-modules49897_)))))
  (define gxc#compile-meta-code
    (lambda (_ctx49793_)
      (letrec ((_compile-ssi49795_
                (lambda (_code49861_)
                  (let* ((_path49863_
                          (gxc#compile-output-file _ctx49793_ '#f '".ssi"))
                         (_prelude49874_
                          (let* ((_super49865_
                                  (##structure-ref
                                   _ctx49793_
                                   '3
                                   gx#phi-context::t
                                   '#f))
                                 (_$e49867_
                                  (##structure-ref
                                   _super49865_
                                   '1
                                   gx#expander-context::t
                                   '#f)))
                            (if _$e49867_
                                ((lambda (_g4986949871_)
                                   (make-symbol '":" _g4986949871_))
                                 _$e49867_)
                                ':<root>)))
                         (_ns49876_
                          (##structure-ref
                           _ctx49793_
                           '6
                           gx#module-context::t
                           '#f))
                         (_idstr49878_
                          (symbol->string
                           (##structure-ref
                            _ctx49793_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_pkg49885_
                          (let ((_$e49880_ (string-rindex _idstr49878_ '#\/)))
                            (if _$e49880_
                                ((lambda (_x49883_)
                                   (string->symbol
                                    (substring _idstr49878_ '0 _x49883_)))
                                 _$e49880_)
                                '#f)))
                         (_rt49887_
                          (table-ref
                           (gxc#current-compile-runtime-sections)
                           _ctx49793_
                           '#f)))
                    (begin
                      (gxc#verbose '"compile " _path49863_)
                      (with-output-to-file
                       (cons 'path:
                             (cons _path49863_
                                   (cons 'permissions: (cons '420 '()))))
                       (lambda ()
                         (begin
                           (displayln '"prelude:" '" " _prelude49874_)
                           (if _pkg49885_
                               (displayln '"package:" '" " _pkg49885_)
                               '#!void)
                           (displayln '"namespace:" '" " _ns49876_)
                           (newline)
                           (pretty-print _code49861_)
                           (if _rt49887_
                               (pretty-print
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons '_gx#load-module '()))
                                            (cons (cons '%#quote
                                                        (cons _rt49887_ '()))
                                                  '()))))
                               '#!void))))))))
               (_compile-phi49796_
                (lambda (_part49801_)
                  (let* ((_part4980249815_ _part49801_)
                         (_E4980449819_
                          (lambda ()
                            (error '"No clause matching" _part4980249815_)))
                         (_K4980549830_
                          (lambda (_code49822_
                                   _n49823_
                                   _phi49824_
                                   _phi-ctx49825_)
                            (let ((_code49828_
                                   (call-with-parameters
                                    (lambda ()
                                      (gxc#generate-runtime-phi _code49822_))
                                    gx#current-expander-context
                                    _phi-ctx49825_
                                    gx#current-expander-phi
                                    _phi49824_)))
                              (gxc#compile-scm-file__%
                               (gxc#compile-output-file
                                _ctx49793_
                                _n49823_
                                '".scm")
                               _code49828_
                               '#t)))))
                    (if (##pair? _part4980249815_)
                        (let ((_hd4980649833_ (##car _part4980249815_))
                              (_tl4980749835_ (##cdr _part4980249815_)))
                          (let ((_phi-ctx49838_ _hd4980649833_))
                            (if (##pair? _tl4980749835_)
                                (let ((_hd4980849840_ (##car _tl4980749835_))
                                      (_tl4980949842_ (##cdr _tl4980749835_)))
                                  (let ((_phi49845_ _hd4980849840_))
                                    (if (##pair? _tl4980949842_)
                                        (let ((_hd4981049847_
                                               (##car _tl4980949842_))
                                              (_tl4981149849_
                                               (##cdr _tl4980949842_)))
                                          (let ((_n49852_ _hd4981049847_))
                                            (if (##pair? _tl4981149849_)
                                                (let ((_hd4981249854_
                                                       (##car _tl4981149849_))
                                                      (_tl4981349856_
                                                       (##cdr _tl4981149849_)))
                                                  (let ((_code49859_
                                                         _hd4981249854_))
                                                    (if (##null? _tl4981349856_)
                                                        (_K4980549830_
                                                         _code49859_
                                                         _n49852_
                                                         _phi49845_
                                                         _phi-ctx49838_)
                                                        (_E4980449819_))))
                                                (_E4980449819_))))
                                        (_E4980449819_))))
                                (_E4980449819_))))
                        (_E4980449819_))))))
        (let ((_g50434_ (gxc#generate-meta-code _ctx49793_)))
          (begin
            (let ((_g50435_
                   (if (##values? _g50434_) (##vector-length _g50434_) 1)))
              (if (not (##fx= _g50435_ 2))
                  (error "Context expects 2 values" _g50435_)))
            (let ((_ssi-code49798_ (##vector-ref _g50434_ 0))
                  (_phi-code49799_ (##vector-ref _g50434_ 1)))
              (begin
                (_compile-ssi49795_ _ssi-code49798_)
                (for-each _compile-phi49796_ _phi-code49799_))))))))
  (define gxc#compile-ssxi-code
    (lambda (_ctx49776_)
      (let* ((_path49778_ (gxc#compile-output-file _ctx49776_ '#f '".ssxi.ss"))
             (_code49780_
              (gxc#apply-generate-ssxi
               (##structure-ref _ctx49776_ '11 gx#module-context::t '#f)))
             (_idstr49782_
              (symbol->string
               (##structure-ref _ctx49776_ '1 gx#expander-context::t '#f)))
             (_pkg49789_
              (let ((_$e49784_ (string-rindex _idstr49782_ '#\/)))
                (if _$e49784_
                    ((lambda (_x49787_)
                       (string->symbol (substring _idstr49782_ '0 _x49787_)))
                     _$e49784_)
                    '#f))))
        (begin
          (gxc#verbose '"compile " _path49778_)
          (with-output-to-file
           (cons 'path:
                 (cons _path49778_ (cons 'permissions: (cons '420 '()))))
           (lambda ()
             (begin
               (displayln '"prelude: :gerbil/compiler/ssxi")
               (if _pkg49789_ (displayln '"package: " _pkg49789_) '#!void)
               (newline)
               (pretty-print _code49780_))))))))
  (define gxc#generate-meta-code
    (lambda (_ctx49769_)
      (let* ((_state49771_
              (let ((__obj50427 (make-object gxc#meta-state::t '4)))
                (begin
                  (gxc#meta-state:::init! __obj50427 _ctx49769_)
                  __obj50427)))
             (_ssi-code49773_
              (gxc#apply-generate-meta
               (##structure-ref _ctx49769_ '11 gx#module-context::t '#f)
               _state49771_)))
        (values _ssi-code49773_ (gxc#meta-state-end! _state49771_)))))
  (define gxc#generate-runtime-phi
    (lambda (_stx49762_)
      (let ((_lifts49764_ (box '())))
        (call-with-parameters
         (lambda ()
           (let ((_code49767_ (gxc#apply-generate-runtime-phi _stx49762_)))
             (if (null? (unbox _lifts49764_))
                 _code49767_
                 (cons 'begin
                       (foldr1 cons
                               (cons _code49767_ '())
                               (reverse (unbox _lifts49764_)))))))
         gxc#current-compile-lift
         _lifts49764_
         gxc#current-compile-marks
         (make-table 'test: eq?)
         gxc#current-compile-identifiers
         (gxc#make-bound-identifier-table)))))
  (define gxc#lift-nested-modules
    (lambda (_ctx49758_)
      (let ((_modules49760_ (box '())))
        (begin
          (gxc#apply-lift-modules
           (##structure-ref _ctx49758_ '11 gx#module-context::t '#f)
           _modules49760_)
          (reverse (unbox _modules49760_))))))
  (begin
    (define gxc#compile-scm-file__%
      (lambda (_path49741_ _code49742_ _phi?49743_)
        (begin
          (gxc#verbose '"compile " _path49741_)
          (with-output-to-file
           (cons 'path:
                 (cons _path49741_ (cons 'permissions: (cons '420 '()))))
           (lambda ()
             (begin
               (pretty-print
                (cons 'declare
                      (cons (cons 'block '())
                            (cons (cons 'standard-bindings '())
                                  (cons (cons 'extended-bindings '())
                                        (foldr1 cons
                                                '()
                                                (if _phi?49743_
                                                    '((inlining-limit 200))
                                                    '())))))))
               (pretty-print _code49742_))))
          (if (gxc#current-compile-invoke-gsc)
              (gxc#gsc-compile-file _path49741_ _phi?49743_)
              '#!void)
          (if (gxc#current-compile-keep-scm)
              '#!void
              (delete-file _path49741_)))))
    (begin
      (define gxc#compile-scm-file__0
        (lambda (_path49749_ _code49750_)
          (let ((_phi?49752_ '#f))
            (gxc#compile-scm-file__% _path49749_ _code49750_ _phi?49752_))))
      (define gxc#compile-scm-file
        (lambda _g50437_
          (let ((_g50436_ (length _g50437_)))
            (cond ((##fx= _g50436_ 2) (apply gxc#compile-scm-file__0 _g50437_))
                  ((##fx= _g50436_ 3) (apply gxc#compile-scm-file__% _g50437_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-scm-file
                    _g50437_))))))))
  (begin
    (define gxc#gsc-debug-options__%
      (lambda (_phi?49648_)
        (let ((_$e49721_ (gxc#current-compile-debug)))
          (if _$e49721_
              ((lambda (_debug49724_)
                 (let ((_$e49726_ _debug49724_))
                   (if (eq? 'env _$e49726_)
                       (if _phi?49648_ '() (cons '"-debug-environments" '()))
                       (if (eq? 'env/phi _$e49726_)
                           (cons '"-debug-environments" '())
                           (if (eq? 'src _$e49726_)
                               (if _phi?49648_
                                   '()
                                   (cons '"-debug-environments"
                                         (cons '"-debug-source" '())))
                               (if (eq? 'src/phi _$e49726_)
                                   (cons '"-debug-environments"
                                         (cons '"-debug-source" '()))
                                   (if (eq? 'all _$e49726_)
                                       (if _phi?49648_
                                           '()
                                           (cons '"-debug" '()))
                                       (if (let ((_$e49729_
                                                  (eq? 'all/phi _$e49726_)))
                                             (if _$e49729_
                                                 _$e49729_
                                                 (eq? '#t _$e49726_)))
                                           (cons '"-debug" '())
                                           (gxc#raise-compile-error
                                            '"unknown debug option"
                                            _debug49724_)))))))))
               _$e49721_)
              '()))))
    (begin
      (define gxc#gsc-debug-options__0
        (lambda ()
          (let ((_phi?49736_ '#f)) (gxc#gsc-debug-options__% _phi?49736_))))
      (define gxc#gsc-debug-options
        (lambda _g50439_
          (let ((_g50438_ (length _g50439_)))
            (cond ((##fx= _g50438_ 0)
                   (apply gxc#gsc-debug-options__0 _g50439_))
                  ((##fx= _g50438_ 1)
                   (apply gxc#gsc-debug-options__% _g50439_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#gsc-debug-options
                    _g50439_))))))))
  (define gxc#gsc-compile-file
    (lambda (_path49629_ _phi?49630_)
      (let* ((_gsc-args49637_
              (let ((_$e49632_ (gxc#current-compile-gsc-options)))
                (if _$e49632_
                    ((lambda (_opts49635_)
                       (foldr1 cons (cons _path49629_ '()) _opts49635_))
                     _$e49632_)
                    (cons _path49629_ '()))))
             (_gsc-args49639_
              (foldr1 cons
                      _gsc-args49637_
                      (gxc#gsc-debug-options__% _phi?49630_)))
             (_g50440_
              (gxc#verbose '"invoke gsc " (cons 'gsc _gsc-args49639_)))
             (_proc49642_
              (open-process
               (cons 'path:
                     (cons '"gsc"
                           (cons 'arguments:
                                 (cons _gsc-args49639_
                                       (cons 'stdout-redirection:
                                             (cons '#f '()))))))))
             (_status49644_ (process-status _proc49642_)))
        (if (zero? _status49644_)
            '#!void
            (gxc#raise-compile-error
             '"Compilation error; gsc exit with nonzero status"
             _path49629_
             _status49644_)))))
  (define gxc#compile-output-file
    (lambda (_ctx49601_ _n49602_ _ext49603_)
      (letrec ((_module-relative-path49605_
                (lambda (_ctx49627_)
                  (path-strip-directory
                   (gxc#module-id->path-string
                    (##structure-ref
                     _ctx49627_
                     '1
                     gx#expander-context::t
                     '#f)))))
               (_module-source-directory49606_
                (lambda (_ctx49623_)
                  (path-directory
                   (let ((_mpath49625_
                          (##structure-ref
                           _ctx49623_
                           '7
                           gx#module-context::t
                           '#f)))
                     (if (string? _mpath49625_)
                         _mpath49625_
                         (last _mpath49625_))))))
               (_section-string49607_
                (lambda (_n49621_)
                  (if (number? _n49621_)
                      (number->string _n49621_)
                      (if (symbol? _n49621_)
                          (symbol->string _n49621_)
                          (if (string? _n49621_)
                              _n49621_
                              (gxc#raise-compile-error
                               '"Unexpected section"
                               _n49621_))))))
               (_file-name49608_
                (lambda (_path49619_)
                  (if _n49602_
                      (string-append
                       _path49619_
                       '"__"
                       (_section-string49607_ _n49602_)
                       _ext49603_)
                      (string-append _path49619_ _ext49603_))))
               (_file-path49609_
                (lambda ()
                  (let ((_$e49614_ (gxc#current-compile-output-dir)))
                    (if _$e49614_
                        ((lambda (_outdir49617_)
                           (path-expand
                            (_file-name49608_
                             (gxc#module-id->path-string
                              (##structure-ref
                               _ctx49601_
                               '1
                               gx#expander-context::t
                               '#f)))
                            _outdir49617_))
                         _$e49614_)
                        (path-expand
                         (_file-name49608_
                          (_module-relative-path49605_ _ctx49601_))
                         (_module-source-directory49606_ _ctx49601_)))))))
        (let ((_path49611_ (_file-path49609_)))
          (begin
            (create-directory* (path-directory _path49611_))
            _path49611_)))))
  (define gxc#compile-static-output-file
    (lambda (_ctx49584_)
      (letrec ((_file-name49586_
                (lambda (_id49599_)
                  (string-append (gxc#static-module-name _id49599_) '".scm")))
               (_file-path49587_
                (lambda ()
                  (let* ((_file49592_
                          (_file-name49586_
                           (##structure-ref
                            _ctx49584_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_$e49594_ (gxc#current-compile-output-dir)))
                    (if _$e49594_
                        ((lambda (_outdir49597_)
                           (path-expand
                            _file49592_
                            (path-expand '"static" _outdir49597_)))
                         _$e49594_)
                        (path-expand _file49592_ '"static"))))))
        (let ((_path49589_ (_file-path49587_)))
          (begin
            (create-directory* (path-directory _path49589_))
            _path49589_)))))
  (define gxc#compile-exe-output-file
    (lambda (_ctx49571_ _opts49572_)
      (let ((_$e49574_ (pgetq 'output-file: _opts49572_)))
        (if _$e49574_
            (values _$e49574_)
            (let* ((_mod-str49577_
                    (symbol->string
                     (##structure-ref
                      _ctx49571_
                      '1
                      gx#expander-context::t
                      '#f)))
                   (_$e49579_ (string-rindex _mod-str49577_ '#\/)))
              (if _$e49579_
                  ((lambda (_ix49582_)
                     (substring
                      _mod-str49577_
                      (fx+ _ix49582_ '1)
                      (string-length _mod-str49577_)))
                   _$e49579_)
                  _mod-str49577_))))))
  (define gxc#static-module-name
    (lambda (_idstr49564_)
      (if (string? _idstr49564_)
          (let* ((_str49566_ (gxc#module-id->path-string _idstr49564_))
                 (_strs49568_ (string-split _str49566_ '#\/)))
            (string-join _strs49568_ '"__"))
          (if (symbol? _idstr49564_)
              (gxc#static-module-name (symbol->string _idstr49564_))
              (error '"Bad module id" _idstr49564_))))))
