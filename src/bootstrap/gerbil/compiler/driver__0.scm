(declare (block) (standard-bindings) (extended-bindings))
(begin
  (begin
    (define gxc#compile-file__opt-lambda17680
      (lambda (_srcpath17682_ _opts17683_)
        (begin
          (if (string? _srcpath17682_)
              '#!void
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath17682_))
          (let ((_outdir17685_ (pgetq 'output-dir: _opts17683_))
                (_invoke-gsc?17686_ (pgetq 'invoke-gsc: _opts17683_))
                (_gsc-options17687_ (pgetq 'gsc-options: _opts17683_))
                (_keep-scm?17688_ (pgetq 'keep-scm: _opts17683_))
                (_verbosity17689_ (pgetq 'verbose: _opts17683_))
                (_optimize17690_ (pgetq 'optimize: _opts17683_))
                (_gen-ssxi17691_ (pgetq 'generate-ssxi: _opts17683_)))
            (begin
              (if _outdir17685_ (create-directory* _outdir17685_) '#!void)
              (if _optimize17690_ (gxc#optimizer-info-init!) '#!void)
              (call-with-parameters
               (lambda ()
                 (begin
                   (gxc#verbose '"compile exe " _srcpath17682_)
                   (gxc#compile-top-module
                    (gx#import-module__0 _srcpath17682_))))
               gxc#current-compile-output-dir
               _outdir17685_
               gxc#current-compile-invoke-gsc
               _invoke-gsc?17686_
               gxc#current-compile-gsc-options
               _gsc-options17687_
               gxc#current-compile-keep-scm
               _keep-scm?17688_
               gxc#current-compile-verbose
               _verbosity17689_
               gxc#current-compile-optimize
               _optimize17690_
               gxc#current-compile-generate-ssxi
               _gen-ssxi17691_))))))
    (begin
      (define gxc#compile-file__0
        (lambda (_srcpath17697_)
          (let ((_opts17699_ '()))
            (gxc#compile-file__opt-lambda17680 _srcpath17697_ _opts17699_))))
      (define gxc#compile-file
        (lambda _g17706_
          (let ((_g17705_ (length _g17706_)))
            (cond ((fx= _g17705_ 1) (apply gxc#compile-file__0 _g17706_))
                  ((fx= _g17705_ 2)
                   (apply gxc#compile-file__opt-lambda17680 _g17706_))
                  (else (error "No clause matching arguments" _g17706_))))))))
  (begin
    (define gxc#compile-exe-stub__opt-lambda17659
      (lambda (_srcpath17661_ _opts17662_)
        (begin
          (if (string? _srcpath17661_)
              '#!void
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath17661_))
          (let ((_outdir17664_ (pgetq 'output-dir: _opts17662_))
                (_invoke-gsc?17665_ (pgetq 'invoke-gsc: _opts17662_))
                (_gsc-options17666_ (pgetq 'gsc-options: _opts17662_))
                (_keep-scm?17667_ (pgetq 'keep-scm: _opts17662_))
                (_verbosity17668_ (pgetq 'verbose: _opts17662_)))
            (begin
              (if _outdir17664_ (create-directory* _outdir17664_) '#!void)
              (call-with-parameters
               (lambda ()
                 (begin
                   (gxc#verbose '"compile " _srcpath17661_)
                   (gxc#compile-exe-stub-module
                    (gx#import-module__0 _srcpath17661_)
                    _opts17662_)))
               gxc#current-compile-output-dir
               _outdir17664_
               gxc#current-compile-invoke-gsc
               _invoke-gsc?17665_
               gxc#current-compile-gsc-options
               _gsc-options17666_
               gxc#current-compile-keep-scm
               _keep-scm?17667_
               gxc#current-compile-verbose
               _verbosity17668_))))))
    (begin
      (define gxc#compile-exe-stub__0
        (lambda (_srcpath17674_)
          (let ((_opts17676_ '()))
            (gxc#compile-exe-stub__opt-lambda17659
             _srcpath17674_
             _opts17676_))))
      (define gxc#compile-exe-stub
        (lambda _g17708_
          (let ((_g17707_ (length _g17708_)))
            (cond ((fx= _g17707_ 1) (apply gxc#compile-exe-stub__0 _g17708_))
                  ((fx= _g17707_ 2)
                   (apply gxc#compile-exe-stub__opt-lambda17659 _g17708_))
                  (else (error "No clause matching arguments" _g17708_))))))))
  (define gxc#compile-exe-stub-module
    (lambda (_ctx17553_ _opts17554_)
      (let ((_find-export-binding17556_
             (lambda (_id17610_ _exports17611_)
               (let ((_$e17657_
                      (find (lambda (_e1761217614_)
                              (let ((_g1761617626_ _e1761217614_))
                                (let ((_E1761917630_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _g1761617626_))))
                                  (let ((_else1761817634_ (lambda () '#f)))
                                    (let ((_K1762017638_ (lambda () '#t)))
                                      (if (direct-struct-instance?
                                           gx#module-export::t
                                           _g1761617626_)
                                          (let ((_e1762117641_
                                                 (##vector-ref
                                                  _g1761617626_
                                                  '1)))
                                            (let ((_e1762217644_
                                                   (##vector-ref
                                                    _g1761617626_
                                                    '2)))
                                              (let ((_e1762317647_
                                                     (##vector-ref
                                                      _g1761617626_
                                                      '3)))
                                                (if (##eq? _e1762317647_ '0)
                                                    (let ((_e1762417650_
                                                           (##vector-ref
                                                            _g1761617626_
                                                            '4)))
                                                      (if ((lambda (_g1765217654_)
                                                             (eq? _g1765217654_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id17610_))
                   _e1762417650_)
                  (_K1762017638_)
                  (_else1761817634_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_else1761817634_)))))
                                          (_else1761817634_)))))))
                            _exports17611_)))
                 (if _$e17657_
                     (gx#core-resolve-module-export _$e17657_)
                     '#f)))))
        (let ((_generate-stub17557_
               (lambda ()
                 (let ((_mod-str17598_
                        (symbol->string
                         (##structure-ref
                          _ctx17553_
                          '1
                          gx#expander-context::t
                          '#f))))
                   (let ((_mod-rt17600_
                          (string-append _mod-str17598_ '"__rt")))
                     (let ((_mod-main17607_
                            (let ((_$e17602_
                                   (_find-export-binding17556_
                                    'main
                                    (##structure-ref
                                     _ctx17553_
                                     '9
                                     gx#module-context::t
                                     '#f))))
                              (if _$e17602_
                                  ((lambda (_bind17605_)
                                     (begin
                                       (if (##structure-instance-of?
                                            _bind17605_
                                            'gx#runtime-binding::t)
                                           '#!void
                                           (gxc#raise-compile-error
                                            '"main is not a runtime binding"))
                                       (##structure-ref
                                        _bind17605_
                                        '1
                                        gx#binding::t
                                        '#f)))
                                   _$e17602_)
                                  (gxc#raise-compile-error
                                   '"module does not export main"
                                   (##structure-ref
                                    _ctx17553_
                                    '1
                                    gx#expander-context::t
                                    '#f))))))
                       (let ()
                         (begin
                           (write '(##namespace ("")))
                           (newline)
                           (write (cons '_gx#start!
                                        (cons _mod-rt17600_
                                              (cons (cons 'quote
                                                          (cons _mod-main17607_
                                                                '()))
                                                    '()))))
                           (newline)))))))))
          (let ((_compile-stub17558_
                 (lambda (_output-scm17585_ _output-bin17586_)
                   (let ((_init-stub17588_
                          (path-expand
                           '"lib/gx-init-exe.scm"
                           (getenv '"GERBIL_HOME"))))
                     (let ((_gsc-args17590_
                            (cons '"-exe"
                                  (cons '"-o"
                                        (cons _output-bin17586_
                                              (cons _init-stub17588_
                                                    (cons _output-scm17585_
                                                          '())))))))
                       (let ((_proc17592_
                              (open-process
                               (cons 'path:
                                     (cons '"gsc"
                                           (cons 'arguments:
                                                 (cons _gsc-args17590_
                                                       (cons 'stdout-redirection:
                                                             (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (let ((_status17594_ (process-status _proc17592_)))
                           (let ()
                             (if (zero? _status17594_)
                                 '#!void
                                 (gxc#raise-compile-error
                                  '"Compilation error; gsc exit with nonzero status"
                                  _output-scm17585_
                                  _output-bin17586_
                                  _status17594_))))))))))
            (let ((_output-bin17580_
                   (let ((_$e17560_ (pgetq 'output-file: _opts17554_)))
                     (if _$e17560_
                         (values _$e17560_)
                         (let ((_mod-str17563_
                                (symbol->string
                                 (##structure-ref
                                  _ctx17553_
                                  '1
                                  gx#expander-context::t
                                  '#f))))
                           (let ((_mod-name17570_
                                  (let ((_$e17565_
                                         (string-rindex _mod-str17563_ '#\/)))
                                    (if _$e17565_
                                        ((lambda (_ix17568_)
                                           (substring
                                            _mod-str17563_
                                            (fx+ _ix17568_ '1)
                                            (string-length _mod-str17563_)))
                                         _$e17565_)
                                        _mod-str17563_))))
                             (let ()
                               (let ((_$e17573_
                                      (gxc#current-compile-output-dir)))
                                 (if _$e17573_
                                     ((lambda (_g1757517577_)
                                        (path-expand
                                         _mod-name17570_
                                         _g1757517577_))
                                      _$e17573_)
                                     _mod-name17570_)))))))))
              (let ((_output-scm17582_
                     (string-append _output-bin17580_ '".scm")))
                (let ()
                  (begin
                    (with-output-to-file
                     _output-scm17582_
                     _generate-stub17557_)
                    (if (gxc#current-compile-invoke-gsc)
                        (_compile-stub17558_
                         _output-scm17582_
                         _output-bin17580_)
                        '#!void)
                    (if (gxc#current-compile-keep-scm)
                        '#!void
                        (delete-file _output-scm17582_)))))))))))
  (define gxc#compile-top-module
    (lambda (_ctx17550_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#verbose
            '"compile "
            (##structure-ref _ctx17550_ '1 gx#expander-context::t '#f))
           (if (gxc#current-compile-optimize)
               (gxc#optimize! _ctx17550_)
               '#!void)
           (gxc#collect-bindings _ctx17550_)
           (gxc#compile-runtime-code _ctx17550_)
           (gxc#compile-meta-code _ctx17550_)
           (if (if (gxc#current-compile-optimize)
                   (gxc#current-compile-generate-ssxi)
                   '#f)
               (gxc#compile-ssxi-code _ctx17550_)
               '#!void)))
       gx#current-expander-context
       _ctx17550_
       gx#current-expander-phi
       '0
       gx#current-expander-marks
       '()
       gxc#current-compile-symbol-table
       (let ((__obj17703 (make-object gxc#symbol-table::t '2)))
         (begin (gxc#symbol-table:::init! __obj17703) __obj17703))
       gxc#current-compile-runtime-sections
       (make-hash-table-eq))))
  (define gxc#collect-bindings
    (lambda (_ctx17548_)
      (gxc#apply-collect-bindings
       (##structure-ref _ctx17548_ '11 gx#module-context::t '#f))))
  (define gxc#compile-runtime-code
    (lambda (_ctx17515_)
      (let ((_generate-runtime-code17518_
             (lambda (_ctx17533_ _code17534_)
               (let ((_runtime-code17537_
                      (call-with-parameters
                       (lambda () (gxc#apply-generate-runtime _code17534_))
                       gx#current-expander-context
                       _ctx17533_)))
                 (gxc#compile-scm-file
                  (gxc#compile-output-file _ctx17533_ '0 '".scm")
                  _runtime-code17537_)))))
        (let ((_generate-loader-code17519_
               (lambda (_ctx17523_ _code17524_ _rt17525_)
                 (let ((_loader-code17528_
                        (call-with-parameters
                         (lambda () (gxc#apply-generate-loader _code17524_))
                         gx#current-expander-context
                         _ctx17523_)))
                   (let ((_loader-code17530_
                          (if _rt17525_
                              (cons 'begin
                                    (cons _loader-code17528_
                                          (cons (cons 'load-module
                                                      (cons _rt17525_ '()))
                                                '())))
                              _loader-code17528_)))
                     (let ()
                       (gxc#compile-scm-file
                        (gxc#compile-output-file _ctx17523_ 'rt '".scm")
                        _loader-code17530_)))))))
          (let ((_compile117517_
                 (lambda (_ctx17539_)
                   (let ((_code17541_
                          (##structure-ref
                           _ctx17539_
                           '11
                           gx#module-context::t
                           '#f)))
                     (let ((_rt17545_
                            (if (gxc#apply-find-runtime-code _code17541_)
                                (let ((_idstr17543_
                                       (symbol->string
                                        (##structure-ref
                                         _ctx17539_
                                         '1
                                         gx#expander-context::t
                                         '#f))))
                                  (string-append _idstr17543_ '"__0"))
                                '#f)))
                       (let ()
                         (begin
                           (if _rt17545_
                               (begin
                                 (hash-put!
                                  (gxc#current-compile-runtime-sections)
                                  _ctx17539_
                                  _rt17545_)
                                 (_generate-runtime-code17518_
                                  _ctx17539_
                                  _code17541_))
                               '#!void)
                           (_generate-loader-code17519_
                            _ctx17539_
                            _code17541_
                            _rt17545_))))))))
            (let ((_all-modules17521_
                   (cons _ctx17515_ (gxc#lift-nested-modules _ctx17515_))))
              (for-each _compile117517_ _all-modules17521_)))))))
  (define gxc#compile-meta-code
    (lambda (_ctx17417_)
      (let ((_compile-ssi17419_
             (lambda (_code17485_)
               (let ((_path17487_
                      (gxc#compile-output-file _ctx17417_ '#f '".ssi")))
                 (let ((_prelude17498_
                        (let ((_super17489_
                               (##structure-ref
                                _ctx17417_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (let ((_$e17491_
                                 (##structure-ref
                                  _super17489_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (if _$e17491_
                                ((lambda (_g1749317495_)
                                   (make-symbol '":" _g1749317495_))
                                 _$e17491_)
                                ':<root>)))))
                   (let ((_ns17500_
                          (##structure-ref
                           _ctx17417_
                           '6
                           gx#module-context::t
                           '#f)))
                     (let ((_idstr17502_
                            (symbol->string
                             (##structure-ref
                              _ctx17417_
                              '1
                              gx#expander-context::t
                              '#f))))
                       (let ((_pkg17509_
                              (let ((_$e17504_
                                     (string-rindex _idstr17502_ '#\/)))
                                (if _$e17504_
                                    ((lambda (_x17507_)
                                       (string->symbol
                                        (substring _idstr17502_ '0 _x17507_)))
                                     _$e17504_)
                                    '#f))))
                         (let ((_rt17511_
                                (table-ref
                                 (gxc#current-compile-runtime-sections)
                                 _ctx17417_
                                 '#f)))
                           (let ()
                             (begin
                               (gxc#verbose '"compile " _path17487_)
                               (with-output-to-file
                                (cons 'path:
                                      (cons _path17487_
                                            (cons 'permissions:
                                                  (cons '420 '()))))
                                (lambda ()
                                  (begin
                                    (displayln '"prelude:" '" " _prelude17498_)
                                    (if _pkg17509_
                                        (displayln '"package:" '" " _pkg17509_)
                                        '#!void)
                                    (displayln '"namespace:" '" " _ns17500_)
                                    (newline)
                                    (pretty-print _code17485_)
                                    (if _rt17511_
                                        (pretty-print
                                         (cons '%#call
                                               (cons (cons '%#ref
                                                           (cons '_gx#load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _rt17511_ '()))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '#!void)))))))))))))))
        (let ((_compile-phi17420_
               (lambda (_part17425_)
                 (let ((_part1742617439_ _part17425_))
                   (let ((_E1742817443_
                          (lambda ()
                            (error '"No clause matching" _part1742617439_))))
                     (let ((_K1742917454_
                            (lambda (_code17446_
                                     _n17447_
                                     _phi17448_
                                     _phi-ctx17449_)
                              (let ((_code17452_
                                     (call-with-parameters
                                      (lambda ()
                                        (gxc#generate-runtime-phi _code17446_))
                                      gx#current-expander-context
                                      _phi-ctx17449_
                                      gx#current-expander-phi
                                      _phi17448_)))
                                (gxc#compile-scm-file
                                 (gxc#compile-output-file
                                  _ctx17417_
                                  _n17447_
                                  '".scm")
                                 _code17452_)))))
                       (if (##pair? _part1742617439_)
                           (let ((_hd1743017457_ (##car _part1742617439_))
                                 (_tl1743117459_ (##cdr _part1742617439_)))
                             (let ((_phi-ctx17462_ _hd1743017457_))
                               (if (##pair? _tl1743117459_)
                                   (let ((_hd1743217464_
                                          (##car _tl1743117459_))
                                         (_tl1743317466_
                                          (##cdr _tl1743117459_)))
                                     (let ((_phi17469_ _hd1743217464_))
                                       (if (##pair? _tl1743317466_)
                                           (let ((_hd1743417471_
                                                  (##car _tl1743317466_))
                                                 (_tl1743517473_
                                                  (##cdr _tl1743317466_)))
                                             (let ((_n17476_ _hd1743417471_))
                                               (if (##pair? _tl1743517473_)
                                                   (let ((_hd1743617478_
                                                          (##car _tl1743517473_))
                                                         (_tl1743717480_
                                                          (##cdr _tl1743517473_)))
                                                     (let ((_code17483_
                                                            _hd1743617478_))
                                                       (if (##null? _tl1743717480_)
                                                           (_K1742917454_
                                                            _code17483_
                                                            _n17476_
                                                            _phi17469_
                                                            _phi-ctx17462_)
                                                           (_E1742817443_))))
                                                   (_E1742817443_))))
                                           (_E1742817443_))))
                                   (_E1742817443_))))
                           (_E1742817443_))))))))
          (let ((_g17709_ (gxc#generate-meta-code _ctx17417_)))
            (begin
              (let ((_g17710_ (values-count _g17709_)))
                (if (not (fx= _g17710_ 2))
                    (error "Context expects 2 values" _g17710_)))
              (let ((_ssi-code17422_ (values-ref _g17709_ 0))
                    (_phi-code17423_ (values-ref _g17709_ 1)))
                (begin
                  (_compile-ssi17419_ _ssi-code17422_)
                  (for-each _compile-phi17420_ _phi-code17423_)))))))))
  (define gxc#compile-ssxi-code
    (lambda (_ctx17400_)
      (let ((_path17402_ (gxc#compile-output-file _ctx17400_ '#f '".ssxi.ss")))
        (let ((_code17404_
               (gxc#apply-generate-ssxi
                (##structure-ref _ctx17400_ '11 gx#module-context::t '#f))))
          (let ((_idstr17406_
                 (symbol->string
                  (##structure-ref _ctx17400_ '1 gx#expander-context::t '#f))))
            (let ((_pkg17413_
                   (let ((_$e17408_ (string-rindex _idstr17406_ '#\/)))
                     (if _$e17408_
                         ((lambda (_x17411_)
                            (string->symbol
                             (substring _idstr17406_ '0 _x17411_)))
                          _$e17408_)
                         '#f))))
              (let ()
                (begin
                  (gxc#verbose '"compile " _path17402_)
                  (with-output-to-file
                   (cons 'path:
                         (cons _path17402_
                               (cons 'permissions: (cons '420 '()))))
                   (lambda ()
                     (begin
                       (displayln '"prelude: :gerbil/compiler/ssxi")
                       (if _pkg17413_
                           (displayln '"package: " _pkg17413_)
                           '#!void)
                       (newline)
                       (pretty-print _code17404_))))))))))))
  (define gxc#generate-meta-code
    (lambda (_ctx17393_)
      (let ((_state17395_
             (let ((__obj17704 (make-object gxc#meta-state::t '4)))
               (begin
                 (gxc#meta-state:::init! __obj17704 _ctx17393_)
                 __obj17704))))
        (let ((_ssi-code17397_
               (gxc#apply-generate-meta
                (##structure-ref _ctx17393_ '11 gx#module-context::t '#f)
                _state17395_)))
          (let ()
            (values _ssi-code17397_ (gxc#meta-state-end! _state17395_)))))))
  (define gxc#generate-runtime-phi
    (lambda (_stx17386_)
      (let ((_lifts17388_ (box '())))
        (call-with-parameters
         (lambda ()
           (let ((_code17391_ (gxc#apply-generate-runtime-phi _stx17386_)))
             (if (null? (unbox _lifts17388_))
                 _code17391_
                 (cons 'begin
                       (foldr cons
                              (cons _code17391_ '())
                              (reverse (unbox _lifts17388_)))))))
         gxc#current-compile-lift
         _lifts17388_))))
  (define gxc#lift-nested-modules
    (lambda (_ctx17382_)
      (let ((_modules17384_ (box '())))
        (begin
          (gxc#apply-lift-modules
           (##structure-ref _ctx17382_ '11 gx#module-context::t '#f)
           _modules17384_)
          (reverse (unbox _modules17384_))))))
  (define gxc#compile-scm-file
    (lambda (_path17378_ _code17379_)
      (begin
        (gxc#verbose '"compile " _path17378_)
        (with-output-to-file
         (cons 'path: (cons _path17378_ (cons 'permissions: (cons '420 '()))))
         (lambda ()
           (begin
             (pretty-print
              '(declare (block) (standard-bindings) (extended-bindings)))
             (pretty-print _code17379_))))
        (if (gxc#current-compile-invoke-gsc)
            (begin
              (gxc#gsc-compile-file _path17378_)
              (if (gxc#current-compile-keep-scm)
                  '#!void
                  (delete-file _path17378_)))
            '#!void))))
  (define gxc#gsc-compile-file
    (lambda (_path17364_)
      (let ((_gsc-args17371_
             (let ((_$e17366_ (gxc#current-compile-gsc-options)))
               (if _$e17366_
                   ((lambda (_opts17369_)
                      (foldr cons (cons _path17364_ '()) _opts17369_))
                    _$e17366_)
                   (cons _path17364_ '())))))
        (let ((_proc17373_
               (open-process
                (cons 'path:
                      (cons '"gsc"
                            (cons 'arguments:
                                  (cons _gsc-args17371_
                                        (cons 'stdout-redirection:
                                              (cons '#f '())))))))))
          (let ((_status17375_ (process-status _proc17373_)))
            (let ()
              (if (zero? _status17375_)
                  '#!void
                  (gxc#raise-compile-error
                   '"Compilation error; gsc exit with nonzero status"
                   _path17364_
                   _status17375_))))))))
  (define gxc#compile-output-file
    (lambda (_ctx17336_ _n17337_ _ext17338_)
      (let ((_module-relative-path17340_
             (lambda (_ctx17362_)
               (path-strip-directory
                (symbol->string
                 (##structure-ref
                  _ctx17362_
                  '1
                  gx#expander-context::t
                  '#f))))))
        (let ((_module-source-directory17341_
               (lambda (_ctx17358_)
                 (path-directory
                  (let ((_mpath17360_
                         (##structure-ref
                          _ctx17358_
                          '7
                          gx#module-context::t
                          '#f)))
                    (if (string? _mpath17360_)
                        _mpath17360_
                        (last _mpath17360_)))))))
          (let ((_section-string17342_
                 (lambda (_n17356_)
                   (if (number? _n17356_)
                       (number->string _n17356_)
                       (if (symbol? _n17356_)
                           (symbol->string _n17356_)
                           (if (string? _n17356_)
                               _n17356_
                               (gxc#raise-compile-error
                                '"Unexpected section"
                                _n17356_)))))))
            (let ((_file-name17343_
                   (lambda (_path17354_)
                     (if _n17337_
                         (string-append
                          _path17354_
                          '"__"
                          (_section-string17342_ _n17337_)
                          _ext17338_)
                         (string-append _path17354_ _ext17338_)))))
              (let ((_file-path17344_
                     (lambda ()
                       (let ((_$e17349_ (gxc#current-compile-output-dir)))
                         (if _$e17349_
                             ((lambda (_outdir17352_)
                                (path-expand
                                 (_file-name17343_
                                  (symbol->string
                                   (##structure-ref
                                    _ctx17336_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                                 _outdir17352_))
                              _$e17349_)
                             (path-expand
                              (_file-name17343_
                               (_module-relative-path17340_ _ctx17336_))
                              (_module-source-directory17341_ _ctx17336_)))))))
                (let ((_path17346_ (_file-path17344_)))
                  (begin
                    (create-directory* (path-directory _path17346_))
                    _path17346_))))))))))
