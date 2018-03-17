(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#compile-timestamp
    (lambda () (inexact->exact (floor (time->seconds (current-time))))))
  (begin
    (define gxc#compile-file__%
      (lambda (_srcpath35809_ _opts35810_)
        (begin
          (if (string? _srcpath35809_)
              '#!void
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath35809_))
          (let ((_outdir35812_ (pgetq 'output-dir: _opts35810_))
                (_invoke-gsc?35813_ (pgetq 'invoke-gsc: _opts35810_))
                (_gsc-options35814_ (pgetq 'gsc-options: _opts35810_))
                (_keep-scm?35815_ (pgetq 'keep-scm: _opts35810_))
                (_verbosity35816_ (pgetq 'verbose: _opts35810_))
                (_optimize35817_ (pgetq 'optimize: _opts35810_))
                (_debug35818_ (pgetq 'debug: _opts35810_))
                (_gen-ssxi35819_ (pgetq 'generate-ssxi: _opts35810_))
                (_static35820_ (pgetq 'static: _opts35810_)))
            (begin
              (if _outdir35812_ (create-directory* _outdir35812_) '#!void)
              (if _optimize35817_ (gxc#optimizer-info-init!) '#!void)
              (call-with-parameters
               (lambda ()
                 (begin
                   (gxc#verbose '"compile " _srcpath35809_)
                   (gxc#compile-top-module
                    (gx#import-module__0 _srcpath35809_))))
               gxc#current-compile-output-dir
               _outdir35812_
               gxc#current-compile-invoke-gsc
               _invoke-gsc?35813_
               gxc#current-compile-gsc-options
               _gsc-options35814_
               gxc#current-compile-keep-scm
               _keep-scm?35815_
               gxc#current-compile-verbose
               _verbosity35816_
               gxc#current-compile-optimize
               _optimize35817_
               gxc#current-compile-debug
               _debug35818_
               gxc#current-compile-generate-ssxi
               _gen-ssxi35819_
               gxc#current-compile-static
               _static35820_
               gxc#current-compile-timestamp
               (gxc#compile-timestamp)))))))
    (begin
      (define gxc#compile-file__0
        (lambda (_srcpath35826_)
          (let ((_opts35828_ '()))
            (gxc#compile-file__% _srcpath35826_ _opts35828_))))
      (define gxc#compile-file
        (lambda _g35841_
          (let ((_g35840_ (length _g35841_)))
            (cond ((##fx= _g35840_ 1) (apply gxc#compile-file__0 _g35841_))
                  ((##fx= _g35840_ 2) (apply gxc#compile-file__% _g35841_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-file
                    _g35841_))))))))
  (begin
    (define gxc#compile-exe-stub__%
      (lambda (_srcpath35795_ _opts35796_)
        (gxc#do-compile-exe
         _srcpath35795_
         _opts35796_
         gxc#compile-exe-stub-module)))
    (begin
      (define gxc#compile-exe-stub__0
        (lambda (_srcpath35801_)
          (let ((_opts35803_ '()))
            (gxc#compile-exe-stub__% _srcpath35801_ _opts35803_))))
      (define gxc#compile-exe-stub
        (lambda _g35843_
          (let ((_g35842_ (length _g35843_)))
            (cond ((##fx= _g35842_ 1) (apply gxc#compile-exe-stub__0 _g35843_))
                  ((##fx= _g35842_ 2) (apply gxc#compile-exe-stub__% _g35843_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-exe-stub
                    _g35843_))))))))
  (begin
    (define gxc#compile-static-exe__%
      (lambda (_srcpath35781_ _opts35782_)
        (gxc#do-compile-exe
         _srcpath35781_
         _opts35782_
         gxc#compile-exe-static-module)))
    (begin
      (define gxc#compile-static-exe__0
        (lambda (_srcpath35787_)
          (let ((_opts35789_ '()))
            (gxc#compile-static-exe__% _srcpath35787_ _opts35789_))))
      (define gxc#compile-static-exe
        (lambda _g35845_
          (let ((_g35844_ (length _g35845_)))
            (cond ((##fx= _g35844_ 1)
                   (apply gxc#compile-static-exe__0 _g35845_))
                  ((##fx= _g35844_ 2)
                   (apply gxc#compile-static-exe__% _g35845_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-static-exe
                    _g35845_))))))))
  (define gxc#do-compile-exe
    (lambda (_srcpath35769_ _opts35770_ _compile-e35771_)
      (begin
        (if (string? _srcpath35769_)
            '#!void
            (gxc#raise-compile-error
             '"Invalid module source path"
             _srcpath35769_))
        (let ((_outdir35773_ (pgetq 'output-dir: _opts35770_))
              (_invoke-gsc?35774_ (pgetq 'invoke-gsc: _opts35770_))
              (_gsc-options35775_ (pgetq 'gsc-options: _opts35770_))
              (_keep-scm?35776_ (pgetq 'keep-scm: _opts35770_))
              (_verbosity35777_ (pgetq 'verbose: _opts35770_)))
          (begin
            (if _outdir35773_ (create-directory* _outdir35773_) '#!void)
            (call-with-parameters
             (lambda ()
               (begin
                 (gxc#verbose '"compile exe " _srcpath35769_)
                 (_compile-e35771_
                  (gx#import-module__0 _srcpath35769_)
                  _opts35770_)))
             gxc#current-compile-output-dir
             _outdir35773_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?35774_
             gxc#current-compile-gsc-options
             _gsc-options35775_
             gxc#current-compile-keep-scm
             _keep-scm?35776_
             gxc#current-compile-verbose
             _verbosity35777_
             gxc#current-compile-timestamp
             (gxc#compile-timestamp)))))))
  (define gxc#compile-exe-stub-module
    (lambda (_ctx35735_ _opts35736_)
      (letrec ((_generate-stub35738_
                (lambda (_gx-init-stub35760_)
                  (let* ((_mod-str35762_
                          (gxc#module-id->path-string
                           (##structure-ref
                            _ctx35735_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_mod-rt35764_ (string-append _mod-str35762_ '"__rt"))
                         (_mod-main35766_
                          (gxc#find-runtime-symbol _ctx35735_ 'main)))
                    (begin
                      (write '(##namespace ("")))
                      (newline)
                      (write (cons 'include (cons _gx-init-stub35760_ '())))
                      (newline)
                      (write (cons '_gx#start!
                                   (cons _mod-rt35764_
                                         (cons (cons 'quote
                                                     (cons _mod-main35766_
                                                           '()))
                                               '()))))
                      (newline)))))
               (_compile-stub35739_
                (lambda (_output-scm35746_ _output-bin35747_)
                  (let* ((_init-stub35749_
                          (path-expand
                           '"lib/gx-init-exe.scm"
                           (getenv '"GERBIL_HOME")))
                         (_gsc-args35751_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin35747_
                                            (cons _output-scm35746_ '()))))))
                    (begin
                      (with-output-to-file
                       _output-scm35746_
                       (lambda () (_generate-stub35738_ _init-stub35749_)))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (gxc#verbose
                             '"invoke gsc "
                             (cons 'gsc _gsc-args35751_))
                            (let* ((_proc35755_
                                    (open-process
                                     (cons 'path:
                                           (cons '"gsc"
                                                 (cons 'arguments:
                                                       (cons _gsc-args35751_
                                                             (cons 'stdout-redirection:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_status35757_
                                    (process-status _proc35755_)))
                              (if (zero? _status35757_)
                                  '#!void
                                  (gxc#raise-compile-error
                                   '"Compilation error; gsc exit with nonzero status"
                                   _output-scm35746_
                                   _output-bin35747_
                                   _status35757_))))
                          '#!void))))))
        (let* ((_output-bin35741_
                (gxc#compile-exe-output-file _ctx35735_ _opts35736_))
               (_output-scm35743_ (string-append _output-bin35741_ '".scm")))
          (begin
            (_compile-stub35739_ _output-scm35743_ _output-bin35741_)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm35743_)))))))
  (define gxc#compile-exe-static-module
    (lambda (_ctx35596_ _opts35597_)
      (letrec ((_reset-declare35599_
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
               (_user-declare35600_
                (lambda ()
                  (let* ((_gsc-opts35678_ (pgetq 'gsc-options: _opts35597_))
                         (_gsc-prelude35680_
                          (if _gsc-opts35678_
                              (member '"-prelude" _gsc-opts35678_)
                              '#f))
                         (_gsc-prelude35682_
                          (if _gsc-prelude35680_
                              (read (open-input-string
                                     (cadr _gsc-prelude35680_)))
                              '#f)))
                    (let _lift35685_ ((_expr35687_ _gsc-prelude35682_))
                      (let* ((_expr3568835700_ _expr35687_)
                             (_else3569135708_ (lambda () '#f)))
                        (let ((_K3569635728_ (lambda () _expr35687_))
                              (_K3569335714_
                               (lambda (_exprs35712_)
                                 (ormap1 _lift35685_ _exprs35712_))))
                          (if (##pair? _expr3568835700_)
                              (let ((_hd3569735731_ (##car _expr3568835700_)))
                                (if (##eq? _hd3569735731_ 'declare)
                                    (let () (_K3569635728_))
                                    (let ((_tl3569535719_
                                           (##cdr _expr3568835700_)))
                                      (if (##eq? _hd3569735731_ 'begin)
                                          (let ((_exprs35722_ _tl3569535719_))
                                            (_K3569335714_ _exprs35722_))
                                          (_else3569135708_)))))
                              (_else3569135708_))))))))
               (_generate-stub35601_
                (lambda (_deps35669_)
                  (let ((_mod-main35671_
                         (gxc#find-runtime-symbol _ctx35596_ 'main))
                        (_reset-decl35672_ (_reset-declare35599_))
                        (_user-decl35673_ (_user-declare35600_)))
                    (begin
                      (write '(##namespace ("")))
                      (newline)
                      (write '(declare (optimize-dead-definitions)))
                      (newline)
                      (for-each
                       (lambda (_dep35675_)
                         (begin
                           (write (cons 'include (cons _dep35675_ '())))
                           (newline)
                           (write '(##namespace ("")))
                           (write _reset-decl35672_)
                           (if _user-decl35673_
                               (write _user-decl35673_)
                               '#!void)
                           (newline)))
                       _deps35669_)
                      (write (cons 'apply
                                   (cons _mod-main35671_
                                         (cons (cons 'cdr
                                                     (cons (cons 'command-line
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                      (newline)))))
               (_static-include35602_
                (lambda (_gsc-opts35652_ _home35653_)
                  (letrec* ((_static-dir35655_
                             (path-expand '"lib/static" _home35653_))
                            (_user-static-dir35656_
                             (path-expand
                              '"lib/static"
                              (getenv '"GERBIL_PATH" '"~/.gerbil")))
                            (_cppflags35657_
                             (string-append
                              '"-I "
                              _static-dir35655_
                              '" -I "
                              _user-static-dir35656_)))
                    (let ((_$e35659_ (member '"-cc-options" _gsc-opts35652_)))
                      (if _$e35659_
                          ((lambda (_rest35662_)
                             (let* ((_cell35664_ (cdr _rest35662_))
                                    (_opt35666_ (car _cell35664_)))
                               (begin
                                 (set-car!
                                  _cell35664_
                                  (string-append
                                   _opt35666_
                                   '" "
                                   _cppflags35657_))
                                 _gsc-opts35652_)))
                           _$e35659_)
                          (cons '"-cc-options"
                                (cons _cppflags35657_ _gsc-opts35652_)))))))
               (_compile-stub35603_
                (lambda (_output-scm35610_ _output-bin35611_)
                  (let* ((_gerbil-home35613_ (getenv '"GERBIL_HOME"))
                         (_gx-gambc035615_
                          (path-expand
                           '"lib/static/gx-gambc0.scm"
                           _gerbil-home35613_))
                         (_gx-gambc-init35617_
                          (path-expand
                           '"lib/gx-init-static-exe.scm"
                           _gerbil-home35613_))
                         (_gx-gambc-macros35619_
                          (path-expand
                           '"lib/static/gx-gambc#.scm"
                           _gerbil-home35613_))
                         (_include-gx-gambc-macros35621_
                          (string-append
                           '"(include \""
                           _gx-gambc-macros35619_
                           '"\")"))
                         (_bin-scm35623_
                          (gxc#find-static-module-file _ctx35596_))
                         (_deps35625_
                          (gxc#find-runtime-module-deps _ctx35596_))
                         (_deps35627_
                          (map gxc#find-static-module-file _deps35625_))
                         (_deps35632_
                          (filter (lambda (_$obj35629_)
                                    (not (gxc#file-empty? _$obj35629_)))
                                  _deps35627_))
                         (_gsc-opts35637_
                          (let ((_$e35634_ (pgetq 'gsc-options: _opts35597_)))
                            (if _$e35634_ _$e35634_ '())))
                         (_gsc-opts35639_
                          (_static-include35602_
                           _gsc-opts35637_
                           _gerbil-home35613_))
                         (_gsc-gx-macros35641_
                          (if (gerbil-runtime-smp?)
                              (cons '"-e"
                                    (cons '"(define-cond-expand-feature|enable-smp|)"
                                          (cons '"-e"
                                                (cons _include-gx-gambc-macros35621_
                                                      '()))))
                              (cons '"-e"
                                    (cons _include-gx-gambc-macros35621_
                                          '()))))
                         (_gsc-args35643_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin35611_
                                            (foldr1 cons
                                                    (foldr1 cons
                                                            (foldr1 cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _output-scm35610_ '())
                            _gsc-gx-macros35641_)
                    _gsc-opts35639_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gxc#gsc-debug-options)))))))
                    (begin
                      (with-output-to-file
                       _output-scm35610_
                       (lambda ()
                         (_generate-stub35601_
                          (cons _gx-gambc035615_
                                (cons _gx-gambc-init35617_
                                      (foldr1 cons
                                              (cons _bin-scm35623_ '())
                                              _deps35632_))))))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (gxc#verbose
                             '"invoke gsc "
                             (cons 'gsc _gsc-args35643_))
                            (let* ((_proc35647_
                                    (open-process
                                     (cons 'path:
                                           (cons '"gsc"
                                                 (cons 'arguments:
                                                       (cons _gsc-args35643_
                                                             (cons 'stdout-redirection:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_status35649_
                                    (process-status _proc35647_)))
                              (if (zero? _status35649_)
                                  '#!void
                                  (gxc#raise-compile-error
                                   '"Compilation error; gsc exit with nonzero status"
                                   _output-scm35610_
                                   _output-bin35611_
                                   _status35649_))))
                          '#!void))))))
        (let* ((_output-bin35605_
                (gxc#compile-exe-output-file _ctx35596_ _opts35597_))
               (_output-scm35607_ (string-append _output-bin35605_ '".scm")))
          (begin
            (_compile-stub35603_ _output-scm35607_ _output-bin35605_)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm35607_)))))))
  (define gxc#find-export-binding
    (lambda (_ctx35546_ _id35547_)
      (let ((_$e35593_
             (find (lambda (_e3554835550_)
                     (let* ((_g3555235562_ _e3554835550_)
                            (_else3555435570_ (lambda () '#f))
                            (_K3555635574_ (lambda () '#t)))
                       (if (##structure-direct-instance-of?
                            _g3555235562_
                            'gx#module-export::t)
                           (let* ((_e3555735577_
                                   (##vector-ref _g3555235562_ '1))
                                  (_e3555835580_
                                   (##vector-ref _g3555235562_ '2))
                                  (_e3555935583_
                                   (##vector-ref _g3555235562_ '3)))
                             (if (##eq? _e3555935583_ '0)
                                 (let ((_e3556035586_
                                        (##vector-ref _g3555235562_ '4)))
                                   (if ((lambda (_g3558835590_)
                                          (eq? _g3558835590_ _id35547_))
                                        _e3556035586_)
                                       (_K3555635574_)
                                       (_else3555435570_)))
                                 (_else3555435570_)))
                           (_else3555435570_))))
                   (##structure-ref _ctx35546_ '9 gx#module-context::t '#f))))
        (if _$e35593_ (gx#core-resolve-module-export _$e35593_) '#f))))
  (define gxc#find-runtime-symbol
    (lambda (_ctx35538_ _id35539_)
      (let ((_$e35541_ (gxc#find-export-binding _ctx35538_ _id35539_)))
        (if _$e35541_
            ((lambda (_bind35544_)
               (begin
                 (if (##structure-instance-of?
                      _bind35544_
                      'gx#runtime-binding::t)
                     '#!void
                     (gxc#raise-compile-error
                      '"export is not a runtime binding"
                      _id35539_))
                 (##structure-ref _bind35544_ '1 gx#binding::t '#f)))
             _$e35541_)
            (gxc#raise-compile-error
             '"module does not export symbol"
             (##structure-ref _ctx35538_ '1 gx#expander-context::t '#f)
             _id35539_)))))
  (define gxc#find-runtime-module-deps
    (lambda (_ctx35425_)
      (letrec* ((_ht35427_ (make-hash-table-eq))
                (_import-set-template35428_
                 (lambda (_in35490_ _phi35491_)
                   (let ((_iphi35493_
                          (fx+ _phi35491_
                               (##direct-structure-ref
                                _in35490_
                                '2
                                gx#import-set::t
                                '#f)))
                         (_imports35494_
                          (##structure-ref
                           (##direct-structure-ref
                            _in35490_
                            '1
                            gx#import-set::t
                            '#f)
                           '8
                           gx#module-context::t
                           '#f)))
                     (let _lp35496_ ((_rest35498_ _imports35494_)
                                     (_r35499_ '()))
                       (let* ((_rest3550035508_ _rest35498_)
                              (_else3550235516_ (lambda () _r35499_))
                              (_K3550435526_
                               (lambda (_rest35519_ _in35520_)
                                 (if (##structure-instance-of?
                                      _in35520_
                                      'gx#module-context::t)
                                     (if (fxzero? _iphi35493_)
                                         (_lp35496_
                                          _rest35519_
                                          (cons _in35520_ _r35499_))
                                         (_lp35496_ _rest35519_ _r35499_))
                                     (if (##structure-direct-instance-of?
                                          _in35520_
                                          'gx#module-import::t)
                                         (let ((_iphi35522_
                                                (fx+ _phi35491_
                                                     (##direct-structure-ref
                                                      _in35520_
                                                      '3
                                                      gx#module-import::t
                                                      '#f))))
                                           (if (fxzero? _iphi35522_)
                                               (_lp35496_
                                                _rest35519_
                                                (cons (##direct-structure-ref
                                                       (##direct-structure-ref
                                                        _in35520_
                                                        '1
                                                        gx#module-import::t
                                                        '#f)
                                                       '1
                                                       gx#module-export::t
                                                       '#f)
                                                      _r35499_))
                                               (_lp35496_
                                                _rest35519_
                                                _r35499_)))
                                         (if (##structure-direct-instance-of?
                                              _in35520_
                                              'gx#import-set::t)
                                             (let ((_xphi35524_
                                                    (fx+ _iphi35493_
                                                         (##direct-structure-ref
                                                          _in35520_
                                                          '2
                                                          gx#import-set::t
                                                          '#f))))
                                               (if (fxzero? _xphi35524_)
                                                   (_lp35496_
                                                    _rest35519_
                                                    (cons (##direct-structure-ref
                                                           _in35520_
                                                           '1
                                                           gx#import-set::t
                                                           '#f)
                                                          _r35499_))
                                                   (if (fxpositive?
                                                        _xphi35524_)
                                                       (_lp35496_
                                                        _rest35519_
                                                        (foldl1 cons
                                                                _r35499_
                                                                (_import-set-template35428_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in35520_
                         _iphi35493_)))
               (_lp35496_ _rest35519_ _r35499_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_lp35496_
                                              _rest35519_
                                              _r35499_)))))))
                         (if (##pair? _rest3550035508_)
                             (let ((_hd3550535529_ (##car _rest3550035508_))
                                   (_tl3550635531_ (##cdr _rest3550035508_)))
                               (let* ((_in35534_ _hd3550535529_)
                                      (_rest35536_ _tl3550635531_))
                                 (_K3550435526_ _rest35536_ _in35534_)))
                             (_else3550235516_)))))))
                (_find-deps35429_
                 (lambda (_rest35436_ _deps35437_)
                   (let* ((_rest3543835446_ _rest35436_)
                          (_else3544035454_ (lambda () _deps35437_))
                          (_K3544235478_
                           (lambda (_rest35457_ _hd35458_)
                             (if (##structure-instance-of?
                                  _hd35458_
                                  'gx#module-context::t)
                                 (let ((_id35460_
                                        (##structure-ref
                                         _hd35458_
                                         '1
                                         gx#expander-context::t
                                         '#f))
                                       (_imports35461_
                                        (##structure-ref
                                         _hd35458_
                                         '8
                                         gx#module-context::t
                                         '#f)))
                                   (if (table-ref _ht35427_ _id35460_ '#f)
                                       (_find-deps35429_
                                        _rest35457_
                                        _deps35437_)
                                       (let ((_$e35463_
                                              (gx#core-context-prelude__%
                                               _hd35458_)))
                                         (if _$e35463_
                                             ((lambda (_pre35466_)
                                                (let ((_xdeps35468_
                                                       (_find-deps35429_
                                                        (cons _pre35466_
                                                              _imports35461_)
                                                        _deps35437_)))
                                                  (begin
                                                    (table-set!
                                                     _ht35427_
                                                     _id35460_
                                                     _hd35458_)
                                                    (_find-deps35429_
                                                     _rest35457_
                                                     (cons _hd35458_
                                                           _xdeps35468_)))))
                                              _$e35463_)
                                             (let ((_xdeps35470_
                                                    (_find-deps35429_
                                                     _imports35461_
                                                     _deps35437_)))
                                               (begin
                                                 (table-set!
                                                  _ht35427_
                                                  _id35460_
                                                  _hd35458_)
                                                 (_find-deps35429_
                                                  _rest35457_
                                                  (cons _hd35458_
                                                        _xdeps35470_))))))))
                                 (if (##structure-instance-of?
                                      _hd35458_
                                      'gx#prelude-context::t)
                                     (let ((_id35472_
                                            (##structure-ref
                                             _hd35458_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (if (table-ref _ht35427_ _id35472_ '#f)
                                           (_find-deps35429_
                                            _rest35457_
                                            _deps35437_)
                                           (let ((_xdeps35474_
                                                  (_find-deps35429_
                                                   (##structure-ref
                                                    _hd35458_
                                                    '7
                                                    gx#prelude-context::t
                                                    '#f)
                                                   _deps35437_)))
                                             (if (table-ref
                                                  _ht35427_
                                                  _id35472_
                                                  '#f)
                                                 (_find-deps35429_
                                                  _rest35457_
                                                  _xdeps35474_)
                                                 (begin
                                                   (table-set!
                                                    _ht35427_
                                                    _id35472_
                                                    _hd35458_)
                                                   (_find-deps35429_
                                                    _rest35457_
                                                    (cons _hd35458_
                                                          _xdeps35474_)))))))
                                     (if (##structure-direct-instance-of?
                                          _hd35458_
                                          'gx#module-import::t)
                                         (if (fxzero? (##direct-structure-ref
                                                       _hd35458_
                                                       '3
                                                       gx#module-import::t
                                                       '#f))
                                             (_find-deps35429_
                                              (cons (##direct-structure-ref
                                                     _hd35458_
                                                     '1
                                                     gx#module-import::t
                                                     '#f)
                                                    _rest35457_)
                                              _deps35437_)
                                             (_find-deps35429_
                                              _rest35457_
                                              _deps35437_))
                                         (if (##structure-direct-instance-of?
                                              _hd35458_
                                              'gx#module-export::t)
                                             (_find-deps35429_
                                              (cons (##direct-structure-ref
                                                     _hd35458_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)
                                                    _rest35457_)
                                              _deps35437_)
                                             (if (##structure-direct-instance-of?
                                                  _hd35458_
                                                  'gx#import-set::t)
                                                 (if (fxzero? (##direct-structure-ref
                                                               _hd35458_
                                                               '2
                                                               gx#import-set::t
                                                               '#f))
                                                     (_find-deps35429_
                                                      (cons (##direct-structure-ref
                                                             _hd35458_
                                                             '1
                                                             gx#import-set::t
                                                             '#f)
                                                            _rest35457_)
                                                      _deps35437_)
                                                     (if (fxpositive?
                                                          (##direct-structure-ref
                                                           _hd35458_
                                                           '2
                                                           gx#import-set::t
                                                           '#f))
                                                         (let ((_xdeps35476_
                                                                (_import-set-template35428_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd35458_
                         '0)))
                   (_find-deps35429_
                    (foldl1 cons _rest35457_ _xdeps35476_)
                    _deps35437_))
                 (_find-deps35429_ _rest35457_ _deps35437_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (error '"Unexpected module import"
                                                        _hd35458_)))))))))
                     (if (##pair? _rest3543835446_)
                         (let ((_hd3544335481_ (##car _rest3543835446_))
                               (_tl3544435483_ (##cdr _rest3543835446_)))
                           (let* ((_hd35486_ _hd3544335481_)
                                  (_rest35488_ _tl3544435483_))
                             (_K3544235478_ _rest35488_ _hd35486_)))
                         (_else3544035454_))))))
        (reverse (filter gx#expander-context-id
                         (_find-deps35429_
                          (let ((_$e35431_
                                 (gx#core-context-prelude__% _ctx35425_)))
                            (if _$e35431_
                                ((lambda (_pre35434_)
                                   (cons _pre35434_
                                         (##structure-ref
                                          _ctx35425_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _$e35431_)
                                (##structure-ref
                                 _ctx35425_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))))
  (define gxc#find-static-module-file
    (lambda (_ctx35364_)
      (let* ((_scm35366_
              (string-append
               (gxc#static-module-name
                (##structure-ref _ctx35364_ '1 gx#expander-context::t '#f))
               '".scm"))
             (_dirs35368_ (gx#current-expander-module-library-path))
             (_dirs35377_
              (let ((_$e35370_ (gxc#current-compile-output-dir)))
                (if _$e35370_
                    ((lambda (_g3537235374_) (cons _g3537235374_ _dirs35368_))
                     _$e35370_)
                    _dirs35368_)))
             (_dirs35383_
              (map (lambda (_g3537835380_)
                     (path-expand '"static" _g3537835380_))
                   _dirs35377_)))
        (let _lp35386_ ((_rest35388_ _dirs35383_))
          (let* ((_rest3538935397_ _rest35388_)
                 (_else3539135405_
                  (lambda ()
                    (gxc#raise-compile-error
                     '"cannot find static module"
                     (##structure-ref _ctx35364_ '1 gx#expander-context::t '#f)
                     _scm35366_)))
                 (_K3539335413_
                  (lambda (_rest35408_ _dir35409_)
                    (let ((_path35411_ (path-expand _scm35366_ _dir35409_)))
                      (if (file-exists? _path35411_)
                          _path35411_
                          (_lp35386_ _rest35408_))))))
            (if (##pair? _rest3538935397_)
                (let ((_hd3539435416_ (##car _rest3538935397_))
                      (_tl3539535418_ (##cdr _rest3538935397_)))
                  (let* ((_dir35421_ _hd3539435416_)
                         (_rest35423_ _tl3539535418_))
                    (_K3539335413_ _rest35423_ _dir35421_)))
                (_else3539135405_)))))))
  (define gxc#file-empty?
    (lambda (_path35362_)
      (zero? (file-info-size (file-info _path35362_ '#t)))))
  (define gxc#compile-top-module
    (lambda (_ctx35359_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#verbose
            '"compile "
            (##structure-ref _ctx35359_ '1 gx#expander-context::t '#f))
           (if (gxc#current-compile-optimize)
               (gxc#optimize! _ctx35359_)
               '#!void)
           (gxc#collect-bindings _ctx35359_)
           (gxc#compile-runtime-code _ctx35359_)
           (gxc#compile-meta-code _ctx35359_)
           (if (if (gxc#current-compile-optimize)
                   (gxc#current-compile-generate-ssxi)
                   '#f)
               (gxc#compile-ssxi-code _ctx35359_)
               '#!void)))
       gx#current-expander-context
       _ctx35359_
       gx#current-expander-phi
       '0
       gx#current-expander-marks
       '()
       gxc#current-compile-symbol-table
       (let ((__obj35838 (make-object gxc#symbol-table::t '2)))
         (begin (gxc#symbol-table:::init! __obj35838) __obj35838))
       gxc#current-compile-runtime-sections
       (make-hash-table-eq)
       gxc#current-compile-runtime-names
       (make-table))))
  (define gxc#collect-bindings
    (lambda (_ctx35357_)
      (gxc#apply-collect-bindings
       (##structure-ref _ctx35357_ '11 gx#module-context::t '#f))))
  (define gxc#compile-runtime-code
    (lambda (_ctx35311_)
      (letrec ((_compile135313_
                (lambda (_ctx35346_)
                  (let* ((_code35348_
                          (##structure-ref
                           _ctx35346_
                           '11
                           gx#module-context::t
                           '#f))
                         (_rt35352_
                          (if (gxc#apply-find-runtime-code _code35348_)
                              (let ((_idstr35350_
                                     (gxc#module-id->path-string
                                      (##structure-ref
                                       _ctx35346_
                                       '1
                                       gx#expander-context::t
                                       '#f))))
                                (string-append _idstr35350_ '"__0"))
                              '#f)))
                    (begin
                      (if _rt35352_
                          (begin
                            (table-set!
                             (gxc#current-compile-runtime-sections)
                             _ctx35346_
                             _rt35352_)
                            (_generate-runtime-code35314_
                             _ctx35346_
                             _code35348_))
                          (if (gxc#current-compile-static)
                              (let ((_path35355_
                                     (gxc#compile-static-output-file
                                      _ctx35346_)))
                                (with-output-to-file
                                 (cons 'path:
                                       (cons _path35355_
                                             (cons 'permissions:
                                                   (cons '420 '()))))
                                 void))
                              '#!void))
                      (_generate-loader-code35315_
                       _ctx35346_
                       _code35348_
                       _rt35352_)))))
               (_generate-runtime-code35314_
                (lambda (_ctx35330_ _code35331_)
                  (let* ((_lifts35333_ (box '()))
                         (_runtime-code35336_
                          (call-with-parameters
                           (lambda () (gxc#apply-generate-runtime _code35331_))
                           gx#current-expander-context
                           _ctx35330_
                           gx#current-expander-phi
                           '0
                           gxc#current-compile-lift
                           _lifts35333_
                           gxc#current-compile-marks
                           (make-hash-table-eq)))
                         (_runtime-code35338_
                          (if (null? (unbox _lifts35333_))
                              _runtime-code35336_
                              (cons 'begin
                                    (foldr1 cons
                                            (cons _runtime-code35336_ '())
                                            (reverse (unbox _lifts35333_))))))
                         (_scm035340_
                          (gxc#compile-output-file _ctx35330_ '0 '".scm")))
                    (if (gxc#current-compile-static)
                        (let ((_scms35343_
                               (gxc#compile-static-output-file _ctx35330_)))
                          (begin
                            (call-with-parameters
                             (lambda ()
                               (gxc#compile-scm-file
                                _scm035340_
                                _runtime-code35338_))
                             gxc#current-compile-keep-scm
                             '#t)
                            (if (file-exists? _scms35343_)
                                (delete-file _scms35343_)
                                '#!void)
                            (gxc#verbose
                             '"copy static module "
                             _scm035340_
                             '" => "
                             _scms35343_)
                            (copy-file _scm035340_ _scms35343_)
                            (if (gxc#current-compile-keep-scm)
                                '#!void
                                (delete-file _scm035340_))))
                        (gxc#compile-scm-file
                         _scm035340_
                         _runtime-code35338_)))))
               (_generate-loader-code35315_
                (lambda (_ctx35319_ _code35320_ _rt35321_)
                  (let* ((_loader-code35324_
                          (call-with-parameters
                           (lambda () (gxc#apply-generate-loader _code35320_))
                           gx#current-expander-context
                           _ctx35319_))
                         (_loader-code35326_
                          (if _rt35321_
                              (cons 'begin
                                    (cons _loader-code35324_
                                          (cons (cons 'load-module
                                                      (cons _rt35321_ '()))
                                                '())))
                              _loader-code35324_)))
                    (call-with-parameters
                     (lambda ()
                       (gxc#compile-scm-file
                        (gxc#compile-output-file _ctx35319_ 'rt '".scm")
                        _loader-code35326_))
                     gxc#current-compile-gsc-options
                     '#f)))))
        (let ((_all-modules35317_
               (cons _ctx35311_ (gxc#lift-nested-modules _ctx35311_))))
          (for-each _compile135313_ _all-modules35317_)))))
  (define gxc#compile-meta-code
    (lambda (_ctx35213_)
      (letrec ((_compile-ssi35215_
                (lambda (_code35281_)
                  (let* ((_path35283_
                          (gxc#compile-output-file _ctx35213_ '#f '".ssi"))
                         (_prelude35294_
                          (let* ((_super35285_
                                  (##structure-ref
                                   _ctx35213_
                                   '3
                                   gx#phi-context::t
                                   '#f))
                                 (_$e35287_
                                  (##structure-ref
                                   _super35285_
                                   '1
                                   gx#expander-context::t
                                   '#f)))
                            (if _$e35287_
                                ((lambda (_g3528935291_)
                                   (make-symbol '":" _g3528935291_))
                                 _$e35287_)
                                ':<root>)))
                         (_ns35296_
                          (##structure-ref
                           _ctx35213_
                           '6
                           gx#module-context::t
                           '#f))
                         (_idstr35298_
                          (symbol->string
                           (##structure-ref
                            _ctx35213_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_pkg35305_
                          (let ((_$e35300_ (string-rindex _idstr35298_ '#\/)))
                            (if _$e35300_
                                ((lambda (_x35303_)
                                   (string->symbol
                                    (substring _idstr35298_ '0 _x35303_)))
                                 _$e35300_)
                                '#f)))
                         (_rt35307_
                          (table-ref
                           (gxc#current-compile-runtime-sections)
                           _ctx35213_
                           '#f)))
                    (begin
                      (gxc#verbose '"compile " _path35283_)
                      (with-output-to-file
                       (cons 'path:
                             (cons _path35283_
                                   (cons 'permissions: (cons '420 '()))))
                       (lambda ()
                         (begin
                           (displayln '"prelude:" '" " _prelude35294_)
                           (if _pkg35305_
                               (displayln '"package:" '" " _pkg35305_)
                               '#!void)
                           (displayln '"namespace:" '" " _ns35296_)
                           (newline)
                           (pretty-print _code35281_)
                           (if _rt35307_
                               (pretty-print
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons '_gx#load-module '()))
                                            (cons (cons '%#quote
                                                        (cons _rt35307_ '()))
                                                  '()))))
                               '#!void))))))))
               (_compile-phi35216_
                (lambda (_part35221_)
                  (let* ((_part3522235235_ _part35221_)
                         (_E3522435239_
                          (lambda ()
                            (error '"No clause matching" _part3522235235_)))
                         (_K3522535250_
                          (lambda (_code35242_
                                   _n35243_
                                   _phi35244_
                                   _phi-ctx35245_)
                            (let ((_code35248_
                                   (call-with-parameters
                                    (lambda ()
                                      (gxc#generate-runtime-phi _code35242_))
                                    gx#current-expander-context
                                    _phi-ctx35245_
                                    gx#current-expander-phi
                                    _phi35244_)))
                              (gxc#compile-scm-file
                               (gxc#compile-output-file
                                _ctx35213_
                                _n35243_
                                '".scm")
                               _code35248_)))))
                    (if (##pair? _part3522235235_)
                        (let ((_hd3522635253_ (##car _part3522235235_))
                              (_tl3522735255_ (##cdr _part3522235235_)))
                          (let ((_phi-ctx35258_ _hd3522635253_))
                            (if (##pair? _tl3522735255_)
                                (let ((_hd3522835260_ (##car _tl3522735255_))
                                      (_tl3522935262_ (##cdr _tl3522735255_)))
                                  (let ((_phi35265_ _hd3522835260_))
                                    (if (##pair? _tl3522935262_)
                                        (let ((_hd3523035267_
                                               (##car _tl3522935262_))
                                              (_tl3523135269_
                                               (##cdr _tl3522935262_)))
                                          (let ((_n35272_ _hd3523035267_))
                                            (if (##pair? _tl3523135269_)
                                                (let ((_hd3523235274_
                                                       (##car _tl3523135269_))
                                                      (_tl3523335276_
                                                       (##cdr _tl3523135269_)))
                                                  (let ((_code35279_
                                                         _hd3523235274_))
                                                    (if (##null? _tl3523335276_)
                                                        (_K3522535250_
                                                         _code35279_
                                                         _n35272_
                                                         _phi35265_
                                                         _phi-ctx35258_)
                                                        (_E3522435239_))))
                                                (_E3522435239_))))
                                        (_E3522435239_))))
                                (_E3522435239_))))
                        (_E3522435239_))))))
        (let ((_g35846_ (gxc#generate-meta-code _ctx35213_)))
          (begin
            (let ((_g35847_
                   (if (##values? _g35846_) (##vector-length _g35846_) 1)))
              (if (not (##fx= _g35847_ 2))
                  (error "Context expects 2 values" _g35847_)))
            (let ((_ssi-code35218_ (##vector-ref _g35846_ 0))
                  (_phi-code35219_ (##vector-ref _g35846_ 1)))
              (begin
                (_compile-ssi35215_ _ssi-code35218_)
                (for-each _compile-phi35216_ _phi-code35219_))))))))
  (define gxc#compile-ssxi-code
    (lambda (_ctx35196_)
      (let* ((_path35198_ (gxc#compile-output-file _ctx35196_ '#f '".ssxi.ss"))
             (_code35200_
              (gxc#apply-generate-ssxi
               (##structure-ref _ctx35196_ '11 gx#module-context::t '#f)))
             (_idstr35202_
              (symbol->string
               (##structure-ref _ctx35196_ '1 gx#expander-context::t '#f)))
             (_pkg35209_
              (let ((_$e35204_ (string-rindex _idstr35202_ '#\/)))
                (if _$e35204_
                    ((lambda (_x35207_)
                       (string->symbol (substring _idstr35202_ '0 _x35207_)))
                     _$e35204_)
                    '#f))))
        (begin
          (gxc#verbose '"compile " _path35198_)
          (with-output-to-file
           (cons 'path:
                 (cons _path35198_ (cons 'permissions: (cons '420 '()))))
           (lambda ()
             (begin
               (displayln '"prelude: :gerbil/compiler/ssxi")
               (if _pkg35209_ (displayln '"package: " _pkg35209_) '#!void)
               (newline)
               (pretty-print _code35200_))))))))
  (define gxc#generate-meta-code
    (lambda (_ctx35189_)
      (let* ((_state35191_
              (let ((__obj35839 (make-object gxc#meta-state::t '4)))
                (begin
                  (gxc#meta-state:::init! __obj35839 _ctx35189_)
                  __obj35839)))
             (_ssi-code35193_
              (gxc#apply-generate-meta
               (##structure-ref _ctx35189_ '11 gx#module-context::t '#f)
               _state35191_)))
        (values _ssi-code35193_ (gxc#meta-state-end! _state35191_)))))
  (define gxc#generate-runtime-phi
    (lambda (_stx35182_)
      (let ((_lifts35184_ (box '())))
        (call-with-parameters
         (lambda ()
           (let ((_code35187_ (gxc#apply-generate-runtime-phi _stx35182_)))
             (if (null? (unbox _lifts35184_))
                 _code35187_
                 (cons 'begin
                       (foldr1 cons
                               (cons _code35187_ '())
                               (reverse (unbox _lifts35184_)))))))
         gxc#current-compile-lift
         _lifts35184_
         gxc#current-compile-marks
         (make-hash-table-eq)))))
  (define gxc#lift-nested-modules
    (lambda (_ctx35178_)
      (let ((_modules35180_ (box '())))
        (begin
          (gxc#apply-lift-modules
           (##structure-ref _ctx35178_ '11 gx#module-context::t '#f)
           _modules35180_)
          (reverse (unbox _modules35180_))))))
  (define gxc#compile-scm-file
    (lambda (_path35174_ _code35175_)
      (begin
        (gxc#verbose '"compile " _path35174_)
        (with-output-to-file
         (cons 'path: (cons _path35174_ (cons 'permissions: (cons '420 '()))))
         (lambda ()
           (begin
             (pretty-print
              '(declare (block) (standard-bindings) (extended-bindings)))
             (pretty-print _code35175_))))
        (if (gxc#current-compile-invoke-gsc)
            (gxc#gsc-compile-file _path35174_)
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path35174_)))))
  (define gxc#gsc-debug-options
    (lambda ()
      (let ((_$e35163_ (gxc#current-compile-debug)))
        (if _$e35163_
            ((lambda (_debug35166_)
               (let ((_$e35168_ _debug35166_))
                 (if (eq? 'env _$e35168_)
                     (cons '"-debug-environments" '())
                     (if (eq? 'src _$e35168_)
                         (cons '"-debug-environments"
                               (cons '"-debug-source" '()))
                         (if (let ((_$e35171_ (eq? 'all _$e35168_)))
                               (if _$e35171_ _$e35171_ (eq? '#t _$e35168_)))
                             (cons '"-debug" '())
                             (gxc#raise-compile-error
                              '"unknown debug option"
                              _debug35166_))))))
             _$e35163_)
            '()))))
  (define gxc#gsc-compile-file
    (lambda (_path35145_)
      (let* ((_gsc-args35152_
              (let ((_$e35147_ (gxc#current-compile-gsc-options)))
                (if _$e35147_
                    ((lambda (_opts35150_)
                       (foldr1 cons (cons _path35145_ '()) _opts35150_))
                     _$e35147_)
                    (cons _path35145_ '()))))
             (_gsc-args35154_
              (foldr1 cons _gsc-args35152_ (gxc#gsc-debug-options)))
             (_g35848_
              (gxc#verbose '"invoke gsc " (cons 'gsc _gsc-args35154_)))
             (_proc35157_
              (open-process
               (cons 'path:
                     (cons '"gsc"
                           (cons 'arguments:
                                 (cons _gsc-args35154_
                                       (cons 'stdout-redirection:
                                             (cons '#f '()))))))))
             (_status35159_ (process-status _proc35157_)))
        (if (zero? _status35159_)
            '#!void
            (gxc#raise-compile-error
             '"Compilation error; gsc exit with nonzero status"
             _path35145_
             _status35159_)))))
  (define gxc#compile-output-file
    (lambda (_ctx35117_ _n35118_ _ext35119_)
      (letrec ((_module-relative-path35121_
                (lambda (_ctx35143_)
                  (path-strip-directory
                   (gxc#module-id->path-string
                    (##structure-ref
                     _ctx35143_
                     '1
                     gx#expander-context::t
                     '#f)))))
               (_module-source-directory35122_
                (lambda (_ctx35139_)
                  (path-directory
                   (let ((_mpath35141_
                          (##structure-ref
                           _ctx35139_
                           '7
                           gx#module-context::t
                           '#f)))
                     (if (string? _mpath35141_)
                         _mpath35141_
                         (last _mpath35141_))))))
               (_section-string35123_
                (lambda (_n35137_)
                  (if (number? _n35137_)
                      (number->string _n35137_)
                      (if (symbol? _n35137_)
                          (symbol->string _n35137_)
                          (if (string? _n35137_)
                              _n35137_
                              (gxc#raise-compile-error
                               '"Unexpected section"
                               _n35137_))))))
               (_file-name35124_
                (lambda (_path35135_)
                  (if _n35118_
                      (string-append
                       _path35135_
                       '"__"
                       (_section-string35123_ _n35118_)
                       _ext35119_)
                      (string-append _path35135_ _ext35119_))))
               (_file-path35125_
                (lambda ()
                  (let ((_$e35130_ (gxc#current-compile-output-dir)))
                    (if _$e35130_
                        ((lambda (_outdir35133_)
                           (path-expand
                            (_file-name35124_
                             (gxc#module-id->path-string
                              (##structure-ref
                               _ctx35117_
                               '1
                               gx#expander-context::t
                               '#f)))
                            _outdir35133_))
                         _$e35130_)
                        (path-expand
                         (_file-name35124_
                          (_module-relative-path35121_ _ctx35117_))
                         (_module-source-directory35122_ _ctx35117_)))))))
        (let ((_path35127_ (_file-path35125_)))
          (begin
            (create-directory* (path-directory _path35127_))
            _path35127_)))))
  (define gxc#compile-static-output-file
    (lambda (_ctx35100_)
      (letrec ((_file-name35102_
                (lambda (_id35115_)
                  (string-append (gxc#static-module-name _id35115_) '".scm")))
               (_file-path35103_
                (lambda ()
                  (let* ((_file35108_
                          (_file-name35102_
                           (##structure-ref
                            _ctx35100_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_$e35110_ (gxc#current-compile-output-dir)))
                    (if _$e35110_
                        ((lambda (_outdir35113_)
                           (path-expand
                            _file35108_
                            (path-expand '"static" _outdir35113_)))
                         _$e35110_)
                        (path-expand _file35108_ '"static"))))))
        (let ((_path35105_ (_file-path35103_)))
          (begin
            (create-directory* (path-directory _path35105_))
            _path35105_)))))
  (define gxc#compile-exe-output-file
    (lambda (_ctx35087_ _opts35088_)
      (let ((_$e35090_ (pgetq 'output-file: _opts35088_)))
        (if _$e35090_
            (values _$e35090_)
            (let* ((_mod-str35093_
                    (symbol->string
                     (##structure-ref
                      _ctx35087_
                      '1
                      gx#expander-context::t
                      '#f)))
                   (_$e35095_ (string-rindex _mod-str35093_ '#\/)))
              (if _$e35095_
                  ((lambda (_ix35098_)
                     (substring
                      _mod-str35093_
                      (fx+ _ix35098_ '1)
                      (string-length _mod-str35093_)))
                   _$e35095_)
                  _mod-str35093_))))))
  (define gxc#static-module-name
    (lambda (_idstr35080_)
      (if (string? _idstr35080_)
          (let* ((_str35082_ (gxc#module-id->path-string _idstr35080_))
                 (_strs35084_ (string-split _str35082_ '#\/)))
            (string-join _strs35084_ '"__"))
          (if (symbol? _idstr35080_)
              (gxc#static-module-name (symbol->string _idstr35080_))
              (error '"Bad module id" _idstr35080_))))))
