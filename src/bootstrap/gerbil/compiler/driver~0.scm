(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1710715080)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda () (inexact->exact (floor (time->seconds (current-time))))))
    (define gxc#compile-timestamp-nanos
      (lambda () (time->seconds (current-time))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_path159895_ _fun159896_)
        (with-output-to-file
         (let ((__tmp159989
                (let ()
                  (declare (not safe))
                  (cons _path159895_ gxc#scheme-file-settings))))
           (declare (not safe))
           (cons 'path: __tmp159989))
         _fun159896_)))
    (define gxc#+gerbil-gsc+ '#f)
    (define gxc#gerbil-gsc
      (lambda ()
        (if gxc#+gerbil-gsc+
            '#!void
            (set! gxc#+gerbil-gsc+
                  (getenv '"GERBIL_GSC" gxc#default-gerbil-gsc)))
        gxc#+gerbil-gsc+))
    (define gxc#+gerbil-gcc+ '#f)
    (define gxc#gerbil-gcc
      (lambda ()
        (if gxc#+gerbil-gcc+
            '#!void
            (set! gxc#+gerbil-gcc+
                  (getenv '"GERBIL_GCC" gxc#default-gerbil-gcc)))
        gxc#+gerbil-gcc+))
    (define gxc#+gerbil-ar+ '#f)
    (define gxc#gerbil-ar
      (lambda ()
        (if gxc#+gerbil-ar+
            '#!void
            (set! gxc#+gerbil-ar+ (getenv '"GERBIL_AR" gxc#default-gerbil-ar)))
        gxc#+gerbil-ar+))
    (define gxc#gerbil-rpath
      (lambda (_gerbil-libdir159890_)
        (string-append '"-Wl,-rpath=" _gerbil-libdir159890_)))
    (define gxc#gerbil-runtime-modules
      '("gerbil/runtime/gambit"
        "gerbil/runtime/util"
        "gerbil/runtime/table"
        "gerbil/runtime/control"
        "gerbil/runtime/system"
        "gerbil/runtime/c3"
        "gerbil/runtime/mop"
        "gerbil/runtime/mop-system-classes"
        "gerbil/runtime/error"
        "gerbil/runtime/interface"
        "gerbil/runtime/hash"
        "gerbil/runtime/thread"
        "gerbil/runtime/syntax"
        "gerbil/runtime/eval"
        "gerbil/runtime/repl"
        "gerbil/runtime/loader"
        "gerbil/runtime/init"
        "gerbil/runtime"))
    (define gxc#delete-directory*
      (lambda (_dir159888_) (delete-file-or-directory _dir159888_ '#t)))
    (define gxc#compile-module__%
      (lambda (_srcpath159862_ _opts159863_)
        (if (let () (declare (not safe)) (string? _srcpath159862_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath159862_)))
        (let ((_outdir159865_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _opts159863_)))
              (_invoke-gsc?159866_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _opts159863_)))
              (_gsc-options159867_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _opts159863_)))
              (_keep-scm?159868_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _opts159863_)))
              (_verbosity159869_
               (let () (declare (not safe)) (pgetq__0 'verbose: _opts159863_)))
              (_optimize159870_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'optimize: _opts159863_)))
              (_debug159871_
               (let () (declare (not safe)) (pgetq__0 'debug: _opts159863_)))
              (_gen-ssxi159872_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'generate-ssxi: _opts159863_))))
          (if _outdir159865_
              (let ((__tmp159990
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _outdir159865_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp159990))
              '#!void)
          (if _optimize159870_
              (let ((__tmp159991
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp159991))
              '#!void)
          (let ((__tmp159995
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _srcpath159862_))
                   (let ((__tmp159996
                          (let ((__tmp159997
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath159862_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp159997))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp159996))))
                (__tmp159994
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp159992
                 (let ((__tmp159993
                        (let ()
                          (declare (not safe))
                          (cons _srcpath159862_ '()))))
                   (declare (not safe))
                   (cons 'compile-module __tmp159993))))
            (declare (not safe))
            (call-with-parameters
             __tmp159995
             gxc#current-compile-output-dir
             _outdir159865_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?159866_
             gxc#current-compile-gsc-options
             _gsc-options159867_
             gxc#current-compile-keep-scm
             _keep-scm?159868_
             gxc#current-compile-verbose
             _verbosity159869_
             gxc#current-compile-optimize
             _optimize159870_
             gxc#current-compile-debug
             _debug159871_
             gxc#current-compile-generate-ssxi
             _gen-ssxi159872_
             gxc#current-compile-timestamp
             __tmp159994
             gxc#current-compile-context
             __tmp159992
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_srcpath159881_)
        (let ((_opts159883_ '()))
          (declare (not safe))
          (gxc#compile-module__% _srcpath159881_ _opts159883_))))
    (define gxc#compile-module
      (lambda _g159999_
        (let ((_g159998_ (let () (declare (not safe)) (##length _g159999_))))
          (cond ((let () (declare (not safe)) (##fx= _g159998_ 1))
                 (apply (lambda (_srcpath159881_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _srcpath159881_)))
                        _g159999_))
                ((let () (declare (not safe)) (##fx= _g159998_ 2))
                 (apply (lambda (_srcpath159885_ _opts159886_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _srcpath159885_
                             _opts159886_)))
                        _g159999_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g159999_))))))
    (define gxc#compile-exe__%
      (lambda (_srcpath159838_ _opts159839_)
        (if (let () (declare (not safe)) (string? _srcpath159838_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath159838_)))
        (let ((_outdir159841_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _opts159839_)))
              (_invoke-gsc?159842_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _opts159839_)))
              (_gsc-options159843_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _opts159839_)))
              (_keep-scm?159844_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _opts159839_)))
              (_verbosity159845_
               (let () (declare (not safe)) (pgetq__0 'verbose: _opts159839_)))
              (_debug159846_
               (let () (declare (not safe)) (pgetq__0 'debug: _opts159839_))))
          (if _outdir159841_
              (let ((__tmp160000
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _outdir159841_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp160000))
              '#!void)
          (let ((__tmp160004
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _srcpath159838_))
                   (let ((__tmp160005
                          (let ((__tmp160006
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath159838_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp160006))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp160005
                      _opts159839_))))
                (__tmp160003
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp160001
                 (let ((__tmp160002
                        (let ()
                          (declare (not safe))
                          (cons _srcpath159838_ '()))))
                   (declare (not safe))
                   (cons 'compile-exe __tmp160002))))
            (declare (not safe))
            (call-with-parameters
             __tmp160004
             gxc#current-compile-output-dir
             _outdir159841_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?159842_
             gxc#current-compile-gsc-options
             _gsc-options159843_
             gxc#current-compile-keep-scm
             _keep-scm?159844_
             gxc#current-compile-verbose
             _verbosity159845_
             gxc#current-compile-debug
             _debug159846_
             gxc#current-compile-timestamp
             __tmp160003
             gxc#current-compile-context
             __tmp160001
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_srcpath159854_)
        (let ((_opts159856_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _srcpath159854_ _opts159856_))))
    (define gxc#compile-exe
      (lambda _g160008_
        (let ((_g160007_ (let () (declare (not safe)) (##length _g160008_))))
          (cond ((let () (declare (not safe)) (##fx= _g160007_ 1))
                 (apply (lambda (_srcpath159854_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _srcpath159854_)))
                        _g160008_))
                ((let () (declare (not safe)) (##fx= _g160007_ 2))
                 (apply (lambda (_srcpath159858_ _opts159859_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__% _srcpath159858_ _opts159859_)))
                        _g160008_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g160008_))))))
    (define gxc#compile-executable-module
      (lambda (_ctx159834_ _opts159835_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _opts159835_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _ctx159834_
               _opts159835_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _ctx159834_
               _opts159835_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_ctx159717_ _opts159718_)
        (letrec ((_generate-stub159720_
                  (lambda (_builtin-modules159830_)
                    (let ((_mod-main159832_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx159717_ 'main))))
                      (write (let ((__tmp160009
                                    (let ((__tmp160010
                                           (let ((__tmp160011
                                                  (let ((__tmp160012
                                                         (let ((__tmp160014
                                                                (let ((__tmp160015
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _builtin-modules159830_ '()))))
                          (declare (not safe))
                          (cons 'quote __tmp160015)))
                       (__tmp160013
                        (let ()
                          (declare (not safe))
                          (cons 'libgerbil-builtin-modules '()))))
                   (declare (not safe))
                   (cons __tmp160014 __tmp160013))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'append
                                                          __tmp160012))))
                                             (declare (not safe))
                                             (cons __tmp160011 '()))))
                                      (declare (not safe))
                                      (cons 'builtin-modules __tmp160010))))
                               (declare (not safe))
                               (cons 'define __tmp160009)))
                      (write (let ((__tmp160016
                                    (let ((__tmp160055
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp160017
                                           (let ((__tmp160018
                                                  (let ((__tmp160019
                                                         (let ((__tmp160043
                                                                (let ((__tmp160044
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp160045
                                      (let ((__tmp160053
                                             (let ((__tmp160054
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'builtin-modules
                                                            '()))))
                                               (declare (not safe))
                                               (cons 'gerbil-runtime-init!
                                                     __tmp160054)))
                                            (__tmp160046
                                             (let ((__tmp160047
                                                    (let ((__tmp160048
                                                           (let ((__tmp160049
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp160050
                                 (let ((__tmp160051
                                        (let ((__tmp160052
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'command-line '()))))
                                          (declare (not safe))
                                          (cons __tmp160052 '()))))
                                   (declare (not safe))
                                   (cons 'cdr __tmp160051))))
                            (declare (not safe))
                            (cons __tmp160050 '()))))
                     (declare (not safe))
                     (cons _mod-main159832_ __tmp160049))))
              (declare (not safe))
              (cons 'apply __tmp160048))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp160047 '()))))
                                        (declare (not safe))
                                        (cons __tmp160053 __tmp160046))))
                                 (declare (not safe))
                                 (cons '() __tmp160045))))
                          (declare (not safe))
                          (cons 'lambda __tmp160044)))
                       (__tmp160020
                        (let ((__tmp160021
                               (let ((__tmp160022
                                      (let ((__tmp160023
                                             (let ((__tmp160034
                                                    (let ((__tmp160035
                                                           (let ((__tmp160036
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp160037
                                 (let ((__tmp160038
                                        (let ((__tmp160039
                                               (let ((__tmp160040
                                                      (let ((__tmp160041
                                                             (let ((__tmp160042
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'current-output-port '()))))
                       (declare (not safe))
                       (cons __tmp160042 '()))))
                (declare (not safe))
                (cons 'force-output __tmp160041))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp160040 '()))))
                                          (declare (not safe))
                                          (cons '() __tmp160039))))
                                   (declare (not safe))
                                   (cons 'lambda __tmp160038))))
                            (declare (not safe))
                            (cons __tmp160037 '()))))
                     (declare (not safe))
                     (cons 'void __tmp160036))))
              (declare (not safe))
              (cons 'with-catch __tmp160035)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp160024
                                                    (let ((__tmp160025
                                                           (let ((__tmp160026
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp160027
                                 (let ((__tmp160028
                                        (let ((__tmp160029
                                               (let ((__tmp160030
                                                      (let ((__tmp160031
                                                             (let ((__tmp160032
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp160033
                                   (let ()
                                     (declare (not safe))
                                     (cons 'current-error-port '()))))
                              (declare (not safe))
                              (cons __tmp160033 '()))))
                       (declare (not safe))
                       (cons 'force-output __tmp160032))))
                (declare (not safe))
                (cons __tmp160031 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp160030))))
                                          (declare (not safe))
                                          (cons 'lambda __tmp160029))))
                                   (declare (not safe))
                                   (cons __tmp160028 '()))))
                            (declare (not safe))
                            (cons 'void __tmp160027))))
                     (declare (not safe))
                     (cons 'with-catch __tmp160026))))
              (declare (not safe))
              (cons __tmp160025 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp160034
                                                     __tmp160024))))
                                        (declare (not safe))
                                        (cons '() __tmp160023))))
                                 (declare (not safe))
                                 (cons 'lambda __tmp160022))))
                          (declare (not safe))
                          (cons __tmp160021 '()))))
                   (declare (not safe))
                   (cons __tmp160043 __tmp160020))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'with-unwind-protect
                                                          __tmp160019))))
                                             (declare (not safe))
                                             (cons __tmp160018 '()))))
                                      (declare (not safe))
                                      (cons __tmp160055 __tmp160017))))
                               (declare (not safe))
                               (cons 'define __tmp160016)))
                      (write '(gerbil-main))
                      (newline))))
                 (_get-libgerbil-ld-opts159721_
                  (lambda (_libgerbil159828_)
                    (call-with-input-file
                     (string-append _libgerbil159828_ '".ldd")
                     read)))
                 (_replace-extension159722_
                  (lambda (_path159825_ _ext159826_)
                    (string-append
                     (path-strip-extension _path159825_)
                     _ext159826_)))
                 (_not-exclude-module?159723_
                  (lambda (_ctx159821_)
                    (let ((_id-str159823_
                           (symbol->string
                            (##structure-ref
                             _ctx159821_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp160057
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix?
                                    '"gerbil/"
                                    _id-str159823_))))
                            (declare (not safe))
                            (not __tmp160057))
                          (let ((__tmp160056
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"std/" _id-str159823_))))
                            (declare (not safe))
                            (not __tmp160056))
                          '#f))))
                 (_not-file-empty?159724_
                  (lambda (_path159819_)
                    (let ((__tmp160058
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _path159819_))))
                      (declare (not safe))
                      (not __tmp160058))))
                 (_compile-stub159725_
                  (lambda (_output-scm159732_ _output-bin159733_)
                    (let* ((_gerbil-home159735_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir159737_
                            (path-expand '"lib" _gerbil-home159735_))
                           (_gerbil-staticdir159739_
                            (path-expand '"static" _gerbil-libdir159737_))
                           (_gxlink159741_
                            (path-expand
                             '"libgerbil-link"
                             _gerbil-libdir159737_))
                           (_tmp159743_
                            (path-expand
                             (string-append
                              '"gxc."
                              (number->string
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-timestamp-nanos))))
                             '"/tmp"))
                           (_tmp-path159747_
                            (lambda (_f159745_)
                              (path-expand
                               (path-strip-directory _f159745_)
                               _tmp159743_)))
                           (_deps159749_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx159717_)))
                           (_deps159751_
                            (filter _not-exclude-module?159723_ _deps159749_))
                           (_src-deps-scm159753_
                            (map gxc#find-static-module-file _deps159751_))
                           (_src-deps-scm159755_
                            (filter _not-file-empty?159724_
                                    _src-deps-scm159753_))
                           (_src-deps-scm159757_
                            (map path-expand _src-deps-scm159755_))
                           (_deps-scm159759_
                            (map _tmp-path159747_ _src-deps-scm159757_))
                           (_deps-c159765_
                            (map (lambda (_g159760159762_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension159722_
                                      _g159760159762_
                                      '".c")))
                                 _deps-scm159759_))
                           (_deps-o159771_
                            (map (lambda (_g159766159768_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension159722_
                                      _g159766159768_
                                      '".o")))
                                 _deps-scm159759_))
                           (_src-bin-scm159773_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx159717_)))
                           (_src-bin-scm159775_
                            (path-expand _src-bin-scm159773_))
                           (_bin-scm159777_
                            (let ()
                              (declare (not safe))
                              (_tmp-path159747_ _src-bin-scm159775_)))
                           (_bin-c159779_
                            (let ()
                              (declare (not safe))
                              (_replace-extension159722_
                               _bin-scm159777_
                               '".c")))
                           (_bin-o159781_
                            (let ()
                              (declare (not safe))
                              (_replace-extension159722_
                               _bin-scm159777_
                               '".o")))
                           (_output-bin159783_
                            (path-expand _output-bin159733_))
                           (_output-scm159785_
                            (path-expand _output-scm159732_))
                           (_output-c159787_
                            (let ()
                              (declare (not safe))
                              (_replace-extension159722_
                               _output-scm159785_
                               '".c")))
                           (_output-o159789_
                            (let ()
                              (declare (not safe))
                              (_replace-extension159722_
                               _output-scm159785_
                               '".o")))
                           (_output_-c159791_
                            (let ()
                              (declare (not safe))
                              (_replace-extension159722_
                               _output-scm159785_
                               '"_.c")))
                           (_output_-o159793_
                            (let ()
                              (declare (not safe))
                              (_replace-extension159722_
                               _output-scm159785_
                               '"_.o")))
                           (_gsc-link-opts159795_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts159797_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts159799_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _gerbil-staticdir159739_)))
                           (_output-ld-opts159801_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_libgerbil.a159803_
                            (path-expand '"libgerbil.a" _gerbil-libdir159737_))
                           (_libgerbil.so159805_
                            (path-expand
                             '"libgerbil.so"
                             _gerbil-libdir159737_))
                           (_libgerbil-ld-opts159807_
                            (if (file-exists? _libgerbil.so159805_)
                                (let ()
                                  (declare (not safe))
                                  (_get-libgerbil-ld-opts159721_
                                   _libgerbil.so159805_))
                                (if (file-exists? _libgerbil.a159803_)
                                    (let ()
                                      (declare (not safe))
                                      (_get-libgerbil-ld-opts159721_
                                       _libgerbil.a159803_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"libgerbil does not exist"
                                       _libgerbil.a159803_
                                       _libgerbil.so159805_)))))
                           (_rpath159809_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir159737_)))
                           (_builtin-modules159813_
                            (map (lambda (_mod159811_)
                                   (symbol->string
                                    (##structure-ref
                                     _mod159811_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                                 (let ()
                                   (declare (not safe))
                                   (cons _ctx159717_ _deps159751_)))))
                      (let ((__tmp160059
                             (lambda ()
                               (let ((__tmp160060
                                      (path-directory _output-bin159783_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp160060)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp160059))
                      (let ((__tmp160061
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_generate-stub159720_
                                  _builtin-modules159813_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm159785_
                         __tmp160061))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp160062
                                   (lambda () (create-directory _tmp159743_))))
                              (declare (not safe))
                              (with-lock gxc#+driver-mutex+ __tmp160062))
                            (for-each
                             copy-file
                             _src-deps-scm159757_
                             _deps-scm159759_)
                            (copy-file _src-bin-scm159775_ _bin-scm159777_)
                            (let ((__tmp160070
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp160063
                                   (let ((__tmp160064
                                          (let ((__tmp160065
                                                 (let ((__tmp160066
                                                        (let ((__tmp160067
                                                               (let ((__tmp160068
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp160069
                                     (let ()
                                       (declare (not safe))
                                       (cons _output-scm159785_ '()))))
                                (declare (not safe))
                                (cons _bin-scm159777_ __tmp160069))))
                         (declare (not safe))
                         (foldr1 cons __tmp160068 _deps-scm159759_))))
                  (declare (not safe))
                  (foldr1 cons __tmp160067 _gsc-link-opts159795_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _gxlink159741_
                                                         __tmp160066))))
                                            (declare (not safe))
                                            (cons '"-l" __tmp160065))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp160064))))
                              (declare (not safe))
                              (gxc#invoke __tmp160070 __tmp160063))
                            (let ((__tmp160078
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp160071
                                   (let ((__tmp160072
                                          (let ((__tmp160073
                                                 (let ((__tmp160074
                                                        (let ((__tmp160075
                                                               (let ((__tmp160076
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp160077
                                     (let ()
                                       (declare (not safe))
                                       (cons _output_-c159791_ '()))))
                                (declare (not safe))
                                (cons _output-c159787_ __tmp160077))))
                         (declare (not safe))
                         (cons _bin-c159779_ __tmp160076))))
                  (declare (not safe))
                  (foldr1 cons __tmp160075 _deps-c159765_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp160074
                                                           _gsc-static-opts159799_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp160073
                                                    _gsc-cc-opts159797_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp160072))))
                              (declare (not safe))
                              (gxc#invoke __tmp160078 __tmp160071))
                            (let ((__tmp160091
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp160079
                                   (let ((__tmp160080
                                          (let ((__tmp160081
                                                 (let ((__tmp160082
                                                        (let ((__tmp160083
                                                               (let ((__tmp160084
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp160085
                                     (let ((__tmp160086
                                            (let ((__tmp160087
                                                   (let ((__tmp160088
                                                          (let ((__tmp160089
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp160090
                                (let ()
                                  (declare (not safe))
                                  (cons '"-lgambit"
                                        _libgerbil-ld-opts159807_))))
                           (declare (not safe))
                           (cons '"-lgerbil" __tmp160090))))
                    (declare (not safe))
                    (cons _gerbil-libdir159737_ __tmp160089))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"-L"
                                                           __tmp160088))))
                                              (declare (not safe))
                                              (cons _rpath159809_
                                                    __tmp160087))))
                                       (declare (not safe))
                                       (foldr1 cons
                                               __tmp160086
                                               _output-ld-opts159801_))))
                                (declare (not safe))
                                (cons _output_-o159793_ __tmp160085))))
                         (declare (not safe))
                         (cons _output-o159789_ __tmp160084))))
                  (declare (not safe))
                  (cons _bin-o159781_ __tmp160083))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp160082
                                                           _deps-o159771_))))
                                            (declare (not safe))
                                            (cons _output-bin159783_
                                                  __tmp160081))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp160080))))
                              (declare (not safe))
                              (gxc#invoke __tmp160091 __tmp160079))
                            (for-each
                             delete-file
                             (let ((__tmp160092
                                    (let ((__tmp160093
                                           (let ((__tmp160094
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _output_-o159793_
                                                          '()))))
                                             (declare (not safe))
                                             (cons _output-o159789_
                                                   __tmp160094))))
                                      (declare (not safe))
                                      (cons _output_-c159791_ __tmp160093))))
                               (declare (not safe))
                               (cons _output-c159787_ __tmp160092)))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _tmp159743_)))
                          '#!void)))))
          (let* ((_output-bin159727_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx159717_ _opts159718_)))
                 (_output-scm159729_
                  (string-append _output-bin159727_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub159725_ _output-scm159729_ _output-bin159727_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm159729_))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_ctx159542_ _opts159543_)
        (letrec ((_reset-declare159545_
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
                 (_generate-stub159546_
                  (lambda (_deps159708_)
                    (let ((_mod-main159710_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx159542_ 'main)))
                          (_reset-decl159711_
                           (let ()
                             (declare (not safe))
                             (_reset-declare159545_)))
                          (_user-decl159712_
                           (let ()
                             (declare (not safe))
                             (_user-declare159547_))))
                      (for-each
                       (lambda (_dep159714_)
                         (write '(##namespace ("")))
                         (newline)
                         (write _reset-decl159711_)
                         (newline)
                         (if _user-decl159712_
                             (begin (write _user-decl159712_) (newline))
                             '#!void)
                         (write (let ((__tmp160095
                                       (let ()
                                         (declare (not safe))
                                         (cons _dep159714_ '()))))
                                  (declare (not safe))
                                  (cons 'include __tmp160095)))
                         (newline))
                       _deps159708_)
                      (write (let ((__tmp160096
                                    (let ((__tmp160109
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp160097
                                           (let ((__tmp160105
                                                  (let ((__tmp160106
                                                         (let ((__tmp160107
                                                                (let ((__tmp160108
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let () (declare (not safe)) (cons '() '()))))
                          (declare (not safe))
                          (cons 'quote __tmp160108))))
                   (declare (not safe))
                   (cons __tmp160107 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp160106)))
                                                 (__tmp160098
                                                  (let ((__tmp160099
                                                         (let ((__tmp160100
                                                                (let ((__tmp160101
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp160102
                                      (let ((__tmp160103
                                             (let ((__tmp160104
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp160104 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp160103))))
                                 (declare (not safe))
                                 (cons __tmp160102 '()))))
                          (declare (not safe))
                          (cons _mod-main159710_ __tmp160101))))
                   (declare (not safe))
                   (cons 'apply __tmp160100))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp160099 '()))))
                                             (declare (not safe))
                                             (cons __tmp160105 __tmp160098))))
                                      (declare (not safe))
                                      (cons __tmp160109 __tmp160097))))
                               (declare (not safe))
                               (cons 'define __tmp160096)))
                      (write '(gerbil-main))
                      (newline))))
                 (_user-declare159547_
                  (lambda ()
                    (let* ((_gsc-opts159613_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _opts159543_)))
                           (_gsc-prelude159615_
                            (if _gsc-opts159613_
                                (member '"-prelude" _gsc-opts159613_)
                                '#f))
                           (_gsc-prelude159617_
                            (if _gsc-prelude159615_
                                (read (open-input-string
                                       (cadr _gsc-prelude159615_)))
                                '#f)))
                      (let _lp159620_ ((_rest159622_
                                        (let ()
                                          (declare (not safe))
                                          (cons _gsc-prelude159617_ '())))
                                       (_user-decls159623_ '()))
                        (let* ((_rest159624159632_ _rest159622_)
                               (_else159626159640_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _user-decls159623_))
                                      '#f
                                      (let ((__tmp160110
                                             (reverse _user-decls159623_)))
                                        (declare (not safe))
                                        (cons 'declare __tmp160110)))))
                               (_K159628159696_
                                (lambda (_rest159643_ _expr159644_)
                                  (let* ((_expr159645159657_ _expr159644_)
                                         (_else159648159665_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_lp159620_
                                               _rest159643_
                                               _user-decls159623_)))))
                                    (let ((_K159653159686_
                                           (lambda (_decls159684_)
                                             (let ((__tmp160111
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl1 cons
                                                              _user-decls159623_
                                                              _decls159684_))))
                                               (declare (not safe))
                                               (_lp159620_
                                                _rest159643_
                                                __tmp160111))))
                                          (_K159650159671_
                                           (lambda (_exprs159669_)
                                             (let ((__tmp160112
                                                    (append _exprs159669_
                                                            _rest159643_)))
                                               (declare (not safe))
                                               (_lp159620_
                                                __tmp160112
                                                _user-decls159623_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _expr159645159657_))
                                          (let ((_tl159655159691_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _expr159645159657_)))
                                                (_hd159654159689_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _expr159645159657_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd159654159689_
                                                         'declare))
                                                (let ((_decls159694_
                                                       _tl159655159691_))
                                                  (declare (not safe))
                                                  (_K159653159686_
                                                   _decls159694_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd159654159689_
                                                             'begin))
                                                    (let ((_exprs159679_
                                                           _tl159655159691_))
                                                      (declare (not safe))
                                                      (_K159650159671_
                                                       _exprs159679_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else159648159665_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_else159648159665_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest159624159632_))
                              (let ((_hd159629159699_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest159624159632_)))
                                    (_tl159630159701_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest159624159632_))))
                                (let* ((_expr159704_ _hd159629159699_)
                                       (_rest159706_ _tl159630159701_))
                                  (declare (not safe))
                                  (_K159628159696_ _rest159706_ _expr159704_)))
                              (let ()
                                (declare (not safe))
                                (_else159626159640_))))))))
                 (_compile-stub159548_
                  (lambda (_output-scm159555_ _output-bin159556_)
                    (let* ((_gerbil-home159558_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir159560_
                            (path-expand '"lib" _gerbil-home159558_))
                           (_runtime159562_
                            (map gxc#find-static-module-file
                                 gxc#gerbil-runtime-modules))
                           (_gambit-sharp159564_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _gerbil-home159558_))
                           (_include-gambit-sharp159566_
                            (string-append
                             '"(include \""
                             _gambit-sharp159564_
                             '"\")"))
                           (_bin-scm159568_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx159542_)))
                           (_deps159570_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx159542_)))
                           (_deps159572_
                            (map gxc#find-static-module-file _deps159570_))
                           (_deps159577_
                            (filter (lambda (_$obj159574_)
                                      (let ((__tmp160113
                                             (let ()
                                               (declare (not safe))
                                               (gxc#file-empty?
                                                _$obj159574_))))
                                        (declare (not safe))
                                        (not __tmp160113)))
                                    _deps159572_))
                           (_deps159581_
                            (filter (lambda (_f159579_)
                                      (let ((__tmp160114
                                             (member _f159579_
                                                     _runtime159562_)))
                                        (declare (not safe))
                                        (not __tmp160114)))
                                    _deps159577_))
                           (_output-base159583_
                            (string-append
                             (path-strip-extension _output-scm159555_)))
                           (_output-c159585_
                            (string-append _output-base159583_ '".c"))
                           (_output-o159587_
                            (string-append _output-base159583_ '".o"))
                           (_output-c_159589_
                            (string-append _output-base159583_ '"_.c"))
                           (_output-o_159591_
                            (string-append _output-base159583_ '"_.o"))
                           (_gsc-link-opts159593_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts159595_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts159597_
                            (let ((__tmp160115
                                   (path-expand
                                    '"static"
                                    _gerbil-libdir159560_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp160115)))
                           (_output-ld-opts159599_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_gsc-gx-macros159601_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (let ((__tmp160117
                                       (let ((__tmp160118
                                              (let ((__tmp160119
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _include-gambit-sharp159566_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '"-e" __tmp160119))))
                                         (declare (not safe))
                                         (cons '"(define-cond-expand-feature|enable-smp|)"
                                               __tmp160118))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp160117))
                                (let ((__tmp160116
                                       (let ()
                                         (declare (not safe))
                                         (cons _include-gambit-sharp159566_
                                               '()))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp160116))))
                           (_gsc-link-opts159603_
                            (append _gsc-link-opts159593_
                                    _gsc-gx-macros159601_))
                           (_rpath159605_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir159560_)))
                           (_default-ld-options159607_
                            (let ((__tmp160120
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-lm" '()))))
                              (declare (not safe))
                              (cons '"-ldl" __tmp160120))))
                      (let ((__tmp160121
                             (lambda ()
                               (let ((__tmp160122
                                      (path-directory _output-bin159556_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp160122)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp160121))
                      (let ((__tmp160123
                             (lambda ()
                               (let ((__tmp160124
                                      (let ((__tmp160125
                                             (let ((__tmp160126
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _bin-scm159568_
                                                            '()))))
                                               (declare (not safe))
                                               (foldr1 cons
                                                       __tmp160126
                                                       _deps159581_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp160125
                                                _runtime159562_))))
                                 (declare (not safe))
                                 (_generate-stub159546_ __tmp160124)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm159555_
                         __tmp160123))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp160132
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp160127
                                   (let ((__tmp160128
                                          (let ((__tmp160129
                                                 (let ((__tmp160130
                                                        (let ((__tmp160131
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-scm159555_ '()))))
                  (declare (not safe))
                  (foldr1 cons __tmp160131 _gsc-link-opts159603_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-c_159589_
                                                         __tmp160130))))
                                            (declare (not safe))
                                            (cons '"-o" __tmp160129))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp160128))))
                              (declare (not safe))
                              (gxc#invoke __tmp160132 __tmp160127))
                            (let ((__tmp160138
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp160133
                                   (let ((__tmp160134
                                          (let ((__tmp160135
                                                 (let ((__tmp160136
                                                        (let ((__tmp160137
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-c_159589_ '()))))
                  (declare (not safe))
                  (cons _output-c159585_ __tmp160137))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp160136
                                                           _gsc-static-opts159597_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp160135
                                                    _gsc-cc-opts159595_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp160134))))
                              (declare (not safe))
                              (gxc#invoke __tmp160138 __tmp160133))
                            (let ((__tmp160148
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp160139
                                   (let ((__tmp160140
                                          (let ((__tmp160141
                                                 (let ((__tmp160142
                                                        (let ((__tmp160143
                                                               (let ((__tmp160144
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp160145
                                     (let ((__tmp160146
                                            (let ((__tmp160147
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '"-lgambit"
                                                           _default-ld-options159607_))))
                                              (declare (not safe))
                                              (cons _gerbil-libdir159560_
                                                    __tmp160147))))
                                       (declare (not safe))
                                       (cons '"-L" __tmp160146))))
                                (declare (not safe))
                                (cons _rpath159605_ __tmp160145))))
                         (declare (not safe))
                         (foldr1 cons __tmp160144 _output-ld-opts159599_))))
                  (declare (not safe))
                  (cons _output-o_159591_ __tmp160143))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-o159587_
                                                         __tmp160142))))
                                            (declare (not safe))
                                            (cons _output-bin159556_
                                                  __tmp160141))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp160140))))
                              (declare (not safe))
                              (gxc#invoke __tmp160148 __tmp160139)))
                          '#!void)))))
          (let* ((_output-bin159550_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx159542_ _opts159543_)))
                 (_output-scm159552_
                  (string-append _output-bin159550_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub159548_ _output-scm159552_ _output-bin159550_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm159552_))))))
    (define gxc#find-export-binding
      (lambda (_ctx159492_ _id159493_)
        (let ((_$e159539_
               (let ((__tmp160150
                      (lambda (_e159494159496_)
                        (let* ((_g159498159508_ _e159494159496_)
                               (_else159500159516_ (lambda () '#f))
                               (_K159502159520_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _g159498159508_
                                 'gx#module-export::t))
                              (let* ((_e159503159523_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g159498159508_
                                         '1
                                         gx#module-export::t
                                         '#f)))
                                     (_e159504159526_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g159498159508_
                                         '2
                                         gx#module-export::t
                                         '#f)))
                                     (_e159505159529_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g159498159508_
                                         '3
                                         gx#module-export::t
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _e159505159529_ '0))
                                    (let ((_e159506159532_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _g159498159508_
                                              '4
                                              gx#module-export::t
                                              '#f))))
                                      (if ((lambda (_g159534159536_)
                                             (let ()
                                               (declare (not safe))
                                               (eq? _g159534159536_
                                                    _id159493_)))
                                           _e159506159532_)
                                          (let ()
                                            (declare (not safe))
                                            (_K159502159520_))
                                          (let ()
                                            (declare (not safe))
                                            (_else159500159516_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else159500159516_))))
                              (let ()
                                (declare (not safe))
                                (_else159500159516_))))))
                     (__tmp160149
                      (##structure-ref
                       _ctx159492_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (find __tmp160150 __tmp160149))))
          (if _$e159539_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _$e159539_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_ctx159484_ _id159485_)
        (let ((_$e159487_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _ctx159484_ _id159485_))))
          (if _$e159487_
              ((lambda (_bind159490_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _bind159490_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _id159485_)))
                 (##structure-ref _bind159490_ '1 gx#binding::t '#f))
               _$e159487_)
              (let ((__tmp160151
                     (##structure-ref
                      _ctx159484_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp160151
                 _id159485_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_ctx159371_)
        (letrec* ((_ht159373_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import-set-template159374_
                   (lambda (_in159436_ _phi159437_)
                     (let ((_iphi159439_
                            (fx+ _phi159437_
                                 (##direct-structure-ref
                                  _in159436_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_imports159440_
                            (##structure-ref
                             (##direct-structure-ref
                              _in159436_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _lp159442_ ((_rest159444_ _imports159440_)
                                        (_r159445_ '()))
                         (let* ((_rest159446159454_ _rest159444_)
                                (_else159448159462_ (lambda () _r159445_))
                                (_K159450159472_
                                 (lambda (_rest159465_ _in159466_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _in159466_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (fxzero? _iphi159439_))
                                           (let ((__tmp160158
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _in159466_
                                                          _r159445_))))
                                             (declare (not safe))
                                             (_lp159442_
                                              _rest159465_
                                              __tmp160158))
                                           (let ()
                                             (declare (not safe))
                                             (_lp159442_
                                              _rest159465_
                                              _r159445_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _in159466_
                                              'gx#module-import::t))
                                           (let ((_iphi159468_
                                                  (fx+ _phi159437_
                                                       (##direct-structure-ref
                                                        _in159466_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (fxzero? _iphi159468_))
                                                 (let ((__tmp160156
                                                        (let ((__tmp160157
                                                               (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in159466_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)))
                  (declare (not safe))
                  (cons __tmp160157 _r159445_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_lp159442_
                                                    _rest159465_
                                                    __tmp160156))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_lp159442_
                                                    _rest159465_
                                                    _r159445_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in159466_
                                                  'gx#import-set::t))
                                               (let ((_xphi159470_
                                                      (fx+ _iphi159439_
                                                           (##direct-structure-ref
                                                            _in159466_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (fxzero? _xphi159470_))
                                                     (let ((__tmp160154
                                                            (let ((__tmp160155
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##direct-structure-ref
                            _in159466_
                            '1
                            gx#import-set::t
                            '#f)))
                      (declare (not safe))
                      (cons __tmp160155 _r159445_))))
               (declare (not safe))
               (_lp159442_ _rest159465_ __tmp160154))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (fxpositive?
                                                          _xphi159470_)
                                                         (let ((__tmp160152
                                                                (let ((__tmp160153
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_import-set-template159374_
                                  _in159466_
                                  _iphi159439_))))
                          (declare (not safe))
                          (foldl1 cons _r159445_ __tmp160153))))
                   (declare (not safe))
                   (_lp159442_ _rest159465_ __tmp160152))
                 (let ()
                   (declare (not safe))
                   (_lp159442_ _rest159465_ _r159445_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp159442_
                                                  _rest159465_
                                                  _r159445_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest159446159454_))
                               (let ((_hd159451159475_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest159446159454_)))
                                     (_tl159452159477_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest159446159454_))))
                                 (let* ((_in159480_ _hd159451159475_)
                                        (_rest159482_ _tl159452159477_))
                                   (declare (not safe))
                                   (_K159450159472_ _rest159482_ _in159480_)))
                               (let ()
                                 (declare (not safe))
                                 (_else159448159462_))))))))
                  (_find-deps159375_
                   (lambda (_rest159382_ _deps159383_)
                     (let* ((_rest159384159392_ _rest159382_)
                            (_else159386159400_ (lambda () _deps159383_))
                            (_K159388159424_
                             (lambda (_rest159403_ _hd159404_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _hd159404_
                                      'gx#module-context::t))
                                   (let ((_id159406_
                                          (##structure-ref
                                           _hd159404_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_imports159407_
                                          (##structure-ref
                                           _hd159404_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (hash-get _ht159373_ _id159406_))
                                         (let ()
                                           (declare (not safe))
                                           (_find-deps159375_
                                            _rest159403_
                                            _deps159383_))
                                         (let ((_$e159409_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _hd159404_))))
                                           (if _$e159409_
                                               ((lambda (_pre159412_)
                                                  (let ((_xdeps159414_
                                                         (let ((__tmp160171
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _pre159412_ _imports159407_))))
                   (declare (not safe))
                   (_find-deps159375_ __tmp160171 _deps159383_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-put!
                                                       _ht159373_
                                                       _id159406_
                                                       _hd159404_))
                                                    (let ((__tmp160172
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd159404_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xdeps159414_))))
              (declare (not safe))
              (_find-deps159375_ _rest159403_ __tmp160172))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e159409_)
                                               (let ((_xdeps159416_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_find-deps159375_
                                                         _imports159407_
                                                         _deps159383_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (hash-put!
                                                    _ht159373_
                                                    _id159406_
                                                    _hd159404_))
                                                 (let ((__tmp160170
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _hd159404_
                                                                _xdeps159416_))))
                                                   (declare (not safe))
                                                   (_find-deps159375_
                                                    _rest159403_
                                                    __tmp160170)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _hd159404_
                                          'gx#prelude-context::t))
                                       (let ((_id159418_
                                              (##structure-ref
                                               _hd159404_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (hash-get
                                                _ht159373_
                                                _id159418_))
                                             (let ()
                                               (declare (not safe))
                                               (_find-deps159375_
                                                _rest159403_
                                                _deps159383_))
                                             (let ((_xdeps159420_
                                                    (let ((__tmp160168
                                                           (##structure-ref
                                                            _hd159404_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_find-deps159375_
                                                       __tmp160168
                                                       _deps159383_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (hash-get
                                                      _ht159373_
                                                      _id159418_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_find-deps159375_
                                                      _rest159403_
                                                      _xdeps159420_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (hash-put!
                                                        _ht159373_
                                                        _id159418_
                                                        _hd159404_))
                                                     (let ((__tmp160169
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd159404_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xdeps159420_))))
               (declare (not safe))
               (_find-deps159375_ _rest159403_ __tmp160169)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _hd159404_
                                              'gx#module-import::t))
                                           (if (let ((__tmp160167
                                                      (##direct-structure-ref
                                                       _hd159404_
                                                       '3
                                                       gx#module-import::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp160167))
                                               (let ((__tmp160165
                                                      (let ((__tmp160166
                                                             (##direct-structure-ref
                                                              _hd159404_
                                                              '1
                                                              gx#module-import::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp160166
                                                              _rest159403_))))
                                                 (declare (not safe))
                                                 (_find-deps159375_
                                                  __tmp160165
                                                  _deps159383_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_find-deps159375_
                                                  _rest159403_
                                                  _deps159383_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _hd159404_
                                                  'gx#module-export::t))
                                               (let ((__tmp160163
                                                      (let ((__tmp160164
                                                             (##direct-structure-ref
                                                              _hd159404_
                                                              '1
                                                              gx#module-export::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp160164
                                                              _rest159403_))))
                                                 (declare (not safe))
                                                 (_find-deps159375_
                                                  __tmp160163
                                                  _deps159383_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _hd159404_
                                                      'gx#import-set::t))
                                                   (if (let ((__tmp160162
                                                              (##direct-structure-ref
                                                               _hd159404_
                                                               '2
                                                               gx#import-set::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (fxzero? __tmp160162))
                                                       (let ((__tmp160160
                                                              (let ((__tmp160161
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##direct-structure-ref
                              _hd159404_
                              '1
                              gx#import-set::t
                              '#f)))
                        (declare (not safe))
                        (cons __tmp160161 _rest159403_))))
                 (declare (not safe))
                 (_find-deps159375_ __tmp160160 _deps159383_))
               (if (fxpositive?
                    (##direct-structure-ref
                     _hd159404_
                     '2
                     gx#import-set::t
                     '#f))
                   (let* ((_xdeps159422_
                           (let ()
                             (declare (not safe))
                             (_import-set-template159374_ _hd159404_ '0)))
                          (__tmp160159
                           (let ()
                             (declare (not safe))
                             (foldl1 cons _rest159403_ _xdeps159422_))))
                     (declare (not safe))
                     (_find-deps159375_ __tmp160159 _deps159383_))
                   (let ()
                     (declare (not safe))
                     (_find-deps159375_ _rest159403_ _deps159383_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _hd159404_))))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rest159384159392_))
                           (let ((_hd159389159427_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rest159384159392_)))
                                 (_tl159390159429_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rest159384159392_))))
                             (let* ((_hd159432_ _hd159389159427_)
                                    (_rest159434_ _tl159390159429_))
                               (declare (not safe))
                               (_K159388159424_ _rest159434_ _hd159432_)))
                           (let ()
                             (declare (not safe))
                             (_else159386159400_)))))))
          (reverse (filter gx#expander-context-id
                           (let ((__tmp160173
                                  (let ((_$e159377_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _ctx159371_))))
                                    (if _$e159377_
                                        ((lambda (_pre159380_)
                                           (let ((__tmp160174
                                                  (##structure-ref
                                                   _ctx159371_
                                                   '8
                                                   gx#module-context::t
                                                   '#f)))
                                             (declare (not safe))
                                             (cons _pre159380_ __tmp160174)))
                                         _$e159377_)
                                        (##structure-ref
                                         _ctx159371_
                                         '8
                                         gx#module-context::t
                                         '#f)))))
                             (declare (not safe))
                             (_find-deps159375_ __tmp160173 '())))))))
    (define gxc#find-static-module-file
      (lambda (_ctx159302_)
        (let* ((_context-id159304_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _ctx159302_
                       'gx#module-context::t))
                    (##structure-ref _ctx159302_ '1 gx#expander-context::t '#f)
                    (string->symbol _ctx159302_)))
               (_scm159306_
                (string-append
                 (let ()
                   (declare (not safe))
                   (gxc#static-module-name _context-id159304_))
                 '".scm"))
               (_dirs159308_ (let () (declare (not safe)) (load-path)))
               (_dirs159314_
                (let ((_user-libpath159310_ (getenv '"GERBIL_PATH" '#f)))
                  (if _user-libpath159310_
                      (let ((_user-libpath159312_
                             (path-expand '"lib" _user-libpath159310_)))
                        (if (member _user-libpath159312_ _dirs159308_)
                            _dirs159308_
                            (let ()
                              (declare (not safe))
                              (cons _user-libpath159312_ _dirs159308_))))
                      _dirs159308_)))
               (_dirs159323_
                (let ((_$e159316_ (gxc#current-compile-output-dir)))
                  (if _$e159316_
                      ((lambda (_g159318159320_)
                         (let ()
                           (declare (not safe))
                           (cons _g159318159320_ _dirs159314_)))
                       _$e159316_)
                      _dirs159314_)))
               (_dirs159329_
                (map (lambda (_g159324159326_)
                       (path-expand '"static" _g159324159326_))
                     _dirs159323_)))
          (let _lp159332_ ((_rest159334_ _dirs159329_))
            (let* ((_rest159335159343_ _rest159334_)
                   (_else159337159351_
                    (lambda ()
                      (let ((__tmp160175
                             (##structure-ref
                              _ctx159302_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp160175
                         _scm159306_))))
                   (_K159339159359_
                    (lambda (_rest159354_ _dir159355_)
                      (let ((_path159357_
                             (path-expand _scm159306_ _dir159355_)))
                        (if (file-exists? _path159357_)
                            _path159357_
                            (let ()
                              (declare (not safe))
                              (_lp159332_ _rest159354_)))))))
              (if (let () (declare (not safe)) (##pair? _rest159335159343_))
                  (let ((_hd159340159362_
                         (let ()
                           (declare (not safe))
                           (##car _rest159335159343_)))
                        (_tl159341159364_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest159335159343_))))
                    (let* ((_dir159367_ _hd159340159362_)
                           (_rest159369_ _tl159341159364_))
                      (declare (not safe))
                      (_K159339159359_ _rest159369_ _dir159367_)))
                  (let () (declare (not safe)) (_else159337159351_))))))))
    (define gxc#file-empty?
      (lambda (_path159300_)
        (let ((__tmp160176 (file-info-size (file-info _path159300_ '#t))))
          (declare (not safe))
          (zero? __tmp160176))))
    (define gxc#compile-top-module
      (lambda (_ctx159289_)
        (let ((__tmp160180
               (lambda ()
                 (let ((__tmp160181
                        (##structure-ref
                         _ctx159289_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp160181))
                 (if (gxc#current-compile-optimize)
                     (let ((__tmp160182
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _ctx159289_)))))
                       (declare (not safe))
                       (with-lock gxc#+driver-mutex+ __tmp160182))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _ctx159289_))
                 (if (let ((__tmp160185
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _ctx159289_))))
                       (declare (not safe))
                       (null? __tmp160185))
                     (let* ((_thr1159294_
                             (let ((__tmp160183
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _ctx159289_)))))
                               (declare (not safe))
                               (spawn __tmp160183)))
                            (_thr2159297_
                             (let ((__tmp160184
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code _ctx159289_)))))
                               (declare (not safe))
                               (spawn __tmp160184))))
                       (let () (declare (not safe)) (gxc#join! _thr1159294_))
                       (let () (declare (not safe)) (gxc#join! _thr2159297_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _ctx159289_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _ctx159289_))))
                 (if (and (gxc#current-compile-optimize)
                          (gxc#current-compile-generate-ssxi))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _ctx159289_))
                     '#!void)))
              (__tmp160179
               (let ((__obj159987
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj159987)
                 __obj159987))
              (__tmp160178 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp160177 (let () (declare (not safe)) (make-hash-table))))
          (declare (not safe))
          (call-with-parameters
           __tmp160180
           gx#current-expander-context
           _ctx159289_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp160179
           gxc#current-compile-runtime-sections
           __tmp160178
           gxc#current-compile-runtime-names
           __tmp160177))))
    (define gxc#collect-bindings
      (lambda (_ctx159287_)
        (let ((__tmp160186
               (##structure-ref _ctx159287_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp160186))))
    (define gxc#compile-runtime-code
      (lambda (_ctx159233_)
        (letrec ((_compile1159235_
                  (lambda (_ctx159276_)
                    (let* ((_code159278_
                            (##structure-ref
                             _ctx159276_
                             '11
                             gx#module-context::t
                             '#f))
                           (_rt159282_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _code159278_))
                                (let ((_idstr159280_
                                       (let ((__tmp160187
                                              (##structure-ref
                                               _ctx159276_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp160187))))
                                  (string-append _idstr159280_ '"~0"))
                                '#f)))
                      (if _rt159282_
                          (begin
                            (let ((__tmp160188
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-put! __tmp160188 _ctx159276_ _rt159282_))
                            (let ()
                              (declare (not safe))
                              (_generate-runtime-code159237_
                               _ctx159276_
                               _code159278_)))
                          (let ((_path159285_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _ctx159276_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file
                             _path159285_
                             void)))
                      (let ()
                        (declare (not safe))
                        (_generate-loader-code159238_
                         _ctx159276_
                         _code159278_
                         _rt159282_)))))
                 (_context-timestamp159236_
                  (lambda (_ctx159274_)
                    (string->symbol
                     (string-append
                      (symbol->string
                       (##structure-ref
                        _ctx159274_
                        '1
                        gx#expander-context::t
                        '#f))
                      '"::timestamp"))))
                 (_generate-runtime-code159237_
                  (lambda (_ctx159256_ _code159257_)
                    (let* ((_lifts159259_
                            (let () (declare (not safe)) (box '())))
                           (_runtime-code159262_
                            (let ((__tmp160191
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _code159257_))))
                                  (__tmp160190
                                   (let ()
                                     (declare (not safe))
                                     (make-hash-table-eq)))
                                  (__tmp160189
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp160191
                               gx#current-expander-context
                               _ctx159256_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _lifts159259_
                               gxc#current-compile-marks
                               __tmp160190
                               gxc#current-compile-identifiers
                               __tmp160189)))
                           (_runtime-code159264_
                            (if (let ((__tmp160195 (unbox _lifts159259_)))
                                  (declare (not safe))
                                  (null? __tmp160195))
                                _runtime-code159262_
                                (let ((__tmp160192
                                       (let ((__tmp160194
                                              (let ()
                                                (declare (not safe))
                                                (cons _runtime-code159262_
                                                      '())))
                                             (__tmp160193
                                              (reverse (unbox _lifts159259_))))
                                         (declare (not safe))
                                         (foldr1 cons
                                                 __tmp160194
                                                 __tmp160193))))
                                  (declare (not safe))
                                  (cons 'begin __tmp160192))))
                           (_runtime-code159266_
                            (let ((__tmp160196
                                   (let ((__tmp160198
                                          (let ((__tmp160199
                                                 (let ((__tmp160202
                                                        (let ()
                                                          (declare (not safe))
                                                          (_context-timestamp159236_
                                                           _ctx159256_)))
                                                       (__tmp160200
                                                        (let ((__tmp160201
                                                               (gxc#current-compile-timestamp)))
                                                          (declare (not safe))
                                                          (cons __tmp160201
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp160202
                                                         __tmp160200))))
                                            (declare (not safe))
                                            (cons 'define __tmp160199)))
                                         (__tmp160197
                                          (let ()
                                            (declare (not safe))
                                            (cons _runtime-code159264_ '()))))
                                     (declare (not safe))
                                     (cons __tmp160198 __tmp160197))))
                              (declare (not safe))
                              (cons 'begin __tmp160196)))
                           (_scm0159268_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx159256_
                               '0
                               '".scm"))))
                      (let ((_scms159271_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file _ctx159256_))))
                        (let ((__tmp160203
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _scm0159268_
                                    _runtime-code159266_)))))
                          (declare (not safe))
                          (call-with-parameters
                           __tmp160203
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (file-exists? _scms159271_)
                            (delete-file _scms159271_)
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _scm0159268_
                           '" => "
                           _scms159271_))
                        (copy-file _scm0159268_ _scms159271_)
                        (if (gxc#current-compile-keep-scm)
                            '#!void
                            (delete-file _scm0159268_))))))
                 (_generate-loader-code159238_
                  (lambda (_ctx159245_ _code159246_ _rt159247_)
                    (let* ((_loader-code159250_
                            (let ((__tmp160204
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _code159246_)))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp160204
                               gx#current-expander-context
                               _ctx159245_)))
                           (_loader-code159252_
                            (if _rt159247_
                                (let ((__tmp160205
                                       (let ((__tmp160206
                                              (let ((__tmp160207
                                                     (let ((__tmp160208
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _rt159247_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons 'load-module __tmp160208))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp160207 '()))))
                                         (declare (not safe))
                                         (cons _loader-code159250_
                                               __tmp160206))))
                                  (declare (not safe))
                                  (cons 'begin __tmp160205))
                                _loader-code159250_)))
                      (let ((__tmp160209
                             (lambda ()
                               (let ((__tmp160210
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx159245_
                                         '#f
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp160210
                                  _loader-code159252_)))))
                        (declare (not safe))
                        (call-with-parameters
                         __tmp160209
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let ((_all-modules159240_
                 (let ((__tmp160211
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _ctx159233_))))
                   (declare (not safe))
                   (cons _ctx159233_ __tmp160211))))
            (for-each
             (lambda (_ctx159242_)
               (let ((__tmp160212
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_compile1159235_ _ctx159242_)))))
                 (declare (not safe))
                 (call-with-parameters
                  __tmp160212
                  gxc#current-compile-decls
                  '())))
             _all-modules159240_)))))
    (define gxc#compile-meta-code
      (lambda (_ctx159130_)
        (letrec ((_compile-ssi159132_
                  (lambda (_code159203_)
                    (let* ((_path159205_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx159130_
                               '#f
                               '".ssi")))
                           (_prelude159216_
                            (let* ((_super159207_
                                    (##structure-ref
                                     _ctx159130_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_$e159209_
                                    (##structure-ref
                                     _super159207_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _$e159209_
                                  ((lambda (_g159211159213_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1 '":" _g159211159213_)))
                                   _$e159209_)
                                  ':<root>)))
                           (_ns159218_
                            (##structure-ref
                             _ctx159130_
                             '6
                             gx#module-context::t
                             '#f))
                           (_idstr159220_
                            (symbol->string
                             (##structure-ref
                              _ctx159130_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_pkg159227_
                            (let ((_$e159222_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _idstr159220_ '#\/))))
                              (if _$e159222_
                                  ((lambda (_x159225_)
                                     (string->symbol
                                      (substring _idstr159220_ '0 _x159225_)))
                                   _$e159222_)
                                  '#f)))
                           (_rt159229_
                            (let ((__tmp160213
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-get __tmp160213 _ctx159130_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _path159205_))
                      (let ((__tmp160214
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln '"prelude:" '" " _prelude159216_))
                               (if _pkg159227_
                                   (let ()
                                     (declare (not safe))
                                     (displayln '"package:" '" " _pkg159227_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _ns159218_))
                               (newline)
                               (pretty-print _code159203_)
                               (if _rt159229_
                                   (pretty-print
                                    (let ((__tmp160215
                                           (let ((__tmp160219
                                                  (let ((__tmp160220
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp160220)))
                                                 (__tmp160216
                                                  (let ((__tmp160217
                                                         (let ((__tmp160218
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _rt159229_ '()))))
                   (declare (not safe))
                   (cons '%#quote __tmp160218))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp160217 '()))))
                                             (declare (not safe))
                                             (cons __tmp160219 __tmp160216))))
                                      (declare (not safe))
                                      (cons '%#call __tmp160215)))
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _path159205_
                         __tmp160214)))))
                 (_compile-phi159133_
                  (lambda (_part159143_)
                    (let* ((_part159144159157_ _part159143_)
                           (_E159146159161_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _part159144159157_))))
                           (_K159147159172_
                            (lambda (_code159164_
                                     _n159165_
                                     _phi159166_
                                     _phi-ctx159167_)
                              (let* ((_code159170_
                                      (let ((__tmp160221
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _code159164_)))))
                                        (declare (not safe))
                                        (call-with-parameters
                                         __tmp160221
                                         gx#current-expander-context
                                         _phi-ctx159167_
                                         gx#current-expander-phi
                                         _phi159166_)))
                                     (__tmp160222
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx159130_
                                         _n159165_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp160222
                                 _code159170_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _part159144159157_))
                          (let ((_hd159148159175_
                                 (let ()
                                   (declare (not safe))
                                   (##car _part159144159157_)))
                                (_tl159149159177_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _part159144159157_))))
                            (let ((_phi-ctx159180_ _hd159148159175_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl159149159177_))
                                  (let ((_hd159150159182_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl159149159177_)))
                                        (_tl159151159184_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl159149159177_))))
                                    (let ((_phi159187_ _hd159150159182_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl159151159184_))
                                          (let ((_hd159152159189_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl159151159184_)))
                                                (_tl159153159191_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl159151159184_))))
                                            (let ((_n159194_ _hd159152159189_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl159153159191_))
                                                  (let ((_hd159154159196_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl159153159191_)))
                                                        (_tl159155159198_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl159153159191_))))
                                                    (let ((_code159201_
                                                           _hd159154159196_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _tl159155159198_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K159147159172_
                                                             _code159201_
                                                             _n159194_
                                                             _phi159187_
                                                             _phi-ctx159180_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_E159146159161_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E159146159161_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E159146159161_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E159146159161_)))))
                          (let () (declare (not safe)) (_E159146159161_)))))))
          (let ((_g160223_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _ctx159130_))))
            (begin
              (let ((_g160224_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g160223_)
                           (##vector-length _g160223_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g160224_ 2)))
                    (error "Context expects 2 values" _g160224_)))
              (let ((_ssi-code159135_
                     (let () (declare (not safe)) (##vector-ref _g160223_ 0)))
                    (_phi-code159136_
                     (let () (declare (not safe)) (##vector-ref _g160223_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_compile-ssi159132_ _ssi-code159135_))
                  (let ((_threads159141_
                         (map (lambda (_code159138_)
                                (let ((__tmp160225
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_compile-phi159133_
                                            _code159138_)))))
                                  (declare (not safe))
                                  (spawn __tmp160225)))
                              _phi-code159136_)))
                    (for-each gxc#join! _threads159141_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_ctx159113_)
        (let* ((_path159115_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _ctx159113_ '#f '".ssxi.ss")))
               (_code159117_
                (let ((__tmp160226
                       (##structure-ref
                        _ctx159113_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp160226)))
               (_idstr159119_
                (symbol->string
                 (##structure-ref _ctx159113_ '1 gx#expander-context::t '#f)))
               (_pkg159126_
                (let ((_$e159121_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _idstr159119_ '#\/))))
                  (if _$e159121_
                      ((lambda (_x159124_)
                         (string->symbol
                          (substring _idstr159119_ '0 _x159124_)))
                       _$e159121_)
                      '#f))))
          (let () (declare (not safe)) (gxc#verbose '"compile " _path159115_))
          (let ((__tmp160227
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _pkg159126_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _pkg159126_))
                       '#!void)
                   (newline)
                   (pretty-print _code159117_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _path159115_ __tmp160227)))))
    (define gxc#generate-meta-code
      (lambda (_ctx159106_)
        (let* ((_state159108_
                (let ((__obj159988
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj159988 _ctx159106_)
                  __obj159988))
               (_ssi-code159110_
                (let ((__tmp160228
                       (##structure-ref
                        _ctx159106_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta
                   __tmp160228
                   'state:
                   _state159108_))))
          (values _ssi-code159110_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _state159108_))))))
    (define gxc#generate-runtime-phi
      (lambda (_stx159099_)
        (let ((_lifts159101_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp160231
                 (lambda ()
                   (let ((_code159104_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _stx159099_))))
                     (if (let ((__tmp160235 (unbox _lifts159101_)))
                           (declare (not safe))
                           (null? __tmp160235))
                         _code159104_
                         (let ((__tmp160232
                                (let ((__tmp160234
                                       (let ()
                                         (declare (not safe))
                                         (cons _code159104_ '())))
                                      (__tmp160233
                                       (reverse (unbox _lifts159101_))))
                                  (declare (not safe))
                                  (foldr1 cons __tmp160234 __tmp160233))))
                           (declare (not safe))
                           (cons 'begin __tmp160232))))))
                (__tmp160230
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp160229
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (call-with-parameters
             __tmp160231
             gxc#current-compile-lift
             _lifts159101_
             gxc#current-compile-marks
             __tmp160230
             gxc#current-compile-identifiers
             __tmp160229)))))
    (define gxc#lift-nested-modules
      (lambda (_ctx159095_)
        (let ((_modules159097_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp160236
                 (##structure-ref _ctx159095_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp160236 'modules: _modules159097_))
          (reverse (unbox _modules159097_)))))
    (define gxc#compile-scm-file__%
      (lambda (_path159078_ _code159079_ _phi?159080_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _path159078_))
        (let ((__tmp160237
               (lambda ()
                 (pretty-print
                  (let ((__tmp160238
                         (let ((__tmp160245
                                (let ()
                                  (declare (not safe))
                                  (cons 'block '())))
                               (__tmp160239
                                (let ((__tmp160244
                                       (let ()
                                         (declare (not safe))
                                         (cons 'standard-bindings '())))
                                      (__tmp160240
                                       (let ((__tmp160243
                                              (let ()
                                                (declare (not safe))
                                                (cons 'extended-bindings '())))
                                             (__tmp160241
                                              (let ((__tmp160242
                                                     (if _phi?159080_
                                                         '((inlining-limit
                                                            200))
                                                         '())))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        '()
                                                        __tmp160242))))
                                         (declare (not safe))
                                         (cons __tmp160243 __tmp160241))))
                                  (declare (not safe))
                                  (cons __tmp160244 __tmp160240))))
                           (declare (not safe))
                           (cons __tmp160245 __tmp160239))))
                    (declare (not safe))
                    (cons 'declare __tmp160238)))
                 (pretty-print _code159079_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _path159078_ __tmp160237))
        (if (gxc#current-compile-invoke-gsc)
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _path159078_ _phi?159080_))
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path159078_))))
    (define gxc#compile-scm-file__0
      (lambda (_path159086_ _code159087_)
        (let ((_phi?159089_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__% _path159086_ _code159087_ _phi?159089_))))
    (define gxc#compile-scm-file
      (lambda _g160247_
        (let ((_g160246_ (let () (declare (not safe)) (##length _g160247_))))
          (cond ((let () (declare (not safe)) (##fx= _g160246_ 2))
                 (apply (lambda (_path159086_ _code159087_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _path159086_
                             _code159087_)))
                        _g160247_))
                ((let () (declare (not safe)) (##fx= _g160246_ 3))
                 (apply (lambda (_path159091_ _code159092_ _phi?159093_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _path159091_
                             _code159092_
                             _phi?159093_)))
                        _g160247_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g160247_))))))
    (define gxc#gsc-link-options__%
      (lambda (_phi?158979_)
        (let _lp158981_ ((_rest158983_ (gxc#current-compile-gsc-options))
                         (_opts158984_ '()))
          (let* ((_rest158985159005_ _rest158983_)
                 (_else158989159013_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?158979_))
                             (gxc#current-compile-debug))
                        (let ((__tmp160248
                               (let ((__tmp160249 (reverse _opts158984_)))
                                 (declare (not safe))
                                 (cons '"-track-scheme" __tmp160249))))
                          (declare (not safe))
                          (cons '"-debug-source" __tmp160248))
                        (reverse _opts158984_)))))
            (let ((_K158999159056_
                   (lambda (_rest159054_)
                     (let ()
                       (declare (not safe))
                       (_lp158981_ _rest159054_ _opts158984_))))
                  (_K158994159038_
                   (lambda (_rest159036_)
                     (let ()
                       (declare (not safe))
                       (_lp158981_ _rest159036_ _opts158984_))))
                  (_K158991159020_
                   (lambda (_rest159017_ _opt159018_)
                     (let ((__tmp160250
                            (let ()
                              (declare (not safe))
                              (cons _opt159018_ _opts158984_))))
                       (declare (not safe))
                       (_lp158981_ _rest159017_ __tmp160250)))))
              (if (let () (declare (not safe)) (##pair? _rest158985159005_))
                  (let ((_tl159001159061_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest158985159005_)))
                        (_hd159000159059_
                         (let ()
                           (declare (not safe))
                           (##car _rest158985159005_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd159000159059_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl159001159061_))
                            (let* ((_tl159003159064_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl159001159061_)))
                                   (_rest159067_ _tl159003159064_))
                              (declare (not safe))
                              (_K158999159056_ _rest159067_))
                            (let ((_opt159028_ _hd159000159059_)
                                  (_rest159030_ _tl159001159061_))
                              (let ()
                                (declare (not safe))
                                (_K158991159020_ _rest159030_ _opt159028_))))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd159000159059_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl159001159061_))
                                (let* ((_tl158998159046_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl159001159061_)))
                                       (_rest159049_ _tl158998159046_))
                                  (declare (not safe))
                                  (_K158994159038_ _rest159049_))
                                (let ((_opt159028_ _hd159000159059_)
                                      (_rest159030_ _tl159001159061_))
                                  (let ()
                                    (declare (not safe))
                                    (_K158991159020_
                                     _rest159030_
                                     _opt159028_))))
                            (let ((_opt159028_ _hd159000159059_)
                                  (_rest159030_ _tl159001159061_))
                              (let ()
                                (declare (not safe))
                                (_K158991159020_ _rest159030_ _opt159028_))))))
                  (let () (declare (not safe)) (_else158989159013_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_phi?159073_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _phi?159073_))))
    (define gxc#gsc-link-options
      (lambda _g160252_
        (let ((_g160251_ (let () (declare (not safe)) (##length _g160252_))))
          (cond ((let () (declare (not safe)) (##fx= _g160251_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g160252_))
                ((let () (declare (not safe)) (##fx= _g160251_ 1))
                 (apply (lambda (_phi?159075_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _phi?159075_)))
                        _g160252_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g160252_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_phi?158880_)
        (let _lp158882_ ((_rest158884_ (gxc#current-compile-gsc-options))
                         (_opts158885_ '()))
          (let* ((_rest158886158906_ _rest158884_)
                 (_else158890158914_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?158880_))
                             (gxc#current-compile-debug))
                        (let ((__tmp160253
                               (let ((__tmp160254 (reverse _opts158885_)))
                                 (declare (not safe))
                                 (cons '"-g" __tmp160254))))
                          (declare (not safe))
                          (cons '"-cc-options" __tmp160253))
                        (reverse _opts158885_)))))
            (let ((_K158900158953_
                   (lambda (_rest158950_ _opt158951_)
                     (let ((__tmp160255
                            (let ((__tmp160256
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _opts158885_))))
                              (declare (not safe))
                              (cons _opt158951_ __tmp160256))))
                       (declare (not safe))
                       (_lp158882_ _rest158950_ __tmp160255))))
                  (_K158895158934_
                   (lambda (_rest158932_)
                     (let ()
                       (declare (not safe))
                       (_lp158882_ _rest158932_ _opts158885_))))
                  (_K158892158920_
                   (lambda (_rest158918_)
                     (let ()
                       (declare (not safe))
                       (_lp158882_ _rest158918_ _opts158885_)))))
              (if (let () (declare (not safe)) (##pair? _rest158886158906_))
                  (let ((_tl158902158958_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest158886158906_)))
                        (_hd158901158956_
                         (let ()
                           (declare (not safe))
                           (##car _rest158886158906_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd158901158956_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl158902158958_))
                            (let ((_tl158904158963_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl158902158958_)))
                                  (_hd158903158961_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl158902158958_))))
                              (let ((_opt158966_ _hd158903158961_)
                                    (_rest158968_ _tl158904158963_))
                                (let ()
                                  (declare (not safe))
                                  (_K158900158953_ _rest158968_ _opt158966_))))
                            (let ((_rest158926_ _tl158902158958_))
                              (declare (not safe))
                              (_K158892158920_ _rest158926_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd158901158956_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl158902158958_))
                                (let* ((_tl158899158942_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl158902158958_)))
                                       (_rest158945_ _tl158899158942_))
                                  (declare (not safe))
                                  (_K158895158934_ _rest158945_))
                                (let ((_rest158926_ _tl158902158958_))
                                  (declare (not safe))
                                  (_K158892158920_ _rest158926_)))
                            (let ((_rest158926_ _tl158902158958_))
                              (declare (not safe))
                              (_K158892158920_ _rest158926_)))))
                  (let () (declare (not safe)) (_else158890158914_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_phi?158974_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _phi?158974_))))
    (define gxc#gsc-cc-options
      (lambda _g160258_
        (let ((_g160257_ (let () (declare (not safe)) (##length _g160258_))))
          (cond ((let () (declare (not safe)) (##fx= _g160257_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g160258_))
                ((let () (declare (not safe)) (##fx= _g160257_ 1))
                 (apply (lambda (_phi?158976_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _phi?158976_)))
                        _g160258_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g160258_))))))
    (define gxc#gsc-static-include-options
      (lambda (_staticdir158875_)
        (let* ((_user-staticdir158877_
                (path-expand
                 (path-expand
                  '"lib/static"
                  (let () (declare (not safe)) (gerbil-path)))))
               (__tmp160259
                (let ((__tmp160260
                       (string-append
                        '"-I "
                        _staticdir158875_
                        '" -I "
                        _user-staticdir158877_)))
                  (declare (not safe))
                  (cons __tmp160260 '()))))
          (declare (not safe))
          (cons '"-cc-options" __tmp160259))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _lp158787_ ((_rest158789_ (gxc#current-compile-gsc-options))
                         (_opts158790_ '()))
          (let* ((_rest158791158811_ _rest158789_)
                 (_else158795158819_ (lambda () _opts158790_)))
            (let ((_K158805158862_
                   (lambda (_rest158860_)
                     (let ()
                       (declare (not safe))
                       (_lp158787_ _rest158860_ _opts158790_))))
                  (_K158800158840_
                   (lambda (_rest158837_ _opt158838_)
                     (let ((__tmp160261
                            (append _opts158790_
                                    (filter gxc#not-string-empty?
                                            (let ()
                                              (declare (not safe))
                                              (string-split
                                               _opt158838_
                                               '#\space))))))
                       (declare (not safe))
                       (_lp158787_ _rest158837_ __tmp160261))))
                  (_K158797158825_
                   (lambda (_rest158823_)
                     (let ()
                       (declare (not safe))
                       (_lp158787_ _rest158823_ _opts158790_)))))
              (if (let () (declare (not safe)) (##pair? _rest158791158811_))
                  (let ((_tl158807158867_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest158791158811_)))
                        (_hd158806158865_
                         (let ()
                           (declare (not safe))
                           (##car _rest158791158811_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd158806158865_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl158807158867_))
                            (let* ((_tl158809158870_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl158807158867_)))
                                   (_rest158873_ _tl158809158870_))
                              (declare (not safe))
                              (_K158805158862_ _rest158873_))
                            (let ((_rest158831_ _tl158807158867_))
                              (declare (not safe))
                              (_K158797158825_ _rest158831_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd158806158865_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl158807158867_))
                                (let ((_tl158804158850_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl158807158867_)))
                                      (_hd158803158848_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl158807158867_))))
                                  (let ((_opt158853_ _hd158803158848_)
                                        (_rest158855_ _tl158804158850_))
                                    (let ()
                                      (declare (not safe))
                                      (_K158800158840_
                                       _rest158855_
                                       _opt158853_))))
                                (let ((_rest158831_ _tl158807158867_))
                                  (declare (not safe))
                                  (_K158797158825_ _rest158831_)))
                            (let ((_rest158831_ _tl158807158867_))
                              (declare (not safe))
                              (_K158797158825_ _rest158831_)))))
                  (let () (declare (not safe)) (_else158795158819_))))))))
    (define gxc#not-string-empty?
      (lambda (_str158784_)
        (let ((__tmp160262
               (let () (declare (not safe)) (string-empty? _str158784_))))
          (declare (not safe))
          (not __tmp160262))))
    (define gxc#gsc-compile-file
      (lambda (_path158752_ _phi?158753_)
        (letrec ((_gsc-link-path158755_
                  (lambda (_base-path158776_)
                    (let _lp158778_ ((_n158780_ '1))
                      (let ((_path158782_
                             (string-append
                              _base-path158776_
                              '".o"
                              (number->string _n158780_))))
                        (if (file-exists? _path158782_)
                            (let ((__tmp160263
                                   (let ()
                                     (declare (not safe))
                                     (+ _n158780_ '1))))
                              (declare (not safe))
                              (_lp158778_ __tmp160263))
                            _path158782_))))))
          (let* ((_base-path158757_ (path-strip-extension _path158752_))
                 (_path-c158759_ (string-append _base-path158757_ '".c"))
                 (_path-o158761_ (string-append _base-path158757_ '".o"))
                 (_link-path158763_
                  (let ()
                    (declare (not safe))
                    (_gsc-link-path158755_ _base-path158757_)))
                 (_link-path-c158765_ (string-append _link-path158763_ '".c"))
                 (_link-path-o158767_ (string-append _link-path158763_ '".o"))
                 (_gsc-link-opts158769_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _phi?158753_)))
                 (_gsc-cc-opts158771_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _phi?158753_)))
                 (_gcc-ld-opts158773_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp160270 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp160264
                   (let ((__tmp160265
                          (let ((__tmp160266
                                 (let ((__tmp160267
                                        (let ((__tmp160268
                                               (let ((__tmp160269
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _path158752_
                                                              '()))))
                                                 (declare (not safe))
                                                 (foldr1 cons
                                                         __tmp160269
                                                         _gsc-link-opts158769_))))
                                          (declare (not safe))
                                          (cons _link-path-c158765_
                                                __tmp160268))))
                                   (declare (not safe))
                                   (cons '"-o" __tmp160267))))
                            (declare (not safe))
                            (cons '"-flat" __tmp160266))))
                     (declare (not safe))
                     (cons '"-link" __tmp160265))))
              (declare (not safe))
              (gxc#invoke __tmp160270 __tmp160264 'stdout-redirection: '#t))
            (let ((__tmp160277 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp160271
                   (let ((__tmp160272
                          (let ((__tmp160273
                                 (let ((__tmp160274
                                        (let ((__tmp160275
                                               (let ((__tmp160276
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _link-path-c158765_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _path-c158759_
                                                       __tmp160276))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp160275
                                                  _gsc-cc-opts158771_))))
                                   (declare (not safe))
                                   (cons '"-D___DYNAMIC" __tmp160274))))
                            (declare (not safe))
                            (cons '"-cc-options" __tmp160273))))
                     (declare (not safe))
                     (cons '"-obj" __tmp160272))))
              (declare (not safe))
              (gxc#invoke __tmp160277 __tmp160271 'stdout-redirection: '#t))
            (let ((__tmp160283 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp160278
                   (let ((__tmp160279
                          (let ((__tmp160280
                                 (let ((__tmp160281
                                        (let ((__tmp160282
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _link-path-o158767_
                                                       _gcc-ld-opts158773_))))
                                          (declare (not safe))
                                          (cons _path-o158761_ __tmp160282))))
                                   (declare (not safe))
                                   (cons _link-path158763_ __tmp160281))))
                            (declare (not safe))
                            (cons '"-o" __tmp160280))))
                     (declare (not safe))
                     (cons '"-shared" __tmp160279))))
              (declare (not safe))
              (gxc#invoke __tmp160283 __tmp160278))
            (for-each
             delete-file
             (let ((__tmp160284
                    (let ((__tmp160285
                           (let ((__tmp160286
                                  (let ()
                                    (declare (not safe))
                                    (cons _link-path-o158767_ '()))))
                             (declare (not safe))
                             (cons _link-path-c158765_ __tmp160286))))
                      (declare (not safe))
                      (cons _path-o158761_ __tmp160285))))
               (declare (not safe))
               (cons _path-c158759_ __tmp160284)))))))
    (define gxc#compile-output-file
      (lambda (_ctx158723_ _n158724_ _ext158725_)
        (letrec ((_module-relative-path158727_
                  (lambda (_ctx158750_)
                    (path-strip-directory
                     (let ((__tmp160287
                            (##structure-ref
                             _ctx158750_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp160287)))))
                 (_module-source-directory158728_
                  (lambda (_ctx158746_)
                    (path-directory
                     (let ((_mpath158748_
                            (##structure-ref
                             _ctx158746_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _mpath158748_))
                           _mpath158748_
                           (last _mpath158748_))))))
                 (_section-string158729_
                  (lambda (_n158744_)
                    (if (let () (declare (not safe)) (number? _n158744_))
                        (number->string _n158744_)
                        (if (let () (declare (not safe)) (symbol? _n158744_))
                            (symbol->string _n158744_)
                            (if (let ()
                                  (declare (not safe))
                                  (string? _n158744_))
                                _n158744_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _n158744_)))))))
                 (_file-name158730_
                  (lambda (_path158742_)
                    (if _n158724_
                        (string-append
                         _path158742_
                         '"~"
                         (let ()
                           (declare (not safe))
                           (_section-string158729_ _n158724_))
                         _ext158725_)
                        (string-append _path158742_ _ext158725_))))
                 (_file-path158731_
                  (lambda ()
                    (let ((_$e158737_ (gxc#current-compile-output-dir)))
                      (if _$e158737_
                          ((lambda (_outdir158740_)
                             (path-expand
                              (let ((__tmp160289
                                     (let ((__tmp160290
                                            (##structure-ref
                                             _ctx158723_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp160290))))
                                (declare (not safe))
                                (_file-name158730_ __tmp160289))
                              _outdir158740_))
                           _$e158737_)
                          (path-expand
                           (let ((__tmp160288
                                  (let ()
                                    (declare (not safe))
                                    (_module-relative-path158727_
                                     _ctx158723_))))
                             (declare (not safe))
                             (_file-name158730_ __tmp160288))
                           (let ()
                             (declare (not safe))
                             (_module-source-directory158728_
                              _ctx158723_))))))))
          (let ((_path158733_
                 (let () (declare (not safe)) (_file-path158731_))))
            (let ((__tmp160291
                   (lambda ()
                     (let ((__tmp160292 (path-directory _path158733_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp160292)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp160291))
            _path158733_))))
    (define gxc#compile-static-output-file
      (lambda (_ctx158705_)
        (letrec ((_file-name158707_
                  (lambda (_id158721_)
                    (string-append
                     (let ()
                       (declare (not safe))
                       (gxc#static-module-name _id158721_))
                     '".scm")))
                 (_file-path158708_
                  (lambda ()
                    (let* ((_file158714_
                            (let ((__tmp160293
                                   (##structure-ref
                                    _ctx158705_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_file-name158707_ __tmp160293)))
                           (_$e158716_ (gxc#current-compile-output-dir)))
                      (if _$e158716_
                          ((lambda (_outdir158719_)
                             (path-expand
                              _file158714_
                              (path-expand '"static" _outdir158719_)))
                           _$e158716_)
                          (path-expand _file158714_ '"static"))))))
          (let ((_path158710_
                 (let () (declare (not safe)) (_file-path158708_))))
            (let ((__tmp160294
                   (lambda ()
                     (let ((__tmp160295 (path-directory _path158710_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp160295)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp160294))
            _path158710_))))
    (define gxc#compile-exe-output-file
      (lambda (_ctx158699_ _opts158700_)
        (let ((_$e158702_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _opts158700_))))
          (if _$e158702_
              (values _$e158702_)
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _ctx158699_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_idstr158692_)
        (if (let () (declare (not safe)) (string? _idstr158692_))
            (let* ((_str158694_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _idstr158692_)))
                   (_strs158696_
                    (let ()
                      (declare (not safe))
                      (string-split _str158694_ '#\/))))
              (let () (declare (not safe)) (string-join _strs158696_ '"__")))
            (if (let () (declare (not safe)) (symbol? _idstr158692_))
                (let ((__tmp160296 (symbol->string _idstr158692_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp160296))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _idstr158692_))))))
    (define gxc#invoke__%
      (lambda (_g160297_
               _stdout-redirection158653158657_
               _stderr-redirection158654158659_
               _program158661_
               _args158662_)
        (let* ((_stdout-redirection158664_
                (if (let ()
                      (declare (not safe))
                      (eq? _stdout-redirection158653158657_ absent-value))
                    '#f
                    _stdout-redirection158653158657_))
               (_stderr-redirection158666_
                (if (let ()
                      (declare (not safe))
                      (eq? _stderr-redirection158654158659_ absent-value))
                    '#f
                    _stderr-redirection158654158659_)))
          (let ((__tmp160298
                 (let ()
                   (declare (not safe))
                   (cons _program158661_ _args158662_))))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp160298))
          (let* ((_proc158668_
                  (open-process
                   (let ((__tmp160299
                          (let ((__tmp160300
                                 (let ((__tmp160301
                                        (let ((__tmp160302
                                               (let ((__tmp160303
                                                      (let ((__tmp160304
                                                             (let ((__tmp160305
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _stderr-redirection158666_ '()))))
                       (declare (not safe))
                       (cons 'stderr-redirection: __tmp160305))))
                (declare (not safe))
                (cons _stdout-redirection158664_ __tmp160304))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'stdout-redirection:
                                                       __tmp160303))))
                                          (declare (not safe))
                                          (cons _args158662_ __tmp160302))))
                                   (declare (not safe))
                                   (cons 'arguments: __tmp160301))))
                            (declare (not safe))
                            (cons _program158661_ __tmp160300))))
                     (declare (not safe))
                     (cons 'path: __tmp160299))))
                 (_output158673_
                  (if (or _stdout-redirection158664_
                          _stderr-redirection158666_)
                      (read-line _proc158668_ '#f)
                      '#f)))
            (let ((_status158676_ (process-status _proc158668_)))
              (close-port _proc158668_)
              (if (let () (declare (not safe)) (zero? _status158676_))
                  '#!void
                  (begin
                    (display _output158673_)
                    (let ((__tmp160306
                           (let ()
                             (declare (not safe))
                             (cons _program158661_ _args158662_))))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"Compilation error; process exit with nonzero status"
                       __tmp160306
                       _status158676_)))))))))
    (define gxc#invoke__@
      (lambda (_keys158652158681_ . _args158683_)
        (apply gxc#invoke__%
               _keys158652158681_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys158652158681_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys158652158681_
                  'stderr-redirection:
                  absent-value))
               _args158683_)))
    (define gxc#invoke
      (lambda _args158655158689_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _args158655158689_)))
    (define gxc#join!
      (lambda (_thread158646_)
        (let ((__tmp160308
               (lambda (_exn158648_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _exn158648_))
                     (let ((__tmp160309
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _exn158648_))))
                       (declare (not safe))
                       (raise __tmp160309))
                     (let () (declare (not safe)) (raise _exn158648_)))))
              (__tmp160307 (lambda () (thread-join! _thread158646_))))
          (declare (not safe))
          (with-catch __tmp160308 __tmp160307))))))
