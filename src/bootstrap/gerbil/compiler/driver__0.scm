(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#compile-timestamp
    (lambda () (inexact->exact (floor (time->seconds (current-time))))))
  (begin
    (define gxc#compile-file__opt-lambda21633
      (lambda (_srcpath21635_ _opts21636_)
        (begin
          (if (string? _srcpath21635_)
              '#!void
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath21635_))
          (let ((_outdir21638_ (pgetq 'output-dir: _opts21636_))
                (_invoke-gsc?21639_ (pgetq 'invoke-gsc: _opts21636_))
                (_gsc-options21640_ (pgetq 'gsc-options: _opts21636_))
                (_keep-scm?21641_ (pgetq 'keep-scm: _opts21636_))
                (_verbosity21642_ (pgetq 'verbose: _opts21636_))
                (_optimize21643_ (pgetq 'optimize: _opts21636_))
                (_debug21644_ (pgetq 'debug: _opts21636_))
                (_gen-ssxi21645_ (pgetq 'generate-ssxi: _opts21636_))
                (_static21646_ (pgetq 'static: _opts21636_)))
            (begin
              (if _outdir21638_ (create-directory* _outdir21638_) '#!void)
              (if _optimize21643_ (gxc#optimizer-info-init!) '#!void)
              (call-with-parameters
               (lambda ()
                 (begin
                   (gxc#verbose '"compile " _srcpath21635_)
                   (gxc#compile-top-module
                    (gx#import-module__0 _srcpath21635_))))
               gxc#current-compile-output-dir
               _outdir21638_
               gxc#current-compile-invoke-gsc
               _invoke-gsc?21639_
               gxc#current-compile-gsc-options
               _gsc-options21640_
               gxc#current-compile-keep-scm
               _keep-scm?21641_
               gxc#current-compile-verbose
               _verbosity21642_
               gxc#current-compile-optimize
               _optimize21643_
               gxc#current-compile-debug
               _debug21644_
               gxc#current-compile-generate-ssxi
               _gen-ssxi21645_
               gxc#current-compile-static
               _static21646_
               gxc#current-compile-timestamp
               (gxc#compile-timestamp)))))))
    (begin
      (define gxc#compile-file__0
        (lambda (_srcpath21652_)
          (let ((_opts21654_ '()))
            (gxc#compile-file__opt-lambda21633 _srcpath21652_ _opts21654_))))
      (define gxc#compile-file
        (lambda _g21662_
          (let ((_g21661_ (length _g21662_)))
            (cond ((fx= _g21661_ 1) (apply gxc#compile-file__0 _g21662_))
                  ((fx= _g21661_ 2)
                   (apply gxc#compile-file__opt-lambda21633 _g21662_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-file
                    _g21662_))))))))
  (begin
    (define gxc#compile-exe-stub__opt-lambda21619
      (lambda (_srcpath21621_ _opts21622_)
        (gxc#do-compile-exe
         _srcpath21621_
         _opts21622_
         gxc#compile-exe-stub-module)))
    (begin
      (define gxc#compile-exe-stub__0
        (lambda (_srcpath21627_)
          (let ((_opts21629_ '()))
            (gxc#compile-exe-stub__opt-lambda21619
             _srcpath21627_
             _opts21629_))))
      (define gxc#compile-exe-stub
        (lambda _g21664_
          (let ((_g21663_ (length _g21664_)))
            (cond ((fx= _g21663_ 1) (apply gxc#compile-exe-stub__0 _g21664_))
                  ((fx= _g21663_ 2)
                   (apply gxc#compile-exe-stub__opt-lambda21619 _g21664_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-exe-stub
                    _g21664_))))))))
  (begin
    (define gxc#compile-static-exe__opt-lambda21605
      (lambda (_srcpath21607_ _opts21608_)
        (gxc#do-compile-exe
         _srcpath21607_
         _opts21608_
         gxc#compile-exe-static-module)))
    (begin
      (define gxc#compile-static-exe__0
        (lambda (_srcpath21613_)
          (let ((_opts21615_ '()))
            (gxc#compile-static-exe__opt-lambda21605
             _srcpath21613_
             _opts21615_))))
      (define gxc#compile-static-exe
        (lambda _g21666_
          (let ((_g21665_ (length _g21666_)))
            (cond ((fx= _g21665_ 1) (apply gxc#compile-static-exe__0 _g21666_))
                  ((fx= _g21665_ 2)
                   (apply gxc#compile-static-exe__opt-lambda21605 _g21666_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-static-exe
                    _g21666_))))))))
  (define gxc#do-compile-exe
    (lambda (_srcpath21595_ _opts21596_ _compile-e21597_)
      (begin
        (if (string? _srcpath21595_)
            '#!void
            (gxc#raise-compile-error
             '"Invalid module source path"
             _srcpath21595_))
        (let ((_outdir21599_ (pgetq 'output-dir: _opts21596_))
              (_invoke-gsc?21600_ (pgetq 'invoke-gsc: _opts21596_))
              (_gsc-options21601_ (pgetq 'gsc-options: _opts21596_))
              (_keep-scm?21602_ (pgetq 'keep-scm: _opts21596_))
              (_verbosity21603_ (pgetq 'verbose: _opts21596_)))
          (begin
            (if _outdir21599_ (create-directory* _outdir21599_) '#!void)
            (call-with-parameters
             (lambda ()
               (begin
                 (gxc#verbose '"compile exe " _srcpath21595_)
                 (_compile-e21597_
                  (gx#import-module__0 _srcpath21595_)
                  _opts21596_)))
             gxc#current-compile-output-dir
             _outdir21599_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?21600_
             gxc#current-compile-gsc-options
             _gsc-options21601_
             gxc#current-compile-keep-scm
             _keep-scm?21602_
             gxc#current-compile-verbose
             _verbosity21603_
             gxc#current-compile-timestamp
             (gxc#compile-timestamp)))))))
  (define gxc#compile-exe-stub-module
    (lambda (_ctx21559_ _opts21560_)
      (letrec ((_generate-stub21562_
                (lambda ()
                  (let* ((_mod-str21588_
                          (symbol->string
                           (##structure-ref
                            _ctx21559_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_mod-rt21590_ (string-append _mod-str21588_ '"__rt"))
                         (_mod-main21592_
                          (gxc#find-runtime-symbol _ctx21559_ 'main)))
                    (begin
                      (write '(##namespace ("")))
                      (newline)
                      (write (cons '_gx#start!
                                   (cons _mod-rt21590_
                                         (cons (cons 'quote
                                                     (cons _mod-main21592_
                                                           '()))
                                               '()))))
                      (newline)))))
               (_compile-stub21563_
                (lambda (_output-scm21570_ _output-bin21571_)
                  (let* ((_init-stub21573_
                          (path-expand
                           '"lib/gx-init-exe.scm"
                           (getenv '"GERBIL_HOME")))
                         (_gxc-cache21575_ (gxc#compile-cache-directory))
                         (_init-stub21577_
                          (gxc#compile-cache
                           _init-stub21573_
                           _gxc-cache21575_))
                         (_gsc-args21579_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin21571_
                                            (cons _init-stub21577_
                                                  (cons _output-scm21570_
                                                        '()))))))
                         (_g21667_
                          (gxc#verbose
                           '"invoke gsc "
                           (cons 'gsc _gsc-args21579_)))
                         (_proc21582_
                          (open-process
                           (cons 'path:
                                 (cons '"gsc"
                                       (cons 'arguments:
                                             (cons _gsc-args21579_
                                                   (cons 'stdout-redirection:
                                                         (cons '#f '()))))))))
                         (_status21584_ (process-status _proc21582_)))
                    (if (zero? _status21584_)
                        '#!void
                        (gxc#raise-compile-error
                         '"Compilation error; gsc exit with nonzero status"
                         _output-scm21570_
                         _output-bin21571_
                         _status21584_))))))
        (let* ((_output-bin21565_
                (gxc#compile-exe-output-file _ctx21559_ _opts21560_))
               (_output-scm21567_ (string-append _output-bin21565_ '".scm")))
          (begin
            (with-output-to-file _output-scm21567_ _generate-stub21562_)
            (if (gxc#current-compile-invoke-gsc)
                (_compile-stub21563_ _output-scm21567_ _output-bin21565_)
                '#!void)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm21567_)))))))
  (define gxc#compile-exe-static-module
    (lambda (_ctx21491_ _opts21492_)
      (letrec ((_generate-stub21494_
                (lambda ()
                  (let ((_mod-main21557_
                         (gxc#find-runtime-symbol _ctx21491_ 'main)))
                    (begin
                      (write '(##namespace ("")))
                      (newline)
                      (write (cons 'apply
                                   (cons _mod-main21557_
                                         (cons (cons 'cdr
                                                     (cons (cons 'command-line
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                      (newline)))))
               (_compile-stub21495_
                (lambda (_output-scm21502_ _output-bin21503_)
                  (let* ((_gerbil-home21505_ (getenv '"GERBIL_HOME"))
                         (_gx-version21507_
                          (path-expand
                           '"lib/static/gx-version.scm"
                           _gerbil-home21505_))
                         (_gx-gambc021509_
                          (path-expand
                           '"lib/static/gx-gambc0.scm"
                           _gerbil-home21505_))
                         (_gx-gambc-init21511_
                          (path-expand
                           '"lib/gx-init-static-exe.scm"
                           _gerbil-home21505_))
                         (_gx-gambc-macros21513_
                          (path-expand
                           '"lib/static/gx-gambc#.scm"
                           _gerbil-home21505_))
                         (_include-gx-gambc-macros21515_
                          (string-append
                           '"(include \""
                           _gx-gambc-macros21513_
                           '"\")"))
                         (_bin-scm21517_
                          (gxc#find-static-module-file _ctx21491_))
                         (_deps21519_
                          (gxc#find-runtime-module-deps _ctx21491_))
                         (_deps21521_
                          (map gxc#find-static-module-file _deps21519_))
                         (_deps21526_
                          (filter (lambda (_$obj21523_)
                                    (not (gxc#file-empty? _$obj21523_)))
                                  _deps21521_))
                         (_gxc-cache21528_ (gxc#compile-cache-directory))
                         (_g21668_
                          (gxc#compile-cache
                           _gx-version21507_
                           _gxc-cache21528_))
                         (_gx-gambc021531_
                          (gxc#compile-cache
                           _gx-gambc021509_
                           _gxc-cache21528_))
                         (_gx-gambc-init21533_
                          (gxc#compile-cache
                           _gx-gambc-init21511_
                           _gxc-cache21528_))
                         (_deps21539_
                          (map (lambda (_g2153421536_)
                                 (gxc#compile-cache
                                  _g2153421536_
                                  _gxc-cache21528_))
                               _deps21526_))
                         (_bin-scm21541_
                          (gxc#compile-cache _bin-scm21517_ _gxc-cache21528_))
                         (_gsc-opts21546_
                          (let ((_$e21543_ (pgetq 'gsc-options: _opts21492_)))
                            (if _$e21543_ _$e21543_ '())))
                         (_gsc-args21548_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin21503_
                                            (foldr1 cons
                                                    (foldr1 cons
                                                            (cons '"-e"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _include-gx-gambc-macros21515_
                                (cons _gx-gambc021531_
                                      (cons _gx-gambc-init21533_
                                            (foldr1 cons
                                                    (cons _bin-scm21541_
                                                          (cons _output-scm21502_
                                                                '()))
                                                    _deps21539_)))))
                    _gsc-opts21546_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gxc#gsc-debug-options))))))
                         (_g21669_
                          (gxc#verbose
                           '"invoke gsc "
                           (cons 'gsc _gsc-args21548_)))
                         (_proc21551_
                          (open-process
                           (cons 'path:
                                 (cons '"gsc"
                                       (cons 'arguments:
                                             (cons _gsc-args21548_
                                                   (cons 'stdout-redirection:
                                                         (cons '#f '()))))))))
                         (_status21553_ (process-status _proc21551_)))
                    (if (zero? _status21553_)
                        '#!void
                        (gxc#raise-compile-error
                         '"Compilation error; gsc exit with nonzero status"
                         _output-scm21502_
                         _output-bin21503_
                         _status21553_))))))
        (let* ((_output-bin21497_
                (gxc#compile-exe-output-file _ctx21491_ _opts21492_))
               (_output-scm21499_ (string-append _output-bin21497_ '".scm")))
          (begin
            (with-output-to-file _output-scm21499_ _generate-stub21494_)
            (if (gxc#current-compile-invoke-gsc)
                (_compile-stub21495_ _output-scm21499_ _output-bin21497_)
                '#!void)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm21499_)))))))
  (define gxc#compile-cache-directory
    (lambda ()
      (let* ((_cachedir21486_ (getenv '"GERBIL_CACHE" '"~/.cache/gerbil"))
             (_gxc-cache21488_ (path-expand '"gxc" _cachedir21486_)))
        (begin
          (create-directory* _gxc-cache21488_)
          (path-normalize _gxc-cache21488_)))))
  (define gxc#compile-cache
    (lambda (_file21480_ _gxc-cache21481_)
      (let ((_cachefile21483_
             (path-expand
              (path-strip-directory _file21480_)
              _gxc-cache21481_)))
        (begin
          (if (file-exists? _cachefile21483_)
              (if (file-newer? _file21480_ _cachefile21483_)
                  (begin
                    (delete-file _cachefile21483_)
                    (copy-file _file21480_ _cachefile21483_))
                  '#!void)
              (copy-file _file21480_ _cachefile21483_))
          _cachefile21483_))))
  (define gxc#find-export-binding
    (lambda (_ctx21430_ _id21431_)
      (let ((_$e21477_
             (find (lambda (_e2143221434_)
                     (let* ((_g2143621446_ _e2143221434_)
                            (_E2143921450_
                             (lambda ()
                               (error '"No clause matching" _g2143621446_)))
                            (_else2143821454_ (lambda () '#f))
                            (_K2144021458_ (lambda () '#t)))
                       (if (##structure-direct-instance-of?
                            _g2143621446_
                            (##type-id gx#module-export::t))
                           (let* ((_e2144121461_
                                   (##vector-ref _g2143621446_ '1))
                                  (_e2144221464_
                                   (##vector-ref _g2143621446_ '2))
                                  (_e2144321467_
                                   (##vector-ref _g2143621446_ '3)))
                             (if (##eq? _e2144321467_ '0)
                                 (let ((_e2144421470_
                                        (##vector-ref _g2143621446_ '4)))
                                   (if ((lambda (_g2147221474_)
                                          (eq? _g2147221474_ _id21431_))
                                        _e2144421470_)
                                       (_K2144021458_)
                                       (_else2143821454_)))
                                 (_else2143821454_)))
                           (_else2143821454_))))
                   (##structure-ref _ctx21430_ '9 gx#module-context::t '#f))))
        (if _$e21477_ (gx#core-resolve-module-export _$e21477_) '#f))))
  (define gxc#find-runtime-symbol
    (lambda (_ctx21422_ _id21423_)
      (let ((_$e21425_ (gxc#find-export-binding _ctx21422_ _id21423_)))
        (if _$e21425_
            ((lambda (_bind21428_)
               (begin
                 (if (##structure-instance-of?
                      _bind21428_
                      'gx#runtime-binding::t)
                     '#!void
                     (gxc#raise-compile-error
                      '"export is not a runtime binding"
                      _id21423_))
                 (##structure-ref _bind21428_ '1 gx#binding::t '#f)))
             _$e21425_)
            (gxc#raise-compile-error
             '"module does not export symbol"
             (##structure-ref _ctx21422_ '1 gx#expander-context::t '#f)
             _id21423_)))))
  (define gxc#find-runtime-module-deps
    (lambda (_ctx21360_)
      (letrec* ((_ht21362_ (make-hash-table-eq))
                (_find-deps21363_
                 (lambda (_rest21370_ _deps21371_)
                   (let* ((_rest2137221380_ _rest21370_)
                          (_E2137521384_
                           (lambda ()
                             (error '"No clause matching" _rest2137221380_)))
                          (_else2137421388_ (lambda () _deps21371_))
                          (_K2137621410_
                           (lambda (_rest21391_ _hd21392_)
                             (if (##structure-instance-of?
                                  _hd21392_
                                  'gx#module-context::t)
                                 (let ((_id21394_
                                        (##structure-ref
                                         _hd21392_
                                         '1
                                         gx#expander-context::t
                                         '#f))
                                       (_imports21395_
                                        (##structure-ref
                                         _hd21392_
                                         '8
                                         gx#module-context::t
                                         '#f)))
                                   (if (table-ref _ht21362_ _id21394_ '#f)
                                       (_find-deps21363_
                                        _rest21391_
                                        _deps21371_)
                                       (let ((_$e21397_
                                              (gx#core-context-prelude__opt-lambda11555
                                               _hd21392_)))
                                         (if _$e21397_
                                             ((lambda (_pre21400_)
                                                (let ((_xdeps21402_
                                                       (_find-deps21363_
                                                        (cons _pre21400_
                                                              _imports21395_)
                                                        _deps21371_)))
                                                  (begin
                                                    (table-set!
                                                     _ht21362_
                                                     _id21394_
                                                     _hd21392_)
                                                    (_find-deps21363_
                                                     _rest21391_
                                                     (cons _hd21392_
                                                           _xdeps21402_)))))
                                              _$e21397_)
                                             (let ((_xdeps21404_
                                                    (_find-deps21363_
                                                     _imports21395_
                                                     _deps21371_)))
                                               (begin
                                                 (table-set!
                                                  _ht21362_
                                                  _id21394_
                                                  _hd21392_)
                                                 (_find-deps21363_
                                                  _rest21391_
                                                  (cons _hd21392_
                                                        _xdeps21404_))))))))
                                 (if (##structure-instance-of?
                                      _hd21392_
                                      'gx#prelude-context::t)
                                     (let ((_id21406_
                                            (##structure-ref
                                             _hd21392_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (if (table-ref _ht21362_ _id21406_ '#f)
                                           (_find-deps21363_
                                            _rest21391_
                                            _deps21371_)
                                           (let ((_xdeps21408_
                                                  (_find-deps21363_
                                                   (##structure-ref
                                                    _hd21392_
                                                    '7
                                                    gx#prelude-context::t
                                                    '#f)
                                                   _deps21371_)))
                                             (if (table-ref
                                                  _ht21362_
                                                  _id21406_
                                                  '#f)
                                                 (_find-deps21363_
                                                  _rest21391_
                                                  _xdeps21408_)
                                                 (begin
                                                   (table-set!
                                                    _ht21362_
                                                    _id21406_
                                                    _hd21392_)
                                                   (_find-deps21363_
                                                    _rest21391_
                                                    (cons _hd21392_
                                                          _xdeps21408_)))))))
                                     (if (##structure-direct-instance-of?
                                          _hd21392_
                                          'gx#module-import::t)
                                         (if (fxzero? (##direct-structure-ref
                                                       _hd21392_
                                                       '3
                                                       gx#module-import::t
                                                       '#f))
                                             (_find-deps21363_
                                              (cons (##direct-structure-ref
                                                     _hd21392_
                                                     '1
                                                     gx#module-import::t
                                                     '#f)
                                                    _rest21391_)
                                              _deps21371_)
                                             (_find-deps21363_
                                              _rest21391_
                                              _deps21371_))
                                         (if (##structure-direct-instance-of?
                                              _hd21392_
                                              'gx#module-export::t)
                                             (_find-deps21363_
                                              (cons (##direct-structure-ref
                                                     _hd21392_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)
                                                    _rest21391_)
                                              _deps21371_)
                                             (if (##structure-direct-instance-of?
                                                  _hd21392_
                                                  'gx#import-set::t)
                                                 (if (fxzero? (##direct-structure-ref
                                                               _hd21392_
                                                               '3
                                                               gx#module-import::t
                                                               '#f))
                                                     (_find-deps21363_
                                                      (cons (##direct-structure-ref
                                                             _hd21392_
                                                             '1
                                                             gx#import-set::t
                                                             '#f)
                                                            _rest21391_)
                                                      _deps21371_)
                                                     (_find-deps21363_
                                                      _rest21391_
                                                      _deps21371_))
                                                 (error '"Unexpected module import"
                                                        _hd21392_)))))))))
                     (if (##pair? _rest2137221380_)
                         (let ((_hd2137721413_ (##car _rest2137221380_))
                               (_tl2137821415_ (##cdr _rest2137221380_)))
                           (let* ((_hd21418_ _hd2137721413_)
                                  (_rest21420_ _tl2137821415_))
                             (_K2137621410_ _rest21420_ _hd21418_)))
                         (_else2137421388_))))))
        (reverse (filter gx#expander-context-id
                         (_find-deps21363_
                          (let ((_$e21365_
                                 (gx#core-context-prelude__opt-lambda11555
                                  _ctx21360_)))
                            (if _$e21365_
                                ((lambda (_pre21368_)
                                   (cons _pre21368_
                                         (##structure-ref
                                          _ctx21360_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _$e21365_)
                                (##structure-ref
                                 _ctx21360_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))))
  (define gxc#find-static-module-file
    (lambda (_ctx21299_)
      (let* ((_scm21301_
              (string-append
               (gxc#static-module-name
                (##structure-ref _ctx21299_ '1 gx#expander-context::t '#f))
               '".scm"))
             (_dirs21303_ (gx#current-expander-module-library-path))
             (_dirs21312_
              (let ((_$e21305_ (gxc#current-compile-output-dir)))
                (if _$e21305_
                    ((lambda (_g2130721309_) (cons _g2130721309_ _dirs21303_))
                     _$e21305_)
                    _dirs21303_)))
             (_dirs21318_
              (map (lambda (_g2131321315_)
                     (path-expand '"static" _g2131321315_))
                   _dirs21312_)))
        (let _lp21321_ ((_rest21323_ _dirs21318_))
          (let* ((_rest2132421332_ _rest21323_)
                 (_E2132721336_
                  (lambda () (error '"No clause matching" _rest2132421332_)))
                 (_else2132621340_
                  (lambda ()
                    (gxc#raise-compile-error
                     '"cannot find static module"
                     (##structure-ref _ctx21299_ '1 gx#expander-context::t '#f)
                     _scm21301_)))
                 (_K2132821348_
                  (lambda (_rest21343_ _dir21344_)
                    (let ((_path21346_ (path-expand _scm21301_ _dir21344_)))
                      (if (file-exists? _path21346_)
                          _path21346_
                          (_lp21321_ _rest21343_))))))
            (if (##pair? _rest2132421332_)
                (let ((_hd2132921351_ (##car _rest2132421332_))
                      (_tl2133021353_ (##cdr _rest2132421332_)))
                  (let* ((_dir21356_ _hd2132921351_)
                         (_rest21358_ _tl2133021353_))
                    (_K2132821348_ _rest21358_ _dir21356_)))
                (_else2132621340_)))))))
  (define gxc#file-empty?
    (lambda (_path21297_)
      (zero? (file-info-size (file-info _path21297_ '#t)))))
  (define gxc#compile-top-module
    (lambda (_ctx21294_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#verbose
            '"compile "
            (##structure-ref _ctx21294_ '1 gx#expander-context::t '#f))
           (if (gxc#current-compile-optimize)
               (gxc#optimize! _ctx21294_)
               '#!void)
           (gxc#collect-bindings _ctx21294_)
           (gxc#compile-runtime-code _ctx21294_)
           (gxc#compile-meta-code _ctx21294_)
           (if (if (gxc#current-compile-optimize)
                   (gxc#current-compile-generate-ssxi)
                   '#f)
               (gxc#compile-ssxi-code _ctx21294_)
               '#!void)))
       gx#current-expander-context
       _ctx21294_
       gx#current-expander-phi
       '0
       gx#current-expander-marks
       '()
       gxc#current-compile-symbol-table
       (let ((__obj21659 (make-object gxc#symbol-table::t '2)))
         (begin (gxc#symbol-table:::init! __obj21659) __obj21659))
       gxc#current-compile-runtime-sections
       (make-hash-table-eq)
       gxc#current-compile-runtime-names
       (make-table))))
  (define gxc#collect-bindings
    (lambda (_ctx21292_)
      (gxc#apply-collect-bindings
       (##structure-ref _ctx21292_ '11 gx#module-context::t '#f))))
  (define gxc#compile-runtime-code
    (lambda (_ctx21251_)
      (letrec ((_compile121253_
                (lambda (_ctx21281_)
                  (let* ((_code21283_
                          (##structure-ref
                           _ctx21281_
                           '11
                           gx#module-context::t
                           '#f))
                         (_rt21287_
                          (if (gxc#apply-find-runtime-code _code21283_)
                              (let ((_idstr21285_
                                     (symbol->string
                                      (##structure-ref
                                       _ctx21281_
                                       '1
                                       gx#expander-context::t
                                       '#f))))
                                (string-append _idstr21285_ '"__0"))
                              '#f)))
                    (begin
                      (if _rt21287_
                          (begin
                            (table-set!
                             (gxc#current-compile-runtime-sections)
                             _ctx21281_
                             _rt21287_)
                            (_generate-runtime-code21254_
                             _ctx21281_
                             _code21283_))
                          (if (gxc#current-compile-static)
                              (let ((_path21290_
                                     (gxc#compile-static-output-file
                                      _ctx21281_)))
                                (with-output-to-file
                                 (cons 'path:
                                       (cons _path21290_
                                             (cons 'permissions:
                                                   (cons '420 '()))))
                                 void))
                              '#!void))
                      (_generate-loader-code21255_
                       _ctx21281_
                       _code21283_
                       _rt21287_)))))
               (_generate-runtime-code21254_
                (lambda (_ctx21269_ _code21270_)
                  (let* ((_runtime-code21273_
                          (call-with-parameters
                           (lambda () (gxc#apply-generate-runtime _code21270_))
                           gx#current-expander-context
                           _ctx21269_))
                         (_scm021275_
                          (gxc#compile-output-file _ctx21269_ '0 '".scm")))
                    (if (gxc#current-compile-static)
                        (let ((_scms21278_
                               (gxc#compile-static-output-file _ctx21269_)))
                          (begin
                            (call-with-parameters
                             (lambda ()
                               (gxc#compile-scm-file
                                _scm021275_
                                _runtime-code21273_))
                             gxc#current-compile-keep-scm
                             '#t)
                            (if (file-exists? _scms21278_)
                                (delete-file _scms21278_)
                                '#!void)
                            (gxc#verbose
                             '"copy static module "
                             _scm021275_
                             '" => "
                             _scms21278_)
                            (copy-file _scm021275_ _scms21278_)
                            (if (gxc#current-compile-keep-scm)
                                '#!void
                                (delete-file _scm021275_))))
                        (gxc#compile-scm-file
                         _scm021275_
                         _runtime-code21273_)))))
               (_generate-loader-code21255_
                (lambda (_ctx21259_ _code21260_ _rt21261_)
                  (let* ((_loader-code21264_
                          (call-with-parameters
                           (lambda () (gxc#apply-generate-loader _code21260_))
                           gx#current-expander-context
                           _ctx21259_))
                         (_loader-code21266_
                          (if _rt21261_
                              (cons 'begin
                                    (cons _loader-code21264_
                                          (cons (cons 'load-module
                                                      (cons _rt21261_ '()))
                                                '())))
                              _loader-code21264_)))
                    (gxc#compile-scm-file
                     (gxc#compile-output-file _ctx21259_ 'rt '".scm")
                     _loader-code21266_)))))
        (let ((_all-modules21257_
               (cons _ctx21251_ (gxc#lift-nested-modules _ctx21251_))))
          (for-each _compile121253_ _all-modules21257_)))))
  (define gxc#compile-meta-code
    (lambda (_ctx21153_)
      (letrec ((_compile-ssi21155_
                (lambda (_code21221_)
                  (let* ((_path21223_
                          (gxc#compile-output-file _ctx21153_ '#f '".ssi"))
                         (_prelude21234_
                          (let* ((_super21225_
                                  (##structure-ref
                                   _ctx21153_
                                   '3
                                   gx#phi-context::t
                                   '#f))
                                 (_$e21227_
                                  (##structure-ref
                                   _super21225_
                                   '1
                                   gx#expander-context::t
                                   '#f)))
                            (if _$e21227_
                                ((lambda (_g2122921231_)
                                   (make-symbol '":" _g2122921231_))
                                 _$e21227_)
                                ':<root>)))
                         (_ns21236_
                          (##structure-ref
                           _ctx21153_
                           '6
                           gx#module-context::t
                           '#f))
                         (_idstr21238_
                          (symbol->string
                           (##structure-ref
                            _ctx21153_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_pkg21245_
                          (let ((_$e21240_ (string-rindex _idstr21238_ '#\/)))
                            (if _$e21240_
                                ((lambda (_x21243_)
                                   (string->symbol
                                    (substring _idstr21238_ '0 _x21243_)))
                                 _$e21240_)
                                '#f)))
                         (_rt21247_
                          (table-ref
                           (gxc#current-compile-runtime-sections)
                           _ctx21153_
                           '#f)))
                    (begin
                      (gxc#verbose '"compile " _path21223_)
                      (with-output-to-file
                       (cons 'path:
                             (cons _path21223_
                                   (cons 'permissions: (cons '420 '()))))
                       (lambda ()
                         (begin
                           (displayln '"prelude:" '" " _prelude21234_)
                           (if _pkg21245_
                               (displayln '"package:" '" " _pkg21245_)
                               '#!void)
                           (displayln '"namespace:" '" " _ns21236_)
                           (newline)
                           (pretty-print _code21221_)
                           (if _rt21247_
                               (pretty-print
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons '_gx#load-module '()))
                                            (cons (cons '%#quote
                                                        (cons _rt21247_ '()))
                                                  '()))))
                               '#!void))))))))
               (_compile-phi21156_
                (lambda (_part21161_)
                  (let* ((_part2116221175_ _part21161_)
                         (_E2116421179_
                          (lambda ()
                            (error '"No clause matching" _part2116221175_)))
                         (_K2116521190_
                          (lambda (_code21182_
                                   _n21183_
                                   _phi21184_
                                   _phi-ctx21185_)
                            (let ((_code21188_
                                   (call-with-parameters
                                    (lambda ()
                                      (gxc#generate-runtime-phi _code21182_))
                                    gx#current-expander-context
                                    _phi-ctx21185_
                                    gx#current-expander-phi
                                    _phi21184_)))
                              (gxc#compile-scm-file
                               (gxc#compile-output-file
                                _ctx21153_
                                _n21183_
                                '".scm")
                               _code21188_)))))
                    (if (##pair? _part2116221175_)
                        (let ((_hd2116621193_ (##car _part2116221175_))
                              (_tl2116721195_ (##cdr _part2116221175_)))
                          (let ((_phi-ctx21198_ _hd2116621193_))
                            (if (##pair? _tl2116721195_)
                                (let ((_hd2116821200_ (##car _tl2116721195_))
                                      (_tl2116921202_ (##cdr _tl2116721195_)))
                                  (let ((_phi21205_ _hd2116821200_))
                                    (if (##pair? _tl2116921202_)
                                        (let ((_hd2117021207_
                                               (##car _tl2116921202_))
                                              (_tl2117121209_
                                               (##cdr _tl2116921202_)))
                                          (let ((_n21212_ _hd2117021207_))
                                            (if (##pair? _tl2117121209_)
                                                (let ((_hd2117221214_
                                                       (##car _tl2117121209_))
                                                      (_tl2117321216_
                                                       (##cdr _tl2117121209_)))
                                                  (let ((_code21219_
                                                         _hd2117221214_))
                                                    (if (##null? _tl2117321216_)
                                                        (_K2116521190_
                                                         _code21219_
                                                         _n21212_
                                                         _phi21205_
                                                         _phi-ctx21198_)
                                                        (_E2116421179_))))
                                                (_E2116421179_))))
                                        (_E2116421179_))))
                                (_E2116421179_))))
                        (_E2116421179_))))))
        (let ((_g21670_ (gxc#generate-meta-code _ctx21153_)))
          (begin
            (let ((_g21671_ (values-count _g21670_)))
              (if (not (fx= _g21671_ 2))
                  (error "Context expects 2 values" _g21671_)))
            (let ((_ssi-code21158_ (values-ref _g21670_ 0))
                  (_phi-code21159_ (values-ref _g21670_ 1)))
              (begin
                (_compile-ssi21155_ _ssi-code21158_)
                (for-each _compile-phi21156_ _phi-code21159_))))))))
  (define gxc#compile-ssxi-code
    (lambda (_ctx21136_)
      (let* ((_path21138_ (gxc#compile-output-file _ctx21136_ '#f '".ssxi.ss"))
             (_code21140_
              (gxc#apply-generate-ssxi
               (##structure-ref _ctx21136_ '11 gx#module-context::t '#f)))
             (_idstr21142_
              (symbol->string
               (##structure-ref _ctx21136_ '1 gx#expander-context::t '#f)))
             (_pkg21149_
              (let ((_$e21144_ (string-rindex _idstr21142_ '#\/)))
                (if _$e21144_
                    ((lambda (_x21147_)
                       (string->symbol (substring _idstr21142_ '0 _x21147_)))
                     _$e21144_)
                    '#f))))
        (begin
          (gxc#verbose '"compile " _path21138_)
          (with-output-to-file
           (cons 'path:
                 (cons _path21138_ (cons 'permissions: (cons '420 '()))))
           (lambda ()
             (begin
               (displayln '"prelude: :gerbil/compiler/ssxi")
               (if _pkg21149_ (displayln '"package: " _pkg21149_) '#!void)
               (newline)
               (pretty-print _code21140_))))))))
  (define gxc#generate-meta-code
    (lambda (_ctx21129_)
      (let* ((_state21131_
              (let ((__obj21660 (make-object gxc#meta-state::t '4)))
                (begin
                  (gxc#meta-state:::init! __obj21660 _ctx21129_)
                  __obj21660)))
             (_ssi-code21133_
              (gxc#apply-generate-meta
               (##structure-ref _ctx21129_ '11 gx#module-context::t '#f)
               _state21131_)))
        (values _ssi-code21133_ (gxc#meta-state-end! _state21131_)))))
  (define gxc#generate-runtime-phi
    (lambda (_stx21122_)
      (let ((_lifts21124_ (box '())))
        (call-with-parameters
         (lambda ()
           (let ((_code21127_ (gxc#apply-generate-runtime-phi _stx21122_)))
             (if (null? (unbox _lifts21124_))
                 _code21127_
                 (cons 'begin
                       (foldr1 cons
                               (cons _code21127_ '())
                               (reverse (unbox _lifts21124_)))))))
         gxc#current-compile-lift
         _lifts21124_
         gxc#current-compile-marks
         (make-hash-table-eq)))))
  (define gxc#lift-nested-modules
    (lambda (_ctx21118_)
      (let ((_modules21120_ (box '())))
        (begin
          (gxc#apply-lift-modules
           (##structure-ref _ctx21118_ '11 gx#module-context::t '#f)
           _modules21120_)
          (reverse (unbox _modules21120_))))))
  (define gxc#compile-scm-file
    (lambda (_path21114_ _code21115_)
      (begin
        (gxc#verbose '"compile " _path21114_)
        (with-output-to-file
         (cons 'path: (cons _path21114_ (cons 'permissions: (cons '420 '()))))
         (lambda ()
           (begin
             (pretty-print
              '(declare (block) (standard-bindings) (extended-bindings)))
             (pretty-print _code21115_))))
        (if (gxc#current-compile-invoke-gsc)
            (gxc#gsc-compile-file _path21114_)
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path21114_)))))
  (define gxc#gsc-debug-options
    (lambda ()
      (let ((_$e21106_ (gxc#current-compile-debug)))
        (if _$e21106_
            ((lambda (_debug21109_)
               (let ((_$e21111_ _debug21109_))
                 (if (eq? _$e21111_ 'env)
                     (cons '"-debug-environments" '())
                     (if (eq? _$e21111_ 'src)
                         (cons '"-debug-environments"
                               (cons '"-debug-source" '()))
                         (if (memq _$e21111_ '(all #t))
                             (cons '"-debug" '())
                             (gxc#raise-compile-error
                              '"unknown debug option"
                              _debug21109_))))))
             _$e21106_)
            '()))))
  (define gxc#gsc-compile-file
    (lambda (_path21088_)
      (let* ((_gsc-args21095_
              (let ((_$e21090_ (gxc#current-compile-gsc-options)))
                (if _$e21090_
                    ((lambda (_opts21093_)
                       (foldr1 cons (cons _path21088_ '()) _opts21093_))
                     _$e21090_)
                    (cons _path21088_ '()))))
             (_gsc-args21097_
              (foldr1 cons _gsc-args21095_ (gxc#gsc-debug-options)))
             (_g21672_
              (gxc#verbose '"invoke gsc " (cons 'gsc _gsc-args21097_)))
             (_proc21100_
              (open-process
               (cons 'path:
                     (cons '"gsc"
                           (cons 'arguments:
                                 (cons _gsc-args21097_
                                       (cons 'stdout-redirection:
                                             (cons '#f '()))))))))
             (_status21102_ (process-status _proc21100_)))
        (if (zero? _status21102_)
            '#!void
            (gxc#raise-compile-error
             '"Compilation error; gsc exit with nonzero status"
             _path21088_
             _status21102_)))))
  (define gxc#compile-output-file
    (lambda (_ctx21060_ _n21061_ _ext21062_)
      (letrec ((_module-relative-path21064_
                (lambda (_ctx21086_)
                  (path-strip-directory
                   (symbol->string
                    (##structure-ref
                     _ctx21086_
                     '1
                     gx#expander-context::t
                     '#f)))))
               (_module-source-directory21065_
                (lambda (_ctx21082_)
                  (path-directory
                   (let ((_mpath21084_
                          (##structure-ref
                           _ctx21082_
                           '7
                           gx#module-context::t
                           '#f)))
                     (if (string? _mpath21084_)
                         _mpath21084_
                         (last _mpath21084_))))))
               (_section-string21066_
                (lambda (_n21080_)
                  (if (number? _n21080_)
                      (number->string _n21080_)
                      (if (symbol? _n21080_)
                          (symbol->string _n21080_)
                          (if (string? _n21080_)
                              _n21080_
                              (gxc#raise-compile-error
                               '"Unexpected section"
                               _n21080_))))))
               (_file-name21067_
                (lambda (_path21078_)
                  (if _n21061_
                      (string-append
                       _path21078_
                       '"__"
                       (_section-string21066_ _n21061_)
                       _ext21062_)
                      (string-append _path21078_ _ext21062_))))
               (_file-path21068_
                (lambda ()
                  (let ((_$e21073_ (gxc#current-compile-output-dir)))
                    (if _$e21073_
                        ((lambda (_outdir21076_)
                           (path-expand
                            (_file-name21067_
                             (symbol->string
                              (##structure-ref
                               _ctx21060_
                               '1
                               gx#expander-context::t
                               '#f)))
                            _outdir21076_))
                         _$e21073_)
                        (path-expand
                         (_file-name21067_
                          (_module-relative-path21064_ _ctx21060_))
                         (_module-source-directory21065_ _ctx21060_)))))))
        (let ((_path21070_ (_file-path21068_)))
          (begin
            (create-directory* (path-directory _path21070_))
            _path21070_)))))
  (define gxc#compile-static-output-file
    (lambda (_ctx21043_)
      (letrec ((_file-name21045_
                (lambda (_idstr21058_)
                  (string-append
                   (gxc#static-module-name _idstr21058_)
                   '".scm")))
               (_file-path21046_
                (lambda ()
                  (let* ((_file21051_
                          (_file-name21045_
                           (symbol->string
                            (##structure-ref
                             _ctx21043_
                             '1
                             gx#expander-context::t
                             '#f))))
                         (_$e21053_ (gxc#current-compile-output-dir)))
                    (if _$e21053_
                        ((lambda (_outdir21056_)
                           (path-expand
                            _file21051_
                            (path-expand '"static" _outdir21056_)))
                         _$e21053_)
                        (path-expand _file21051_ '"static"))))))
        (let ((_path21048_ (_file-path21046_)))
          (begin
            (create-directory* (path-directory _path21048_))
            _path21048_)))))
  (define gxc#compile-exe-output-file
    (lambda (_ctx21030_ _opts21031_)
      (let ((_$e21033_ (pgetq 'output-file: _opts21031_)))
        (if _$e21033_
            (values _$e21033_)
            (let* ((_mod-str21036_
                    (symbol->string
                     (##structure-ref
                      _ctx21030_
                      '1
                      gx#expander-context::t
                      '#f)))
                   (_$e21038_ (string-rindex _mod-str21036_ '#\/)))
              (if _$e21038_
                  ((lambda (_ix21041_)
                     (substring
                      _mod-str21036_
                      (fx+ _ix21041_ '1)
                      (string-length _mod-str21036_)))
                   _$e21038_)
                  _mod-str21036_))))))
  (define gxc#static-module-name
    (lambda (_idstr21026_)
      (if (string? _idstr21026_)
          (let ((_strs21028_ (string-split _idstr21026_ '#\/)))
            (string-join _strs21028_ '"__"))
          (if (symbol? _idstr21026_)
              (gxc#static-module-name (symbol->string _idstr21026_))
              (error '"Bad module id" _idstr21026_))))))
