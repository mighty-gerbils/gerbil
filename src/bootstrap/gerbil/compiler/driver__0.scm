(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#compile-timestamp
    (lambda () (inexact->exact (floor (time->seconds (current-time))))))
  (begin
    (define gxc#compile-file__%
      (lambda (_srcpath35819_ _opts35820_)
        (begin
          (if (string? _srcpath35819_)
              '#!void
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath35819_))
          (let ((_outdir35822_ (pgetq 'output-dir: _opts35820_))
                (_invoke-gsc?35823_ (pgetq 'invoke-gsc: _opts35820_))
                (_gsc-options35824_ (pgetq 'gsc-options: _opts35820_))
                (_keep-scm?35825_ (pgetq 'keep-scm: _opts35820_))
                (_verbosity35826_ (pgetq 'verbose: _opts35820_))
                (_optimize35827_ (pgetq 'optimize: _opts35820_))
                (_debug35828_ (pgetq 'debug: _opts35820_))
                (_gen-ssxi35829_ (pgetq 'generate-ssxi: _opts35820_))
                (_static35830_ (pgetq 'static: _opts35820_)))
            (begin
              (if _outdir35822_ (create-directory* _outdir35822_) '#!void)
              (if _optimize35827_ (gxc#optimizer-info-init!) '#!void)
              (call-with-parameters
               (lambda ()
                 (begin
                   (gxc#verbose '"compile " _srcpath35819_)
                   (gxc#compile-top-module
                    (gx#import-module__0 _srcpath35819_))))
               gxc#current-compile-output-dir
               _outdir35822_
               gxc#current-compile-invoke-gsc
               _invoke-gsc?35823_
               gxc#current-compile-gsc-options
               _gsc-options35824_
               gxc#current-compile-keep-scm
               _keep-scm?35825_
               gxc#current-compile-verbose
               _verbosity35826_
               gxc#current-compile-optimize
               _optimize35827_
               gxc#current-compile-debug
               _debug35828_
               gxc#current-compile-generate-ssxi
               _gen-ssxi35829_
               gxc#current-compile-static
               _static35830_
               gxc#current-compile-timestamp
               (gxc#compile-timestamp)))))))
    (begin
      (define gxc#compile-file__0
        (lambda (_srcpath35836_)
          (let ((_opts35838_ '()))
            (gxc#compile-file__% _srcpath35836_ _opts35838_))))
      (define gxc#compile-file
        (lambda _g35851_
          (let ((_g35850_ (length _g35851_)))
            (cond ((##fx= _g35850_ 1) (apply gxc#compile-file__0 _g35851_))
                  ((##fx= _g35850_ 2) (apply gxc#compile-file__% _g35851_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-file
                    _g35851_))))))))
  (begin
    (define gxc#compile-exe-stub__%
      (lambda (_srcpath35805_ _opts35806_)
        (gxc#do-compile-exe
         _srcpath35805_
         _opts35806_
         gxc#compile-exe-stub-module)))
    (begin
      (define gxc#compile-exe-stub__0
        (lambda (_srcpath35811_)
          (let ((_opts35813_ '()))
            (gxc#compile-exe-stub__% _srcpath35811_ _opts35813_))))
      (define gxc#compile-exe-stub
        (lambda _g35853_
          (let ((_g35852_ (length _g35853_)))
            (cond ((##fx= _g35852_ 1) (apply gxc#compile-exe-stub__0 _g35853_))
                  ((##fx= _g35852_ 2) (apply gxc#compile-exe-stub__% _g35853_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-exe-stub
                    _g35853_))))))))
  (begin
    (define gxc#compile-static-exe__%
      (lambda (_srcpath35791_ _opts35792_)
        (gxc#do-compile-exe
         _srcpath35791_
         _opts35792_
         gxc#compile-exe-static-module)))
    (begin
      (define gxc#compile-static-exe__0
        (lambda (_srcpath35797_)
          (let ((_opts35799_ '()))
            (gxc#compile-static-exe__% _srcpath35797_ _opts35799_))))
      (define gxc#compile-static-exe
        (lambda _g35855_
          (let ((_g35854_ (length _g35855_)))
            (cond ((##fx= _g35854_ 1)
                   (apply gxc#compile-static-exe__0 _g35855_))
                  ((##fx= _g35854_ 2)
                   (apply gxc#compile-static-exe__% _g35855_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-static-exe
                    _g35855_))))))))
  (define gxc#do-compile-exe
    (lambda (_srcpath35779_ _opts35780_ _compile-e35781_)
      (begin
        (if (string? _srcpath35779_)
            '#!void
            (gxc#raise-compile-error
             '"Invalid module source path"
             _srcpath35779_))
        (let ((_outdir35783_ (pgetq 'output-dir: _opts35780_))
              (_invoke-gsc?35784_ (pgetq 'invoke-gsc: _opts35780_))
              (_gsc-options35785_ (pgetq 'gsc-options: _opts35780_))
              (_keep-scm?35786_ (pgetq 'keep-scm: _opts35780_))
              (_verbosity35787_ (pgetq 'verbose: _opts35780_)))
          (begin
            (if _outdir35783_ (create-directory* _outdir35783_) '#!void)
            (call-with-parameters
             (lambda ()
               (begin
                 (gxc#verbose '"compile exe " _srcpath35779_)
                 (_compile-e35781_
                  (gx#import-module__0 _srcpath35779_)
                  _opts35780_)))
             gxc#current-compile-output-dir
             _outdir35783_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?35784_
             gxc#current-compile-gsc-options
             _gsc-options35785_
             gxc#current-compile-keep-scm
             _keep-scm?35786_
             gxc#current-compile-verbose
             _verbosity35787_
             gxc#current-compile-timestamp
             (gxc#compile-timestamp)))))))
  (define gxc#compile-exe-stub-module
    (lambda (_ctx35745_ _opts35746_)
      (letrec ((_generate-stub35748_
                (lambda (_gx-init-stub35770_)
                  (let* ((_mod-str35772_
                          (gxc#module-id->path-string
                           (##structure-ref
                            _ctx35745_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_mod-rt35774_ (string-append _mod-str35772_ '"__rt"))
                         (_mod-main35776_
                          (gxc#find-runtime-symbol _ctx35745_ 'main)))
                    (begin
                      (write '(##namespace ("")))
                      (newline)
                      (write (cons 'include (cons _gx-init-stub35770_ '())))
                      (newline)
                      (write (cons '_gx#start!
                                   (cons _mod-rt35774_
                                         (cons (cons 'quote
                                                     (cons _mod-main35776_
                                                           '()))
                                               '()))))
                      (newline)))))
               (_compile-stub35749_
                (lambda (_output-scm35756_ _output-bin35757_)
                  (let* ((_init-stub35759_
                          (path-expand
                           '"lib/gx-init-exe.scm"
                           (getenv '"GERBIL_HOME")))
                         (_gsc-args35761_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin35757_
                                            (cons _output-scm35756_ '()))))))
                    (begin
                      (with-output-to-file
                       _output-scm35756_
                       (lambda () (_generate-stub35748_ _init-stub35759_)))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (gxc#verbose
                             '"invoke gsc "
                             (cons 'gsc _gsc-args35761_))
                            (let* ((_proc35765_
                                    (open-process
                                     (cons 'path:
                                           (cons '"gsc"
                                                 (cons 'arguments:
                                                       (cons _gsc-args35761_
                                                             (cons 'stdout-redirection:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_status35767_
                                    (process-status _proc35765_)))
                              (if (zero? _status35767_)
                                  '#!void
                                  (gxc#raise-compile-error
                                   '"Compilation error; gsc exit with nonzero status"
                                   _output-scm35756_
                                   _output-bin35757_
                                   _status35767_))))
                          '#!void))))))
        (let* ((_output-bin35751_
                (gxc#compile-exe-output-file _ctx35745_ _opts35746_))
               (_output-scm35753_ (string-append _output-bin35751_ '".scm")))
          (begin
            (_compile-stub35749_ _output-scm35753_ _output-bin35751_)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm35753_)))))))
  (define gxc#compile-exe-static-module
    (lambda (_ctx35606_ _opts35607_)
      (letrec ((_reset-declare35609_
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
               (_user-declare35610_
                (lambda ()
                  (let* ((_gsc-opts35688_ (pgetq 'gsc-options: _opts35607_))
                         (_gsc-prelude35690_
                          (if _gsc-opts35688_
                              (member '"-prelude" _gsc-opts35688_)
                              '#f))
                         (_gsc-prelude35692_
                          (if _gsc-prelude35690_
                              (read (open-input-string
                                     (cadr _gsc-prelude35690_)))
                              '#f)))
                    (let _lift35695_ ((_expr35697_ _gsc-prelude35692_))
                      (let* ((_expr3569835710_ _expr35697_)
                             (_else3570135718_ (lambda () '#f)))
                        (let ((_K3570635738_ (lambda () _expr35697_))
                              (_K3570335724_
                               (lambda (_exprs35722_)
                                 (ormap1 _lift35695_ _exprs35722_))))
                          (if (##pair? _expr3569835710_)
                              (let ((_hd3570735741_ (##car _expr3569835710_)))
                                (if (##eq? _hd3570735741_ 'declare)
                                    (let () (_K3570635738_))
                                    (let ((_tl3570535729_
                                           (##cdr _expr3569835710_)))
                                      (if (##eq? _hd3570735741_ 'begin)
                                          (let ((_exprs35732_ _tl3570535729_))
                                            (_K3570335724_ _exprs35732_))
                                          (_else3570135718_)))))
                              (_else3570135718_))))))))
               (_generate-stub35611_
                (lambda (_deps35679_)
                  (let ((_mod-main35681_
                         (gxc#find-runtime-symbol _ctx35606_ 'main))
                        (_reset-decl35682_ (_reset-declare35609_))
                        (_user-decl35683_ (_user-declare35610_)))
                    (begin
                      (write '(##namespace ("")))
                      (newline)
                      (write '(declare (optimize-dead-definitions)))
                      (newline)
                      (for-each
                       (lambda (_dep35685_)
                         (begin
                           (write (cons 'include (cons _dep35685_ '())))
                           (newline)
                           (write '(##namespace ("")))
                           (write _reset-decl35682_)
                           (if _user-decl35683_
                               (write _user-decl35683_)
                               '#!void)
                           (newline)))
                       _deps35679_)
                      (write (cons 'apply
                                   (cons _mod-main35681_
                                         (cons (cons 'cdr
                                                     (cons (cons 'command-line
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                      (newline)))))
               (_static-include35612_
                (lambda (_gsc-opts35662_ _home35663_)
                  (letrec* ((_static-dir35665_
                             (path-expand '"lib/static" _home35663_))
                            (_user-static-dir35666_
                             (path-expand
                              '"lib/static"
                              (getenv '"GERBIL_PATH" '"~/.gerbil")))
                            (_cppflags35667_
                             (string-append
                              '"-I "
                              _static-dir35665_
                              '" -I "
                              _user-static-dir35666_)))
                    (let ((_$e35669_ (member '"-cc-options" _gsc-opts35662_)))
                      (if _$e35669_
                          ((lambda (_rest35672_)
                             (let* ((_cell35674_ (cdr _rest35672_))
                                    (_opt35676_ (car _cell35674_)))
                               (begin
                                 (set-car!
                                  _cell35674_
                                  (string-append
                                   _opt35676_
                                   '" "
                                   _cppflags35667_))
                                 _gsc-opts35662_)))
                           _$e35669_)
                          (cons '"-cc-options"
                                (cons _cppflags35667_ _gsc-opts35662_)))))))
               (_compile-stub35613_
                (lambda (_output-scm35620_ _output-bin35621_)
                  (let* ((_gerbil-home35623_ (getenv '"GERBIL_HOME"))
                         (_gx-gambc035625_
                          (path-expand
                           '"lib/static/gx-gambc0.scm"
                           _gerbil-home35623_))
                         (_gx-gambc-init35627_
                          (path-expand
                           '"lib/gx-init-static-exe.scm"
                           _gerbil-home35623_))
                         (_gx-gambc-macros35629_
                          (path-expand
                           '"lib/static/gx-gambc#.scm"
                           _gerbil-home35623_))
                         (_include-gx-gambc-macros35631_
                          (string-append
                           '"(include \""
                           _gx-gambc-macros35629_
                           '"\")"))
                         (_bin-scm35633_
                          (gxc#find-static-module-file _ctx35606_))
                         (_deps35635_
                          (gxc#find-runtime-module-deps _ctx35606_))
                         (_deps35637_
                          (map gxc#find-static-module-file _deps35635_))
                         (_deps35642_
                          (filter (lambda (_$obj35639_)
                                    (not (gxc#file-empty? _$obj35639_)))
                                  _deps35637_))
                         (_gsc-opts35647_
                          (let ((_$e35644_ (pgetq 'gsc-options: _opts35607_)))
                            (if _$e35644_ _$e35644_ '())))
                         (_gsc-opts35649_
                          (_static-include35612_
                           _gsc-opts35647_
                           _gerbil-home35623_))
                         (_gsc-gx-macros35651_
                          (if (gerbil-runtime-smp?)
                              (cons '"-e"
                                    (cons '"(define-cond-expand-feature|enable-smp|)"
                                          (cons '"-e"
                                                (cons _include-gx-gambc-macros35631_
                                                      '()))))
                              (cons '"-e"
                                    (cons _include-gx-gambc-macros35631_
                                          '()))))
                         (_gsc-args35653_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin35621_
                                            (foldr1 cons
                                                    (foldr1 cons
                                                            (foldr1 cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _output-scm35620_ '())
                            _gsc-gx-macros35651_)
                    _gsc-opts35649_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gxc#gsc-debug-options)))))))
                    (begin
                      (with-output-to-file
                       _output-scm35620_
                       (lambda ()
                         (_generate-stub35611_
                          (cons _gx-gambc035625_
                                (cons _gx-gambc-init35627_
                                      (foldr1 cons
                                              (cons _bin-scm35633_ '())
                                              _deps35642_))))))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (gxc#verbose
                             '"invoke gsc "
                             (cons 'gsc _gsc-args35653_))
                            (let* ((_proc35657_
                                    (open-process
                                     (cons 'path:
                                           (cons '"gsc"
                                                 (cons 'arguments:
                                                       (cons _gsc-args35653_
                                                             (cons 'stdout-redirection:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_status35659_
                                    (process-status _proc35657_)))
                              (if (zero? _status35659_)
                                  '#!void
                                  (gxc#raise-compile-error
                                   '"Compilation error; gsc exit with nonzero status"
                                   _output-scm35620_
                                   _output-bin35621_
                                   _status35659_))))
                          '#!void))))))
        (let* ((_output-bin35615_
                (gxc#compile-exe-output-file _ctx35606_ _opts35607_))
               (_output-scm35617_ (string-append _output-bin35615_ '".scm")))
          (begin
            (_compile-stub35613_ _output-scm35617_ _output-bin35615_)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm35617_)))))))
  (define gxc#find-export-binding
    (lambda (_ctx35556_ _id35557_)
      (let ((_$e35603_
             (find (lambda (_e3555835560_)
                     (let* ((_g3556235572_ _e3555835560_)
                            (_else3556435580_ (lambda () '#f))
                            (_K3556635584_ (lambda () '#t)))
                       (if (##structure-direct-instance-of?
                            _g3556235572_
                            'gx#module-export::t)
                           (let* ((_e3556735587_
                                   (##vector-ref _g3556235572_ '1))
                                  (_e3556835590_
                                   (##vector-ref _g3556235572_ '2))
                                  (_e3556935593_
                                   (##vector-ref _g3556235572_ '3)))
                             (if (##eq? _e3556935593_ '0)
                                 (let ((_e3557035596_
                                        (##vector-ref _g3556235572_ '4)))
                                   (if ((lambda (_g3559835600_)
                                          (eq? _g3559835600_ _id35557_))
                                        _e3557035596_)
                                       (_K3556635584_)
                                       (_else3556435580_)))
                                 (_else3556435580_)))
                           (_else3556435580_))))
                   (##structure-ref _ctx35556_ '9 gx#module-context::t '#f))))
        (if _$e35603_ (gx#core-resolve-module-export _$e35603_) '#f))))
  (define gxc#find-runtime-symbol
    (lambda (_ctx35548_ _id35549_)
      (let ((_$e35551_ (gxc#find-export-binding _ctx35548_ _id35549_)))
        (if _$e35551_
            ((lambda (_bind35554_)
               (begin
                 (if (##structure-instance-of?
                      _bind35554_
                      'gx#runtime-binding::t)
                     '#!void
                     (gxc#raise-compile-error
                      '"export is not a runtime binding"
                      _id35549_))
                 (##structure-ref _bind35554_ '1 gx#binding::t '#f)))
             _$e35551_)
            (gxc#raise-compile-error
             '"module does not export symbol"
             (##structure-ref _ctx35548_ '1 gx#expander-context::t '#f)
             _id35549_)))))
  (define gxc#find-runtime-module-deps
    (lambda (_ctx35435_)
      (letrec* ((_ht35437_ (make-hash-table-eq))
                (_import-set-template35438_
                 (lambda (_in35500_ _phi35501_)
                   (let ((_iphi35503_
                          (fx+ _phi35501_
                               (##direct-structure-ref
                                _in35500_
                                '2
                                gx#import-set::t
                                '#f)))
                         (_imports35504_
                          (##structure-ref
                           (##direct-structure-ref
                            _in35500_
                            '1
                            gx#import-set::t
                            '#f)
                           '8
                           gx#module-context::t
                           '#f)))
                     (let _lp35506_ ((_rest35508_ _imports35504_)
                                     (_r35509_ '()))
                       (let* ((_rest3551035518_ _rest35508_)
                              (_else3551235526_ (lambda () _r35509_))
                              (_K3551435536_
                               (lambda (_rest35529_ _in35530_)
                                 (if (##structure-instance-of?
                                      _in35530_
                                      'gx#module-context::t)
                                     (if (fxzero? _iphi35503_)
                                         (_lp35506_
                                          _rest35529_
                                          (cons _in35530_ _r35509_))
                                         (_lp35506_ _rest35529_ _r35509_))
                                     (if (##structure-direct-instance-of?
                                          _in35530_
                                          'gx#module-import::t)
                                         (let ((_iphi35532_
                                                (fx+ _phi35501_
                                                     (##direct-structure-ref
                                                      _in35530_
                                                      '3
                                                      gx#module-import::t
                                                      '#f))))
                                           (if (fxzero? _iphi35532_)
                                               (_lp35506_
                                                _rest35529_
                                                (cons (##direct-structure-ref
                                                       (##direct-structure-ref
                                                        _in35530_
                                                        '1
                                                        gx#module-import::t
                                                        '#f)
                                                       '1
                                                       gx#module-export::t
                                                       '#f)
                                                      _r35509_))
                                               (_lp35506_
                                                _rest35529_
                                                _r35509_)))
                                         (if (##structure-direct-instance-of?
                                              _in35530_
                                              'gx#import-set::t)
                                             (let ((_xphi35534_
                                                    (fx+ _iphi35503_
                                                         (##direct-structure-ref
                                                          _in35530_
                                                          '2
                                                          gx#import-set::t
                                                          '#f))))
                                               (if (fxzero? _xphi35534_)
                                                   (_lp35506_
                                                    _rest35529_
                                                    (cons (##direct-structure-ref
                                                           _in35530_
                                                           '1
                                                           gx#import-set::t
                                                           '#f)
                                                          _r35509_))
                                                   (if (fxpositive?
                                                        _xphi35534_)
                                                       (_lp35506_
                                                        _rest35529_
                                                        (foldl1 cons
                                                                _r35509_
                                                                (_import-set-template35438_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in35530_
                         _iphi35503_)))
               (_lp35506_ _rest35529_ _r35509_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_lp35506_
                                              _rest35529_
                                              _r35509_)))))))
                         (if (##pair? _rest3551035518_)
                             (let ((_hd3551535539_ (##car _rest3551035518_))
                                   (_tl3551635541_ (##cdr _rest3551035518_)))
                               (let* ((_in35544_ _hd3551535539_)
                                      (_rest35546_ _tl3551635541_))
                                 (_K3551435536_ _rest35546_ _in35544_)))
                             (_else3551235526_)))))))
                (_find-deps35439_
                 (lambda (_rest35446_ _deps35447_)
                   (let* ((_rest3544835456_ _rest35446_)
                          (_else3545035464_ (lambda () _deps35447_))
                          (_K3545235488_
                           (lambda (_rest35467_ _hd35468_)
                             (if (##structure-instance-of?
                                  _hd35468_
                                  'gx#module-context::t)
                                 (let ((_id35470_
                                        (##structure-ref
                                         _hd35468_
                                         '1
                                         gx#expander-context::t
                                         '#f))
                                       (_imports35471_
                                        (##structure-ref
                                         _hd35468_
                                         '8
                                         gx#module-context::t
                                         '#f)))
                                   (if (table-ref _ht35437_ _id35470_ '#f)
                                       (_find-deps35439_
                                        _rest35467_
                                        _deps35447_)
                                       (let ((_$e35473_
                                              (gx#core-context-prelude__%
                                               _hd35468_)))
                                         (if _$e35473_
                                             ((lambda (_pre35476_)
                                                (let ((_xdeps35478_
                                                       (_find-deps35439_
                                                        (cons _pre35476_
                                                              _imports35471_)
                                                        _deps35447_)))
                                                  (begin
                                                    (table-set!
                                                     _ht35437_
                                                     _id35470_
                                                     _hd35468_)
                                                    (_find-deps35439_
                                                     _rest35467_
                                                     (cons _hd35468_
                                                           _xdeps35478_)))))
                                              _$e35473_)
                                             (let ((_xdeps35480_
                                                    (_find-deps35439_
                                                     _imports35471_
                                                     _deps35447_)))
                                               (begin
                                                 (table-set!
                                                  _ht35437_
                                                  _id35470_
                                                  _hd35468_)
                                                 (_find-deps35439_
                                                  _rest35467_
                                                  (cons _hd35468_
                                                        _xdeps35480_))))))))
                                 (if (##structure-instance-of?
                                      _hd35468_
                                      'gx#prelude-context::t)
                                     (let ((_id35482_
                                            (##structure-ref
                                             _hd35468_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (if (table-ref _ht35437_ _id35482_ '#f)
                                           (_find-deps35439_
                                            _rest35467_
                                            _deps35447_)
                                           (let ((_xdeps35484_
                                                  (_find-deps35439_
                                                   (##structure-ref
                                                    _hd35468_
                                                    '7
                                                    gx#prelude-context::t
                                                    '#f)
                                                   _deps35447_)))
                                             (if (table-ref
                                                  _ht35437_
                                                  _id35482_
                                                  '#f)
                                                 (_find-deps35439_
                                                  _rest35467_
                                                  _xdeps35484_)
                                                 (begin
                                                   (table-set!
                                                    _ht35437_
                                                    _id35482_
                                                    _hd35468_)
                                                   (_find-deps35439_
                                                    _rest35467_
                                                    (cons _hd35468_
                                                          _xdeps35484_)))))))
                                     (if (##structure-direct-instance-of?
                                          _hd35468_
                                          'gx#module-import::t)
                                         (if (fxzero? (##direct-structure-ref
                                                       _hd35468_
                                                       '3
                                                       gx#module-import::t
                                                       '#f))
                                             (_find-deps35439_
                                              (cons (##direct-structure-ref
                                                     _hd35468_
                                                     '1
                                                     gx#module-import::t
                                                     '#f)
                                                    _rest35467_)
                                              _deps35447_)
                                             (_find-deps35439_
                                              _rest35467_
                                              _deps35447_))
                                         (if (##structure-direct-instance-of?
                                              _hd35468_
                                              'gx#module-export::t)
                                             (_find-deps35439_
                                              (cons (##direct-structure-ref
                                                     _hd35468_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)
                                                    _rest35467_)
                                              _deps35447_)
                                             (if (##structure-direct-instance-of?
                                                  _hd35468_
                                                  'gx#import-set::t)
                                                 (if (fxzero? (##direct-structure-ref
                                                               _hd35468_
                                                               '2
                                                               gx#import-set::t
                                                               '#f))
                                                     (_find-deps35439_
                                                      (cons (##direct-structure-ref
                                                             _hd35468_
                                                             '1
                                                             gx#import-set::t
                                                             '#f)
                                                            _rest35467_)
                                                      _deps35447_)
                                                     (if (fxpositive?
                                                          (##direct-structure-ref
                                                           _hd35468_
                                                           '2
                                                           gx#import-set::t
                                                           '#f))
                                                         (let ((_xdeps35486_
                                                                (_import-set-template35438_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd35468_
                         '0)))
                   (_find-deps35439_
                    (foldl1 cons _rest35467_ _xdeps35486_)
                    _deps35447_))
                 (_find-deps35439_ _rest35467_ _deps35447_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (error '"Unexpected module import"
                                                        _hd35468_)))))))))
                     (if (##pair? _rest3544835456_)
                         (let ((_hd3545335491_ (##car _rest3544835456_))
                               (_tl3545435493_ (##cdr _rest3544835456_)))
                           (let* ((_hd35496_ _hd3545335491_)
                                  (_rest35498_ _tl3545435493_))
                             (_K3545235488_ _rest35498_ _hd35496_)))
                         (_else3545035464_))))))
        (reverse (filter gx#expander-context-id
                         (_find-deps35439_
                          (let ((_$e35441_
                                 (gx#core-context-prelude__% _ctx35435_)))
                            (if _$e35441_
                                ((lambda (_pre35444_)
                                   (cons _pre35444_
                                         (##structure-ref
                                          _ctx35435_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _$e35441_)
                                (##structure-ref
                                 _ctx35435_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))))
  (define gxc#find-static-module-file
    (lambda (_ctx35374_)
      (let* ((_scm35376_
              (string-append
               (gxc#static-module-name
                (##structure-ref _ctx35374_ '1 gx#expander-context::t '#f))
               '".scm"))
             (_dirs35378_ (gx#current-expander-module-library-path))
             (_dirs35387_
              (let ((_$e35380_ (gxc#current-compile-output-dir)))
                (if _$e35380_
                    ((lambda (_g3538235384_) (cons _g3538235384_ _dirs35378_))
                     _$e35380_)
                    _dirs35378_)))
             (_dirs35393_
              (map (lambda (_g3538835390_)
                     (path-expand '"static" _g3538835390_))
                   _dirs35387_)))
        (let _lp35396_ ((_rest35398_ _dirs35393_))
          (let* ((_rest3539935407_ _rest35398_)
                 (_else3540135415_
                  (lambda ()
                    (gxc#raise-compile-error
                     '"cannot find static module"
                     (##structure-ref _ctx35374_ '1 gx#expander-context::t '#f)
                     _scm35376_)))
                 (_K3540335423_
                  (lambda (_rest35418_ _dir35419_)
                    (let ((_path35421_ (path-expand _scm35376_ _dir35419_)))
                      (if (file-exists? _path35421_)
                          _path35421_
                          (_lp35396_ _rest35418_))))))
            (if (##pair? _rest3539935407_)
                (let ((_hd3540435426_ (##car _rest3539935407_))
                      (_tl3540535428_ (##cdr _rest3539935407_)))
                  (let* ((_dir35431_ _hd3540435426_)
                         (_rest35433_ _tl3540535428_))
                    (_K3540335423_ _rest35433_ _dir35431_)))
                (_else3540135415_)))))))
  (define gxc#file-empty?
    (lambda (_path35372_)
      (zero? (file-info-size (file-info _path35372_ '#t)))))
  (define gxc#compile-top-module
    (lambda (_ctx35369_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#verbose
            '"compile "
            (##structure-ref _ctx35369_ '1 gx#expander-context::t '#f))
           (if (gxc#current-compile-optimize)
               (gxc#optimize! _ctx35369_)
               '#!void)
           (gxc#collect-bindings _ctx35369_)
           (gxc#compile-runtime-code _ctx35369_)
           (gxc#compile-meta-code _ctx35369_)
           (if (if (gxc#current-compile-optimize)
                   (gxc#current-compile-generate-ssxi)
                   '#f)
               (gxc#compile-ssxi-code _ctx35369_)
               '#!void)))
       gx#current-expander-context
       _ctx35369_
       gx#current-expander-phi
       '0
       gx#current-expander-marks
       '()
       gxc#current-compile-symbol-table
       (let ((__obj35848 (make-object gxc#symbol-table::t '2)))
         (begin (gxc#symbol-table:::init! __obj35848) __obj35848))
       gxc#current-compile-runtime-sections
       (make-hash-table-eq)
       gxc#current-compile-runtime-names
       (make-table))))
  (define gxc#collect-bindings
    (lambda (_ctx35367_)
      (gxc#apply-collect-bindings
       (##structure-ref _ctx35367_ '11 gx#module-context::t '#f))))
  (define gxc#compile-runtime-code
    (lambda (_ctx35321_)
      (letrec ((_compile135323_
                (lambda (_ctx35356_)
                  (let* ((_code35358_
                          (##structure-ref
                           _ctx35356_
                           '11
                           gx#module-context::t
                           '#f))
                         (_rt35362_
                          (if (gxc#apply-find-runtime-code _code35358_)
                              (let ((_idstr35360_
                                     (gxc#module-id->path-string
                                      (##structure-ref
                                       _ctx35356_
                                       '1
                                       gx#expander-context::t
                                       '#f))))
                                (string-append _idstr35360_ '"__0"))
                              '#f)))
                    (begin
                      (if _rt35362_
                          (begin
                            (table-set!
                             (gxc#current-compile-runtime-sections)
                             _ctx35356_
                             _rt35362_)
                            (_generate-runtime-code35324_
                             _ctx35356_
                             _code35358_))
                          (if (gxc#current-compile-static)
                              (let ((_path35365_
                                     (gxc#compile-static-output-file
                                      _ctx35356_)))
                                (with-output-to-file
                                 (cons 'path:
                                       (cons _path35365_
                                             (cons 'permissions:
                                                   (cons '420 '()))))
                                 void))
                              '#!void))
                      (_generate-loader-code35325_
                       _ctx35356_
                       _code35358_
                       _rt35362_)))))
               (_generate-runtime-code35324_
                (lambda (_ctx35340_ _code35341_)
                  (let* ((_lifts35343_ (box '()))
                         (_runtime-code35346_
                          (call-with-parameters
                           (lambda () (gxc#apply-generate-runtime _code35341_))
                           gx#current-expander-context
                           _ctx35340_
                           gx#current-expander-phi
                           '0
                           gxc#current-compile-lift
                           _lifts35343_
                           gxc#current-compile-marks
                           (make-hash-table-eq)))
                         (_runtime-code35348_
                          (if (null? (unbox _lifts35343_))
                              _runtime-code35346_
                              (cons 'begin
                                    (foldr1 cons
                                            (cons _runtime-code35346_ '())
                                            (reverse (unbox _lifts35343_))))))
                         (_scm035350_
                          (gxc#compile-output-file _ctx35340_ '0 '".scm")))
                    (if (gxc#current-compile-static)
                        (let ((_scms35353_
                               (gxc#compile-static-output-file _ctx35340_)))
                          (begin
                            (call-with-parameters
                             (lambda ()
                               (gxc#compile-scm-file
                                _scm035350_
                                _runtime-code35348_))
                             gxc#current-compile-keep-scm
                             '#t)
                            (if (file-exists? _scms35353_)
                                (delete-file _scms35353_)
                                '#!void)
                            (gxc#verbose
                             '"copy static module "
                             _scm035350_
                             '" => "
                             _scms35353_)
                            (copy-file _scm035350_ _scms35353_)
                            (if (gxc#current-compile-keep-scm)
                                '#!void
                                (delete-file _scm035350_))))
                        (gxc#compile-scm-file
                         _scm035350_
                         _runtime-code35348_)))))
               (_generate-loader-code35325_
                (lambda (_ctx35329_ _code35330_ _rt35331_)
                  (let* ((_loader-code35334_
                          (call-with-parameters
                           (lambda () (gxc#apply-generate-loader _code35330_))
                           gx#current-expander-context
                           _ctx35329_))
                         (_loader-code35336_
                          (if _rt35331_
                              (cons 'begin
                                    (cons _loader-code35334_
                                          (cons (cons 'load-module
                                                      (cons _rt35331_ '()))
                                                '())))
                              _loader-code35334_)))
                    (call-with-parameters
                     (lambda ()
                       (gxc#compile-scm-file
                        (gxc#compile-output-file _ctx35329_ 'rt '".scm")
                        _loader-code35336_))
                     gxc#current-compile-gsc-options
                     '#f)))))
        (let ((_all-modules35327_
               (cons _ctx35321_ (gxc#lift-nested-modules _ctx35321_))))
          (for-each _compile135323_ _all-modules35327_)))))
  (define gxc#compile-meta-code
    (lambda (_ctx35223_)
      (letrec ((_compile-ssi35225_
                (lambda (_code35291_)
                  (let* ((_path35293_
                          (gxc#compile-output-file _ctx35223_ '#f '".ssi"))
                         (_prelude35304_
                          (let* ((_super35295_
                                  (##structure-ref
                                   _ctx35223_
                                   '3
                                   gx#phi-context::t
                                   '#f))
                                 (_$e35297_
                                  (##structure-ref
                                   _super35295_
                                   '1
                                   gx#expander-context::t
                                   '#f)))
                            (if _$e35297_
                                ((lambda (_g3529935301_)
                                   (make-symbol '":" _g3529935301_))
                                 _$e35297_)
                                ':<root>)))
                         (_ns35306_
                          (##structure-ref
                           _ctx35223_
                           '6
                           gx#module-context::t
                           '#f))
                         (_idstr35308_
                          (symbol->string
                           (##structure-ref
                            _ctx35223_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_pkg35315_
                          (let ((_$e35310_ (string-rindex _idstr35308_ '#\/)))
                            (if _$e35310_
                                ((lambda (_x35313_)
                                   (string->symbol
                                    (substring _idstr35308_ '0 _x35313_)))
                                 _$e35310_)
                                '#f)))
                         (_rt35317_
                          (table-ref
                           (gxc#current-compile-runtime-sections)
                           _ctx35223_
                           '#f)))
                    (begin
                      (gxc#verbose '"compile " _path35293_)
                      (with-output-to-file
                       (cons 'path:
                             (cons _path35293_
                                   (cons 'permissions: (cons '420 '()))))
                       (lambda ()
                         (begin
                           (displayln '"prelude:" '" " _prelude35304_)
                           (if _pkg35315_
                               (displayln '"package:" '" " _pkg35315_)
                               '#!void)
                           (displayln '"namespace:" '" " _ns35306_)
                           (newline)
                           (pretty-print _code35291_)
                           (if _rt35317_
                               (pretty-print
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons '_gx#load-module '()))
                                            (cons (cons '%#quote
                                                        (cons _rt35317_ '()))
                                                  '()))))
                               '#!void))))))))
               (_compile-phi35226_
                (lambda (_part35231_)
                  (let* ((_part3523235245_ _part35231_)
                         (_E3523435249_
                          (lambda ()
                            (error '"No clause matching" _part3523235245_)))
                         (_K3523535260_
                          (lambda (_code35252_
                                   _n35253_
                                   _phi35254_
                                   _phi-ctx35255_)
                            (let ((_code35258_
                                   (call-with-parameters
                                    (lambda ()
                                      (gxc#generate-runtime-phi _code35252_))
                                    gx#current-expander-context
                                    _phi-ctx35255_
                                    gx#current-expander-phi
                                    _phi35254_)))
                              (gxc#compile-scm-file
                               (gxc#compile-output-file
                                _ctx35223_
                                _n35253_
                                '".scm")
                               _code35258_)))))
                    (if (##pair? _part3523235245_)
                        (let ((_hd3523635263_ (##car _part3523235245_))
                              (_tl3523735265_ (##cdr _part3523235245_)))
                          (let ((_phi-ctx35268_ _hd3523635263_))
                            (if (##pair? _tl3523735265_)
                                (let ((_hd3523835270_ (##car _tl3523735265_))
                                      (_tl3523935272_ (##cdr _tl3523735265_)))
                                  (let ((_phi35275_ _hd3523835270_))
                                    (if (##pair? _tl3523935272_)
                                        (let ((_hd3524035277_
                                               (##car _tl3523935272_))
                                              (_tl3524135279_
                                               (##cdr _tl3523935272_)))
                                          (let ((_n35282_ _hd3524035277_))
                                            (if (##pair? _tl3524135279_)
                                                (let ((_hd3524235284_
                                                       (##car _tl3524135279_))
                                                      (_tl3524335286_
                                                       (##cdr _tl3524135279_)))
                                                  (let ((_code35289_
                                                         _hd3524235284_))
                                                    (if (##null? _tl3524335286_)
                                                        (_K3523535260_
                                                         _code35289_
                                                         _n35282_
                                                         _phi35275_
                                                         _phi-ctx35268_)
                                                        (_E3523435249_))))
                                                (_E3523435249_))))
                                        (_E3523435249_))))
                                (_E3523435249_))))
                        (_E3523435249_))))))
        (let ((_g35856_ (gxc#generate-meta-code _ctx35223_)))
          (begin
            (let ((_g35857_
                   (if (##values? _g35856_) (##vector-length _g35856_) 1)))
              (if (not (##fx= _g35857_ 2))
                  (error "Context expects 2 values" _g35857_)))
            (let ((_ssi-code35228_ (##vector-ref _g35856_ 0))
                  (_phi-code35229_ (##vector-ref _g35856_ 1)))
              (begin
                (_compile-ssi35225_ _ssi-code35228_)
                (for-each _compile-phi35226_ _phi-code35229_))))))))
  (define gxc#compile-ssxi-code
    (lambda (_ctx35206_)
      (let* ((_path35208_ (gxc#compile-output-file _ctx35206_ '#f '".ssxi.ss"))
             (_code35210_
              (gxc#apply-generate-ssxi
               (##structure-ref _ctx35206_ '11 gx#module-context::t '#f)))
             (_idstr35212_
              (symbol->string
               (##structure-ref _ctx35206_ '1 gx#expander-context::t '#f)))
             (_pkg35219_
              (let ((_$e35214_ (string-rindex _idstr35212_ '#\/)))
                (if _$e35214_
                    ((lambda (_x35217_)
                       (string->symbol (substring _idstr35212_ '0 _x35217_)))
                     _$e35214_)
                    '#f))))
        (begin
          (gxc#verbose '"compile " _path35208_)
          (with-output-to-file
           (cons 'path:
                 (cons _path35208_ (cons 'permissions: (cons '420 '()))))
           (lambda ()
             (begin
               (displayln '"prelude: :gerbil/compiler/ssxi")
               (if _pkg35219_ (displayln '"package: " _pkg35219_) '#!void)
               (newline)
               (pretty-print _code35210_))))))))
  (define gxc#generate-meta-code
    (lambda (_ctx35199_)
      (let* ((_state35201_
              (let ((__obj35849 (make-object gxc#meta-state::t '4)))
                (begin
                  (gxc#meta-state:::init! __obj35849 _ctx35199_)
                  __obj35849)))
             (_ssi-code35203_
              (gxc#apply-generate-meta
               (##structure-ref _ctx35199_ '11 gx#module-context::t '#f)
               _state35201_)))
        (values _ssi-code35203_ (gxc#meta-state-end! _state35201_)))))
  (define gxc#generate-runtime-phi
    (lambda (_stx35192_)
      (let ((_lifts35194_ (box '())))
        (call-with-parameters
         (lambda ()
           (let ((_code35197_ (gxc#apply-generate-runtime-phi _stx35192_)))
             (if (null? (unbox _lifts35194_))
                 _code35197_
                 (cons 'begin
                       (foldr1 cons
                               (cons _code35197_ '())
                               (reverse (unbox _lifts35194_)))))))
         gxc#current-compile-lift
         _lifts35194_
         gxc#current-compile-marks
         (make-hash-table-eq)))))
  (define gxc#lift-nested-modules
    (lambda (_ctx35188_)
      (let ((_modules35190_ (box '())))
        (begin
          (gxc#apply-lift-modules
           (##structure-ref _ctx35188_ '11 gx#module-context::t '#f)
           _modules35190_)
          (reverse (unbox _modules35190_))))))
  (define gxc#compile-scm-file
    (lambda (_path35184_ _code35185_)
      (begin
        (gxc#verbose '"compile " _path35184_)
        (with-output-to-file
         (cons 'path: (cons _path35184_ (cons 'permissions: (cons '420 '()))))
         (lambda ()
           (begin
             (pretty-print
              '(declare (block) (standard-bindings) (extended-bindings)))
             (pretty-print _code35185_))))
        (if (gxc#current-compile-invoke-gsc)
            (gxc#gsc-compile-file _path35184_)
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path35184_)))))
  (define gxc#gsc-debug-options
    (lambda ()
      (let ((_$e35173_ (gxc#current-compile-debug)))
        (if _$e35173_
            ((lambda (_debug35176_)
               (let ((_$e35178_ _debug35176_))
                 (if (eq? 'env _$e35178_)
                     (cons '"-debug-environments" '())
                     (if (eq? 'src _$e35178_)
                         (cons '"-debug-environments"
                               (cons '"-debug-source" '()))
                         (if (let ((_$e35181_ (eq? 'all _$e35178_)))
                               (if _$e35181_ _$e35181_ (eq? '#t _$e35178_)))
                             (cons '"-debug" '())
                             (gxc#raise-compile-error
                              '"unknown debug option"
                              _debug35176_))))))
             _$e35173_)
            '()))))
  (define gxc#gsc-compile-file
    (lambda (_path35155_)
      (let* ((_gsc-args35162_
              (let ((_$e35157_ (gxc#current-compile-gsc-options)))
                (if _$e35157_
                    ((lambda (_opts35160_)
                       (foldr1 cons (cons _path35155_ '()) _opts35160_))
                     _$e35157_)
                    (cons _path35155_ '()))))
             (_gsc-args35164_
              (foldr1 cons _gsc-args35162_ (gxc#gsc-debug-options)))
             (_g35858_
              (gxc#verbose '"invoke gsc " (cons 'gsc _gsc-args35164_)))
             (_proc35167_
              (open-process
               (cons 'path:
                     (cons '"gsc"
                           (cons 'arguments:
                                 (cons _gsc-args35164_
                                       (cons 'stdout-redirection:
                                             (cons '#f '()))))))))
             (_status35169_ (process-status _proc35167_)))
        (if (zero? _status35169_)
            '#!void
            (gxc#raise-compile-error
             '"Compilation error; gsc exit with nonzero status"
             _path35155_
             _status35169_)))))
  (define gxc#compile-output-file
    (lambda (_ctx35127_ _n35128_ _ext35129_)
      (letrec ((_module-relative-path35131_
                (lambda (_ctx35153_)
                  (path-strip-directory
                   (gxc#module-id->path-string
                    (##structure-ref
                     _ctx35153_
                     '1
                     gx#expander-context::t
                     '#f)))))
               (_module-source-directory35132_
                (lambda (_ctx35149_)
                  (path-directory
                   (let ((_mpath35151_
                          (##structure-ref
                           _ctx35149_
                           '7
                           gx#module-context::t
                           '#f)))
                     (if (string? _mpath35151_)
                         _mpath35151_
                         (last _mpath35151_))))))
               (_section-string35133_
                (lambda (_n35147_)
                  (if (number? _n35147_)
                      (number->string _n35147_)
                      (if (symbol? _n35147_)
                          (symbol->string _n35147_)
                          (if (string? _n35147_)
                              _n35147_
                              (gxc#raise-compile-error
                               '"Unexpected section"
                               _n35147_))))))
               (_file-name35134_
                (lambda (_path35145_)
                  (if _n35128_
                      (string-append
                       _path35145_
                       '"__"
                       (_section-string35133_ _n35128_)
                       _ext35129_)
                      (string-append _path35145_ _ext35129_))))
               (_file-path35135_
                (lambda ()
                  (let ((_$e35140_ (gxc#current-compile-output-dir)))
                    (if _$e35140_
                        ((lambda (_outdir35143_)
                           (path-expand
                            (_file-name35134_
                             (gxc#module-id->path-string
                              (##structure-ref
                               _ctx35127_
                               '1
                               gx#expander-context::t
                               '#f)))
                            _outdir35143_))
                         _$e35140_)
                        (path-expand
                         (_file-name35134_
                          (_module-relative-path35131_ _ctx35127_))
                         (_module-source-directory35132_ _ctx35127_)))))))
        (let ((_path35137_ (_file-path35135_)))
          (begin
            (create-directory* (path-directory _path35137_))
            _path35137_)))))
  (define gxc#compile-static-output-file
    (lambda (_ctx35110_)
      (letrec ((_file-name35112_
                (lambda (_id35125_)
                  (string-append (gxc#static-module-name _id35125_) '".scm")))
               (_file-path35113_
                (lambda ()
                  (let* ((_file35118_
                          (_file-name35112_
                           (##structure-ref
                            _ctx35110_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_$e35120_ (gxc#current-compile-output-dir)))
                    (if _$e35120_
                        ((lambda (_outdir35123_)
                           (path-expand
                            _file35118_
                            (path-expand '"static" _outdir35123_)))
                         _$e35120_)
                        (path-expand _file35118_ '"static"))))))
        (let ((_path35115_ (_file-path35113_)))
          (begin
            (create-directory* (path-directory _path35115_))
            _path35115_)))))
  (define gxc#compile-exe-output-file
    (lambda (_ctx35097_ _opts35098_)
      (let ((_$e35100_ (pgetq 'output-file: _opts35098_)))
        (if _$e35100_
            (values _$e35100_)
            (let* ((_mod-str35103_
                    (symbol->string
                     (##structure-ref
                      _ctx35097_
                      '1
                      gx#expander-context::t
                      '#f)))
                   (_$e35105_ (string-rindex _mod-str35103_ '#\/)))
              (if _$e35105_
                  ((lambda (_ix35108_)
                     (substring
                      _mod-str35103_
                      (fx+ _ix35108_ '1)
                      (string-length _mod-str35103_)))
                   _$e35105_)
                  _mod-str35103_))))))
  (define gxc#static-module-name
    (lambda (_idstr35090_)
      (if (string? _idstr35090_)
          (let* ((_str35092_ (gxc#module-id->path-string _idstr35090_))
                 (_strs35094_ (string-split _str35092_ '#\/)))
            (string-join _strs35094_ '"__"))
          (if (symbol? _idstr35090_)
              (gxc#static-module-name (symbol->string _idstr35090_))
              (error '"Bad module id" _idstr35090_))))))
