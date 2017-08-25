(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#compile-timestamp
    (lambda () (inexact->exact (floor (time->seconds (current-time))))))
  (begin
    (define gxc#compile-file__opt-lambda20731
      (lambda (_srcpath20733_ _opts20734_)
        (begin
          (if (string? _srcpath20733_)
              '#!void
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath20733_))
          (let ((_outdir20736_ (pgetq 'output-dir: _opts20734_))
                (_invoke-gsc?20737_ (pgetq 'invoke-gsc: _opts20734_))
                (_gsc-options20738_ (pgetq 'gsc-options: _opts20734_))
                (_keep-scm?20739_ (pgetq 'keep-scm: _opts20734_))
                (_verbosity20740_ (pgetq 'verbose: _opts20734_))
                (_optimize20741_ (pgetq 'optimize: _opts20734_))
                (_gen-ssxi20742_ (pgetq 'generate-ssxi: _opts20734_))
                (_static20743_ (pgetq 'static: _opts20734_)))
            (begin
              (if _outdir20736_ (create-directory* _outdir20736_) '#!void)
              (if _optimize20741_ (gxc#optimizer-info-init!) '#!void)
              (call-with-parameters
               (lambda ()
                 (begin
                   (gxc#verbose '"compile " _srcpath20733_)
                   (gxc#compile-top-module
                    (gx#import-module__0 _srcpath20733_))))
               gxc#current-compile-output-dir
               _outdir20736_
               gxc#current-compile-invoke-gsc
               _invoke-gsc?20737_
               gxc#current-compile-gsc-options
               _gsc-options20738_
               gxc#current-compile-keep-scm
               _keep-scm?20739_
               gxc#current-compile-verbose
               _verbosity20740_
               gxc#current-compile-optimize
               _optimize20741_
               gxc#current-compile-generate-ssxi
               _gen-ssxi20742_
               gxc#current-compile-static
               _static20743_
               gxc#current-compile-timestamp
               (gxc#compile-timestamp)))))))
    (begin
      (define gxc#compile-file__0
        (lambda (_srcpath20749_)
          (let ((_opts20751_ '()))
            (gxc#compile-file__opt-lambda20731 _srcpath20749_ _opts20751_))))
      (define gxc#compile-file
        (lambda _g20759_
          (let ((_g20758_ (length _g20759_)))
            (cond ((fx= _g20758_ 1) (apply gxc#compile-file__0 _g20759_))
                  ((fx= _g20758_ 2)
                   (apply gxc#compile-file__opt-lambda20731 _g20759_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-file
                    _g20759_))))))))
  (begin
    (define gxc#compile-exe-stub__opt-lambda20717
      (lambda (_srcpath20719_ _opts20720_)
        (gxc#do-compile-exe
         _srcpath20719_
         _opts20720_
         gxc#compile-exe-stub-module)))
    (begin
      (define gxc#compile-exe-stub__0
        (lambda (_srcpath20725_)
          (let ((_opts20727_ '()))
            (gxc#compile-exe-stub__opt-lambda20717
             _srcpath20725_
             _opts20727_))))
      (define gxc#compile-exe-stub
        (lambda _g20761_
          (let ((_g20760_ (length _g20761_)))
            (cond ((fx= _g20760_ 1) (apply gxc#compile-exe-stub__0 _g20761_))
                  ((fx= _g20760_ 2)
                   (apply gxc#compile-exe-stub__opt-lambda20717 _g20761_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-exe-stub
                    _g20761_))))))))
  (begin
    (define gxc#compile-static-exe__opt-lambda20703
      (lambda (_srcpath20705_ _opts20706_)
        (gxc#do-compile-exe
         _srcpath20705_
         _opts20706_
         gxc#compile-exe-static-module)))
    (begin
      (define gxc#compile-static-exe__0
        (lambda (_srcpath20711_)
          (let ((_opts20713_ '()))
            (gxc#compile-static-exe__opt-lambda20703
             _srcpath20711_
             _opts20713_))))
      (define gxc#compile-static-exe
        (lambda _g20763_
          (let ((_g20762_ (length _g20763_)))
            (cond ((fx= _g20762_ 1) (apply gxc#compile-static-exe__0 _g20763_))
                  ((fx= _g20762_ 2)
                   (apply gxc#compile-static-exe__opt-lambda20703 _g20763_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-static-exe
                    _g20763_))))))))
  (define gxc#do-compile-exe
    (lambda (_srcpath20693_ _opts20694_ _compile-e20695_)
      (begin
        (if (string? _srcpath20693_)
            '#!void
            (gxc#raise-compile-error
             '"Invalid module source path"
             _srcpath20693_))
        (let ((_outdir20697_ (pgetq 'output-dir: _opts20694_))
              (_invoke-gsc?20698_ (pgetq 'invoke-gsc: _opts20694_))
              (_gsc-options20699_ (pgetq 'gsc-options: _opts20694_))
              (_keep-scm?20700_ (pgetq 'keep-scm: _opts20694_))
              (_verbosity20701_ (pgetq 'verbose: _opts20694_)))
          (begin
            (if _outdir20697_ (create-directory* _outdir20697_) '#!void)
            (call-with-parameters
             (lambda ()
               (begin
                 (gxc#verbose '"compile exe " _srcpath20693_)
                 (_compile-e20695_
                  (gx#import-module__0 _srcpath20693_)
                  _opts20694_)))
             gxc#current-compile-output-dir
             _outdir20697_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?20698_
             gxc#current-compile-gsc-options
             _gsc-options20699_
             gxc#current-compile-keep-scm
             _keep-scm?20700_
             gxc#current-compile-verbose
             _verbosity20701_
             gxc#current-compile-timestamp
             (gxc#compile-timestamp)))))))
  (define gxc#compile-exe-stub-module
    (lambda (_ctx20657_ _opts20658_)
      (let ((_generate-stub20660_
             (lambda ()
               (let ((_mod-str20686_
                      (symbol->string
                       (##structure-ref
                        _ctx20657_
                        '1
                        gx#expander-context::t
                        '#f))))
                 (let ((_mod-rt20688_ (string-append _mod-str20686_ '"__rt")))
                   (let ((_mod-main20690_
                          (gxc#find-runtime-symbol _ctx20657_ 'main)))
                     (let ()
                       (begin
                         (write '(##namespace ("")))
                         (newline)
                         (write (cons '_gx#start!
                                      (cons _mod-rt20688_
                                            (cons (cons 'quote
                                                        (cons _mod-main20690_
                                                              '()))
                                                  '()))))
                         (newline)))))))))
        (let ((_compile-stub20661_
               (lambda (_output-scm20668_ _output-bin20669_)
                 (let ((_init-stub20671_
                        (path-expand
                         '"lib/gx-init-exe.scm"
                         (getenv '"GERBIL_HOME"))))
                   (let ((_gxc-cache20673_ (gxc#compile-cache-directory)))
                     (let ((_init-stub20675_
                            (gxc#compile-cache
                             _init-stub20671_
                             _gxc-cache20673_)))
                       (let ((_gsc-args20677_
                              (cons '"-exe"
                                    (cons '"-o"
                                          (cons _output-bin20669_
                                                (cons _init-stub20675_
                                                      (cons _output-scm20668_
                                                            '())))))))
                         (let ((_g20764_
                                (gxc#verbose
                                 '"invoke gsc "
                                 (cons 'gsc _gsc-args20677_))))
                           (let ((_proc20680_
                                  (open-process
                                   (cons 'path:
                                         (cons '"gsc"
                                               (cons 'arguments:
                                                     (cons _gsc-args20677_
                                                           (cons 'stdout-redirection:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (let ((_status20682_
                                    (process-status _proc20680_)))
                               (let ()
                                 (if (zero? _status20682_)
                                     '#!void
                                     (gxc#raise-compile-error
                                      '"Compilation error; gsc exit with nonzero status"
                                      _output-scm20668_
                                      _output-bin20669_
                                      _status20682_)))))))))))))
          (let ((_output-bin20663_
                 (gxc#compile-exe-output-file _ctx20657_ _opts20658_)))
            (let ((_output-scm20665_
                   (string-append _output-bin20663_ '".scm")))
              (let ()
                (begin
                  (with-output-to-file _output-scm20665_ _generate-stub20660_)
                  (if (gxc#current-compile-invoke-gsc)
                      (_compile-stub20661_ _output-scm20665_ _output-bin20663_)
                      '#!void)
                  (if (gxc#current-compile-keep-scm)
                      '#!void
                      (delete-file _output-scm20665_))))))))))
  (define gxc#compile-exe-static-module
    (lambda (_ctx20592_ _opts20593_)
      (let ((_generate-stub20595_
             (lambda ()
               (let ((_mod-main20655_
                      (gxc#find-runtime-symbol _ctx20592_ 'main)))
                 (begin
                   (write '(##namespace ("")))
                   (newline)
                   (write (cons 'apply
                                (cons _mod-main20655_
                                      (cons (cons 'cdr
                                                  (cons (cons 'command-line
                                                              '())
                                                        '()))
                                            '()))))
                   (newline))))))
        (let ((_compile-stub20596_
               (lambda (_output-scm20603_ _output-bin20604_)
                 (let ((_gerbil-home20606_ (getenv '"GERBIL_HOME")))
                   (let ((_gx-gambc020608_
                          (path-expand
                           '"lib/static/gx-gambc0.scm"
                           _gerbil-home20606_)))
                     (let ((_gx-gambc-init20610_
                            (path-expand
                             '"lib/gx-init-static-exe.scm"
                             _gerbil-home20606_)))
                       (let ((_gx-gambc-macros20612_
                              (path-expand
                               '"lib/static/gx-gambc#.scm"
                               _gerbil-home20606_)))
                         (let ((_include-gx-gambc-macros20614_
                                (string-append
                                 '"(include \""
                                 _gx-gambc-macros20612_
                                 '"\")")))
                           (let ((_bin-scm20616_
                                  (gxc#find-static-module-file _ctx20592_)))
                             (let ((_deps20618_
                                    (gxc#find-runtime-module-deps _ctx20592_)))
                               (let ((_deps20620_
                                      (map gxc#find-static-module-file
                                           _deps20618_)))
                                 (let ((_deps20625_
                                        (filter (lambda (_$obj20622_)
                                                  (not (gxc#file-empty?
                                                        _$obj20622_)))
                                                _deps20620_)))
                                   (let ((_gxc-cache20627_
                                          (gxc#compile-cache-directory)))
                                     (let ((_gx-gambc020629_
                                            (gxc#compile-cache
                                             _gx-gambc020608_
                                             _gxc-cache20627_)))
                                       (let ((_gx-gambc-init20631_
                                              (gxc#compile-cache
                                               _gx-gambc-init20610_
                                               _gxc-cache20627_)))
                                         (let ((_deps20637_
                                                (map (lambda (_g2063220634_)
                                                       (gxc#compile-cache
                                                        _g2063220634_
                                                        _gxc-cache20627_))
                                                     _deps20625_)))
                                           (let ((_bin-scm20639_
                                                  (gxc#compile-cache
                                                   _bin-scm20616_
                                                   _gxc-cache20627_)))
                                             (let ((_gsc-opts20644_
                                                    (let ((_$e20641_
                                                           (pgetq 'gsc-options:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _opts20593_)))
              (if _$e20641_ _$e20641_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_gsc-args20646_
                                                      (cons '"-exe"
                                                            (cons '"-o"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _output-bin20604_
                                (foldr1 cons
                                        (cons '"-e"
                                              (cons _include-gx-gambc-macros20614_
                                                    (cons _gx-gambc020629_
                                                          (cons _gx-gambc-init20631_
                                                                (foldr1 cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons _bin-scm20639_
                                      (cons _output-scm20603_ '()))
                                _deps20637_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _gsc-opts20644_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_g20765_
                                                        (gxc#verbose
                                                         '"invoke gsc "
                                                         (cons 'gsc
                                                               _gsc-args20646_))))
                                                   (let ((_proc20649_
                                                          (open-process
                                                           (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '"gsc"
                               (cons 'arguments:
                                     (cons _gsc-args20646_
                                           (cons 'stdout-redirection:
                                                 (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_status20651_
                                                            (process-status
                                                             _proc20649_)))
                                                       (let ()
                                                         (if (zero? _status20651_)
                                                             '#!void
                                                             (gxc#raise-compile-error
                                                              '"Compilation error; gsc exit with nonzero status"
                                                              _output-scm20603_
                                                              _output-bin20604_
                                                              _status20651_)))))))))))))))))))))))))
          (let ((_output-bin20598_
                 (gxc#compile-exe-output-file _ctx20592_ _opts20593_)))
            (let ((_output-scm20600_
                   (string-append _output-bin20598_ '".scm")))
              (let ()
                (begin
                  (with-output-to-file _output-scm20600_ _generate-stub20595_)
                  (if (gxc#current-compile-invoke-gsc)
                      (_compile-stub20596_ _output-scm20600_ _output-bin20598_)
                      '#!void)
                  (if (gxc#current-compile-keep-scm)
                      '#!void
                      (delete-file _output-scm20600_))))))))))
  (define gxc#compile-cache-directory
    (lambda ()
      (let ((_cachedir20587_ (getenv '"GERBIL_CACHE" '"~/.cache/gerbil")))
        (let ((_gxc-cache20589_ (path-expand '"gxc" _cachedir20587_)))
          (let ()
            (begin
              (create-directory* _gxc-cache20589_)
              (path-normalize _gxc-cache20589_)))))))
  (define gxc#compile-cache
    (lambda (_file20581_ _gxc-cache20582_)
      (let ((_cachefile20584_
             (path-expand
              (path-strip-directory _file20581_)
              _gxc-cache20582_)))
        (begin
          (if (file-exists? _cachefile20584_)
              (if (file-newer? _file20581_ _cachefile20584_)
                  (begin
                    (delete-file _cachefile20584_)
                    (copy-file _file20581_ _cachefile20584_))
                  '#!void)
              (copy-file _file20581_ _cachefile20584_))
          _cachefile20584_))))
  (define gxc#find-export-binding
    (lambda (_ctx20531_ _id20532_)
      (let ((_$e20578_
             (find (lambda (_e2053320535_)
                     (let ((_g2053720547_ _e2053320535_))
                       (let ((_E2054020551_
                              (lambda ()
                                (error '"No clause matching" _g2053720547_))))
                         (let ((_else2053920555_ (lambda () '#f)))
                           (let ((_K2054120559_ (lambda () '#t)))
                             (if (##structure-direct-instance-of?
                                  _g2053720547_
                                  (##type-id gx#module-export::t))
                                 (let ((_e2054220562_
                                        (##vector-ref _g2053720547_ '1)))
                                   (let ((_e2054320565_
                                          (##vector-ref _g2053720547_ '2)))
                                     (let ((_e2054420568_
                                            (##vector-ref _g2053720547_ '3)))
                                       (if (##eq? _e2054420568_ '0)
                                           (let ((_e2054520571_
                                                  (##vector-ref
                                                   _g2053720547_
                                                   '4)))
                                             (if ((lambda (_g2057320575_)
                                                    (eq? _g2057320575_
                                                         _id20532_))
                                                  _e2054520571_)
                                                 (_K2054120559_)
                                                 (_else2053920555_)))
                                           (_else2053920555_)))))
                                 (_else2053920555_)))))))
                   (##structure-ref _ctx20531_ '9 gx#module-context::t '#f))))
        (if _$e20578_ (gx#core-resolve-module-export _$e20578_) '#f))))
  (define gxc#find-runtime-symbol
    (lambda (_ctx20523_ _id20524_)
      (let ((_$e20526_ (gxc#find-export-binding _ctx20523_ _id20524_)))
        (if _$e20526_
            ((lambda (_bind20529_)
               (begin
                 (if (##structure-instance-of?
                      _bind20529_
                      'gx#runtime-binding::t)
                     '#!void
                     (gxc#raise-compile-error
                      '"export is not a runtime binding"
                      _id20524_))
                 (##structure-ref _bind20529_ '1 gx#binding::t '#f)))
             _$e20526_)
            (gxc#raise-compile-error
             '"module does not export symbol"
             (##structure-ref _ctx20523_ '1 gx#expander-context::t '#f)
             _id20524_)))))
  (define gxc#find-runtime-module-deps
    (lambda (_ctx20461_)
      (let ((_ht20463_ (make-hash-table-eq)))
        (letrec ((_find-deps20464_
                  (lambda (_rest20471_ _deps20472_)
                    (let ((_rest2047320481_ _rest20471_))
                      (let ((_E2047620485_
                             (lambda ()
                               (error '"No clause matching"
                                      _rest2047320481_))))
                        (let ((_else2047520489_ (lambda () _deps20472_)))
                          (let ((_K2047720511_
                                 (lambda (_rest20492_ _hd20493_)
                                   (if (##structure-instance-of?
                                        _hd20493_
                                        'gx#module-context::t)
                                       (let ((_id20495_
                                              (##structure-ref
                                               _hd20493_
                                               '1
                                               gx#expander-context::t
                                               '#f))
                                             (_imports20496_
                                              (##structure-ref
                                               _hd20493_
                                               '8
                                               gx#module-context::t
                                               '#f)))
                                         (if (table-ref
                                              _ht20463_
                                              _id20495_
                                              '#f)
                                             (_find-deps20464_
                                              _rest20492_
                                              _deps20472_)
                                             (let ((_$e20498_
                                                    (gx#core-context-prelude__opt-lambda11357
                                                     _hd20493_)))
                                               (if _$e20498_
                                                   ((lambda (_pre20501_)
                                                      (let ((_xdeps20503_
                                                             (_find-deps20464_
                                                              (cons _pre20501_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _imports20496_)
                      _deps20472_)))
                (begin
                  (table-set! _ht20463_ _id20495_ _hd20493_)
                  (_find-deps20464_
                   _rest20492_
                   (cons _hd20493_ _xdeps20503_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _$e20498_)
                                                   (let ((_xdeps20505_
                                                          (_find-deps20464_
                                                           _imports20496_
                                                           _deps20472_)))
                                                     (begin
                                                       (table-set!
                                                        _ht20463_
                                                        _id20495_
                                                        _hd20493_)
                                                       (_find-deps20464_
                                                        _rest20492_
                                                        (cons _hd20493_
                                                              _xdeps20505_))))))))
                                       (if (##structure-instance-of?
                                            _hd20493_
                                            'gx#prelude-context::t)
                                           (let ((_id20507_
                                                  (##structure-ref
                                                   _hd20493_
                                                   '1
                                                   gx#expander-context::t
                                                   '#f)))
                                             (if (table-ref
                                                  _ht20463_
                                                  _id20507_
                                                  '#f)
                                                 (_find-deps20464_
                                                  _rest20492_
                                                  _deps20472_)
                                                 (let ((_xdeps20509_
                                                        (_find-deps20464_
                                                         (##structure-ref
                                                          _hd20493_
                                                          '7
                                                          gx#prelude-context::t
                                                          '#f)
                                                         _deps20472_)))
                                                   (if (table-ref
                                                        _ht20463_
                                                        _id20507_
                                                        '#f)
                                                       (_find-deps20464_
                                                        _rest20492_
                                                        _xdeps20509_)
                                                       (begin
                                                         (table-set!
                                                          _ht20463_
                                                          _id20507_
                                                          _hd20493_)
                                                         (_find-deps20464_
                                                          _rest20492_
                                                          (cons _hd20493_
                                                                _xdeps20509_)))))))
                                           (if (##structure-direct-instance-of?
                                                _hd20493_
                                                'gx#module-import::t)
                                               (if (fxzero? (##direct-structure-ref
                                                             _hd20493_
                                                             '3
                                                             gx#module-import::t
                                                             '#f))
                                                   (_find-deps20464_
                                                    (cons (##direct-structure-ref
                                                           _hd20493_
                                                           '1
                                                           gx#module-import::t
                                                           '#f)
                                                          _rest20492_)
                                                    _deps20472_)
                                                   (_find-deps20464_
                                                    _rest20492_
                                                    _deps20472_))
                                               (if (##structure-direct-instance-of?
                                                    _hd20493_
                                                    'gx#module-export::t)
                                                   (_find-deps20464_
                                                    (cons (##direct-structure-ref
                                                           _hd20493_
                                                           '1
                                                           gx#module-export::t
                                                           '#f)
                                                          _rest20492_)
                                                    _deps20472_)
                                                   (if (##structure-direct-instance-of?
                                                        _hd20493_
                                                        'gx#import-set::t)
                                                       (if (fxzero? (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd20493_
                             '3
                             gx#module-import::t
                             '#f))
                   (_find-deps20464_
                    (cons (##direct-structure-ref
                           _hd20493_
                           '1
                           gx#import-set::t
                           '#f)
                          _rest20492_)
                    _deps20472_)
                   (_find-deps20464_ _rest20492_ _deps20472_))
               (error '"Unexpected module import" _hd20493_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (##pair? _rest2047320481_)
                                (let ((_hd2047820514_ (##car _rest2047320481_))
                                      (_tl2047920516_
                                       (##cdr _rest2047320481_)))
                                  (let ((_hd20519_ _hd2047820514_))
                                    (let ((_rest20521_ _tl2047920516_))
                                      (_K2047720511_ _rest20521_ _hd20519_))))
                                (_else2047520489_)))))))))
          (reverse (filter gx#expander-context-id
                           (_find-deps20464_
                            (let ((_$e20466_
                                   (gx#core-context-prelude__opt-lambda11357
                                    _ctx20461_)))
                              (if _$e20466_
                                  ((lambda (_pre20469_)
                                     (cons _pre20469_
                                           (##structure-ref
                                            _ctx20461_
                                            '8
                                            gx#module-context::t
                                            '#f)))
                                   _$e20466_)
                                  (##structure-ref
                                   _ctx20461_
                                   '8
                                   gx#module-context::t
                                   '#f)))
                            '())))))))
  (define gxc#find-static-module-file
    (lambda (_ctx20400_)
      (let ((_scm20402_
             (string-append
              (gxc#static-module-name
               (##structure-ref _ctx20400_ '1 gx#expander-context::t '#f))
              '".scm")))
        (let ((_dirs20404_ (gx#current-expander-module-library-path)))
          (let ((_dirs20413_
                 (let ((_$e20406_ (gxc#current-compile-output-dir)))
                   (if _$e20406_
                       ((lambda (_g2040820410_)
                          (cons _g2040820410_ _dirs20404_))
                        _$e20406_)
                       _dirs20404_))))
            (let ((_dirs20419_
                   (map (lambda (_g2041420416_)
                          (path-expand '"static" _g2041420416_))
                        _dirs20413_)))
              (let ()
                ((letrec ((_lp20422_
                           (lambda (_rest20424_)
                             (let ((_rest2042520433_ _rest20424_))
                               (let ((_E2042820437_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _rest2042520433_))))
                                 (let ((_else2042720441_
                                        (lambda ()
                                          (gxc#raise-compile-error
                                           '"cannot find static module"
                                           (##structure-ref
                                            _ctx20400_
                                            '1
                                            gx#expander-context::t
                                            '#f)
                                           _scm20402_))))
                                   (let ((_K2042920449_
                                          (lambda (_rest20444_ _dir20445_)
                                            (let ((_path20447_
                                                   (path-expand
                                                    _scm20402_
                                                    _dir20445_)))
                                              (if (file-exists? _path20447_)
                                                  _path20447_
                                                  (_lp20422_ _rest20444_))))))
                                     (if (##pair? _rest2042520433_)
                                         (let ((_hd2043020452_
                                                (##car _rest2042520433_))
                                               (_tl2043120454_
                                                (##cdr _rest2042520433_)))
                                           (let ((_dir20457_ _hd2043020452_))
                                             (let ((_rest20459_
                                                    _tl2043120454_))
                                               (_K2042920449_
                                                _rest20459_
                                                _dir20457_))))
                                         (_else2042720441_)))))))))
                   _lp20422_)
                 _dirs20419_))))))))
  (define gxc#file-empty?
    (lambda (_path20398_)
      (zero? (file-info-size (file-info _path20398_ '#t)))))
  (define gxc#compile-top-module
    (lambda (_ctx20395_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#verbose
            '"compile "
            (##structure-ref _ctx20395_ '1 gx#expander-context::t '#f))
           (if (gxc#current-compile-optimize)
               (gxc#optimize! _ctx20395_)
               '#!void)
           (gxc#collect-bindings _ctx20395_)
           (gxc#compile-runtime-code _ctx20395_)
           (gxc#compile-meta-code _ctx20395_)
           (if (if (gxc#current-compile-optimize)
                   (gxc#current-compile-generate-ssxi)
                   '#f)
               (gxc#compile-ssxi-code _ctx20395_)
               '#!void)))
       gx#current-expander-context
       _ctx20395_
       gx#current-expander-phi
       '0
       gx#current-expander-marks
       '()
       gxc#current-compile-symbol-table
       (let ((__obj20756 (make-object gxc#symbol-table::t '2)))
         (begin (gxc#symbol-table:::init! __obj20756) __obj20756))
       gxc#current-compile-runtime-sections
       (make-hash-table-eq)
       gxc#current-compile-runtime-names
       (make-table))))
  (define gxc#collect-bindings
    (lambda (_ctx20393_)
      (gxc#apply-collect-bindings
       (##structure-ref _ctx20393_ '11 gx#module-context::t '#f))))
  (define gxc#compile-runtime-code
    (lambda (_ctx20352_)
      (let ((_generate-runtime-code20355_
             (lambda (_ctx20370_ _code20371_)
               (let ((_runtime-code20374_
                      (call-with-parameters
                       (lambda () (gxc#apply-generate-runtime _code20371_))
                       gx#current-expander-context
                       _ctx20370_)))
                 (let ((_scm020376_
                        (gxc#compile-output-file _ctx20370_ '0 '".scm")))
                   (let ()
                     (if (gxc#current-compile-static)
                         (let ((_scms20379_
                                (gxc#compile-static-output-file _ctx20370_)))
                           (begin
                             (call-with-parameters
                              (lambda ()
                                (gxc#compile-scm-file
                                 _scm020376_
                                 _runtime-code20374_))
                              gxc#current-compile-keep-scm
                              '#t)
                             (if (file-exists? _scms20379_)
                                 (delete-file _scms20379_)
                                 '#!void)
                             (gxc#verbose
                              '"copy static module "
                              _scm020376_
                              '" => "
                              _scms20379_)
                             (copy-file _scm020376_ _scms20379_)
                             (if (gxc#current-compile-keep-scm)
                                 '#!void
                                 (delete-file _scm020376_))))
                         (gxc#compile-scm-file
                          _scm020376_
                          _runtime-code20374_))))))))
        (let ((_generate-loader-code20356_
               (lambda (_ctx20360_ _code20361_ _rt20362_)
                 (let ((_loader-code20365_
                        (call-with-parameters
                         (lambda () (gxc#apply-generate-loader _code20361_))
                         gx#current-expander-context
                         _ctx20360_)))
                   (let ((_loader-code20367_
                          (if _rt20362_
                              (cons 'begin
                                    (cons _loader-code20365_
                                          (cons (cons 'load-module
                                                      (cons _rt20362_ '()))
                                                '())))
                              _loader-code20365_)))
                     (let ()
                       (gxc#compile-scm-file
                        (gxc#compile-output-file _ctx20360_ 'rt '".scm")
                        _loader-code20367_)))))))
          (let ((_compile120354_
                 (lambda (_ctx20382_)
                   (let ((_code20384_
                          (##structure-ref
                           _ctx20382_
                           '11
                           gx#module-context::t
                           '#f)))
                     (let ((_rt20388_
                            (if (gxc#apply-find-runtime-code _code20384_)
                                (let ((_idstr20386_
                                       (symbol->string
                                        (##structure-ref
                                         _ctx20382_
                                         '1
                                         gx#expander-context::t
                                         '#f))))
                                  (string-append _idstr20386_ '"__0"))
                                '#f)))
                       (let ()
                         (begin
                           (if _rt20388_
                               (begin
                                 (table-set!
                                  (gxc#current-compile-runtime-sections)
                                  _ctx20382_
                                  _rt20388_)
                                 (_generate-runtime-code20355_
                                  _ctx20382_
                                  _code20384_))
                               (if (gxc#current-compile-static)
                                   (let ((_path20391_
                                          (gxc#compile-static-output-file
                                           _ctx20382_)))
                                     (with-output-to-file
                                      (cons 'path:
                                            (cons _path20391_
                                                  (cons 'permissions:
                                                        (cons '420 '()))))
                                      void))
                                   '#!void))
                           (_generate-loader-code20356_
                            _ctx20382_
                            _code20384_
                            _rt20388_))))))))
            (let ((_all-modules20358_
                   (cons _ctx20352_ (gxc#lift-nested-modules _ctx20352_))))
              (for-each _compile120354_ _all-modules20358_)))))))
  (define gxc#compile-meta-code
    (lambda (_ctx20254_)
      (let ((_compile-ssi20256_
             (lambda (_code20322_)
               (let ((_path20324_
                      (gxc#compile-output-file _ctx20254_ '#f '".ssi")))
                 (let ((_prelude20335_
                        (let ((_super20326_
                               (##structure-ref
                                _ctx20254_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (let ((_$e20328_
                                 (##structure-ref
                                  _super20326_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (if _$e20328_
                                ((lambda (_g2033020332_)
                                   (make-symbol '":" _g2033020332_))
                                 _$e20328_)
                                ':<root>)))))
                   (let ((_ns20337_
                          (##structure-ref
                           _ctx20254_
                           '6
                           gx#module-context::t
                           '#f)))
                     (let ((_idstr20339_
                            (symbol->string
                             (##structure-ref
                              _ctx20254_
                              '1
                              gx#expander-context::t
                              '#f))))
                       (let ((_pkg20346_
                              (let ((_$e20341_
                                     (string-rindex _idstr20339_ '#\/)))
                                (if _$e20341_
                                    ((lambda (_x20344_)
                                       (string->symbol
                                        (substring _idstr20339_ '0 _x20344_)))
                                     _$e20341_)
                                    '#f))))
                         (let ((_rt20348_
                                (table-ref
                                 (gxc#current-compile-runtime-sections)
                                 _ctx20254_
                                 '#f)))
                           (let ()
                             (begin
                               (gxc#verbose '"compile " _path20324_)
                               (with-output-to-file
                                (cons 'path:
                                      (cons _path20324_
                                            (cons 'permissions:
                                                  (cons '420 '()))))
                                (lambda ()
                                  (begin
                                    (displayln '"prelude:" '" " _prelude20335_)
                                    (if _pkg20346_
                                        (displayln '"package:" '" " _pkg20346_)
                                        '#!void)
                                    (displayln '"namespace:" '" " _ns20337_)
                                    (newline)
                                    (pretty-print _code20322_)
                                    (if _rt20348_
                                        (pretty-print
                                         (cons '%#call
                                               (cons (cons '%#ref
                                                           (cons '_gx#load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _rt20348_ '()))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '#!void)))))))))))))))
        (let ((_compile-phi20257_
               (lambda (_part20262_)
                 (let ((_part2026320276_ _part20262_))
                   (let ((_E2026520280_
                          (lambda ()
                            (error '"No clause matching" _part2026320276_))))
                     (let ((_K2026620291_
                            (lambda (_code20283_
                                     _n20284_
                                     _phi20285_
                                     _phi-ctx20286_)
                              (let ((_code20289_
                                     (call-with-parameters
                                      (lambda ()
                                        (gxc#generate-runtime-phi _code20283_))
                                      gx#current-expander-context
                                      _phi-ctx20286_
                                      gx#current-expander-phi
                                      _phi20285_)))
                                (gxc#compile-scm-file
                                 (gxc#compile-output-file
                                  _ctx20254_
                                  _n20284_
                                  '".scm")
                                 _code20289_)))))
                       (if (##pair? _part2026320276_)
                           (let ((_hd2026720294_ (##car _part2026320276_))
                                 (_tl2026820296_ (##cdr _part2026320276_)))
                             (let ((_phi-ctx20299_ _hd2026720294_))
                               (if (##pair? _tl2026820296_)
                                   (let ((_hd2026920301_
                                          (##car _tl2026820296_))
                                         (_tl2027020303_
                                          (##cdr _tl2026820296_)))
                                     (let ((_phi20306_ _hd2026920301_))
                                       (if (##pair? _tl2027020303_)
                                           (let ((_hd2027120308_
                                                  (##car _tl2027020303_))
                                                 (_tl2027220310_
                                                  (##cdr _tl2027020303_)))
                                             (let ((_n20313_ _hd2027120308_))
                                               (if (##pair? _tl2027220310_)
                                                   (let ((_hd2027320315_
                                                          (##car _tl2027220310_))
                                                         (_tl2027420317_
                                                          (##cdr _tl2027220310_)))
                                                     (let ((_code20320_
                                                            _hd2027320315_))
                                                       (if (##null? _tl2027420317_)
                                                           (_K2026620291_
                                                            _code20320_
                                                            _n20313_
                                                            _phi20306_
                                                            _phi-ctx20299_)
                                                           (_E2026520280_))))
                                                   (_E2026520280_))))
                                           (_E2026520280_))))
                                   (_E2026520280_))))
                           (_E2026520280_))))))))
          (let ((_g20766_ (gxc#generate-meta-code _ctx20254_)))
            (begin
              (let ((_g20767_ (values-count _g20766_)))
                (if (not (fx= _g20767_ 2))
                    (error "Context expects 2 values" _g20767_)))
              (let ((_ssi-code20259_ (values-ref _g20766_ 0))
                    (_phi-code20260_ (values-ref _g20766_ 1)))
                (begin
                  (_compile-ssi20256_ _ssi-code20259_)
                  (for-each _compile-phi20257_ _phi-code20260_)))))))))
  (define gxc#compile-ssxi-code
    (lambda (_ctx20237_)
      (let ((_path20239_ (gxc#compile-output-file _ctx20237_ '#f '".ssxi.ss")))
        (let ((_code20241_
               (gxc#apply-generate-ssxi
                (##structure-ref _ctx20237_ '11 gx#module-context::t '#f))))
          (let ((_idstr20243_
                 (symbol->string
                  (##structure-ref _ctx20237_ '1 gx#expander-context::t '#f))))
            (let ((_pkg20250_
                   (let ((_$e20245_ (string-rindex _idstr20243_ '#\/)))
                     (if _$e20245_
                         ((lambda (_x20248_)
                            (string->symbol
                             (substring _idstr20243_ '0 _x20248_)))
                          _$e20245_)
                         '#f))))
              (let ()
                (begin
                  (gxc#verbose '"compile " _path20239_)
                  (with-output-to-file
                   (cons 'path:
                         (cons _path20239_
                               (cons 'permissions: (cons '420 '()))))
                   (lambda ()
                     (begin
                       (displayln '"prelude: :gerbil/compiler/ssxi")
                       (if _pkg20250_
                           (displayln '"package: " _pkg20250_)
                           '#!void)
                       (newline)
                       (pretty-print _code20241_))))))))))))
  (define gxc#generate-meta-code
    (lambda (_ctx20230_)
      (let ((_state20232_
             (let ((__obj20757 (make-object gxc#meta-state::t '4)))
               (begin
                 (gxc#meta-state:::init! __obj20757 _ctx20230_)
                 __obj20757))))
        (let ((_ssi-code20234_
               (gxc#apply-generate-meta
                (##structure-ref _ctx20230_ '11 gx#module-context::t '#f)
                _state20232_)))
          (let ()
            (values _ssi-code20234_ (gxc#meta-state-end! _state20232_)))))))
  (define gxc#generate-runtime-phi
    (lambda (_stx20223_)
      (let ((_lifts20225_ (box '())))
        (call-with-parameters
         (lambda ()
           (let ((_code20228_ (gxc#apply-generate-runtime-phi _stx20223_)))
             (if (null? (unbox _lifts20225_))
                 _code20228_
                 (cons 'begin
                       (foldr1 cons
                               (cons _code20228_ '())
                               (reverse (unbox _lifts20225_)))))))
         gxc#current-compile-lift
         _lifts20225_))))
  (define gxc#lift-nested-modules
    (lambda (_ctx20219_)
      (let ((_modules20221_ (box '())))
        (begin
          (gxc#apply-lift-modules
           (##structure-ref _ctx20219_ '11 gx#module-context::t '#f)
           _modules20221_)
          (reverse (unbox _modules20221_))))))
  (define gxc#compile-scm-file
    (lambda (_path20215_ _code20216_)
      (begin
        (gxc#verbose '"compile " _path20215_)
        (with-output-to-file
         (cons 'path: (cons _path20215_ (cons 'permissions: (cons '420 '()))))
         (lambda ()
           (begin
             (pretty-print
              '(declare (block) (standard-bindings) (extended-bindings)))
             (pretty-print _code20216_))))
        (if (gxc#current-compile-invoke-gsc)
            (gxc#gsc-compile-file _path20215_)
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path20215_)))))
  (define gxc#gsc-compile-file
    (lambda (_path20201_)
      (let ((_gsc-args20208_
             (let ((_$e20203_ (gxc#current-compile-gsc-options)))
               (if _$e20203_
                   ((lambda (_opts20206_)
                      (foldr1 cons (cons _path20201_ '()) _opts20206_))
                    _$e20203_)
                   (cons _path20201_ '())))))
        (let ((_proc20210_
               (open-process
                (cons 'path:
                      (cons '"gsc"
                            (cons 'arguments:
                                  (cons _gsc-args20208_
                                        (cons 'stdout-redirection:
                                              (cons '#f '())))))))))
          (let ((_status20212_ (process-status _proc20210_)))
            (let ()
              (if (zero? _status20212_)
                  '#!void
                  (gxc#raise-compile-error
                   '"Compilation error; gsc exit with nonzero status"
                   _path20201_
                   _status20212_))))))))
  (define gxc#compile-output-file
    (lambda (_ctx20173_ _n20174_ _ext20175_)
      (let ((_module-relative-path20177_
             (lambda (_ctx20199_)
               (path-strip-directory
                (symbol->string
                 (##structure-ref
                  _ctx20199_
                  '1
                  gx#expander-context::t
                  '#f))))))
        (let ((_module-source-directory20178_
               (lambda (_ctx20195_)
                 (path-directory
                  (let ((_mpath20197_
                         (##structure-ref
                          _ctx20195_
                          '7
                          gx#module-context::t
                          '#f)))
                    (if (string? _mpath20197_)
                        _mpath20197_
                        (last _mpath20197_)))))))
          (let ((_section-string20179_
                 (lambda (_n20193_)
                   (if (number? _n20193_)
                       (number->string _n20193_)
                       (if (symbol? _n20193_)
                           (symbol->string _n20193_)
                           (if (string? _n20193_)
                               _n20193_
                               (gxc#raise-compile-error
                                '"Unexpected section"
                                _n20193_)))))))
            (let ((_file-name20180_
                   (lambda (_path20191_)
                     (if _n20174_
                         (string-append
                          _path20191_
                          '"__"
                          (_section-string20179_ _n20174_)
                          _ext20175_)
                         (string-append _path20191_ _ext20175_)))))
              (let ((_file-path20181_
                     (lambda ()
                       (let ((_$e20186_ (gxc#current-compile-output-dir)))
                         (if _$e20186_
                             ((lambda (_outdir20189_)
                                (path-expand
                                 (_file-name20180_
                                  (symbol->string
                                   (##structure-ref
                                    _ctx20173_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                                 _outdir20189_))
                              _$e20186_)
                             (path-expand
                              (_file-name20180_
                               (_module-relative-path20177_ _ctx20173_))
                              (_module-source-directory20178_ _ctx20173_)))))))
                (let ((_path20183_ (_file-path20181_)))
                  (begin
                    (create-directory* (path-directory _path20183_))
                    _path20183_)))))))))
  (define gxc#compile-static-output-file
    (lambda (_ctx20156_)
      (let ((_file-name20158_
             (lambda (_idstr20171_)
               (string-append (gxc#static-module-name _idstr20171_) '".scm"))))
        (let ((_file-path20159_
               (lambda ()
                 (let ((_file20164_
                        (_file-name20158_
                         (symbol->string
                          (##structure-ref
                           _ctx20156_
                           '1
                           gx#expander-context::t
                           '#f)))))
                   (let ((_$e20166_ (gxc#current-compile-output-dir)))
                     (if _$e20166_
                         ((lambda (_outdir20169_)
                            (path-expand
                             _file20164_
                             (path-expand '"static" _outdir20169_)))
                          _$e20166_)
                         (path-expand _file20164_ '"static")))))))
          (let ((_path20161_ (_file-path20159_)))
            (begin
              (create-directory* (path-directory _path20161_))
              _path20161_))))))
  (define gxc#compile-exe-output-file
    (lambda (_ctx20143_ _opts20144_)
      (let ((_$e20146_ (pgetq 'output-file: _opts20144_)))
        (if _$e20146_
            (values _$e20146_)
            (let ((_mod-str20149_
                   (symbol->string
                    (##structure-ref
                     _ctx20143_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let ((_$e20151_ (string-rindex _mod-str20149_ '#\/)))
                (if _$e20151_
                    ((lambda (_ix20154_)
                       (substring
                        _mod-str20149_
                        (fx+ _ix20154_ '1)
                        (string-length _mod-str20149_)))
                     _$e20151_)
                    _mod-str20149_)))))))
  (define gxc#static-module-name
    (lambda (_idstr20139_)
      (if (string? _idstr20139_)
          (let ((_strs20141_ (string-split _idstr20139_ '#\/)))
            (string-join _strs20141_ '"__"))
          (if (symbol? _idstr20139_)
              (gxc#static-module-name (symbol->string _idstr20139_))
              (error '"Bad module id" _idstr20139_))))))
