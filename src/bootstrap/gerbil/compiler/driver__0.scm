(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#compile-timestamp
    (lambda () (inexact->exact (floor (time->seconds (current-time))))))
  (begin
    (define gxc#compile-file__opt-lambda22053
      (lambda (_srcpath22055_ _opts22056_)
        (begin
          (if (string? _srcpath22055_)
              '#!void
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath22055_))
          (let ((_outdir22058_ (pgetq 'output-dir: _opts22056_))
                (_invoke-gsc?22059_ (pgetq 'invoke-gsc: _opts22056_))
                (_gsc-options22060_ (pgetq 'gsc-options: _opts22056_))
                (_keep-scm?22061_ (pgetq 'keep-scm: _opts22056_))
                (_verbosity22062_ (pgetq 'verbose: _opts22056_))
                (_optimize22063_ (pgetq 'optimize: _opts22056_))
                (_debug22064_ (pgetq 'debug: _opts22056_))
                (_gen-ssxi22065_ (pgetq 'generate-ssxi: _opts22056_))
                (_static22066_ (pgetq 'static: _opts22056_)))
            (begin
              (if _outdir22058_ (create-directory* _outdir22058_) '#!void)
              (if _optimize22063_ (gxc#optimizer-info-init!) '#!void)
              (call-with-parameters
               (lambda ()
                 (begin
                   (gxc#verbose '"compile " _srcpath22055_)
                   (gxc#compile-top-module
                    (gx#import-module__0 _srcpath22055_))))
               gxc#current-compile-output-dir
               _outdir22058_
               gxc#current-compile-invoke-gsc
               _invoke-gsc?22059_
               gxc#current-compile-gsc-options
               _gsc-options22060_
               gxc#current-compile-keep-scm
               _keep-scm?22061_
               gxc#current-compile-verbose
               _verbosity22062_
               gxc#current-compile-optimize
               _optimize22063_
               gxc#current-compile-debug
               _debug22064_
               gxc#current-compile-generate-ssxi
               _gen-ssxi22065_
               gxc#current-compile-static
               _static22066_
               gxc#current-compile-timestamp
               (gxc#compile-timestamp)))))))
    (begin
      (define gxc#compile-file__0
        (lambda (_srcpath22072_)
          (let ((_opts22074_ '()))
            (gxc#compile-file__opt-lambda22053 _srcpath22072_ _opts22074_))))
      (define gxc#compile-file
        (lambda _g22082_
          (let ((_g22081_ (length _g22082_)))
            (cond ((fx= _g22081_ 1) (apply gxc#compile-file__0 _g22082_))
                  ((fx= _g22081_ 2)
                   (apply gxc#compile-file__opt-lambda22053 _g22082_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-file
                    _g22082_))))))))
  (begin
    (define gxc#compile-exe-stub__opt-lambda22039
      (lambda (_srcpath22041_ _opts22042_)
        (gxc#do-compile-exe
         _srcpath22041_
         _opts22042_
         gxc#compile-exe-stub-module)))
    (begin
      (define gxc#compile-exe-stub__0
        (lambda (_srcpath22047_)
          (let ((_opts22049_ '()))
            (gxc#compile-exe-stub__opt-lambda22039
             _srcpath22047_
             _opts22049_))))
      (define gxc#compile-exe-stub
        (lambda _g22084_
          (let ((_g22083_ (length _g22084_)))
            (cond ((fx= _g22083_ 1) (apply gxc#compile-exe-stub__0 _g22084_))
                  ((fx= _g22083_ 2)
                   (apply gxc#compile-exe-stub__opt-lambda22039 _g22084_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-exe-stub
                    _g22084_))))))))
  (begin
    (define gxc#compile-static-exe__opt-lambda22025
      (lambda (_srcpath22027_ _opts22028_)
        (gxc#do-compile-exe
         _srcpath22027_
         _opts22028_
         gxc#compile-exe-static-module)))
    (begin
      (define gxc#compile-static-exe__0
        (lambda (_srcpath22033_)
          (let ((_opts22035_ '()))
            (gxc#compile-static-exe__opt-lambda22025
             _srcpath22033_
             _opts22035_))))
      (define gxc#compile-static-exe
        (lambda _g22086_
          (let ((_g22085_ (length _g22086_)))
            (cond ((fx= _g22085_ 1) (apply gxc#compile-static-exe__0 _g22086_))
                  ((fx= _g22085_ 2)
                   (apply gxc#compile-static-exe__opt-lambda22025 _g22086_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-static-exe
                    _g22086_))))))))
  (define gxc#do-compile-exe
    (lambda (_srcpath22015_ _opts22016_ _compile-e22017_)
      (begin
        (if (string? _srcpath22015_)
            '#!void
            (gxc#raise-compile-error
             '"Invalid module source path"
             _srcpath22015_))
        (let ((_outdir22019_ (pgetq 'output-dir: _opts22016_))
              (_invoke-gsc?22020_ (pgetq 'invoke-gsc: _opts22016_))
              (_gsc-options22021_ (pgetq 'gsc-options: _opts22016_))
              (_keep-scm?22022_ (pgetq 'keep-scm: _opts22016_))
              (_verbosity22023_ (pgetq 'verbose: _opts22016_)))
          (begin
            (if _outdir22019_ (create-directory* _outdir22019_) '#!void)
            (call-with-parameters
             (lambda ()
               (begin
                 (gxc#verbose '"compile exe " _srcpath22015_)
                 (_compile-e22017_
                  (gx#import-module__0 _srcpath22015_)
                  _opts22016_)))
             gxc#current-compile-output-dir
             _outdir22019_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?22020_
             gxc#current-compile-gsc-options
             _gsc-options22021_
             gxc#current-compile-keep-scm
             _keep-scm?22022_
             gxc#current-compile-verbose
             _verbosity22023_
             gxc#current-compile-timestamp
             (gxc#compile-timestamp)))))))
  (define gxc#compile-exe-stub-module
    (lambda (_ctx21979_ _opts21980_)
      (letrec ((_generate-stub21982_
                (lambda ()
                  (let* ((_mod-str22008_
                          (symbol->string
                           (##structure-ref
                            _ctx21979_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_mod-rt22010_ (string-append _mod-str22008_ '"__rt"))
                         (_mod-main22012_
                          (gxc#find-runtime-symbol _ctx21979_ 'main)))
                    (begin
                      (write '(##namespace ("")))
                      (newline)
                      (write (cons '_gx#start!
                                   (cons _mod-rt22010_
                                         (cons (cons 'quote
                                                     (cons _mod-main22012_
                                                           '()))
                                               '()))))
                      (newline)))))
               (_compile-stub21983_
                (lambda (_output-scm21990_ _output-bin21991_)
                  (let* ((_init-stub21993_
                          (path-expand
                           '"lib/gx-init-exe.scm"
                           (getenv '"GERBIL_HOME")))
                         (_gxc-cache21995_ (gxc#compile-cache-directory))
                         (_init-stub21997_
                          (gxc#compile-cache
                           _init-stub21993_
                           _gxc-cache21995_))
                         (_gsc-args21999_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin21991_
                                            (cons _init-stub21997_
                                                  (cons _output-scm21990_
                                                        '()))))))
                         (_g22087_
                          (gxc#verbose
                           '"invoke gsc "
                           (cons 'gsc _gsc-args21999_)))
                         (_proc22002_
                          (open-process
                           (cons 'path:
                                 (cons '"gsc"
                                       (cons 'arguments:
                                             (cons _gsc-args21999_
                                                   (cons 'stdout-redirection:
                                                         (cons '#f '()))))))))
                         (_status22004_ (process-status _proc22002_)))
                    (if (zero? _status22004_)
                        '#!void
                        (gxc#raise-compile-error
                         '"Compilation error; gsc exit with nonzero status"
                         _output-scm21990_
                         _output-bin21991_
                         _status22004_))))))
        (let* ((_output-bin21985_
                (gxc#compile-exe-output-file _ctx21979_ _opts21980_))
               (_output-scm21987_ (string-append _output-bin21985_ '".scm")))
          (begin
            (with-output-to-file _output-scm21987_ _generate-stub21982_)
            (if (gxc#current-compile-invoke-gsc)
                (_compile-stub21983_ _output-scm21987_ _output-bin21985_)
                '#!void)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm21987_)))))))
  (define gxc#compile-exe-static-module
    (lambda (_ctx21911_ _opts21912_)
      (letrec ((_generate-stub21914_
                (lambda ()
                  (let ((_mod-main21977_
                         (gxc#find-runtime-symbol _ctx21911_ 'main)))
                    (begin
                      (write '(##namespace ("")))
                      (newline)
                      (write (cons 'apply
                                   (cons _mod-main21977_
                                         (cons (cons 'cdr
                                                     (cons (cons 'command-line
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                      (newline)))))
               (_compile-stub21915_
                (lambda (_output-scm21922_ _output-bin21923_)
                  (let* ((_gerbil-home21925_ (getenv '"GERBIL_HOME"))
                         (_gx-version21927_
                          (path-expand
                           '"lib/static/gx-version.scm"
                           _gerbil-home21925_))
                         (_gx-gambc021929_
                          (path-expand
                           '"lib/static/gx-gambc0.scm"
                           _gerbil-home21925_))
                         (_gx-gambc-init21931_
                          (path-expand
                           '"lib/gx-init-static-exe.scm"
                           _gerbil-home21925_))
                         (_gx-gambc-macros21933_
                          (path-expand
                           '"lib/static/gx-gambc#.scm"
                           _gerbil-home21925_))
                         (_include-gx-gambc-macros21935_
                          (string-append
                           '"(include \""
                           _gx-gambc-macros21933_
                           '"\")"))
                         (_bin-scm21937_
                          (gxc#find-static-module-file _ctx21911_))
                         (_deps21939_
                          (gxc#find-runtime-module-deps _ctx21911_))
                         (_deps21941_
                          (map gxc#find-static-module-file _deps21939_))
                         (_deps21946_
                          (filter (lambda (_$obj21943_)
                                    (not (gxc#file-empty? _$obj21943_)))
                                  _deps21941_))
                         (_gxc-cache21948_ (gxc#compile-cache-directory))
                         (_g22088_
                          (gxc#compile-cache
                           _gx-version21927_
                           _gxc-cache21948_))
                         (_gx-gambc021951_
                          (gxc#compile-cache
                           _gx-gambc021929_
                           _gxc-cache21948_))
                         (_gx-gambc-init21953_
                          (gxc#compile-cache
                           _gx-gambc-init21931_
                           _gxc-cache21948_))
                         (_deps21959_
                          (map (lambda (_g2195421956_)
                                 (gxc#compile-cache
                                  _g2195421956_
                                  _gxc-cache21948_))
                               _deps21946_))
                         (_bin-scm21961_
                          (gxc#compile-cache _bin-scm21937_ _gxc-cache21948_))
                         (_gsc-opts21966_
                          (let ((_$e21963_ (pgetq 'gsc-options: _opts21912_)))
                            (if _$e21963_ _$e21963_ '())))
                         (_gsc-args21968_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin21923_
                                            (foldr1 cons
                                                    (foldr1 cons
                                                            (cons '"-e"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _include-gx-gambc-macros21935_
                                (cons _gx-gambc021951_
                                      (cons _gx-gambc-init21953_
                                            (foldr1 cons
                                                    (cons _bin-scm21961_
                                                          (cons _output-scm21922_
                                                                '()))
                                                    _deps21959_)))))
                    _gsc-opts21966_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gxc#gsc-debug-options))))))
                         (_g22089_
                          (gxc#verbose
                           '"invoke gsc "
                           (cons 'gsc _gsc-args21968_)))
                         (_proc21971_
                          (open-process
                           (cons 'path:
                                 (cons '"gsc"
                                       (cons 'arguments:
                                             (cons _gsc-args21968_
                                                   (cons 'stdout-redirection:
                                                         (cons '#f '()))))))))
                         (_status21973_ (process-status _proc21971_)))
                    (if (zero? _status21973_)
                        '#!void
                        (gxc#raise-compile-error
                         '"Compilation error; gsc exit with nonzero status"
                         _output-scm21922_
                         _output-bin21923_
                         _status21973_))))))
        (let* ((_output-bin21917_
                (gxc#compile-exe-output-file _ctx21911_ _opts21912_))
               (_output-scm21919_ (string-append _output-bin21917_ '".scm")))
          (begin
            (with-output-to-file _output-scm21919_ _generate-stub21914_)
            (if (gxc#current-compile-invoke-gsc)
                (_compile-stub21915_ _output-scm21919_ _output-bin21917_)
                '#!void)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm21919_)))))))
  (define gxc#compile-cache-directory
    (lambda ()
      (let* ((_cachedir21906_ (getenv '"GERBIL_CACHE" '"~/.cache/gerbil"))
             (_gxc-cache21908_ (path-expand '"gxc" _cachedir21906_)))
        (begin
          (create-directory* _gxc-cache21908_)
          (path-normalize _gxc-cache21908_)))))
  (define gxc#compile-cache
    (lambda (_file21900_ _gxc-cache21901_)
      (let ((_cachefile21903_
             (path-expand
              (path-strip-directory _file21900_)
              _gxc-cache21901_)))
        (begin
          (if (file-exists? _cachefile21903_)
              (if (file-newer? _file21900_ _cachefile21903_)
                  (begin
                    (delete-file _cachefile21903_)
                    (copy-file _file21900_ _cachefile21903_))
                  '#!void)
              (copy-file _file21900_ _cachefile21903_))
          _cachefile21903_))))
  (define gxc#find-export-binding
    (lambda (_ctx21850_ _id21851_)
      (let ((_$e21897_
             (find (lambda (_e2185221854_)
                     (let* ((_g2185621866_ _e2185221854_)
                            (_E2185921870_
                             (lambda ()
                               (error '"No clause matching" _g2185621866_)))
                            (_else2185821874_ (lambda () '#f))
                            (_K2186021878_ (lambda () '#t)))
                       (if (##structure-direct-instance-of?
                            _g2185621866_
                            (##type-id gx#module-export::t))
                           (let* ((_e2186121881_
                                   (##vector-ref _g2185621866_ '1))
                                  (_e2186221884_
                                   (##vector-ref _g2185621866_ '2))
                                  (_e2186321887_
                                   (##vector-ref _g2185621866_ '3)))
                             (if (##eq? _e2186321887_ '0)
                                 (let ((_e2186421890_
                                        (##vector-ref _g2185621866_ '4)))
                                   (if ((lambda (_g2189221894_)
                                          (eq? _g2189221894_ _id21851_))
                                        _e2186421890_)
                                       (_K2186021878_)
                                       (_else2185821874_)))
                                 (_else2185821874_)))
                           (_else2185821874_))))
                   (##structure-ref _ctx21850_ '9 gx#module-context::t '#f))))
        (if _$e21897_ (gx#core-resolve-module-export _$e21897_) '#f))))
  (define gxc#find-runtime-symbol
    (lambda (_ctx21842_ _id21843_)
      (let ((_$e21845_ (gxc#find-export-binding _ctx21842_ _id21843_)))
        (if _$e21845_
            ((lambda (_bind21848_)
               (begin
                 (if (##structure-instance-of?
                      _bind21848_
                      'gx#runtime-binding::t)
                     '#!void
                     (gxc#raise-compile-error
                      '"export is not a runtime binding"
                      _id21843_))
                 (##structure-ref _bind21848_ '1 gx#binding::t '#f)))
             _$e21845_)
            (gxc#raise-compile-error
             '"module does not export symbol"
             (##structure-ref _ctx21842_ '1 gx#expander-context::t '#f)
             _id21843_)))))
  (define gxc#find-runtime-module-deps
    (lambda (_ctx21780_)
      (letrec* ((_ht21782_ (make-hash-table-eq))
                (_find-deps21783_
                 (lambda (_rest21790_ _deps21791_)
                   (let* ((_rest2179221800_ _rest21790_)
                          (_E2179521804_
                           (lambda ()
                             (error '"No clause matching" _rest2179221800_)))
                          (_else2179421808_ (lambda () _deps21791_))
                          (_K2179621830_
                           (lambda (_rest21811_ _hd21812_)
                             (if (##structure-instance-of?
                                  _hd21812_
                                  'gx#module-context::t)
                                 (let ((_id21814_
                                        (##structure-ref
                                         _hd21812_
                                         '1
                                         gx#expander-context::t
                                         '#f))
                                       (_imports21815_
                                        (##structure-ref
                                         _hd21812_
                                         '8
                                         gx#module-context::t
                                         '#f)))
                                   (if (table-ref _ht21782_ _id21814_ '#f)
                                       (_find-deps21783_
                                        _rest21811_
                                        _deps21791_)
                                       (let ((_$e21817_
                                              (gx#core-context-prelude__opt-lambda12030
                                               _hd21812_)))
                                         (if _$e21817_
                                             ((lambda (_pre21820_)
                                                (let ((_xdeps21822_
                                                       (_find-deps21783_
                                                        (cons _pre21820_
                                                              _imports21815_)
                                                        _deps21791_)))
                                                  (begin
                                                    (table-set!
                                                     _ht21782_
                                                     _id21814_
                                                     _hd21812_)
                                                    (_find-deps21783_
                                                     _rest21811_
                                                     (cons _hd21812_
                                                           _xdeps21822_)))))
                                              _$e21817_)
                                             (let ((_xdeps21824_
                                                    (_find-deps21783_
                                                     _imports21815_
                                                     _deps21791_)))
                                               (begin
                                                 (table-set!
                                                  _ht21782_
                                                  _id21814_
                                                  _hd21812_)
                                                 (_find-deps21783_
                                                  _rest21811_
                                                  (cons _hd21812_
                                                        _xdeps21824_))))))))
                                 (if (##structure-instance-of?
                                      _hd21812_
                                      'gx#prelude-context::t)
                                     (let ((_id21826_
                                            (##structure-ref
                                             _hd21812_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (if (table-ref _ht21782_ _id21826_ '#f)
                                           (_find-deps21783_
                                            _rest21811_
                                            _deps21791_)
                                           (let ((_xdeps21828_
                                                  (_find-deps21783_
                                                   (##structure-ref
                                                    _hd21812_
                                                    '7
                                                    gx#prelude-context::t
                                                    '#f)
                                                   _deps21791_)))
                                             (if (table-ref
                                                  _ht21782_
                                                  _id21826_
                                                  '#f)
                                                 (_find-deps21783_
                                                  _rest21811_
                                                  _xdeps21828_)
                                                 (begin
                                                   (table-set!
                                                    _ht21782_
                                                    _id21826_
                                                    _hd21812_)
                                                   (_find-deps21783_
                                                    _rest21811_
                                                    (cons _hd21812_
                                                          _xdeps21828_)))))))
                                     (if (##structure-direct-instance-of?
                                          _hd21812_
                                          'gx#module-import::t)
                                         (if (fxzero? (##direct-structure-ref
                                                       _hd21812_
                                                       '3
                                                       gx#module-import::t
                                                       '#f))
                                             (_find-deps21783_
                                              (cons (##direct-structure-ref
                                                     _hd21812_
                                                     '1
                                                     gx#module-import::t
                                                     '#f)
                                                    _rest21811_)
                                              _deps21791_)
                                             (_find-deps21783_
                                              _rest21811_
                                              _deps21791_))
                                         (if (##structure-direct-instance-of?
                                              _hd21812_
                                              'gx#module-export::t)
                                             (_find-deps21783_
                                              (cons (##direct-structure-ref
                                                     _hd21812_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)
                                                    _rest21811_)
                                              _deps21791_)
                                             (if (##structure-direct-instance-of?
                                                  _hd21812_
                                                  'gx#import-set::t)
                                                 (if (fxzero? (##direct-structure-ref
                                                               _hd21812_
                                                               '3
                                                               gx#module-import::t
                                                               '#f))
                                                     (_find-deps21783_
                                                      (cons (##direct-structure-ref
                                                             _hd21812_
                                                             '1
                                                             gx#import-set::t
                                                             '#f)
                                                            _rest21811_)
                                                      _deps21791_)
                                                     (_find-deps21783_
                                                      _rest21811_
                                                      _deps21791_))
                                                 (error '"Unexpected module import"
                                                        _hd21812_)))))))))
                     (if (##pair? _rest2179221800_)
                         (let ((_hd2179721833_ (##car _rest2179221800_))
                               (_tl2179821835_ (##cdr _rest2179221800_)))
                           (let* ((_hd21838_ _hd2179721833_)
                                  (_rest21840_ _tl2179821835_))
                             (_K2179621830_ _rest21840_ _hd21838_)))
                         (_else2179421808_))))))
        (reverse (filter gx#expander-context-id
                         (_find-deps21783_
                          (let ((_$e21785_
                                 (gx#core-context-prelude__opt-lambda12030
                                  _ctx21780_)))
                            (if _$e21785_
                                ((lambda (_pre21788_)
                                   (cons _pre21788_
                                         (##structure-ref
                                          _ctx21780_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _$e21785_)
                                (##structure-ref
                                 _ctx21780_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))))
  (define gxc#find-static-module-file
    (lambda (_ctx21719_)
      (let* ((_scm21721_
              (string-append
               (gxc#static-module-name
                (##structure-ref _ctx21719_ '1 gx#expander-context::t '#f))
               '".scm"))
             (_dirs21723_ (gx#current-expander-module-library-path))
             (_dirs21732_
              (let ((_$e21725_ (gxc#current-compile-output-dir)))
                (if _$e21725_
                    ((lambda (_g2172721729_) (cons _g2172721729_ _dirs21723_))
                     _$e21725_)
                    _dirs21723_)))
             (_dirs21738_
              (map (lambda (_g2173321735_)
                     (path-expand '"static" _g2173321735_))
                   _dirs21732_)))
        (let _lp21741_ ((_rest21743_ _dirs21738_))
          (let* ((_rest2174421752_ _rest21743_)
                 (_E2174721756_
                  (lambda () (error '"No clause matching" _rest2174421752_)))
                 (_else2174621760_
                  (lambda ()
                    (gxc#raise-compile-error
                     '"cannot find static module"
                     (##structure-ref _ctx21719_ '1 gx#expander-context::t '#f)
                     _scm21721_)))
                 (_K2174821768_
                  (lambda (_rest21763_ _dir21764_)
                    (let ((_path21766_ (path-expand _scm21721_ _dir21764_)))
                      (if (file-exists? _path21766_)
                          _path21766_
                          (_lp21741_ _rest21763_))))))
            (if (##pair? _rest2174421752_)
                (let ((_hd2174921771_ (##car _rest2174421752_))
                      (_tl2175021773_ (##cdr _rest2174421752_)))
                  (let* ((_dir21776_ _hd2174921771_)
                         (_rest21778_ _tl2175021773_))
                    (_K2174821768_ _rest21778_ _dir21776_)))
                (_else2174621760_)))))))
  (define gxc#file-empty?
    (lambda (_path21717_)
      (zero? (file-info-size (file-info _path21717_ '#t)))))
  (define gxc#compile-top-module
    (lambda (_ctx21714_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#verbose
            '"compile "
            (##structure-ref _ctx21714_ '1 gx#expander-context::t '#f))
           (if (gxc#current-compile-optimize)
               (gxc#optimize! _ctx21714_)
               '#!void)
           (gxc#collect-bindings _ctx21714_)
           (gxc#compile-runtime-code _ctx21714_)
           (gxc#compile-meta-code _ctx21714_)
           (if (if (gxc#current-compile-optimize)
                   (gxc#current-compile-generate-ssxi)
                   '#f)
               (gxc#compile-ssxi-code _ctx21714_)
               '#!void)))
       gx#current-expander-context
       _ctx21714_
       gx#current-expander-phi
       '0
       gx#current-expander-marks
       '()
       gxc#current-compile-symbol-table
       (let ((__obj22079 (make-object gxc#symbol-table::t '2)))
         (begin (gxc#symbol-table:::init! __obj22079) __obj22079))
       gxc#current-compile-runtime-sections
       (make-hash-table-eq)
       gxc#current-compile-runtime-names
       (make-table))))
  (define gxc#collect-bindings
    (lambda (_ctx21712_)
      (gxc#apply-collect-bindings
       (##structure-ref _ctx21712_ '11 gx#module-context::t '#f))))
  (define gxc#compile-runtime-code
    (lambda (_ctx21671_)
      (letrec ((_compile121673_
                (lambda (_ctx21701_)
                  (let* ((_code21703_
                          (##structure-ref
                           _ctx21701_
                           '11
                           gx#module-context::t
                           '#f))
                         (_rt21707_
                          (if (gxc#apply-find-runtime-code _code21703_)
                              (let ((_idstr21705_
                                     (symbol->string
                                      (##structure-ref
                                       _ctx21701_
                                       '1
                                       gx#expander-context::t
                                       '#f))))
                                (string-append _idstr21705_ '"__0"))
                              '#f)))
                    (begin
                      (if _rt21707_
                          (begin
                            (table-set!
                             (gxc#current-compile-runtime-sections)
                             _ctx21701_
                             _rt21707_)
                            (_generate-runtime-code21674_
                             _ctx21701_
                             _code21703_))
                          (if (gxc#current-compile-static)
                              (let ((_path21710_
                                     (gxc#compile-static-output-file
                                      _ctx21701_)))
                                (with-output-to-file
                                 (cons 'path:
                                       (cons _path21710_
                                             (cons 'permissions:
                                                   (cons '420 '()))))
                                 void))
                              '#!void))
                      (_generate-loader-code21675_
                       _ctx21701_
                       _code21703_
                       _rt21707_)))))
               (_generate-runtime-code21674_
                (lambda (_ctx21689_ _code21690_)
                  (let* ((_runtime-code21693_
                          (call-with-parameters
                           (lambda () (gxc#apply-generate-runtime _code21690_))
                           gx#current-expander-context
                           _ctx21689_))
                         (_scm021695_
                          (gxc#compile-output-file _ctx21689_ '0 '".scm")))
                    (if (gxc#current-compile-static)
                        (let ((_scms21698_
                               (gxc#compile-static-output-file _ctx21689_)))
                          (begin
                            (call-with-parameters
                             (lambda ()
                               (gxc#compile-scm-file
                                _scm021695_
                                _runtime-code21693_))
                             gxc#current-compile-keep-scm
                             '#t)
                            (if (file-exists? _scms21698_)
                                (delete-file _scms21698_)
                                '#!void)
                            (gxc#verbose
                             '"copy static module "
                             _scm021695_
                             '" => "
                             _scms21698_)
                            (copy-file _scm021695_ _scms21698_)
                            (if (gxc#current-compile-keep-scm)
                                '#!void
                                (delete-file _scm021695_))))
                        (gxc#compile-scm-file
                         _scm021695_
                         _runtime-code21693_)))))
               (_generate-loader-code21675_
                (lambda (_ctx21679_ _code21680_ _rt21681_)
                  (let* ((_loader-code21684_
                          (call-with-parameters
                           (lambda () (gxc#apply-generate-loader _code21680_))
                           gx#current-expander-context
                           _ctx21679_))
                         (_loader-code21686_
                          (if _rt21681_
                              (cons 'begin
                                    (cons _loader-code21684_
                                          (cons (cons 'load-module
                                                      (cons _rt21681_ '()))
                                                '())))
                              _loader-code21684_)))
                    (gxc#compile-scm-file
                     (gxc#compile-output-file _ctx21679_ 'rt '".scm")
                     _loader-code21686_)))))
        (let ((_all-modules21677_
               (cons _ctx21671_ (gxc#lift-nested-modules _ctx21671_))))
          (for-each _compile121673_ _all-modules21677_)))))
  (define gxc#compile-meta-code
    (lambda (_ctx21573_)
      (letrec ((_compile-ssi21575_
                (lambda (_code21641_)
                  (let* ((_path21643_
                          (gxc#compile-output-file _ctx21573_ '#f '".ssi"))
                         (_prelude21654_
                          (let* ((_super21645_
                                  (##structure-ref
                                   _ctx21573_
                                   '3
                                   gx#phi-context::t
                                   '#f))
                                 (_$e21647_
                                  (##structure-ref
                                   _super21645_
                                   '1
                                   gx#expander-context::t
                                   '#f)))
                            (if _$e21647_
                                ((lambda (_g2164921651_)
                                   (make-symbol '":" _g2164921651_))
                                 _$e21647_)
                                ':<root>)))
                         (_ns21656_
                          (##structure-ref
                           _ctx21573_
                           '6
                           gx#module-context::t
                           '#f))
                         (_idstr21658_
                          (symbol->string
                           (##structure-ref
                            _ctx21573_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_pkg21665_
                          (let ((_$e21660_ (string-rindex _idstr21658_ '#\/)))
                            (if _$e21660_
                                ((lambda (_x21663_)
                                   (string->symbol
                                    (substring _idstr21658_ '0 _x21663_)))
                                 _$e21660_)
                                '#f)))
                         (_rt21667_
                          (table-ref
                           (gxc#current-compile-runtime-sections)
                           _ctx21573_
                           '#f)))
                    (begin
                      (gxc#verbose '"compile " _path21643_)
                      (with-output-to-file
                       (cons 'path:
                             (cons _path21643_
                                   (cons 'permissions: (cons '420 '()))))
                       (lambda ()
                         (begin
                           (displayln '"prelude:" '" " _prelude21654_)
                           (if _pkg21665_
                               (displayln '"package:" '" " _pkg21665_)
                               '#!void)
                           (displayln '"namespace:" '" " _ns21656_)
                           (newline)
                           (pretty-print _code21641_)
                           (if _rt21667_
                               (pretty-print
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons '_gx#load-module '()))
                                            (cons (cons '%#quote
                                                        (cons _rt21667_ '()))
                                                  '()))))
                               '#!void))))))))
               (_compile-phi21576_
                (lambda (_part21581_)
                  (let* ((_part2158221595_ _part21581_)
                         (_E2158421599_
                          (lambda ()
                            (error '"No clause matching" _part2158221595_)))
                         (_K2158521610_
                          (lambda (_code21602_
                                   _n21603_
                                   _phi21604_
                                   _phi-ctx21605_)
                            (let ((_code21608_
                                   (call-with-parameters
                                    (lambda ()
                                      (gxc#generate-runtime-phi _code21602_))
                                    gx#current-expander-context
                                    _phi-ctx21605_
                                    gx#current-expander-phi
                                    _phi21604_)))
                              (gxc#compile-scm-file
                               (gxc#compile-output-file
                                _ctx21573_
                                _n21603_
                                '".scm")
                               _code21608_)))))
                    (if (##pair? _part2158221595_)
                        (let ((_hd2158621613_ (##car _part2158221595_))
                              (_tl2158721615_ (##cdr _part2158221595_)))
                          (let ((_phi-ctx21618_ _hd2158621613_))
                            (if (##pair? _tl2158721615_)
                                (let ((_hd2158821620_ (##car _tl2158721615_))
                                      (_tl2158921622_ (##cdr _tl2158721615_)))
                                  (let ((_phi21625_ _hd2158821620_))
                                    (if (##pair? _tl2158921622_)
                                        (let ((_hd2159021627_
                                               (##car _tl2158921622_))
                                              (_tl2159121629_
                                               (##cdr _tl2158921622_)))
                                          (let ((_n21632_ _hd2159021627_))
                                            (if (##pair? _tl2159121629_)
                                                (let ((_hd2159221634_
                                                       (##car _tl2159121629_))
                                                      (_tl2159321636_
                                                       (##cdr _tl2159121629_)))
                                                  (let ((_code21639_
                                                         _hd2159221634_))
                                                    (if (##null? _tl2159321636_)
                                                        (_K2158521610_
                                                         _code21639_
                                                         _n21632_
                                                         _phi21625_
                                                         _phi-ctx21618_)
                                                        (_E2158421599_))))
                                                (_E2158421599_))))
                                        (_E2158421599_))))
                                (_E2158421599_))))
                        (_E2158421599_))))))
        (let ((_g22090_ (gxc#generate-meta-code _ctx21573_)))
          (begin
            (let ((_g22091_ (values-count _g22090_)))
              (if (not (fx= _g22091_ 2))
                  (error "Context expects 2 values" _g22091_)))
            (let ((_ssi-code21578_ (values-ref _g22090_ 0))
                  (_phi-code21579_ (values-ref _g22090_ 1)))
              (begin
                (_compile-ssi21575_ _ssi-code21578_)
                (for-each _compile-phi21576_ _phi-code21579_))))))))
  (define gxc#compile-ssxi-code
    (lambda (_ctx21556_)
      (let* ((_path21558_ (gxc#compile-output-file _ctx21556_ '#f '".ssxi.ss"))
             (_code21560_
              (gxc#apply-generate-ssxi
               (##structure-ref _ctx21556_ '11 gx#module-context::t '#f)))
             (_idstr21562_
              (symbol->string
               (##structure-ref _ctx21556_ '1 gx#expander-context::t '#f)))
             (_pkg21569_
              (let ((_$e21564_ (string-rindex _idstr21562_ '#\/)))
                (if _$e21564_
                    ((lambda (_x21567_)
                       (string->symbol (substring _idstr21562_ '0 _x21567_)))
                     _$e21564_)
                    '#f))))
        (begin
          (gxc#verbose '"compile " _path21558_)
          (with-output-to-file
           (cons 'path:
                 (cons _path21558_ (cons 'permissions: (cons '420 '()))))
           (lambda ()
             (begin
               (displayln '"prelude: :gerbil/compiler/ssxi")
               (if _pkg21569_ (displayln '"package: " _pkg21569_) '#!void)
               (newline)
               (pretty-print _code21560_))))))))
  (define gxc#generate-meta-code
    (lambda (_ctx21549_)
      (let* ((_state21551_
              (let ((__obj22080 (make-object gxc#meta-state::t '4)))
                (begin
                  (gxc#meta-state:::init! __obj22080 _ctx21549_)
                  __obj22080)))
             (_ssi-code21553_
              (gxc#apply-generate-meta
               (##structure-ref _ctx21549_ '11 gx#module-context::t '#f)
               _state21551_)))
        (values _ssi-code21553_ (gxc#meta-state-end! _state21551_)))))
  (define gxc#generate-runtime-phi
    (lambda (_stx21542_)
      (let ((_lifts21544_ (box '())))
        (call-with-parameters
         (lambda ()
           (let ((_code21547_ (gxc#apply-generate-runtime-phi _stx21542_)))
             (if (null? (unbox _lifts21544_))
                 _code21547_
                 (cons 'begin
                       (foldr1 cons
                               (cons _code21547_ '())
                               (reverse (unbox _lifts21544_)))))))
         gxc#current-compile-lift
         _lifts21544_
         gxc#current-compile-marks
         (make-hash-table-eq)))))
  (define gxc#lift-nested-modules
    (lambda (_ctx21538_)
      (let ((_modules21540_ (box '())))
        (begin
          (gxc#apply-lift-modules
           (##structure-ref _ctx21538_ '11 gx#module-context::t '#f)
           _modules21540_)
          (reverse (unbox _modules21540_))))))
  (define gxc#compile-scm-file
    (lambda (_path21534_ _code21535_)
      (begin
        (gxc#verbose '"compile " _path21534_)
        (with-output-to-file
         (cons 'path: (cons _path21534_ (cons 'permissions: (cons '420 '()))))
         (lambda ()
           (begin
             (pretty-print
              '(declare (block) (standard-bindings) (extended-bindings)))
             (pretty-print _code21535_))))
        (if (gxc#current-compile-invoke-gsc)
            (gxc#gsc-compile-file _path21534_)
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path21534_)))))
  (define gxc#gsc-debug-options
    (lambda ()
      (let ((_$e21526_ (gxc#current-compile-debug)))
        (if _$e21526_
            ((lambda (_debug21529_)
               (let ((_$e21531_ _debug21529_))
                 (if (eq? _$e21531_ 'env)
                     (cons '"-debug-environments" '())
                     (if (eq? _$e21531_ 'src)
                         (cons '"-debug-environments"
                               (cons '"-debug-source" '()))
                         (if (memq _$e21531_ '(all #t))
                             (cons '"-debug" '())
                             (gxc#raise-compile-error
                              '"unknown debug option"
                              _debug21529_))))))
             _$e21526_)
            '()))))
  (define gxc#gsc-compile-file
    (lambda (_path21508_)
      (let* ((_gsc-args21515_
              (let ((_$e21510_ (gxc#current-compile-gsc-options)))
                (if _$e21510_
                    ((lambda (_opts21513_)
                       (foldr1 cons (cons _path21508_ '()) _opts21513_))
                     _$e21510_)
                    (cons _path21508_ '()))))
             (_gsc-args21517_
              (foldr1 cons _gsc-args21515_ (gxc#gsc-debug-options)))
             (_g22092_
              (gxc#verbose '"invoke gsc " (cons 'gsc _gsc-args21517_)))
             (_proc21520_
              (open-process
               (cons 'path:
                     (cons '"gsc"
                           (cons 'arguments:
                                 (cons _gsc-args21517_
                                       (cons 'stdout-redirection:
                                             (cons '#f '()))))))))
             (_status21522_ (process-status _proc21520_)))
        (if (zero? _status21522_)
            '#!void
            (gxc#raise-compile-error
             '"Compilation error; gsc exit with nonzero status"
             _path21508_
             _status21522_)))))
  (define gxc#compile-output-file
    (lambda (_ctx21480_ _n21481_ _ext21482_)
      (letrec ((_module-relative-path21484_
                (lambda (_ctx21506_)
                  (path-strip-directory
                   (symbol->string
                    (##structure-ref
                     _ctx21506_
                     '1
                     gx#expander-context::t
                     '#f)))))
               (_module-source-directory21485_
                (lambda (_ctx21502_)
                  (path-directory
                   (let ((_mpath21504_
                          (##structure-ref
                           _ctx21502_
                           '7
                           gx#module-context::t
                           '#f)))
                     (if (string? _mpath21504_)
                         _mpath21504_
                         (last _mpath21504_))))))
               (_section-string21486_
                (lambda (_n21500_)
                  (if (number? _n21500_)
                      (number->string _n21500_)
                      (if (symbol? _n21500_)
                          (symbol->string _n21500_)
                          (if (string? _n21500_)
                              _n21500_
                              (gxc#raise-compile-error
                               '"Unexpected section"
                               _n21500_))))))
               (_file-name21487_
                (lambda (_path21498_)
                  (if _n21481_
                      (string-append
                       _path21498_
                       '"__"
                       (_section-string21486_ _n21481_)
                       _ext21482_)
                      (string-append _path21498_ _ext21482_))))
               (_file-path21488_
                (lambda ()
                  (let ((_$e21493_ (gxc#current-compile-output-dir)))
                    (if _$e21493_
                        ((lambda (_outdir21496_)
                           (path-expand
                            (_file-name21487_
                             (symbol->string
                              (##structure-ref
                               _ctx21480_
                               '1
                               gx#expander-context::t
                               '#f)))
                            _outdir21496_))
                         _$e21493_)
                        (path-expand
                         (_file-name21487_
                          (_module-relative-path21484_ _ctx21480_))
                         (_module-source-directory21485_ _ctx21480_)))))))
        (let ((_path21490_ (_file-path21488_)))
          (begin
            (create-directory* (path-directory _path21490_))
            _path21490_)))))
  (define gxc#compile-static-output-file
    (lambda (_ctx21463_)
      (letrec ((_file-name21465_
                (lambda (_idstr21478_)
                  (string-append
                   (gxc#static-module-name _idstr21478_)
                   '".scm")))
               (_file-path21466_
                (lambda ()
                  (let* ((_file21471_
                          (_file-name21465_
                           (symbol->string
                            (##structure-ref
                             _ctx21463_
                             '1
                             gx#expander-context::t
                             '#f))))
                         (_$e21473_ (gxc#current-compile-output-dir)))
                    (if _$e21473_
                        ((lambda (_outdir21476_)
                           (path-expand
                            _file21471_
                            (path-expand '"static" _outdir21476_)))
                         _$e21473_)
                        (path-expand _file21471_ '"static"))))))
        (let ((_path21468_ (_file-path21466_)))
          (begin
            (create-directory* (path-directory _path21468_))
            _path21468_)))))
  (define gxc#compile-exe-output-file
    (lambda (_ctx21450_ _opts21451_)
      (let ((_$e21453_ (pgetq 'output-file: _opts21451_)))
        (if _$e21453_
            (values _$e21453_)
            (let* ((_mod-str21456_
                    (symbol->string
                     (##structure-ref
                      _ctx21450_
                      '1
                      gx#expander-context::t
                      '#f)))
                   (_$e21458_ (string-rindex _mod-str21456_ '#\/)))
              (if _$e21458_
                  ((lambda (_ix21461_)
                     (substring
                      _mod-str21456_
                      (fx+ _ix21461_ '1)
                      (string-length _mod-str21456_)))
                   _$e21458_)
                  _mod-str21456_))))))
  (define gxc#static-module-name
    (lambda (_idstr21446_)
      (if (string? _idstr21446_)
          (let ((_strs21448_ (string-split _idstr21446_ '#\/)))
            (string-join _strs21448_ '"__"))
          (if (symbol? _idstr21446_)
              (gxc#static-module-name (symbol->string _idstr21446_))
              (error '"Bad module id" _idstr21446_))))))
