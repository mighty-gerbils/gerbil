(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#compile-timestamp
    (lambda () (inexact->exact (floor (time->seconds (current-time))))))
  (begin
    (define gxc#compile-file__%
      (lambda (_srcpath48814_ _opts48815_)
        (begin
          (if (string? _srcpath48814_)
              '#!void
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath48814_))
          (let ((_outdir48817_ (pgetq 'output-dir: _opts48815_))
                (_invoke-gsc?48818_ (pgetq 'invoke-gsc: _opts48815_))
                (_gsc-options48819_ (pgetq 'gsc-options: _opts48815_))
                (_keep-scm?48820_ (pgetq 'keep-scm: _opts48815_))
                (_verbosity48821_ (pgetq 'verbose: _opts48815_))
                (_optimize48822_ (pgetq 'optimize: _opts48815_))
                (_debug48823_ (pgetq 'debug: _opts48815_))
                (_gen-ssxi48824_ (pgetq 'generate-ssxi: _opts48815_))
                (_static48825_ (pgetq 'static: _opts48815_)))
            (begin
              (if _outdir48817_ (create-directory* _outdir48817_) '#!void)
              (if _optimize48822_ (gxc#optimizer-info-init!) '#!void)
              (call-with-parameters
               (lambda ()
                 (begin
                   (gxc#verbose '"compile " _srcpath48814_)
                   (gxc#compile-top-module
                    (gx#import-module__0 _srcpath48814_))))
               gxc#current-compile-output-dir
               _outdir48817_
               gxc#current-compile-invoke-gsc
               _invoke-gsc?48818_
               gxc#current-compile-gsc-options
               _gsc-options48819_
               gxc#current-compile-keep-scm
               _keep-scm?48820_
               gxc#current-compile-verbose
               _verbosity48821_
               gxc#current-compile-optimize
               _optimize48822_
               gxc#current-compile-debug
               _debug48823_
               gxc#current-compile-generate-ssxi
               _gen-ssxi48824_
               gxc#current-compile-static
               _static48825_
               gxc#current-compile-timestamp
               (gxc#compile-timestamp)))))))
    (begin
      (define gxc#compile-file__0
        (lambda (_srcpath48831_)
          (let ((_opts48833_ '()))
            (gxc#compile-file__% _srcpath48831_ _opts48833_))))
      (define gxc#compile-file
        (lambda _g48854_
          (let ((_g48853_ (length _g48854_)))
            (cond ((##fx= _g48853_ 1) (apply gxc#compile-file__0 _g48854_))
                  ((##fx= _g48853_ 2) (apply gxc#compile-file__% _g48854_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-file
                    _g48854_))))))))
  (begin
    (define gxc#compile-exe-stub__%
      (lambda (_srcpath48800_ _opts48801_)
        (gxc#do-compile-exe
         _srcpath48800_
         _opts48801_
         gxc#compile-exe-stub-module)))
    (begin
      (define gxc#compile-exe-stub__0
        (lambda (_srcpath48806_)
          (let ((_opts48808_ '()))
            (gxc#compile-exe-stub__% _srcpath48806_ _opts48808_))))
      (define gxc#compile-exe-stub
        (lambda _g48856_
          (let ((_g48855_ (length _g48856_)))
            (cond ((##fx= _g48855_ 1) (apply gxc#compile-exe-stub__0 _g48856_))
                  ((##fx= _g48855_ 2) (apply gxc#compile-exe-stub__% _g48856_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-exe-stub
                    _g48856_))))))))
  (begin
    (define gxc#compile-static-exe__%
      (lambda (_srcpath48786_ _opts48787_)
        (gxc#do-compile-exe
         _srcpath48786_
         _opts48787_
         gxc#compile-exe-static-module)))
    (begin
      (define gxc#compile-static-exe__0
        (lambda (_srcpath48792_)
          (let ((_opts48794_ '()))
            (gxc#compile-static-exe__% _srcpath48792_ _opts48794_))))
      (define gxc#compile-static-exe
        (lambda _g48858_
          (let ((_g48857_ (length _g48858_)))
            (cond ((##fx= _g48857_ 1)
                   (apply gxc#compile-static-exe__0 _g48858_))
                  ((##fx= _g48857_ 2)
                   (apply gxc#compile-static-exe__% _g48858_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-static-exe
                    _g48858_))))))))
  (define gxc#do-compile-exe
    (lambda (_srcpath48774_ _opts48775_ _compile-e48776_)
      (begin
        (if (string? _srcpath48774_)
            '#!void
            (gxc#raise-compile-error
             '"Invalid module source path"
             _srcpath48774_))
        (let ((_outdir48778_ (pgetq 'output-dir: _opts48775_))
              (_invoke-gsc?48779_ (pgetq 'invoke-gsc: _opts48775_))
              (_gsc-options48780_ (pgetq 'gsc-options: _opts48775_))
              (_keep-scm?48781_ (pgetq 'keep-scm: _opts48775_))
              (_verbosity48782_ (pgetq 'verbose: _opts48775_)))
          (begin
            (if _outdir48778_ (create-directory* _outdir48778_) '#!void)
            (call-with-parameters
             (lambda ()
               (begin
                 (gxc#verbose '"compile exe " _srcpath48774_)
                 (_compile-e48776_
                  (gx#import-module__0 _srcpath48774_)
                  _opts48775_)))
             gxc#current-compile-output-dir
             _outdir48778_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?48779_
             gxc#current-compile-gsc-options
             _gsc-options48780_
             gxc#current-compile-keep-scm
             _keep-scm?48781_
             gxc#current-compile-verbose
             _verbosity48782_
             gxc#current-compile-timestamp
             (gxc#compile-timestamp)))))))
  (define gxc#compile-exe-stub-module
    (lambda (_ctx48740_ _opts48741_)
      (letrec ((_generate-stub48743_
                (lambda (_gx-init-stub48765_)
                  (let* ((_mod-str48767_
                          (gxc#module-id->path-string
                           (##structure-ref
                            _ctx48740_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_mod-rt48769_ (string-append _mod-str48767_ '"__rt"))
                         (_mod-main48771_
                          (gxc#find-runtime-symbol _ctx48740_ 'main)))
                    (begin
                      (write '(##namespace ("")))
                      (newline)
                      (write (cons 'include (cons _gx-init-stub48765_ '())))
                      (newline)
                      (write (cons '_gx#start!
                                   (cons _mod-rt48769_
                                         (cons (cons 'quote
                                                     (cons _mod-main48771_
                                                           '()))
                                               '()))))
                      (newline)))))
               (_compile-stub48744_
                (lambda (_output-scm48751_ _output-bin48752_)
                  (let* ((_init-stub48754_
                          (path-expand
                           '"lib/gx-init-exe.scm"
                           (getenv '"GERBIL_HOME")))
                         (_gsc-args48756_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin48752_
                                            (cons _output-scm48751_ '()))))))
                    (begin
                      (with-output-to-file
                       _output-scm48751_
                       (lambda () (_generate-stub48743_ _init-stub48754_)))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (gxc#verbose
                             '"invoke gsc "
                             (cons 'gsc _gsc-args48756_))
                            (let* ((_proc48760_
                                    (open-process
                                     (cons 'path:
                                           (cons '"gsc"
                                                 (cons 'arguments:
                                                       (cons _gsc-args48756_
                                                             (cons 'stdout-redirection:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_status48762_
                                    (process-status _proc48760_)))
                              (if (zero? _status48762_)
                                  '#!void
                                  (gxc#raise-compile-error
                                   '"Compilation error; gsc exit with nonzero status"
                                   _output-scm48751_
                                   _output-bin48752_
                                   _status48762_))))
                          '#!void))))))
        (let* ((_output-bin48746_
                (gxc#compile-exe-output-file _ctx48740_ _opts48741_))
               (_output-scm48748_ (string-append _output-bin48746_ '".scm")))
          (begin
            (_compile-stub48744_ _output-scm48748_ _output-bin48746_)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm48748_)))))))
  (define gxc#compile-exe-static-module
    (lambda (_ctx48601_ _opts48602_)
      (letrec ((_reset-declare48604_
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
               (_user-declare48605_
                (lambda ()
                  (let* ((_gsc-opts48683_ (pgetq 'gsc-options: _opts48602_))
                         (_gsc-prelude48685_
                          (if _gsc-opts48683_
                              (member '"-prelude" _gsc-opts48683_)
                              '#f))
                         (_gsc-prelude48687_
                          (if _gsc-prelude48685_
                              (read (open-input-string
                                     (cadr _gsc-prelude48685_)))
                              '#f)))
                    (let _lift48690_ ((_expr48692_ _gsc-prelude48687_))
                      (let* ((_expr4869348705_ _expr48692_)
                             (_else4869648713_ (lambda () '#f)))
                        (let ((_K4870148733_ (lambda () _expr48692_))
                              (_K4869848719_
                               (lambda (_exprs48717_)
                                 (ormap1 _lift48690_ _exprs48717_))))
                          (if (##pair? _expr4869348705_)
                              (let ((_hd4870248736_ (##car _expr4869348705_)))
                                (if (##eq? _hd4870248736_ 'declare)
                                    (_K4870148733_)
                                    (let ((_tl4870048724_
                                           (##cdr _expr4869348705_)))
                                      (if (##eq? _hd4870248736_ 'begin)
                                          (let ((_exprs48727_ _tl4870048724_))
                                            (_K4869848719_ _exprs48727_))
                                          (_else4869648713_)))))
                              (_else4869648713_))))))))
               (_generate-stub48606_
                (lambda (_deps48674_)
                  (let ((_mod-main48676_
                         (gxc#find-runtime-symbol _ctx48601_ 'main))
                        (_reset-decl48677_ (_reset-declare48604_))
                        (_user-decl48678_ (_user-declare48605_)))
                    (begin
                      (write '(##namespace ("")))
                      (newline)
                      (write '(declare (optimize-dead-definitions)))
                      (newline)
                      (for-each
                       (lambda (_dep48680_)
                         (begin
                           (write (cons 'include (cons _dep48680_ '())))
                           (newline)
                           (write '(##namespace ("")))
                           (write _reset-decl48677_)
                           (if _user-decl48678_
                               (write _user-decl48678_)
                               '#!void)
                           (newline)))
                       _deps48674_)
                      (write (cons 'apply
                                   (cons _mod-main48676_
                                         (cons (cons 'cdr
                                                     (cons (cons 'command-line
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                      (newline)))))
               (_static-include48607_
                (lambda (_gsc-opts48657_ _home48658_)
                  (letrec* ((_static-dir48660_
                             (path-expand '"lib/static" _home48658_))
                            (_user-static-dir48661_
                             (path-expand
                              '"lib/static"
                              (getenv '"GERBIL_PATH" '"~/.gerbil")))
                            (_cppflags48662_
                             (string-append
                              '"-I "
                              _static-dir48660_
                              '" -I "
                              _user-static-dir48661_)))
                    (let ((_$e48664_ (member '"-cc-options" _gsc-opts48657_)))
                      (if _$e48664_
                          ((lambda (_rest48667_)
                             (let* ((_cell48669_ (cdr _rest48667_))
                                    (_opt48671_ (car _cell48669_)))
                               (begin
                                 (set-car!
                                  _cell48669_
                                  (string-append
                                   _opt48671_
                                   '" "
                                   _cppflags48662_))
                                 _gsc-opts48657_)))
                           _$e48664_)
                          (cons '"-cc-options"
                                (cons _cppflags48662_ _gsc-opts48657_)))))))
               (_compile-stub48608_
                (lambda (_output-scm48615_ _output-bin48616_)
                  (let* ((_gerbil-home48618_ (getenv '"GERBIL_HOME"))
                         (_gx-gambc048620_
                          (path-expand
                           '"lib/static/gx-gambc0.scm"
                           _gerbil-home48618_))
                         (_gx-gambc-init48622_
                          (path-expand
                           '"lib/gx-init-static-exe.scm"
                           _gerbil-home48618_))
                         (_gx-gambc-macros48624_
                          (path-expand
                           '"lib/static/gx-gambc#.scm"
                           _gerbil-home48618_))
                         (_include-gx-gambc-macros48626_
                          (string-append
                           '"(include \""
                           _gx-gambc-macros48624_
                           '"\")"))
                         (_bin-scm48628_
                          (gxc#find-static-module-file _ctx48601_))
                         (_deps48630_
                          (gxc#find-runtime-module-deps _ctx48601_))
                         (_deps48632_
                          (map gxc#find-static-module-file _deps48630_))
                         (_deps48637_
                          (filter (lambda (_$obj48634_)
                                    (not (gxc#file-empty? _$obj48634_)))
                                  _deps48632_))
                         (_gsc-opts48642_
                          (let ((_$e48639_ (pgetq 'gsc-options: _opts48602_)))
                            (if _$e48639_ _$e48639_ '())))
                         (_gsc-opts48644_
                          (_static-include48607_
                           _gsc-opts48642_
                           _gerbil-home48618_))
                         (_gsc-gx-macros48646_
                          (if (gerbil-runtime-smp?)
                              (cons '"-e"
                                    (cons '"(define-cond-expand-feature|enable-smp|)"
                                          (cons '"-e"
                                                (cons _include-gx-gambc-macros48626_
                                                      '()))))
                              (cons '"-e"
                                    (cons _include-gx-gambc-macros48626_
                                          '()))))
                         (_gsc-args48648_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin48616_
                                            (foldr1 cons
                                                    (foldr1 cons
                                                            (foldr1 cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _output-scm48615_ '())
                            _gsc-gx-macros48646_)
                    _gsc-opts48644_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gxc#gsc-debug-options)))))))
                    (begin
                      (with-output-to-file
                       _output-scm48615_
                       (lambda ()
                         (_generate-stub48606_
                          (cons _gx-gambc048620_
                                (cons _gx-gambc-init48622_
                                      (foldr1 cons
                                              (cons _bin-scm48628_ '())
                                              _deps48637_))))))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (gxc#verbose
                             '"invoke gsc "
                             (cons 'gsc _gsc-args48648_))
                            (let* ((_proc48652_
                                    (open-process
                                     (cons 'path:
                                           (cons '"gsc"
                                                 (cons 'arguments:
                                                       (cons _gsc-args48648_
                                                             (cons 'stdout-redirection:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_status48654_
                                    (process-status _proc48652_)))
                              (if (zero? _status48654_)
                                  '#!void
                                  (gxc#raise-compile-error
                                   '"Compilation error; gsc exit with nonzero status"
                                   _output-scm48615_
                                   _output-bin48616_
                                   _status48654_))))
                          '#!void))))))
        (let* ((_output-bin48610_
                (gxc#compile-exe-output-file _ctx48601_ _opts48602_))
               (_output-scm48612_ (string-append _output-bin48610_ '".scm")))
          (begin
            (_compile-stub48608_ _output-scm48612_ _output-bin48610_)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm48612_)))))))
  (define gxc#find-export-binding
    (lambda (_ctx48551_ _id48552_)
      (let ((_$e48598_
             (find (lambda (_e4855348555_)
                     (let* ((_g4855748567_ _e4855348555_)
                            (_else4855948575_ (lambda () '#f))
                            (_K4856148579_ (lambda () '#t)))
                       (if (##structure-direct-instance-of?
                            _g4855748567_
                            'gx#module-export::t)
                           (let* ((_e4856248582_
                                   (##vector-ref _g4855748567_ '1))
                                  (_e4856348585_
                                   (##vector-ref _g4855748567_ '2))
                                  (_e4856448588_
                                   (##vector-ref _g4855748567_ '3)))
                             (if (##eq? _e4856448588_ '0)
                                 (let ((_e4856548591_
                                        (##vector-ref _g4855748567_ '4)))
                                   (if ((lambda (_g4859348595_)
                                          (eq? _g4859348595_ _id48552_))
                                        _e4856548591_)
                                       (_K4856148579_)
                                       (_else4855948575_)))
                                 (_else4855948575_)))
                           (_else4855948575_))))
                   (##structure-ref _ctx48551_ '9 gx#module-context::t '#f))))
        (if _$e48598_ (gx#core-resolve-module-export _$e48598_) '#f))))
  (define gxc#find-runtime-symbol
    (lambda (_ctx48543_ _id48544_)
      (let ((_$e48546_ (gxc#find-export-binding _ctx48543_ _id48544_)))
        (if _$e48546_
            ((lambda (_bind48549_)
               (begin
                 (if (##structure-instance-of?
                      _bind48549_
                      'gx#runtime-binding::t)
                     '#!void
                     (gxc#raise-compile-error
                      '"export is not a runtime binding"
                      _id48544_))
                 (##structure-ref _bind48549_ '1 gx#binding::t '#f)))
             _$e48546_)
            (gxc#raise-compile-error
             '"module does not export symbol"
             (##structure-ref _ctx48543_ '1 gx#expander-context::t '#f)
             _id48544_)))))
  (define gxc#find-runtime-module-deps
    (lambda (_ctx48430_)
      (letrec* ((_ht48432_ (make-hash-table-eq))
                (_import-set-template48433_
                 (lambda (_in48495_ _phi48496_)
                   (let ((_iphi48498_
                          (fx+ _phi48496_
                               (##direct-structure-ref
                                _in48495_
                                '2
                                gx#import-set::t
                                '#f)))
                         (_imports48499_
                          (##structure-ref
                           (##direct-structure-ref
                            _in48495_
                            '1
                            gx#import-set::t
                            '#f)
                           '8
                           gx#module-context::t
                           '#f)))
                     (let _lp48501_ ((_rest48503_ _imports48499_)
                                     (_r48504_ '()))
                       (let* ((_rest4850548513_ _rest48503_)
                              (_else4850748521_ (lambda () _r48504_))
                              (_K4850948531_
                               (lambda (_rest48524_ _in48525_)
                                 (if (##structure-instance-of?
                                      _in48525_
                                      'gx#module-context::t)
                                     (if (fxzero? _iphi48498_)
                                         (_lp48501_
                                          _rest48524_
                                          (cons _in48525_ _r48504_))
                                         (_lp48501_ _rest48524_ _r48504_))
                                     (if (##structure-direct-instance-of?
                                          _in48525_
                                          'gx#module-import::t)
                                         (let ((_iphi48527_
                                                (fx+ _phi48496_
                                                     (##direct-structure-ref
                                                      _in48525_
                                                      '3
                                                      gx#module-import::t
                                                      '#f))))
                                           (if (fxzero? _iphi48527_)
                                               (_lp48501_
                                                _rest48524_
                                                (cons (##direct-structure-ref
                                                       (##direct-structure-ref
                                                        _in48525_
                                                        '1
                                                        gx#module-import::t
                                                        '#f)
                                                       '1
                                                       gx#module-export::t
                                                       '#f)
                                                      _r48504_))
                                               (_lp48501_
                                                _rest48524_
                                                _r48504_)))
                                         (if (##structure-direct-instance-of?
                                              _in48525_
                                              'gx#import-set::t)
                                             (let ((_xphi48529_
                                                    (fx+ _iphi48498_
                                                         (##direct-structure-ref
                                                          _in48525_
                                                          '2
                                                          gx#import-set::t
                                                          '#f))))
                                               (if (fxzero? _xphi48529_)
                                                   (_lp48501_
                                                    _rest48524_
                                                    (cons (##direct-structure-ref
                                                           _in48525_
                                                           '1
                                                           gx#import-set::t
                                                           '#f)
                                                          _r48504_))
                                                   (if (fxpositive?
                                                        _xphi48529_)
                                                       (_lp48501_
                                                        _rest48524_
                                                        (foldl1 cons
                                                                _r48504_
                                                                (_import-set-template48433_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in48525_
                         _iphi48498_)))
               (_lp48501_ _rest48524_ _r48504_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_lp48501_
                                              _rest48524_
                                              _r48504_)))))))
                         (if (##pair? _rest4850548513_)
                             (let ((_hd4851048534_ (##car _rest4850548513_))
                                   (_tl4851148536_ (##cdr _rest4850548513_)))
                               (let* ((_in48539_ _hd4851048534_)
                                      (_rest48541_ _tl4851148536_))
                                 (_K4850948531_ _rest48541_ _in48539_)))
                             (_else4850748521_)))))))
                (_find-deps48434_
                 (lambda (_rest48441_ _deps48442_)
                   (let* ((_rest4844348451_ _rest48441_)
                          (_else4844548459_ (lambda () _deps48442_))
                          (_K4844748483_
                           (lambda (_rest48462_ _hd48463_)
                             (if (##structure-instance-of?
                                  _hd48463_
                                  'gx#module-context::t)
                                 (let ((_id48465_
                                        (##structure-ref
                                         _hd48463_
                                         '1
                                         gx#expander-context::t
                                         '#f))
                                       (_imports48466_
                                        (##structure-ref
                                         _hd48463_
                                         '8
                                         gx#module-context::t
                                         '#f)))
                                   (if (table-ref _ht48432_ _id48465_ '#f)
                                       (_find-deps48434_
                                        _rest48462_
                                        _deps48442_)
                                       (let ((_$e48468_
                                              (gx#core-context-prelude__%
                                               _hd48463_)))
                                         (if _$e48468_
                                             ((lambda (_pre48471_)
                                                (let ((_xdeps48473_
                                                       (_find-deps48434_
                                                        (cons _pre48471_
                                                              _imports48466_)
                                                        _deps48442_)))
                                                  (begin
                                                    (table-set!
                                                     _ht48432_
                                                     _id48465_
                                                     _hd48463_)
                                                    (_find-deps48434_
                                                     _rest48462_
                                                     (cons _hd48463_
                                                           _xdeps48473_)))))
                                              _$e48468_)
                                             (let ((_xdeps48475_
                                                    (_find-deps48434_
                                                     _imports48466_
                                                     _deps48442_)))
                                               (begin
                                                 (table-set!
                                                  _ht48432_
                                                  _id48465_
                                                  _hd48463_)
                                                 (_find-deps48434_
                                                  _rest48462_
                                                  (cons _hd48463_
                                                        _xdeps48475_))))))))
                                 (if (##structure-instance-of?
                                      _hd48463_
                                      'gx#prelude-context::t)
                                     (let ((_id48477_
                                            (##structure-ref
                                             _hd48463_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (if (table-ref _ht48432_ _id48477_ '#f)
                                           (_find-deps48434_
                                            _rest48462_
                                            _deps48442_)
                                           (let ((_xdeps48479_
                                                  (_find-deps48434_
                                                   (##structure-ref
                                                    _hd48463_
                                                    '7
                                                    gx#prelude-context::t
                                                    '#f)
                                                   _deps48442_)))
                                             (if (table-ref
                                                  _ht48432_
                                                  _id48477_
                                                  '#f)
                                                 (_find-deps48434_
                                                  _rest48462_
                                                  _xdeps48479_)
                                                 (begin
                                                   (table-set!
                                                    _ht48432_
                                                    _id48477_
                                                    _hd48463_)
                                                   (_find-deps48434_
                                                    _rest48462_
                                                    (cons _hd48463_
                                                          _xdeps48479_)))))))
                                     (if (##structure-direct-instance-of?
                                          _hd48463_
                                          'gx#module-import::t)
                                         (if (fxzero? (##direct-structure-ref
                                                       _hd48463_
                                                       '3
                                                       gx#module-import::t
                                                       '#f))
                                             (_find-deps48434_
                                              (cons (##direct-structure-ref
                                                     _hd48463_
                                                     '1
                                                     gx#module-import::t
                                                     '#f)
                                                    _rest48462_)
                                              _deps48442_)
                                             (_find-deps48434_
                                              _rest48462_
                                              _deps48442_))
                                         (if (##structure-direct-instance-of?
                                              _hd48463_
                                              'gx#module-export::t)
                                             (_find-deps48434_
                                              (cons (##direct-structure-ref
                                                     _hd48463_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)
                                                    _rest48462_)
                                              _deps48442_)
                                             (if (##structure-direct-instance-of?
                                                  _hd48463_
                                                  'gx#import-set::t)
                                                 (if (fxzero? (##direct-structure-ref
                                                               _hd48463_
                                                               '2
                                                               gx#import-set::t
                                                               '#f))
                                                     (_find-deps48434_
                                                      (cons (##direct-structure-ref
                                                             _hd48463_
                                                             '1
                                                             gx#import-set::t
                                                             '#f)
                                                            _rest48462_)
                                                      _deps48442_)
                                                     (if (fxpositive?
                                                          (##direct-structure-ref
                                                           _hd48463_
                                                           '2
                                                           gx#import-set::t
                                                           '#f))
                                                         (let ((_xdeps48481_
                                                                (_import-set-template48433_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd48463_
                         '0)))
                   (_find-deps48434_
                    (foldl1 cons _rest48462_ _xdeps48481_)
                    _deps48442_))
                 (_find-deps48434_ _rest48462_ _deps48442_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (error '"Unexpected module import"
                                                        _hd48463_)))))))))
                     (if (##pair? _rest4844348451_)
                         (let ((_hd4844848486_ (##car _rest4844348451_))
                               (_tl4844948488_ (##cdr _rest4844348451_)))
                           (let* ((_hd48491_ _hd4844848486_)
                                  (_rest48493_ _tl4844948488_))
                             (_K4844748483_ _rest48493_ _hd48491_)))
                         (_else4844548459_))))))
        (reverse (filter gx#expander-context-id
                         (_find-deps48434_
                          (let ((_$e48436_
                                 (gx#core-context-prelude__% _ctx48430_)))
                            (if _$e48436_
                                ((lambda (_pre48439_)
                                   (cons _pre48439_
                                         (##structure-ref
                                          _ctx48430_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _$e48436_)
                                (##structure-ref
                                 _ctx48430_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))))
  (define gxc#find-static-module-file
    (lambda (_ctx48369_)
      (let* ((_scm48371_
              (string-append
               (gxc#static-module-name
                (##structure-ref _ctx48369_ '1 gx#expander-context::t '#f))
               '".scm"))
             (_dirs48373_ (gx#current-expander-module-library-path))
             (_dirs48382_
              (let ((_$e48375_ (gxc#current-compile-output-dir)))
                (if _$e48375_
                    ((lambda (_g4837748379_) (cons _g4837748379_ _dirs48373_))
                     _$e48375_)
                    _dirs48373_)))
             (_dirs48388_
              (map (lambda (_g4838348385_)
                     (path-expand '"static" _g4838348385_))
                   _dirs48382_)))
        (let _lp48391_ ((_rest48393_ _dirs48388_))
          (let* ((_rest4839448402_ _rest48393_)
                 (_else4839648410_
                  (lambda ()
                    (gxc#raise-compile-error
                     '"cannot find static module"
                     (##structure-ref _ctx48369_ '1 gx#expander-context::t '#f)
                     _scm48371_)))
                 (_K4839848418_
                  (lambda (_rest48413_ _dir48414_)
                    (let ((_path48416_ (path-expand _scm48371_ _dir48414_)))
                      (if (file-exists? _path48416_)
                          _path48416_
                          (_lp48391_ _rest48413_))))))
            (if (##pair? _rest4839448402_)
                (let ((_hd4839948421_ (##car _rest4839448402_))
                      (_tl4840048423_ (##cdr _rest4839448402_)))
                  (let* ((_dir48426_ _hd4839948421_)
                         (_rest48428_ _tl4840048423_))
                    (_K4839848418_ _rest48428_ _dir48426_)))
                (_else4839648410_)))))))
  (define gxc#file-empty?
    (lambda (_path48367_)
      (zero? (file-info-size (file-info _path48367_ '#t)))))
  (define gxc#compile-top-module
    (lambda (_ctx48364_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#verbose
            '"compile "
            (##structure-ref _ctx48364_ '1 gx#expander-context::t '#f))
           (if (gxc#current-compile-optimize)
               (gxc#optimize! _ctx48364_)
               '#!void)
           (gxc#collect-bindings _ctx48364_)
           (gxc#compile-runtime-code _ctx48364_)
           (gxc#compile-meta-code _ctx48364_)
           (if (if (gxc#current-compile-optimize)
                   (gxc#current-compile-generate-ssxi)
                   '#f)
               (gxc#compile-ssxi-code _ctx48364_)
               '#!void)))
       gx#current-expander-context
       _ctx48364_
       gx#current-expander-phi
       '0
       gx#current-expander-marks
       '()
       gxc#current-compile-symbol-table
       (let ((__obj48851 (make-object gxc#symbol-table::t '2)))
         (begin (gxc#symbol-table:::init! __obj48851) __obj48851))
       gxc#current-compile-runtime-sections
       (make-hash-table-eq)
       gxc#current-compile-runtime-names
       (make-table))))
  (define gxc#collect-bindings
    (lambda (_ctx48362_)
      (gxc#apply-collect-bindings
       (##structure-ref _ctx48362_ '11 gx#module-context::t '#f))))
  (define gxc#compile-runtime-code
    (lambda (_ctx48316_)
      (letrec ((_compile148318_
                (lambda (_ctx48351_)
                  (let* ((_code48353_
                          (##structure-ref
                           _ctx48351_
                           '11
                           gx#module-context::t
                           '#f))
                         (_rt48357_
                          (if (gxc#apply-find-runtime-code _code48353_)
                              (let ((_idstr48355_
                                     (gxc#module-id->path-string
                                      (##structure-ref
                                       _ctx48351_
                                       '1
                                       gx#expander-context::t
                                       '#f))))
                                (string-append _idstr48355_ '"__0"))
                              '#f)))
                    (begin
                      (if _rt48357_
                          (begin
                            (table-set!
                             (gxc#current-compile-runtime-sections)
                             _ctx48351_
                             _rt48357_)
                            (_generate-runtime-code48319_
                             _ctx48351_
                             _code48353_))
                          (if (gxc#current-compile-static)
                              (let ((_path48360_
                                     (gxc#compile-static-output-file
                                      _ctx48351_)))
                                (with-output-to-file
                                 (cons 'path:
                                       (cons _path48360_
                                             (cons 'permissions:
                                                   (cons '420 '()))))
                                 void))
                              '#!void))
                      (_generate-loader-code48320_
                       _ctx48351_
                       _code48353_
                       _rt48357_)))))
               (_generate-runtime-code48319_
                (lambda (_ctx48335_ _code48336_)
                  (let* ((_lifts48338_ (box '()))
                         (_runtime-code48341_
                          (call-with-parameters
                           (lambda () (gxc#apply-generate-runtime _code48336_))
                           gx#current-expander-context
                           _ctx48335_
                           gx#current-expander-phi
                           '0
                           gxc#current-compile-lift
                           _lifts48338_
                           gxc#current-compile-marks
                           (make-hash-table-eq)
                           gxc#current-compile-identifiers
                           (gxc#make-bound-identifier-table)))
                         (_runtime-code48343_
                          (if (null? (unbox _lifts48338_))
                              _runtime-code48341_
                              (cons 'begin
                                    (foldr1 cons
                                            (cons _runtime-code48341_ '())
                                            (reverse (unbox _lifts48338_))))))
                         (_scm048345_
                          (gxc#compile-output-file _ctx48335_ '0 '".scm")))
                    (if (gxc#current-compile-static)
                        (let ((_scms48348_
                               (gxc#compile-static-output-file _ctx48335_)))
                          (begin
                            (call-with-parameters
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _scm048345_
                                _runtime-code48343_))
                             gxc#current-compile-keep-scm
                             '#t)
                            (if (file-exists? _scms48348_)
                                (delete-file _scms48348_)
                                '#!void)
                            (gxc#verbose
                             '"copy static module "
                             _scm048345_
                             '" => "
                             _scms48348_)
                            (copy-file _scm048345_ _scms48348_)
                            (if (gxc#current-compile-keep-scm)
                                '#!void
                                (delete-file _scm048345_))))
                        (gxc#compile-scm-file__0
                         _scm048345_
                         _runtime-code48343_)))))
               (_generate-loader-code48320_
                (lambda (_ctx48324_ _code48325_ _rt48326_)
                  (let* ((_loader-code48329_
                          (call-with-parameters
                           (lambda () (gxc#apply-generate-loader _code48325_))
                           gx#current-expander-context
                           _ctx48324_))
                         (_loader-code48331_
                          (if _rt48326_
                              (cons 'begin
                                    (cons _loader-code48329_
                                          (cons (cons 'load-module
                                                      (cons _rt48326_ '()))
                                                '())))
                              _loader-code48329_)))
                    (call-with-parameters
                     (lambda ()
                       (gxc#compile-scm-file__0
                        (gxc#compile-output-file _ctx48324_ 'rt '".scm")
                        _loader-code48331_))
                     gxc#current-compile-gsc-options
                     '#f)))))
        (let ((_all-modules48322_
               (cons _ctx48316_ (gxc#lift-nested-modules _ctx48316_))))
          (for-each _compile148318_ _all-modules48322_)))))
  (define gxc#compile-meta-code
    (lambda (_ctx48218_)
      (letrec ((_compile-ssi48220_
                (lambda (_code48286_)
                  (let* ((_path48288_
                          (gxc#compile-output-file _ctx48218_ '#f '".ssi"))
                         (_prelude48299_
                          (let* ((_super48290_
                                  (##structure-ref
                                   _ctx48218_
                                   '3
                                   gx#phi-context::t
                                   '#f))
                                 (_$e48292_
                                  (##structure-ref
                                   _super48290_
                                   '1
                                   gx#expander-context::t
                                   '#f)))
                            (if _$e48292_
                                ((lambda (_g4829448296_)
                                   (make-symbol '":" _g4829448296_))
                                 _$e48292_)
                                ':<root>)))
                         (_ns48301_
                          (##structure-ref
                           _ctx48218_
                           '6
                           gx#module-context::t
                           '#f))
                         (_idstr48303_
                          (symbol->string
                           (##structure-ref
                            _ctx48218_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_pkg48310_
                          (let ((_$e48305_ (string-rindex _idstr48303_ '#\/)))
                            (if _$e48305_
                                ((lambda (_x48308_)
                                   (string->symbol
                                    (substring _idstr48303_ '0 _x48308_)))
                                 _$e48305_)
                                '#f)))
                         (_rt48312_
                          (table-ref
                           (gxc#current-compile-runtime-sections)
                           _ctx48218_
                           '#f)))
                    (begin
                      (gxc#verbose '"compile " _path48288_)
                      (with-output-to-file
                       (cons 'path:
                             (cons _path48288_
                                   (cons 'permissions: (cons '420 '()))))
                       (lambda ()
                         (begin
                           (displayln '"prelude:" '" " _prelude48299_)
                           (if _pkg48310_
                               (displayln '"package:" '" " _pkg48310_)
                               '#!void)
                           (displayln '"namespace:" '" " _ns48301_)
                           (newline)
                           (pretty-print _code48286_)
                           (if _rt48312_
                               (pretty-print
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons '_gx#load-module '()))
                                            (cons (cons '%#quote
                                                        (cons _rt48312_ '()))
                                                  '()))))
                               '#!void))))))))
               (_compile-phi48221_
                (lambda (_part48226_)
                  (let* ((_part4822748240_ _part48226_)
                         (_E4822948244_
                          (lambda ()
                            (error '"No clause matching" _part4822748240_)))
                         (_K4823048255_
                          (lambda (_code48247_
                                   _n48248_
                                   _phi48249_
                                   _phi-ctx48250_)
                            (let ((_code48253_
                                   (call-with-parameters
                                    (lambda ()
                                      (gxc#generate-runtime-phi _code48247_))
                                    gx#current-expander-context
                                    _phi-ctx48250_
                                    gx#current-expander-phi
                                    _phi48249_)))
                              (gxc#compile-scm-file__%
                               (gxc#compile-output-file
                                _ctx48218_
                                _n48248_
                                '".scm")
                               _code48253_
                               '#t)))))
                    (if (##pair? _part4822748240_)
                        (let ((_hd4823148258_ (##car _part4822748240_))
                              (_tl4823248260_ (##cdr _part4822748240_)))
                          (let ((_phi-ctx48263_ _hd4823148258_))
                            (if (##pair? _tl4823248260_)
                                (let ((_hd4823348265_ (##car _tl4823248260_))
                                      (_tl4823448267_ (##cdr _tl4823248260_)))
                                  (let ((_phi48270_ _hd4823348265_))
                                    (if (##pair? _tl4823448267_)
                                        (let ((_hd4823548272_
                                               (##car _tl4823448267_))
                                              (_tl4823648274_
                                               (##cdr _tl4823448267_)))
                                          (let ((_n48277_ _hd4823548272_))
                                            (if (##pair? _tl4823648274_)
                                                (let ((_hd4823748279_
                                                       (##car _tl4823648274_))
                                                      (_tl4823848281_
                                                       (##cdr _tl4823648274_)))
                                                  (let ((_code48284_
                                                         _hd4823748279_))
                                                    (if (##null? _tl4823848281_)
                                                        (_K4823048255_
                                                         _code48284_
                                                         _n48277_
                                                         _phi48270_
                                                         _phi-ctx48263_)
                                                        (_E4822948244_))))
                                                (_E4822948244_))))
                                        (_E4822948244_))))
                                (_E4822948244_))))
                        (_E4822948244_))))))
        (let ((_g48859_ (gxc#generate-meta-code _ctx48218_)))
          (begin
            (let ((_g48860_
                   (if (##values? _g48859_) (##vector-length _g48859_) 1)))
              (if (not (##fx= _g48860_ 2))
                  (error "Context expects 2 values" _g48860_)))
            (let ((_ssi-code48223_ (##vector-ref _g48859_ 0))
                  (_phi-code48224_ (##vector-ref _g48859_ 1)))
              (begin
                (_compile-ssi48220_ _ssi-code48223_)
                (for-each _compile-phi48221_ _phi-code48224_))))))))
  (define gxc#compile-ssxi-code
    (lambda (_ctx48201_)
      (let* ((_path48203_ (gxc#compile-output-file _ctx48201_ '#f '".ssxi.ss"))
             (_code48205_
              (gxc#apply-generate-ssxi
               (##structure-ref _ctx48201_ '11 gx#module-context::t '#f)))
             (_idstr48207_
              (symbol->string
               (##structure-ref _ctx48201_ '1 gx#expander-context::t '#f)))
             (_pkg48214_
              (let ((_$e48209_ (string-rindex _idstr48207_ '#\/)))
                (if _$e48209_
                    ((lambda (_x48212_)
                       (string->symbol (substring _idstr48207_ '0 _x48212_)))
                     _$e48209_)
                    '#f))))
        (begin
          (gxc#verbose '"compile " _path48203_)
          (with-output-to-file
           (cons 'path:
                 (cons _path48203_ (cons 'permissions: (cons '420 '()))))
           (lambda ()
             (begin
               (displayln '"prelude: :gerbil/compiler/ssxi")
               (if _pkg48214_ (displayln '"package: " _pkg48214_) '#!void)
               (newline)
               (pretty-print _code48205_))))))))
  (define gxc#generate-meta-code
    (lambda (_ctx48194_)
      (let* ((_state48196_
              (let ((__obj48852 (make-object gxc#meta-state::t '4)))
                (begin
                  (gxc#meta-state:::init! __obj48852 _ctx48194_)
                  __obj48852)))
             (_ssi-code48198_
              (gxc#apply-generate-meta
               (##structure-ref _ctx48194_ '11 gx#module-context::t '#f)
               _state48196_)))
        (values _ssi-code48198_ (gxc#meta-state-end! _state48196_)))))
  (define gxc#generate-runtime-phi
    (lambda (_stx48187_)
      (let ((_lifts48189_ (box '())))
        (call-with-parameters
         (lambda ()
           (let ((_code48192_ (gxc#apply-generate-runtime-phi _stx48187_)))
             (if (null? (unbox _lifts48189_))
                 _code48192_
                 (cons 'begin
                       (foldr1 cons
                               (cons _code48192_ '())
                               (reverse (unbox _lifts48189_)))))))
         gxc#current-compile-lift
         _lifts48189_
         gxc#current-compile-marks
         (make-hash-table-eq)
         gxc#current-compile-identifiers
         (gxc#make-bound-identifier-table)))))
  (define gxc#lift-nested-modules
    (lambda (_ctx48183_)
      (let ((_modules48185_ (box '())))
        (begin
          (gxc#apply-lift-modules
           (##structure-ref _ctx48183_ '11 gx#module-context::t '#f)
           _modules48185_)
          (reverse (unbox _modules48185_))))))
  (begin
    (define gxc#compile-scm-file__%
      (lambda (_path48166_ _code48167_ _phi?48168_)
        (begin
          (gxc#verbose '"compile " _path48166_)
          (with-output-to-file
           (cons 'path:
                 (cons _path48166_ (cons 'permissions: (cons '420 '()))))
           (lambda ()
             (begin
               (pretty-print
                (cons 'declare
                      (cons (cons 'block '())
                            (cons (cons 'standard-bindings '())
                                  (cons (cons 'extended-bindings '())
                                        (foldr1 cons
                                                '()
                                                (if _phi?48168_
                                                    '((inlining-limit 200))
                                                    '())))))))
               (pretty-print _code48167_))))
          (if (gxc#current-compile-invoke-gsc)
              (gxc#gsc-compile-file _path48166_ _phi?48168_)
              '#!void)
          (if (gxc#current-compile-keep-scm)
              '#!void
              (delete-file _path48166_)))))
    (begin
      (define gxc#compile-scm-file__0
        (lambda (_path48174_ _code48175_)
          (let ((_phi?48177_ '#f))
            (gxc#compile-scm-file__% _path48174_ _code48175_ _phi?48177_))))
      (define gxc#compile-scm-file
        (lambda _g48862_
          (let ((_g48861_ (length _g48862_)))
            (cond ((##fx= _g48861_ 2) (apply gxc#compile-scm-file__0 _g48862_))
                  ((##fx= _g48861_ 3) (apply gxc#compile-scm-file__% _g48862_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-scm-file
                    _g48862_))))))))
  (define gxc#gsc-debug-options
    (lambda (_phi?48081_)
      (let ((_$e48154_ (gxc#current-compile-debug)))
        (if _$e48154_
            ((lambda (_debug48157_)
               (let ((_$e48159_ _debug48157_))
                 (if (eq? 'env _$e48159_)
                     (if _phi?48081_ '() (cons '"-debug-environments" '()))
                     (if (eq? 'env/phi _$e48159_)
                         (cons '"-debug-environments" '())
                         (if (eq? 'src _$e48159_)
                             (if _phi?48081_
                                 '()
                                 (cons '"-debug-environments"
                                       (cons '"-debug-source" '())))
                             (if (eq? 'src/phi _$e48159_)
                                 (cons '"-debug-environments"
                                       (cons '"-debug-source" '()))
                                 (if (eq? 'all _$e48159_)
                                     (if _phi?48081_ '() (cons '"-debug" '()))
                                     (if (let ((_$e48162_
                                                (eq? 'all/phi _$e48159_)))
                                           (if _$e48162_
                                               _$e48162_
                                               (eq? '#t _$e48159_)))
                                         (cons '"-debug" '())
                                         (gxc#raise-compile-error
                                          '"unknown debug option"
                                          _debug48157_)))))))))
             _$e48154_)
            '()))))
  (define gxc#gsc-compile-file
    (lambda (_path48063_ _phi?48064_)
      (let* ((_gsc-args48071_
              (let ((_$e48066_
                     (if (not _phi?48064_)
                         (gxc#current-compile-gsc-options)
                         '#f)))
                (if _$e48066_
                    ((lambda (_opts48069_)
                       (foldr1 cons (cons _path48063_ '()) _opts48069_))
                     _$e48066_)
                    (cons _path48063_ '()))))
             (_gsc-args48073_
              (foldr1 cons
                      _gsc-args48071_
                      (gxc#gsc-debug-options _phi?48064_)))
             (_g48863_
              (gxc#verbose '"invoke gsc " (cons 'gsc _gsc-args48073_)))
             (_proc48076_
              (open-process
               (cons 'path:
                     (cons '"gsc"
                           (cons 'arguments:
                                 (cons _gsc-args48073_
                                       (cons 'stdout-redirection:
                                             (cons '#f '()))))))))
             (_status48078_ (process-status _proc48076_)))
        (if (zero? _status48078_)
            '#!void
            (gxc#raise-compile-error
             '"Compilation error; gsc exit with nonzero status"
             _path48063_
             _status48078_)))))
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
