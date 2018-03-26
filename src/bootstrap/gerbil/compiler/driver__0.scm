(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#compile-timestamp
    (lambda () (inexact->exact (floor (time->seconds (current-time))))))
  (begin
    (define gxc#compile-file__%
      (lambda (_srcpath48741_ _opts48742_)
        (begin
          (if (string? _srcpath48741_)
              '#!void
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath48741_))
          (let ((_outdir48744_ (pgetq 'output-dir: _opts48742_))
                (_invoke-gsc?48745_ (pgetq 'invoke-gsc: _opts48742_))
                (_gsc-options48746_ (pgetq 'gsc-options: _opts48742_))
                (_keep-scm?48747_ (pgetq 'keep-scm: _opts48742_))
                (_verbosity48748_ (pgetq 'verbose: _opts48742_))
                (_optimize48749_ (pgetq 'optimize: _opts48742_))
                (_debug48750_ (pgetq 'debug: _opts48742_))
                (_gen-ssxi48751_ (pgetq 'generate-ssxi: _opts48742_))
                (_static48752_ (pgetq 'static: _opts48742_)))
            (begin
              (if _outdir48744_ (create-directory* _outdir48744_) '#!void)
              (if _optimize48749_ (gxc#optimizer-info-init!) '#!void)
              (call-with-parameters
               (lambda ()
                 (begin
                   (gxc#verbose '"compile " _srcpath48741_)
                   (gxc#compile-top-module
                    (gx#import-module__0 _srcpath48741_))))
               gxc#current-compile-output-dir
               _outdir48744_
               gxc#current-compile-invoke-gsc
               _invoke-gsc?48745_
               gxc#current-compile-gsc-options
               _gsc-options48746_
               gxc#current-compile-keep-scm
               _keep-scm?48747_
               gxc#current-compile-verbose
               _verbosity48748_
               gxc#current-compile-optimize
               _optimize48749_
               gxc#current-compile-debug
               _debug48750_
               gxc#current-compile-generate-ssxi
               _gen-ssxi48751_
               gxc#current-compile-static
               _static48752_
               gxc#current-compile-timestamp
               (gxc#compile-timestamp)))))))
    (begin
      (define gxc#compile-file__0
        (lambda (_srcpath48758_)
          (let ((_opts48760_ '()))
            (gxc#compile-file__% _srcpath48758_ _opts48760_))))
      (define gxc#compile-file
        (lambda _g48781_
          (let ((_g48780_ (length _g48781_)))
            (cond ((##fx= _g48780_ 1) (apply gxc#compile-file__0 _g48781_))
                  ((##fx= _g48780_ 2) (apply gxc#compile-file__% _g48781_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-file
                    _g48781_))))))))
  (begin
    (define gxc#compile-exe-stub__%
      (lambda (_srcpath48727_ _opts48728_)
        (gxc#do-compile-exe
         _srcpath48727_
         _opts48728_
         gxc#compile-exe-stub-module)))
    (begin
      (define gxc#compile-exe-stub__0
        (lambda (_srcpath48733_)
          (let ((_opts48735_ '()))
            (gxc#compile-exe-stub__% _srcpath48733_ _opts48735_))))
      (define gxc#compile-exe-stub
        (lambda _g48783_
          (let ((_g48782_ (length _g48783_)))
            (cond ((##fx= _g48782_ 1) (apply gxc#compile-exe-stub__0 _g48783_))
                  ((##fx= _g48782_ 2) (apply gxc#compile-exe-stub__% _g48783_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-exe-stub
                    _g48783_))))))))
  (begin
    (define gxc#compile-static-exe__%
      (lambda (_srcpath48713_ _opts48714_)
        (gxc#do-compile-exe
         _srcpath48713_
         _opts48714_
         gxc#compile-exe-static-module)))
    (begin
      (define gxc#compile-static-exe__0
        (lambda (_srcpath48719_)
          (let ((_opts48721_ '()))
            (gxc#compile-static-exe__% _srcpath48719_ _opts48721_))))
      (define gxc#compile-static-exe
        (lambda _g48785_
          (let ((_g48784_ (length _g48785_)))
            (cond ((##fx= _g48784_ 1)
                   (apply gxc#compile-static-exe__0 _g48785_))
                  ((##fx= _g48784_ 2)
                   (apply gxc#compile-static-exe__% _g48785_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-static-exe
                    _g48785_))))))))
  (define gxc#do-compile-exe
    (lambda (_srcpath48701_ _opts48702_ _compile-e48703_)
      (begin
        (if (string? _srcpath48701_)
            '#!void
            (gxc#raise-compile-error
             '"Invalid module source path"
             _srcpath48701_))
        (let ((_outdir48705_ (pgetq 'output-dir: _opts48702_))
              (_invoke-gsc?48706_ (pgetq 'invoke-gsc: _opts48702_))
              (_gsc-options48707_ (pgetq 'gsc-options: _opts48702_))
              (_keep-scm?48708_ (pgetq 'keep-scm: _opts48702_))
              (_verbosity48709_ (pgetq 'verbose: _opts48702_)))
          (begin
            (if _outdir48705_ (create-directory* _outdir48705_) '#!void)
            (call-with-parameters
             (lambda ()
               (begin
                 (gxc#verbose '"compile exe " _srcpath48701_)
                 (_compile-e48703_
                  (gx#import-module__0 _srcpath48701_)
                  _opts48702_)))
             gxc#current-compile-output-dir
             _outdir48705_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?48706_
             gxc#current-compile-gsc-options
             _gsc-options48707_
             gxc#current-compile-keep-scm
             _keep-scm?48708_
             gxc#current-compile-verbose
             _verbosity48709_
             gxc#current-compile-timestamp
             (gxc#compile-timestamp)))))))
  (define gxc#compile-exe-stub-module
    (lambda (_ctx48667_ _opts48668_)
      (letrec ((_generate-stub48670_
                (lambda (_gx-init-stub48692_)
                  (let* ((_mod-str48694_
                          (gxc#module-id->path-string
                           (##structure-ref
                            _ctx48667_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_mod-rt48696_ (string-append _mod-str48694_ '"__rt"))
                         (_mod-main48698_
                          (gxc#find-runtime-symbol _ctx48667_ 'main)))
                    (begin
                      (write '(##namespace ("")))
                      (newline)
                      (write (cons 'include (cons _gx-init-stub48692_ '())))
                      (newline)
                      (write (cons '_gx#start!
                                   (cons _mod-rt48696_
                                         (cons (cons 'quote
                                                     (cons _mod-main48698_
                                                           '()))
                                               '()))))
                      (newline)))))
               (_compile-stub48671_
                (lambda (_output-scm48678_ _output-bin48679_)
                  (let* ((_init-stub48681_
                          (path-expand
                           '"lib/gx-init-exe.scm"
                           (getenv '"GERBIL_HOME")))
                         (_gsc-args48683_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin48679_
                                            (cons _output-scm48678_ '()))))))
                    (begin
                      (with-output-to-file
                       _output-scm48678_
                       (lambda () (_generate-stub48670_ _init-stub48681_)))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (gxc#verbose
                             '"invoke gsc "
                             (cons 'gsc _gsc-args48683_))
                            (let* ((_proc48687_
                                    (open-process
                                     (cons 'path:
                                           (cons '"gsc"
                                                 (cons 'arguments:
                                                       (cons _gsc-args48683_
                                                             (cons 'stdout-redirection:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_status48689_
                                    (process-status _proc48687_)))
                              (if (zero? _status48689_)
                                  '#!void
                                  (gxc#raise-compile-error
                                   '"Compilation error; gsc exit with nonzero status"
                                   _output-scm48678_
                                   _output-bin48679_
                                   _status48689_))))
                          '#!void))))))
        (let* ((_output-bin48673_
                (gxc#compile-exe-output-file _ctx48667_ _opts48668_))
               (_output-scm48675_ (string-append _output-bin48673_ '".scm")))
          (begin
            (_compile-stub48671_ _output-scm48675_ _output-bin48673_)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm48675_)))))))
  (define gxc#compile-exe-static-module
    (lambda (_ctx48528_ _opts48529_)
      (letrec ((_reset-declare48531_
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
               (_user-declare48532_
                (lambda ()
                  (let* ((_gsc-opts48610_ (pgetq 'gsc-options: _opts48529_))
                         (_gsc-prelude48612_
                          (if _gsc-opts48610_
                              (member '"-prelude" _gsc-opts48610_)
                              '#f))
                         (_gsc-prelude48614_
                          (if _gsc-prelude48612_
                              (read (open-input-string
                                     (cadr _gsc-prelude48612_)))
                              '#f)))
                    (let _lift48617_ ((_expr48619_ _gsc-prelude48614_))
                      (let* ((_expr4862048632_ _expr48619_)
                             (_else4862348640_ (lambda () '#f)))
                        (let ((_K4862848660_ (lambda () _expr48619_))
                              (_K4862548646_
                               (lambda (_exprs48644_)
                                 (ormap1 _lift48617_ _exprs48644_))))
                          (if (##pair? _expr4862048632_)
                              (let ((_hd4862948663_ (##car _expr4862048632_)))
                                (if (##eq? _hd4862948663_ 'declare)
                                    (_K4862848660_)
                                    (let ((_tl4862748651_
                                           (##cdr _expr4862048632_)))
                                      (if (##eq? _hd4862948663_ 'begin)
                                          (let ((_exprs48654_ _tl4862748651_))
                                            (_K4862548646_ _exprs48654_))
                                          (_else4862348640_)))))
                              (_else4862348640_))))))))
               (_generate-stub48533_
                (lambda (_deps48601_)
                  (let ((_mod-main48603_
                         (gxc#find-runtime-symbol _ctx48528_ 'main))
                        (_reset-decl48604_ (_reset-declare48531_))
                        (_user-decl48605_ (_user-declare48532_)))
                    (begin
                      (write '(##namespace ("")))
                      (newline)
                      (write '(declare (optimize-dead-definitions)))
                      (newline)
                      (for-each
                       (lambda (_dep48607_)
                         (begin
                           (write (cons 'include (cons _dep48607_ '())))
                           (newline)
                           (write '(##namespace ("")))
                           (write _reset-decl48604_)
                           (if _user-decl48605_
                               (write _user-decl48605_)
                               '#!void)
                           (newline)))
                       _deps48601_)
                      (write (cons 'apply
                                   (cons _mod-main48603_
                                         (cons (cons 'cdr
                                                     (cons (cons 'command-line
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                      (newline)))))
               (_static-include48534_
                (lambda (_gsc-opts48584_ _home48585_)
                  (letrec* ((_static-dir48587_
                             (path-expand '"lib/static" _home48585_))
                            (_user-static-dir48588_
                             (path-expand
                              '"lib/static"
                              (getenv '"GERBIL_PATH" '"~/.gerbil")))
                            (_cppflags48589_
                             (string-append
                              '"-I "
                              _static-dir48587_
                              '" -I "
                              _user-static-dir48588_)))
                    (let ((_$e48591_ (member '"-cc-options" _gsc-opts48584_)))
                      (if _$e48591_
                          ((lambda (_rest48594_)
                             (let* ((_cell48596_ (cdr _rest48594_))
                                    (_opt48598_ (car _cell48596_)))
                               (begin
                                 (set-car!
                                  _cell48596_
                                  (string-append
                                   _opt48598_
                                   '" "
                                   _cppflags48589_))
                                 _gsc-opts48584_)))
                           _$e48591_)
                          (cons '"-cc-options"
                                (cons _cppflags48589_ _gsc-opts48584_)))))))
               (_compile-stub48535_
                (lambda (_output-scm48542_ _output-bin48543_)
                  (let* ((_gerbil-home48545_ (getenv '"GERBIL_HOME"))
                         (_gx-gambc048547_
                          (path-expand
                           '"lib/static/gx-gambc0.scm"
                           _gerbil-home48545_))
                         (_gx-gambc-init48549_
                          (path-expand
                           '"lib/gx-init-static-exe.scm"
                           _gerbil-home48545_))
                         (_gx-gambc-macros48551_
                          (path-expand
                           '"lib/static/gx-gambc#.scm"
                           _gerbil-home48545_))
                         (_include-gx-gambc-macros48553_
                          (string-append
                           '"(include \""
                           _gx-gambc-macros48551_
                           '"\")"))
                         (_bin-scm48555_
                          (gxc#find-static-module-file _ctx48528_))
                         (_deps48557_
                          (gxc#find-runtime-module-deps _ctx48528_))
                         (_deps48559_
                          (map gxc#find-static-module-file _deps48557_))
                         (_deps48564_
                          (filter (lambda (_$obj48561_)
                                    (not (gxc#file-empty? _$obj48561_)))
                                  _deps48559_))
                         (_gsc-opts48569_
                          (let ((_$e48566_ (pgetq 'gsc-options: _opts48529_)))
                            (if _$e48566_ _$e48566_ '())))
                         (_gsc-opts48571_
                          (_static-include48534_
                           _gsc-opts48569_
                           _gerbil-home48545_))
                         (_gsc-gx-macros48573_
                          (if (gerbil-runtime-smp?)
                              (cons '"-e"
                                    (cons '"(define-cond-expand-feature|enable-smp|)"
                                          (cons '"-e"
                                                (cons _include-gx-gambc-macros48553_
                                                      '()))))
                              (cons '"-e"
                                    (cons _include-gx-gambc-macros48553_
                                          '()))))
                         (_gsc-args48575_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin48543_
                                            (foldr1 cons
                                                    (foldr1 cons
                                                            (foldr1 cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _output-scm48542_ '())
                            _gsc-gx-macros48573_)
                    _gsc-opts48571_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gxc#gsc-debug-options)))))))
                    (begin
                      (with-output-to-file
                       _output-scm48542_
                       (lambda ()
                         (_generate-stub48533_
                          (cons _gx-gambc048547_
                                (cons _gx-gambc-init48549_
                                      (foldr1 cons
                                              (cons _bin-scm48555_ '())
                                              _deps48564_))))))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (gxc#verbose
                             '"invoke gsc "
                             (cons 'gsc _gsc-args48575_))
                            (let* ((_proc48579_
                                    (open-process
                                     (cons 'path:
                                           (cons '"gsc"
                                                 (cons 'arguments:
                                                       (cons _gsc-args48575_
                                                             (cons 'stdout-redirection:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_status48581_
                                    (process-status _proc48579_)))
                              (if (zero? _status48581_)
                                  '#!void
                                  (gxc#raise-compile-error
                                   '"Compilation error; gsc exit with nonzero status"
                                   _output-scm48542_
                                   _output-bin48543_
                                   _status48581_))))
                          '#!void))))))
        (let* ((_output-bin48537_
                (gxc#compile-exe-output-file _ctx48528_ _opts48529_))
               (_output-scm48539_ (string-append _output-bin48537_ '".scm")))
          (begin
            (_compile-stub48535_ _output-scm48539_ _output-bin48537_)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm48539_)))))))
  (define gxc#find-export-binding
    (lambda (_ctx48478_ _id48479_)
      (let ((_$e48525_
             (find (lambda (_e4848048482_)
                     (let* ((_g4848448494_ _e4848048482_)
                            (_else4848648502_ (lambda () '#f))
                            (_K4848848506_ (lambda () '#t)))
                       (if (##structure-direct-instance-of?
                            _g4848448494_
                            'gx#module-export::t)
                           (let* ((_e4848948509_
                                   (##vector-ref _g4848448494_ '1))
                                  (_e4849048512_
                                   (##vector-ref _g4848448494_ '2))
                                  (_e4849148515_
                                   (##vector-ref _g4848448494_ '3)))
                             (if (##eq? _e4849148515_ '0)
                                 (let ((_e4849248518_
                                        (##vector-ref _g4848448494_ '4)))
                                   (if ((lambda (_g4852048522_)
                                          (eq? _g4852048522_ _id48479_))
                                        _e4849248518_)
                                       (_K4848848506_)
                                       (_else4848648502_)))
                                 (_else4848648502_)))
                           (_else4848648502_))))
                   (##structure-ref _ctx48478_ '9 gx#module-context::t '#f))))
        (if _$e48525_ (gx#core-resolve-module-export _$e48525_) '#f))))
  (define gxc#find-runtime-symbol
    (lambda (_ctx48470_ _id48471_)
      (let ((_$e48473_ (gxc#find-export-binding _ctx48470_ _id48471_)))
        (if _$e48473_
            ((lambda (_bind48476_)
               (begin
                 (if (##structure-instance-of?
                      _bind48476_
                      'gx#runtime-binding::t)
                     '#!void
                     (gxc#raise-compile-error
                      '"export is not a runtime binding"
                      _id48471_))
                 (##structure-ref _bind48476_ '1 gx#binding::t '#f)))
             _$e48473_)
            (gxc#raise-compile-error
             '"module does not export symbol"
             (##structure-ref _ctx48470_ '1 gx#expander-context::t '#f)
             _id48471_)))))
  (define gxc#find-runtime-module-deps
    (lambda (_ctx48357_)
      (letrec* ((_ht48359_ (make-hash-table-eq))
                (_import-set-template48360_
                 (lambda (_in48422_ _phi48423_)
                   (let ((_iphi48425_
                          (fx+ _phi48423_
                               (##direct-structure-ref
                                _in48422_
                                '2
                                gx#import-set::t
                                '#f)))
                         (_imports48426_
                          (##structure-ref
                           (##direct-structure-ref
                            _in48422_
                            '1
                            gx#import-set::t
                            '#f)
                           '8
                           gx#module-context::t
                           '#f)))
                     (let _lp48428_ ((_rest48430_ _imports48426_)
                                     (_r48431_ '()))
                       (let* ((_rest4843248440_ _rest48430_)
                              (_else4843448448_ (lambda () _r48431_))
                              (_K4843648458_
                               (lambda (_rest48451_ _in48452_)
                                 (if (##structure-instance-of?
                                      _in48452_
                                      'gx#module-context::t)
                                     (if (fxzero? _iphi48425_)
                                         (_lp48428_
                                          _rest48451_
                                          (cons _in48452_ _r48431_))
                                         (_lp48428_ _rest48451_ _r48431_))
                                     (if (##structure-direct-instance-of?
                                          _in48452_
                                          'gx#module-import::t)
                                         (let ((_iphi48454_
                                                (fx+ _phi48423_
                                                     (##direct-structure-ref
                                                      _in48452_
                                                      '3
                                                      gx#module-import::t
                                                      '#f))))
                                           (if (fxzero? _iphi48454_)
                                               (_lp48428_
                                                _rest48451_
                                                (cons (##direct-structure-ref
                                                       (##direct-structure-ref
                                                        _in48452_
                                                        '1
                                                        gx#module-import::t
                                                        '#f)
                                                       '1
                                                       gx#module-export::t
                                                       '#f)
                                                      _r48431_))
                                               (_lp48428_
                                                _rest48451_
                                                _r48431_)))
                                         (if (##structure-direct-instance-of?
                                              _in48452_
                                              'gx#import-set::t)
                                             (let ((_xphi48456_
                                                    (fx+ _iphi48425_
                                                         (##direct-structure-ref
                                                          _in48452_
                                                          '2
                                                          gx#import-set::t
                                                          '#f))))
                                               (if (fxzero? _xphi48456_)
                                                   (_lp48428_
                                                    _rest48451_
                                                    (cons (##direct-structure-ref
                                                           _in48452_
                                                           '1
                                                           gx#import-set::t
                                                           '#f)
                                                          _r48431_))
                                                   (if (fxpositive?
                                                        _xphi48456_)
                                                       (_lp48428_
                                                        _rest48451_
                                                        (foldl1 cons
                                                                _r48431_
                                                                (_import-set-template48360_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in48452_
                         _iphi48425_)))
               (_lp48428_ _rest48451_ _r48431_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_lp48428_
                                              _rest48451_
                                              _r48431_)))))))
                         (if (##pair? _rest4843248440_)
                             (let ((_hd4843748461_ (##car _rest4843248440_))
                                   (_tl4843848463_ (##cdr _rest4843248440_)))
                               (let* ((_in48466_ _hd4843748461_)
                                      (_rest48468_ _tl4843848463_))
                                 (_K4843648458_ _rest48468_ _in48466_)))
                             (_else4843448448_)))))))
                (_find-deps48361_
                 (lambda (_rest48368_ _deps48369_)
                   (let* ((_rest4837048378_ _rest48368_)
                          (_else4837248386_ (lambda () _deps48369_))
                          (_K4837448410_
                           (lambda (_rest48389_ _hd48390_)
                             (if (##structure-instance-of?
                                  _hd48390_
                                  'gx#module-context::t)
                                 (let ((_id48392_
                                        (##structure-ref
                                         _hd48390_
                                         '1
                                         gx#expander-context::t
                                         '#f))
                                       (_imports48393_
                                        (##structure-ref
                                         _hd48390_
                                         '8
                                         gx#module-context::t
                                         '#f)))
                                   (if (table-ref _ht48359_ _id48392_ '#f)
                                       (_find-deps48361_
                                        _rest48389_
                                        _deps48369_)
                                       (let ((_$e48395_
                                              (gx#core-context-prelude__%
                                               _hd48390_)))
                                         (if _$e48395_
                                             ((lambda (_pre48398_)
                                                (let ((_xdeps48400_
                                                       (_find-deps48361_
                                                        (cons _pre48398_
                                                              _imports48393_)
                                                        _deps48369_)))
                                                  (begin
                                                    (table-set!
                                                     _ht48359_
                                                     _id48392_
                                                     _hd48390_)
                                                    (_find-deps48361_
                                                     _rest48389_
                                                     (cons _hd48390_
                                                           _xdeps48400_)))))
                                              _$e48395_)
                                             (let ((_xdeps48402_
                                                    (_find-deps48361_
                                                     _imports48393_
                                                     _deps48369_)))
                                               (begin
                                                 (table-set!
                                                  _ht48359_
                                                  _id48392_
                                                  _hd48390_)
                                                 (_find-deps48361_
                                                  _rest48389_
                                                  (cons _hd48390_
                                                        _xdeps48402_))))))))
                                 (if (##structure-instance-of?
                                      _hd48390_
                                      'gx#prelude-context::t)
                                     (let ((_id48404_
                                            (##structure-ref
                                             _hd48390_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (if (table-ref _ht48359_ _id48404_ '#f)
                                           (_find-deps48361_
                                            _rest48389_
                                            _deps48369_)
                                           (let ((_xdeps48406_
                                                  (_find-deps48361_
                                                   (##structure-ref
                                                    _hd48390_
                                                    '7
                                                    gx#prelude-context::t
                                                    '#f)
                                                   _deps48369_)))
                                             (if (table-ref
                                                  _ht48359_
                                                  _id48404_
                                                  '#f)
                                                 (_find-deps48361_
                                                  _rest48389_
                                                  _xdeps48406_)
                                                 (begin
                                                   (table-set!
                                                    _ht48359_
                                                    _id48404_
                                                    _hd48390_)
                                                   (_find-deps48361_
                                                    _rest48389_
                                                    (cons _hd48390_
                                                          _xdeps48406_)))))))
                                     (if (##structure-direct-instance-of?
                                          _hd48390_
                                          'gx#module-import::t)
                                         (if (fxzero? (##direct-structure-ref
                                                       _hd48390_
                                                       '3
                                                       gx#module-import::t
                                                       '#f))
                                             (_find-deps48361_
                                              (cons (##direct-structure-ref
                                                     _hd48390_
                                                     '1
                                                     gx#module-import::t
                                                     '#f)
                                                    _rest48389_)
                                              _deps48369_)
                                             (_find-deps48361_
                                              _rest48389_
                                              _deps48369_))
                                         (if (##structure-direct-instance-of?
                                              _hd48390_
                                              'gx#module-export::t)
                                             (_find-deps48361_
                                              (cons (##direct-structure-ref
                                                     _hd48390_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)
                                                    _rest48389_)
                                              _deps48369_)
                                             (if (##structure-direct-instance-of?
                                                  _hd48390_
                                                  'gx#import-set::t)
                                                 (if (fxzero? (##direct-structure-ref
                                                               _hd48390_
                                                               '2
                                                               gx#import-set::t
                                                               '#f))
                                                     (_find-deps48361_
                                                      (cons (##direct-structure-ref
                                                             _hd48390_
                                                             '1
                                                             gx#import-set::t
                                                             '#f)
                                                            _rest48389_)
                                                      _deps48369_)
                                                     (if (fxpositive?
                                                          (##direct-structure-ref
                                                           _hd48390_
                                                           '2
                                                           gx#import-set::t
                                                           '#f))
                                                         (let ((_xdeps48408_
                                                                (_import-set-template48360_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd48390_
                         '0)))
                   (_find-deps48361_
                    (foldl1 cons _rest48389_ _xdeps48408_)
                    _deps48369_))
                 (_find-deps48361_ _rest48389_ _deps48369_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (error '"Unexpected module import"
                                                        _hd48390_)))))))))
                     (if (##pair? _rest4837048378_)
                         (let ((_hd4837548413_ (##car _rest4837048378_))
                               (_tl4837648415_ (##cdr _rest4837048378_)))
                           (let* ((_hd48418_ _hd4837548413_)
                                  (_rest48420_ _tl4837648415_))
                             (_K4837448410_ _rest48420_ _hd48418_)))
                         (_else4837248386_))))))
        (reverse (filter gx#expander-context-id
                         (_find-deps48361_
                          (let ((_$e48363_
                                 (gx#core-context-prelude__% _ctx48357_)))
                            (if _$e48363_
                                ((lambda (_pre48366_)
                                   (cons _pre48366_
                                         (##structure-ref
                                          _ctx48357_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _$e48363_)
                                (##structure-ref
                                 _ctx48357_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))))
  (define gxc#find-static-module-file
    (lambda (_ctx48296_)
      (let* ((_scm48298_
              (string-append
               (gxc#static-module-name
                (##structure-ref _ctx48296_ '1 gx#expander-context::t '#f))
               '".scm"))
             (_dirs48300_ (gx#current-expander-module-library-path))
             (_dirs48309_
              (let ((_$e48302_ (gxc#current-compile-output-dir)))
                (if _$e48302_
                    ((lambda (_g4830448306_) (cons _g4830448306_ _dirs48300_))
                     _$e48302_)
                    _dirs48300_)))
             (_dirs48315_
              (map (lambda (_g4831048312_)
                     (path-expand '"static" _g4831048312_))
                   _dirs48309_)))
        (let _lp48318_ ((_rest48320_ _dirs48315_))
          (let* ((_rest4832148329_ _rest48320_)
                 (_else4832348337_
                  (lambda ()
                    (gxc#raise-compile-error
                     '"cannot find static module"
                     (##structure-ref _ctx48296_ '1 gx#expander-context::t '#f)
                     _scm48298_)))
                 (_K4832548345_
                  (lambda (_rest48340_ _dir48341_)
                    (let ((_path48343_ (path-expand _scm48298_ _dir48341_)))
                      (if (file-exists? _path48343_)
                          _path48343_
                          (_lp48318_ _rest48340_))))))
            (if (##pair? _rest4832148329_)
                (let ((_hd4832648348_ (##car _rest4832148329_))
                      (_tl4832748350_ (##cdr _rest4832148329_)))
                  (let* ((_dir48353_ _hd4832648348_)
                         (_rest48355_ _tl4832748350_))
                    (_K4832548345_ _rest48355_ _dir48353_)))
                (_else4832348337_)))))))
  (define gxc#file-empty?
    (lambda (_path48294_)
      (zero? (file-info-size (file-info _path48294_ '#t)))))
  (define gxc#compile-top-module
    (lambda (_ctx48291_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#verbose
            '"compile "
            (##structure-ref _ctx48291_ '1 gx#expander-context::t '#f))
           (if (gxc#current-compile-optimize)
               (gxc#optimize! _ctx48291_)
               '#!void)
           (gxc#collect-bindings _ctx48291_)
           (gxc#compile-runtime-code _ctx48291_)
           (gxc#compile-meta-code _ctx48291_)
           (if (if (gxc#current-compile-optimize)
                   (gxc#current-compile-generate-ssxi)
                   '#f)
               (gxc#compile-ssxi-code _ctx48291_)
               '#!void)))
       gx#current-expander-context
       _ctx48291_
       gx#current-expander-phi
       '0
       gx#current-expander-marks
       '()
       gxc#current-compile-symbol-table
       (let ((__obj48778 (make-object gxc#symbol-table::t '2)))
         (begin (gxc#symbol-table:::init! __obj48778) __obj48778))
       gxc#current-compile-runtime-sections
       (make-hash-table-eq)
       gxc#current-compile-runtime-names
       (make-table))))
  (define gxc#collect-bindings
    (lambda (_ctx48289_)
      (gxc#apply-collect-bindings
       (##structure-ref _ctx48289_ '11 gx#module-context::t '#f))))
  (define gxc#compile-runtime-code
    (lambda (_ctx48243_)
      (letrec ((_compile148245_
                (lambda (_ctx48278_)
                  (let* ((_code48280_
                          (##structure-ref
                           _ctx48278_
                           '11
                           gx#module-context::t
                           '#f))
                         (_rt48284_
                          (if (gxc#apply-find-runtime-code _code48280_)
                              (let ((_idstr48282_
                                     (gxc#module-id->path-string
                                      (##structure-ref
                                       _ctx48278_
                                       '1
                                       gx#expander-context::t
                                       '#f))))
                                (string-append _idstr48282_ '"__0"))
                              '#f)))
                    (begin
                      (if _rt48284_
                          (begin
                            (table-set!
                             (gxc#current-compile-runtime-sections)
                             _ctx48278_
                             _rt48284_)
                            (_generate-runtime-code48246_
                             _ctx48278_
                             _code48280_))
                          (if (gxc#current-compile-static)
                              (let ((_path48287_
                                     (gxc#compile-static-output-file
                                      _ctx48278_)))
                                (with-output-to-file
                                 (cons 'path:
                                       (cons _path48287_
                                             (cons 'permissions:
                                                   (cons '420 '()))))
                                 void))
                              '#!void))
                      (_generate-loader-code48247_
                       _ctx48278_
                       _code48280_
                       _rt48284_)))))
               (_generate-runtime-code48246_
                (lambda (_ctx48262_ _code48263_)
                  (let* ((_lifts48265_ (box '()))
                         (_runtime-code48268_
                          (call-with-parameters
                           (lambda () (gxc#apply-generate-runtime _code48263_))
                           gx#current-expander-context
                           _ctx48262_
                           gx#current-expander-phi
                           '0
                           gxc#current-compile-lift
                           _lifts48265_
                           gxc#current-compile-marks
                           (make-hash-table-eq)
                           gxc#current-compile-identifiers
                           (gxc#make-bound-identifier-table)))
                         (_runtime-code48270_
                          (if (null? (unbox _lifts48265_))
                              _runtime-code48268_
                              (cons 'begin
                                    (foldr1 cons
                                            (cons _runtime-code48268_ '())
                                            (reverse (unbox _lifts48265_))))))
                         (_scm048272_
                          (gxc#compile-output-file _ctx48262_ '0 '".scm")))
                    (if (gxc#current-compile-static)
                        (let ((_scms48275_
                               (gxc#compile-static-output-file _ctx48262_)))
                          (begin
                            (call-with-parameters
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _scm048272_
                                _runtime-code48270_))
                             gxc#current-compile-keep-scm
                             '#t)
                            (if (file-exists? _scms48275_)
                                (delete-file _scms48275_)
                                '#!void)
                            (gxc#verbose
                             '"copy static module "
                             _scm048272_
                             '" => "
                             _scms48275_)
                            (copy-file _scm048272_ _scms48275_)
                            (if (gxc#current-compile-keep-scm)
                                '#!void
                                (delete-file _scm048272_))))
                        (gxc#compile-scm-file__0
                         _scm048272_
                         _runtime-code48270_)))))
               (_generate-loader-code48247_
                (lambda (_ctx48251_ _code48252_ _rt48253_)
                  (let* ((_loader-code48256_
                          (call-with-parameters
                           (lambda () (gxc#apply-generate-loader _code48252_))
                           gx#current-expander-context
                           _ctx48251_))
                         (_loader-code48258_
                          (if _rt48253_
                              (cons 'begin
                                    (cons _loader-code48256_
                                          (cons (cons 'load-module
                                                      (cons _rt48253_ '()))
                                                '())))
                              _loader-code48256_)))
                    (call-with-parameters
                     (lambda ()
                       (gxc#compile-scm-file__0
                        (gxc#compile-output-file _ctx48251_ 'rt '".scm")
                        _loader-code48258_))
                     gxc#current-compile-gsc-options
                     '#f)))))
        (let ((_all-modules48249_
               (cons _ctx48243_ (gxc#lift-nested-modules _ctx48243_))))
          (for-each _compile148245_ _all-modules48249_)))))
  (define gxc#compile-meta-code
    (lambda (_ctx48145_)
      (letrec ((_compile-ssi48147_
                (lambda (_code48213_)
                  (let* ((_path48215_
                          (gxc#compile-output-file _ctx48145_ '#f '".ssi"))
                         (_prelude48226_
                          (let* ((_super48217_
                                  (##structure-ref
                                   _ctx48145_
                                   '3
                                   gx#phi-context::t
                                   '#f))
                                 (_$e48219_
                                  (##structure-ref
                                   _super48217_
                                   '1
                                   gx#expander-context::t
                                   '#f)))
                            (if _$e48219_
                                ((lambda (_g4822148223_)
                                   (make-symbol '":" _g4822148223_))
                                 _$e48219_)
                                ':<root>)))
                         (_ns48228_
                          (##structure-ref
                           _ctx48145_
                           '6
                           gx#module-context::t
                           '#f))
                         (_idstr48230_
                          (symbol->string
                           (##structure-ref
                            _ctx48145_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_pkg48237_
                          (let ((_$e48232_ (string-rindex _idstr48230_ '#\/)))
                            (if _$e48232_
                                ((lambda (_x48235_)
                                   (string->symbol
                                    (substring _idstr48230_ '0 _x48235_)))
                                 _$e48232_)
                                '#f)))
                         (_rt48239_
                          (table-ref
                           (gxc#current-compile-runtime-sections)
                           _ctx48145_
                           '#f)))
                    (begin
                      (gxc#verbose '"compile " _path48215_)
                      (with-output-to-file
                       (cons 'path:
                             (cons _path48215_
                                   (cons 'permissions: (cons '420 '()))))
                       (lambda ()
                         (begin
                           (displayln '"prelude:" '" " _prelude48226_)
                           (if _pkg48237_
                               (displayln '"package:" '" " _pkg48237_)
                               '#!void)
                           (displayln '"namespace:" '" " _ns48228_)
                           (newline)
                           (pretty-print _code48213_)
                           (if _rt48239_
                               (pretty-print
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons '_gx#load-module '()))
                                            (cons (cons '%#quote
                                                        (cons _rt48239_ '()))
                                                  '()))))
                               '#!void))))))))
               (_compile-phi48148_
                (lambda (_part48153_)
                  (let* ((_part4815448167_ _part48153_)
                         (_E4815648171_
                          (lambda ()
                            (error '"No clause matching" _part4815448167_)))
                         (_K4815748182_
                          (lambda (_code48174_
                                   _n48175_
                                   _phi48176_
                                   _phi-ctx48177_)
                            (let ((_code48180_
                                   (call-with-parameters
                                    (lambda ()
                                      (gxc#generate-runtime-phi _code48174_))
                                    gx#current-expander-context
                                    _phi-ctx48177_
                                    gx#current-expander-phi
                                    _phi48176_)))
                              (gxc#compile-scm-file__%
                               (gxc#compile-output-file
                                _ctx48145_
                                _n48175_
                                '".scm")
                               _code48180_
                               '#t)))))
                    (if (##pair? _part4815448167_)
                        (let ((_hd4815848185_ (##car _part4815448167_))
                              (_tl4815948187_ (##cdr _part4815448167_)))
                          (let ((_phi-ctx48190_ _hd4815848185_))
                            (if (##pair? _tl4815948187_)
                                (let ((_hd4816048192_ (##car _tl4815948187_))
                                      (_tl4816148194_ (##cdr _tl4815948187_)))
                                  (let ((_phi48197_ _hd4816048192_))
                                    (if (##pair? _tl4816148194_)
                                        (let ((_hd4816248199_
                                               (##car _tl4816148194_))
                                              (_tl4816348201_
                                               (##cdr _tl4816148194_)))
                                          (let ((_n48204_ _hd4816248199_))
                                            (if (##pair? _tl4816348201_)
                                                (let ((_hd4816448206_
                                                       (##car _tl4816348201_))
                                                      (_tl4816548208_
                                                       (##cdr _tl4816348201_)))
                                                  (let ((_code48211_
                                                         _hd4816448206_))
                                                    (if (##null? _tl4816548208_)
                                                        (_K4815748182_
                                                         _code48211_
                                                         _n48204_
                                                         _phi48197_
                                                         _phi-ctx48190_)
                                                        (_E4815648171_))))
                                                (_E4815648171_))))
                                        (_E4815648171_))))
                                (_E4815648171_))))
                        (_E4815648171_))))))
        (let ((_g48786_ (gxc#generate-meta-code _ctx48145_)))
          (begin
            (let ((_g48787_
                   (if (##values? _g48786_) (##vector-length _g48786_) 1)))
              (if (not (##fx= _g48787_ 2))
                  (error "Context expects 2 values" _g48787_)))
            (let ((_ssi-code48150_ (##vector-ref _g48786_ 0))
                  (_phi-code48151_ (##vector-ref _g48786_ 1)))
              (begin
                (_compile-ssi48147_ _ssi-code48150_)
                (for-each _compile-phi48148_ _phi-code48151_))))))))
  (define gxc#compile-ssxi-code
    (lambda (_ctx48128_)
      (let* ((_path48130_ (gxc#compile-output-file _ctx48128_ '#f '".ssxi.ss"))
             (_code48132_
              (gxc#apply-generate-ssxi
               (##structure-ref _ctx48128_ '11 gx#module-context::t '#f)))
             (_idstr48134_
              (symbol->string
               (##structure-ref _ctx48128_ '1 gx#expander-context::t '#f)))
             (_pkg48141_
              (let ((_$e48136_ (string-rindex _idstr48134_ '#\/)))
                (if _$e48136_
                    ((lambda (_x48139_)
                       (string->symbol (substring _idstr48134_ '0 _x48139_)))
                     _$e48136_)
                    '#f))))
        (begin
          (gxc#verbose '"compile " _path48130_)
          (with-output-to-file
           (cons 'path:
                 (cons _path48130_ (cons 'permissions: (cons '420 '()))))
           (lambda ()
             (begin
               (displayln '"prelude: :gerbil/compiler/ssxi")
               (if _pkg48141_ (displayln '"package: " _pkg48141_) '#!void)
               (newline)
               (pretty-print _code48132_))))))))
  (define gxc#generate-meta-code
    (lambda (_ctx48121_)
      (let* ((_state48123_
              (let ((__obj48779 (make-object gxc#meta-state::t '4)))
                (begin
                  (gxc#meta-state:::init! __obj48779 _ctx48121_)
                  __obj48779)))
             (_ssi-code48125_
              (gxc#apply-generate-meta
               (##structure-ref _ctx48121_ '11 gx#module-context::t '#f)
               _state48123_)))
        (values _ssi-code48125_ (gxc#meta-state-end! _state48123_)))))
  (define gxc#generate-runtime-phi
    (lambda (_stx48114_)
      (let ((_lifts48116_ (box '())))
        (call-with-parameters
         (lambda ()
           (let ((_code48119_ (gxc#apply-generate-runtime-phi _stx48114_)))
             (if (null? (unbox _lifts48116_))
                 _code48119_
                 (cons 'begin
                       (foldr1 cons
                               (cons _code48119_ '())
                               (reverse (unbox _lifts48116_)))))))
         gxc#current-compile-lift
         _lifts48116_
         gxc#current-compile-marks
         (make-hash-table-eq)
         gxc#current-compile-identifiers
         (gxc#make-bound-identifier-table)))))
  (define gxc#lift-nested-modules
    (lambda (_ctx48110_)
      (let ((_modules48112_ (box '())))
        (begin
          (gxc#apply-lift-modules
           (##structure-ref _ctx48110_ '11 gx#module-context::t '#f)
           _modules48112_)
          (reverse (unbox _modules48112_))))))
  (begin
    (define gxc#compile-scm-file__%
      (lambda (_path48093_ _code48094_ _phi?48095_)
        (begin
          (gxc#verbose '"compile " _path48093_)
          (with-output-to-file
           (cons 'path:
                 (cons _path48093_ (cons 'permissions: (cons '420 '()))))
           (lambda ()
             (begin
               (pretty-print
                (cons 'declare
                      (cons (cons 'block '())
                            (cons (cons 'standard-bindings '())
                                  (cons (cons 'extended-bindings '())
                                        (foldr1 cons
                                                '()
                                                (if _phi?48095_
                                                    '((inlining-limit 200))
                                                    '())))))))
               (pretty-print _code48094_))))
          (if (gxc#current-compile-invoke-gsc)
              (gxc#gsc-compile-file _path48093_)
              '#!void)
          (if (gxc#current-compile-keep-scm)
              '#!void
              (delete-file _path48093_)))))
    (begin
      (define gxc#compile-scm-file__0
        (lambda (_path48101_ _code48102_)
          (let ((_phi?48104_ '#f))
            (gxc#compile-scm-file__% _path48101_ _code48102_ _phi?48104_))))
      (define gxc#compile-scm-file
        (lambda _g48789_
          (let ((_g48788_ (length _g48789_)))
            (cond ((##fx= _g48788_ 2) (apply gxc#compile-scm-file__0 _g48789_))
                  ((##fx= _g48788_ 3) (apply gxc#compile-scm-file__% _g48789_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-scm-file
                    _g48789_))))))))
  (define gxc#gsc-debug-options
    (lambda ()
      (let ((_$e48081_ (gxc#current-compile-debug)))
        (if _$e48081_
            ((lambda (_debug48084_)
               (let ((_$e48086_ _debug48084_))
                 (if (eq? 'env _$e48086_)
                     (cons '"-debug-environments" '())
                     (if (eq? 'src _$e48086_)
                         (cons '"-debug-environments"
                               (cons '"-debug-source" '()))
                         (if (let ((_$e48089_ (eq? 'all _$e48086_)))
                               (if _$e48089_ _$e48089_ (eq? '#t _$e48086_)))
                             (cons '"-debug" '())
                             (gxc#raise-compile-error
                              '"unknown debug option"
                              _debug48084_))))))
             _$e48081_)
            '()))))
  (define gxc#gsc-compile-file
    (lambda (_path48063_)
      (let* ((_gsc-args48070_
              (let ((_$e48065_ (gxc#current-compile-gsc-options)))
                (if _$e48065_
                    ((lambda (_opts48068_)
                       (foldr1 cons (cons _path48063_ '()) _opts48068_))
                     _$e48065_)
                    (cons _path48063_ '()))))
             (_gsc-args48072_
              (foldr1 cons _gsc-args48070_ (gxc#gsc-debug-options)))
             (_g48790_
              (gxc#verbose '"invoke gsc " (cons 'gsc _gsc-args48072_)))
             (_proc48075_
              (open-process
               (cons 'path:
                     (cons '"gsc"
                           (cons 'arguments:
                                 (cons _gsc-args48072_
                                       (cons 'stdout-redirection:
                                             (cons '#f '()))))))))
             (_status48077_ (process-status _proc48075_)))
        (if (zero? _status48077_)
            '#!void
            (gxc#raise-compile-error
             '"Compilation error; gsc exit with nonzero status"
             _path48063_
             _status48077_)))))
  (define gxc#compile-output-file
    (lambda (_ctx48035_ _n48036_ _ext48037_)
      (letrec ((_module-relative-path48039_
                (lambda (_ctx48061_)
                  (path-strip-directory
                   (gxc#module-id->path-string
                    (##structure-ref
                     _ctx48061_
                     '1
                     gx#expander-context::t
                     '#f)))))
               (_module-source-directory48040_
                (lambda (_ctx48057_)
                  (path-directory
                   (let ((_mpath48059_
                          (##structure-ref
                           _ctx48057_
                           '7
                           gx#module-context::t
                           '#f)))
                     (if (string? _mpath48059_)
                         _mpath48059_
                         (last _mpath48059_))))))
               (_section-string48041_
                (lambda (_n48055_)
                  (if (number? _n48055_)
                      (number->string _n48055_)
                      (if (symbol? _n48055_)
                          (symbol->string _n48055_)
                          (if (string? _n48055_)
                              _n48055_
                              (gxc#raise-compile-error
                               '"Unexpected section"
                               _n48055_))))))
               (_file-name48042_
                (lambda (_path48053_)
                  (if _n48036_
                      (string-append
                       _path48053_
                       '"__"
                       (_section-string48041_ _n48036_)
                       _ext48037_)
                      (string-append _path48053_ _ext48037_))))
               (_file-path48043_
                (lambda ()
                  (let ((_$e48048_ (gxc#current-compile-output-dir)))
                    (if _$e48048_
                        ((lambda (_outdir48051_)
                           (path-expand
                            (_file-name48042_
                             (gxc#module-id->path-string
                              (##structure-ref
                               _ctx48035_
                               '1
                               gx#expander-context::t
                               '#f)))
                            _outdir48051_))
                         _$e48048_)
                        (path-expand
                         (_file-name48042_
                          (_module-relative-path48039_ _ctx48035_))
                         (_module-source-directory48040_ _ctx48035_)))))))
        (let ((_path48045_ (_file-path48043_)))
          (begin
            (create-directory* (path-directory _path48045_))
            _path48045_)))))
  (define gxc#compile-static-output-file
    (lambda (_ctx48018_)
      (letrec ((_file-name48020_
                (lambda (_id48033_)
                  (string-append (gxc#static-module-name _id48033_) '".scm")))
               (_file-path48021_
                (lambda ()
                  (let* ((_file48026_
                          (_file-name48020_
                           (##structure-ref
                            _ctx48018_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_$e48028_ (gxc#current-compile-output-dir)))
                    (if _$e48028_
                        ((lambda (_outdir48031_)
                           (path-expand
                            _file48026_
                            (path-expand '"static" _outdir48031_)))
                         _$e48028_)
                        (path-expand _file48026_ '"static"))))))
        (let ((_path48023_ (_file-path48021_)))
          (begin
            (create-directory* (path-directory _path48023_))
            _path48023_)))))
  (define gxc#compile-exe-output-file
    (lambda (_ctx48005_ _opts48006_)
      (let ((_$e48008_ (pgetq 'output-file: _opts48006_)))
        (if _$e48008_
            (values _$e48008_)
            (let* ((_mod-str48011_
                    (symbol->string
                     (##structure-ref
                      _ctx48005_
                      '1
                      gx#expander-context::t
                      '#f)))
                   (_$e48013_ (string-rindex _mod-str48011_ '#\/)))
              (if _$e48013_
                  ((lambda (_ix48016_)
                     (substring
                      _mod-str48011_
                      (fx+ _ix48016_ '1)
                      (string-length _mod-str48011_)))
                   _$e48013_)
                  _mod-str48011_))))))
  (define gxc#static-module-name
    (lambda (_idstr47998_)
      (if (string? _idstr47998_)
          (let* ((_str48000_ (gxc#module-id->path-string _idstr47998_))
                 (_strs48002_ (string-split _str48000_ '#\/)))
            (string-join _strs48002_ '"__"))
          (if (symbol? _idstr47998_)
              (gxc#static-module-name (symbol->string _idstr47998_))
              (error '"Bad module id" _idstr47998_))))))
