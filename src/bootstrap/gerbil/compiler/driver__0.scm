(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#compile-timestamp
    (lambda () (inexact->exact (floor (time->seconds (current-time))))))
  (begin
    (define gxc#compile-file__%
      (lambda (_srcpath48823_ _opts48824_)
        (begin
          (if (string? _srcpath48823_)
              '#!void
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath48823_))
          (let ((_outdir48826_ (pgetq 'output-dir: _opts48824_))
                (_invoke-gsc?48827_ (pgetq 'invoke-gsc: _opts48824_))
                (_gsc-options48828_ (pgetq 'gsc-options: _opts48824_))
                (_keep-scm?48829_ (pgetq 'keep-scm: _opts48824_))
                (_verbosity48830_ (pgetq 'verbose: _opts48824_))
                (_optimize48831_ (pgetq 'optimize: _opts48824_))
                (_debug48832_ (pgetq 'debug: _opts48824_))
                (_gen-ssxi48833_ (pgetq 'generate-ssxi: _opts48824_))
                (_static48834_ (pgetq 'static: _opts48824_)))
            (begin
              (if _outdir48826_ (create-directory* _outdir48826_) '#!void)
              (if _optimize48831_ (gxc#optimizer-info-init!) '#!void)
              (call-with-parameters
               (lambda ()
                 (begin
                   (gxc#verbose '"compile " _srcpath48823_)
                   (gxc#compile-top-module
                    (gx#import-module__0 _srcpath48823_))))
               gxc#current-compile-output-dir
               _outdir48826_
               gxc#current-compile-invoke-gsc
               _invoke-gsc?48827_
               gxc#current-compile-gsc-options
               _gsc-options48828_
               gxc#current-compile-keep-scm
               _keep-scm?48829_
               gxc#current-compile-verbose
               _verbosity48830_
               gxc#current-compile-optimize
               _optimize48831_
               gxc#current-compile-debug
               _debug48832_
               gxc#current-compile-generate-ssxi
               _gen-ssxi48833_
               gxc#current-compile-static
               _static48834_
               gxc#current-compile-timestamp
               (gxc#compile-timestamp)))))))
    (begin
      (define gxc#compile-file__0
        (lambda (_srcpath48840_)
          (let ((_opts48842_ '()))
            (gxc#compile-file__% _srcpath48840_ _opts48842_))))
      (define gxc#compile-file
        (lambda _g48863_
          (let ((_g48862_ (length _g48863_)))
            (cond ((##fx= _g48862_ 1) (apply gxc#compile-file__0 _g48863_))
                  ((##fx= _g48862_ 2) (apply gxc#compile-file__% _g48863_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-file
                    _g48863_))))))))
  (begin
    (define gxc#compile-exe-stub__%
      (lambda (_srcpath48809_ _opts48810_)
        (gxc#do-compile-exe
         _srcpath48809_
         _opts48810_
         gxc#compile-exe-stub-module)))
    (begin
      (define gxc#compile-exe-stub__0
        (lambda (_srcpath48815_)
          (let ((_opts48817_ '()))
            (gxc#compile-exe-stub__% _srcpath48815_ _opts48817_))))
      (define gxc#compile-exe-stub
        (lambda _g48865_
          (let ((_g48864_ (length _g48865_)))
            (cond ((##fx= _g48864_ 1) (apply gxc#compile-exe-stub__0 _g48865_))
                  ((##fx= _g48864_ 2) (apply gxc#compile-exe-stub__% _g48865_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-exe-stub
                    _g48865_))))))))
  (begin
    (define gxc#compile-static-exe__%
      (lambda (_srcpath48795_ _opts48796_)
        (gxc#do-compile-exe
         _srcpath48795_
         _opts48796_
         gxc#compile-exe-static-module)))
    (begin
      (define gxc#compile-static-exe__0
        (lambda (_srcpath48801_)
          (let ((_opts48803_ '()))
            (gxc#compile-static-exe__% _srcpath48801_ _opts48803_))))
      (define gxc#compile-static-exe
        (lambda _g48867_
          (let ((_g48866_ (length _g48867_)))
            (cond ((##fx= _g48866_ 1)
                   (apply gxc#compile-static-exe__0 _g48867_))
                  ((##fx= _g48866_ 2)
                   (apply gxc#compile-static-exe__% _g48867_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-static-exe
                    _g48867_))))))))
  (define gxc#do-compile-exe
    (lambda (_srcpath48783_ _opts48784_ _compile-e48785_)
      (begin
        (if (string? _srcpath48783_)
            '#!void
            (gxc#raise-compile-error
             '"Invalid module source path"
             _srcpath48783_))
        (let ((_outdir48787_ (pgetq 'output-dir: _opts48784_))
              (_invoke-gsc?48788_ (pgetq 'invoke-gsc: _opts48784_))
              (_gsc-options48789_ (pgetq 'gsc-options: _opts48784_))
              (_keep-scm?48790_ (pgetq 'keep-scm: _opts48784_))
              (_verbosity48791_ (pgetq 'verbose: _opts48784_)))
          (begin
            (if _outdir48787_ (create-directory* _outdir48787_) '#!void)
            (call-with-parameters
             (lambda ()
               (begin
                 (gxc#verbose '"compile exe " _srcpath48783_)
                 (_compile-e48785_
                  (gx#import-module__0 _srcpath48783_)
                  _opts48784_)))
             gxc#current-compile-output-dir
             _outdir48787_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?48788_
             gxc#current-compile-gsc-options
             _gsc-options48789_
             gxc#current-compile-keep-scm
             _keep-scm?48790_
             gxc#current-compile-verbose
             _verbosity48791_
             gxc#current-compile-timestamp
             (gxc#compile-timestamp)))))))
  (define gxc#compile-exe-stub-module
    (lambda (_ctx48749_ _opts48750_)
      (letrec ((_generate-stub48752_
                (lambda (_gx-init-stub48774_)
                  (let* ((_mod-str48776_
                          (gxc#module-id->path-string
                           (##structure-ref
                            _ctx48749_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_mod-rt48778_ (string-append _mod-str48776_ '"__rt"))
                         (_mod-main48780_
                          (gxc#find-runtime-symbol _ctx48749_ 'main)))
                    (begin
                      (write '(##namespace ("")))
                      (newline)
                      (write (cons 'include (cons _gx-init-stub48774_ '())))
                      (newline)
                      (write (cons '_gx#start!
                                   (cons _mod-rt48778_
                                         (cons (cons 'quote
                                                     (cons _mod-main48780_
                                                           '()))
                                               '()))))
                      (newline)))))
               (_compile-stub48753_
                (lambda (_output-scm48760_ _output-bin48761_)
                  (let* ((_init-stub48763_
                          (path-expand
                           '"lib/gx-init-exe.scm"
                           (getenv '"GERBIL_HOME")))
                         (_gsc-args48765_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin48761_
                                            (cons _output-scm48760_ '()))))))
                    (begin
                      (with-output-to-file
                       _output-scm48760_
                       (lambda () (_generate-stub48752_ _init-stub48763_)))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (gxc#verbose
                             '"invoke gsc "
                             (cons 'gsc _gsc-args48765_))
                            (let* ((_proc48769_
                                    (open-process
                                     (cons 'path:
                                           (cons '"gsc"
                                                 (cons 'arguments:
                                                       (cons _gsc-args48765_
                                                             (cons 'stdout-redirection:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_status48771_
                                    (process-status _proc48769_)))
                              (if (zero? _status48771_)
                                  '#!void
                                  (gxc#raise-compile-error
                                   '"Compilation error; gsc exit with nonzero status"
                                   _output-scm48760_
                                   _output-bin48761_
                                   _status48771_))))
                          '#!void))))))
        (let* ((_output-bin48755_
                (gxc#compile-exe-output-file _ctx48749_ _opts48750_))
               (_output-scm48757_ (string-append _output-bin48755_ '".scm")))
          (begin
            (_compile-stub48753_ _output-scm48757_ _output-bin48755_)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm48757_)))))))
  (define gxc#compile-exe-static-module
    (lambda (_ctx48610_ _opts48611_)
      (letrec ((_reset-declare48613_
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
               (_user-declare48614_
                (lambda ()
                  (let* ((_gsc-opts48692_ (pgetq 'gsc-options: _opts48611_))
                         (_gsc-prelude48694_
                          (if _gsc-opts48692_
                              (member '"-prelude" _gsc-opts48692_)
                              '#f))
                         (_gsc-prelude48696_
                          (if _gsc-prelude48694_
                              (read (open-input-string
                                     (cadr _gsc-prelude48694_)))
                              '#f)))
                    (let _lift48699_ ((_expr48701_ _gsc-prelude48696_))
                      (let* ((_expr4870248714_ _expr48701_)
                             (_else4870548722_ (lambda () '#f)))
                        (let ((_K4871048742_ (lambda () _expr48701_))
                              (_K4870748728_
                               (lambda (_exprs48726_)
                                 (ormap1 _lift48699_ _exprs48726_))))
                          (if (##pair? _expr4870248714_)
                              (let ((_hd4871148745_ (##car _expr4870248714_)))
                                (if (##eq? _hd4871148745_ 'declare)
                                    (_K4871048742_)
                                    (let ((_tl4870948733_
                                           (##cdr _expr4870248714_)))
                                      (if (##eq? _hd4871148745_ 'begin)
                                          (let ((_exprs48736_ _tl4870948733_))
                                            (_K4870748728_ _exprs48736_))
                                          (_else4870548722_)))))
                              (_else4870548722_))))))))
               (_generate-stub48615_
                (lambda (_deps48683_)
                  (let ((_mod-main48685_
                         (gxc#find-runtime-symbol _ctx48610_ 'main))
                        (_reset-decl48686_ (_reset-declare48613_))
                        (_user-decl48687_ (_user-declare48614_)))
                    (begin
                      (write '(##namespace ("")))
                      (newline)
                      (write '(declare (optimize-dead-definitions)))
                      (newline)
                      (for-each
                       (lambda (_dep48689_)
                         (begin
                           (write (cons 'include (cons _dep48689_ '())))
                           (newline)
                           (write '(##namespace ("")))
                           (write _reset-decl48686_)
                           (if _user-decl48687_
                               (write _user-decl48687_)
                               '#!void)
                           (newline)))
                       _deps48683_)
                      (write (cons 'apply
                                   (cons _mod-main48685_
                                         (cons (cons 'cdr
                                                     (cons (cons 'command-line
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                      (newline)))))
               (_static-include48616_
                (lambda (_gsc-opts48666_ _home48667_)
                  (letrec* ((_static-dir48669_
                             (path-expand '"lib/static" _home48667_))
                            (_user-static-dir48670_
                             (path-expand
                              '"lib/static"
                              (getenv '"GERBIL_PATH" '"~/.gerbil")))
                            (_cppflags48671_
                             (string-append
                              '"-I "
                              _static-dir48669_
                              '" -I "
                              _user-static-dir48670_)))
                    (let ((_$e48673_ (member '"-cc-options" _gsc-opts48666_)))
                      (if _$e48673_
                          ((lambda (_rest48676_)
                             (let* ((_cell48678_ (cdr _rest48676_))
                                    (_opt48680_ (car _cell48678_)))
                               (begin
                                 (set-car!
                                  _cell48678_
                                  (string-append
                                   _opt48680_
                                   '" "
                                   _cppflags48671_))
                                 _gsc-opts48666_)))
                           _$e48673_)
                          (cons '"-cc-options"
                                (cons _cppflags48671_ _gsc-opts48666_)))))))
               (_compile-stub48617_
                (lambda (_output-scm48624_ _output-bin48625_)
                  (let* ((_gerbil-home48627_ (getenv '"GERBIL_HOME"))
                         (_gx-gambc048629_
                          (path-expand
                           '"lib/static/gx-gambc0.scm"
                           _gerbil-home48627_))
                         (_gx-gambc-init48631_
                          (path-expand
                           '"lib/gx-init-static-exe.scm"
                           _gerbil-home48627_))
                         (_gx-gambc-macros48633_
                          (path-expand
                           '"lib/static/gx-gambc#.scm"
                           _gerbil-home48627_))
                         (_include-gx-gambc-macros48635_
                          (string-append
                           '"(include \""
                           _gx-gambc-macros48633_
                           '"\")"))
                         (_bin-scm48637_
                          (gxc#find-static-module-file _ctx48610_))
                         (_deps48639_
                          (gxc#find-runtime-module-deps _ctx48610_))
                         (_deps48641_
                          (map gxc#find-static-module-file _deps48639_))
                         (_deps48646_
                          (filter (lambda (_$obj48643_)
                                    (not (gxc#file-empty? _$obj48643_)))
                                  _deps48641_))
                         (_gsc-opts48651_
                          (let ((_$e48648_ (pgetq 'gsc-options: _opts48611_)))
                            (if _$e48648_ _$e48648_ '())))
                         (_gsc-opts48653_
                          (_static-include48616_
                           _gsc-opts48651_
                           _gerbil-home48627_))
                         (_gsc-gx-macros48655_
                          (if (gerbil-runtime-smp?)
                              (cons '"-e"
                                    (cons '"(define-cond-expand-feature|enable-smp|)"
                                          (cons '"-e"
                                                (cons _include-gx-gambc-macros48635_
                                                      '()))))
                              (cons '"-e"
                                    (cons _include-gx-gambc-macros48635_
                                          '()))))
                         (_gsc-args48657_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin48625_
                                            (foldr1 cons
                                                    (foldr1 cons
                                                            (foldr1 cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _output-scm48624_ '())
                            _gsc-gx-macros48655_)
                    _gsc-opts48653_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gxc#gsc-debug-options__0)))))))
                    (begin
                      (with-output-to-file
                       _output-scm48624_
                       (lambda ()
                         (_generate-stub48615_
                          (cons _gx-gambc048629_
                                (cons _gx-gambc-init48631_
                                      (foldr1 cons
                                              (cons _bin-scm48637_ '())
                                              _deps48646_))))))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (gxc#verbose
                             '"invoke gsc "
                             (cons 'gsc _gsc-args48657_))
                            (let* ((_proc48661_
                                    (open-process
                                     (cons 'path:
                                           (cons '"gsc"
                                                 (cons 'arguments:
                                                       (cons _gsc-args48657_
                                                             (cons 'stdout-redirection:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_status48663_
                                    (process-status _proc48661_)))
                              (if (zero? _status48663_)
                                  '#!void
                                  (gxc#raise-compile-error
                                   '"Compilation error; gsc exit with nonzero status"
                                   _output-scm48624_
                                   _output-bin48625_
                                   _status48663_))))
                          '#!void))))))
        (let* ((_output-bin48619_
                (gxc#compile-exe-output-file _ctx48610_ _opts48611_))
               (_output-scm48621_ (string-append _output-bin48619_ '".scm")))
          (begin
            (_compile-stub48617_ _output-scm48621_ _output-bin48619_)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm48621_)))))))
  (define gxc#find-export-binding
    (lambda (_ctx48560_ _id48561_)
      (let ((_$e48607_
             (find (lambda (_e4856248564_)
                     (let* ((_g4856648576_ _e4856248564_)
                            (_else4856848584_ (lambda () '#f))
                            (_K4857048588_ (lambda () '#t)))
                       (if (##structure-direct-instance-of?
                            _g4856648576_
                            'gx#module-export::t)
                           (let* ((_e4857148591_
                                   (##vector-ref _g4856648576_ '1))
                                  (_e4857248594_
                                   (##vector-ref _g4856648576_ '2))
                                  (_e4857348597_
                                   (##vector-ref _g4856648576_ '3)))
                             (if (##eq? _e4857348597_ '0)
                                 (let ((_e4857448600_
                                        (##vector-ref _g4856648576_ '4)))
                                   (if ((lambda (_g4860248604_)
                                          (eq? _g4860248604_ _id48561_))
                                        _e4857448600_)
                                       (_K4857048588_)
                                       (_else4856848584_)))
                                 (_else4856848584_)))
                           (_else4856848584_))))
                   (##structure-ref _ctx48560_ '9 gx#module-context::t '#f))))
        (if _$e48607_ (gx#core-resolve-module-export _$e48607_) '#f))))
  (define gxc#find-runtime-symbol
    (lambda (_ctx48552_ _id48553_)
      (let ((_$e48555_ (gxc#find-export-binding _ctx48552_ _id48553_)))
        (if _$e48555_
            ((lambda (_bind48558_)
               (begin
                 (if (##structure-instance-of?
                      _bind48558_
                      'gx#runtime-binding::t)
                     '#!void
                     (gxc#raise-compile-error
                      '"export is not a runtime binding"
                      _id48553_))
                 (##structure-ref _bind48558_ '1 gx#binding::t '#f)))
             _$e48555_)
            (gxc#raise-compile-error
             '"module does not export symbol"
             (##structure-ref _ctx48552_ '1 gx#expander-context::t '#f)
             _id48553_)))))
  (define gxc#find-runtime-module-deps
    (lambda (_ctx48439_)
      (letrec* ((_ht48441_ (make-hash-table-eq))
                (_import-set-template48442_
                 (lambda (_in48504_ _phi48505_)
                   (let ((_iphi48507_
                          (fx+ _phi48505_
                               (##direct-structure-ref
                                _in48504_
                                '2
                                gx#import-set::t
                                '#f)))
                         (_imports48508_
                          (##structure-ref
                           (##direct-structure-ref
                            _in48504_
                            '1
                            gx#import-set::t
                            '#f)
                           '8
                           gx#module-context::t
                           '#f)))
                     (let _lp48510_ ((_rest48512_ _imports48508_)
                                     (_r48513_ '()))
                       (let* ((_rest4851448522_ _rest48512_)
                              (_else4851648530_ (lambda () _r48513_))
                              (_K4851848540_
                               (lambda (_rest48533_ _in48534_)
                                 (if (##structure-instance-of?
                                      _in48534_
                                      'gx#module-context::t)
                                     (if (fxzero? _iphi48507_)
                                         (_lp48510_
                                          _rest48533_
                                          (cons _in48534_ _r48513_))
                                         (_lp48510_ _rest48533_ _r48513_))
                                     (if (##structure-direct-instance-of?
                                          _in48534_
                                          'gx#module-import::t)
                                         (let ((_iphi48536_
                                                (fx+ _phi48505_
                                                     (##direct-structure-ref
                                                      _in48534_
                                                      '3
                                                      gx#module-import::t
                                                      '#f))))
                                           (if (fxzero? _iphi48536_)
                                               (_lp48510_
                                                _rest48533_
                                                (cons (##direct-structure-ref
                                                       (##direct-structure-ref
                                                        _in48534_
                                                        '1
                                                        gx#module-import::t
                                                        '#f)
                                                       '1
                                                       gx#module-export::t
                                                       '#f)
                                                      _r48513_))
                                               (_lp48510_
                                                _rest48533_
                                                _r48513_)))
                                         (if (##structure-direct-instance-of?
                                              _in48534_
                                              'gx#import-set::t)
                                             (let ((_xphi48538_
                                                    (fx+ _iphi48507_
                                                         (##direct-structure-ref
                                                          _in48534_
                                                          '2
                                                          gx#import-set::t
                                                          '#f))))
                                               (if (fxzero? _xphi48538_)
                                                   (_lp48510_
                                                    _rest48533_
                                                    (cons (##direct-structure-ref
                                                           _in48534_
                                                           '1
                                                           gx#import-set::t
                                                           '#f)
                                                          _r48513_))
                                                   (if (fxpositive?
                                                        _xphi48538_)
                                                       (_lp48510_
                                                        _rest48533_
                                                        (foldl1 cons
                                                                _r48513_
                                                                (_import-set-template48442_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in48534_
                         _iphi48507_)))
               (_lp48510_ _rest48533_ _r48513_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_lp48510_
                                              _rest48533_
                                              _r48513_)))))))
                         (if (##pair? _rest4851448522_)
                             (let ((_hd4851948543_ (##car _rest4851448522_))
                                   (_tl4852048545_ (##cdr _rest4851448522_)))
                               (let* ((_in48548_ _hd4851948543_)
                                      (_rest48550_ _tl4852048545_))
                                 (_K4851848540_ _rest48550_ _in48548_)))
                             (_else4851648530_)))))))
                (_find-deps48443_
                 (lambda (_rest48450_ _deps48451_)
                   (let* ((_rest4845248460_ _rest48450_)
                          (_else4845448468_ (lambda () _deps48451_))
                          (_K4845648492_
                           (lambda (_rest48471_ _hd48472_)
                             (if (##structure-instance-of?
                                  _hd48472_
                                  'gx#module-context::t)
                                 (let ((_id48474_
                                        (##structure-ref
                                         _hd48472_
                                         '1
                                         gx#expander-context::t
                                         '#f))
                                       (_imports48475_
                                        (##structure-ref
                                         _hd48472_
                                         '8
                                         gx#module-context::t
                                         '#f)))
                                   (if (table-ref _ht48441_ _id48474_ '#f)
                                       (_find-deps48443_
                                        _rest48471_
                                        _deps48451_)
                                       (let ((_$e48477_
                                              (gx#core-context-prelude__%
                                               _hd48472_)))
                                         (if _$e48477_
                                             ((lambda (_pre48480_)
                                                (let ((_xdeps48482_
                                                       (_find-deps48443_
                                                        (cons _pre48480_
                                                              _imports48475_)
                                                        _deps48451_)))
                                                  (begin
                                                    (table-set!
                                                     _ht48441_
                                                     _id48474_
                                                     _hd48472_)
                                                    (_find-deps48443_
                                                     _rest48471_
                                                     (cons _hd48472_
                                                           _xdeps48482_)))))
                                              _$e48477_)
                                             (let ((_xdeps48484_
                                                    (_find-deps48443_
                                                     _imports48475_
                                                     _deps48451_)))
                                               (begin
                                                 (table-set!
                                                  _ht48441_
                                                  _id48474_
                                                  _hd48472_)
                                                 (_find-deps48443_
                                                  _rest48471_
                                                  (cons _hd48472_
                                                        _xdeps48484_))))))))
                                 (if (##structure-instance-of?
                                      _hd48472_
                                      'gx#prelude-context::t)
                                     (let ((_id48486_
                                            (##structure-ref
                                             _hd48472_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (if (table-ref _ht48441_ _id48486_ '#f)
                                           (_find-deps48443_
                                            _rest48471_
                                            _deps48451_)
                                           (let ((_xdeps48488_
                                                  (_find-deps48443_
                                                   (##structure-ref
                                                    _hd48472_
                                                    '7
                                                    gx#prelude-context::t
                                                    '#f)
                                                   _deps48451_)))
                                             (if (table-ref
                                                  _ht48441_
                                                  _id48486_
                                                  '#f)
                                                 (_find-deps48443_
                                                  _rest48471_
                                                  _xdeps48488_)
                                                 (begin
                                                   (table-set!
                                                    _ht48441_
                                                    _id48486_
                                                    _hd48472_)
                                                   (_find-deps48443_
                                                    _rest48471_
                                                    (cons _hd48472_
                                                          _xdeps48488_)))))))
                                     (if (##structure-direct-instance-of?
                                          _hd48472_
                                          'gx#module-import::t)
                                         (if (fxzero? (##direct-structure-ref
                                                       _hd48472_
                                                       '3
                                                       gx#module-import::t
                                                       '#f))
                                             (_find-deps48443_
                                              (cons (##direct-structure-ref
                                                     _hd48472_
                                                     '1
                                                     gx#module-import::t
                                                     '#f)
                                                    _rest48471_)
                                              _deps48451_)
                                             (_find-deps48443_
                                              _rest48471_
                                              _deps48451_))
                                         (if (##structure-direct-instance-of?
                                              _hd48472_
                                              'gx#module-export::t)
                                             (_find-deps48443_
                                              (cons (##direct-structure-ref
                                                     _hd48472_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)
                                                    _rest48471_)
                                              _deps48451_)
                                             (if (##structure-direct-instance-of?
                                                  _hd48472_
                                                  'gx#import-set::t)
                                                 (if (fxzero? (##direct-structure-ref
                                                               _hd48472_
                                                               '2
                                                               gx#import-set::t
                                                               '#f))
                                                     (_find-deps48443_
                                                      (cons (##direct-structure-ref
                                                             _hd48472_
                                                             '1
                                                             gx#import-set::t
                                                             '#f)
                                                            _rest48471_)
                                                      _deps48451_)
                                                     (if (fxpositive?
                                                          (##direct-structure-ref
                                                           _hd48472_
                                                           '2
                                                           gx#import-set::t
                                                           '#f))
                                                         (let ((_xdeps48490_
                                                                (_import-set-template48442_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd48472_
                         '0)))
                   (_find-deps48443_
                    (foldl1 cons _rest48471_ _xdeps48490_)
                    _deps48451_))
                 (_find-deps48443_ _rest48471_ _deps48451_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (error '"Unexpected module import"
                                                        _hd48472_)))))))))
                     (if (##pair? _rest4845248460_)
                         (let ((_hd4845748495_ (##car _rest4845248460_))
                               (_tl4845848497_ (##cdr _rest4845248460_)))
                           (let* ((_hd48500_ _hd4845748495_)
                                  (_rest48502_ _tl4845848497_))
                             (_K4845648492_ _rest48502_ _hd48500_)))
                         (_else4845448468_))))))
        (reverse (filter gx#expander-context-id
                         (_find-deps48443_
                          (let ((_$e48445_
                                 (gx#core-context-prelude__% _ctx48439_)))
                            (if _$e48445_
                                ((lambda (_pre48448_)
                                   (cons _pre48448_
                                         (##structure-ref
                                          _ctx48439_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _$e48445_)
                                (##structure-ref
                                 _ctx48439_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))))
  (define gxc#find-static-module-file
    (lambda (_ctx48378_)
      (let* ((_scm48380_
              (string-append
               (gxc#static-module-name
                (##structure-ref _ctx48378_ '1 gx#expander-context::t '#f))
               '".scm"))
             (_dirs48382_ (gx#current-expander-module-library-path))
             (_dirs48391_
              (let ((_$e48384_ (gxc#current-compile-output-dir)))
                (if _$e48384_
                    ((lambda (_g4838648388_) (cons _g4838648388_ _dirs48382_))
                     _$e48384_)
                    _dirs48382_)))
             (_dirs48397_
              (map (lambda (_g4839248394_)
                     (path-expand '"static" _g4839248394_))
                   _dirs48391_)))
        (let _lp48400_ ((_rest48402_ _dirs48397_))
          (let* ((_rest4840348411_ _rest48402_)
                 (_else4840548419_
                  (lambda ()
                    (gxc#raise-compile-error
                     '"cannot find static module"
                     (##structure-ref _ctx48378_ '1 gx#expander-context::t '#f)
                     _scm48380_)))
                 (_K4840748427_
                  (lambda (_rest48422_ _dir48423_)
                    (let ((_path48425_ (path-expand _scm48380_ _dir48423_)))
                      (if (file-exists? _path48425_)
                          _path48425_
                          (_lp48400_ _rest48422_))))))
            (if (##pair? _rest4840348411_)
                (let ((_hd4840848430_ (##car _rest4840348411_))
                      (_tl4840948432_ (##cdr _rest4840348411_)))
                  (let* ((_dir48435_ _hd4840848430_)
                         (_rest48437_ _tl4840948432_))
                    (_K4840748427_ _rest48437_ _dir48435_)))
                (_else4840548419_)))))))
  (define gxc#file-empty?
    (lambda (_path48376_)
      (zero? (file-info-size (file-info _path48376_ '#t)))))
  (define gxc#compile-top-module
    (lambda (_ctx48373_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#verbose
            '"compile "
            (##structure-ref _ctx48373_ '1 gx#expander-context::t '#f))
           (if (gxc#current-compile-optimize)
               (gxc#optimize! _ctx48373_)
               '#!void)
           (gxc#collect-bindings _ctx48373_)
           (gxc#compile-runtime-code _ctx48373_)
           (gxc#compile-meta-code _ctx48373_)
           (if (if (gxc#current-compile-optimize)
                   (gxc#current-compile-generate-ssxi)
                   '#f)
               (gxc#compile-ssxi-code _ctx48373_)
               '#!void)))
       gx#current-expander-context
       _ctx48373_
       gx#current-expander-phi
       '0
       gx#current-expander-marks
       '()
       gxc#current-compile-symbol-table
       (let ((__obj48860 (make-object gxc#symbol-table::t '2)))
         (begin (gxc#symbol-table:::init! __obj48860) __obj48860))
       gxc#current-compile-runtime-sections
       (make-hash-table-eq)
       gxc#current-compile-runtime-names
       (make-table))))
  (define gxc#collect-bindings
    (lambda (_ctx48371_)
      (gxc#apply-collect-bindings
       (##structure-ref _ctx48371_ '11 gx#module-context::t '#f))))
  (define gxc#compile-runtime-code
    (lambda (_ctx48325_)
      (letrec ((_compile148327_
                (lambda (_ctx48360_)
                  (let* ((_code48362_
                          (##structure-ref
                           _ctx48360_
                           '11
                           gx#module-context::t
                           '#f))
                         (_rt48366_
                          (if (gxc#apply-find-runtime-code _code48362_)
                              (let ((_idstr48364_
                                     (gxc#module-id->path-string
                                      (##structure-ref
                                       _ctx48360_
                                       '1
                                       gx#expander-context::t
                                       '#f))))
                                (string-append _idstr48364_ '"__0"))
                              '#f)))
                    (begin
                      (if _rt48366_
                          (begin
                            (table-set!
                             (gxc#current-compile-runtime-sections)
                             _ctx48360_
                             _rt48366_)
                            (_generate-runtime-code48328_
                             _ctx48360_
                             _code48362_))
                          (if (gxc#current-compile-static)
                              (let ((_path48369_
                                     (gxc#compile-static-output-file
                                      _ctx48360_)))
                                (with-output-to-file
                                 (cons 'path:
                                       (cons _path48369_
                                             (cons 'permissions:
                                                   (cons '420 '()))))
                                 void))
                              '#!void))
                      (_generate-loader-code48329_
                       _ctx48360_
                       _code48362_
                       _rt48366_)))))
               (_generate-runtime-code48328_
                (lambda (_ctx48344_ _code48345_)
                  (let* ((_lifts48347_ (box '()))
                         (_runtime-code48350_
                          (call-with-parameters
                           (lambda () (gxc#apply-generate-runtime _code48345_))
                           gx#current-expander-context
                           _ctx48344_
                           gx#current-expander-phi
                           '0
                           gxc#current-compile-lift
                           _lifts48347_
                           gxc#current-compile-marks
                           (make-hash-table-eq)
                           gxc#current-compile-identifiers
                           (gxc#make-bound-identifier-table)))
                         (_runtime-code48352_
                          (if (null? (unbox _lifts48347_))
                              _runtime-code48350_
                              (cons 'begin
                                    (foldr1 cons
                                            (cons _runtime-code48350_ '())
                                            (reverse (unbox _lifts48347_))))))
                         (_scm048354_
                          (gxc#compile-output-file _ctx48344_ '0 '".scm")))
                    (if (gxc#current-compile-static)
                        (let ((_scms48357_
                               (gxc#compile-static-output-file _ctx48344_)))
                          (begin
                            (call-with-parameters
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _scm048354_
                                _runtime-code48352_))
                             gxc#current-compile-keep-scm
                             '#t)
                            (if (file-exists? _scms48357_)
                                (delete-file _scms48357_)
                                '#!void)
                            (gxc#verbose
                             '"copy static module "
                             _scm048354_
                             '" => "
                             _scms48357_)
                            (copy-file _scm048354_ _scms48357_)
                            (if (gxc#current-compile-keep-scm)
                                '#!void
                                (delete-file _scm048354_))))
                        (gxc#compile-scm-file__0
                         _scm048354_
                         _runtime-code48352_)))))
               (_generate-loader-code48329_
                (lambda (_ctx48333_ _code48334_ _rt48335_)
                  (let* ((_loader-code48338_
                          (call-with-parameters
                           (lambda () (gxc#apply-generate-loader _code48334_))
                           gx#current-expander-context
                           _ctx48333_))
                         (_loader-code48340_
                          (if _rt48335_
                              (cons 'begin
                                    (cons _loader-code48338_
                                          (cons (cons 'load-module
                                                      (cons _rt48335_ '()))
                                                '())))
                              _loader-code48338_)))
                    (call-with-parameters
                     (lambda ()
                       (gxc#compile-scm-file__0
                        (gxc#compile-output-file _ctx48333_ 'rt '".scm")
                        _loader-code48340_))
                     gxc#current-compile-gsc-options
                     '#f)))))
        (let ((_all-modules48331_
               (cons _ctx48325_ (gxc#lift-nested-modules _ctx48325_))))
          (for-each _compile148327_ _all-modules48331_)))))
  (define gxc#compile-meta-code
    (lambda (_ctx48227_)
      (letrec ((_compile-ssi48229_
                (lambda (_code48295_)
                  (let* ((_path48297_
                          (gxc#compile-output-file _ctx48227_ '#f '".ssi"))
                         (_prelude48308_
                          (let* ((_super48299_
                                  (##structure-ref
                                   _ctx48227_
                                   '3
                                   gx#phi-context::t
                                   '#f))
                                 (_$e48301_
                                  (##structure-ref
                                   _super48299_
                                   '1
                                   gx#expander-context::t
                                   '#f)))
                            (if _$e48301_
                                ((lambda (_g4830348305_)
                                   (make-symbol '":" _g4830348305_))
                                 _$e48301_)
                                ':<root>)))
                         (_ns48310_
                          (##structure-ref
                           _ctx48227_
                           '6
                           gx#module-context::t
                           '#f))
                         (_idstr48312_
                          (symbol->string
                           (##structure-ref
                            _ctx48227_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_pkg48319_
                          (let ((_$e48314_ (string-rindex _idstr48312_ '#\/)))
                            (if _$e48314_
                                ((lambda (_x48317_)
                                   (string->symbol
                                    (substring _idstr48312_ '0 _x48317_)))
                                 _$e48314_)
                                '#f)))
                         (_rt48321_
                          (table-ref
                           (gxc#current-compile-runtime-sections)
                           _ctx48227_
                           '#f)))
                    (begin
                      (gxc#verbose '"compile " _path48297_)
                      (with-output-to-file
                       (cons 'path:
                             (cons _path48297_
                                   (cons 'permissions: (cons '420 '()))))
                       (lambda ()
                         (begin
                           (displayln '"prelude:" '" " _prelude48308_)
                           (if _pkg48319_
                               (displayln '"package:" '" " _pkg48319_)
                               '#!void)
                           (displayln '"namespace:" '" " _ns48310_)
                           (newline)
                           (pretty-print _code48295_)
                           (if _rt48321_
                               (pretty-print
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons '_gx#load-module '()))
                                            (cons (cons '%#quote
                                                        (cons _rt48321_ '()))
                                                  '()))))
                               '#!void))))))))
               (_compile-phi48230_
                (lambda (_part48235_)
                  (let* ((_part4823648249_ _part48235_)
                         (_E4823848253_
                          (lambda ()
                            (error '"No clause matching" _part4823648249_)))
                         (_K4823948264_
                          (lambda (_code48256_
                                   _n48257_
                                   _phi48258_
                                   _phi-ctx48259_)
                            (let ((_code48262_
                                   (call-with-parameters
                                    (lambda ()
                                      (gxc#generate-runtime-phi _code48256_))
                                    gx#current-expander-context
                                    _phi-ctx48259_
                                    gx#current-expander-phi
                                    _phi48258_)))
                              (gxc#compile-scm-file__%
                               (gxc#compile-output-file
                                _ctx48227_
                                _n48257_
                                '".scm")
                               _code48262_
                               '#t)))))
                    (if (##pair? _part4823648249_)
                        (let ((_hd4824048267_ (##car _part4823648249_))
                              (_tl4824148269_ (##cdr _part4823648249_)))
                          (let ((_phi-ctx48272_ _hd4824048267_))
                            (if (##pair? _tl4824148269_)
                                (let ((_hd4824248274_ (##car _tl4824148269_))
                                      (_tl4824348276_ (##cdr _tl4824148269_)))
                                  (let ((_phi48279_ _hd4824248274_))
                                    (if (##pair? _tl4824348276_)
                                        (let ((_hd4824448281_
                                               (##car _tl4824348276_))
                                              (_tl4824548283_
                                               (##cdr _tl4824348276_)))
                                          (let ((_n48286_ _hd4824448281_))
                                            (if (##pair? _tl4824548283_)
                                                (let ((_hd4824648288_
                                                       (##car _tl4824548283_))
                                                      (_tl4824748290_
                                                       (##cdr _tl4824548283_)))
                                                  (let ((_code48293_
                                                         _hd4824648288_))
                                                    (if (##null? _tl4824748290_)
                                                        (_K4823948264_
                                                         _code48293_
                                                         _n48286_
                                                         _phi48279_
                                                         _phi-ctx48272_)
                                                        (_E4823848253_))))
                                                (_E4823848253_))))
                                        (_E4823848253_))))
                                (_E4823848253_))))
                        (_E4823848253_))))))
        (let ((_g48868_ (gxc#generate-meta-code _ctx48227_)))
          (begin
            (let ((_g48869_
                   (if (##values? _g48868_) (##vector-length _g48868_) 1)))
              (if (not (##fx= _g48869_ 2))
                  (error "Context expects 2 values" _g48869_)))
            (let ((_ssi-code48232_ (##vector-ref _g48868_ 0))
                  (_phi-code48233_ (##vector-ref _g48868_ 1)))
              (begin
                (_compile-ssi48229_ _ssi-code48232_)
                (for-each _compile-phi48230_ _phi-code48233_))))))))
  (define gxc#compile-ssxi-code
    (lambda (_ctx48210_)
      (let* ((_path48212_ (gxc#compile-output-file _ctx48210_ '#f '".ssxi.ss"))
             (_code48214_
              (gxc#apply-generate-ssxi
               (##structure-ref _ctx48210_ '11 gx#module-context::t '#f)))
             (_idstr48216_
              (symbol->string
               (##structure-ref _ctx48210_ '1 gx#expander-context::t '#f)))
             (_pkg48223_
              (let ((_$e48218_ (string-rindex _idstr48216_ '#\/)))
                (if _$e48218_
                    ((lambda (_x48221_)
                       (string->symbol (substring _idstr48216_ '0 _x48221_)))
                     _$e48218_)
                    '#f))))
        (begin
          (gxc#verbose '"compile " _path48212_)
          (with-output-to-file
           (cons 'path:
                 (cons _path48212_ (cons 'permissions: (cons '420 '()))))
           (lambda ()
             (begin
               (displayln '"prelude: :gerbil/compiler/ssxi")
               (if _pkg48223_ (displayln '"package: " _pkg48223_) '#!void)
               (newline)
               (pretty-print _code48214_))))))))
  (define gxc#generate-meta-code
    (lambda (_ctx48203_)
      (let* ((_state48205_
              (let ((__obj48861 (make-object gxc#meta-state::t '4)))
                (begin
                  (gxc#meta-state:::init! __obj48861 _ctx48203_)
                  __obj48861)))
             (_ssi-code48207_
              (gxc#apply-generate-meta
               (##structure-ref _ctx48203_ '11 gx#module-context::t '#f)
               _state48205_)))
        (values _ssi-code48207_ (gxc#meta-state-end! _state48205_)))))
  (define gxc#generate-runtime-phi
    (lambda (_stx48196_)
      (let ((_lifts48198_ (box '())))
        (call-with-parameters
         (lambda ()
           (let ((_code48201_ (gxc#apply-generate-runtime-phi _stx48196_)))
             (if (null? (unbox _lifts48198_))
                 _code48201_
                 (cons 'begin
                       (foldr1 cons
                               (cons _code48201_ '())
                               (reverse (unbox _lifts48198_)))))))
         gxc#current-compile-lift
         _lifts48198_
         gxc#current-compile-marks
         (make-hash-table-eq)
         gxc#current-compile-identifiers
         (gxc#make-bound-identifier-table)))))
  (define gxc#lift-nested-modules
    (lambda (_ctx48192_)
      (let ((_modules48194_ (box '())))
        (begin
          (gxc#apply-lift-modules
           (##structure-ref _ctx48192_ '11 gx#module-context::t '#f)
           _modules48194_)
          (reverse (unbox _modules48194_))))))
  (begin
    (define gxc#compile-scm-file__%
      (lambda (_path48175_ _code48176_ _phi?48177_)
        (begin
          (gxc#verbose '"compile " _path48175_)
          (with-output-to-file
           (cons 'path:
                 (cons _path48175_ (cons 'permissions: (cons '420 '()))))
           (lambda ()
             (begin
               (pretty-print
                (cons 'declare
                      (cons (cons 'block '())
                            (cons (cons 'standard-bindings '())
                                  (cons (cons 'extended-bindings '())
                                        (foldr1 cons
                                                '()
                                                (if _phi?48177_
                                                    '((inlining-limit 200))
                                                    '())))))))
               (pretty-print _code48176_))))
          (if (gxc#current-compile-invoke-gsc)
              (gxc#gsc-compile-file _path48175_ _phi?48177_)
              '#!void)
          (if (gxc#current-compile-keep-scm)
              '#!void
              (delete-file _path48175_)))))
    (begin
      (define gxc#compile-scm-file__0
        (lambda (_path48183_ _code48184_)
          (let ((_phi?48186_ '#f))
            (gxc#compile-scm-file__% _path48183_ _code48184_ _phi?48186_))))
      (define gxc#compile-scm-file
        (lambda _g48871_
          (let ((_g48870_ (length _g48871_)))
            (cond ((##fx= _g48870_ 2) (apply gxc#compile-scm-file__0 _g48871_))
                  ((##fx= _g48870_ 3) (apply gxc#compile-scm-file__% _g48871_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-scm-file
                    _g48871_))))))))
  (begin
    (define gxc#gsc-debug-options__%
      (lambda (_phi?48082_)
        (let ((_$e48155_ (gxc#current-compile-debug)))
          (if _$e48155_
              ((lambda (_debug48158_)
                 (let ((_$e48160_ _debug48158_))
                   (if (eq? 'env _$e48160_)
                       (if _phi?48082_ '() (cons '"-debug-environments" '()))
                       (if (eq? 'env/phi _$e48160_)
                           (cons '"-debug-environments" '())
                           (if (eq? 'src _$e48160_)
                               (if _phi?48082_
                                   '()
                                   (cons '"-debug-environments"
                                         (cons '"-debug-source" '())))
                               (if (eq? 'src/phi _$e48160_)
                                   (cons '"-debug-environments"
                                         (cons '"-debug-source" '()))
                                   (if (eq? 'all _$e48160_)
                                       (if _phi?48082_
                                           '()
                                           (cons '"-debug" '()))
                                       (if (let ((_$e48163_
                                                  (eq? 'all/phi _$e48160_)))
                                             (if _$e48163_
                                                 _$e48163_
                                                 (eq? '#t _$e48160_)))
                                           (cons '"-debug" '())
                                           (gxc#raise-compile-error
                                            '"unknown debug option"
                                            _debug48158_)))))))))
               _$e48155_)
              '()))))
    (begin
      (define gxc#gsc-debug-options__0
        (lambda ()
          (let ((_phi?48170_ '#f)) (gxc#gsc-debug-options__% _phi?48170_))))
      (define gxc#gsc-debug-options
        (lambda _g48873_
          (let ((_g48872_ (length _g48873_)))
            (cond ((##fx= _g48872_ 0)
                   (apply gxc#gsc-debug-options__0 _g48873_))
                  ((##fx= _g48872_ 1)
                   (apply gxc#gsc-debug-options__% _g48873_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#gsc-debug-options
                    _g48873_))))))))
  (define gxc#gsc-compile-file
    (lambda (_path48063_ _phi?48064_)
      (let* ((_gsc-args48071_
              (let ((_$e48066_ (gxc#current-compile-gsc-options)))
                (if _$e48066_
                    ((lambda (_opts48069_)
                       (foldr1 cons (cons _path48063_ '()) _opts48069_))
                     _$e48066_)
                    (cons _path48063_ '()))))
             (_gsc-args48073_
              (foldr1 cons
                      _gsc-args48071_
                      (gxc#gsc-debug-options__% _phi?48064_)))
             (_g48874_
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
