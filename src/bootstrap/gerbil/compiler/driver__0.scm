(declare (block) (standard-bindings) (extended-bindings))
(begin
  (begin
    (define gxc#compile-file__opt-lambda17920
      (lambda (_srcpath17922_ _opts17923_)
        (begin
          (if (string? _srcpath17922_)
              '#!void
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath17922_))
          (let ((_outdir17925_ (pgetq 'output-dir: _opts17923_))
                (_invoke-gsc?17926_ (pgetq 'invoke-gsc: _opts17923_))
                (_gsc-options17927_ (pgetq 'gsc-options: _opts17923_))
                (_keep-scm?17928_ (pgetq 'keep-scm: _opts17923_))
                (_verbosity17929_ (pgetq 'verbose: _opts17923_))
                (_optimize17930_ (pgetq 'optimize: _opts17923_))
                (_gen-ssxi17931_ (pgetq 'generate-ssxi: _opts17923_)))
            (begin
              (if _outdir17925_ (create-directory* _outdir17925_) '#!void)
              (if _optimize17930_ (gxc#optimizer-info-init!) '#!void)
              (call-with-parameters
               (lambda ()
                 (begin
                   (gxc#verbose '"compile exe " _srcpath17922_)
                   (gxc#compile-top-module
                    (gx#import-module__0 _srcpath17922_))))
               gxc#current-compile-output-dir
               _outdir17925_
               gxc#current-compile-invoke-gsc
               _invoke-gsc?17926_
               gxc#current-compile-gsc-options
               _gsc-options17927_
               gxc#current-compile-keep-scm
               _keep-scm?17928_
               gxc#current-compile-verbose
               _verbosity17929_
               gxc#current-compile-optimize
               _optimize17930_
               gxc#current-compile-generate-ssxi
               _gen-ssxi17931_))))))
    (begin
      (define gxc#compile-file__0
        (lambda (_srcpath17937_)
          (let ((_opts17939_ '()))
            (gxc#compile-file__opt-lambda17920 _srcpath17937_ _opts17939_))))
      (define gxc#compile-file
        (lambda _g17946_
          (let ((_g17945_ (length _g17946_)))
            (cond ((fx= _g17945_ 1) (apply gxc#compile-file__0 _g17946_))
                  ((fx= _g17945_ 2)
                   (apply gxc#compile-file__opt-lambda17920 _g17946_))
                  (else (error "No clause matching arguments" _g17946_))))))))
  (begin
    (define gxc#compile-exe-stub__opt-lambda17899
      (lambda (_srcpath17901_ _opts17902_)
        (begin
          (if (string? _srcpath17901_)
              '#!void
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath17901_))
          (let ((_outdir17904_ (pgetq 'output-dir: _opts17902_))
                (_invoke-gsc?17905_ (pgetq 'invoke-gsc: _opts17902_))
                (_gsc-options17906_ (pgetq 'gsc-options: _opts17902_))
                (_keep-scm?17907_ (pgetq 'keep-scm: _opts17902_))
                (_verbosity17908_ (pgetq 'verbose: _opts17902_)))
            (begin
              (if _outdir17904_ (create-directory* _outdir17904_) '#!void)
              (call-with-parameters
               (lambda ()
                 (begin
                   (gxc#verbose '"compile " _srcpath17901_)
                   (gxc#compile-exe-stub-module
                    (gx#import-module__0 _srcpath17901_)
                    _opts17902_)))
               gxc#current-compile-output-dir
               _outdir17904_
               gxc#current-compile-invoke-gsc
               _invoke-gsc?17905_
               gxc#current-compile-gsc-options
               _gsc-options17906_
               gxc#current-compile-keep-scm
               _keep-scm?17907_
               gxc#current-compile-verbose
               _verbosity17908_))))))
    (begin
      (define gxc#compile-exe-stub__0
        (lambda (_srcpath17914_)
          (let ((_opts17916_ '()))
            (gxc#compile-exe-stub__opt-lambda17899
             _srcpath17914_
             _opts17916_))))
      (define gxc#compile-exe-stub
        (lambda _g17948_
          (let ((_g17947_ (length _g17948_)))
            (cond ((fx= _g17947_ 1) (apply gxc#compile-exe-stub__0 _g17948_))
                  ((fx= _g17947_ 2)
                   (apply gxc#compile-exe-stub__opt-lambda17899 _g17948_))
                  (else (error "No clause matching arguments" _g17948_))))))))
  (define gxc#compile-exe-stub-module
    (lambda (_ctx17793_ _opts17794_)
      (let ((_find-export-binding17796_
             (lambda (_id17850_ _exports17851_)
               (let ((_$e17897_
                      (find (lambda (_e1785217854_)
                              (let ((_g1785617866_ _e1785217854_))
                                (let ((_E1785917870_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _g1785617866_))))
                                  (let ((_else1785817874_ (lambda () '#f)))
                                    (let ((_K1786017878_ (lambda () '#t)))
                                      (if (direct-struct-instance?
                                           gx#module-export::t
                                           _g1785617866_)
                                          (let ((_e1786117881_
                                                 (##vector-ref
                                                  _g1785617866_
                                                  '1)))
                                            (let ((_e1786217884_
                                                   (##vector-ref
                                                    _g1785617866_
                                                    '2)))
                                              (let ((_e1786317887_
                                                     (##vector-ref
                                                      _g1785617866_
                                                      '3)))
                                                (if (##eq? _e1786317887_ '0)
                                                    (let ((_e1786417890_
                                                           (##vector-ref
                                                            _g1785617866_
                                                            '4)))
                                                      (if ((lambda (_g1789217894_)
                                                             (eq? _g1789217894_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id17850_))
                   _e1786417890_)
                  (_K1786017878_)
                  (_else1785817874_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_else1785817874_)))))
                                          (_else1785817874_)))))))
                            _exports17851_)))
                 (if _$e17897_
                     (gx#core-resolve-module-export _$e17897_)
                     '#f)))))
        (let ((_generate-stub17797_
               (lambda ()
                 (let ((_mod-str17838_
                        (symbol->string
                         (##structure-ref
                          _ctx17793_
                          '1
                          gx#expander-context::t
                          '#f))))
                   (let ((_mod-rt17840_
                          (string-append _mod-str17838_ '"__rt")))
                     (let ((_mod-main17847_
                            (let ((_$e17842_
                                   (_find-export-binding17796_
                                    'main
                                    (##structure-ref
                                     _ctx17793_
                                     '9
                                     gx#module-context::t
                                     '#f))))
                              (if _$e17842_
                                  ((lambda (_bind17845_)
                                     (begin
                                       (if (##structure-instance-of?
                                            _bind17845_
                                            'gx#runtime-binding::t)
                                           '#!void
                                           (gxc#raise-compile-error
                                            '"main is not a runtime binding"))
                                       (##structure-ref
                                        _bind17845_
                                        '1
                                        gx#binding::t
                                        '#f)))
                                   _$e17842_)
                                  (gxc#raise-compile-error
                                   '"module does not export main"
                                   (##structure-ref
                                    _ctx17793_
                                    '1
                                    gx#expander-context::t
                                    '#f))))))
                       (let ()
                         (begin
                           (write '(##namespace ("")))
                           (newline)
                           (write (cons '_gx#start!
                                        (cons _mod-rt17840_
                                              (cons (cons 'quote
                                                          (cons _mod-main17847_
                                                                '()))
                                                    '()))))
                           (newline)))))))))
          (let ((_compile-stub17798_
                 (lambda (_output-scm17825_ _output-bin17826_)
                   (let ((_init-stub17828_
                          (path-expand
                           '"lib/gx-init-exe.scm"
                           (getenv '"GERBIL_HOME"))))
                     (let ((_gsc-args17830_
                            (cons '"-exe"
                                  (cons '"-o"
                                        (cons _output-bin17826_
                                              (cons _init-stub17828_
                                                    (cons _output-scm17825_
                                                          '())))))))
                       (let ((_proc17832_
                              (open-process
                               (cons 'path:
                                     (cons '"gsc"
                                           (cons 'arguments:
                                                 (cons _gsc-args17830_
                                                       (cons 'stdout-redirection:
                                                             (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (let ((_status17834_ (process-status _proc17832_)))
                           (let ()
                             (if (zero? _status17834_)
                                 '#!void
                                 (gxc#raise-compile-error
                                  '"Compilation error; gsc exit with nonzero status"
                                  _output-scm17825_
                                  _output-bin17826_
                                  _status17834_))))))))))
            (let ((_output-bin17820_
                   (let ((_$e17800_ (pgetq 'output-file: _opts17794_)))
                     (if _$e17800_
                         (values _$e17800_)
                         (let ((_mod-str17803_
                                (symbol->string
                                 (##structure-ref
                                  _ctx17793_
                                  '1
                                  gx#expander-context::t
                                  '#f))))
                           (let ((_mod-name17810_
                                  (let ((_$e17805_
                                         (string-rindex _mod-str17803_ '#\/)))
                                    (if _$e17805_
                                        ((lambda (_ix17808_)
                                           (substring
                                            _mod-str17803_
                                            (fx+ _ix17808_ '1)
                                            (string-length _mod-str17803_)))
                                         _$e17805_)
                                        _mod-str17803_))))
                             (let ()
                               (let ((_$e17813_
                                      (gxc#current-compile-output-dir)))
                                 (if _$e17813_
                                     ((lambda (_g1781517817_)
                                        (path-expand
                                         _mod-name17810_
                                         _g1781517817_))
                                      _$e17813_)
                                     _mod-name17810_)))))))))
              (let ((_output-scm17822_
                     (string-append _output-bin17820_ '".scm")))
                (let ()
                  (begin
                    (with-output-to-file
                     _output-scm17822_
                     _generate-stub17797_)
                    (if (gxc#current-compile-invoke-gsc)
                        (_compile-stub17798_
                         _output-scm17822_
                         _output-bin17820_)
                        '#!void)
                    (if (gxc#current-compile-keep-scm)
                        '#!void
                        (delete-file _output-scm17822_)))))))))))
  (define gxc#compile-top-module
    (lambda (_ctx17790_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#verbose
            '"compile "
            (##structure-ref _ctx17790_ '1 gx#expander-context::t '#f))
           (if (gxc#current-compile-optimize)
               (gxc#optimize! _ctx17790_)
               '#!void)
           (gxc#collect-bindings _ctx17790_)
           (gxc#compile-runtime-code _ctx17790_)
           (gxc#compile-meta-code _ctx17790_)
           (if (if (gxc#current-compile-optimize)
                   (gxc#current-compile-generate-ssxi)
                   '#f)
               (gxc#compile-ssxi-code _ctx17790_)
               '#!void)))
       gx#current-expander-context
       _ctx17790_
       gx#current-expander-phi
       '0
       gx#current-expander-marks
       '()
       gxc#current-compile-symbol-table
       (let ((__obj17943 (make-object gxc#symbol-table::t '2)))
         (begin (gxc#symbol-table:::init! __obj17943) __obj17943))
       gxc#current-compile-runtime-sections
       (make-hash-table-eq))))
  (define gxc#collect-bindings
    (lambda (_ctx17788_)
      (gxc#apply-collect-bindings
       (##structure-ref _ctx17788_ '11 gx#module-context::t '#f))))
  (define gxc#compile-runtime-code
    (lambda (_ctx17755_)
      (let ((_generate-runtime-code17758_
             (lambda (_ctx17773_ _code17774_)
               (let ((_runtime-code17777_
                      (call-with-parameters
                       (lambda () (gxc#apply-generate-runtime _code17774_))
                       gx#current-expander-context
                       _ctx17773_)))
                 (gxc#compile-scm-file
                  (gxc#compile-output-file _ctx17773_ '0 '".scm")
                  _runtime-code17777_)))))
        (let ((_generate-loader-code17759_
               (lambda (_ctx17763_ _code17764_ _rt17765_)
                 (let ((_loader-code17768_
                        (call-with-parameters
                         (lambda () (gxc#apply-generate-loader _code17764_))
                         gx#current-expander-context
                         _ctx17763_)))
                   (let ((_loader-code17770_
                          (if _rt17765_
                              (cons 'begin
                                    (cons _loader-code17768_
                                          (cons (cons 'load-module
                                                      (cons _rt17765_ '()))
                                                '())))
                              _loader-code17768_)))
                     (let ()
                       (gxc#compile-scm-file
                        (gxc#compile-output-file _ctx17763_ 'rt '".scm")
                        _loader-code17770_)))))))
          (let ((_compile117757_
                 (lambda (_ctx17779_)
                   (let ((_code17781_
                          (##structure-ref
                           _ctx17779_
                           '11
                           gx#module-context::t
                           '#f)))
                     (let ((_rt17785_
                            (if (gxc#apply-find-runtime-code _code17781_)
                                (let ((_idstr17783_
                                       (symbol->string
                                        (##structure-ref
                                         _ctx17779_
                                         '1
                                         gx#expander-context::t
                                         '#f))))
                                  (string-append _idstr17783_ '"__0"))
                                '#f)))
                       (let ()
                         (begin
                           (if _rt17785_
                               (begin
                                 (hash-put!
                                  (gxc#current-compile-runtime-sections)
                                  _ctx17779_
                                  _rt17785_)
                                 (_generate-runtime-code17758_
                                  _ctx17779_
                                  _code17781_))
                               '#!void)
                           (_generate-loader-code17759_
                            _ctx17779_
                            _code17781_
                            _rt17785_))))))))
            (let ((_all-modules17761_
                   (cons _ctx17755_ (gxc#lift-nested-modules _ctx17755_))))
              (for-each _compile117757_ _all-modules17761_)))))))
  (define gxc#compile-meta-code
    (lambda (_ctx17657_)
      (let ((_compile-ssi17659_
             (lambda (_code17725_)
               (let ((_path17727_
                      (gxc#compile-output-file _ctx17657_ '#f '".ssi")))
                 (let ((_prelude17738_
                        (let ((_super17729_
                               (##structure-ref
                                _ctx17657_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (let ((_$e17731_
                                 (##structure-ref
                                  _super17729_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (if _$e17731_
                                ((lambda (_g1773317735_)
                                   (make-symbol '":" _g1773317735_))
                                 _$e17731_)
                                ':<root>)))))
                   (let ((_ns17740_
                          (##structure-ref
                           _ctx17657_
                           '6
                           gx#module-context::t
                           '#f)))
                     (let ((_idstr17742_
                            (symbol->string
                             (##structure-ref
                              _ctx17657_
                              '1
                              gx#expander-context::t
                              '#f))))
                       (let ((_pkg17749_
                              (let ((_$e17744_
                                     (string-rindex _idstr17742_ '#\/)))
                                (if _$e17744_
                                    ((lambda (_x17747_)
                                       (string->symbol
                                        (substring _idstr17742_ '0 _x17747_)))
                                     _$e17744_)
                                    '#f))))
                         (let ((_rt17751_
                                (table-ref
                                 (gxc#current-compile-runtime-sections)
                                 _ctx17657_
                                 '#f)))
                           (let ()
                             (begin
                               (gxc#verbose '"compile " _path17727_)
                               (with-output-to-file
                                (cons 'path:
                                      (cons _path17727_
                                            (cons 'permissions:
                                                  (cons '420 '()))))
                                (lambda ()
                                  (begin
                                    (displayln '"prelude:" '" " _prelude17738_)
                                    (if _pkg17749_
                                        (displayln '"package:" '" " _pkg17749_)
                                        '#!void)
                                    (displayln '"namespace:" '" " _ns17740_)
                                    (newline)
                                    (pretty-print _code17725_)
                                    (if _rt17751_
                                        (pretty-print
                                         (cons '%#call
                                               (cons (cons '%#ref
                                                           (cons '_gx#load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _rt17751_ '()))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '#!void)))))))))))))))
        (let ((_compile-phi17660_
               (lambda (_part17665_)
                 (let ((_part1766617679_ _part17665_))
                   (let ((_E1766817683_
                          (lambda ()
                            (error '"No clause matching" _part1766617679_))))
                     (let ((_K1766917694_
                            (lambda (_code17686_
                                     _n17687_
                                     _phi17688_
                                     _phi-ctx17689_)
                              (let ((_code17692_
                                     (call-with-parameters
                                      (lambda ()
                                        (gxc#generate-runtime-phi _code17686_))
                                      gx#current-expander-context
                                      _phi-ctx17689_
                                      gx#current-expander-phi
                                      _phi17688_)))
                                (gxc#compile-scm-file
                                 (gxc#compile-output-file
                                  _ctx17657_
                                  _n17687_
                                  '".scm")
                                 _code17692_)))))
                       (if (##pair? _part1766617679_)
                           (let ((_hd1767017697_ (##car _part1766617679_))
                                 (_tl1767117699_ (##cdr _part1766617679_)))
                             (let ((_phi-ctx17702_ _hd1767017697_))
                               (if (##pair? _tl1767117699_)
                                   (let ((_hd1767217704_
                                          (##car _tl1767117699_))
                                         (_tl1767317706_
                                          (##cdr _tl1767117699_)))
                                     (let ((_phi17709_ _hd1767217704_))
                                       (if (##pair? _tl1767317706_)
                                           (let ((_hd1767417711_
                                                  (##car _tl1767317706_))
                                                 (_tl1767517713_
                                                  (##cdr _tl1767317706_)))
                                             (let ((_n17716_ _hd1767417711_))
                                               (if (##pair? _tl1767517713_)
                                                   (let ((_hd1767617718_
                                                          (##car _tl1767517713_))
                                                         (_tl1767717720_
                                                          (##cdr _tl1767517713_)))
                                                     (let ((_code17723_
                                                            _hd1767617718_))
                                                       (if (##null? _tl1767717720_)
                                                           (_K1766917694_
                                                            _code17723_
                                                            _n17716_
                                                            _phi17709_
                                                            _phi-ctx17702_)
                                                           (_E1766817683_))))
                                                   (_E1766817683_))))
                                           (_E1766817683_))))
                                   (_E1766817683_))))
                           (_E1766817683_))))))))
          (let ((_g17949_ (gxc#generate-meta-code _ctx17657_)))
            (begin
              (let ((_g17950_ (values-count _g17949_)))
                (if (not (fx= _g17950_ 2))
                    (error "Context expects 2 values" _g17950_)))
              (let ((_ssi-code17662_ (values-ref _g17949_ 0))
                    (_phi-code17663_ (values-ref _g17949_ 1)))
                (begin
                  (_compile-ssi17659_ _ssi-code17662_)
                  (for-each _compile-phi17660_ _phi-code17663_)))))))))
  (define gxc#compile-ssxi-code
    (lambda (_ctx17640_)
      (let ((_path17642_ (gxc#compile-output-file _ctx17640_ '#f '".ssxi.ss")))
        (let ((_code17644_
               (gxc#apply-generate-ssxi
                (##structure-ref _ctx17640_ '11 gx#module-context::t '#f))))
          (let ((_idstr17646_
                 (symbol->string
                  (##structure-ref _ctx17640_ '1 gx#expander-context::t '#f))))
            (let ((_pkg17653_
                   (let ((_$e17648_ (string-rindex _idstr17646_ '#\/)))
                     (if _$e17648_
                         ((lambda (_x17651_)
                            (string->symbol
                             (substring _idstr17646_ '0 _x17651_)))
                          _$e17648_)
                         '#f))))
              (let ()
                (begin
                  (gxc#verbose '"compile " _path17642_)
                  (with-output-to-file
                   (cons 'path:
                         (cons _path17642_
                               (cons 'permissions: (cons '420 '()))))
                   (lambda ()
                     (begin
                       (displayln '"prelude: :gerbil/compiler/ssxi")
                       (if _pkg17653_
                           (displayln '"package: " _pkg17653_)
                           '#!void)
                       (newline)
                       (pretty-print _code17644_))))))))))))
  (define gxc#generate-meta-code
    (lambda (_ctx17633_)
      (let ((_state17635_
             (let ((__obj17944 (make-object gxc#meta-state::t '4)))
               (begin
                 (gxc#meta-state:::init! __obj17944 _ctx17633_)
                 __obj17944))))
        (let ((_ssi-code17637_
               (gxc#apply-generate-meta
                (##structure-ref _ctx17633_ '11 gx#module-context::t '#f)
                _state17635_)))
          (let ()
            (values _ssi-code17637_ (gxc#meta-state-end! _state17635_)))))))
  (define gxc#generate-runtime-phi
    (lambda (_stx17626_)
      (let ((_lifts17628_ (box '())))
        (call-with-parameters
         (lambda ()
           (let ((_code17631_ (gxc#apply-generate-runtime-phi _stx17626_)))
             (if (null? (unbox _lifts17628_))
                 _code17631_
                 (cons 'begin
                       (foldr cons
                              (cons _code17631_ '())
                              (reverse (unbox _lifts17628_)))))))
         gxc#current-compile-lift
         _lifts17628_))))
  (define gxc#lift-nested-modules
    (lambda (_ctx17622_)
      (let ((_modules17624_ (box '())))
        (begin
          (gxc#apply-lift-modules
           (##structure-ref _ctx17622_ '11 gx#module-context::t '#f)
           _modules17624_)
          (reverse (unbox _modules17624_))))))
  (define gxc#compile-scm-file
    (lambda (_path17618_ _code17619_)
      (begin
        (gxc#verbose '"compile " _path17618_)
        (with-output-to-file
         (cons 'path: (cons _path17618_ (cons 'permissions: (cons '420 '()))))
         (lambda ()
           (begin
             (pretty-print
              '(declare (block) (standard-bindings) (extended-bindings)))
             (pretty-print _code17619_))))
        (if (gxc#current-compile-invoke-gsc)
            (begin
              (gxc#gsc-compile-file _path17618_)
              (if (gxc#current-compile-keep-scm)
                  '#!void
                  (delete-file _path17618_)))
            '#!void))))
  (define gxc#gsc-compile-file
    (lambda (_path17604_)
      (let ((_gsc-args17611_
             (let ((_$e17606_ (gxc#current-compile-gsc-options)))
               (if _$e17606_
                   ((lambda (_opts17609_)
                      (foldr cons (cons _path17604_ '()) _opts17609_))
                    _$e17606_)
                   (cons _path17604_ '())))))
        (let ((_proc17613_
               (open-process
                (cons 'path:
                      (cons '"gsc"
                            (cons 'arguments:
                                  (cons _gsc-args17611_
                                        (cons 'stdout-redirection:
                                              (cons '#f '())))))))))
          (let ((_status17615_ (process-status _proc17613_)))
            (let ()
              (if (zero? _status17615_)
                  '#!void
                  (gxc#raise-compile-error
                   '"Compilation error; gsc exit with nonzero status"
                   _path17604_
                   _status17615_))))))))
  (define gxc#compile-output-file
    (lambda (_ctx17576_ _n17577_ _ext17578_)
      (let ((_module-relative-path17580_
             (lambda (_ctx17602_)
               (path-strip-directory
                (symbol->string
                 (##structure-ref
                  _ctx17602_
                  '1
                  gx#expander-context::t
                  '#f))))))
        (let ((_module-source-directory17581_
               (lambda (_ctx17598_)
                 (path-directory
                  (let ((_mpath17600_
                         (##structure-ref
                          _ctx17598_
                          '7
                          gx#module-context::t
                          '#f)))
                    (if (string? _mpath17600_)
                        _mpath17600_
                        (last _mpath17600_)))))))
          (let ((_section-string17582_
                 (lambda (_n17596_)
                   (if (number? _n17596_)
                       (number->string _n17596_)
                       (if (symbol? _n17596_)
                           (symbol->string _n17596_)
                           (if (string? _n17596_)
                               _n17596_
                               (gxc#raise-compile-error
                                '"Unexpected section"
                                _n17596_)))))))
            (let ((_file-name17583_
                   (lambda (_path17594_)
                     (if _n17577_
                         (string-append
                          _path17594_
                          '"__"
                          (_section-string17582_ _n17577_)
                          _ext17578_)
                         (string-append _path17594_ _ext17578_)))))
              (let ((_file-path17584_
                     (lambda ()
                       (let ((_$e17589_ (gxc#current-compile-output-dir)))
                         (if _$e17589_
                             ((lambda (_outdir17592_)
                                (path-expand
                                 (_file-name17583_
                                  (symbol->string
                                   (##structure-ref
                                    _ctx17576_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                                 _outdir17592_))
                              _$e17589_)
                             (path-expand
                              (_file-name17583_
                               (_module-relative-path17580_ _ctx17576_))
                              (_module-source-directory17581_ _ctx17576_)))))))
                (let ((_path17586_ (_file-path17584_)))
                  (begin
                    (create-directory* (path-directory _path17586_))
                    _path17586_))))))))))
