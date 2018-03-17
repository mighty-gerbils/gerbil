(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#compile-timestamp
    (lambda () (inexact->exact (floor (time->seconds (current-time))))))
  (begin
    (define gxc#compile-file__%
      (lambda (_srcpath36747_ _opts36748_)
        (begin
          (if (string? _srcpath36747_)
              '#!void
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath36747_))
          (let ((_outdir36750_ (pgetq 'output-dir: _opts36748_))
                (_invoke-gsc?36751_ (pgetq 'invoke-gsc: _opts36748_))
                (_gsc-options36752_ (pgetq 'gsc-options: _opts36748_))
                (_keep-scm?36753_ (pgetq 'keep-scm: _opts36748_))
                (_verbosity36754_ (pgetq 'verbose: _opts36748_))
                (_optimize36755_ (pgetq 'optimize: _opts36748_))
                (_debug36756_ (pgetq 'debug: _opts36748_))
                (_gen-ssxi36757_ (pgetq 'generate-ssxi: _opts36748_))
                (_static36758_ (pgetq 'static: _opts36748_)))
            (begin
              (if _outdir36750_ (create-directory* _outdir36750_) '#!void)
              (if _optimize36755_ (gxc#optimizer-info-init!) '#!void)
              (call-with-parameters
               (lambda ()
                 (begin
                   (gxc#verbose '"compile " _srcpath36747_)
                   (gxc#compile-top-module
                    (gx#import-module__0 _srcpath36747_))))
               gxc#current-compile-output-dir
               _outdir36750_
               gxc#current-compile-invoke-gsc
               _invoke-gsc?36751_
               gxc#current-compile-gsc-options
               _gsc-options36752_
               gxc#current-compile-keep-scm
               _keep-scm?36753_
               gxc#current-compile-verbose
               _verbosity36754_
               gxc#current-compile-optimize
               _optimize36755_
               gxc#current-compile-debug
               _debug36756_
               gxc#current-compile-generate-ssxi
               _gen-ssxi36757_
               gxc#current-compile-static
               _static36758_
               gxc#current-compile-timestamp
               (gxc#compile-timestamp)))))))
    (begin
      (define gxc#compile-file__0
        (lambda (_srcpath36764_)
          (let ((_opts36766_ '()))
            (gxc#compile-file__% _srcpath36764_ _opts36766_))))
      (define gxc#compile-file
        (lambda _g36779_
          (let ((_g36778_ (length _g36779_)))
            (cond ((##fx= _g36778_ 1) (apply gxc#compile-file__0 _g36779_))
                  ((##fx= _g36778_ 2) (apply gxc#compile-file__% _g36779_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-file
                    _g36779_))))))))
  (begin
    (define gxc#compile-exe-stub__%
      (lambda (_srcpath36733_ _opts36734_)
        (gxc#do-compile-exe
         _srcpath36733_
         _opts36734_
         gxc#compile-exe-stub-module)))
    (begin
      (define gxc#compile-exe-stub__0
        (lambda (_srcpath36739_)
          (let ((_opts36741_ '()))
            (gxc#compile-exe-stub__% _srcpath36739_ _opts36741_))))
      (define gxc#compile-exe-stub
        (lambda _g36781_
          (let ((_g36780_ (length _g36781_)))
            (cond ((##fx= _g36780_ 1) (apply gxc#compile-exe-stub__0 _g36781_))
                  ((##fx= _g36780_ 2) (apply gxc#compile-exe-stub__% _g36781_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-exe-stub
                    _g36781_))))))))
  (begin
    (define gxc#compile-static-exe__%
      (lambda (_srcpath36719_ _opts36720_)
        (gxc#do-compile-exe
         _srcpath36719_
         _opts36720_
         gxc#compile-exe-static-module)))
    (begin
      (define gxc#compile-static-exe__0
        (lambda (_srcpath36725_)
          (let ((_opts36727_ '()))
            (gxc#compile-static-exe__% _srcpath36725_ _opts36727_))))
      (define gxc#compile-static-exe
        (lambda _g36783_
          (let ((_g36782_ (length _g36783_)))
            (cond ((##fx= _g36782_ 1)
                   (apply gxc#compile-static-exe__0 _g36783_))
                  ((##fx= _g36782_ 2)
                   (apply gxc#compile-static-exe__% _g36783_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-static-exe
                    _g36783_))))))))
  (define gxc#do-compile-exe
    (lambda (_srcpath36707_ _opts36708_ _compile-e36709_)
      (begin
        (if (string? _srcpath36707_)
            '#!void
            (gxc#raise-compile-error
             '"Invalid module source path"
             _srcpath36707_))
        (let ((_outdir36711_ (pgetq 'output-dir: _opts36708_))
              (_invoke-gsc?36712_ (pgetq 'invoke-gsc: _opts36708_))
              (_gsc-options36713_ (pgetq 'gsc-options: _opts36708_))
              (_keep-scm?36714_ (pgetq 'keep-scm: _opts36708_))
              (_verbosity36715_ (pgetq 'verbose: _opts36708_)))
          (begin
            (if _outdir36711_ (create-directory* _outdir36711_) '#!void)
            (call-with-parameters
             (lambda ()
               (begin
                 (gxc#verbose '"compile exe " _srcpath36707_)
                 (_compile-e36709_
                  (gx#import-module__0 _srcpath36707_)
                  _opts36708_)))
             gxc#current-compile-output-dir
             _outdir36711_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?36712_
             gxc#current-compile-gsc-options
             _gsc-options36713_
             gxc#current-compile-keep-scm
             _keep-scm?36714_
             gxc#current-compile-verbose
             _verbosity36715_
             gxc#current-compile-timestamp
             (gxc#compile-timestamp)))))))
  (define gxc#compile-exe-stub-module
    (lambda (_ctx36673_ _opts36674_)
      (letrec ((_generate-stub36676_
                (lambda (_gx-init-stub36698_)
                  (let* ((_mod-str36700_
                          (gxc#module-id->path-string
                           (##structure-ref
                            _ctx36673_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_mod-rt36702_ (string-append _mod-str36700_ '"__rt"))
                         (_mod-main36704_
                          (gxc#find-runtime-symbol _ctx36673_ 'main)))
                    (begin
                      (write '(##namespace ("")))
                      (newline)
                      (write (cons 'include (cons _gx-init-stub36698_ '())))
                      (newline)
                      (write (cons '_gx#start!
                                   (cons _mod-rt36702_
                                         (cons (cons 'quote
                                                     (cons _mod-main36704_
                                                           '()))
                                               '()))))
                      (newline)))))
               (_compile-stub36677_
                (lambda (_output-scm36684_ _output-bin36685_)
                  (let* ((_init-stub36687_
                          (path-expand
                           '"lib/gx-init-exe.scm"
                           (getenv '"GERBIL_HOME")))
                         (_gsc-args36689_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin36685_
                                            (cons _output-scm36684_ '()))))))
                    (begin
                      (with-output-to-file
                       _output-scm36684_
                       (lambda () (_generate-stub36676_ _init-stub36687_)))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (gxc#verbose
                             '"invoke gsc "
                             (cons 'gsc _gsc-args36689_))
                            (let* ((_proc36693_
                                    (open-process
                                     (cons 'path:
                                           (cons '"gsc"
                                                 (cons 'arguments:
                                                       (cons _gsc-args36689_
                                                             (cons 'stdout-redirection:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_status36695_
                                    (process-status _proc36693_)))
                              (if (zero? _status36695_)
                                  '#!void
                                  (gxc#raise-compile-error
                                   '"Compilation error; gsc exit with nonzero status"
                                   _output-scm36684_
                                   _output-bin36685_
                                   _status36695_))))
                          '#!void))))))
        (let* ((_output-bin36679_
                (gxc#compile-exe-output-file _ctx36673_ _opts36674_))
               (_output-scm36681_ (string-append _output-bin36679_ '".scm")))
          (begin
            (_compile-stub36677_ _output-scm36681_ _output-bin36679_)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm36681_)))))))
  (define gxc#compile-exe-static-module
    (lambda (_ctx36534_ _opts36535_)
      (letrec ((_reset-declare36537_
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
               (_user-declare36538_
                (lambda ()
                  (let* ((_gsc-opts36616_ (pgetq 'gsc-options: _opts36535_))
                         (_gsc-prelude36618_
                          (if _gsc-opts36616_
                              (member '"-prelude" _gsc-opts36616_)
                              '#f))
                         (_gsc-prelude36620_
                          (if _gsc-prelude36618_
                              (read (open-input-string
                                     (cadr _gsc-prelude36618_)))
                              '#f)))
                    (let _lift36623_ ((_expr36625_ _gsc-prelude36620_))
                      (let* ((_expr3662636638_ _expr36625_)
                             (_else3662936646_ (lambda () '#f)))
                        (let ((_K3663436666_ (lambda () _expr36625_))
                              (_K3663136652_
                               (lambda (_exprs36650_)
                                 (ormap1 _lift36623_ _exprs36650_))))
                          (if (##pair? _expr3662636638_)
                              (let ((_hd3663536669_ (##car _expr3662636638_)))
                                (if (##eq? _hd3663536669_ 'declare)
                                    (let () (_K3663436666_))
                                    (let ((_tl3663336657_
                                           (##cdr _expr3662636638_)))
                                      (if (##eq? _hd3663536669_ 'begin)
                                          (let ((_exprs36660_ _tl3663336657_))
                                            (_K3663136652_ _exprs36660_))
                                          (_else3662936646_)))))
                              (_else3662936646_))))))))
               (_generate-stub36539_
                (lambda (_deps36607_)
                  (let ((_mod-main36609_
                         (gxc#find-runtime-symbol _ctx36534_ 'main))
                        (_reset-decl36610_ (_reset-declare36537_))
                        (_user-decl36611_ (_user-declare36538_)))
                    (begin
                      (write '(##namespace ("")))
                      (newline)
                      (write '(declare (optimize-dead-definitions)))
                      (newline)
                      (for-each
                       (lambda (_dep36613_)
                         (begin
                           (write (cons 'include (cons _dep36613_ '())))
                           (newline)
                           (write '(##namespace ("")))
                           (write _reset-decl36610_)
                           (if _user-decl36611_
                               (write _user-decl36611_)
                               '#!void)
                           (newline)))
                       _deps36607_)
                      (write (cons 'apply
                                   (cons _mod-main36609_
                                         (cons (cons 'cdr
                                                     (cons (cons 'command-line
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                      (newline)))))
               (_static-include36540_
                (lambda (_gsc-opts36590_ _home36591_)
                  (letrec* ((_static-dir36593_
                             (path-expand '"lib/static" _home36591_))
                            (_user-static-dir36594_
                             (path-expand
                              '"lib/static"
                              (getenv '"GERBIL_PATH" '"~/.gerbil")))
                            (_cppflags36595_
                             (string-append
                              '"-I "
                              _static-dir36593_
                              '" -I "
                              _user-static-dir36594_)))
                    (let ((_$e36597_ (member '"-cc-options" _gsc-opts36590_)))
                      (if _$e36597_
                          ((lambda (_rest36600_)
                             (let* ((_cell36602_ (cdr _rest36600_))
                                    (_opt36604_ (car _cell36602_)))
                               (begin
                                 (set-car!
                                  _cell36602_
                                  (string-append
                                   _opt36604_
                                   '" "
                                   _cppflags36595_))
                                 _gsc-opts36590_)))
                           _$e36597_)
                          (cons '"-cc-options"
                                (cons _cppflags36595_ _gsc-opts36590_)))))))
               (_compile-stub36541_
                (lambda (_output-scm36548_ _output-bin36549_)
                  (let* ((_gerbil-home36551_ (getenv '"GERBIL_HOME"))
                         (_gx-gambc036553_
                          (path-expand
                           '"lib/static/gx-gambc0.scm"
                           _gerbil-home36551_))
                         (_gx-gambc-init36555_
                          (path-expand
                           '"lib/gx-init-static-exe.scm"
                           _gerbil-home36551_))
                         (_gx-gambc-macros36557_
                          (path-expand
                           '"lib/static/gx-gambc#.scm"
                           _gerbil-home36551_))
                         (_include-gx-gambc-macros36559_
                          (string-append
                           '"(include \""
                           _gx-gambc-macros36557_
                           '"\")"))
                         (_bin-scm36561_
                          (gxc#find-static-module-file _ctx36534_))
                         (_deps36563_
                          (gxc#find-runtime-module-deps _ctx36534_))
                         (_deps36565_
                          (map gxc#find-static-module-file _deps36563_))
                         (_deps36570_
                          (filter (lambda (_$obj36567_)
                                    (not (gxc#file-empty? _$obj36567_)))
                                  _deps36565_))
                         (_gsc-opts36575_
                          (let ((_$e36572_ (pgetq 'gsc-options: _opts36535_)))
                            (if _$e36572_ _$e36572_ '())))
                         (_gsc-opts36577_
                          (_static-include36540_
                           _gsc-opts36575_
                           _gerbil-home36551_))
                         (_gsc-gx-macros36579_
                          (if (gerbil-runtime-smp?)
                              (cons '"-e"
                                    (cons '"(define-cond-expand-feature|enable-smp|)"
                                          (cons '"-e"
                                                (cons _include-gx-gambc-macros36559_
                                                      '()))))
                              (cons '"-e"
                                    (cons _include-gx-gambc-macros36559_
                                          '()))))
                         (_gsc-args36581_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin36549_
                                            (foldr1 cons
                                                    (foldr1 cons
                                                            (foldr1 cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _output-scm36548_ '())
                            _gsc-gx-macros36579_)
                    _gsc-opts36577_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gxc#gsc-debug-options)))))))
                    (begin
                      (with-output-to-file
                       _output-scm36548_
                       (lambda ()
                         (_generate-stub36539_
                          (cons _gx-gambc036553_
                                (cons _gx-gambc-init36555_
                                      (foldr1 cons
                                              (cons _bin-scm36561_ '())
                                              _deps36570_))))))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (gxc#verbose
                             '"invoke gsc "
                             (cons 'gsc _gsc-args36581_))
                            (let* ((_proc36585_
                                    (open-process
                                     (cons 'path:
                                           (cons '"gsc"
                                                 (cons 'arguments:
                                                       (cons _gsc-args36581_
                                                             (cons 'stdout-redirection:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_status36587_
                                    (process-status _proc36585_)))
                              (if (zero? _status36587_)
                                  '#!void
                                  (gxc#raise-compile-error
                                   '"Compilation error; gsc exit with nonzero status"
                                   _output-scm36548_
                                   _output-bin36549_
                                   _status36587_))))
                          '#!void))))))
        (let* ((_output-bin36543_
                (gxc#compile-exe-output-file _ctx36534_ _opts36535_))
               (_output-scm36545_ (string-append _output-bin36543_ '".scm")))
          (begin
            (_compile-stub36541_ _output-scm36545_ _output-bin36543_)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm36545_)))))))
  (define gxc#find-export-binding
    (lambda (_ctx36484_ _id36485_)
      (let ((_$e36531_
             (find (lambda (_e3648636488_)
                     (let* ((_g3649036500_ _e3648636488_)
                            (_else3649236508_ (lambda () '#f))
                            (_K3649436512_ (lambda () '#t)))
                       (if (##structure-direct-instance-of?
                            _g3649036500_
                            'gx#module-export::t)
                           (let* ((_e3649536515_
                                   (##vector-ref _g3649036500_ '1))
                                  (_e3649636518_
                                   (##vector-ref _g3649036500_ '2))
                                  (_e3649736521_
                                   (##vector-ref _g3649036500_ '3)))
                             (if (##eq? _e3649736521_ '0)
                                 (let ((_e3649836524_
                                        (##vector-ref _g3649036500_ '4)))
                                   (if ((lambda (_g3652636528_)
                                          (eq? _g3652636528_ _id36485_))
                                        _e3649836524_)
                                       (_K3649436512_)
                                       (_else3649236508_)))
                                 (_else3649236508_)))
                           (_else3649236508_))))
                   (##structure-ref _ctx36484_ '9 gx#module-context::t '#f))))
        (if _$e36531_ (gx#core-resolve-module-export _$e36531_) '#f))))
  (define gxc#find-runtime-symbol
    (lambda (_ctx36476_ _id36477_)
      (let ((_$e36479_ (gxc#find-export-binding _ctx36476_ _id36477_)))
        (if _$e36479_
            ((lambda (_bind36482_)
               (begin
                 (if (##structure-instance-of?
                      _bind36482_
                      'gx#runtime-binding::t)
                     '#!void
                     (gxc#raise-compile-error
                      '"export is not a runtime binding"
                      _id36477_))
                 (##structure-ref _bind36482_ '1 gx#binding::t '#f)))
             _$e36479_)
            (gxc#raise-compile-error
             '"module does not export symbol"
             (##structure-ref _ctx36476_ '1 gx#expander-context::t '#f)
             _id36477_)))))
  (define gxc#find-runtime-module-deps
    (lambda (_ctx36363_)
      (letrec* ((_ht36365_ (make-hash-table-eq))
                (_import-set-template36366_
                 (lambda (_in36428_ _phi36429_)
                   (let ((_iphi36431_
                          (fx+ _phi36429_
                               (##direct-structure-ref
                                _in36428_
                                '2
                                gx#import-set::t
                                '#f)))
                         (_imports36432_
                          (##structure-ref
                           (##direct-structure-ref
                            _in36428_
                            '1
                            gx#import-set::t
                            '#f)
                           '8
                           gx#module-context::t
                           '#f)))
                     (let _lp36434_ ((_rest36436_ _imports36432_)
                                     (_r36437_ '()))
                       (let* ((_rest3643836446_ _rest36436_)
                              (_else3644036454_ (lambda () _r36437_))
                              (_K3644236464_
                               (lambda (_rest36457_ _in36458_)
                                 (if (##structure-instance-of?
                                      _in36458_
                                      'gx#module-context::t)
                                     (if (fxzero? _iphi36431_)
                                         (_lp36434_
                                          _rest36457_
                                          (cons _in36458_ _r36437_))
                                         (_lp36434_ _rest36457_ _r36437_))
                                     (if (##structure-direct-instance-of?
                                          _in36458_
                                          'gx#module-import::t)
                                         (let ((_iphi36460_
                                                (fx+ _phi36429_
                                                     (##direct-structure-ref
                                                      _in36458_
                                                      '3
                                                      gx#module-import::t
                                                      '#f))))
                                           (if (fxzero? _iphi36460_)
                                               (_lp36434_
                                                _rest36457_
                                                (cons (##direct-structure-ref
                                                       (##direct-structure-ref
                                                        _in36458_
                                                        '1
                                                        gx#module-import::t
                                                        '#f)
                                                       '1
                                                       gx#module-export::t
                                                       '#f)
                                                      _r36437_))
                                               (_lp36434_
                                                _rest36457_
                                                _r36437_)))
                                         (if (##structure-direct-instance-of?
                                              _in36458_
                                              'gx#import-set::t)
                                             (let ((_xphi36462_
                                                    (fx+ _iphi36431_
                                                         (##direct-structure-ref
                                                          _in36458_
                                                          '2
                                                          gx#import-set::t
                                                          '#f))))
                                               (if (fxzero? _xphi36462_)
                                                   (_lp36434_
                                                    _rest36457_
                                                    (cons (##direct-structure-ref
                                                           _in36458_
                                                           '1
                                                           gx#import-set::t
                                                           '#f)
                                                          _r36437_))
                                                   (if (fxpositive?
                                                        _xphi36462_)
                                                       (_lp36434_
                                                        _rest36457_
                                                        (foldl1 cons
                                                                _r36437_
                                                                (_import-set-template36366_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in36458_
                         _iphi36431_)))
               (_lp36434_ _rest36457_ _r36437_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_lp36434_
                                              _rest36457_
                                              _r36437_)))))))
                         (if (##pair? _rest3643836446_)
                             (let ((_hd3644336467_ (##car _rest3643836446_))
                                   (_tl3644436469_ (##cdr _rest3643836446_)))
                               (let* ((_in36472_ _hd3644336467_)
                                      (_rest36474_ _tl3644436469_))
                                 (_K3644236464_ _rest36474_ _in36472_)))
                             (_else3644036454_)))))))
                (_find-deps36367_
                 (lambda (_rest36374_ _deps36375_)
                   (let* ((_rest3637636384_ _rest36374_)
                          (_else3637836392_ (lambda () _deps36375_))
                          (_K3638036416_
                           (lambda (_rest36395_ _hd36396_)
                             (if (##structure-instance-of?
                                  _hd36396_
                                  'gx#module-context::t)
                                 (let ((_id36398_
                                        (##structure-ref
                                         _hd36396_
                                         '1
                                         gx#expander-context::t
                                         '#f))
                                       (_imports36399_
                                        (##structure-ref
                                         _hd36396_
                                         '8
                                         gx#module-context::t
                                         '#f)))
                                   (if (table-ref _ht36365_ _id36398_ '#f)
                                       (_find-deps36367_
                                        _rest36395_
                                        _deps36375_)
                                       (let ((_$e36401_
                                              (gx#core-context-prelude__%
                                               _hd36396_)))
                                         (if _$e36401_
                                             ((lambda (_pre36404_)
                                                (let ((_xdeps36406_
                                                       (_find-deps36367_
                                                        (cons _pre36404_
                                                              _imports36399_)
                                                        _deps36375_)))
                                                  (begin
                                                    (table-set!
                                                     _ht36365_
                                                     _id36398_
                                                     _hd36396_)
                                                    (_find-deps36367_
                                                     _rest36395_
                                                     (cons _hd36396_
                                                           _xdeps36406_)))))
                                              _$e36401_)
                                             (let ((_xdeps36408_
                                                    (_find-deps36367_
                                                     _imports36399_
                                                     _deps36375_)))
                                               (begin
                                                 (table-set!
                                                  _ht36365_
                                                  _id36398_
                                                  _hd36396_)
                                                 (_find-deps36367_
                                                  _rest36395_
                                                  (cons _hd36396_
                                                        _xdeps36408_))))))))
                                 (if (##structure-instance-of?
                                      _hd36396_
                                      'gx#prelude-context::t)
                                     (let ((_id36410_
                                            (##structure-ref
                                             _hd36396_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (if (table-ref _ht36365_ _id36410_ '#f)
                                           (_find-deps36367_
                                            _rest36395_
                                            _deps36375_)
                                           (let ((_xdeps36412_
                                                  (_find-deps36367_
                                                   (##structure-ref
                                                    _hd36396_
                                                    '7
                                                    gx#prelude-context::t
                                                    '#f)
                                                   _deps36375_)))
                                             (if (table-ref
                                                  _ht36365_
                                                  _id36410_
                                                  '#f)
                                                 (_find-deps36367_
                                                  _rest36395_
                                                  _xdeps36412_)
                                                 (begin
                                                   (table-set!
                                                    _ht36365_
                                                    _id36410_
                                                    _hd36396_)
                                                   (_find-deps36367_
                                                    _rest36395_
                                                    (cons _hd36396_
                                                          _xdeps36412_)))))))
                                     (if (##structure-direct-instance-of?
                                          _hd36396_
                                          'gx#module-import::t)
                                         (if (fxzero? (##direct-structure-ref
                                                       _hd36396_
                                                       '3
                                                       gx#module-import::t
                                                       '#f))
                                             (_find-deps36367_
                                              (cons (##direct-structure-ref
                                                     _hd36396_
                                                     '1
                                                     gx#module-import::t
                                                     '#f)
                                                    _rest36395_)
                                              _deps36375_)
                                             (_find-deps36367_
                                              _rest36395_
                                              _deps36375_))
                                         (if (##structure-direct-instance-of?
                                              _hd36396_
                                              'gx#module-export::t)
                                             (_find-deps36367_
                                              (cons (##direct-structure-ref
                                                     _hd36396_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)
                                                    _rest36395_)
                                              _deps36375_)
                                             (if (##structure-direct-instance-of?
                                                  _hd36396_
                                                  'gx#import-set::t)
                                                 (if (fxzero? (##direct-structure-ref
                                                               _hd36396_
                                                               '2
                                                               gx#import-set::t
                                                               '#f))
                                                     (_find-deps36367_
                                                      (cons (##direct-structure-ref
                                                             _hd36396_
                                                             '1
                                                             gx#import-set::t
                                                             '#f)
                                                            _rest36395_)
                                                      _deps36375_)
                                                     (if (fxpositive?
                                                          (##direct-structure-ref
                                                           _hd36396_
                                                           '2
                                                           gx#import-set::t
                                                           '#f))
                                                         (let ((_xdeps36414_
                                                                (_import-set-template36366_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd36396_
                         '0)))
                   (_find-deps36367_
                    (foldl1 cons _rest36395_ _xdeps36414_)
                    _deps36375_))
                 (_find-deps36367_ _rest36395_ _deps36375_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (error '"Unexpected module import"
                                                        _hd36396_)))))))))
                     (if (##pair? _rest3637636384_)
                         (let ((_hd3638136419_ (##car _rest3637636384_))
                               (_tl3638236421_ (##cdr _rest3637636384_)))
                           (let* ((_hd36424_ _hd3638136419_)
                                  (_rest36426_ _tl3638236421_))
                             (_K3638036416_ _rest36426_ _hd36424_)))
                         (_else3637836392_))))))
        (reverse (filter gx#expander-context-id
                         (_find-deps36367_
                          (let ((_$e36369_
                                 (gx#core-context-prelude__% _ctx36363_)))
                            (if _$e36369_
                                ((lambda (_pre36372_)
                                   (cons _pre36372_
                                         (##structure-ref
                                          _ctx36363_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _$e36369_)
                                (##structure-ref
                                 _ctx36363_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))))
  (define gxc#find-static-module-file
    (lambda (_ctx36302_)
      (let* ((_scm36304_
              (string-append
               (gxc#static-module-name
                (##structure-ref _ctx36302_ '1 gx#expander-context::t '#f))
               '".scm"))
             (_dirs36306_ (gx#current-expander-module-library-path))
             (_dirs36315_
              (let ((_$e36308_ (gxc#current-compile-output-dir)))
                (if _$e36308_
                    ((lambda (_g3631036312_) (cons _g3631036312_ _dirs36306_))
                     _$e36308_)
                    _dirs36306_)))
             (_dirs36321_
              (map (lambda (_g3631636318_)
                     (path-expand '"static" _g3631636318_))
                   _dirs36315_)))
        (let _lp36324_ ((_rest36326_ _dirs36321_))
          (let* ((_rest3632736335_ _rest36326_)
                 (_else3632936343_
                  (lambda ()
                    (gxc#raise-compile-error
                     '"cannot find static module"
                     (##structure-ref _ctx36302_ '1 gx#expander-context::t '#f)
                     _scm36304_)))
                 (_K3633136351_
                  (lambda (_rest36346_ _dir36347_)
                    (let ((_path36349_ (path-expand _scm36304_ _dir36347_)))
                      (if (file-exists? _path36349_)
                          _path36349_
                          (_lp36324_ _rest36346_))))))
            (if (##pair? _rest3632736335_)
                (let ((_hd3633236354_ (##car _rest3632736335_))
                      (_tl3633336356_ (##cdr _rest3632736335_)))
                  (let* ((_dir36359_ _hd3633236354_)
                         (_rest36361_ _tl3633336356_))
                    (_K3633136351_ _rest36361_ _dir36359_)))
                (_else3632936343_)))))))
  (define gxc#file-empty?
    (lambda (_path36300_)
      (zero? (file-info-size (file-info _path36300_ '#t)))))
  (define gxc#compile-top-module
    (lambda (_ctx36297_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#verbose
            '"compile "
            (##structure-ref _ctx36297_ '1 gx#expander-context::t '#f))
           (if (gxc#current-compile-optimize)
               (gxc#optimize! _ctx36297_)
               '#!void)
           (gxc#collect-bindings _ctx36297_)
           (gxc#compile-runtime-code _ctx36297_)
           (gxc#compile-meta-code _ctx36297_)
           (if (if (gxc#current-compile-optimize)
                   (gxc#current-compile-generate-ssxi)
                   '#f)
               (gxc#compile-ssxi-code _ctx36297_)
               '#!void)))
       gx#current-expander-context
       _ctx36297_
       gx#current-expander-phi
       '0
       gx#current-expander-marks
       '()
       gxc#current-compile-symbol-table
       (let ((__obj36776 (make-object gxc#symbol-table::t '2)))
         (begin (gxc#symbol-table:::init! __obj36776) __obj36776))
       gxc#current-compile-runtime-sections
       (make-hash-table-eq)
       gxc#current-compile-runtime-names
       (make-table))))
  (define gxc#collect-bindings
    (lambda (_ctx36295_)
      (gxc#apply-collect-bindings
       (##structure-ref _ctx36295_ '11 gx#module-context::t '#f))))
  (define gxc#compile-runtime-code
    (lambda (_ctx36249_)
      (letrec ((_compile136251_
                (lambda (_ctx36284_)
                  (let* ((_code36286_
                          (##structure-ref
                           _ctx36284_
                           '11
                           gx#module-context::t
                           '#f))
                         (_rt36290_
                          (if (gxc#apply-find-runtime-code _code36286_)
                              (let ((_idstr36288_
                                     (gxc#module-id->path-string
                                      (##structure-ref
                                       _ctx36284_
                                       '1
                                       gx#expander-context::t
                                       '#f))))
                                (string-append _idstr36288_ '"__0"))
                              '#f)))
                    (begin
                      (if _rt36290_
                          (begin
                            (table-set!
                             (gxc#current-compile-runtime-sections)
                             _ctx36284_
                             _rt36290_)
                            (_generate-runtime-code36252_
                             _ctx36284_
                             _code36286_))
                          (if (gxc#current-compile-static)
                              (let ((_path36293_
                                     (gxc#compile-static-output-file
                                      _ctx36284_)))
                                (with-output-to-file
                                 (cons 'path:
                                       (cons _path36293_
                                             (cons 'permissions:
                                                   (cons '420 '()))))
                                 void))
                              '#!void))
                      (_generate-loader-code36253_
                       _ctx36284_
                       _code36286_
                       _rt36290_)))))
               (_generate-runtime-code36252_
                (lambda (_ctx36268_ _code36269_)
                  (let* ((_lifts36271_ (box '()))
                         (_runtime-code36274_
                          (call-with-parameters
                           (lambda () (gxc#apply-generate-runtime _code36269_))
                           gx#current-expander-context
                           _ctx36268_
                           gx#current-expander-phi
                           '0
                           gxc#current-compile-lift
                           _lifts36271_
                           gxc#current-compile-marks
                           (make-hash-table-eq)))
                         (_runtime-code36276_
                          (if (null? (unbox _lifts36271_))
                              _runtime-code36274_
                              (cons 'begin
                                    (foldr1 cons
                                            (cons _runtime-code36274_ '())
                                            (reverse (unbox _lifts36271_))))))
                         (_scm036278_
                          (gxc#compile-output-file _ctx36268_ '0 '".scm")))
                    (if (gxc#current-compile-static)
                        (let ((_scms36281_
                               (gxc#compile-static-output-file _ctx36268_)))
                          (begin
                            (call-with-parameters
                             (lambda ()
                               (gxc#compile-scm-file
                                _scm036278_
                                _runtime-code36276_))
                             gxc#current-compile-keep-scm
                             '#t)
                            (if (file-exists? _scms36281_)
                                (delete-file _scms36281_)
                                '#!void)
                            (gxc#verbose
                             '"copy static module "
                             _scm036278_
                             '" => "
                             _scms36281_)
                            (copy-file _scm036278_ _scms36281_)
                            (if (gxc#current-compile-keep-scm)
                                '#!void
                                (delete-file _scm036278_))))
                        (gxc#compile-scm-file
                         _scm036278_
                         _runtime-code36276_)))))
               (_generate-loader-code36253_
                (lambda (_ctx36257_ _code36258_ _rt36259_)
                  (let* ((_loader-code36262_
                          (call-with-parameters
                           (lambda () (gxc#apply-generate-loader _code36258_))
                           gx#current-expander-context
                           _ctx36257_))
                         (_loader-code36264_
                          (if _rt36259_
                              (cons 'begin
                                    (cons _loader-code36262_
                                          (cons (cons 'load-module
                                                      (cons _rt36259_ '()))
                                                '())))
                              _loader-code36262_)))
                    (call-with-parameters
                     (lambda ()
                       (gxc#compile-scm-file
                        (gxc#compile-output-file _ctx36257_ 'rt '".scm")
                        _loader-code36264_))
                     gxc#current-compile-gsc-options
                     '#f)))))
        (let ((_all-modules36255_
               (cons _ctx36249_ (gxc#lift-nested-modules _ctx36249_))))
          (for-each _compile136251_ _all-modules36255_)))))
  (define gxc#compile-meta-code
    (lambda (_ctx36151_)
      (letrec ((_compile-ssi36153_
                (lambda (_code36219_)
                  (let* ((_path36221_
                          (gxc#compile-output-file _ctx36151_ '#f '".ssi"))
                         (_prelude36232_
                          (let* ((_super36223_
                                  (##structure-ref
                                   _ctx36151_
                                   '3
                                   gx#phi-context::t
                                   '#f))
                                 (_$e36225_
                                  (##structure-ref
                                   _super36223_
                                   '1
                                   gx#expander-context::t
                                   '#f)))
                            (if _$e36225_
                                ((lambda (_g3622736229_)
                                   (make-symbol '":" _g3622736229_))
                                 _$e36225_)
                                ':<root>)))
                         (_ns36234_
                          (##structure-ref
                           _ctx36151_
                           '6
                           gx#module-context::t
                           '#f))
                         (_idstr36236_
                          (symbol->string
                           (##structure-ref
                            _ctx36151_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_pkg36243_
                          (let ((_$e36238_ (string-rindex _idstr36236_ '#\/)))
                            (if _$e36238_
                                ((lambda (_x36241_)
                                   (string->symbol
                                    (substring _idstr36236_ '0 _x36241_)))
                                 _$e36238_)
                                '#f)))
                         (_rt36245_
                          (table-ref
                           (gxc#current-compile-runtime-sections)
                           _ctx36151_
                           '#f)))
                    (begin
                      (gxc#verbose '"compile " _path36221_)
                      (with-output-to-file
                       (cons 'path:
                             (cons _path36221_
                                   (cons 'permissions: (cons '420 '()))))
                       (lambda ()
                         (begin
                           (displayln '"prelude:" '" " _prelude36232_)
                           (if _pkg36243_
                               (displayln '"package:" '" " _pkg36243_)
                               '#!void)
                           (displayln '"namespace:" '" " _ns36234_)
                           (newline)
                           (pretty-print _code36219_)
                           (if _rt36245_
                               (pretty-print
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons '_gx#load-module '()))
                                            (cons (cons '%#quote
                                                        (cons _rt36245_ '()))
                                                  '()))))
                               '#!void))))))))
               (_compile-phi36154_
                (lambda (_part36159_)
                  (let* ((_part3616036173_ _part36159_)
                         (_E3616236177_
                          (lambda ()
                            (error '"No clause matching" _part3616036173_)))
                         (_K3616336188_
                          (lambda (_code36180_
                                   _n36181_
                                   _phi36182_
                                   _phi-ctx36183_)
                            (let ((_code36186_
                                   (call-with-parameters
                                    (lambda ()
                                      (gxc#generate-runtime-phi _code36180_))
                                    gx#current-expander-context
                                    _phi-ctx36183_
                                    gx#current-expander-phi
                                    _phi36182_)))
                              (gxc#compile-scm-file
                               (gxc#compile-output-file
                                _ctx36151_
                                _n36181_
                                '".scm")
                               _code36186_)))))
                    (if (##pair? _part3616036173_)
                        (let ((_hd3616436191_ (##car _part3616036173_))
                              (_tl3616536193_ (##cdr _part3616036173_)))
                          (let ((_phi-ctx36196_ _hd3616436191_))
                            (if (##pair? _tl3616536193_)
                                (let ((_hd3616636198_ (##car _tl3616536193_))
                                      (_tl3616736200_ (##cdr _tl3616536193_)))
                                  (let ((_phi36203_ _hd3616636198_))
                                    (if (##pair? _tl3616736200_)
                                        (let ((_hd3616836205_
                                               (##car _tl3616736200_))
                                              (_tl3616936207_
                                               (##cdr _tl3616736200_)))
                                          (let ((_n36210_ _hd3616836205_))
                                            (if (##pair? _tl3616936207_)
                                                (let ((_hd3617036212_
                                                       (##car _tl3616936207_))
                                                      (_tl3617136214_
                                                       (##cdr _tl3616936207_)))
                                                  (let ((_code36217_
                                                         _hd3617036212_))
                                                    (if (##null? _tl3617136214_)
                                                        (_K3616336188_
                                                         _code36217_
                                                         _n36210_
                                                         _phi36203_
                                                         _phi-ctx36196_)
                                                        (_E3616236177_))))
                                                (_E3616236177_))))
                                        (_E3616236177_))))
                                (_E3616236177_))))
                        (_E3616236177_))))))
        (let ((_g36784_ (gxc#generate-meta-code _ctx36151_)))
          (begin
            (let ((_g36785_
                   (if (##values? _g36784_) (##vector-length _g36784_) 1)))
              (if (not (##fx= _g36785_ 2))
                  (error "Context expects 2 values" _g36785_)))
            (let ((_ssi-code36156_ (##vector-ref _g36784_ 0))
                  (_phi-code36157_ (##vector-ref _g36784_ 1)))
              (begin
                (_compile-ssi36153_ _ssi-code36156_)
                (for-each _compile-phi36154_ _phi-code36157_))))))))
  (define gxc#compile-ssxi-code
    (lambda (_ctx36134_)
      (let* ((_path36136_ (gxc#compile-output-file _ctx36134_ '#f '".ssxi.ss"))
             (_code36138_
              (gxc#apply-generate-ssxi
               (##structure-ref _ctx36134_ '11 gx#module-context::t '#f)))
             (_idstr36140_
              (symbol->string
               (##structure-ref _ctx36134_ '1 gx#expander-context::t '#f)))
             (_pkg36147_
              (let ((_$e36142_ (string-rindex _idstr36140_ '#\/)))
                (if _$e36142_
                    ((lambda (_x36145_)
                       (string->symbol (substring _idstr36140_ '0 _x36145_)))
                     _$e36142_)
                    '#f))))
        (begin
          (gxc#verbose '"compile " _path36136_)
          (with-output-to-file
           (cons 'path:
                 (cons _path36136_ (cons 'permissions: (cons '420 '()))))
           (lambda ()
             (begin
               (displayln '"prelude: :gerbil/compiler/ssxi")
               (if _pkg36147_ (displayln '"package: " _pkg36147_) '#!void)
               (newline)
               (pretty-print _code36138_))))))))
  (define gxc#generate-meta-code
    (lambda (_ctx36127_)
      (let* ((_state36129_
              (let ((__obj36777 (make-object gxc#meta-state::t '4)))
                (begin
                  (gxc#meta-state:::init! __obj36777 _ctx36127_)
                  __obj36777)))
             (_ssi-code36131_
              (gxc#apply-generate-meta
               (##structure-ref _ctx36127_ '11 gx#module-context::t '#f)
               _state36129_)))
        (values _ssi-code36131_ (gxc#meta-state-end! _state36129_)))))
  (define gxc#generate-runtime-phi
    (lambda (_stx36120_)
      (let ((_lifts36122_ (box '())))
        (call-with-parameters
         (lambda ()
           (let ((_code36125_ (gxc#apply-generate-runtime-phi _stx36120_)))
             (if (null? (unbox _lifts36122_))
                 _code36125_
                 (cons 'begin
                       (foldr1 cons
                               (cons _code36125_ '())
                               (reverse (unbox _lifts36122_)))))))
         gxc#current-compile-lift
         _lifts36122_
         gxc#current-compile-marks
         (make-hash-table-eq)))))
  (define gxc#lift-nested-modules
    (lambda (_ctx36116_)
      (let ((_modules36118_ (box '())))
        (begin
          (gxc#apply-lift-modules
           (##structure-ref _ctx36116_ '11 gx#module-context::t '#f)
           _modules36118_)
          (reverse (unbox _modules36118_))))))
  (define gxc#compile-scm-file
    (lambda (_path36112_ _code36113_)
      (begin
        (gxc#verbose '"compile " _path36112_)
        (with-output-to-file
         (cons 'path: (cons _path36112_ (cons 'permissions: (cons '420 '()))))
         (lambda ()
           (begin
             (pretty-print
              '(declare (block) (standard-bindings) (extended-bindings)))
             (pretty-print _code36113_))))
        (if (gxc#current-compile-invoke-gsc)
            (gxc#gsc-compile-file _path36112_)
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path36112_)))))
  (define gxc#gsc-debug-options
    (lambda ()
      (let ((_$e36101_ (gxc#current-compile-debug)))
        (if _$e36101_
            ((lambda (_debug36104_)
               (let ((_$e36106_ _debug36104_))
                 (if (eq? 'env _$e36106_)
                     (cons '"-debug-environments" '())
                     (if (eq? 'src _$e36106_)
                         (cons '"-debug-environments"
                               (cons '"-debug-source" '()))
                         (if (let ((_$e36109_ (eq? 'all _$e36106_)))
                               (if _$e36109_ _$e36109_ (eq? '#t _$e36106_)))
                             (cons '"-debug" '())
                             (gxc#raise-compile-error
                              '"unknown debug option"
                              _debug36104_))))))
             _$e36101_)
            '()))))
  (define gxc#gsc-compile-file
    (lambda (_path36083_)
      (let* ((_gsc-args36090_
              (let ((_$e36085_ (gxc#current-compile-gsc-options)))
                (if _$e36085_
                    ((lambda (_opts36088_)
                       (foldr1 cons (cons _path36083_ '()) _opts36088_))
                     _$e36085_)
                    (cons _path36083_ '()))))
             (_gsc-args36092_
              (foldr1 cons _gsc-args36090_ (gxc#gsc-debug-options)))
             (_g36786_
              (gxc#verbose '"invoke gsc " (cons 'gsc _gsc-args36092_)))
             (_proc36095_
              (open-process
               (cons 'path:
                     (cons '"gsc"
                           (cons 'arguments:
                                 (cons _gsc-args36092_
                                       (cons 'stdout-redirection:
                                             (cons '#f '()))))))))
             (_status36097_ (process-status _proc36095_)))
        (if (zero? _status36097_)
            '#!void
            (gxc#raise-compile-error
             '"Compilation error; gsc exit with nonzero status"
             _path36083_
             _status36097_)))))
  (define gxc#compile-output-file
    (lambda (_ctx36055_ _n36056_ _ext36057_)
      (letrec ((_module-relative-path36059_
                (lambda (_ctx36081_)
                  (path-strip-directory
                   (gxc#module-id->path-string
                    (##structure-ref
                     _ctx36081_
                     '1
                     gx#expander-context::t
                     '#f)))))
               (_module-source-directory36060_
                (lambda (_ctx36077_)
                  (path-directory
                   (let ((_mpath36079_
                          (##structure-ref
                           _ctx36077_
                           '7
                           gx#module-context::t
                           '#f)))
                     (if (string? _mpath36079_)
                         _mpath36079_
                         (last _mpath36079_))))))
               (_section-string36061_
                (lambda (_n36075_)
                  (if (number? _n36075_)
                      (number->string _n36075_)
                      (if (symbol? _n36075_)
                          (symbol->string _n36075_)
                          (if (string? _n36075_)
                              _n36075_
                              (gxc#raise-compile-error
                               '"Unexpected section"
                               _n36075_))))))
               (_file-name36062_
                (lambda (_path36073_)
                  (if _n36056_
                      (string-append
                       _path36073_
                       '"__"
                       (_section-string36061_ _n36056_)
                       _ext36057_)
                      (string-append _path36073_ _ext36057_))))
               (_file-path36063_
                (lambda ()
                  (let ((_$e36068_ (gxc#current-compile-output-dir)))
                    (if _$e36068_
                        ((lambda (_outdir36071_)
                           (path-expand
                            (_file-name36062_
                             (gxc#module-id->path-string
                              (##structure-ref
                               _ctx36055_
                               '1
                               gx#expander-context::t
                               '#f)))
                            _outdir36071_))
                         _$e36068_)
                        (path-expand
                         (_file-name36062_
                          (_module-relative-path36059_ _ctx36055_))
                         (_module-source-directory36060_ _ctx36055_)))))))
        (let ((_path36065_ (_file-path36063_)))
          (begin
            (create-directory* (path-directory _path36065_))
            _path36065_)))))
  (define gxc#compile-static-output-file
    (lambda (_ctx36038_)
      (letrec ((_file-name36040_
                (lambda (_id36053_)
                  (string-append (gxc#static-module-name _id36053_) '".scm")))
               (_file-path36041_
                (lambda ()
                  (let* ((_file36046_
                          (_file-name36040_
                           (##structure-ref
                            _ctx36038_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_$e36048_ (gxc#current-compile-output-dir)))
                    (if _$e36048_
                        ((lambda (_outdir36051_)
                           (path-expand
                            _file36046_
                            (path-expand '"static" _outdir36051_)))
                         _$e36048_)
                        (path-expand _file36046_ '"static"))))))
        (let ((_path36043_ (_file-path36041_)))
          (begin
            (create-directory* (path-directory _path36043_))
            _path36043_)))))
  (define gxc#compile-exe-output-file
    (lambda (_ctx36025_ _opts36026_)
      (let ((_$e36028_ (pgetq 'output-file: _opts36026_)))
        (if _$e36028_
            (values _$e36028_)
            (let* ((_mod-str36031_
                    (symbol->string
                     (##structure-ref
                      _ctx36025_
                      '1
                      gx#expander-context::t
                      '#f)))
                   (_$e36033_ (string-rindex _mod-str36031_ '#\/)))
              (if _$e36033_
                  ((lambda (_ix36036_)
                     (substring
                      _mod-str36031_
                      (fx+ _ix36036_ '1)
                      (string-length _mod-str36031_)))
                   _$e36033_)
                  _mod-str36031_))))))
  (define gxc#static-module-name
    (lambda (_idstr36018_)
      (if (string? _idstr36018_)
          (let* ((_str36020_ (gxc#module-id->path-string _idstr36018_))
                 (_strs36022_ (string-split _str36020_ '#\/)))
            (string-join _strs36022_ '"__"))
          (if (symbol? _idstr36018_)
              (gxc#static-module-name (symbol->string _idstr36018_))
              (error '"Bad module id" _idstr36018_))))))
