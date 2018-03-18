(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#compile-timestamp
    (lambda () (inexact->exact (floor (time->seconds (current-time))))))
  (begin
    (define gxc#compile-file__%
      (lambda (_srcpath37460_ _opts37461_)
        (begin
          (if (string? _srcpath37460_)
              '#!void
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath37460_))
          (let ((_outdir37463_ (pgetq 'output-dir: _opts37461_))
                (_invoke-gsc?37464_ (pgetq 'invoke-gsc: _opts37461_))
                (_gsc-options37465_ (pgetq 'gsc-options: _opts37461_))
                (_keep-scm?37466_ (pgetq 'keep-scm: _opts37461_))
                (_verbosity37467_ (pgetq 'verbose: _opts37461_))
                (_optimize37468_ (pgetq 'optimize: _opts37461_))
                (_debug37469_ (pgetq 'debug: _opts37461_))
                (_gen-ssxi37470_ (pgetq 'generate-ssxi: _opts37461_))
                (_static37471_ (pgetq 'static: _opts37461_)))
            (begin
              (if _outdir37463_ (create-directory* _outdir37463_) '#!void)
              (if _optimize37468_ (gxc#optimizer-info-init!) '#!void)
              (call-with-parameters
               (lambda ()
                 (begin
                   (gxc#verbose '"compile " _srcpath37460_)
                   (gxc#compile-top-module
                    (gx#import-module__0 _srcpath37460_))))
               gxc#current-compile-output-dir
               _outdir37463_
               gxc#current-compile-invoke-gsc
               _invoke-gsc?37464_
               gxc#current-compile-gsc-options
               _gsc-options37465_
               gxc#current-compile-keep-scm
               _keep-scm?37466_
               gxc#current-compile-verbose
               _verbosity37467_
               gxc#current-compile-optimize
               _optimize37468_
               gxc#current-compile-debug
               _debug37469_
               gxc#current-compile-generate-ssxi
               _gen-ssxi37470_
               gxc#current-compile-static
               _static37471_
               gxc#current-compile-timestamp
               (gxc#compile-timestamp)))))))
    (begin
      (define gxc#compile-file__0
        (lambda (_srcpath37477_)
          (let ((_opts37479_ '()))
            (gxc#compile-file__% _srcpath37477_ _opts37479_))))
      (define gxc#compile-file
        (lambda _g37492_
          (let ((_g37491_ (length _g37492_)))
            (cond ((##fx= _g37491_ 1) (apply gxc#compile-file__0 _g37492_))
                  ((##fx= _g37491_ 2) (apply gxc#compile-file__% _g37492_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-file
                    _g37492_))))))))
  (begin
    (define gxc#compile-exe-stub__%
      (lambda (_srcpath37446_ _opts37447_)
        (gxc#do-compile-exe
         _srcpath37446_
         _opts37447_
         gxc#compile-exe-stub-module)))
    (begin
      (define gxc#compile-exe-stub__0
        (lambda (_srcpath37452_)
          (let ((_opts37454_ '()))
            (gxc#compile-exe-stub__% _srcpath37452_ _opts37454_))))
      (define gxc#compile-exe-stub
        (lambda _g37494_
          (let ((_g37493_ (length _g37494_)))
            (cond ((##fx= _g37493_ 1) (apply gxc#compile-exe-stub__0 _g37494_))
                  ((##fx= _g37493_ 2) (apply gxc#compile-exe-stub__% _g37494_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-exe-stub
                    _g37494_))))))))
  (begin
    (define gxc#compile-static-exe__%
      (lambda (_srcpath37432_ _opts37433_)
        (gxc#do-compile-exe
         _srcpath37432_
         _opts37433_
         gxc#compile-exe-static-module)))
    (begin
      (define gxc#compile-static-exe__0
        (lambda (_srcpath37438_)
          (let ((_opts37440_ '()))
            (gxc#compile-static-exe__% _srcpath37438_ _opts37440_))))
      (define gxc#compile-static-exe
        (lambda _g37496_
          (let ((_g37495_ (length _g37496_)))
            (cond ((##fx= _g37495_ 1)
                   (apply gxc#compile-static-exe__0 _g37496_))
                  ((##fx= _g37495_ 2)
                   (apply gxc#compile-static-exe__% _g37496_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-static-exe
                    _g37496_))))))))
  (define gxc#do-compile-exe
    (lambda (_srcpath37420_ _opts37421_ _compile-e37422_)
      (begin
        (if (string? _srcpath37420_)
            '#!void
            (gxc#raise-compile-error
             '"Invalid module source path"
             _srcpath37420_))
        (let ((_outdir37424_ (pgetq 'output-dir: _opts37421_))
              (_invoke-gsc?37425_ (pgetq 'invoke-gsc: _opts37421_))
              (_gsc-options37426_ (pgetq 'gsc-options: _opts37421_))
              (_keep-scm?37427_ (pgetq 'keep-scm: _opts37421_))
              (_verbosity37428_ (pgetq 'verbose: _opts37421_)))
          (begin
            (if _outdir37424_ (create-directory* _outdir37424_) '#!void)
            (call-with-parameters
             (lambda ()
               (begin
                 (gxc#verbose '"compile exe " _srcpath37420_)
                 (_compile-e37422_
                  (gx#import-module__0 _srcpath37420_)
                  _opts37421_)))
             gxc#current-compile-output-dir
             _outdir37424_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?37425_
             gxc#current-compile-gsc-options
             _gsc-options37426_
             gxc#current-compile-keep-scm
             _keep-scm?37427_
             gxc#current-compile-verbose
             _verbosity37428_
             gxc#current-compile-timestamp
             (gxc#compile-timestamp)))))))
  (define gxc#compile-exe-stub-module
    (lambda (_ctx37386_ _opts37387_)
      (letrec ((_generate-stub37389_
                (lambda (_gx-init-stub37411_)
                  (let* ((_mod-str37413_
                          (gxc#module-id->path-string
                           (##structure-ref
                            _ctx37386_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_mod-rt37415_ (string-append _mod-str37413_ '"__rt"))
                         (_mod-main37417_
                          (gxc#find-runtime-symbol _ctx37386_ 'main)))
                    (begin
                      (write '(##namespace ("")))
                      (newline)
                      (write (cons 'include (cons _gx-init-stub37411_ '())))
                      (newline)
                      (write (cons '_gx#start!
                                   (cons _mod-rt37415_
                                         (cons (cons 'quote
                                                     (cons _mod-main37417_
                                                           '()))
                                               '()))))
                      (newline)))))
               (_compile-stub37390_
                (lambda (_output-scm37397_ _output-bin37398_)
                  (let* ((_init-stub37400_
                          (path-expand
                           '"lib/gx-init-exe.scm"
                           (getenv '"GERBIL_HOME")))
                         (_gsc-args37402_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin37398_
                                            (cons _output-scm37397_ '()))))))
                    (begin
                      (with-output-to-file
                       _output-scm37397_
                       (lambda () (_generate-stub37389_ _init-stub37400_)))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (gxc#verbose
                             '"invoke gsc "
                             (cons 'gsc _gsc-args37402_))
                            (let* ((_proc37406_
                                    (open-process
                                     (cons 'path:
                                           (cons '"gsc"
                                                 (cons 'arguments:
                                                       (cons _gsc-args37402_
                                                             (cons 'stdout-redirection:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_status37408_
                                    (process-status _proc37406_)))
                              (if (zero? _status37408_)
                                  '#!void
                                  (gxc#raise-compile-error
                                   '"Compilation error; gsc exit with nonzero status"
                                   _output-scm37397_
                                   _output-bin37398_
                                   _status37408_))))
                          '#!void))))))
        (let* ((_output-bin37392_
                (gxc#compile-exe-output-file _ctx37386_ _opts37387_))
               (_output-scm37394_ (string-append _output-bin37392_ '".scm")))
          (begin
            (_compile-stub37390_ _output-scm37394_ _output-bin37392_)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm37394_)))))))
  (define gxc#compile-exe-static-module
    (lambda (_ctx37247_ _opts37248_)
      (letrec ((_reset-declare37250_
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
               (_user-declare37251_
                (lambda ()
                  (let* ((_gsc-opts37329_ (pgetq 'gsc-options: _opts37248_))
                         (_gsc-prelude37331_
                          (if _gsc-opts37329_
                              (member '"-prelude" _gsc-opts37329_)
                              '#f))
                         (_gsc-prelude37333_
                          (if _gsc-prelude37331_
                              (read (open-input-string
                                     (cadr _gsc-prelude37331_)))
                              '#f)))
                    (let _lift37336_ ((_expr37338_ _gsc-prelude37333_))
                      (let* ((_expr3733937351_ _expr37338_)
                             (_else3734237359_ (lambda () '#f)))
                        (let ((_K3734737379_ (lambda () _expr37338_))
                              (_K3734437365_
                               (lambda (_exprs37363_)
                                 (ormap1 _lift37336_ _exprs37363_))))
                          (if (##pair? _expr3733937351_)
                              (let ((_hd3734837382_ (##car _expr3733937351_)))
                                (if (##eq? _hd3734837382_ 'declare)
                                    (let () (_K3734737379_))
                                    (let ((_tl3734637370_
                                           (##cdr _expr3733937351_)))
                                      (if (##eq? _hd3734837382_ 'begin)
                                          (let ((_exprs37373_ _tl3734637370_))
                                            (_K3734437365_ _exprs37373_))
                                          (_else3734237359_)))))
                              (_else3734237359_))))))))
               (_generate-stub37252_
                (lambda (_deps37320_)
                  (let ((_mod-main37322_
                         (gxc#find-runtime-symbol _ctx37247_ 'main))
                        (_reset-decl37323_ (_reset-declare37250_))
                        (_user-decl37324_ (_user-declare37251_)))
                    (begin
                      (write '(##namespace ("")))
                      (newline)
                      (write '(declare (optimize-dead-definitions)))
                      (newline)
                      (for-each
                       (lambda (_dep37326_)
                         (begin
                           (write (cons 'include (cons _dep37326_ '())))
                           (newline)
                           (write '(##namespace ("")))
                           (write _reset-decl37323_)
                           (if _user-decl37324_
                               (write _user-decl37324_)
                               '#!void)
                           (newline)))
                       _deps37320_)
                      (write (cons 'apply
                                   (cons _mod-main37322_
                                         (cons (cons 'cdr
                                                     (cons (cons 'command-line
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                      (newline)))))
               (_static-include37253_
                (lambda (_gsc-opts37303_ _home37304_)
                  (letrec* ((_static-dir37306_
                             (path-expand '"lib/static" _home37304_))
                            (_user-static-dir37307_
                             (path-expand
                              '"lib/static"
                              (getenv '"GERBIL_PATH" '"~/.gerbil")))
                            (_cppflags37308_
                             (string-append
                              '"-I "
                              _static-dir37306_
                              '" -I "
                              _user-static-dir37307_)))
                    (let ((_$e37310_ (member '"-cc-options" _gsc-opts37303_)))
                      (if _$e37310_
                          ((lambda (_rest37313_)
                             (let* ((_cell37315_ (cdr _rest37313_))
                                    (_opt37317_ (car _cell37315_)))
                               (begin
                                 (set-car!
                                  _cell37315_
                                  (string-append
                                   _opt37317_
                                   '" "
                                   _cppflags37308_))
                                 _gsc-opts37303_)))
                           _$e37310_)
                          (cons '"-cc-options"
                                (cons _cppflags37308_ _gsc-opts37303_)))))))
               (_compile-stub37254_
                (lambda (_output-scm37261_ _output-bin37262_)
                  (let* ((_gerbil-home37264_ (getenv '"GERBIL_HOME"))
                         (_gx-gambc037266_
                          (path-expand
                           '"lib/static/gx-gambc0.scm"
                           _gerbil-home37264_))
                         (_gx-gambc-init37268_
                          (path-expand
                           '"lib/gx-init-static-exe.scm"
                           _gerbil-home37264_))
                         (_gx-gambc-macros37270_
                          (path-expand
                           '"lib/static/gx-gambc#.scm"
                           _gerbil-home37264_))
                         (_include-gx-gambc-macros37272_
                          (string-append
                           '"(include \""
                           _gx-gambc-macros37270_
                           '"\")"))
                         (_bin-scm37274_
                          (gxc#find-static-module-file _ctx37247_))
                         (_deps37276_
                          (gxc#find-runtime-module-deps _ctx37247_))
                         (_deps37278_
                          (map gxc#find-static-module-file _deps37276_))
                         (_deps37283_
                          (filter (lambda (_$obj37280_)
                                    (not (gxc#file-empty? _$obj37280_)))
                                  _deps37278_))
                         (_gsc-opts37288_
                          (let ((_$e37285_ (pgetq 'gsc-options: _opts37248_)))
                            (if _$e37285_ _$e37285_ '())))
                         (_gsc-opts37290_
                          (_static-include37253_
                           _gsc-opts37288_
                           _gerbil-home37264_))
                         (_gsc-gx-macros37292_
                          (if (gerbil-runtime-smp?)
                              (cons '"-e"
                                    (cons '"(define-cond-expand-feature|enable-smp|)"
                                          (cons '"-e"
                                                (cons _include-gx-gambc-macros37272_
                                                      '()))))
                              (cons '"-e"
                                    (cons _include-gx-gambc-macros37272_
                                          '()))))
                         (_gsc-args37294_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin37262_
                                            (foldr1 cons
                                                    (foldr1 cons
                                                            (foldr1 cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _output-scm37261_ '())
                            _gsc-gx-macros37292_)
                    _gsc-opts37290_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gxc#gsc-debug-options)))))))
                    (begin
                      (with-output-to-file
                       _output-scm37261_
                       (lambda ()
                         (_generate-stub37252_
                          (cons _gx-gambc037266_
                                (cons _gx-gambc-init37268_
                                      (foldr1 cons
                                              (cons _bin-scm37274_ '())
                                              _deps37283_))))))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (gxc#verbose
                             '"invoke gsc "
                             (cons 'gsc _gsc-args37294_))
                            (let* ((_proc37298_
                                    (open-process
                                     (cons 'path:
                                           (cons '"gsc"
                                                 (cons 'arguments:
                                                       (cons _gsc-args37294_
                                                             (cons 'stdout-redirection:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_status37300_
                                    (process-status _proc37298_)))
                              (if (zero? _status37300_)
                                  '#!void
                                  (gxc#raise-compile-error
                                   '"Compilation error; gsc exit with nonzero status"
                                   _output-scm37261_
                                   _output-bin37262_
                                   _status37300_))))
                          '#!void))))))
        (let* ((_output-bin37256_
                (gxc#compile-exe-output-file _ctx37247_ _opts37248_))
               (_output-scm37258_ (string-append _output-bin37256_ '".scm")))
          (begin
            (_compile-stub37254_ _output-scm37258_ _output-bin37256_)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm37258_)))))))
  (define gxc#find-export-binding
    (lambda (_ctx37197_ _id37198_)
      (let ((_$e37244_
             (find (lambda (_e3719937201_)
                     (let* ((_g3720337213_ _e3719937201_)
                            (_else3720537221_ (lambda () '#f))
                            (_K3720737225_ (lambda () '#t)))
                       (if (##structure-direct-instance-of?
                            _g3720337213_
                            'gx#module-export::t)
                           (let* ((_e3720837228_
                                   (##vector-ref _g3720337213_ '1))
                                  (_e3720937231_
                                   (##vector-ref _g3720337213_ '2))
                                  (_e3721037234_
                                   (##vector-ref _g3720337213_ '3)))
                             (if (##eq? _e3721037234_ '0)
                                 (let ((_e3721137237_
                                        (##vector-ref _g3720337213_ '4)))
                                   (if ((lambda (_g3723937241_)
                                          (eq? _g3723937241_ _id37198_))
                                        _e3721137237_)
                                       (_K3720737225_)
                                       (_else3720537221_)))
                                 (_else3720537221_)))
                           (_else3720537221_))))
                   (##structure-ref _ctx37197_ '9 gx#module-context::t '#f))))
        (if _$e37244_ (gx#core-resolve-module-export _$e37244_) '#f))))
  (define gxc#find-runtime-symbol
    (lambda (_ctx37189_ _id37190_)
      (let ((_$e37192_ (gxc#find-export-binding _ctx37189_ _id37190_)))
        (if _$e37192_
            ((lambda (_bind37195_)
               (begin
                 (if (##structure-instance-of?
                      _bind37195_
                      'gx#runtime-binding::t)
                     '#!void
                     (gxc#raise-compile-error
                      '"export is not a runtime binding"
                      _id37190_))
                 (##structure-ref _bind37195_ '1 gx#binding::t '#f)))
             _$e37192_)
            (gxc#raise-compile-error
             '"module does not export symbol"
             (##structure-ref _ctx37189_ '1 gx#expander-context::t '#f)
             _id37190_)))))
  (define gxc#find-runtime-module-deps
    (lambda (_ctx37076_)
      (letrec* ((_ht37078_ (make-hash-table-eq))
                (_import-set-template37079_
                 (lambda (_in37141_ _phi37142_)
                   (let ((_iphi37144_
                          (fx+ _phi37142_
                               (##direct-structure-ref
                                _in37141_
                                '2
                                gx#import-set::t
                                '#f)))
                         (_imports37145_
                          (##structure-ref
                           (##direct-structure-ref
                            _in37141_
                            '1
                            gx#import-set::t
                            '#f)
                           '8
                           gx#module-context::t
                           '#f)))
                     (let _lp37147_ ((_rest37149_ _imports37145_)
                                     (_r37150_ '()))
                       (let* ((_rest3715137159_ _rest37149_)
                              (_else3715337167_ (lambda () _r37150_))
                              (_K3715537177_
                               (lambda (_rest37170_ _in37171_)
                                 (if (##structure-instance-of?
                                      _in37171_
                                      'gx#module-context::t)
                                     (if (fxzero? _iphi37144_)
                                         (_lp37147_
                                          _rest37170_
                                          (cons _in37171_ _r37150_))
                                         (_lp37147_ _rest37170_ _r37150_))
                                     (if (##structure-direct-instance-of?
                                          _in37171_
                                          'gx#module-import::t)
                                         (let ((_iphi37173_
                                                (fx+ _phi37142_
                                                     (##direct-structure-ref
                                                      _in37171_
                                                      '3
                                                      gx#module-import::t
                                                      '#f))))
                                           (if (fxzero? _iphi37173_)
                                               (_lp37147_
                                                _rest37170_
                                                (cons (##direct-structure-ref
                                                       (##direct-structure-ref
                                                        _in37171_
                                                        '1
                                                        gx#module-import::t
                                                        '#f)
                                                       '1
                                                       gx#module-export::t
                                                       '#f)
                                                      _r37150_))
                                               (_lp37147_
                                                _rest37170_
                                                _r37150_)))
                                         (if (##structure-direct-instance-of?
                                              _in37171_
                                              'gx#import-set::t)
                                             (let ((_xphi37175_
                                                    (fx+ _iphi37144_
                                                         (##direct-structure-ref
                                                          _in37171_
                                                          '2
                                                          gx#import-set::t
                                                          '#f))))
                                               (if (fxzero? _xphi37175_)
                                                   (_lp37147_
                                                    _rest37170_
                                                    (cons (##direct-structure-ref
                                                           _in37171_
                                                           '1
                                                           gx#import-set::t
                                                           '#f)
                                                          _r37150_))
                                                   (if (fxpositive?
                                                        _xphi37175_)
                                                       (_lp37147_
                                                        _rest37170_
                                                        (foldl1 cons
                                                                _r37150_
                                                                (_import-set-template37079_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in37171_
                         _iphi37144_)))
               (_lp37147_ _rest37170_ _r37150_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_lp37147_
                                              _rest37170_
                                              _r37150_)))))))
                         (if (##pair? _rest3715137159_)
                             (let ((_hd3715637180_ (##car _rest3715137159_))
                                   (_tl3715737182_ (##cdr _rest3715137159_)))
                               (let* ((_in37185_ _hd3715637180_)
                                      (_rest37187_ _tl3715737182_))
                                 (_K3715537177_ _rest37187_ _in37185_)))
                             (_else3715337167_)))))))
                (_find-deps37080_
                 (lambda (_rest37087_ _deps37088_)
                   (let* ((_rest3708937097_ _rest37087_)
                          (_else3709137105_ (lambda () _deps37088_))
                          (_K3709337129_
                           (lambda (_rest37108_ _hd37109_)
                             (if (##structure-instance-of?
                                  _hd37109_
                                  'gx#module-context::t)
                                 (let ((_id37111_
                                        (##structure-ref
                                         _hd37109_
                                         '1
                                         gx#expander-context::t
                                         '#f))
                                       (_imports37112_
                                        (##structure-ref
                                         _hd37109_
                                         '8
                                         gx#module-context::t
                                         '#f)))
                                   (if (table-ref _ht37078_ _id37111_ '#f)
                                       (_find-deps37080_
                                        _rest37108_
                                        _deps37088_)
                                       (let ((_$e37114_
                                              (gx#core-context-prelude__%
                                               _hd37109_)))
                                         (if _$e37114_
                                             ((lambda (_pre37117_)
                                                (let ((_xdeps37119_
                                                       (_find-deps37080_
                                                        (cons _pre37117_
                                                              _imports37112_)
                                                        _deps37088_)))
                                                  (begin
                                                    (table-set!
                                                     _ht37078_
                                                     _id37111_
                                                     _hd37109_)
                                                    (_find-deps37080_
                                                     _rest37108_
                                                     (cons _hd37109_
                                                           _xdeps37119_)))))
                                              _$e37114_)
                                             (let ((_xdeps37121_
                                                    (_find-deps37080_
                                                     _imports37112_
                                                     _deps37088_)))
                                               (begin
                                                 (table-set!
                                                  _ht37078_
                                                  _id37111_
                                                  _hd37109_)
                                                 (_find-deps37080_
                                                  _rest37108_
                                                  (cons _hd37109_
                                                        _xdeps37121_))))))))
                                 (if (##structure-instance-of?
                                      _hd37109_
                                      'gx#prelude-context::t)
                                     (let ((_id37123_
                                            (##structure-ref
                                             _hd37109_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (if (table-ref _ht37078_ _id37123_ '#f)
                                           (_find-deps37080_
                                            _rest37108_
                                            _deps37088_)
                                           (let ((_xdeps37125_
                                                  (_find-deps37080_
                                                   (##structure-ref
                                                    _hd37109_
                                                    '7
                                                    gx#prelude-context::t
                                                    '#f)
                                                   _deps37088_)))
                                             (if (table-ref
                                                  _ht37078_
                                                  _id37123_
                                                  '#f)
                                                 (_find-deps37080_
                                                  _rest37108_
                                                  _xdeps37125_)
                                                 (begin
                                                   (table-set!
                                                    _ht37078_
                                                    _id37123_
                                                    _hd37109_)
                                                   (_find-deps37080_
                                                    _rest37108_
                                                    (cons _hd37109_
                                                          _xdeps37125_)))))))
                                     (if (##structure-direct-instance-of?
                                          _hd37109_
                                          'gx#module-import::t)
                                         (if (fxzero? (##direct-structure-ref
                                                       _hd37109_
                                                       '3
                                                       gx#module-import::t
                                                       '#f))
                                             (_find-deps37080_
                                              (cons (##direct-structure-ref
                                                     _hd37109_
                                                     '1
                                                     gx#module-import::t
                                                     '#f)
                                                    _rest37108_)
                                              _deps37088_)
                                             (_find-deps37080_
                                              _rest37108_
                                              _deps37088_))
                                         (if (##structure-direct-instance-of?
                                              _hd37109_
                                              'gx#module-export::t)
                                             (_find-deps37080_
                                              (cons (##direct-structure-ref
                                                     _hd37109_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)
                                                    _rest37108_)
                                              _deps37088_)
                                             (if (##structure-direct-instance-of?
                                                  _hd37109_
                                                  'gx#import-set::t)
                                                 (if (fxzero? (##direct-structure-ref
                                                               _hd37109_
                                                               '2
                                                               gx#import-set::t
                                                               '#f))
                                                     (_find-deps37080_
                                                      (cons (##direct-structure-ref
                                                             _hd37109_
                                                             '1
                                                             gx#import-set::t
                                                             '#f)
                                                            _rest37108_)
                                                      _deps37088_)
                                                     (if (fxpositive?
                                                          (##direct-structure-ref
                                                           _hd37109_
                                                           '2
                                                           gx#import-set::t
                                                           '#f))
                                                         (let ((_xdeps37127_
                                                                (_import-set-template37079_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd37109_
                         '0)))
                   (_find-deps37080_
                    (foldl1 cons _rest37108_ _xdeps37127_)
                    _deps37088_))
                 (_find-deps37080_ _rest37108_ _deps37088_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (error '"Unexpected module import"
                                                        _hd37109_)))))))))
                     (if (##pair? _rest3708937097_)
                         (let ((_hd3709437132_ (##car _rest3708937097_))
                               (_tl3709537134_ (##cdr _rest3708937097_)))
                           (let* ((_hd37137_ _hd3709437132_)
                                  (_rest37139_ _tl3709537134_))
                             (_K3709337129_ _rest37139_ _hd37137_)))
                         (_else3709137105_))))))
        (reverse (filter gx#expander-context-id
                         (_find-deps37080_
                          (let ((_$e37082_
                                 (gx#core-context-prelude__% _ctx37076_)))
                            (if _$e37082_
                                ((lambda (_pre37085_)
                                   (cons _pre37085_
                                         (##structure-ref
                                          _ctx37076_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _$e37082_)
                                (##structure-ref
                                 _ctx37076_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))))
  (define gxc#find-static-module-file
    (lambda (_ctx37015_)
      (let* ((_scm37017_
              (string-append
               (gxc#static-module-name
                (##structure-ref _ctx37015_ '1 gx#expander-context::t '#f))
               '".scm"))
             (_dirs37019_ (gx#current-expander-module-library-path))
             (_dirs37028_
              (let ((_$e37021_ (gxc#current-compile-output-dir)))
                (if _$e37021_
                    ((lambda (_g3702337025_) (cons _g3702337025_ _dirs37019_))
                     _$e37021_)
                    _dirs37019_)))
             (_dirs37034_
              (map (lambda (_g3702937031_)
                     (path-expand '"static" _g3702937031_))
                   _dirs37028_)))
        (let _lp37037_ ((_rest37039_ _dirs37034_))
          (let* ((_rest3704037048_ _rest37039_)
                 (_else3704237056_
                  (lambda ()
                    (gxc#raise-compile-error
                     '"cannot find static module"
                     (##structure-ref _ctx37015_ '1 gx#expander-context::t '#f)
                     _scm37017_)))
                 (_K3704437064_
                  (lambda (_rest37059_ _dir37060_)
                    (let ((_path37062_ (path-expand _scm37017_ _dir37060_)))
                      (if (file-exists? _path37062_)
                          _path37062_
                          (_lp37037_ _rest37059_))))))
            (if (##pair? _rest3704037048_)
                (let ((_hd3704537067_ (##car _rest3704037048_))
                      (_tl3704637069_ (##cdr _rest3704037048_)))
                  (let* ((_dir37072_ _hd3704537067_)
                         (_rest37074_ _tl3704637069_))
                    (_K3704437064_ _rest37074_ _dir37072_)))
                (_else3704237056_)))))))
  (define gxc#file-empty?
    (lambda (_path37013_)
      (zero? (file-info-size (file-info _path37013_ '#t)))))
  (define gxc#compile-top-module
    (lambda (_ctx37010_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#verbose
            '"compile "
            (##structure-ref _ctx37010_ '1 gx#expander-context::t '#f))
           (if (gxc#current-compile-optimize)
               (gxc#optimize! _ctx37010_)
               '#!void)
           (gxc#collect-bindings _ctx37010_)
           (gxc#compile-runtime-code _ctx37010_)
           (gxc#compile-meta-code _ctx37010_)
           (if (if (gxc#current-compile-optimize)
                   (gxc#current-compile-generate-ssxi)
                   '#f)
               (gxc#compile-ssxi-code _ctx37010_)
               '#!void)))
       gx#current-expander-context
       _ctx37010_
       gx#current-expander-phi
       '0
       gx#current-expander-marks
       '()
       gxc#current-compile-symbol-table
       (let ((__obj37489 (make-object gxc#symbol-table::t '2)))
         (begin (gxc#symbol-table:::init! __obj37489) __obj37489))
       gxc#current-compile-runtime-sections
       (make-hash-table-eq)
       gxc#current-compile-runtime-names
       (make-table))))
  (define gxc#collect-bindings
    (lambda (_ctx37008_)
      (gxc#apply-collect-bindings
       (##structure-ref _ctx37008_ '11 gx#module-context::t '#f))))
  (define gxc#compile-runtime-code
    (lambda (_ctx36962_)
      (letrec ((_compile136964_
                (lambda (_ctx36997_)
                  (let* ((_code36999_
                          (##structure-ref
                           _ctx36997_
                           '11
                           gx#module-context::t
                           '#f))
                         (_rt37003_
                          (if (gxc#apply-find-runtime-code _code36999_)
                              (let ((_idstr37001_
                                     (gxc#module-id->path-string
                                      (##structure-ref
                                       _ctx36997_
                                       '1
                                       gx#expander-context::t
                                       '#f))))
                                (string-append _idstr37001_ '"__0"))
                              '#f)))
                    (begin
                      (if _rt37003_
                          (begin
                            (table-set!
                             (gxc#current-compile-runtime-sections)
                             _ctx36997_
                             _rt37003_)
                            (_generate-runtime-code36965_
                             _ctx36997_
                             _code36999_))
                          (if (gxc#current-compile-static)
                              (let ((_path37006_
                                     (gxc#compile-static-output-file
                                      _ctx36997_)))
                                (with-output-to-file
                                 (cons 'path:
                                       (cons _path37006_
                                             (cons 'permissions:
                                                   (cons '420 '()))))
                                 void))
                              '#!void))
                      (_generate-loader-code36966_
                       _ctx36997_
                       _code36999_
                       _rt37003_)))))
               (_generate-runtime-code36965_
                (lambda (_ctx36981_ _code36982_)
                  (let* ((_lifts36984_ (box '()))
                         (_runtime-code36987_
                          (call-with-parameters
                           (lambda () (gxc#apply-generate-runtime _code36982_))
                           gx#current-expander-context
                           _ctx36981_
                           gx#current-expander-phi
                           '0
                           gxc#current-compile-lift
                           _lifts36984_
                           gxc#current-compile-marks
                           (make-hash-table-eq)))
                         (_runtime-code36989_
                          (if (null? (unbox _lifts36984_))
                              _runtime-code36987_
                              (cons 'begin
                                    (foldr1 cons
                                            (cons _runtime-code36987_ '())
                                            (reverse (unbox _lifts36984_))))))
                         (_scm036991_
                          (gxc#compile-output-file _ctx36981_ '0 '".scm")))
                    (if (gxc#current-compile-static)
                        (let ((_scms36994_
                               (gxc#compile-static-output-file _ctx36981_)))
                          (begin
                            (call-with-parameters
                             (lambda ()
                               (gxc#compile-scm-file
                                _scm036991_
                                _runtime-code36989_))
                             gxc#current-compile-keep-scm
                             '#t)
                            (if (file-exists? _scms36994_)
                                (delete-file _scms36994_)
                                '#!void)
                            (gxc#verbose
                             '"copy static module "
                             _scm036991_
                             '" => "
                             _scms36994_)
                            (copy-file _scm036991_ _scms36994_)
                            (if (gxc#current-compile-keep-scm)
                                '#!void
                                (delete-file _scm036991_))))
                        (gxc#compile-scm-file
                         _scm036991_
                         _runtime-code36989_)))))
               (_generate-loader-code36966_
                (lambda (_ctx36970_ _code36971_ _rt36972_)
                  (let* ((_loader-code36975_
                          (call-with-parameters
                           (lambda () (gxc#apply-generate-loader _code36971_))
                           gx#current-expander-context
                           _ctx36970_))
                         (_loader-code36977_
                          (if _rt36972_
                              (cons 'begin
                                    (cons _loader-code36975_
                                          (cons (cons 'load-module
                                                      (cons _rt36972_ '()))
                                                '())))
                              _loader-code36975_)))
                    (call-with-parameters
                     (lambda ()
                       (gxc#compile-scm-file
                        (gxc#compile-output-file _ctx36970_ 'rt '".scm")
                        _loader-code36977_))
                     gxc#current-compile-gsc-options
                     '#f)))))
        (let ((_all-modules36968_
               (cons _ctx36962_ (gxc#lift-nested-modules _ctx36962_))))
          (for-each _compile136964_ _all-modules36968_)))))
  (define gxc#compile-meta-code
    (lambda (_ctx36864_)
      (letrec ((_compile-ssi36866_
                (lambda (_code36932_)
                  (let* ((_path36934_
                          (gxc#compile-output-file _ctx36864_ '#f '".ssi"))
                         (_prelude36945_
                          (let* ((_super36936_
                                  (##structure-ref
                                   _ctx36864_
                                   '3
                                   gx#phi-context::t
                                   '#f))
                                 (_$e36938_
                                  (##structure-ref
                                   _super36936_
                                   '1
                                   gx#expander-context::t
                                   '#f)))
                            (if _$e36938_
                                ((lambda (_g3694036942_)
                                   (make-symbol '":" _g3694036942_))
                                 _$e36938_)
                                ':<root>)))
                         (_ns36947_
                          (##structure-ref
                           _ctx36864_
                           '6
                           gx#module-context::t
                           '#f))
                         (_idstr36949_
                          (symbol->string
                           (##structure-ref
                            _ctx36864_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_pkg36956_
                          (let ((_$e36951_ (string-rindex _idstr36949_ '#\/)))
                            (if _$e36951_
                                ((lambda (_x36954_)
                                   (string->symbol
                                    (substring _idstr36949_ '0 _x36954_)))
                                 _$e36951_)
                                '#f)))
                         (_rt36958_
                          (table-ref
                           (gxc#current-compile-runtime-sections)
                           _ctx36864_
                           '#f)))
                    (begin
                      (gxc#verbose '"compile " _path36934_)
                      (with-output-to-file
                       (cons 'path:
                             (cons _path36934_
                                   (cons 'permissions: (cons '420 '()))))
                       (lambda ()
                         (begin
                           (displayln '"prelude:" '" " _prelude36945_)
                           (if _pkg36956_
                               (displayln '"package:" '" " _pkg36956_)
                               '#!void)
                           (displayln '"namespace:" '" " _ns36947_)
                           (newline)
                           (pretty-print _code36932_)
                           (if _rt36958_
                               (pretty-print
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons '_gx#load-module '()))
                                            (cons (cons '%#quote
                                                        (cons _rt36958_ '()))
                                                  '()))))
                               '#!void))))))))
               (_compile-phi36867_
                (lambda (_part36872_)
                  (let* ((_part3687336886_ _part36872_)
                         (_E3687536890_
                          (lambda ()
                            (error '"No clause matching" _part3687336886_)))
                         (_K3687636901_
                          (lambda (_code36893_
                                   _n36894_
                                   _phi36895_
                                   _phi-ctx36896_)
                            (let ((_code36899_
                                   (call-with-parameters
                                    (lambda ()
                                      (gxc#generate-runtime-phi _code36893_))
                                    gx#current-expander-context
                                    _phi-ctx36896_
                                    gx#current-expander-phi
                                    _phi36895_)))
                              (gxc#compile-scm-file
                               (gxc#compile-output-file
                                _ctx36864_
                                _n36894_
                                '".scm")
                               _code36899_)))))
                    (if (##pair? _part3687336886_)
                        (let ((_hd3687736904_ (##car _part3687336886_))
                              (_tl3687836906_ (##cdr _part3687336886_)))
                          (let ((_phi-ctx36909_ _hd3687736904_))
                            (if (##pair? _tl3687836906_)
                                (let ((_hd3687936911_ (##car _tl3687836906_))
                                      (_tl3688036913_ (##cdr _tl3687836906_)))
                                  (let ((_phi36916_ _hd3687936911_))
                                    (if (##pair? _tl3688036913_)
                                        (let ((_hd3688136918_
                                               (##car _tl3688036913_))
                                              (_tl3688236920_
                                               (##cdr _tl3688036913_)))
                                          (let ((_n36923_ _hd3688136918_))
                                            (if (##pair? _tl3688236920_)
                                                (let ((_hd3688336925_
                                                       (##car _tl3688236920_))
                                                      (_tl3688436927_
                                                       (##cdr _tl3688236920_)))
                                                  (let ((_code36930_
                                                         _hd3688336925_))
                                                    (if (##null? _tl3688436927_)
                                                        (_K3687636901_
                                                         _code36930_
                                                         _n36923_
                                                         _phi36916_
                                                         _phi-ctx36909_)
                                                        (_E3687536890_))))
                                                (_E3687536890_))))
                                        (_E3687536890_))))
                                (_E3687536890_))))
                        (_E3687536890_))))))
        (let ((_g37497_ (gxc#generate-meta-code _ctx36864_)))
          (begin
            (let ((_g37498_
                   (if (##values? _g37497_) (##vector-length _g37497_) 1)))
              (if (not (##fx= _g37498_ 2))
                  (error "Context expects 2 values" _g37498_)))
            (let ((_ssi-code36869_ (##vector-ref _g37497_ 0))
                  (_phi-code36870_ (##vector-ref _g37497_ 1)))
              (begin
                (_compile-ssi36866_ _ssi-code36869_)
                (for-each _compile-phi36867_ _phi-code36870_))))))))
  (define gxc#compile-ssxi-code
    (lambda (_ctx36847_)
      (let* ((_path36849_ (gxc#compile-output-file _ctx36847_ '#f '".ssxi.ss"))
             (_code36851_
              (gxc#apply-generate-ssxi
               (##structure-ref _ctx36847_ '11 gx#module-context::t '#f)))
             (_idstr36853_
              (symbol->string
               (##structure-ref _ctx36847_ '1 gx#expander-context::t '#f)))
             (_pkg36860_
              (let ((_$e36855_ (string-rindex _idstr36853_ '#\/)))
                (if _$e36855_
                    ((lambda (_x36858_)
                       (string->symbol (substring _idstr36853_ '0 _x36858_)))
                     _$e36855_)
                    '#f))))
        (begin
          (gxc#verbose '"compile " _path36849_)
          (with-output-to-file
           (cons 'path:
                 (cons _path36849_ (cons 'permissions: (cons '420 '()))))
           (lambda ()
             (begin
               (displayln '"prelude: :gerbil/compiler/ssxi")
               (if _pkg36860_ (displayln '"package: " _pkg36860_) '#!void)
               (newline)
               (pretty-print _code36851_))))))))
  (define gxc#generate-meta-code
    (lambda (_ctx36840_)
      (let* ((_state36842_
              (let ((__obj37490 (make-object gxc#meta-state::t '4)))
                (begin
                  (gxc#meta-state:::init! __obj37490 _ctx36840_)
                  __obj37490)))
             (_ssi-code36844_
              (gxc#apply-generate-meta
               (##structure-ref _ctx36840_ '11 gx#module-context::t '#f)
               _state36842_)))
        (values _ssi-code36844_ (gxc#meta-state-end! _state36842_)))))
  (define gxc#generate-runtime-phi
    (lambda (_stx36833_)
      (let ((_lifts36835_ (box '())))
        (call-with-parameters
         (lambda ()
           (let ((_code36838_ (gxc#apply-generate-runtime-phi _stx36833_)))
             (if (null? (unbox _lifts36835_))
                 _code36838_
                 (cons 'begin
                       (foldr1 cons
                               (cons _code36838_ '())
                               (reverse (unbox _lifts36835_)))))))
         gxc#current-compile-lift
         _lifts36835_
         gxc#current-compile-marks
         (make-hash-table-eq)))))
  (define gxc#lift-nested-modules
    (lambda (_ctx36829_)
      (let ((_modules36831_ (box '())))
        (begin
          (gxc#apply-lift-modules
           (##structure-ref _ctx36829_ '11 gx#module-context::t '#f)
           _modules36831_)
          (reverse (unbox _modules36831_))))))
  (define gxc#compile-scm-file
    (lambda (_path36825_ _code36826_)
      (begin
        (gxc#verbose '"compile " _path36825_)
        (with-output-to-file
         (cons 'path: (cons _path36825_ (cons 'permissions: (cons '420 '()))))
         (lambda ()
           (begin
             (pretty-print
              '(declare (block) (standard-bindings) (extended-bindings)))
             (pretty-print _code36826_))))
        (if (gxc#current-compile-invoke-gsc)
            (gxc#gsc-compile-file _path36825_)
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path36825_)))))
  (define gxc#gsc-debug-options
    (lambda ()
      (let ((_$e36814_ (gxc#current-compile-debug)))
        (if _$e36814_
            ((lambda (_debug36817_)
               (let ((_$e36819_ _debug36817_))
                 (if (eq? 'env _$e36819_)
                     (cons '"-debug-environments" '())
                     (if (eq? 'src _$e36819_)
                         (cons '"-debug-environments"
                               (cons '"-debug-source" '()))
                         (if (let ((_$e36822_ (eq? 'all _$e36819_)))
                               (if _$e36822_ _$e36822_ (eq? '#t _$e36819_)))
                             (cons '"-debug" '())
                             (gxc#raise-compile-error
                              '"unknown debug option"
                              _debug36817_))))))
             _$e36814_)
            '()))))
  (define gxc#gsc-compile-file
    (lambda (_path36796_)
      (let* ((_gsc-args36803_
              (let ((_$e36798_ (gxc#current-compile-gsc-options)))
                (if _$e36798_
                    ((lambda (_opts36801_)
                       (foldr1 cons (cons _path36796_ '()) _opts36801_))
                     _$e36798_)
                    (cons _path36796_ '()))))
             (_gsc-args36805_
              (foldr1 cons _gsc-args36803_ (gxc#gsc-debug-options)))
             (_g37499_
              (gxc#verbose '"invoke gsc " (cons 'gsc _gsc-args36805_)))
             (_proc36808_
              (open-process
               (cons 'path:
                     (cons '"gsc"
                           (cons 'arguments:
                                 (cons _gsc-args36805_
                                       (cons 'stdout-redirection:
                                             (cons '#f '()))))))))
             (_status36810_ (process-status _proc36808_)))
        (if (zero? _status36810_)
            '#!void
            (gxc#raise-compile-error
             '"Compilation error; gsc exit with nonzero status"
             _path36796_
             _status36810_)))))
  (define gxc#compile-output-file
    (lambda (_ctx36768_ _n36769_ _ext36770_)
      (letrec ((_module-relative-path36772_
                (lambda (_ctx36794_)
                  (path-strip-directory
                   (gxc#module-id->path-string
                    (##structure-ref
                     _ctx36794_
                     '1
                     gx#expander-context::t
                     '#f)))))
               (_module-source-directory36773_
                (lambda (_ctx36790_)
                  (path-directory
                   (let ((_mpath36792_
                          (##structure-ref
                           _ctx36790_
                           '7
                           gx#module-context::t
                           '#f)))
                     (if (string? _mpath36792_)
                         _mpath36792_
                         (last _mpath36792_))))))
               (_section-string36774_
                (lambda (_n36788_)
                  (if (number? _n36788_)
                      (number->string _n36788_)
                      (if (symbol? _n36788_)
                          (symbol->string _n36788_)
                          (if (string? _n36788_)
                              _n36788_
                              (gxc#raise-compile-error
                               '"Unexpected section"
                               _n36788_))))))
               (_file-name36775_
                (lambda (_path36786_)
                  (if _n36769_
                      (string-append
                       _path36786_
                       '"__"
                       (_section-string36774_ _n36769_)
                       _ext36770_)
                      (string-append _path36786_ _ext36770_))))
               (_file-path36776_
                (lambda ()
                  (let ((_$e36781_ (gxc#current-compile-output-dir)))
                    (if _$e36781_
                        ((lambda (_outdir36784_)
                           (path-expand
                            (_file-name36775_
                             (gxc#module-id->path-string
                              (##structure-ref
                               _ctx36768_
                               '1
                               gx#expander-context::t
                               '#f)))
                            _outdir36784_))
                         _$e36781_)
                        (path-expand
                         (_file-name36775_
                          (_module-relative-path36772_ _ctx36768_))
                         (_module-source-directory36773_ _ctx36768_)))))))
        (let ((_path36778_ (_file-path36776_)))
          (begin
            (create-directory* (path-directory _path36778_))
            _path36778_)))))
  (define gxc#compile-static-output-file
    (lambda (_ctx36751_)
      (letrec ((_file-name36753_
                (lambda (_id36766_)
                  (string-append (gxc#static-module-name _id36766_) '".scm")))
               (_file-path36754_
                (lambda ()
                  (let* ((_file36759_
                          (_file-name36753_
                           (##structure-ref
                            _ctx36751_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_$e36761_ (gxc#current-compile-output-dir)))
                    (if _$e36761_
                        ((lambda (_outdir36764_)
                           (path-expand
                            _file36759_
                            (path-expand '"static" _outdir36764_)))
                         _$e36761_)
                        (path-expand _file36759_ '"static"))))))
        (let ((_path36756_ (_file-path36754_)))
          (begin
            (create-directory* (path-directory _path36756_))
            _path36756_)))))
  (define gxc#compile-exe-output-file
    (lambda (_ctx36738_ _opts36739_)
      (let ((_$e36741_ (pgetq 'output-file: _opts36739_)))
        (if _$e36741_
            (values _$e36741_)
            (let* ((_mod-str36744_
                    (symbol->string
                     (##structure-ref
                      _ctx36738_
                      '1
                      gx#expander-context::t
                      '#f)))
                   (_$e36746_ (string-rindex _mod-str36744_ '#\/)))
              (if _$e36746_
                  ((lambda (_ix36749_)
                     (substring
                      _mod-str36744_
                      (fx+ _ix36749_ '1)
                      (string-length _mod-str36744_)))
                   _$e36746_)
                  _mod-str36744_))))))
  (define gxc#static-module-name
    (lambda (_idstr36731_)
      (if (string? _idstr36731_)
          (let* ((_str36733_ (gxc#module-id->path-string _idstr36731_))
                 (_strs36735_ (string-split _str36733_ '#\/)))
            (string-join _strs36735_ '"__"))
          (if (symbol? _idstr36731_)
              (gxc#static-module-name (symbol->string _idstr36731_))
              (error '"Bad module id" _idstr36731_))))))
